uint64_t DeepLinkParameters.performAction.getter()
{
  sub_26B078640();
  sub_26AF0080C();
  sub_26B079CC0();
  sub_26AE9BCC0();

  return v1;
}

uint64_t static DeepLinkParameters.== infix(_:_:)()
{
  sub_26B078640();
  sub_26B078640();
  v1 = sub_26B079CB0();

  return v1 & 1;
}

uint64_t sub_26AF0068C()
{
  sub_26B07A760();
  *v0 = "path";
  *(v0 + 8) = 4;
  *(v0 + 16) = 2;
  *(v0 + 24) = "PerformAction";
  *(v0 + 32) = 13;
  *(v0 + 40) = 2;
  *(v0 + 48) = "ShowLatestUpdatePane";
  *(v0 + 56) = 20;
  *(v0 + 64) = 2;
  sub_26AEA3B2C();
  v4 = sub_26B07A6B0();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_8:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_8;
    case 2:
      v3 = 2;
      goto LABEL_8;
  }

  return 3;
}

uint64_t sub_26AF009F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26AF0068C();
  *a1 = result;
  return result;
}

uint64_t sub_26AF00A2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26AF0080C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_26AF00A60()
{
  v2 = *(v0 + 16);
  sub_26B078640();
  return v2;
}

uint64_t DeepLinkParameters.init(queryStringParameters:)(uint64_t a1)
{
  v20 = a1;
  v17 = *v1;
  v19 = 0;
  v18 = 0;
  v24 = a1;
  v23 = v1;
  sub_26B078350();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC800);
  sub_26B07A760();
  v22 = sub_26B079C90();
  sub_26B078640();
  if (v20)
  {
    v15 = v20;
    v2 = v18;
    v21 = v20;
    v9 = &v7;
    MEMORY[0x28223BE20](&v7);
    v6[2] = &v22;
    v10 = v6;
    MEMORY[0x28223BE20](v6);
    v11 = v5;
    v5[2] = sub_26AF01A58;
    v5[3] = v3;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC808);
    sub_26AF01A8C();
    sub_26B079FF0();
    v13 = v2;
    sub_26AF01B14();
    v14 = v13;
  }

  else
  {
    v14 = v18;
  }

  v8 = v22;
  sub_26B078640();
  *(v16 + 16) = v8;
  sub_26AF01A2C();

  return v16;
}

uint64_t sub_26AF00DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v18 = a1;
  v17 = a2;
  v16 = a3;
  sub_26AF02F80(a1, v15);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = v13;
    v7 = v14;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    v11 = v6;
    v12 = v7;
    sub_26AEA6474(a2, v10);
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      sub_26B078640();
      sub_26B078640();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC858);
      sub_26B079CD0();
    }
  }

  return result;
}

uint64_t DeepLinkParameters.init(url:)(uint64_t a1)
{
  v62 = a1;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v80 = 0;
  v76 = 0;
  v75[3] = 0;
  v75[4] = 0;
  v72 = 0u;
  v73 = 0u;
  v61 = 0;
  v51 = sub_26B077F90();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v55 = v17 - v54;
  v86 = v17 - v54;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC818);
  v56 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v57 = v17 - v56;
  v58 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC820) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v65 = v17 - v58;
  v67 = sub_26B077FD0();
  v63 = *(v67 - 8);
  v64 = v67 - 8;
  v59 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v60 = v17 - v59;
  v85 = v17 - v59;
  v84 = v3;
  v83 = v1;
  sub_26B078350();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC800);
  sub_26B07A760();
  v82 = sub_26B079C90();
  v66 = 1;
  sub_26B077FB0();
  if ((*(v63 + 48))(v65, v66, v67) == 1)
  {
    sub_26AF01B40(v65);
  }

  else
  {
    (*(v63 + 32))(v60, v65, v67);
    v81[2] = sub_26B077FC0();
    v81[3] = v4;
    v5 = sub_26B079D00();
    v45 = v81;
    v81[0] = v5;
    v81[1] = v6;
    v43 = sub_26AF01BE8();
    v42 = MEMORY[0x277D837D0];
    v44 = MEMORY[0x277D835C8];
    v41 = sub_26AF01878();
    sub_26AF0188C();
    v46 = sub_26B07A260();
    sub_26AF01C60();
    v80 = v46;
    v79 = v46;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC830);
    sub_26AF01C8C();
    sub_26B079D10();
    v48 = v77;
    v49 = v78;
    if (*(&v78 + 1))
    {
      v39 = v48;
      v40 = v49;
      v31 = *(&v49 + 1);
      v32 = v49;
      v33 = *(&v48 + 1);
      v34 = v48;
      v72 = v48;
      v73 = v49;
      v36 = v71;
      v71[0] = v48;
      v71[1] = v49;
      v7 = sub_26B079D00();
      v37 = v70;
      v70[0] = v7;
      v70[1] = v8;
      v35 = sub_26AF01DC8();
      sub_26AE95974();
      v38 = sub_26B07A4B0();
      sub_26AE9BCC0();
      if (v38)
      {
        v27 = sub_26B079D00();
        v28 = v9;
        v10 = sub_26B079FB0();
        v30 = v69;
        v69[0] = v10;
        v69[1] = v11;
        v29 = v68;
        v68[0] = v27;
        v68[1] = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC858);
        sub_26B079CD0();
      }
    }

    v26 = sub_26B077FA0();
    if (v26)
    {
      v25 = v26;
      v23 = v26;
      v76 = v26;
      sub_26B078640();
      v75[2] = v23;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC840);
      sub_26AF01D14();
      sub_26B07A270();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC850);
        sub_26B07A620();
        if ((*(v52 + 48))(v57, 1, v51) == 1)
        {
          break;
        }

        (*(v52 + 32))(v55, v57, v51);
        v19 = sub_26B077F70();
        v20 = v12;
        v13 = sub_26B077F80();
        v22 = v75;
        v75[0] = v13;
        v75[1] = v14;
        v21 = v74;
        v74[0] = v19;
        v74[1] = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC858);
        sub_26B079CD0();
        (*(v52 + 8))(v55, v51);
      }

      sub_26AF01D9C();
    }

    (*(v63 + 8))(v60, v67);
  }

  v17[1] = &v82;
  v18 = v82;
  sub_26B078640();
  *(v50 + 16) = v18;
  sub_26AF01A2C();
  v15 = sub_26B0781B0();
  (*(*(v15 - 8) + 8))(v62);
  return v50;
}

uint64_t DeepLinkParameters.isEmpty.getter()
{
  v2 = *(v0 + 16);
  sub_26B078640();
  v3 = MEMORY[0x26D66CE80](v2, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);

  return v3 & 1;
}

void *sub_26AF01970(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_26B078640();
  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_26AF019B0()
{
  v2 = qword_2803DC7F0;
  if (!qword_2803DC7F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF01A8C()
{
  v2 = qword_2803DC810;
  if (!qword_2803DC810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC808);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC810);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF01B40(uint64_t a1)
{
  v3 = sub_26B077FD0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_26AF01BE8()
{
  v2 = qword_2803DC828;
  if (!qword_2803DC828)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF01C8C()
{
  v2 = qword_2803DC838;
  if (!qword_2803DC838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC830);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF01D14()
{
  v2 = qword_2803DC848;
  if (!qword_2803DC848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC840);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF01DC8()
{
  v2 = qword_2803DC860;
  if (!qword_2803DC860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC860);
    return WitnessTable;
  }

  return v2;
}

Swift::Bool __swiftcall DeepLinkParameters.contains(_:)(Swift::String a1)
{
  sub_26B078640();
  sub_26B078640();
  sub_26B079CC0();
  sub_26AE9BCC0();

  sub_26AF01944();
  return v2 != 0;
}

uint64_t DeepLinkParameters.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_26B078640();
  sub_26B078640();
  sub_26B079CC0();
  sub_26AE9BCC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400);
  if (swift_dynamicCast())
  {
    return (*(*(a1 - 8) + 56))(a2, 0, 1);
  }

  else
  {
    return (*(*(a1 - 8) + 56))(a2, 1);
  }
}

uint64_t DeepLinkParameters.description.getter()
{
  sub_26B078640();
  v1 = sub_26B079C80();

  return v1;
}

uint64_t *DeepLinkParameters.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  v3 = *(v1 + 16);
  sub_26B078640();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC858);
  sub_26AF021BC();
  sub_26B07A8F0();
  result = &v4;
  sub_26AF01A2C();
  return result;
}

unint64_t sub_26AF021BC()
{
  v2 = qword_2803DC868;
  if (!qword_2803DC868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC858);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC868);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF02250@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit18DeepLinkParameters___observationRegistrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AF022C4(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_26B078360();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v1 = MEMORY[0x28223BE20](v7);
  v11 = &v5 - v2;
  v16 = v3;
  v15 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v2, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18DeepLinkParameters___observationRegistrar, v1);
  v8 = &v13;
  v13 = v6;
  sub_26AF02434();
  sub_26B078320();
  return (*(v9 + 8))(v11, v12);
}

unint64_t sub_26AF02434()
{
  v2 = qword_2803DC870;
  if (!qword_2803DC870)
  {
    type metadata accessor for DeepLinkParameters();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC870);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for DeepLinkParameters()
{
  v1 = qword_2803DC878;
  if (!qword_2803DC878)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_26AF02528@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_26B078360();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = MEMORY[0x28223BE20](v19);
  v16 = v11 - v6;
  v32 = v7;
  v31 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v6, v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18DeepLinkParameters___observationRegistrar, v5);
  v24 = &v27;
  v27 = v17;
  sub_26AF02434();
  v9 = v23;
  sub_26B078310();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

uint64_t sub_26AF027CC()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_26B07A820();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t DeepLinkParameters.deinit()
{
  sub_26AF01A2C();
  v3 = OBJC_IVAR____TtC19SoftwareUpdateUIKit18DeepLinkParameters___observationRegistrar;
  v1 = sub_26B078360();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_26AF02A00()
{
  updated = sub_26B078360();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_26AF02B60(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26AF02CC8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_26AF02F04()
{
  v2 = qword_2803DC888;
  if (!qword_2803DC888)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC888);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF02F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_26AF02FEC()
{
  v0 = sub_26B07AA00();
  MEMORY[0x26D66D100](v0);
}

uint64_t SUUIPreviewsPlatformEnvironment.analyticsReporter.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit31SUUIPreviewsPlatformEnvironment_analyticsReporter);
  swift_unknownObjectRetain();
  return v2;
}

id sub_26AF03064()
{
  v2 = type metadata accessor for SUUIPreviewsPlatformEnvironment();
  v3 = SUUIPreviewsPlatformEnvironment.__allocating_init()();
  qword_2803DC8A8 = v2;
  v0 = sub_26AF03178();
  result = v3;
  unk_2803DC8B0 = v0;
  unk_2803DC890 = v3;
  return result;
}

uint64_t type metadata accessor for SUUIPreviewsPlatformEnvironment()
{
  v1 = qword_2803DC8D8;
  if (!qword_2803DC8D8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_26AF03178()
{
  v2 = qword_2803DC8C0;
  if (!qword_2803DC8C0)
  {
    type metadata accessor for SUUIPreviewsPlatformEnvironment();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC8C0);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AF031F8()
{
  if (qword_2803DB3A8 != -1)
  {
    swift_once();
  }

  return &unk_2803DC890;
}

uint64_t sub_26AF0328C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t SUUIPreviewsPlatformEnvironment.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit31SUUIPreviewsPlatformEnvironment_capabilities;
  v2 = sub_26B078480();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void SUUIPreviewsPlatformEnvironment.statefulUIManager.getter()
{
  swift_getObjectType();
  sub_26B07A740();
  v0 = sub_26B079D00();
  MEMORY[0x26D66D910](v0);

  sub_26AF02FEC();
  v1 = sub_26B079D00();
  MEMORY[0x26D66D910](v1);

  sub_26B078640();
  sub_26AEB9F6C();
  sub_26B079EB0();
  sub_26B07A660();
  __break(1u);
}

id SUUIPreviewsPlatformEnvironment.init()()
{
  ObjectType = swift_getObjectType();
  v5 = v0;
  *&v0[OBJC_IVAR____TtC19SoftwareUpdateUIKit31SUUIPreviewsPlatformEnvironment_analyticsReporter] = 0;
  sub_26B078480();
  sub_26B07A760();
  sub_26AF0358C();
  sub_26B07A4C0();
  v4.receiver = v5;
  v4.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x277D82BE0](v3);
  v5 = v3;
  MEMORY[0x277D82BD8](v3);
  return v3;
}

unint64_t sub_26AF0358C()
{
  v2 = qword_2803DC8C8;
  if (!qword_2803DC8C8)
  {
    sub_26B078480();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC8C8);
    return WitnessTable;
  }

  return v2;
}

id SUUIPreviewsPlatformEnvironment.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26AF037E8()
{
  updated = sub_26B078480();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_26AF038C8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFB8);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AF03954()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26AF03998(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26AF03A18()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AF03AA4()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_26AF03AE8(uint64_t a1, char a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

uint64_t sub_26AF03B68()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC8E8);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AF03BF4()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_26AF03C38(uint64_t a1, char a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
}

uint64_t sub_26AF03D0C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798B0();

  return v1 & 1;
}

uint64_t sub_26AF03D94()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798C0();
  sub_26AE91DC8();
}

uint64_t sub_26AF03E48()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AF03EE8()
{
  v2 = *(v0 + 48);

  return v2 & 1;
}

uint64_t sub_26AF03F2C(char a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_26AF03F98()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_26AEF79D8(v2, v3 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6A8);
  sub_26B078A10();
  sub_26AEF7A44(v2, v3 & 1);
  return v4 & 1;
}

uint64_t sub_26AF04034()
{
  v2 = *(v0 + 64);
  sub_26AEF79D8(v2, *(v0 + 72) & 1);
  return v2;
}

uint64_t sub_26AF0407C(uint64_t a1, char a2)
{
  sub_26AEF79D8(a1, a2 & 1);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2 & 1;
  sub_26AEF7A44(v3, v4 & 1);
  return sub_26AEF7A44(a1, a2 & 1);
}

void *BetaUpdatesNavigationLink.init()@<X0>(void *a1@<X8>)
{
  memset(__b, 0, 0x49uLL);
  swift_getKeyPath();
  sub_26B078A30();
  __b[0] = v10;
  LOBYTE(__b[1]) = v11 & 1;
  swift_getKeyPath();
  sub_26B078A30();
  __b[2] = v8;
  LOBYTE(__b[3]) = v9 & 1;
  swift_getKeyPath();
  sub_26B078A30();
  __b[4] = v6;
  LOBYTE(__b[5]) = v7 & 1;
  LOBYTE(__b[6]) = sub_26AF03CB8() & 1;
  __b[7] = v1;
  swift_getKeyPath();
  sub_26B078A30();
  __b[8] = v4;
  LOBYTE(__b[9]) = v5 & 1;
  return memcpy(a1, __b, 0x49uLL);
}

uint64_t BetaUpdatesNavigationLink.shouldRender.getter()
{
  memcpy(__dst, v0, 0x49uLL);
  v14 = v0;
  memcpy(v13, __dst, sizeof(v13));
  sub_26AF03A18();
  v6 = ReactiveUIManager.canEnrollInBetaUpdates.getter();

  sub_26AF05FAC(__dst, v12);
  if (v6)
  {
    memcpy(v7, __dst, sizeof(v7));
    sub_26AF03A18();
    v5 = ReactiveUIManager.betaPrograms.getter();

    sub_26AF06140();
    v4 = v5 != 0;
  }

  else
  {
    v4 = 0;
  }

  sub_26AF060DC(__dst);
  sub_26AF05FAC(__dst, v11);
  if (v4)
  {
    type metadata accessor for SUUIStatefulUIState();
    memcpy(v10, __dst, sizeof(v10));
    sub_26AF03A18();
    v2 = ReactiveUIManager.currentState.getter();

    v9 = v2;
    v8 = 2;
    sub_26AEB6FE0();
    v3 = sub_26B079D40();
  }

  else
  {
    v3 = 0;
  }

  sub_26AF060DC(__dst);
  return v3 & 1;
}

uint64_t BetaUpdatesNavigationLink.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v13 = sub_26AF0616C;
  v28 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC8F0);
  v7 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v18 = &v6 - v7;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC8F8);
  v8 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v22 = &v6 - v8;
  v9 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v8);
  v23 = &v6 - v9;
  v28 = &v6 - v9;
  v14 = __dst;
  v15 = 73;
  memcpy(__dst, v2, 0x49uLL);
  memcpy(v30, v10, sizeof(v30));
  sub_26AF05FAC(__dst, &v27);
  v11 = v24;
  v24[2] = v14;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC900);
  sub_26AF06174();
  sub_26B079800();
  sub_26AF060DC(v14);
  memcpy(&v26, v14, v15);
  v3 = sub_26AF059D4();
  v17 = v25;
  v25[0] = v3;
  v25[1] = v4;
  sub_26AF063B4();
  sub_26B0795B0();
  sub_26AE9BCC0();
  sub_26AF0644C(v18);
  v21 = sub_26AF06508();
  sub_26AE9463C(v22, v20, v23);
  sub_26AF06590(v22);
  sub_26AF06674(v23, v22);
  sub_26AE94B4C(v22, v20, v19);
  sub_26AF06590(v22);
  return sub_26AF06590(v23);
}

uint64_t sub_26AF046D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = &v52;
  v42 = a1;
  v27 = a2;
  v54 = 0;
  v53 = 0;
  v49 = 0;
  v55 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *(v58 + 9) = *(a1 + 57);
  v58[0] = v4;
  v57 = v3;
  v56 = v2;
  v58[2] = v55;
  *(v59 + 9) = *(v58 + 9);
  v59[0] = v4;
  v58[4] = v3;
  v58[3] = v2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC928);
  v29 = *(v28 - 8);
  v30 = v29;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28 - 8);
  v32 = v19 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC918);
  v34 = *(v33 - 8);
  v35 = v34;
  v37 = *(v34 + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = v19 - v39;
  MEMORY[0x28223BE20](v19 - v39);
  v38 = v19 - v39;
  MEMORY[0x28223BE20](v5);
  v40 = v19 - v39;
  v54 = v19 - v39;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC900);
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = v19 - v47;
  MEMORY[0x28223BE20](v6);
  v46 = v19 - v47;
  MEMORY[0x28223BE20](v7);
  v48 = v19 - v47;
  v53 = v19 - v47;
  *v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  *(v9 + 57) = *(v8 + 57);
  v9[3] = v12;
  v9[2] = v11;
  v9[1] = v10;
  if (BetaUpdatesNavigationLink.shouldRender.getter())
  {
    v13 = v32;
    sub_26AF05FAC(v42, &v51);
    v25 = v19;
    v19[0] = 24;
    MEMORY[0x28223BE20](v42);
    v19[1] = &v19[-4];
    v19[-2] = v14;
    sub_26AF05FAC(v14, &v50);
    v24 = v19;
    MEMORY[0x28223BE20](v19);
    v20 = &v19[-4];
    v19[-2] = v15;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC940);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC948);
    v23 = sub_26AF06F28();
    v16 = sub_26AF06FCC();
    sub_26AF45650(sub_26AF06F18, sub_26AF06F20, v20, v21, v22, v23, v16, v13);
    sub_26AF060DC(v42);
    sub_26AF060DC(v42);
    v17 = sub_26AF062B4();
    View.fadeTransition()(v28, v17);
    (*(v30 + 8))(v32, v28);
    v26 = sub_26AF0620C();
    sub_26AE9463C(v38, v33, v40);
    sub_26AF0716C(v38);
    v49 = v38;
    sub_26AF071D4(v40, v36);
    sub_26AE94B4C(v36, v33, v38);
    sub_26AF0716C(v36);
    sub_26AF071D4(v38, v44);
    (*(v35 + 56))(v44, 0, 1, v33);
    sub_26AF09CCC(v44, v33, v46);
    sub_26AF06BCC(v44);
    sub_26AF06C88(v46, v48);
    sub_26AF0716C(v38);
    sub_26AF0716C(v40);
  }

  else
  {
    (*(v35 + 56))(v44, 1, 1, v33);
    sub_26AF0620C();
    sub_26AF09CCC(v44, v33, v46);
    sub_26AF06BCC(v44);
    sub_26AF06C88(v46, v48);
  }

  sub_26AF06DD0(v48, v46);
  sub_26AF06174();
  sub_26AE94B4C(v46, v43, v27);
  sub_26AF06BCC(v46);
  return sub_26AF06BCC(v48);
}

uint64_t sub_26AF04CA0@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v12 = a1;
  v29 = 0;
  v28 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC948);
  v7 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v21 = &v7 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v22 = (&v7 - v8);
  v29 = &v7 - v8;
  v28 = v4;
  v9 = v27;
  BetaUpdatesView.init()(v27);
  v10 = __dst;
  v11 = 80;
  memcpy(__dst, v9, sizeof(__dst));
  v17 = v26;
  memcpy(v26, __dst, sizeof(v26));
  v13 = 73;
  memcpy(v25, v12, sizeof(v25));
  v16 = sub_26AF03A18();
  memcpy(&v24, v12, v13);
  v15 = sub_26AF038C8();
  memcpy(&v23, v12, v13);
  v14 = sub_26AF03B68();
  v5 = sub_26AF07074();
  View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)(v16, v15, v14, &type metadata for BetaUpdatesView, v5, v21);

  sub_26AF07270();
  v20 = sub_26AF06FCC();
  sub_26AE9463C(v21, v19, v22);
  sub_26AF07318(v21);
  sub_26AF07478(v22, v21);
  sub_26AE94B4C(v21, v19, v18);
  sub_26AF07318(v21);
  return sub_26AF07318(v22);
}

uint64_t sub_26AF04EBC@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v16 = __src;
  v13 = 0;
  v15 = sub_26AF07244;
  v12 = sub_26AF05804;
  v28 = 0;
  __srca = __dst;
  __n = 73;
  memcpy(__dst, __src, 0x49uLL);
  memcpy(v30, __dst, sizeof(v30));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC940);
  v17 = *(v23 - 8);
  v18 = v23 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v21 = &v6 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v22 = &v6 - v10;
  v28 = &v6 - v10;
  sub_26AF05FAC(v4, &v27);
  v11 = v26;
  v26[2] = v16;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
  sub_26AEB349C();
  sub_26B078B70();
  sub_26AF060DC(v16);
  v20 = sub_26AF06F28();
  sub_26AE9463C(v21, v23, v22);
  v25 = *(v17 + 8);
  v24 = v17 + 8;
  v25(v21, v23);
  (*(v17 + 16))(v21, v22, v23);
  sub_26AE94B4C(v21, v23, v19);
  v25(v21, v23);
  return (v25)(v22, v23);
}

uint64_t *sub_26AF05138@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x21uLL);
  v100 = 0u;
  v101 = 0u;
  v88 = 0u;
  v89 = 0u;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v59 = 0u;
  v60 = 0u;
  __b[5] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  sub_26AF03A18();
  v47 = ReactiveUIManager.enrolledBetaProgram.getter();
  if (v47)
  {
    v74 = v47;

    swift_getKeyPath();
    ReactiveBetaProgram.subscript.getter();
    v68 = v70;
    v69 = v71;
    sub_26AE95974();
    v64 = sub_26B0792E0();
    v65 = v2;
    v66 = v3;
    v67 = v4;
    v24 = v2;
    v25 = v3;
    v26 = v4;

    v61[0] = v64;
    v61[1] = v24;
    v62 = v25 & 1;
    v63 = v26;
    v33 = MEMORY[0x277CE0BD8];
    v34 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v61, MEMORY[0x277CE0BD8], &v72);
    sub_26AE95B40(v61);
    v27 = v72;
    v28 = v73;
    v29 = *(&v73 + 1);
    sub_26AE95D28(v72, *(&v72 + 1), v73 & 1);
    sub_26B078640();
    v56 = v27;
    v57 = v28 & 1;
    v58 = v29;
    sub_26AE94B4C(&v56, v33, &v59);
    sub_26AE95B40(&v56);
    v30 = v59;
    v31 = v60;
    v32 = *(&v60 + 1);
    sub_26AE95D28(v59, *(&v59 + 1), v60 & 1);
    sub_26B078640();
    v48 = v30;
    v49 = v31 & 1;
    v50 = v32;
    sub_26AE94BB0(&v48, v33, v33, v34, v34, &v51);
    sub_26AE95B40(&v48);
    v36 = v51;
    v37 = v52;
    v38 = v53;
    v39 = v54;
    v35 = v55;
    sub_26AEB4364(v51, v52, v53);
    __b[0] = v36;
    __b[1] = v37;
    __b[2] = v38;
    __b[3] = v39;
    LOBYTE(__b[4]) = v35 & 1;
    sub_26AE95B40(&v59);
    sub_26AE95B40(&v72);

    v40 = v36;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    v44 = v35;
  }

  else
  {

    sub_26B079D00();
    sub_26B078E10();
    v5 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v5);
    v97 = "In context of on/off value for configuration";
    v98 = 44;
    v99 = 2;
    v93 = sub_26B0792C0();
    v94 = v6;
    v95 = v7;
    v96 = v8;
    v90[0] = v93;
    v90[1] = v6;
    v91 = v7 & 1;
    v92 = v8;
    v17 = MEMORY[0x277CE0BD8];
    v18 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v90, MEMORY[0x277CE0BD8], &v100);
    sub_26AE95B40(v90);
    v11 = v100;
    v12 = v101;
    v13 = *(&v101 + 1);
    sub_26AE95D28(v100, *(&v100 + 1), v101 & 1);
    sub_26B078640();
    v85 = v11;
    v86 = v12 & 1;
    v87 = v13;
    sub_26AE94B4C(&v85, v17, &v88);
    sub_26AE95B40(&v85);
    v14 = v88;
    v15 = v89;
    v16 = *(&v89 + 1);
    sub_26AE95D28(v88, *(&v88 + 1), v89 & 1);
    sub_26B078640();
    v77 = v14;
    v78 = v15 & 1;
    v79 = v16;
    sub_26AE94CA8(&v77, v17, v17, v18, v18, &v80);
    sub_26AE95B40(&v77);
    v20 = v80;
    v21 = v81;
    v22 = v82;
    v23 = v83;
    v19 = v84;
    sub_26AEB4364(v80, v81, v82);
    __b[0] = v20;
    __b[1] = v21;
    __b[2] = v22;
    __b[3] = v23;
    LOBYTE(__b[4]) = v19 & 1;
    sub_26AE95B40(&v88);
    sub_26AE95B40(&v100);
    v40 = v20;
    v41 = v21;
    v42 = v22;
    v43 = v23;
    v44 = v19;
  }

  v75[0] = v40;
  v75[1] = v41;
  v75[2] = v42;
  v75[3] = v43;
  v76 = v44 & 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
  sub_26AEB349C();
  sub_26AE94B4C(v75, v10, a2);
  sub_26AEB450C(v75);
  return sub_26AEB450C(__b);
}

uint64_t sub_26AF05804@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00();
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AF059D4()
{
  v12 = 0;
  v13 = 0;
  memcpy(__dst, v0, sizeof(__dst));
  v21 = v0;
  memcpy(v20, __dst, sizeof(v20));
  sub_26AF03A18();
  v9 = ReactiveUIManager.canEnrollInBetaUpdates.getter();

  v19 = v9 & 1;
  v17 = sub_26B079E70();
  v18 = v1;
  memcpy(v16, __dst, sizeof(v16));
  sub_26AF03A18();
  v10 = ReactiveUIManager.betaPrograms.getter();

  v15 = v10;
  sub_26AF06140();
  v14 = v10 != 0;
  v12 = sub_26B079E70();
  v13 = v2;
  memcpy(v11, __dst, sizeof(v11));
  sub_26AF03A18();
  ReactiveUIManager.currentState.getter();

  type metadata accessor for SUUIStatefulUIState();
  sub_26AEB7134();
  sub_26B079E70();
  sub_26B07A740();
  v3 = sub_26B079D00();
  MEMORY[0x26D66D910](v3);

  sub_26B07A720();
  v4 = sub_26B079D00();
  MEMORY[0x26D66D910](v4);

  sub_26B07A720();
  v5 = sub_26B079D00();
  MEMORY[0x26D66D910](v5);

  sub_26B07A720();
  v6 = sub_26B079D00();
  MEMORY[0x26D66D910](v6);

  sub_26B078640();
  sub_26AEB9F6C();
  v8 = sub_26B079EB0();

  return v8;
}

uint64_t sub_26AF05E94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = a2;
  v9[1] = a1;
  v14 = sub_26B078D30();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v14);
  v15 = v9 - v10;
  (*(v12 + 16))(v9 - v10, v2);
  v3 = sub_26B078C70();
  v4 = v12;
  v5 = v14;
  v6 = v3;
  v7 = v15;
  *v11 = v6 & 1;
  return (*(v4 + 8))(v7, v5);
}

uint64_t sub_26AF05FAC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  v7 = a1[4];
  v8 = *(a1 + 40);

  *(a2 + 32) = v7;
  *(a2 + 40) = v8 & 1;
  *(a2 + 48) = *(a1 + 48);
  v9 = a1[7];

  *(a2 + 56) = v9;
  v11 = a1[8];
  v12 = *(a1 + 72);
  sub_26AEF79D8(v11, v12 & 1);
  result = a2;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12 & 1;
  return result;
}

uint64_t sub_26AF060DC(uint64_t a1)
{

  sub_26AEF7A44(*(a1 + 64), *(a1 + 72) & 1);
  return a1;
}

unint64_t sub_26AF06174()
{
  v2 = qword_2803DC908;
  if (!qword_2803DC908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC900);
    sub_26AF0620C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC908);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF0620C()
{
  v2 = qword_2803DC910;
  if (!qword_2803DC910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC918);
    sub_26AF062B4();
    sub_26AF0633C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC910);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF062B4()
{
  v2 = qword_2803DC920;
  if (!qword_2803DC920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC928);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF0633C()
{
  v2 = qword_2803DD0F0;
  if (!qword_2803DD0F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD0F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF063B4()
{
  v2 = qword_2803DC930;
  if (!qword_2803DC930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC8F0);
    sub_26AF06174();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC930);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF0644C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC918);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC928);
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

unint64_t sub_26AF06508()
{
  v2 = qword_2803DC938;
  if (!qword_2803DC938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC8F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC938);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF06590(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC918);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC928);
    (*(*(v2 - 8) + 8))(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC8F8);

  return a1;
}

char *sub_26AF06674(char *a1, char *a2)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC918);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC900);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC928);
    (*(*(v2 - 8) + 16))(a2, a1);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC8F8);
  v7 = &a2[*(v4 + 52)];
  v5 = &a1[*(v4 + 52)];
  *v7 = *v5;
  v8 = *(v5 + 1);
  sub_26B078640();
  result = a2;
  *(v7 + 1) = v8;
  return result;
}

uint64_t sub_26AF0687C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 56)))
      {
        v4 = *(a1 + 56);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26AF069AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 73);
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_26AF06BCC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC918);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC928);
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

void *sub_26AF06C88(const void *a1, void *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC918);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC900);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC928);
    (*(*(v2 - 8) + 32))(a2, a1);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

void *sub_26AF06DD0(const void *a1, void *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC918);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC900);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC928);
    (*(*(v2 - 8) + 16))(a2, a1);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

unint64_t sub_26AF06F28()
{
  v2 = qword_2803DC950;
  if (!qword_2803DC950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC940);
    sub_26AEB349C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC950);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF06FCC()
{
  v2 = qword_2803DC958;
  if (!qword_2803DC958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC948);
    sub_26AF07074();
    sub_26AF070EC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF07074()
{
  v2 = qword_2803DC960;
  if (!qword_2803DC960)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC960);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF070EC()
{
  v2 = qword_2803DC968;
  if (!qword_2803DC968)
  {
    type metadata accessor for SUUIEnvironmentContextModifier();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC968);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF0716C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC928);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AF071D4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC928);
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_26AF07270()
{
  sub_26AF072D8();
}

uint64_t sub_26AF07318(uint64_t a1)
{
  sub_26AF072D8();

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC948) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079120();
    (*(*(v1 - 8) + 8))(a1 + v3);
  }

  else
  {
  }

  type metadata accessor for SUUIEnvironmentContextModifier();

  return a1;
}

uint64_t sub_26AF07478(uint64_t *a1, uint64_t a2)
{
  v13 = *a1;
  v14 = *(a1 + 8);
  sub_26AF07734();
  *a2 = v13;
  *(a2 + 8) = v14 & 1;
  v15 = a1[2];
  v16 = *(a1 + 24);

  *(a2 + 16) = v15;
  *(a2 + 24) = v16 & 1;
  *(a2 + 32) = *(a1 + 32);
  v17 = a1[5];

  *(a2 + 40) = v17;
  *(a2 + 48) = a1[6];
  v18 = a1[7];

  *(a2 + 56) = v18;
  *(a2 + 64) = *(a1 + 64);
  v20 = a1[9];

  *(a2 + 72) = v20;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC948) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B079120();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v12 = *(a1 + v21);

    *(a2 + v21) = v12;
  }

  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SUUIEnvironmentContextModifier();
  v4 = v6[5];
  v10 = a2 + v21;
  v5 = *(a1 + v21 + v4);

  *(v10 + v4) = v5;
  v7 = v6[6];
  v8 = *(a1 + v21 + v7);

  *(v10 + v7) = v8;
  v9 = v6[7];
  v11 = *(a1 + v21 + v9);

  result = a2;
  *(v10 + v9) = v11;
  return result;
}

BOOL static DeepLinkResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v11 = a1[1];
  v10 = a2[1];
  v13 = *a2;
  sub_26AEF6BF4(*a1, v11);
  sub_26AEF6BF4(v13, v10);
  v12 = HIBYTE(v11) >> 6;
  if (HIBYTE(v11) >> 6)
  {
    if (v12 != 1)
    {
      if (v12 != 2)
      {
        if (((v10 >> 62) & 3) == 3)
        {
          (static DeepLinkError.== infix(_:_:))();
        }

        sub_26AEF64D8(v13, v10);
        return 0;
      }

      if (((v10 >> 62) & 3) == 2)
      {

        sub_26AF07E24();
        if (sub_26B07A790())
        {
          sub_26AF07E9C();
          v4 = sub_26B07A790();
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          type metadata accessor for DeepLinkContext();
          v3 = static DeepLinkContext.== infix(_:_:)(v11 & 0x3FFFFFFFFFFFFFFFLL, v10 & 0x3FFFFFFFFFFFFFFFLL);
        }

        else
        {
          v3 = 0;
        }

        sub_26AEF64D8(v13, v10);
        return v3;
      }

LABEL_28:

      sub_26AEF64D8(v13, v10);
      return 0;
    }

    if (((v10 >> 62) & 3) != 1)
    {
      goto LABEL_28;
    }

    sub_26AF07E9C();
    v6 = sub_26B07A790();

    if (v6)
    {
      type metadata accessor for DeepLinkContext();
      v5 = static DeepLinkContext.== infix(_:_:)(v11 & 0x3FFFFFFFFFFFFFFFLL, v10 & 0x3FFFFFFFFFFFFFFFLL);
    }

    else
    {
      v5 = 0;
    }

    sub_26AEF64D8(v13, v10);
    return v5;
  }

  else
  {
    if (v10 >> 62)
    {
      goto LABEL_28;
    }

    sub_26AF07E24();
    v9 = sub_26B07A790();

    if (v9)
    {
      type metadata accessor for DeepLinkContext();
      v8 = static DeepLinkContext.== infix(_:_:)(v11, v10);
    }

    else
    {
      v8 = 0;
    }

    sub_26AEF64D8(v13, v10);
    return v8;
  }
}

unint64_t sub_26AF07E24()
{
  v2 = qword_2803DC978;
  if (!qword_2803DC978)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC978);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF07E9C()
{
  v2 = qword_2803DC980;
  if (!qword_2803DC980)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC980);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF07F30@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_26AEF6B90(v3, v5);
  result = swift_endAccess();
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_26AF07FA8(uint64_t *a1)
{
  v5 = *a1;
  v6 = a1[1];
  sub_26AEF6B90(*a1, v6);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  sub_26AEF6474(v2, v3);
  swift_endAccess();
  return sub_26AEF6474(v5, v6);
}

uint64_t sub_26AF080E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  v6[2] = v4;
  sub_26AF08230(v6);
  v2 = v6[1];
  *a2 = v6[0];
  a2[1] = v2;
}

uint64_t sub_26AF08150(uint64_t *a1, uint64_t *a2)
{
  sub_26AF0933C(a1, v8);
  v5 = v8[0];
  v6 = v8[1];
  v4 = *a2;

  v7[2] = v4;
  v7[0] = v5;
  v7[1] = v6;
  sub_26AF082C0(v7);
}

uint64_t sub_26AF081D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_26AEF6B90(*a1, v5);
  *a2 = v4;
  a2[1] = v5;
  return sub_26AEF6474(v4, v5);
}

uint64_t sub_26AF08230@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_26AF08C80(KeyPath);

  return sub_26AF07F30(a1);
}

uint64_t sub_26AF082C0(uint64_t *a1)
{
  v24 = 0;
  v23 = 0;
  v22[2] = 0;
  v11 = 0;
  v15 = *a1;
  v12 = v15;
  v16 = a1[1];
  v13 = v16;
  v23 = v15;
  v24 = v16;
  sub_26AF07F30(v22);
  v21[0] = v22[0];
  v21[1] = v22[1];
  v20[2] = v15;
  v20[3] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD650);
  sub_26AF09094();
  v18 = v21;
  v19 = sub_26AF09038();
  sub_26AF091A8(v21);
  if (v19)
  {
    v1 = v14;
    v2 = v11;
    KeyPath = swift_getKeyPath();
    v7[1] = KeyPath;

    sub_26AEF6B90(v12, v13);
    v9 = v7;
    MEMORY[0x28223BE20](KeyPath);
    v6[2] = v1;
    v6[3] = v12;
    v6[4] = v3;
    sub_26AF08DF0(v4, sub_26AF09218, v6, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v10 = v2;

    sub_26AEF6474(v12, v13);

    v7[0] = v10;
  }

  else
  {
    sub_26AEF6B90(v12, v13);
    v20[0] = v12;
    v20[1] = v13;
    sub_26AF07FA8(v20);
    v7[0] = v11;
  }

  return sub_26AEF6474(v12, v13);
}

uint64_t sub_26AF084E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6[4] = a1;
  v6[2] = a2;
  v6[3] = a3;
  sub_26AEF6B90(a2, a3);
  v6[0] = a2;
  v6[1] = a3;
  return sub_26AF07FA8(v6);
}

void (*sub_26AF0855C(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_26B078360();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AF08C80(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKit27EnvironmentDeepLinkResponse___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_26AF09248();
  sub_26B078340();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_26AF08044();
  return sub_26AF08708;
}

void sub_26AF08708(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AF087C4(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AF087C4(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AF087C4(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit27EnvironmentDeepLinkResponse___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26AF09248();
  sub_26B078330();

  return (*(v8 + 8))(v10, v11);
}

uint64_t EnvironmentDeepLinkResponse.init()()
{
  *(v0 + 16) = 0x7FFFFFEFCLL;
  *(v0 + 24) = 0;
  sub_26B078350();
  return v2;
}

uint64_t static EnvironmentDeepLinkResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v15 = v2;
  sub_26AF08230(v14);
  v13[0] = v14[0];
  v13[1] = v14[1];
  sub_26AF08230(v12);
  v11[0] = v12[0];
  v11[1] = v12[1];
  sub_26AF0933C(v13, v9);
  sub_26AF0933C(v11, &v10);
  if ((v9[0] & 0xFFFFFFFFFFFFFEFCLL) == 0x7FFFFFEFCLL && (v9[1] & 0xF000000000000007) == 0)
  {
    if ((v10 & 0xFFFFFFFFFFFFFEFCLL) == 0x7FFFFFEFCLL && (*(&v10 + 1) & 0xF000000000000007) == 0)
    {
      sub_26AF091A8(v9);
      v5 = 1;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  sub_26AF0933C(v9, &v8);
  if ((v10 & 0xFFFFFFFFFFFFFEFCLL) == 0x7FFFFFEFCLL && (*(&v10 + 1) & 0xF000000000000007) == 0)
  {
    sub_26AF094A0(&v8);
LABEL_12:
    sub_26AF093E0(v9);
    v5 = 0;
    goto LABEL_11;
  }

  *v7 = v8;
  v6 = v10;
  v4 = static DeepLinkResponse.== infix(_:_:)(v7, &v6);
  sub_26AF094A0(&v6);
  sub_26AF094A0(v7);
  sub_26AF091A8(v9);
  v5 = v4;
LABEL_11:
  sub_26AF091A8(v11);
  sub_26AF091A8(v13);
  return v5 & 1;
}

uint64_t sub_26AF08BA4()
{
  v3 = v0;
  sub_26AF08230(&v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD650);
  return sub_26B079E60();
}

uint64_t sub_26AF08C0C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit27EnvironmentDeepLinkResponse___observationRegistrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AF08C80(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_26B078360();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v1 = MEMORY[0x28223BE20](v7);
  v11 = &v5 - v2;
  v16 = v3;
  v15 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v2, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit27EnvironmentDeepLinkResponse___observationRegistrar, v1);
  v8 = &v13;
  v13 = v6;
  sub_26AF09248();
  sub_26B078320();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_26AF08DF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_26B078360();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = MEMORY[0x28223BE20](v19);
  v16 = v11 - v6;
  v32 = v7;
  v31 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v6, v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKit27EnvironmentDeepLinkResponse___observationRegistrar, v5);
  v24 = &v27;
  v27 = v17;
  sub_26AF09248();
  v9 = v23;
  sub_26B078310();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

unint64_t sub_26AF09094()
{
  v2 = qword_2803DC988;
  if (!qword_2803DC988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD650);
    sub_26AF0912C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF0912C()
{
  v2 = qword_2803DC990;
  if (!qword_2803DC990)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC990);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF091A8(uint64_t a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFEFCLL) != 0x7FFFFFEFCLL || (*(a1 + 8) & 0xF000000000000007) != 0)
  {
    sub_26AEF64D8(*a1, *(a1 + 8));
  }

  return a1;
}

unint64_t sub_26AF09248()
{
  v2 = qword_2803DC9A0;
  if (!qword_2803DC9A0)
  {
    type metadata accessor for EnvironmentDeepLinkResponse();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC9A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for EnvironmentDeepLinkResponse()
{
  v1 = qword_2803DC9A8;
  if (!qword_2803DC9A8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_26AF0933C(uint64_t *a1, uint64_t a2)
{
  if ((*a1 & 0xFFFFFFFFFFFFFEFCLL) == 0x7FFFFFEFCLL && (a1[1] & 0xF000000000000007) == 0)
  {
    *a2 = *a1;
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    sub_26AEF6BF4(*a1, v4);
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  return a2;
}

uint64_t sub_26AF093E0(uint64_t a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFEFCLL) != 0x7FFFFFEFCLL || (*(a1 + 8) & 0xF000000000000007) != 0)
  {
    sub_26AEF64D8(*a1, *(a1 + 8));
  }

  if ((*(a1 + 16) & 0xFFFFFFFFFFFFFEFCLL) != 0x7FFFFFEFCLL || (*(a1 + 24) & 0xF000000000000007) != 0)
  {
    sub_26AEF64D8(*(a1 + 16), *(a1 + 24));
  }

  return a1;
}

uint64_t sub_26AF094D4()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_26B07A820();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t EnvironmentDeepLinkResponse.deinit()
{
  sub_26AF091A8(v0 + 16);
  v3 = OBJC_IVAR____TtC19SoftwareUpdateUIKit27EnvironmentDeepLinkResponse___observationRegistrar;
  v1 = sub_26B078360();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_26AF096FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = -1 - ((*a1 >> 2) & 0x3F | (*a1 >> 3) & 0xFFFFFFC0);
      if (v2 >= 0x7FFFFFFF)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AF0983C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = (4 * ~(a2 - 1)) & 0xFC | (8 * ~(a2 - 1)) & 0x7FFFFFE00;
      *(result + 8) = 0;
    }
  }

  return result;
}

void *sub_26AF09A2C(void *result)
{
  v1 = result[1] & 0x3FFFFFFFFFFFFFFFLL;
  *result = *result;
  result[1] = v1;
  return result;
}

void *sub_26AF09A44(void *result, char a2)
{
  v2 = ((a2 & 3) << 62) | result[1] & 0xFFFFFFFFFFFFFF8;
  *result &= 0x103uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_26AF09AA8()
{
  updated = sub_26B078360();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

void *BetaUpdatesView.init()@<X0>(void *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  swift_getKeyPath();
  sub_26B078A30();
  __b[0] = v8;
  LOBYTE(__b[1]) = v9 & 1;
  swift_getKeyPath();
  sub_26B078A30();
  __b[2] = v6;
  LOBYTE(__b[3]) = v7 & 1;
  LOBYTE(__b[4]) = sub_26AF0A100() & 1;
  __b[5] = v1;
  __b[6] = sub_26AF0A3E0();
  __b[7] = v2;
  LOBYTE(__b[8]) = sub_26AF0A6A0() & 1;
  __b[9] = v3;
  return memcpy(a1, __b, 0x50uLL);
}

uint64_t sub_26AF09E3C()
{
  sub_26AF07734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC9C0);
  sub_26B078A10();
  sub_26AF072D8();
  return v1;
}

uint64_t sub_26AF09ED4()
{
  v2 = *v0;
  sub_26AF07734();
  return v2;
}

uint64_t sub_26AF09F1C(uint64_t a1, char a2)
{
  sub_26AF07734();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  sub_26AF072D8();
  return sub_26AF072D8();
}

uint64_t sub_26AF09FB0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AF0A03C()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_26AF0A080(uint64_t a1, char a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

uint64_t sub_26AF0A154()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798B0();

  return v1 & 1;
}

uint64_t sub_26AF0A1DC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798C0();
  sub_26AE91DC8();
}

uint64_t sub_26AF0A290()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AF0A330()
{
  v2 = *(v0 + 32);

  return v2 & 1;
}

uint64_t sub_26AF0A374(char a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_26AF0A428()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D8);
  sub_26B0798B0();

  return v1;
}

uint64_t sub_26AF0A4AC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D8);
  sub_26B0798C0();
  sub_26AF1AC24();
}

uint64_t sub_26AF0A558()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D8);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AF0A5F4()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_26AF0A634(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_26AF0A6F4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798B0();

  return v1 & 1;
}

uint64_t sub_26AF0A77C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798C0();
  sub_26AE91DC8();
}

uint64_t sub_26AF0A830()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AF0A8D0()
{
  v2 = *(v0 + 64);

  return v2 & 1;
}

uint64_t sub_26AF0A914(char a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t BetaUpdatesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v52 = sub_26AF1ADC0;
  v68 = MEMORY[0x277CDE800];
  v77 = MEMORY[0x277CDE8A0];
  v22 = "Fatal error";
  v23 = "Unexpectedly found nil while unwrapping an Optional value";
  v24 = "SoftwareUpdateUIKit/BetaUpdatesView.swift";
  v25 = MEMORY[0x277D4D768];
  v143 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0);
  v26 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v109 = v19 - v26;
  v103 = 0;
  v111 = sub_26B0781B0();
  v107 = *(v111 - 8);
  v108 = v111 - 8;
  v27 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103);
  v93 = v19 - v27;
  v97 = sub_26B078110();
  v95 = *(v97 - 8);
  v96 = v97 - 8;
  v28 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103);
  v101 = v19 - v28;
  v104 = sub_26B078120();
  v29 = *(v104 - 8);
  v30 = v104 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103);
  v98 = v19 - v31;
  v89 = sub_26B079C10();
  v87 = *(v89 - 8);
  v88 = v89 - 8;
  v32 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103);
  v90 = (v19 - v32);
  v33 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103);
  v100 = v19 - v33;
  v34 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103);
  v99 = v19 - v34;
  v63 = sub_26B078FF0();
  v60 = *(v63 - 8);
  v61 = v63 - 8;
  v35 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v62 = v19 - v35;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E8);
  v70 = *(v73 - 8);
  v71 = v73 - 8;
  v36 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v72 = v19 - v36;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9F0);
  v80 = *(v83 - 8);
  v81 = v83 - 8;
  v37 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v82 = v19 - v37;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9F8);
  v38 = (*(*(v85 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85);
  v86 = v19 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA00);
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v84 = v19 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA08);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v45 = v19 - v44;
  v46 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19 - v44);
  v47 = v19 - v46;
  v48 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19 - v46);
  v49 = v19 - v48;
  v143 = v19 - v48;
  v50 = __dst;
  v51 = 80;
  memcpy(__dst, v4, sizeof(__dst));
  sub_26AF1AC50(__dst, &v136);
  v53 = swift_allocObject();
  memcpy((v53 + 16), v50, v51);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA10);
  v55 = sub_26AF1ADC8();
  v5 = sub_26AF09D18();
  v110 = 1;
  AdaptiveList.init(enabledWhen:content:)(v5 & 1, v52, v53, v54, v137);
  v58 = v134;
  v134[0] = v137[0];
  v134[1] = v137[1];
  v135 = v138;
  v6 = sub_26B0174C0();
  v57 = &v132;
  v132 = v6;
  v133 = v7 & 1 & v110;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA20);
  v8 = sub_26AF1AE50();
  MEMORY[0x26D66C890](v139, v57, v56, &unk_287B9C310, v8);
  sub_26AF1AED8();
  sub_26AF1AF04();
  v64 = v128;
  v128[0] = v139[0];
  v128[1] = v139[1];
  v129 = v140;
  v130 = v141;
  v131 = v142 & 1 & v110;
  v59 = sub_26B079180();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA30);
  v67 = sub_26AF1AF30();
  sub_26AF0CF00();
  MEMORY[0x26D66C680](v59, 0x4034000000000000, 0, v62, v66, v67);
  (*(v60 + 8))(v62, v63);
  sub_26AF1B050();
  v91 = "Beta Updates";
  v92 = 12;
  sub_26B079D00();
  sub_26B079D80();
  v65 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v65);
  sub_26AEFB5C4();
  v125[2] = 0;
  v125[3] = 0;
  v126 = 0;
  v127 = v110 & 1;
  v9 = sub_26B079E40();
  v69 = v125;
  v125[0] = v9;
  v125[1] = v10;
  v123 = v66;
  v124 = v67;
  v78 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = sub_26AE95974();
  v74 = MEMORY[0x277D837D0];
  sub_26B0794F0();
  sub_26AE9BCC0();
  (*(v70 + 8))(v72, v73);
  v79 = &v122;
  v122 = 25;
  v118 = v73;
  v119 = v74;
  v120 = OpaqueTypeConformance2;
  v121 = v76;
  swift_getOpaqueTypeConformance2();
  View.suuiIdentifiable(_:)();
  (*(v80 + 8))(v82, v83);
  sub_26AF1B088();
  View.analyticsForNavigation(_:)(9, v85);
  sub_26AF1B1EC(v86);
  v11 = sub_26B079D00();
  v12 = v87;
  v13 = v11;
  v14 = v90;
  *v90 = v13;
  v14[1] = v15;
  (*(v12 + 104))();
  sub_26B079D00();
  sub_26B079D80();
  v94 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v94);
  v102 = [v94 bundleURL];
  sub_26B078190();
  (*(v107 + 32))(v101, v93, v111);
  v16 = MEMORY[0x277D82BD8](v94);
  (*(v95 + 104))(v101, *MEMORY[0x277CC9118], v97, v16);
  sub_26AF0CF24();
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = v110 & 1;
  sub_26B078130();
  MEMORY[0x277D82BD8](v102);
  v105 = sub_26B07A760();
  sub_26B079D00();
  v106 = v17;
  sub_26B0781A0();

  if ((*(v107 + 48))(v109, v110, v111) == 1)
  {
    sub_26B07A650();
    __break(1u);
  }

  v19[0] = sub_26AF1B2B0();
  sub_26B079380();
  (*(v107 + 8))(v109, v111);

  (*(v29 + 8))(v98, v104);
  (*(v87 + 8))(v90, v89);
  sub_26AF1B3D0(v84);
  v112 = v39;
  v113 = v19[0];
  v19[1] = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v47, v41, v49);
  v20 = *(v42 + 8);
  v19[2] = v42 + 8;
  v20(v47, v41);
  (*(v42 + 16))(v45, v49, v41);
  sub_26AE94B4C(v45, v41, v21);
  v20(v45, v41);
  return (v20)(v49, v41);
}

uint64_t sub_26AF0B7BC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v15 = a1;
  v18 = a2;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB18);
  v11 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v29 = &v10 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v11);
  v32 = &v10 - v12;
  v50 = &v10 - v12;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAA8);
  v13 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v30 = &v10 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v13);
  v33 = &v10 - v14;
  v49 = &v10 - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA70);
  v20 = *(v34 - 8);
  v21 = v34 - 8;
  v16 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v31 = &v10 - v16;
  v17 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v37 = &v10 - v17;
  v48 = &v10 - v17;
  v47 = v7;
  v46 = v8;
  v19 = 80;
  memcpy(__dst, v8, sizeof(__dst));
  sub_26AF0BC04(v31);
  v24 = sub_26AF1B558();
  sub_26AE9463C(v31, v34, v37);
  v36 = *(v20 + 8);
  v35 = v20 + 8;
  v36(v31, v34);
  memcpy(v44, v18, v19);
  sub_26AF0BE7C(v30);
  v25 = sub_26AF1BE34();
  sub_26AE9463C(v30, v22, v33);
  sub_26AF1B914(v30);
  memcpy(&v43, v18, v19);
  sub_26AF0C494(v29);
  v26 = sub_26AF1CB00();
  sub_26AE9463C(v29, v23, v32);
  sub_26AF1C5C0(v29);
  (*(v20 + 16))(v31, v37, v34);
  v28 = v42;
  v42[0] = v31;
  sub_26AF1BC24(v33, v30);
  v42[1] = v30;
  sub_26AF1C8E0(v32, v29);
  v42[2] = v29;
  v41[0] = v34;
  v41[1] = v22;
  v41[2] = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  sub_26AFD49C4(v28, 3uLL, v41, v27);
  sub_26AF1C5C0(v29);
  sub_26AF1B914(v30);
  v36(v31, v34);
  sub_26AF1C5C0(v32);
  sub_26AF1B914(v33);
  return (v36)(v37, v34);
}

uint64_t sub_26AF0BC04@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v12 = 0;
  v14 = sub_26AF1B4C8;
  v11 = sub_26AF0E1F0;
  v27 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA70);
  v16 = *(v22 - 8);
  v17 = v22 - 8;
  v6 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v20 = &v5 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v6);
  v21 = &v5 - v7;
  v27 = &v5 - v7;
  v15 = __dst;
  v9 = 80;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v29, v8, sizeof(v29));
  sub_26AF1AC50(__dst, &v26);
  v10 = v25;
  v25[2] = v15;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA78);
  v3 = sub_26AF1B4D0();
  sub_26AF0E3C4(v14, v10, v13, MEMORY[0x277CE0BD8], v3, MEMORY[0x277CE0BC8], v20);
  sub_26AF07270();
  v19 = sub_26AF1B558();
  sub_26AE9463C(v20, v22, v21);
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v22);
  (*(v16 + 16))(v20, v21, v22);
  sub_26AE94B4C(v20, v22, v18);
  v24(v20, v22);
  return (v24)(v21, v22);
}

uint64_t sub_26AF0BE7C@<X0>(uint64_t a1@<X8>)
{
  v33 = v46;
  v16 = a1;
  v48 = 0;
  v47 = 0;
  v42 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA90);
  v18 = *(v17 - 8);
  v19 = v18;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17 - 8);
  v21 = v15 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA98);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v15 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAA0);
  v26 = *(v25 - 8);
  v27 = v26;
  v29 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v15 - v31;
  MEMORY[0x28223BE20](v15 - v31);
  v30 = v15 - v31;
  MEMORY[0x28223BE20](v2);
  v32 = v15 - v31;
  v48 = v15 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAA8);
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v15 - v38;
  MEMORY[0x28223BE20](v15 - v38);
  v37 = v15 - v38;
  MEMORY[0x28223BE20](v15 - v38);
  v39 = v15 - v38;
  v47 = v15 - v38;
  v3[6] = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v3[10] = v1[4];
  v3[9] = v6;
  v3[8] = v5;
  v3[7] = v4;
  v3[11] = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v3[15] = v1[4];
  v3[14] = v9;
  v3[13] = v8;
  v3[12] = v7;
  v46[0] = v3[6];
  v10 = v3[7];
  v11 = v3[8];
  v12 = v3[9];
  v3[4] = v3[10];
  v3[3] = v12;
  v3[2] = v11;
  v46[1] = v10;
  v40 = sub_26AF09FB0();
  ReactiveUIManager.betaUpdatesRestrictions.getter(&v45);
  v41 = v45;

  v44[86] = v41;
  v44[85] = 0;
  sub_26AEB7C30();
  if (sub_26B079D70())
  {
    (*(v27 + 56))(v35, 1, 1, v25);
    sub_26AF1B608();
    sub_26AF09CCC(v35, v25, v37);
    sub_26AF1B914(v35);
    sub_26AF1BA58(v37, v39);
  }

  else
  {
    v15[3] = v49;
    sub_26AF1AC50(v49, v44);
    v15[2] = v15;
    MEMORY[0x28223BE20](v15);
    v15[0] = &v15[-4];
    v15[-2] = v13;
    v15[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAD8);
    sub_26AF1B804();
    sub_26B079A90();
    sub_26AF07270();
    v15[4] = sub_26B0791D0();
    sub_26AF1B758();
    sub_26B0795C0();

    (*(v19 + 8))(v21, v17);
    v43 = 29;
    sub_26AF1B6B0();
    View.suuiIdentifiable(_:)();
    sub_26AF1BED4(v24);
    v15[5] = sub_26AF1B608();
    sub_26AE9463C(v30, v25, v32);
    sub_26AF1BF78(v30);
    v42 = v30;
    sub_26AF1C078(v32, v28);
    sub_26AE94B4C(v28, v25, v30);
    sub_26AF1BF78(v28);
    sub_26AF1C078(v30, v35);
    (*(v27 + 56))(v35, 0, 1, v25);
    sub_26AF09CCC(v35, v25, v37);
    sub_26AF1B914(v35);
    sub_26AF1BA58(v37, v39);
    sub_26AF1BF78(v30);
    sub_26AF1BF78(v32);
  }

  sub_26AF1BC24(v39, v37);
  sub_26AF1BE34();
  sub_26AE94B4C(v37, v34, v16);
  sub_26AF1B914(v37);
  return sub_26AF1B914(v39);
}

uint64_t sub_26AF0C494@<X0>(uint64_t a1@<X8>)
{
  v83 = &v109;
  v58 = a1;
  v59 = 0;
  v116 = 0;
  v115 = 0;
  v92 = 0;
  sub_26B078300();
  MEMORY[0x28223BE20](0);
  v60 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26B079DE0();
  MEMORY[0x28223BE20](v3 - 8);
  v61 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAF8);
  v63 = *(v62 - 8);
  v64 = v63;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - 8);
  v66 = v35 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB00);
  v68 = *(v67 - 8);
  v69 = v68;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67 - 8);
  v71 = v35 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB08);
  v73 = (*(*(v72 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72 - 8);
  v74 = v35 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB10);
  v76 = *(v75 - 8);
  v77 = v76;
  v79 = *(v76 + 64);
  MEMORY[0x28223BE20](v75 - 8);
  v81 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = v35 - v81;
  MEMORY[0x28223BE20](v35 - v81);
  v80 = v35 - v81;
  MEMORY[0x28223BE20](v5);
  v82 = v35 - v81;
  v116 = v35 - v81;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB18);
  v86 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84 - 8);
  v88 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v85 = v35 - v88;
  MEMORY[0x28223BE20](v35 - v88);
  v87 = v35 - v88;
  MEMORY[0x28223BE20](v35 - v88);
  v89 = v35 - v88;
  v115 = v35 - v88;
  v6[19] = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v6[23] = v1[4];
  v6[22] = v9;
  v6[21] = v8;
  v6[20] = v7;
  v6[24] = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v6[28] = v1[4];
  v6[27] = v12;
  v6[26] = v11;
  v6[25] = v10;
  v6[13] = v6[19];
  v13 = v6[20];
  v14 = v6[21];
  v15 = v6[22];
  v6[17] = v6[23];
  v6[16] = v15;
  v6[15] = v14;
  v6[14] = v13;
  v90 = sub_26AF09FB0();
  ReactiveUIManager.betaUpdatesRestrictions.getter(v114);
  v91 = v114[0];

  v113[86] = v91;
  v113[85] = 0;
  sub_26AEB7A84();
  if (sub_26B07A790())
  {
    v44 = v117;
    sub_26AF1AC50(v117, v113);
    v35[2] = v35;
    v37 = 24;
    MEMORY[0x28223BE20](v35);
    v35[0] = v32;
    v33 = v16;
    v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB58);
    sub_26AF1C490();
    sub_26B079A90();
    sub_26AF07270();
    v55 = 1;
    sub_26B079D00();
    sub_26B079D80();
    v36 = *sub_26B02D0D0();
    v17 = v36;
    sub_26AEFB5C4();
    v110[2] = 0;
    v110[3] = 0;
    v111 = 0;
    v112 = v55;
    v18 = sub_26B079E40();
    v19 = v83;
    v110[0] = v18;
    v110[1] = v20;
    *v83 = *(v83 + 19);
    v21 = *(v19 + 20);
    v22 = *(v19 + 21);
    v23 = *(v19 + 22);
    *(v19 + 4) = *(v19 + 23);
    *(v19 + 3) = v23;
    *(v19 + 2) = v22;
    *(v19 + 1) = v21;
    v45 = sub_26AF0A830();
    v46 = v24;
    v38 = v25;
    sub_26AF1AC50(v44, &v108);
    v43 = v35;
    MEMORY[0x28223BE20](v44);
    v39 = v32;
    sub_26AF1AC50(v26, &v107);
    v42 = v35;
    MEMORY[0x28223BE20](v35);
    v40 = v32;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC748);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
    v51 = sub_26AF1C3E4();
    v52 = sub_26AE95974();
    v53 = sub_26AEFDA40();
    v54 = sub_26AEB349C();
    v41 = v31;
    v34 = v54;
    v33 = v53;
    v32[1] = v52;
    v32[0] = v51;
    v31[3] = v50;
    v31[2] = v49;
    v48 = MEMORY[0x277D837D0];
    v31[1] = MEMORY[0x277D837D0];
    v31[0] = v62;
    v47 = v110;
    sub_26B0795E0();
    sub_26AF07270();
    sub_26AF07270();

    sub_26AE9BCC0();
    (*(v64 + 8))(v66, v62);
    v106 = 27;
    v98 = v62;
    v99 = v48;
    v100 = v49;
    v101 = v50;
    v102 = v51;
    v103 = v52;
    v104 = v53;
    v105 = v54;
    swift_getOpaqueTypeConformance2();
    View.suuiIdentifiable(_:)();
    (*(v69 + 8))(v71, v67);
    v93 = *(v83 + 19);
    v27 = *(v83 + 20);
    v28 = *(v83 + 21);
    v29 = *(v83 + 22);
    v97 = *(v83 + 23);
    v96 = v29;
    v95 = v28;
    v94 = v27;
    v56 = sub_26AF0A154();
    sub_26AF1C270();
    sub_26B0796A0();
    sub_26AF1CBB0(v74);
    v57 = sub_26AF1C1C8();
    sub_26AE9463C(v80, v75, v82);
    sub_26AF1CC74(v80);
    v92 = v80;
    sub_26AF1CD74(v82, v78);
    sub_26AE94B4C(v78, v75, v80);
    sub_26AF1CC74(v78);
    sub_26AF1CD74(v80, v85);
    (*(v77 + 56))(v85, 0, 1, v75);
    sub_26AF09CCC(v85, v75, v87);
    sub_26AF1C5C0(v85);
    sub_26AF1C704(v87, v89);
    sub_26AF1CC74(v80);
    sub_26AF1CC74(v82);
  }

  else
  {
    (*(v77 + 56))(v85, 1, 1, v75);
    sub_26AF1C1C8();
    sub_26AF09CCC(v85, v75, v87);
    sub_26AF1C5C0(v85);
    sub_26AF1C704(v87, v89);
  }

  sub_26AF1C8E0(v89, v87);
  sub_26AF1CB00();
  sub_26AE94B4C(v87, v84, v58);
  sub_26AF1C5C0(v87);
  return sub_26AF1C5C0(v89);
}

uint64_t sub_26AF0CF3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v86 = a1;
  v46 = sub_26AF20C04;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v122 = 0;
  v115 = 0;
  v98 = 0;
  v97 = 0;
  v90 = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC58);
  v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v49 = &v14 - v48;
  v50 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v48);
  v51 = &v14 - v50;
  v52 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v50);
  v53 = &v14 - v52;
  v148 = &v14 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC60);
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v58 = &v14 - v57;
  v59 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v57);
  v60 = &v14 - v59;
  v61 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v59);
  v62 = &v14 - v61;
  v147 = &v14 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC68);
  v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v65 = &v14 - v64;
  v66 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v64);
  v67 = &v14 - v66;
  v68 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v66);
  v69 = &v14 - v68;
  v146 = &v14 - v68;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC70);
  v70 = *(v83 - 8);
  v71 = v83 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v73 = &v14 - v72;
  v74 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v72);
  v75 = (&v14 - v74);
  v76 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v74);
  v85 = (&v14 - v76);
  v77 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v76);
  v82 = (&v14 - v77);
  v145 = &v14 - v77;
  v144 = v11;
  v87 = 80;
  memcpy(__dst, v11, sizeof(__dst));
  sub_26AF0DBC0(0, &v137);
  v81 = &v129;
  v129 = v137;
  v130 = v138;
  v131 = v139;
  v132 = v140;
  v133 = v141;
  v134 = v142;
  v135 = v143;
  v79 = &v128;
  v128 = 26;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB90);
  v80 = sub_26AF1D000();
  View.suuiIdentifiable(_:)();
  sub_26AF1D0A8();
  v84 = sub_26AF1FFD8();
  sub_26AE9463C(v85, v83, v82);
  sub_26AF20080(v85);
  memcpy(&v127, v86, v87);
  v88 = sub_26AF09FB0();
  v89 = ReactiveUIManager.betaPrograms.getter();
  if (!v89)
  {

LABEL_7:
    (*(v55 + 56))(v65, 1, 1, v54);
    sub_26AF2012C();
    sub_26AF09CCC(v65, v54, v67);
    sub_26AF201C4(v65);
    sub_26AF20278(v67, v69);
    goto LABEL_8;
  }

  v44 = v89;
  v39 = v89;
  v97 = v89;

  memcpy(v96, v86, sizeof(v96));
  v40 = sub_26AF09FB0();
  ReactiveUIManager.betaUpdatesRestrictions.getter(&v95);
  v41 = v95;

  v43 = &v94;
  v94 = v41;
  v42 = &v93;
  v93 = 0;
  sub_26AEB7A84();
  v12 = sub_26B07A790();
  if ((v12 & 1) == 0)
  {

    goto LABEL_7;
  }

  sub_26B078640();
  v35 = &v92;
  v92 = v39;
  sub_26AF1AC50(v86, &v91);
  v32 = swift_allocObject();
  memcpy((v32 + 16), v86, 0x50uLL);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBA0);
  v34 = sub_26AF20C0C();
  sub_26AF20C94();
  sub_26B079A50();
  v36 = sub_26AF2012C();
  sub_26AE9463C(v60, v54, v62);
  v37 = *(v55 + 8);
  v38 = v55 + 8;
  v37(v60, v54);
  v90 = v60;
  v31 = *(v55 + 16);
  v30 = v55 + 16;
  v31(v58, v62, v54);
  sub_26AE94B4C(v58, v54, v60);
  v37(v58, v54);
  v31(v65, v60, v54);
  (*(v55 + 56))(v65, 0, 1, v54);
  sub_26AF09CCC(v65, v54, v67);
  sub_26AF201C4(v65);
  sub_26AF20278(v67, v69);
  v37(v60, v54);
  v37(v62, v54);

LABEL_8:
  memcpy(v126, v86, sizeof(v126));
  v28 = sub_26AF09FB0();
  v29 = ReactiveUIManager.enrolledBetaProgram.getter();
  if (v29 && (v27 = v29, v25 = v29, v122 = v29, , memcpy(v121, v86, sizeof(v121)), v26 = sub_26AF0E00C(), sub_26AF1AC50(v86, &v120), (v26 & 1) == 0 ? (memcpy(v119, v86, sizeof(v119)), v20 = sub_26AF09FB0(), ReactiveUIManager.betaUpdatesRestrictions.getter(&v118), v21 = v118, , v23 = &v117, v117 = v21, v22 = &v116, v116 = 0, sub_26AEB7C30(), v24 = sub_26B079D70() ^ 1) : (v24 = 1), v19 = v24, sub_26AF07270(), (v19 & 1) != 0))
  {
    v115 = v85;
    memcpy(v107, v86, sizeof(v107));

    sub_26AF0DBC0(v25, &v108);

    v18 = &v100;
    v100 = v108;
    v101 = v109;
    v102 = v110;
    v103 = v111;
    v104 = v112;
    v105 = v113;
    v106 = v114;
    v99 = 30;
    View.suuiIdentifiable(_:)();
    sub_26AF1D0A8();
    sub_26AE9463C(v75, v83, v85);
    sub_26AF20080(v75);
    v98 = v75;
    sub_26AF20618(v85, v73);
    sub_26AE94B4C(v73, v83, v75);
    sub_26AF20080(v73);
    sub_26AF20618(v75, v49);
    (*(v70 + 56))(v49, 0, 1, v83);
    sub_26AF09CCC(v49, v83, v51);
    sub_26AF203AC(v49);
    sub_26AF204A4(v51, v53);
    sub_26AF20080(v75);
    sub_26AF20080(v85);
  }

  else
  {

    (*(v70 + 56))(v49, 1, 1, v83);
    sub_26AF09CCC(v49, v83, v51);
    sub_26AF203AC(v49);
    sub_26AF204A4(v51, v53);
  }

  sub_26AF20618(v82, v85);
  v17 = v125;
  v125[0] = v85;
  sub_26AF20744(v69, v67);
  v125[1] = v67;
  sub_26AF20878(v53, v51);
  v125[2] = v51;
  v15 = v124;
  v124[0] = v83;
  v124[1] = v63;
  v124[2] = v47;
  v16 = v123;
  v123[0] = v84;
  v123[1] = sub_26AF20A6C();
  v123[2] = sub_26AF20B04();
  sub_26AFD49C4(v17, 3uLL, v15, v45);
  sub_26AF203AC(v51);
  sub_26AF201C4(v67);
  sub_26AF20080(v85);
  sub_26AF203AC(v53);
  sub_26AF201C4(v69);
  return sub_26AF20080(v82);
}

uint64_t *sub_26AF0DBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  memcpy(__dst, v2, sizeof(__dst));

  memcpy(v36, __dst, sizeof(v36));
  sub_26AF17F9C(a1, &v37);
  v35 = v37;
  sub_26AF1AC50(__dst, v34);

  v5 = swift_allocObject();
  memcpy((v5 + 16), __dst, 0x50uLL);
  *(v5 + 96) = a1;
  BetaProgramView.init(program:status:action:)(a1, &v35, sub_26AF1CF44, v5, &v38);
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  memcpy(v29, __dst, sizeof(v29));
  sub_26AF0A154();
  sub_26AF1CF50();
  sub_26B0796A0();
  sub_26AF1CFC8();
  v22 = v42;
  v23 = v43;
  v24 = v44;
  v25 = v45;
  v26 = v46;
  v27 = v47;
  v28 = v48;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB90);
  sub_26AF1D000();
  sub_26AE9463C(&v22, v14, &v49);
  sub_26AF1D0A8();
  v6 = v49;
  v7 = v50;
  v8 = v51;
  v9 = v52;
  v10 = v53;
  v11 = v54;
  v12 = v55;

  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  sub_26AE94B4C(&v15, v14, a2);
  sub_26AF1D0A8();
  result = &v49;
  sub_26AF1D0A8();
  return result;
}

uint64_t *sub_26AF0DE64@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = 0;
  v43 = 0;
  v44 = *a1;
  v4 = v44;
  v43 = a2;
  memcpy(__dst, a2, sizeof(__dst));

  sub_26AF0DBC0(v4, &v29);

  v21 = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB90);
  sub_26AF1D000();
  sub_26AE9463C(&v21, v13, &v36);
  sub_26AF1D0A8();
  v5 = v36;
  v6 = v37;
  v7 = v38;
  v8 = v39;
  v9 = v40;
  v10 = v41;
  v11 = v42;

  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  sub_26AE94B4C(&v14, v13, a3);
  sub_26AF1D0A8();
  result = &v36;
  sub_26AF1D0A8();
  return result;
}

uint64_t sub_26AF0E00C()
{
  v6 = 0;
  memcpy(__dst, v0, sizeof(__dst));
  v8 = v0;
  memcpy(v7, __dst, sizeof(v7));
  sub_26AF09FB0();
  v4 = ReactiveUIManager.enrolledBetaProgram.getter();
  if (!v4)
  {

LABEL_7:
    v2 = 0;
    return v2 & 1;
  }

  v6 = v4;

  memcpy(v5, __dst, sizeof(v5));
  sub_26AF09FB0();
  if (!ReactiveUIManager.betaPrograms.getter())
  {

    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBA0);
  sub_26AF1D120();
  v3 = sub_26B07A000();

  v2 = v3 ^ 1;
  return v2 & 1;
}

uint64_t sub_26AF0E1F0@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00();
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AF0E3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = a7;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v21 = a3;
  v20 = a4;
  v11 = (*(*(a4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](a1);
  v13 = &v10 - v11;
  v8(v7);
  return sub_26B079AA0();
}

uint64_t sub_26AF0E48C@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v17 = __src;
  v16 = sub_26AF1F564;
  v13 = sub_26AF1F56C;
  v32 = 0;
  __srca = __dst;
  __n = 80;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v34, __dst, sizeof(v34));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB68);
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v8 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v21 = &v6 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB58);
  v9 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v26 = &v6 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v27 = &v6 - v10;
  v32 = &v6 - v10;
  sub_26AF1AC50(v4, &v31);
  v12 = swift_allocObject();
  memcpy((v12 + 16), v17, __n);
  sub_26AF1AC50(v17, &v30);
  v14 = v28;
  v28[2] = v17;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBC0);
  sub_26AF1D8BC();
  sub_26B079900();
  sub_26AF07270();
  v18 = &v29;
  v29 = 28;
  sub_26AF1C538();
  View.suuiIdentifiable(_:)();
  (*(v19 + 8))(v21, v22);
  v25 = sub_26AF1C490();
  sub_26AE9463C(v26, v24, v27);
  sub_26AF1F574(v26);
  sub_26AF1F638(v27, v26);
  sub_26AE94B4C(v26, v24, v23);
  sub_26AF1F574(v26);
  return sub_26AF1F574(v27);
}

uint64_t sub_26AF0E774(uint64_t *a1)
{
  v35 = a1;
  v42 = 0;
  v51 = 0;
  v32 = 0;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v34 = &v14 - v33;
  v36 = sub_26B078580();
  v37 = *(v36 - 8);
  v38 = v37;
  MEMORY[0x28223BE20](v35);
  v39 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v2;
  sub_26B078550();
  v44 = sub_26B078570();
  v40 = v44;
  v43 = sub_26B07A2A0();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v45 = sub_26B07A760();
  if (os_log_type_enabled(v44, v43))
  {
    v3 = v32;
    v23 = sub_26B07A420();
    v19 = v23;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v21 = 0;
    v24 = sub_26AEA3B70(0);
    v22 = v24;
    v25 = sub_26AEA3B70(v21);
    v49 = v23;
    v48 = v24;
    v47 = v25;
    v26 = 0;
    v27 = &v49;
    sub_26AEA3BC4(0, &v49);
    sub_26AEA3BC4(v26, v27);
    v46 = v45;
    v28 = &v14;
    MEMORY[0x28223BE20](&v14);
    v29 = &v14 - 6;
    *(&v14 - 4) = v4;
    *(&v14 - 3) = &v48;
    *(&v14 - 2) = &v47;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v31 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v40, v41, "User Action: Clicked on Apple Account option in BetaUpdatesView", v19, 2u);
      v17 = 0;
      sub_26AEA3C24(v22);
      sub_26AEA3C24(v25);
      sub_26B07A400();

      v18 = v31;
    }
  }

  else
  {

    v18 = v32;
  }

  (*(v38 + 8))(v39, v36);
  sub_26B07A140();
  v15 = 0;
  v5 = sub_26B07A160();
  (*(*(v5 - 8) + 56))(v34, 0, 1);
  sub_26AF1AC50(v35, v50);
  v6 = swift_allocObject();
  v7 = v35;
  v8 = v15;
  v9 = v34;
  *(v6 + 16) = v15;
  *(v6 + 24) = v8;
  *(v6 + 32) = *v7;
  v10 = *(v7 + 1);
  v11 = *(v7 + 2);
  v12 = *(v7 + 3);
  *(v6 + 96) = *(v7 + 4);
  *(v6 + 80) = v12;
  *(v6 + 64) = v11;
  *(v6 + 48) = v10;
  v16 = sub_26AF449A0(v8, v8, v9, &unk_26B08B4B8, v6, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v34);
}

uint64_t sub_26AF0ECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v4[12] = v4;
  v4[13] = 0;
  v4[13] = a4;
  return MEMORY[0x2822009F8](sub_26AF0ECF4, 0, 0);
}

uint64_t sub_26AF0ECF4()
{
  v1 = v0[14];
  v0[12] = v0;
  memcpy(v0 + 2, v1, 0x50uLL);
  v2 = swift_task_alloc();
  *(v4 + 120) = v2;
  *v2 = *(v4 + 96);
  v2[1] = sub_26AF0EDB4;

  return sub_26AF0EEE8();
}

uint64_t sub_26AF0EDB4()
{
  v3 = *v0;
  *(v3 + 96) = *v0;

  v1 = *(*(v3 + 96) + 8);

  return v1();
}

uint64_t sub_26AF0EEE8()
{
  v0[84] = v0;
  v0[85] = 0;
  v1 = sub_26B078580();
  v0[86] = v1;
  v0[87] = *(v1 - 8);
  v0[88] = swift_task_alloc();
  memcpy(v0 + 2, __src, 0x50uLL);
  sub_26B07A130();
  v0[89] = sub_26B07A120();
  v5 = sub_26B07A0C0();
  v0[90] = v5;
  v0[91] = v2;

  return MEMORY[0x2822009F8](sub_26AF0F028, v5, v2);
}

uint64_t sub_26AF0F028()
{
  v9 = v0;
  v0[84] = v0;
  sub_26AF1AC50(v0 + 2, (v0 + 12));
  memcpy(v0 + 22, v0 + 2, 0x50uLL);
  sub_26AF0A1DC();
  sub_26AF07270();
  memcpy(__dst, v0 + 2, sizeof(__dst));
  v6 = sub_26AF0E00C();
  sub_26AF1AC50(v0 + 2, (v0 + 32));
  if (v6)
  {
    sub_26AF07270();
LABEL_8:
    memcpy(v5 + 62, v5 + 2, 0x50uLL);
    v4 = swift_task_alloc();
    v5[92] = v4;
    *v4 = v5[84];
    v4[1] = sub_26AF0F2F0;

    return sub_26AF12480();
  }

  memcpy(v8, v5 + 2, sizeof(v8));
  v5[82] = sub_26AF17170();
  v5[83] = v1;
  if (!v5[83])
  {
    sub_26AF01944();
    sub_26AF07270();
    goto LABEL_8;
  }

  sub_26AF01944();
  sub_26AF07270();
  sub_26AF1AC50(v5 + 2, (v5 + 42));
  memcpy(v5 + 52, v5 + 2, 0x50uLL);
  sub_26AF0A77C();
  sub_26AF07270();
  sub_26AF1A3E8(v5 + 2);

  v2 = *(v5[84] + 8);

  return v2();
}

uint64_t sub_26AF0F2F0()
{
  v7 = *v1;
  v6 = *v1 + 16;
  *(v7 + 672) = *v1;
  *(v7 + 744) = v0;

  if (v0)
  {
    v2 = *(v6 + 712);
    v3 = *(v6 + 704);
    v4 = sub_26AF0F520;
  }

  else
  {
    v2 = *(v6 + 712);
    v3 = *(v6 + 704);
    v4 = sub_26AF0F470;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AF0F470()
{
  *(v0 + 672) = v0;
  sub_26AF1A3E8((v0 + 16));

  v1 = *(*(v0 + 672) + 8);

  return v1();
}

uint64_t sub_26AF0F520()
{
  v38 = v0;
  v13 = v0[93];
  v0[84] = v0;
  sub_26AF1A3E8(v0 + 2);
  MEMORY[0x26D66E1D0](v13);
  v0[85] = v13;
  sub_26B078550();
  sub_26AF1AC50(v0 + 2, (v0 + 72));
  v14 = swift_allocObject();
  memcpy((v14 + 16), v0 + 2, 0x50uLL);
  MEMORY[0x26D66E1D0](v13);
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  sub_26AED0174();

  v31 = sub_26B078570();
  v32 = sub_26B07A2D0();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26AF1D210;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26AF1D54C;
  *(v16 + 24) = v15;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26AF1D598;
  *(v23 + 24) = v16;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26AF1A464;
  *(v17 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AF1D698;
  *(v26 + 24) = v17;
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26AF1D258;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26AF1D798;
  *(v20 + 24) = v19;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26AF1D7E4;
  *(v29 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v30 = v1;

  *v30 = sub_26AF1D4D0;
  v30[1] = v21;

  v30[2] = sub_26AF1D504;
  v30[3] = v22;

  v30[4] = sub_26AF1D5E4;
  v30[5] = v23;

  v30[6] = sub_26AF1D61C;
  v30[7] = v24;

  v30[8] = sub_26AF1D650;
  v30[9] = v25;

  v30[10] = sub_26AF1D6E4;
  v30[11] = v26;

  v30[12] = sub_26AF1D71C;
  v30[13] = v27;

  v30[14] = sub_26AF1D750;
  v30[15] = v28;

  v30[16] = sub_26AF1D830;
  v30[17] = v29;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v10 = sub_26AEA3B70(1);
    v11 = sub_26AEA3B70(2);
    v33 = buf;
    v34 = v10;
    v35 = v11;
    sub_26AEA3BC4(2, &v33);
    sub_26AEA3BC4(3, &v33);
    v36 = sub_26AF1D4D0;
    v37 = v21;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1D504;
    v37 = v22;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1D5E4;
    v37 = v23;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1D61C;
    v37 = v24;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1D650;
    v37 = v25;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1D6E4;
    v37 = v26;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1D71C;
    v37 = v27;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1D750;
    v37 = v28;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1D830;
    v37 = v29;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_26AE88000, v31, v32, "%s.%s: Failed to select Apple Account: %@", buf, 0x20u);
    sub_26AEA3C24(v10);
    sub_26AEA3C24(v11);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v12[93];
  v6 = v12[88];
  v7 = v12[86];
  v5 = v12[87];
  v2 = MEMORY[0x277D82BD8](v31);
  (*(v5 + 8))(v6, v7, v2);

  v3 = *(v12[84] + 8);

  return v3();
}

uint64_t sub_26AF1014C@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v27 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  sub_26AF102C4(v17);
  v14[0] = v17[0];
  v14[1] = v17[1];
  v14[2] = v17[2];
  v14[3] = v17[3];
  v15 = v18;
  v16 = v19 & 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBC0);
  sub_26AF1D8BC();
  sub_26AE9463C(v14, v10, &v21);
  sub_26AF1D960(v14);
  v3 = v21;
  v4 = v22;
  v5 = v23;
  v6 = v24;
  v7 = v25;
  v8 = v26;
  sub_26AF1D83C(v21, v22, v23, v24, v25, v26 & 1);
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v12 = v7;
  v13 = v8 & 1;
  sub_26AE94B4C(v11, v10, a2);
  sub_26AF1D960(v11);
  return sub_26AF1D960(&v21);
}

uint64_t sub_26AF102C4@<X0>(uint64_t a1@<X8>)
{
  v195 = &v231;
  v192 = a1;
  v348 = 0;
  __c = 0;
  memset(__b, 0, 0x23uLL);
  v343 = 0u;
  v344 = 0u;
  v330 = 0u;
  v331 = 0u;
  v313 = 0;
  v314 = 0;
  v311 = 0u;
  v312 = 0u;
  v298 = 0u;
  v299 = 0u;
  __len = 33;
  memset(v279, 0, 0x21uLL);
  v274 = 0u;
  v275 = 0u;
  v261 = 0u;
  v262 = 0u;
  memset(v249, 0, 0x21uLL);
  v231 = 0u;
  v232 = 0u;
  v218 = 0u;
  v219 = 0u;
  v196 = sub_26B078E00();
  v197 = *(v196 - 8);
  v198 = v196 - 8;
  v199 = (*(v197 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v196);
  v200 = &v37 - v199;
  v201 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v37 - v199);
  v202 = &v37 - v201;
  v203 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v37 - v201);
  v204 = &v37 - v203;
  v205 = __dst;
  v206 = 80;
  memcpy(__dst, v1, sizeof(__dst));
  v348 = v1;
  memcpy(v346, __dst, sizeof(v346));
  if (sub_26AF0E00C())
  {
    memcpy(v278, __dst, sizeof(v278));
    v276 = sub_26AF17170();
    v277 = v4;
    v191 = v4 != 0;
    v190 = v191;
    sub_26AF01944();
    if (v190)
    {
      v177 = 1;
      sub_26B079D00();
      v165 = sub_26B078E10();
      v161 = v5;
      v162 = v6;
      v163 = v7;
      v164 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v164);
      v227 = 0;
      v228 = 0;
      v229 = 0;
      v230 = v177 & 1;
      v223 = sub_26B0792C0();
      v224 = v8;
      v225 = v9;
      v226 = v10;
      v166 = v220;
      v220[0] = v223;
      v220[1] = v8;
      v221 = v9 & 1 & v177;
      v222 = v10;
      v179 = &v231;
      v174 = MEMORY[0x277CE0BD8];
      v175 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v220, MEMORY[0x277CE0BD8], &v231);
      sub_26AE95B40(v166);
      v167 = v231;
      v168 = v232;
      v169 = *(&v232 + 1);
      sub_26AE95D28(v231, *(&v231 + 1), v232 & 1);
      sub_26B078640();
      v170 = &v215;
      v215 = v167;
      v216 = v168 & 1 & v177;
      v217 = v169;
      v178 = &v218;
      sub_26AE94B4C(&v215, v174, &v218);
      sub_26AE95B40(v170);
      v171 = v218;
      v172 = v219;
      v173 = *(&v219 + 1);
      sub_26AE95D28(v218, *(&v218 + 1), v219 & 1);
      sub_26B078640();
      v176 = &v207;
      v207 = v171;
      v208 = v172 & 1 & v177;
      v209 = v173;
      sub_26AE94BB0(&v207, v174, v174, v175, v175, &v210);
      sub_26AE95B40(v176);
      v181 = v210;
      v182 = v211;
      v183 = v212;
      v184 = v213;
      v180 = v214;
      sub_26AEB4364(v210, v211, v212);
      v279[0] = v181;
      v279[1] = v182;
      v279[2] = v183;
      v279[3] = v184;
      LOBYTE(v279[4]) = v180 & 1 & v177;
      sub_26AE95B40(v178);
      sub_26AE95B40(v179);
      v185 = v181;
      v186 = v182;
      v187 = v183;
      v188 = v184;
      v189 = v180;
    }

    else
    {
      v153 = 1;
      sub_26B079D00();
      v141 = sub_26B078E10();
      v137 = v11;
      v138 = v12;
      v139 = v13;
      v140 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v140);
      v270 = 0;
      v271 = 0;
      v272 = 0;
      v273 = v153 & 1;
      v266 = sub_26B0792C0();
      v267 = v14;
      v268 = v15;
      v269 = v16;
      v142 = v263;
      v263[0] = v266;
      v263[1] = v14;
      v264 = v15 & 1 & v153;
      v265 = v16;
      v155 = &v274;
      v150 = MEMORY[0x277CE0BD8];
      v151 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v263, MEMORY[0x277CE0BD8], &v274);
      sub_26AE95B40(v142);
      v143 = v274;
      v144 = v275;
      v145 = *(&v275 + 1);
      sub_26AE95D28(v274, *(&v274 + 1), v275 & 1);
      sub_26B078640();
      v146 = &v258;
      v258 = v143;
      v259 = v144 & 1 & v153;
      v260 = v145;
      v154 = &v261;
      sub_26AE94B4C(&v258, v150, &v261);
      sub_26AE95B40(v146);
      v147 = v261;
      v148 = v262;
      v149 = *(&v262 + 1);
      sub_26AE95D28(v261, *(&v261 + 1), v262 & 1);
      sub_26B078640();
      v152 = &v250;
      v250 = v147;
      v251 = v148 & 1 & v153;
      v252 = v149;
      sub_26AE94CA8(&v250, v150, v150, v151, v151, &v253);
      sub_26AE95B40(v152);
      v157 = v253;
      v158 = v254;
      v159 = v255;
      v160 = v256;
      v156 = v257;
      sub_26AEB4364(v253, v254, v255);
      v279[0] = v157;
      v279[1] = v158;
      v279[2] = v159;
      v279[3] = v160;
      LOBYTE(v279[4]) = v156 & 1 & v153;
      sub_26AE95B40(v154);
      sub_26AE95B40(v155);
      v185 = v157;
      v186 = v158;
      v187 = v159;
      v188 = v160;
      v189 = v156;
    }

    v110 = v247;
    v247[0] = v185;
    v247[1] = v186;
    v247[2] = v187;
    v247[3] = v188;
    v123 = 1;
    v248 = v189 & 1;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
    v117 = sub_26AEB349C();
    v124 = v249;
    sub_26AE94B4C(v110, v116, v249);
    sub_26AEB450C(v110);
    v111 = v249[0];
    v112 = v249[1];
    v113 = v249[2];
    v114 = v249[3];
    v115 = LOBYTE(v249[4]);
    sub_26AEB4364(v249[0], v249[1], v249[2]);
    v118 = v236;
    v236[0] = v111;
    v236[1] = v112;
    v236[2] = v113;
    v236[3] = v114;
    v237 = v115 & 1 & v123;
    v120 = MEMORY[0x277CE0BD8];
    v121 = MEMORY[0x277CE0BC8];
    sub_26AE94BB0(v236, v116, MEMORY[0x277CE0BD8], v117, MEMORY[0x277CE0BC8], v238);
    sub_26AEB450C(v118);
    v122 = v233;
    v233[0] = v238[0];
    v233[1] = v238[1];
    v233[2] = v238[2];
    v233[3] = v238[3];
    v234 = v239;
    v235 = v240 & 1 & v123;
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCBB0);
    v17 = sub_26AEB33F8();
    sub_26AE94BB0(v122, v119, v120, v17, v121, &v241);
    sub_26AEB43D8(v122);
    v126 = v241;
    v127 = v242;
    v128 = v243;
    v129 = v244;
    v130 = v245;
    v125 = v246;
    sub_26AF1D83C(v241, v242, v243, v244, v245, v246 & 1);
    __b[0] = v126;
    __b[1] = v127;
    __b[2] = v128;
    __b[3] = v129;
    LOWORD(__b[4]) = v130;
    BYTE2(__b[4]) = v125 & 1 & v123;
    sub_26AEB450C(v124);
    sub_26AEB450C(v279);
    v131 = v126;
    v132 = v127;
    v133 = v128;
    v134 = v129;
    v135 = v130;
    v136 = v125;
  }

  else
  {
    memcpy(v345, __dst, sizeof(v345));
    v108 = sub_26AF17170();
    v109 = v18;
    if (v18)
    {
      v106 = v108;
      v107 = v109;
      v93 = v109;
      v68 = v108;
      v313 = v108;
      v314 = v109;
      v66 = 15;
      sub_26B078DF0();
      v90 = 1;
      sub_26B079D00();
      v67 = v19;
      sub_26B078DE0();

      sub_26B078DD0();
      v73 = 0;
      sub_26B079D00();
      v69 = v20;
      sub_26B078DE0();

      (*(v197 + 16))(v202, v204, v196);
      (*(v197 + 32))(v200, v202, v196);
      (*(v197 + 8))(v204, v196);
      v75 = sub_26B078E20();
      v70 = v21;
      v71 = v22;
      v72 = v23;
      v74 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v74);
      v307 = 0;
      v308 = 0;
      v309 = 0;
      v310 = v90 & 1;
      v303 = sub_26B0792C0();
      v304 = v24;
      v305 = v25;
      v306 = v26;
      v76 = v300;
      v300[0] = v303;
      v300[1] = v24;
      v301 = v25 & 1 & v90;
      v302 = v26;
      v92 = &v311;
      v87 = MEMORY[0x277CE0BD8];
      v88 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v300, MEMORY[0x277CE0BD8], &v311);
      sub_26AE95B40(v76);
      v77 = v311;
      v78 = v312;
      v79 = *(&v312 + 1);
      sub_26AE95D28(v311, *(&v311 + 1), v312 & 1);
      sub_26B078640();
      v80 = &v295;
      v295 = v77;
      v296 = v78 & 1 & v90;
      v297 = v79;
      v91 = &v298;
      sub_26AE94B4C(&v295, v87, &v298);
      sub_26AE95B40(v80);
      v81 = v298;
      v82 = v299;
      v83 = *(&v299 + 1);
      sub_26AE95D28(v298, *(&v298 + 1), v299 & 1);
      sub_26B078640();
      v85 = &v283;
      v283 = v81;
      v284 = v82 & 1 & v90;
      v285 = v83;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
      v27 = sub_26AEB349C();
      sub_26AE94CA8(v85, v84, v87, v27, v88, v286);
      sub_26AE95B40(v85);
      v89 = v280;
      v280[0] = v286[0];
      v280[1] = v286[1];
      v280[2] = v286[2];
      v280[3] = v286[3];
      v281 = v287;
      v282 = v288 & 1 & v90;
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCBB0);
      v28 = sub_26AEB33F8();
      sub_26AE94BB0(v89, v86, v87, v28, v88, &v289);
      sub_26AEB43D8(v89);
      v95 = v289;
      v96 = v290;
      v97 = v291;
      v98 = v292;
      v99 = v293;
      v94 = v294;
      sub_26AF1D83C(v289, v290, v291, v292, v293, v294 & 1);
      __b[0] = v95;
      __b[1] = v96;
      __b[2] = v97;
      __b[3] = v98;
      LOWORD(__b[4]) = v99;
      BYTE2(__b[4]) = v94 & 1 & v90;
      sub_26AE95B40(v91);
      sub_26AE95B40(v92);

      v100 = v95;
      v101 = v96;
      v102 = v97;
      v103 = v98;
      v104 = v99;
      v105 = v94;
    }

    else
    {
      v57 = 1;
      sub_26B079D00();
      v44 = sub_26B078E10();
      v40 = v29;
      v41 = v30;
      v42 = v31;
      v43 = *sub_26B02D0D0();
      MEMORY[0x277D82BE0](v43);
      v339 = 0;
      v340 = 0;
      v341 = 0;
      v342 = v57 & 1;
      v335 = sub_26B0792C0();
      v336 = v32;
      v337 = v33;
      v338 = v34;
      v45 = v332;
      v332[0] = v335;
      v332[1] = v32;
      v333 = v33 & 1 & v57;
      v334 = v34;
      v59 = &v343;
      v54 = MEMORY[0x277CE0BD8];
      v55 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v332, MEMORY[0x277CE0BD8], &v343);
      sub_26AE95B40(v45);
      v46 = v343;
      v47 = v344;
      v48 = *(&v344 + 1);
      sub_26AE95D28(v343, *(&v343 + 1), v344 & 1);
      sub_26B078640();
      v49 = &v327;
      v327 = v46;
      v328 = v47 & 1 & v57;
      v329 = v48;
      v58 = &v330;
      sub_26AE94B4C(&v327, v54, &v330);
      sub_26AE95B40(v49);
      v50 = v330;
      v51 = v331;
      v52 = *(&v331 + 1);
      sub_26AE95D28(v330, *(&v330 + 1), v331 & 1);
      sub_26B078640();
      v56 = &v318;
      v318 = v50;
      v319 = v51 & 1 & v57;
      v320 = v52;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCBB0);
      v35 = sub_26AEB33F8();
      sub_26AE94CA8(v56, v53, v54, v35, v55, &v321);
      sub_26AE95B40(v56);
      v61 = v321;
      v62 = v322;
      v63 = v323;
      v64 = v324;
      v65 = v325;
      v60 = v326;
      sub_26AF1D83C(v321, v322, v323, v324, v325, v326 & 1);
      __b[0] = v61;
      __b[1] = v62;
      __b[2] = v63;
      __b[3] = v64;
      LOWORD(__b[4]) = v65;
      BYTE2(__b[4]) = v60 & 1 & v57;
      sub_26AE95B40(v58);
      sub_26AE95B40(v59);
      v100 = v61;
      v101 = v62;
      v102 = v63;
      v103 = v64;
      v104 = v65;
      v105 = v60;
    }

    v131 = v100;
    v132 = v101;
    v133 = v102;
    v134 = v103;
    v135 = v104;
    v136 = v105;
  }

  v39 = v315;
  v315[0] = v131;
  v315[1] = v132;
  v315[2] = v133;
  v315[3] = v134;
  v316 = v135;
  v317 = v136 & 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBC0);
  sub_26AF1D8BC();
  sub_26AE94B4C(v39, v38, v192);
  sub_26AF1D960(v39);
  return sub_26AF1D960(__b);
}

uint64_t sub_26AF11590@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v24 = a1;
  v28 = 0;
  v25 = sub_26AF1F1BC;
  v27 = sub_26AF16078;
  v16 = sub_26AF1F22C;
  v17 = sub_26AF166DC;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v18 = (v31[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v19 = &v10 - v18;
  v20 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v21 = &v10 - v20;
  v22 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v36 = &v10 - v22;
  v23 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v29 = &v10 - v23;
  v45 = &v10 - v23;
  v44 = v8;
  sub_26AF1AC50(v8, v43);
  v26 = swift_allocObject();
  memcpy((v26 + 16), v24, 0x50uLL);
  sub_26B079900();
  v30 = sub_26AE9C224();
  sub_26AE9463C(v36, v33, v29);
  v34 = v31[1];
  v35 = v31 + 1;
  v34(v36, v33);
  v42 = v36;
  sub_26AF1AC50(v24, v41);
  v11 = swift_allocObject();
  memcpy((v11 + 16), v24, 0x50uLL);
  sub_26B079900();
  sub_26AE9463C(v21, v33, v36);
  v34(v21, v33);
  v13 = v31[2];
  v12 = v31 + 2;
  v13(v21, v29, v33);
  v14 = v40;
  v40[0] = v21;
  v13(v19, v36, v33);
  v40[1] = v19;
  v39[0] = v33;
  v39[1] = v33;
  v37 = v30;
  v38 = v30;
  sub_26AFD49C4(v14, 2uLL, v39, v15);
  v34(v19, v33);
  v34(v21, v33);
  v34(v36, v33);
  return (v34)(v29, v33);
}

uint64_t sub_26AF11B0C(uint64_t *a1)
{
  v35 = a1;
  v42 = 0;
  v51 = 0;
  v32 = 0;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v34 = &v14 - v33;
  v36 = sub_26B078580();
  v37 = *(v36 - 8);
  v38 = v37;
  MEMORY[0x28223BE20](v35);
  v39 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v2;
  sub_26B078550();
  v44 = sub_26B078570();
  v40 = v44;
  v43 = sub_26B07A2A0();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v45 = sub_26B07A760();
  if (os_log_type_enabled(v44, v43))
  {
    v3 = v32;
    v23 = sub_26B07A420();
    v19 = v23;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v21 = 0;
    v24 = sub_26AEA3B70(0);
    v22 = v24;
    v25 = sub_26AEA3B70(v21);
    v49 = v23;
    v48 = v24;
    v47 = v25;
    v26 = 0;
    v27 = &v49;
    sub_26AEA3BC4(0, &v49);
    sub_26AEA3BC4(v26, v27);
    v46 = v45;
    v28 = &v14;
    MEMORY[0x28223BE20](&v14);
    v29 = &v14 - 6;
    *(&v14 - 4) = v4;
    *(&v14 - 3) = &v48;
    *(&v14 - 2) = &v47;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v31 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v40, v41, "User Action: Clicked on 'Sign In' in Apple Account alert in BetaUpdatesView", v19, 2u);
      v17 = 0;
      sub_26AEA3C24(v22);
      sub_26AEA3C24(v25);
      sub_26B07A400();

      v18 = v31;
    }
  }

  else
  {

    v18 = v32;
  }

  (*(v38 + 8))(v39, v36);
  v15 = 0;
  v5 = sub_26B07A160();
  (*(*(v5 - 8) + 56))(v34, 1);
  sub_26AF1AC50(v35, v50);
  sub_26B07A130();
  v16 = sub_26B07A120();
  v6 = swift_allocObject();
  v7 = v35;
  v8 = v15;
  v9 = v34;
  *(v6 + 16) = v16;
  *(v6 + 24) = MEMORY[0x277D85700];
  *(v6 + 32) = *v7;
  v10 = *(v7 + 1);
  v11 = *(v7 + 2);
  v12 = *(v7 + 3);
  *(v6 + 96) = *(v7 + 4);
  *(v6 + 80) = v12;
  *(v6 + 64) = v11;
  *(v6 + 48) = v10;
  sub_26AF15B10(v8, v8, v9, &unk_26B08B4A8, v6, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_26AF12058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v4[12] = v4;
  v4[13] = 0;
  v4[13] = a4;
  sub_26B07A130();
  v4[15] = sub_26B07A120();
  v7 = sub_26B07A0C0();
  v4[16] = v7;
  v4[17] = v5;

  return MEMORY[0x2822009F8](sub_26AF12114, v7, v5);
}

uint64_t sub_26AF12114()
{
  v1 = v0[14];
  v0[12] = v0;
  memcpy(v0 + 2, v1, 0x50uLL);
  v2 = swift_task_alloc();
  *(v4 + 144) = v2;
  *v2 = *(v4 + 96);
  v2[1] = sub_26AF121D8;

  return sub_26AF12480();
}

uint64_t sub_26AF121D8()
{
  v6 = *v1;
  v6[12] = *v1;
  v6[19] = v0;

  if (v0)
  {
    v2 = v6[17];
    v3 = v6[16];
    v4 = sub_26AF123E4;
  }

  else
  {
    v2 = v6[17];
    v3 = v6[16];
    v4 = sub_26AF12354;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AF12354()
{
  *(v0 + 96) = v0;

  v1 = *(*(v0 + 96) + 8);

  return v1();
}

uint64_t sub_26AF123E4()
{
  *(v0 + 96) = v0;

  v1 = *(*(v0 + 96) + 8);

  return v1();
}

uint64_t sub_26AF12480()
{
  v0[74] = v0;
  v0[75] = 0;
  v0[76] = 0;
  v0[77] = 0;
  v0[79] = 0;
  v0[80] = 0;
  v0[70] = 0;
  v0[71] = 0;
  v1 = sub_26B078580();
  v0[83] = v1;
  v0[84] = *(v1 - 8);
  v0[85] = swift_task_alloc();
  v0[86] = swift_task_alloc();
  v0[87] = swift_task_alloc();
  sub_26B078300();
  v0[88] = swift_task_alloc();
  sub_26B079DE0();
  v0[89] = swift_task_alloc();
  memcpy(v0 + 10, __src, 0x50uLL);
  v0[90] = sub_26B07A130();
  v0[91] = sub_26B07A120();
  v5 = sub_26B07A0C0();
  v0[92] = v5;
  v0[93] = v2;

  return MEMORY[0x2822009F8](sub_26AF12674, v5, v2);
}

uint64_t sub_26AF12674()
{
  v57 = v0;
  v40 = MEMORY[0x277D85700];
  v0[74] = v0;
  sub_26AF1DA28();
  v41 = sub_26AF1A4BC();
  v0[94] = v41;
  v0[75] = v41;
  MEMORY[0x277D82BE0](v41);
  [v41 setShouldAllowAppleIDCreation_];
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BE0](v41);
  [v41 setAuthenticationType_];
  MEMORY[0x277D82BD8](v41);
  memcpy(__dst, v0 + 10, sizeof(__dst));
  sub_26AF09FB0();
  v42 = ReactiveUIManager.presentingViewController.getter();

  if (!v42)
  {
    return sub_26B07A650();
  }

  [v41 setPresentingViewController_];
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BE0](v41);
  [v41 setIsEphemeral_];
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BE0](v41);
  sub_26B079D00();
  sub_26B079D80();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  sub_26AEFB5C4();
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 1;
  sub_26B079E40();
  v35 = sub_26B079DF0();

  [v41 setTitle_];
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BE0](v41);
  sub_26B079D00();
  sub_26B079D80();
  v2 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v2);
  sub_26AEFB5C4();
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 1;
  sub_26B079E40();
  v36 = sub_26B079DF0();

  [v41 setReason_];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v41);
  sub_26AF1DA8C();
  v37 = *MEMORY[0x277D4D328];
  MEMORY[0x277D82BE0](*MEMORY[0x277D4D328]);
  v3 = sub_26B079E00();
  v38 = sub_26AF1A4EC(v3, v4);
  v39[95] = v38;
  MEMORY[0x277D82BD8](v37);
  v39[76] = v38;
  MEMORY[0x277D82BE0](v38);
  if (v38)
  {
    v39[77] = v38;
    v31 = sub_26B07A120();
    v39[96] = v31;
    v32 = sub_26B079D00();
    v33 = v6;
    v39[97] = v6;
    MEMORY[0x277D82BE0](v38);
    MEMORY[0x277D82BE0](v41);
    v34 = swift_task_alloc();
    v39[98] = v34;
    *(v34 + 16) = v38;
    *(v34 + 24) = v41;
    v7 = swift_task_alloc();
    v39[99] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBE0);
    *v7 = v39[74];
    v7[1] = sub_26AF135BC;

    return MEMORY[0x2822008A0](v39 + 78, v31, v40, v32, v33, sub_26AF1DDAC, v34, v8);
  }

  else
  {
    sub_26B078550();
    sub_26AF1AC50(v39 + 10, (v39 + 20));
    v18 = swift_allocObject();
    memcpy((v18 + 16), v39 + 10, 0x50uLL);
    oslog = sub_26B078570();
    v30 = sub_26B07A2D0();
    v22 = swift_allocObject();
    *(v22 + 16) = 32;
    v23 = swift_allocObject();
    *(v23 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26AF1DB58;
    *(v19 + 24) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_26AF1DC08;
    *(v20 + 24) = v19;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_26AF1DC54;
    *(v24 + 24) = v20;
    v25 = swift_allocObject();
    *(v25 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_26AF1A544;
    *(v21 + 24) = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_26AF1DD54;
    *(v27 + 24) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v28 = v9;

    *v28 = sub_26AF1DB8C;
    v28[1] = v22;

    v28[2] = sub_26AF1DBC0;
    v28[3] = v23;

    v28[4] = sub_26AF1DCA0;
    v28[5] = v24;

    v28[6] = sub_26AF1DCD8;
    v28[7] = v25;

    v28[8] = sub_26AF1DD0C;
    v28[9] = v26;

    v28[10] = sub_26AF1DDA0;
    v28[11] = v27;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v30))
    {
      buf = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v16 = sub_26AEA3B70(0);
      v17 = sub_26AEA3B70(2);
      v52 = buf;
      v53 = v16;
      v54 = v17;
      sub_26AEA3BC4(2, &v52);
      sub_26AEA3BC4(2, &v52);
      v55 = sub_26AF1DB8C;
      v56 = v22;
      sub_26AEA3BD8(&v55, &v52, &v53, &v54);
      v55 = sub_26AF1DBC0;
      v56 = v23;
      sub_26AEA3BD8(&v55, &v52, &v53, &v54);
      v55 = sub_26AF1DCA0;
      v56 = v24;
      sub_26AEA3BD8(&v55, &v52, &v53, &v54);
      v55 = sub_26AF1DCD8;
      v56 = v25;
      sub_26AEA3BD8(&v55, &v52, &v53, &v54);
      v55 = sub_26AF1DD0C;
      v56 = v26;
      sub_26AEA3BD8(&v55, &v52, &v53, &v54);
      v55 = sub_26AF1DDA0;
      v56 = v27;
      sub_26AEA3BD8(&v55, &v52, &v53, &v54);
      _os_log_impl(&dword_26AE88000, oslog, v30, "%s.%s: Failed to create Apple Account Authentication Controller", buf, 0x16u);
      sub_26AEA3C24(v16);
      sub_26AEA3C24(v17);
      sub_26B07A400();
    }

    v13 = v39[85];
    v14 = v39[83];
    v12 = v39[84];
    v10 = MEMORY[0x277D82BD8](oslog);
    (*(v12 + 8))(v13, v14, v10);
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v41);

    v11 = *(v39[74] + 8);

    return v11();
  }
}

uint64_t sub_26AF135BC()
{
  v9 = *v1;
  v8 = (*v1 + 16);
  *(v9 + 592) = *v1;
  *(v9 + 800) = v0;

  if (v0)
  {
    v2 = v8[91];
    v3 = v8[90];
    v4 = sub_26AF155FC;
  }

  else
  {
    v6 = v8[93];
    v7 = v8[92];

    swift_unknownObjectRelease();
    v2 = v8[91];
    v3 = v8[90];
    v4 = sub_26AF13790;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AF13790()
{
  v74 = v0;
  v0[74] = v0;
  v63 = v0[78];
  v0[101] = v63;
  v0[79] = v63;
  sub_26B078640();
  if (v63)
  {
    *(v62 + 640) = v63;
    v60 = *MEMORY[0x277CEFF78];
    MEMORY[0x277D82BE0](*MEMORY[0x277CEFF78]);
    *(v62 + 544) = sub_26B079E00();
    *(v62 + 552) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBE8);
    sub_26B079CC0();
    sub_26AE9BCC0();
    v61 = *(v62 + 648);
    if (v61)
    {
      *(v62 + 656) = v61;
      if (swift_dynamicCast())
      {
        v58 = *(v62 + 576);
        v59 = *(v62 + 584);
      }

      else
      {
        v58 = 0;
        v59 = 0;
      }

      MEMORY[0x277D82BD8](v60);
      v56 = v58;
      v57 = v59;
    }

    else
    {
      MEMORY[0x277D82BD8](v60);
      v56 = 0;
      v57 = 0;
    }

    *(v62 + 816) = v57;
    if (v57)
    {
      *(v62 + 560) = v56;
      *(v62 + 568) = v57;
      v55 = [objc_opt_self() sharedManager];
      *(v62 + 824) = v55;
      if (!v55)
      {
        return sub_26B07A650();
      }

      sub_26B078640();
      v54 = sub_26B079DF0();
      *(v62 + 832) = v54;

      *(v62 + 16) = *(v62 + 592);
      *(v62 + 56) = v52;
      *(v62 + 24) = sub_26AF15018;
      v53 = swift_continuation_init();
      *(v62 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBF0);
      *(v62 + 512) = v53;
      *(v62 + 480) = MEMORY[0x277D85DD0];
      *(v62 + 488) = 1107296256;
      *(v62 + 492) = 0;
      *(v62 + 496) = sub_26AF1AA90;
      *(v62 + 504) = &block_descriptor_0;
      [v55 saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:v54 completion:?];

      return MEMORY[0x282200938](v62 + 16);
    }

    sub_26B078550();
    sub_26AF1AC50((v62 + 80), v62 + 320);
    v39 = swift_allocObject();
    memcpy((v39 + 16), (v62 + 80), 0x50uLL);
    oslog = sub_26B078570();
    v51 = sub_26B07A2D0();
    v43 = swift_allocObject();
    *(v43 + 16) = 32;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_26AF1E0DC;
    *(v40 + 24) = v39;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_26AF1E18C;
    *(v41 + 24) = v40;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_26AF1E1D8;
    *(v45 + 24) = v41;
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_26AF1AA60;
    *(v42 + 24) = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_26AF1E2D8;
    *(v48 + 24) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v49 = v2;

    *v49 = sub_26AF1E110;
    v49[1] = v43;

    v49[2] = sub_26AF1E144;
    v49[3] = v44;

    v49[4] = sub_26AF1E224;
    v49[5] = v45;

    v49[6] = sub_26AF1E25C;
    v49[7] = v46;

    v49[8] = sub_26AF1E290;
    v49[9] = v47;

    v49[10] = sub_26AF1E324;
    v49[11] = v48;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v51))
    {
      v3 = *(v62 + 800);
      buf = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v37 = sub_26AEA3B70(0);
      v38 = sub_26AEA3B70(2);
      v69 = buf;
      v70 = v37;
      v71 = v38;
      sub_26AEA3BC4(2, &v69);
      sub_26AEA3BC4(2, &v69);
      v72 = sub_26AF1E110;
      v73 = v43;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      if (v3)
      {
      }

      v72 = sub_26AF1E144;
      v73 = v44;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AF1E224;
      v73 = v45;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AF1E25C;
      v73 = v46;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AF1E290;
      v73 = v47;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AF1E324;
      v73 = v48;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      _os_log_impl(&dword_26AE88000, oslog, v51, "%s.%s: Failed to retrieve Apple Account DSID", buf, 0x16u);
      sub_26AEA3C24(v37);
      sub_26AEA3C24(v38);
      sub_26B07A400();
    }

    else
    {
    }

    v34 = *(v62 + 760);
    v35 = *(v62 + 752);
    v32 = *(v62 + 696);
    v33 = *(v62 + 664);
    v31 = *(v62 + 672);
    v4 = MEMORY[0x277D82BD8](oslog);
    (*(v31 + 8))(v32, v33, v4);

    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
  }

  else
  {
    sub_26B078550();
    sub_26AF1AC50((v62 + 80), v62 + 240);
    v18 = swift_allocObject();
    memcpy((v18 + 16), (v62 + 80), 0x50uLL);
    log = sub_26B078570();
    v30 = sub_26B07A2D0();
    v22 = swift_allocObject();
    *(v22 + 16) = 32;
    v23 = swift_allocObject();
    *(v23 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26AF1DE20;
    *(v19 + 24) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_26AF1DED0;
    *(v20 + 24) = v19;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_26AF1DF1C;
    *(v24 + 24) = v20;
    v25 = swift_allocObject();
    *(v25 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_26AF1AA20;
    *(v21 + 24) = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_26AF1E01C;
    *(v27 + 24) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v28 = v5;

    *v28 = sub_26AF1DE54;
    v28[1] = v22;

    v28[2] = sub_26AF1DE88;
    v28[3] = v23;

    v28[4] = sub_26AF1DF68;
    v28[5] = v24;

    v28[6] = sub_26AF1DFA0;
    v28[7] = v25;

    v28[8] = sub_26AF1DFD4;
    v28[9] = v26;

    v28[10] = sub_26AF1E068;
    v28[11] = v27;
    sub_26AEA3B2C();

    if (os_log_type_enabled(log, v30))
    {
      v6 = *(v62 + 800);
      v15 = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v16 = sub_26AEA3B70(0);
      v17 = sub_26AEA3B70(2);
      v64 = v15;
      v65 = v16;
      v66 = v17;
      sub_26AEA3BC4(2, &v64);
      sub_26AEA3BC4(2, &v64);
      v67 = sub_26AF1DE54;
      v68 = v22;
      sub_26AEA3BD8(&v67, &v64, &v65, &v66);
      if (v6)
      {
      }

      v67 = sub_26AF1DE88;
      v68 = v23;
      sub_26AEA3BD8(&v67, &v64, &v65, &v66);
      v67 = sub_26AF1DF68;
      v68 = v24;
      sub_26AEA3BD8(&v67, &v64, &v65, &v66);
      v67 = sub_26AF1DFA0;
      v68 = v25;
      sub_26AEA3BD8(&v67, &v64, &v65, &v66);
      v67 = sub_26AF1DFD4;
      v68 = v26;
      sub_26AEA3BD8(&v67, &v64, &v65, &v66);
      v67 = sub_26AF1E068;
      v68 = v27;
      sub_26AEA3BD8(&v67, &v64, &v65, &v66);
      _os_log_impl(&dword_26AE88000, log, v30, "%s.%s: Failed to authenticate Apple Account", v15, 0x16u);
      sub_26AEA3C24(v16);
      sub_26AEA3C24(v17);
      sub_26B07A400();
    }

    else
    {
    }

    v13 = *(v62 + 760);
    v14 = *(v62 + 752);
    v11 = *(v62 + 688);
    v12 = *(v62 + 664);
    v10 = *(v62 + 672);
    v7 = MEMORY[0x277D82BD8](log);
    (*(v10 + 8))(v11, v12, v7);

    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  v8 = *(*(v62 + 592) + 8);

  return v8();
}

uint64_t sub_26AF15018()
{
  v7 = *v0;
  v8 = *v0;
  v6 = *v0 + 16;
  *(v8 + 592) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 840) = v1;
  if (v1)
  {
    v2 = *(v6 + 728);
    v3 = *(v6 + 720);
    v4 = sub_26AF157A0;
  }

  else
  {
    v2 = *(v6 + 728);
    v3 = *(v6 + 720);
    v4 = sub_26AF1519C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AF1519C()
{
  v4 = v0[104];
  v1 = v0[103];
  v0[74] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  memcpy(v0 + 50, v0 + 10, 0x50uLL);
  v0[106] = sub_26AF09FB0();
  v2 = swift_task_alloc();
  *(v5 + 856) = v2;
  *v2 = *(v5 + 592);
  v2[1] = sub_26AF152BC;

  return ReactiveUIManager.refreshBetaUpdates()();
}

uint64_t sub_26AF152BC(uint64_t a1)
{
  v8 = *v2;
  v7 = *v2 + 16;
  v8[74] = *v2;
  v8[108] = a1;
  v8[109] = v1;

  if (v1)
  {
    v3 = *(v7 + 728);
    v4 = *(v7 + 720);
    v5 = sub_26AF15970;
  }

  else
  {

    v3 = *(v7 + 728);
    v4 = *(v7 + 720);
    v5 = sub_26AF1545C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AF1545C()
{
  v1 = v0[108];
  v4 = v0[95];
  v5 = v0[94];
  v0[74] = v0;
  MEMORY[0x277D82BD8](v1);

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  v2 = *(v0[74] + 8);

  return v2();
}

uint64_t sub_26AF155FC()
{
  v3 = v0[95];
  v4 = v0[94];
  v0[74] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[74] + 8);

  return v1();
}

uint64_t sub_26AF157A0()
{
  v4 = v0[104];
  v3 = v0[103];
  v5 = v0[95];
  v6 = v0[94];
  v0[74] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[74] + 8);

  return v1();
}

uint64_t sub_26AF15970()
{
  v3 = v0[95];
  v4 = v0[94];
  v0[74] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[74] + 8);

  return v1();
}

uint64_t sub_26AF15B10(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v40 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v41 = a6;
  v42 = "Fatal error";
  v43 = "Unexpectedly found nil while unwrapping an Optional value";
  v44 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v45 = 0;
  v58 = a6;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v50 = &v9 - v46;

  v56 = v48;
  v57 = v49;
  sub_26AED6580(v47, v50);
  v51 = sub_26B07A160();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  if ((*(v52 + 48))(v50, 1) == 1)
  {
    sub_26AEA08A4(v50);
    v38 = 0;
  }

  else
  {
    v37 = sub_26B07A150();
    (*(v52 + 8))(v50, v51);
    v38 = v37;
  }

  v34 = v38 | 0x1C00;
  v36 = *(v49 + 16);
  v35 = *(v49 + 24);
  swift_unknownObjectRetain();

  if (v36)
  {
    v32 = v36;
    v33 = v35;
    v26 = v35;
    v27 = v36;
    swift_getObjectType();
    v28 = sub_26B07A0C0();
    v29 = v6;
    swift_unknownObjectRelease();
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v24 = v31;
  v25 = v30;
  sub_26B078640();
  if (v40)
  {
    v22 = v39;
    v23 = v40;
    v7 = v45;
    v19 = v40;
    v20 = sub_26B079EA0();

    sub_26AF1D334(v20 + 32, &v54);
    if (v7)
    {
      __break(1u);
    }

    v18 = v54;

    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v17 = v21;
  if (v21)
  {
    v12 = v17;
    v11 = v17;
    sub_26AEA08A4(v47);

    v13 = v11;
  }

  else
  {

    sub_26AEA08A4(v47);
    v14 = v56;
    v15 = v57;

    v16 = 0;
    if (v25 != 0 || v24 != 0)
    {
      v55[0] = 0;
      v55[1] = 0;
      v55[2] = v25;
      v55[3] = v24;
      v16 = v55;
    }

    v13 = swift_task_create();
  }

  v10 = v13;

  return v10;
}

uint64_t sub_26AF16078@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00();
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

_OWORD *sub_26AF1624C(uint64_t *a1)
{
  v27 = a1;
  v34 = 0;
  v44 = 0;
  v26 = 0;
  v28 = sub_26B078580();
  v29 = *(v28 - 8);
  v30 = v29;
  MEMORY[0x28223BE20](v27);
  v31 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v2;
  sub_26B078550();
  v36 = sub_26B078570();
  v32 = v36;
  v35 = sub_26B07A2A0();
  v33 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v37 = sub_26B07A760();
  if (os_log_type_enabled(v36, v35))
  {
    v3 = v26;
    v17 = sub_26B07A420();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v15 = 0;
    v18 = sub_26AEA3B70(0);
    v16 = v18;
    v19 = sub_26AEA3B70(v15);
    v41 = v17;
    v40 = v18;
    v39 = v19;
    v20 = 0;
    v21 = &v41;
    sub_26AEA3BC4(0, &v41);
    sub_26AEA3BC4(v20, v21);
    v38 = v37;
    v22 = &v9;
    MEMORY[0x28223BE20](&v9);
    v23 = &v9 - 6;
    *(&v9 - 4) = v4;
    *(&v9 - 3) = &v40;
    *(&v9 - 2) = &v39;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v25 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v32, v33, "User Action: Clicked 'Cancel' in Apple Account alert in BetaUpdatesView", v13, 2u);
      v11 = 0;
      sub_26AEA3C24(v16);
      sub_26AEA3C24(v19);
      sub_26B07A400();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v30 + 8))(v31, v28);
  sub_26AF1AC50(v27, v43);
  v42[0] = *v27;
  v5 = *(v27 + 1);
  v6 = *(v27 + 2);
  v7 = *(v27 + 3);
  v42[4] = *(v27 + 4);
  v42[3] = v7;
  v42[2] = v6;
  v42[1] = v5;
  v10 = v42;
  sub_26AF0A77C();
  result = v10;
  sub_26AF07270();
  return result;
}

uint64_t sub_26AF166DC@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00();
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t *sub_26AF168AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = &v120;
  v82 = a2;
  v84 = a1;
  v153 = 0;
  memset(__b, 0, 0x21uLL);
  v149 = 0u;
  v150 = 0u;
  v137 = 0u;
  v138 = 0u;
  v122 = 0;
  v123 = 0;
  v120 = 0u;
  v121 = 0u;
  v107 = 0u;
  v108 = 0u;
  v85 = sub_26B078E00();
  v86 = *(v85 - 8);
  v87 = v85 - 8;
  v88 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85);
  v89 = &v21 - v88;
  v90 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v21 - v88);
  v91 = &v21 - v90;
  v92 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v21 - v90);
  v93 = &v21 - v92;
  v153 = v4;
  memcpy(__dst, v4, sizeof(__dst));
  v94 = sub_26AF17170();
  v95 = v5;
  if (v5)
  {
    v80 = v94;
    v81 = v95;
    v45 = v95;
    v24 = v94;
    v122 = v94;
    v123 = v95;
    sub_26B078DF0();
    v42 = 1;
    sub_26B079D00();
    v23 = v12;
    sub_26B078DE0();

    sub_26B078DD0();
    sub_26B079D00();
    v25 = v13;
    sub_26B078DE0();

    (*(v86 + 16))(v91, v93, v85);
    (*(v86 + 32))(v89, v91, v85);
    (*(v86 + 8))(v93, v85);
    v30 = sub_26B078E20();
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v29 = *sub_26B02D0D0();
    MEMORY[0x277D82BE0](v29);
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v119 = v42 & 1;
    v112 = sub_26B0792C0();
    v113 = v17;
    v114 = v18;
    v115 = v19;
    v31 = v109;
    v109[0] = v112;
    v109[1] = v17;
    v110 = v18 & 1 & v42;
    v111 = v19;
    v44 = &v120;
    v39 = MEMORY[0x277CE0BD8];
    v40 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v109, MEMORY[0x277CE0BD8], &v120);
    sub_26AE95B40(v31);
    v32 = v120;
    v33 = v121;
    v34 = *(&v121 + 1);
    sub_26AE95D28(v120, *(&v120 + 1), v121 & 1);
    sub_26B078640();
    v35 = &v104;
    v104 = v32;
    v105 = v33 & 1 & v42;
    v106 = v34;
    v43 = &v107;
    sub_26AE94B4C(&v104, v39, &v107);
    sub_26AE95B40(v35);
    v36 = v107;
    v37 = v108;
    v38 = *(&v108 + 1);
    sub_26AE95D28(v107, *(&v107 + 1), v108 & 1);
    sub_26B078640();
    v41 = &v96;
    v96 = v36;
    v97 = v37 & 1 & v42;
    v98 = v38;
    sub_26AE94BB0(&v96, v39, v39, v40, v40, &v99);
    sub_26AE95B40(v41);
    v47 = v99;
    v48 = v100;
    v49 = v101;
    v50 = v102;
    v46 = v103;
    sub_26AEB4364(v99, v100, v101);
    __b[0] = v47;
    __b[1] = v48;
    __b[2] = v49;
    __b[3] = v50;
    LOBYTE(__b[4]) = v46 & 1 & v42;
    sub_26AE95B40(v43);
    sub_26AE95B40(v44);

    v75 = v47;
    v76 = v48;
    v77 = v49;
    v78 = v50;
    v79 = v46;
  }

  else
  {
    *&v67[1] = 1;
    sub_26B079D00();
    v55 = sub_26B078E10();
    v51 = v6;
    v52 = v7;
    v53 = v8;
    v54 = *sub_26B02D0D0();
    MEMORY[0x277D82BE0](v54);
    v146 = 0;
    v147 = 0;
    v148 = *v67 & 0x100;
    v142 = sub_26B0792C0();
    v143 = v9;
    v144 = v10;
    v145 = v11;
    v56 = v139;
    v139[0] = v142;
    v139[1] = v9;
    v140 = v10 & 1 & v67[1];
    v141 = v11;
    v69 = &v149;
    v64 = MEMORY[0x277CE0BD8];
    v65 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v139, MEMORY[0x277CE0BD8], &v149);
    sub_26AE95B40(v56);
    v57 = v149;
    v58 = v150;
    v59 = *(&v150 + 1);
    sub_26AE95D28(v149, *(&v149 + 1), v150 & 1);
    sub_26B078640();
    v60 = &v134;
    v134 = v57;
    v135 = v58 & 1 & v67[1];
    v136 = v59;
    v68 = &v137;
    sub_26AE94B4C(&v134, v64, &v137);
    sub_26AE95B40(v60);
    v61 = v137;
    v62 = v138;
    v63 = *(&v138 + 1);
    sub_26AE95D28(v137, *(&v137 + 1), v138 & 1);
    sub_26B078640();
    v66 = &v126;
    v126 = v61;
    v127 = v62 & 1 & v67[1];
    v128 = v63;
    sub_26AE94CA8(&v126, v64, v64, v65, v65, &v129);
    sub_26AE95B40(v66);
    v71 = v129;
    v72 = v130;
    v73 = v131;
    v74 = v132;
    v70 = v133;
    sub_26AEB4364(v129, v130, v131);
    __b[0] = v71;
    __b[1] = v72;
    __b[2] = v73;
    __b[3] = v74;
    LOBYTE(__b[4]) = v70 & 1 & v67[1];
    sub_26AE95B40(v68);
    sub_26AE95B40(v69);
    v75 = v71;
    v76 = v72;
    v77 = v73;
    v78 = v74;
    v79 = v70;
  }

  v22 = v124;
  v124[0] = v75;
  v124[1] = v76;
  v124[2] = v77;
  v124[3] = v78;
  v125 = v79 & 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
  sub_26AEB349C();
  sub_26AE94B4C(v22, v21, v82);
  sub_26AEB450C(v22);
  return sub_26AEB450C(__b);
}

uint64_t sub_26AF17170()
{
  memset(__b, 0, sizeof(__b));
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  __b[0] = *v0;
  LOBYTE(__b[1]) = v1 & 1;
  __b[2] = v2;
  LOBYTE(__b[3]) = v3 & 1;
  LOBYTE(__b[4]) = v4;
  __b[5] = v5;
  __b[6] = v6;
  __b[7] = v7;
  LOBYTE(__b[8]) = v8;
  __b[9] = v9;
  v18 = [objc_opt_self() sharedManager];
  if (v18)
  {
    v17 = v18;
  }

  else
  {
    LOBYTE(v11) = 2;
    v12 = 230;
    LODWORD(v13) = 0;
    sub_26B07A650();
    __break(1u);
  }

  v16 = [v17 seedingAppleIDUsernameForCurrentDevice];
  MEMORY[0x277D82BD8](v17);
  if (!v16)
  {
    return 0;
  }

  v14 = sub_26B079E00();
  MEMORY[0x277D82BD8](v16);
  return v14;
}

uint64_t sub_26AF17354@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x52uLL);
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v13, __dst, sizeof(v13));
  sub_26AF1AC50(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC18);
  sub_26AF1F9B8();
  sub_26B005488();
  sub_26B079940();
  sub_26AF07270();
  memcpy(v14, v10, sizeof(v14));
  memcpy(v8, v14, 0x52uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAD8);
  sub_26AF1B804();
  sub_26AE9463C(v8, v5, __b);
  sub_26AF1FA40(v8);
  memcpy(v15, __b, 0x52uLL);
  sub_26AF1FB00(v15, v7);
  memcpy(v6, v15, 0x52uLL);
  sub_26AE94B4C(v6, v5, a2);
  sub_26AF1FA40(v6);
  return sub_26AF1FA40(__b);
}

uint64_t *sub_26AF1751C@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x22uLL);
  v126 = 0u;
  v127 = 0u;
  v114 = 0u;
  v115 = 0u;
  v96 = 0u;
  v97 = 0u;
  v84 = 0u;
  v85 = 0u;
  v146[3] = a1;
  sub_26B079D00();
  v145[3] = sub_26B079830();
  v2 = [objc_opt_self() systemYellowColor];
  sub_26B079750();
  sub_26B0794D0();

  sub_26AF1FC54();
  v145[0] = v145[4];
  v145[1] = v145[5];
  v145[2] = v145[6];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC28);
  v65 = sub_26AF1FC80();
  sub_26AE9463C(v145, v64, v146);
  sub_26AF1FD24();
  memcpy(__dst, a1, sizeof(__dst));
  sub_26AF09FB0();
  ReactiveUIManager.betaUpdatesRestrictions.getter(&v142);
  v67 = v142;

  if (v67 == 1)
  {
    HIBYTE(v50) = 1;
    sub_26B079D00();
    sub_26B078E10();
    v3 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v3);
    v93 = 0;
    v94 = 0;
    v95 = v50 & 0x100;
    v89 = sub_26B0792C0();
    v90 = v4;
    v91 = v5;
    v92 = v6;
    v86[0] = v89;
    v86[1] = v4;
    v87 = v5 & 1;
    v88 = v6;
    v47 = MEMORY[0x277CE0BD8];
    v48 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v86, MEMORY[0x277CE0BD8], &v96);
    sub_26AE95B40(v86);
    v41 = v96;
    v42 = v97;
    v43 = *(&v97 + 1);
    sub_26AE95D28(v96, *(&v96 + 1), v97 & 1);
    sub_26B078640();
    v81 = v41;
    v82 = v42 & 1;
    v83 = v43;
    sub_26AE94B4C(&v81, v47, &v84);
    sub_26AE95B40(&v81);
    v44 = v84;
    v45 = v85;
    v46 = *(&v85 + 1);
    sub_26AE95D28(v84, *(&v84 + 1), v85 & 1);
    sub_26B078640();
    v70 = v44;
    v71 = v45 & 1;
    v72 = v46;
    sub_26AE94BB0(&v70, v47, v47, v48, v48, v73);
    sub_26AE95B40(&v70);
    v68[0] = v73[0];
    v68[1] = v73[1];
    v68[2] = v73[2];
    v68[3] = v73[3];
    v69 = v74 & 1;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
    v7 = sub_26AEB349C();
    sub_26AE94BB0(v68, v49, MEMORY[0x277CE1428], v7, MEMORY[0x277CE1410], &v75);
    sub_26AEB450C(v68);
    v52 = v75;
    v53 = v76;
    v54 = v77;
    v55 = v78;
    v56 = v79;
    v51 = v80;
    sub_26AF1FBFC(v75, v76, v77, v78, v79, v80 & 1);
    __b[0] = v52;
    __b[1] = v53;
    __b[2] = v54;
    __b[3] = v55;
    LOBYTE(__b[4]) = v56;
    BYTE1(__b[4]) = v51 & 1;
    sub_26AE95B40(&v84);
    sub_26AE95B40(&v96);
    v57 = v52;
    v58 = v53;
    v59 = v54;
    v60 = v55;
    v61 = v56;
    v62 = v51;
  }

  else if (v67 == 2)
  {
    HIBYTE(v34) = 1;
    sub_26B079D00();
    sub_26B078E10();
    v8 = sub_26B02D0D0();
    MEMORY[0x277D82BE0](*v8);
    v123 = 0;
    v124 = 0;
    v125 = v34 & 0x100;
    v119 = sub_26B0792C0();
    v120 = v9;
    v121 = v10;
    v122 = v11;
    v116[0] = v119;
    v116[1] = v9;
    v117 = v10 & 1;
    v118 = v11;
    v31 = MEMORY[0x277CE0BD8];
    v32 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v116, MEMORY[0x277CE0BD8], &v126);
    sub_26AE95B40(v116);
    v25 = v126;
    v26 = v127;
    v27 = *(&v127 + 1);
    sub_26AE95D28(v126, *(&v126 + 1), v127 & 1);
    sub_26B078640();
    v111 = v25;
    v112 = v26 & 1;
    v113 = v27;
    sub_26AE94B4C(&v111, v31, &v114);
    sub_26AE95B40(&v111);
    v28 = v114;
    v29 = v115;
    v30 = *(&v115 + 1);
    sub_26AE95D28(v114, *(&v114 + 1), v115 & 1);
    sub_26B078640();
    v100 = v28;
    v101 = v29 & 1;
    v102 = v30;
    sub_26AE94CA8(&v100, v31, v31, v32, v32, v103);
    sub_26AE95B40(&v100);
    v98[0] = v103[0];
    v98[1] = v103[1];
    v98[2] = v103[2];
    v98[3] = v103[3];
    v99 = v104 & 1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
    v12 = sub_26AEB349C();
    sub_26AE94BB0(v98, v33, MEMORY[0x277CE1428], v12, MEMORY[0x277CE1410], &v105);
    sub_26AEB450C(v98);
    v36 = v105;
    v37 = v106;
    v38 = v107;
    v39 = v108;
    v40 = v109;
    v35 = v110;
    sub_26AF1FBFC(v105, v106, v107, v108, v109, v110 & 1);
    __b[0] = v36;
    __b[1] = v37;
    __b[2] = v38;
    __b[3] = v39;
    LOBYTE(__b[4]) = v40;
    BYTE1(__b[4]) = v35 & 1;
    sub_26AE95B40(&v114);
    sub_26AE95B40(&v126);
    v57 = v36;
    v58 = v37;
    v59 = v38;
    v60 = v39;
    v61 = v40;
    v62 = v35;
  }

  else
  {
    sub_26B079B90();
    v16 = MEMORY[0x277CE1428];
    v17 = MEMORY[0x277CE1410];
    sub_26AE9463C(v18, MEMORY[0x277CE1428], v18);
    sub_26AE94B4C(v18, v16, v18);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
    v13 = sub_26AEB349C();
    sub_26AE94CA8(v18, v15, v16, v13, v17, &v136);
    v20 = v136;
    v21 = v137;
    v22 = v138;
    v23 = v139;
    v24 = v140;
    v19 = v141;
    sub_26AF1FBFC(v136, v137, v138, v139, v140, v141 & 1);
    __b[0] = v20;
    __b[1] = v21;
    __b[2] = v22;
    __b[3] = v23;
    LOBYTE(__b[4]) = v24;
    BYTE1(__b[4]) = v19 & 1;
    v57 = v20;
    v58 = v21;
    v59 = v22;
    v60 = v23;
    v61 = v24;
    v62 = v19;
  }

  sub_26AF1FD68(v146, v134);
  v135[0] = v134;
  v131[0] = v57;
  v131[1] = v58;
  v131[2] = v59;
  v131[3] = v60;
  v132 = v61;
  v133 = v62 & 1;
  v135[1] = v131;
  v130[0] = v64;
  v130[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC48);
  v128 = v65;
  v129 = sub_26AF1FDDC();
  sub_26AFD49C4(v135, 2uLL, v130, a2);
  sub_26AF1FE80(v131);
  sub_26AF1FD24();
  sub_26AF1FE80(__b);
  result = v146;
  sub_26AF1FD24();
  return result;
}

void *sub_26AF17F9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v13 = 0;
  v18 = a1;
  memcpy(__dst, v2, sizeof(__dst));
  v17 = v2;

  if (a1)
  {
    v13 = a1;
    memcpy(v12, __dst, sizeof(v12));
    v7 = sub_26AF0A428();
    swift_getKeyPath();
    ReactiveBetaProgram.subscript.getter();

    if (v7 == v11)
    {
      *a2 = 0;
    }

    else
    {
      memcpy(v10, __dst, sizeof(v10));
      sub_26AF09FB0();
      v6 = ReactiveUIManager.enrolledBetaProgram.getter();
      if (v6 && (, type metadata accessor for ReactiveBetaProgram(), static ReactiveBetaProgram.== infix(_:_:)(v6, a1)))
      {
        *a2 = 1;
      }

      else
      {

        *a2 = 2;
      }
    }
  }

  else
  {
    memcpy(v16, __dst, sizeof(v16));
    result = sub_26AF0A428();
    if (result)
    {
      memcpy(v15, __dst, sizeof(v15));
      sub_26AF09FB0();
      v5 = ReactiveUIManager.enrolledBetaProgram.getter();

      v14 = v5;
      result = &v14;
      sub_26AF1E370();
      if (v5)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      *a2 = v4;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_26AF18234(uint64_t *a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v16 = &unk_26B08B498;
  v22 = 0;
  v21 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v18 = &v12 - v12;
  v22 = v2;
  v21 = v3;
  sub_26B07A140();
  v15 = 0;
  v4 = sub_26B07A160();
  (*(*(v4 - 8) + 56))(v18, 0, 1);
  sub_26AF1AC50(v13, v20);

  v5 = swift_allocObject();
  v6 = v13;
  v17 = v5;
  v5[2] = 0;
  v5[3] = 0;
  memcpy(v5 + 4, v6, 0x50uLL);
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v17[14] = v14;
  v19 = sub_26AF449A0(v7, v7, v10, v8, v9, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v18);
}

uint64_t sub_26AF183C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a5;
  v5[15] = a4;
  v5[12] = v5;
  v5[13] = 0;
  v5[14] = 0;
  v5[13] = a4;
  v5[14] = a5;
  return MEMORY[0x2822009F8](sub_26AF18414, 0, 0);
}

uint64_t sub_26AF18414()
{
  v1 = v0[15];
  v0[12] = v0;
  memcpy(v0 + 2, v1, 0x50uLL);
  v2 = swift_task_alloc();
  v5[17] = v2;
  *v2 = v5[12];
  v2[1] = sub_26AF184D8;
  v3 = v5[16];

  return sub_26AF18618(v3);
}

uint64_t sub_26AF184D8()
{
  v3 = *v0;
  *(v3 + 96) = *v0;

  v1 = *(*(v3 + 96) + 8);

  return v1();
}

uint64_t sub_26AF18618(uint64_t a1)
{
  v1[102] = a1;
  v1[94] = v1;
  v1[95] = 0;
  v1[96] = 0;
  v1[97] = 0;
  v1[99] = 0;
  v2 = sub_26B078580();
  v1[103] = v2;
  v1[104] = *(v2 - 8);
  v1[105] = swift_task_alloc();
  v1[95] = a1;
  memcpy(v1 + 2, __src, 0x50uLL);
  sub_26B07A130();
  v1[106] = sub_26B07A120();
  v7 = sub_26B07A0C0();
  v1[107] = v7;
  v1[108] = v3;

  return MEMORY[0x2822009F8](sub_26AF18784, v7, v3);
}

uint64_t sub_26AF18784()
{
  v19 = v0;
  v1 = *(v0 + 816);
  *(v0 + 752) = v0;
  if (v1)
  {
    sub_26AF1AC50(v14 + 2, (v14 + 12));
    sub_26AF07270();
    goto LABEL_6;
  }

  sub_26AF1AC50(v14 + 2, (v14 + 12));
  memcpy(v18, v14 + 2, sizeof(v18));
  sub_26AF09FB0();
  v13 = ReactiveUIManager.enrolledBetaProgram.getter();

  v14[101] = v13;
  if (v14[101])
  {
    sub_26AF1E370();
    sub_26AF07270();
LABEL_6:
    v12 = v14[102];

    if (!v12)
    {
      goto LABEL_21;
    }

    v11 = v14[102];
    v14[99] = v11;

    memcpy(v15, v14 + 2, sizeof(v15));
    sub_26AF09FB0();
    v10 = ReactiveUIManager.enrolledBetaProgram.getter();

    v14[92] = v11;
    v14[93] = v10;
    if (v14[92])
    {
      sub_26AF1E83C(v14 + 92, v14 + 100);
      if (v14[93])
      {
        v16 = v14[100];
        v17 = v14[93];
        type metadata accessor for ReactiveBetaProgram();
        v9 = static ReactiveBetaProgram.== infix(_:_:)(v16, v17);

        sub_26AF1E370();

        if (!v9)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else if (!v14[93])
    {
      sub_26AF1E370();

LABEL_19:

      goto LABEL_31;
    }

    sub_26AF1E804();

LABEL_20:

LABEL_21:
    v8 = v14[102];
    sub_26AF1AC50(v14 + 2, (v14 + 22));
    memcpy(v14 + 32, v14 + 2, 0x50uLL);
    sub_26AF0A1DC();
    sub_26AF07270();
    sub_26AF1AC50(v14 + 2, (v14 + 42));
    memcpy(v14 + 52, v14 + 2, 0x50uLL);

    if (v8)
    {
      swift_getKeyPath();
      ReactiveBetaProgram.subscript.getter();
    }

    v7 = v14[102];
    sub_26AF0A4AC();
    sub_26AF07270();

    if (v7)
    {
      v6 = v14[102];
      v14[96] = v6;
      memcpy(v14 + 72, v14 + 2, 0x50uLL);
      v14[109] = sub_26AF09FB0();
      v2 = swift_task_alloc();
      v14[110] = v2;
      *v2 = v14[94];
      v2[1] = sub_26AF18FA0;

      return ReactiveUIManager.enrollInBetaUpdatesProgram(toProgram:)(v6);
    }

    else
    {
      memcpy(v14 + 62, v14 + 2, 0x50uLL);
      v14[112] = sub_26AF09FB0();
      v4 = swift_task_alloc();
      v14[113] = v4;
      *v4 = v14[94];
      v4[1] = sub_26AF192A4;

      return ReactiveUIManager.unenrollFromBetaUpdates()();
    }
  }

  sub_26AF1E370();
  sub_26AF07270();
LABEL_31:

  v5 = *(v14[94] + 8);

  return v5();
}

uint64_t sub_26AF18FA0()
{
  v7 = *v1;
  v6 = *v1 + 16;
  *(v7 + 752) = *v1;
  *(v7 + 888) = v0;

  if (v0)
  {
    v2 = *(v6 + 848);
    v3 = *(v6 + 840);
    v4 = sub_26AF1955C;
  }

  else
  {

    v2 = *(v6 + 848);
    v3 = *(v6 + 840);
    v4 = sub_26AF19138;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AF19138()
{
  v5 = v0;
  *(v0 + 752) = v0;
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  if (sub_26AF09E3C())
  {
    ReactiveAnalyticsReporter.submitButtonTap(_:)(26);
  }

  sub_26AF1A2DC((v3 + 16));

  v1 = *(*(v3 + 752) + 8);

  return v1();
}

uint64_t sub_26AF192A4()
{
  v4 = *v0;
  *(*v0 + 752) = *v0;

  v1 = *(v4 + 864);
  v2 = *(v4 + 856);

  return MEMORY[0x2822009F8](sub_26AF1940C, v2, v1);
}

uint64_t sub_26AF1940C()
{
  v5 = v0;
  *(v0 + 752) = v0;
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  if (sub_26AF09E3C())
  {
    ReactiveAnalyticsReporter.submitButtonTap(_:)(27);
  }

  sub_26AF1A2DC((v3 + 16));

  v1 = *(*(v3 + 752) + 8);

  return v1();
}

uint64_t sub_26AF1955C()
{
  v38 = v0;
  v13 = v0[111];
  v0[94] = v0;

  sub_26AF1A2DC(v0 + 2);
  MEMORY[0x26D66E1D0](v13);
  v0[97] = v13;
  sub_26B078550();
  sub_26AF1AC50(v0 + 2, (v0 + 82));
  v14 = swift_allocObject();
  memcpy((v14 + 16), v0 + 2, 0x50uLL);
  MEMORY[0x26D66E1D0](v13);
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  sub_26AED0174();

  oslog = sub_26B078570();
  v32 = sub_26B07A2C0();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26AF1E41C;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26AF1E514;
  *(v16 + 24) = v15;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26AF1E560;
  *(v23 + 24) = v16;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26AF1A390;
  *(v17 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AF1E660;
  *(v26 + 24) = v17;
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26AF1E464;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26AF1E760;
  *(v20 + 24) = v19;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26AF1E7AC;
  *(v29 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v30 = v1;

  *v30 = sub_26AF1E498;
  v30[1] = v21;

  v30[2] = sub_26AF1E4CC;
  v30[3] = v22;

  v30[4] = sub_26AF1E5AC;
  v30[5] = v23;

  v30[6] = sub_26AF1E5E4;
  v30[7] = v24;

  v30[8] = sub_26AF1E618;
  v30[9] = v25;

  v30[10] = sub_26AF1E6AC;
  v30[11] = v26;

  v30[12] = sub_26AF1E6E4;
  v30[13] = v27;

  v30[14] = sub_26AF1E718;
  v30[15] = v28;

  v30[16] = sub_26AF1E7F8;
  v30[17] = v29;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v32))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v10 = sub_26AEA3B70(1);
    v11 = sub_26AEA3B70(2);
    v33 = buf;
    v34 = v10;
    v35 = v11;
    sub_26AEA3BC4(2, &v33);
    sub_26AEA3BC4(3, &v33);
    v36 = sub_26AF1E498;
    v37 = v21;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1E4CC;
    v37 = v22;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1E5AC;
    v37 = v23;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1E5E4;
    v37 = v24;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1E618;
    v37 = v25;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1E6AC;
    v37 = v26;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1E6E4;
    v37 = v27;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1E718;
    v37 = v28;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26AF1E7F8;
    v37 = v29;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_26AE88000, oslog, v32, "%s.%s: Failed to enroll/unenroll: %@", buf, 0x20u);
    sub_26AEA3C24(v10);
    sub_26AEA3C24(v11);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v12[111];
  v6 = v12[105];
  v7 = v12[103];
  v5 = v12[104];
  v2 = MEMORY[0x277D82BD8](oslog);
  (*(v5 + 8))(v6, v7, v2);

  v3 = *(v12[94] + 8);

  return v3();
}

_BYTE *sub_26AF1A2DC(uint64_t *a1)
{
  v7 = a1;
  sub_26AF1AC50(a1, v6);
  memcpy(__dst, a1, sizeof(__dst));
  sub_26AF0A4AC();
  sub_26AF07270();
  sub_26AF1AC50(a1, v4);
  memcpy(v3, a1, sizeof(v3));
  sub_26AF0A1DC();
  result = v3;
  sub_26AF07270();
  return result;
}

_BYTE *sub_26AF1A3E8(uint64_t *a1)
{
  v5 = a1;
  sub_26AF1AC50(a1, v4);
  memcpy(__dst, a1, sizeof(__dst));
  sub_26AF0A1DC();
  result = __dst;
  sub_26AF07270();
  return result;
}

double sub_26AF1A574(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a1;
  v19 = a2;
  v21 = a3;
  v17 = sub_26AF1EDE8;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBF8);
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v10 = v12;
  v11 = *(v12 + 64);
  v8 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v15 = &v7 - v8;
  v31 = v3;
  v30 = v4;
  v29 = v5;
  MEMORY[0x277D82BE0](v5);
  (*(v12 + 16))(v15, v9, v16);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v14, v15, v16);
  v27 = v17;
  v28 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = 0;
  v25 = sub_26AF1A8C4;
  v26 = &block_descriptor_266;
  v20 = _Block_copy(&aBlock);

  [v19 authenticateWithContext:v21 completion:v20];
  _Block_release(v20);
  *&result = MEMORY[0x277D82BD8](v21).n128_u64[0];
  return result;
}

void sub_26AF1A7C4(uint64_t a1, void *a2)
{
  MEMORY[0x26D66E1D0]();
  if (a2)
  {
    MEMORY[0x26D66E1D0]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBF8);
    sub_26B07A0D0();
  }

  else
  {
    sub_26B078640();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBF8);
    sub_26B07A0E0();
  }
}

uint64_t sub_26AF1A8C4(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBE8);
    v5 = sub_26B079C70();
    MEMORY[0x277D82BD8](a2);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v8(v6);
}

double sub_26AF1AA90(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a2);
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    MEMORY[0x26D66E1D0]();
    sub_26AFC8798(v6, a2, MEMORY[0x277D84F78] + 8);
  }

  else
  {
    sub_26AFC87FC(v6, v3, MEMORY[0x277D84F78] + 8);
  }

  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_26AF1AC50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_26AF07734();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  *(a2 + 32) = *(a1 + 32);
  v7 = a1[5];

  *(a2 + 40) = v7;
  *(a2 + 48) = a1[6];
  v9 = a1[7];

  *(a2 + 56) = v9;
  *(a2 + 64) = *(a1 + 64);
  v11 = a1[9];

  result = a2;
  *(a2 + 72) = v11;
  return result;
}

uint64_t sub_26AF1AD58()
{
  sub_26AF072D8();

  return swift_deallocObject();
}

unint64_t sub_26AF1ADC8()
{
  v2 = qword_2803DCA18;
  if (!qword_2803DCA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCA10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCA18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1AE50()
{
  v2 = qword_2803DCA28;
  if (!qword_2803DCA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCA20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCA28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1AF30()
{
  v2 = qword_2803DCA38;
  if (!qword_2803DCA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCA30);
    sub_26AF1AE50();
    sub_26AF1AFD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1AFD8()
{
  v2 = qword_2803DCA40;
  if (!qword_2803DCA40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCA40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1B088()
{
  v2 = qword_2803DCA50;
  if (!qword_2803DCA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC9F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC9E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCA30);
    sub_26AF1AF30();
    swift_getOpaqueTypeConformance2();
    sub_26AE95974();
    swift_getOpaqueTypeConformance2();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCA50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF1B1EC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9F0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9F8) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

unint64_t sub_26AF1B2B0()
{
  v2 = qword_2803DCA60;
  if (!qword_2803DCA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCA00);
    sub_26AF1B088();
    sub_26AF1B358();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCA60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1B358()
{
  v2 = qword_2803DCA68;
  if (!qword_2803DCA68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCA68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF1B3D0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9F0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9F8) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA00);
  sub_26AF072D8();
  return a1;
}

unint64_t sub_26AF1B4D0()
{
  v2 = qword_2803DCA80;
  if (!qword_2803DCA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCA78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCA80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1B558()
{
  v2 = qword_2803DCA88;
  if (!qword_2803DCA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCA70);
    sub_26AF1B4D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCA88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1B608()
{
  v2 = qword_2803DCAB8;
  if (!qword_2803DCAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCAA0);
    sub_26AF1B6B0();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCAB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1B6B0()
{
  v2 = qword_2803DCAC0;
  if (!qword_2803DCAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCA98);
    sub_26AF1B758();
    sub_26AF1B88C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCAC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1B758()
{
  v2 = qword_2803DCAC8;
  if (!qword_2803DCAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCA90);
    sub_26AF1B804();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCAC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1B804()
{
  v2 = qword_2803DCAD0;
  if (!qword_2803DCAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCAD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCAD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1B88C()
{
  v2 = qword_2803DCAE0;
  if (!qword_2803DCAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE650);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCAE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF1B914(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAA0);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA90);
    (*(*(v1 - 8) + 8))(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA98);

    v4 = a1 + *(v6 + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

char *sub_26AF1BA58(char *a1, char *a2)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAA0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAA8);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA90);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA98);
    *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
    v8 = &a2[*(v11 + 36)];
    v7 = &a1[*(v11 + 36)];
    v4 = sub_26B079100();
    (*(*(v4 - 8) + 32))(v8, v7);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  return a2;
}

char *sub_26AF1BC24(char *a1, char *a2)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAA0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAA8);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA90);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA98);
    v9 = &a2[*(v3 + 36)];
    v8 = &a1[*(v3 + 36)];
    v7 = *v8;

    *v9 = v7;
    v10 = *(v8 + 1);

    *(v9 + 1) = v10;
    v12 = &a2[*(v15 + 36)];
    v11 = &a1[*(v15 + 36)];
    v4 = sub_26B079100();
    (*(*(v4 - 8) + 16))(v12, v11);
    (*(v16 + 56))(a2, 0, 1, v15);
  }

  return a2;
}

unint64_t sub_26AF1BE34()
{
  v2 = qword_2803DCAF0;
  if (!qword_2803DCAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCAA8);
    sub_26AF1B608();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCAF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF1BED4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA90);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA98);

  return a1;
}

uint64_t sub_26AF1BF78(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA90);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA98);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAA0) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_26AF1C078(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA90);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCA98) + 36);
  v6 = *(a1 + v5);

  *(a2 + v5) = v6;
  v7 = *(a1 + v5 + 8);

  *(a2 + v5 + 8) = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCAA0) + 36);
  v3 = sub_26B079100();
  (*(*(v3 - 8) + 16))(a2 + v8, a1 + v8);
  return a2;
}

unint64_t sub_26AF1C1C8()
{
  v2 = qword_2803DCB28;
  if (!qword_2803DCB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCB10);
    sub_26AF1C270();
    sub_26AE9C354();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1C270()
{
  v2 = qword_2803DCB30;
  if (!qword_2803DCB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCB08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCAF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCB40);
    sub_26AF1C3E4();
    sub_26AE95974();
    sub_26AEFDA40();
    sub_26AEB349C();
    swift_getOpaqueTypeConformance2();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1C3E4()
{
  v2 = qword_2803DCB48;
  if (!qword_2803DCB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCAF8);
    sub_26AF1C490();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCB48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1C490()
{
  v2 = qword_2803DCB50;
  if (!qword_2803DCB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCB58);
    sub_26AF1C538();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCB50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1C538()
{
  v2 = qword_2803DCB60;
  if (!qword_2803DCB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCB68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCB60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF1C5C0(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB10);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB00);
    (*(*(v1 - 8) + 8))(a1);
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB08) + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

char *sub_26AF1C704(char *a1, char *a2)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB10);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB18);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB00);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB08);
    v10 = &a2[*(v3 + 36)];
    v9 = &a1[*(v3 + 36)];
    v4 = sub_26B079100();
    (*(*(v4 - 8) + 32))(v10, v9);
    v5 = &a2[*(v13 + 36)];
    v6 = &a1[*(v13 + 36)];
    *v5 = *v6;
    *(v5 + 2) = *(v6 + 2);
    (*(v14 + 56))();
  }

  return a2;
}

char *sub_26AF1C8E0(char *a1, char *a2)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB10);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB18);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB00);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB08);
    v8 = &a2[*(v3 + 36)];
    v7 = &a1[*(v3 + 36)];
    v4 = sub_26B079100();
    (*(*(v4 - 8) + 16))(v8, v7);
    v12 = &a2[*(v16 + 36)];
    v10 = &a1[*(v16 + 36)];
    v9 = *v10;

    *v12 = v9;
    v11 = *(v10 + 1);
    v13 = *(v10 + 2);

    *(v12 + 1) = v11;
    *(v12 + 2) = v13;
    (*(v17 + 56))(a2, 0, 1, v16);
  }

  return a2;
}

unint64_t sub_26AF1CB00()
{
  v2 = qword_2803DCB80;
  if (!qword_2803DCB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCB18);
    sub_26AF1C1C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCB80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF1CBB0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB00);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB08) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_26AF1CC74(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB00);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB08) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB10);

  return a1;
}

uint64_t sub_26AF1CD74(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB00);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB08) + 36);
  v3 = sub_26B079100();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB10) + 36);
  v8 = *(a1 + v7);

  v11 = a2 + v7;
  *(a2 + v7) = v8;
  v10 = *(a1 + v7 + 8);
  v12 = *(a1 + v7 + 16);

  result = a2;
  *(v11 + 8) = v10;
  *(v11 + 16) = v12;
  return result;
}

uint64_t sub_26AF1CED4()
{
  sub_26AF072D8();

  return swift_deallocObject();
}

unint64_t sub_26AF1CF50()
{
  v2 = qword_2803DCB88;
  if (!qword_2803DCB88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCB88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF1D000()
{
  v2 = qword_2803DCB98;
  if (!qword_2803DCB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCB90);
    sub_26AF1CF50();
    sub_26AE9C354();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCB98);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_26AF1D0A8()
{
}

unint64_t sub_26AF1D120()
{
  v2 = qword_2803DCBA8;
  if (!qword_2803DCBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCBA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCBA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF1D1A8()
{
  sub_26AF072D8();

  return swift_deallocObject();
}

uint64_t sub_26AF1D258()
{
  result = *(v0 + 16);
  sub_26AF1A494();
  return result;
}

id sub_26AF1D284(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = sub_26B079DF0();

    v2 = [v7 initWithIdentifier_];
  }

  else
  {
    v2 = [v7 initWithIdentifier_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

uint64_t sub_26AF1D334@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    sub_26B07A650();
    __break(1u);
  }

  result = swift_task_create();
  *a2 = result;
  return result;
}

uint64_t sub_26AF1D83C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_26AEB42EC(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  sub_26AE95D28(a1, a2, a3 & 1);
  return sub_26B078640();
}

unint64_t sub_26AF1D8BC()
{
  v2 = qword_2803DCBC8;
  if (!qword_2803DCBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCBC0);
    sub_26AEB33F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCBC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF1D9A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_26AEB4420(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  sub_26AE95AFC(a1, a2, a3 & 1);
}

unint64_t sub_26AF1DA28()
{
  v2 = qword_2803DCBD0;
  if (!qword_2803DCBD0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DCBD0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26AF1DA8C()
{
  v2 = qword_2803DCBD8;
  if (!qword_2803DCBD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DCBD8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26AF1DAF0()
{
  sub_26AF072D8();

  return swift_deallocObject();
}

uint64_t sub_26AF1DDB8()
{
  sub_26AF072D8();

  return swift_deallocObject();
}

uint64_t sub_26AF1E074()
{
  sub_26AF072D8();

  return swift_deallocObject();
}

uint64_t sub_26AF1E3B4()
{
  sub_26AF072D8();

  return swift_deallocObject();
}

uint64_t sub_26AF1E464()
{
  result = *(v0 + 16);
  sub_26AF1A3C0();
  return result;
}

void *sub_26AF1E83C(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_26AF1E8E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 40)))
      {
        v4 = *(a1 + 40);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26AF1EA14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_26AF1EC28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCA00);
  sub_26AF1B2B0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26AF1ED10()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBF8) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

void sub_26AF1EDE8(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCBF8);

  sub_26AF1A7C4(a1, a2);
}

uint64_t block_copy_helper_264(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_26AF1EED8()
{
  swift_unknownObjectRelease();
  sub_26AF072D8();

  return swift_deallocObject();
}

uint64_t sub_26AF1EF50(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[14];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF1F02C;

  return sub_26AF183C8(a1, v6, v7, (v1 + 4), v8);
}

uint64_t sub_26AF1F02C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF1F154()
{
  sub_26AF072D8();

  return swift_deallocObject();
}

uint64_t sub_26AF1F1C4()
{
  sub_26AF072D8();

  return swift_deallocObject();
}

uint64_t sub_26AF1F264()
{
  swift_unknownObjectRelease();
  sub_26AF072D8();

  return swift_deallocObject();
}

uint64_t sub_26AF1F2D4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF1F3A4;

  return sub_26AF12058(a1, v6, v7, v1 + 32);
}

uint64_t sub_26AF1F3A4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF1F4FC()
{
  sub_26AF072D8();

  return swift_deallocObject();
}

uint64_t sub_26AF1F574(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB68);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB58) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_26AF1F638(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB68);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB58) + 36);
  v3 = sub_26B079100();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

uint64_t sub_26AF1F718()
{
  swift_unknownObjectRelease();
  sub_26AF072D8();

  return swift_deallocObject();
}

uint64_t sub_26AF1F788(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF1F858;

  return sub_26AF0ECB8(a1, v6, v7, v1 + 32);
}

uint64_t sub_26AF1F858()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_26AF1F9B8()
{
  v2 = qword_2803DCC20;
  if (!qword_2803DCC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCC18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCC20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF1FA40(uint64_t a1)
{

  sub_26AF1FAA8(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 81) & 1);
  return a1;
}

uint64_t sub_26AF1FAA8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_26AEB4498(result, a2, a3);
  }

  return result;
}

uint64_t sub_26AF1FB00(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  v4 = *(a1 + 32);

  *(a2 + 32) = v4;
  v5 = *(a1 + 40);

  *(a2 + 40) = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 81);
  sub_26AF1FBFC(v7, v8, v9, v10, v11, v12 & 1);
  result = a2;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  *(a2 + 80) = v11;
  *(a2 + 81) = v12 & 1;
  return result;
}

uint64_t sub_26AF1FBFC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_26AEB4364(result, a2, a3);
  }

  return result;
}

unint64_t sub_26AF1FC80()
{
  v2 = qword_2803DCC30;
  if (!qword_2803DCC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCC28);
    sub_26AEF8D88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCC30);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_26AF1FD24()
{
}

void *sub_26AF1FD68(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v5 = a1[1];

  a2[1] = v5;
  v7 = a1[2];

  result = a2;
  a2[2] = v7;
  return result;
}

unint64_t sub_26AF1FDDC()
{
  v2 = qword_2803DCC50;
  if (!qword_2803DCC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCC48);
    sub_26AEB349C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCC50);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AF1FEC8(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

unint64_t sub_26AF1FFD8()
{
  v2 = qword_2803DCC78;
  if (!qword_2803DCC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCC70);
    sub_26AF1D000();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCC78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF20080(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC70) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_26AF2012C()
{
  v2 = qword_2803DCC80;
  if (!qword_2803DCC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCC60);
    sub_26AF1D000();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCC80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF201C4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC60);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AF20278(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC60);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC68);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AF203AC(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC70);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 36);
    v1 = sub_26B079100();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_26AF204A4(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC70);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC58);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    memcpy(a2, a1, 0x38uLL);
    v6 = &a2[*(v9 + 36)];
    v5 = &a1[*(v9 + 36)];
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

uint64_t sub_26AF20618(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  *(a2 + 8) = *(a1 + 8);
  v5 = a1[2];
  v6 = a1[3];

  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  v7 = a1[4];

  *(a2 + 32) = v7;
  v8 = a1[5];
  v9 = a1[6];

  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC70) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 16))(a2 + v10, a1 + v10);
  return a2;
}

void *sub_26AF20744(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC60);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC68);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_26AF20878(uint64_t *a1, void *a2)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC70);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCC58);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = *a1;

    *a2 = v5;
    *(a2 + 8) = *(a1 + 8);
    v6 = a1[2];
    v7 = a1[3];

    a2[2] = v6;
    a2[3] = v7;
    v8 = a1[4];

    a2[4] = v8;
    v9 = a1[5];
    v10 = a1[6];

    a2[5] = v9;
    a2[6] = v10;
    v12 = a2 + *(v15 + 36);
    v11 = a1 + *(v15 + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 16))(v12, v11);
    (*(v16 + 56))(a2, 0, 1, v15);
  }

  return a2;
}

unint64_t sub_26AF20A6C()
{
  v2 = qword_2803DCC88;
  if (!qword_2803DCC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCC68);
    sub_26AF2012C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCC88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF20B04()
{
  v2 = qword_2803DCC90;
  if (!qword_2803DCC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCC58);
    sub_26AF1FFD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCC90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF20B9C()
{
  sub_26AF072D8();

  return swift_deallocObject();
}

unint64_t sub_26AF20C0C()
{
  v2 = qword_2803DCC98;
  if (!qword_2803DCC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCBA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCC98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF20C94()
{
  v2 = qword_2803DCCA0;
  if (!qword_2803DCCA0)
  {
    type metadata accessor for ReactiveBetaProgram();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCCA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t AutomaticUpdatesDeepLinkCommand.execute(with:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = a2;
  return MEMORY[0x2822009F8](sub_26AF20D58, 0, 0);
}

uint64_t sub_26AF20D58()
{
  v4 = v0[5];
  v3 = v0[4];
  v0[2] = v0;

  *v3 = 0;
  v3[1] = v4;
  v1 = *(v0[2] + 8);

  return v1();
}

uint64_t sub_26AF20E04(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF20EC0;

  return AutomaticUpdatesDeepLinkCommand.execute(with:)(a1, a2);
}

uint64_t sub_26AF20EC0()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t getEnumTagSinglePayload for AutomaticUpdatesDeepLinkCommand(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutomaticUpdatesDeepLinkCommand(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t BetaUpdatesDeepLinkCommand.execute(with:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_26B078580();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[3] = a2;
  v4 = swift_task_alloc();
  *(v6 + 112) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AF214F8;

  return sub_26AED72E4(a2, &type metadata for BetaUpdatesDeepLinkCommand, &protocol witness table for BetaUpdatesDeepLinkCommand);
}

uint64_t sub_26AF214F8(uint64_t a1, char a2)
{
  v4 = *v2;
  *(v4 + 16) = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;

  return MEMORY[0x2822009F8](sub_26AF21618, 0, 0);
}

uint64_t sub_26AF21618()
{
  v99 = v0;
  v1 = *(v0 + 128);
  *(v0 + 16) = v0;
  if (v1)
  {
    sub_26B078550();
    v27 = sub_26B078570();
    v28 = sub_26B07A2C0();
    v20 = swift_allocObject();
    *(v20 + 16) = 32;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_26AF235F4;
    *(v17 + 24) = 0;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_26AF23918;
    *(v18 + 24) = v17;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_26AF23964;
    *(v22 + 24) = v18;
    v23 = swift_allocObject();
    *(v23 + 16) = 32;
    v24 = swift_allocObject();
    *(v24 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26AF235F8;
    *(v19 + 24) = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_26AF23A64;
    *(v25 + 24) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v26 = v6;

    *v26 = sub_26AF2389C;
    v26[1] = v20;

    v26[2] = sub_26AF238D0;
    v26[3] = v21;

    v26[4] = sub_26AF239B0;
    v26[5] = v22;

    v26[6] = sub_26AF239E8;
    v26[7] = v23;

    v26[8] = sub_26AF23A1C;
    v26[9] = v24;

    v26[10] = sub_26AF23AB0;
    v26[11] = v25;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v27, v28))
    {
      v14 = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v15 = sub_26AEA3B70(0);
      v16 = sub_26AEA3B70(2);
      v84 = v14;
      v85 = v15;
      v86 = v16;
      sub_26AEA3BC4(2, &v84);
      sub_26AEA3BC4(2, &v84);
      v87 = sub_26AF2389C;
      v88 = v20;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      v87 = sub_26AF238D0;
      v88 = v21;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      v87 = sub_26AF239B0;
      v88 = v22;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      v87 = sub_26AF239E8;
      v88 = v23;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      v87 = sub_26AF23A1C;
      v88 = v24;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      v87 = sub_26AF23AB0;
      v88 = v25;
      sub_26AEA3BD8(&v87, &v84, &v85, &v86);
      _os_log_impl(&dword_26AE88000, v27, v28, "%s.%s: timed out waiting for state change", v14, 0x16u);
      sub_26AEA3C24(v15);
      sub_26AEA3C24(v16);
      sub_26B07A400();
    }

    else
    {
    }

    v12 = v83[11];
    v13 = v83[9];
    v11 = v83[10];
    v7 = MEMORY[0x277D82BD8](v27);
    (*(v11 + 8))(v12, v13, v7);
  }

  else
  {
    v82 = v83[15];
    v83[4] = v82;
    type metadata accessor for SUUIStatefulUIState();
    v83[5] = v82;
    v83[6] = 3;
    sub_26AEB6FE0();
    if (sub_26B079D40())
    {

      v81 = ReactiveUIManager.canEnrollInBetaUpdates.getter();

      if (v81)
      {
        v80 = v83[8];
        v79 = v83[7];

        *v79 = 1;
        v79[1] = v80;
        goto LABEL_18;
      }

      v60 = v83[15];
      sub_26B078550();
      v61 = swift_allocObject();
      *(v61 + 16) = v60;

      v65 = swift_allocObject();
      *(v65 + 16) = sub_26AF23F0C;
      *(v65 + 24) = v61;

      oslog = sub_26B078570();
      v78 = sub_26B07A2C0();
      v67 = swift_allocObject();
      *(v67 + 16) = 32;
      v68 = swift_allocObject();
      *(v68 + 16) = 8;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_26AF23EDC;
      *(v62 + 24) = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = sub_26AF24058;
      *(v63 + 24) = v62;
      v69 = swift_allocObject();
      *(v69 + 16) = sub_26AF240A4;
      *(v69 + 24) = v63;
      v70 = swift_allocObject();
      *(v70 + 16) = 32;
      v71 = swift_allocObject();
      *(v71 + 16) = 8;
      v64 = swift_allocObject();
      *(v64 + 16) = sub_26AF23564;
      *(v64 + 24) = 0;
      v72 = swift_allocObject();
      *(v72 + 16) = sub_26AF241A4;
      *(v72 + 24) = v64;
      v73 = swift_allocObject();
      *(v73 + 16) = 32;
      v74 = swift_allocObject();
      *(v74 + 16) = 8;
      v66 = swift_allocObject();
      *(v66 + 16) = sub_26AF23F54;
      *(v66 + 24) = v65;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_26AF242A4;
      *(v75 + 24) = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
      sub_26B07A760();
      v76 = v2;

      *v76 = sub_26AF23FDC;
      v76[1] = v67;

      v76[2] = sub_26AF24010;
      v76[3] = v68;

      v76[4] = sub_26AF240F0;
      v76[5] = v69;

      v76[6] = sub_26AF24128;
      v76[7] = v70;

      v76[8] = sub_26AF2415C;
      v76[9] = v71;

      v76[10] = sub_26AF241F0;
      v76[11] = v72;

      v76[12] = sub_26AF24228;
      v76[13] = v73;

      v76[14] = sub_26AF2425C;
      v76[15] = v74;

      v76[16] = sub_26AF242F0;
      v76[17] = v75;
      sub_26AEA3B2C();

      if (os_log_type_enabled(oslog, v78))
      {
        buf = sub_26B07A420();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
        v58 = sub_26AEA3B70(0);
        v59 = sub_26AEA3B70(3);
        v94 = buf;
        v95 = v58;
        v96 = v59;
        sub_26AEA3BC4(2, &v94);
        sub_26AEA3BC4(3, &v94);
        v97 = sub_26AF23FDC;
        v98 = v67;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26AF24010;
        v98 = v68;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26AF240F0;
        v98 = v69;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26AF24128;
        v98 = v70;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26AF2415C;
        v98 = v71;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26AF241F0;
        v98 = v72;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26AF24228;
        v98 = v73;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26AF2425C;
        v98 = v74;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        v97 = sub_26AF242F0;
        v98 = v75;
        sub_26AEA3BD8(&v97, &v94, &v95, &v96);
        _os_log_impl(&dword_26AE88000, oslog, v78, "%s.%s: State changed to %s, but user can't enroll.", buf, 0x20u);
        sub_26AEA3C24(v58);
        sub_26AEA3C24(v59);
        sub_26B07A400();
      }

      else
      {
      }

      v55 = v83[13];
      v56 = v83[9];
      v54 = v83[10];
      v3 = MEMORY[0x277D82BD8](oslog);
      (*(v54 + 8))(v55, v56, v3);
    }

    else
    {
      v35 = v83[15];
      sub_26B078550();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;

      v40 = swift_allocObject();
      *(v40 + 16) = sub_26AF23AEC;
      *(v40 + 24) = v36;

      log = sub_26B078570();
      v53 = sub_26B07A2C0();
      v42 = swift_allocObject();
      *(v42 + 16) = 32;
      v43 = swift_allocObject();
      *(v43 + 16) = 8;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_26AF23ABC;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_26AF23C38;
      *(v38 + 24) = v37;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_26AF23C84;
      *(v44 + 24) = v38;
      v45 = swift_allocObject();
      *(v45 + 16) = 32;
      v46 = swift_allocObject();
      *(v46 + 16) = 8;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_26AF235AC;
      *(v39 + 24) = 0;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_26AF23D84;
      *(v47 + 24) = v39;
      v48 = swift_allocObject();
      *(v48 + 16) = 32;
      v49 = swift_allocObject();
      *(v49 + 16) = 8;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_26AF23B34;
      *(v41 + 24) = v40;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_26AF23E84;
      *(v50 + 24) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
      sub_26B07A760();
      v51 = v4;

      *v51 = sub_26AF23BBC;
      v51[1] = v42;

      v51[2] = sub_26AF23BF0;
      v51[3] = v43;

      v51[4] = sub_26AF23CD0;
      v51[5] = v44;

      v51[6] = sub_26AF23D08;
      v51[7] = v45;

      v51[8] = sub_26AF23D3C;
      v51[9] = v46;

      v51[10] = sub_26AF23DD0;
      v51[11] = v47;

      v51[12] = sub_26AF23E08;
      v51[13] = v48;

      v51[14] = sub_26AF23E3C;
      v51[15] = v49;

      v51[16] = sub_26AF23ED0;
      v51[17] = v50;
      sub_26AEA3B2C();

      if (os_log_type_enabled(log, v53))
      {
        v32 = sub_26B07A420();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
        v33 = sub_26AEA3B70(0);
        v34 = sub_26AEA3B70(3);
        v89 = v32;
        v90 = v33;
        v91 = v34;
        sub_26AEA3BC4(2, &v89);
        sub_26AEA3BC4(3, &v89);
        v92 = sub_26AF23BBC;
        v93 = v42;
        sub_26AEA3BD8(&v92, &v89, &v90, &v91);
        v92 = sub_26AF23BF0;
        v93 = v43;
        sub_26AEA3BD8(&v92, &v89, &v90, &v91);
        v92 = sub_26AF23CD0;
        v93 = v44;
        sub_26AEA3BD8(&v92, &v89, &v90, &v91);
        v92 = sub_26AF23D08;
        v93 = v45;
        sub_26AEA3BD8(&v92, &v89, &v90, &v91);
        v92 = sub_26AF23D3C;
        v93 = v46;
        sub_26AEA3BD8(&v92, &v89, &v90, &v91);
        v92 = sub_26AF23DD0;
        v93 = v47;
        sub_26AEA3BD8(&v92, &v89, &v90, &v91);
        v92 = sub_26AF23E08;
        v93 = v48;
        sub_26AEA3BD8(&v92, &v89, &v90, &v91);
        v92 = sub_26AF23E3C;
        v93 = v49;
        sub_26AEA3BD8(&v92, &v89, &v90, &v91);
        v92 = sub_26AF23ED0;
        v93 = v50;
        sub_26AEA3BD8(&v92, &v89, &v90, &v91);
        _os_log_impl(&dword_26AE88000, log, v53, "%s.%s: State changed to %s, but not enough to navigate to beta updates.", v32, 0x20u);
        sub_26AEA3C24(v33);
        sub_26AEA3C24(v34);
        sub_26B07A400();
      }

      else
      {
      }

      v30 = v83[12];
      v31 = v83[9];
      v29 = v83[10];
      v5 = MEMORY[0x277D82BD8](log);
      (*(v29 + 8))(v30, v31, v5);
    }
  }

  v8 = v83[7];
  *v8 = 0x7FFFFFEFCLL;
  v8[1] = 0;
LABEL_18:

  v9 = *(v83[2] + 8);

  return v9();
}

uint64_t sub_26AF23628(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF236E4;

  return BetaUpdatesDeepLinkCommand.execute(with:)(a1, a2);
}

uint64_t sub_26AF236E4()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_26AF23B34()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState();
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t sub_26AF23F54()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState();
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t getEnumTagSinglePayload for BetaUpdatesDeepLinkCommand(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for BetaUpdatesDeepLinkCommand(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_26AF24628@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCCD8);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v7 = &v3 - v4;
  v8 = v1;
  sub_26AF246E8(v1, (&v3 - v4));
  sub_26B078A10();
  return sub_26AF247BC(v7);
}

void *sub_26AF246E8(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078E40();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AF247BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078E40();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AF24894(uint64_t a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCCD8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v5 = v4 - v4[0];
  v8 = v2;
  v7 = v1;
  sub_26AF246E8(v2, (v4 - v4[0]));
  sub_26AF2494C(v5, v4[1]);
  return sub_26AF247BC(v6);
}

void *sub_26AF2494C(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_26AF24A38(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_26B078E40();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_26AF24A38(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078E40();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AF24B28()
{
  type metadata accessor for ReleaseNotesSummaryView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798B0();

  return v1 & 1;
}

uint64_t type metadata accessor for ReleaseNotesSummaryView()
{
  v1 = qword_2803DCE88;
  if (!qword_2803DCE88)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_26AF24C34()
{
  type metadata accessor for ReleaseNotesSummaryView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798C0();
  sub_26AE91DC8();
}

void (*sub_26AF24CF8(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for ReleaseNotesSummaryView() + 20));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798B0();
  return sub_26AF24DE4;
}

void sub_26AF24DE4(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = *(v8 + 48);
    v2 = *(v8 + 67);
    v3 = *(v8 + 64);

    *(v8 + 16) = v2;
    *(v8 + 24) = v4;
    *(v8 + 65) = v3;
  }

  else
  {
    v7 = *(v8 + 48);
    v5 = *(v8 + 67);
    v6 = *(v8 + 64);

    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    *(v8 + 66) = v6;
  }

  sub_26B0798C0();
  sub_26AE91DC8();

  free(v8);
}

uint64_t sub_26AF24EF8()
{
  type metadata accessor for ReleaseNotesSummaryView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AF24FA8()
{
  v2 = *(v0 + *(type metadata accessor for ReleaseNotesSummaryView() + 20));

  return v2 & 1;
}

uint64_t sub_26AF24FFC(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for ReleaseNotesSummaryView() + 20);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t ReleaseNotesSummaryView.isContentReadyBinding.getter()
{
  v1 = (v0 + *(type metadata accessor for ReleaseNotesSummaryView() + 24));
  v3 = *v1;
  sub_26AEC1EF4(*v1, v1[1]);
  return v3;
}

uint64_t sub_26AF250D0()
{
  v2 = *(v0 + *(type metadata accessor for ReleaseNotesSummaryView() + 28));

  return v2;
}

uint64_t sub_26AF25114(uint64_t a1)
{

  *(v1 + *(type metadata accessor for ReleaseNotesSummaryView() + 28)) = a1;
}

BOOL sub_26AF25174()
{
  v14 = v0;
  type metadata accessor for ReleaseNotesSummaryView();

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v13);
  v11 = v13;

  if (v11)
  {
    swift_getObjectType();
    v9 = [v11 releaseNotes];
    if (v9)
    {
      v5 = sub_26B0781D0();
      v6 = v1;
      MEMORY[0x277D82BD8](v9);
      v7 = v5;
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0xF000000000000000;
    }

    swift_unknownObjectRelease();

    v3 = v7;
    v4 = v8;
  }

  else
  {

    v3 = 0;
    v4 = 0xF000000000000000;
  }

  v12[0] = v3;
  v12[1] = v4;
  sub_26AF253C8(v12);
  return (v4 & 0xF000000000000000) != 0xF000000000000000;
}

uint64_t sub_26AF25344@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 documentation];
  return swift_unknownObjectRelease();
}

uint64_t sub_26AF253C8(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_26AE96418(*a1, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_26AF25418()
{
  v5 = v0;
  type metadata accessor for ReleaseNotesSummaryView();

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3 & 1;
}

uint64_t sub_26AF254AC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 isSplomboUpdate];
  return swift_unknownObjectRelease();
}