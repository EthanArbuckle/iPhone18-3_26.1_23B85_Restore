_DWORD *sub_2695899D8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2695899E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269589A60(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_269589AF0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_269589B2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269589B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2695B0A18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_269589C1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2695B0A18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_269589CD4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 <= 7)
    {
      v5 = 7;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 7;
    if (v4 >= 7)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
    v11 = *(*(EnablementStatus - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, EnablementStatus);
  }
}

_BYTE *sub_269589D84(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
    v8 = *(*(EnablementStatus - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, EnablementStatus);
  }

  return result;
}

uint64_t sub_269589E34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_269589E84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269589ED8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2695B0C88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_269589F84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2695B0C88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26958A028(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 <= 7)
    {
      v5 = 7;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 7;
    if (v4 >= 7)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_26958A0E8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26958A194(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_2695B0C78();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  v15 = *(*(EnablementStatus - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, EnablementStatus);
}

uint64_t sub_26958A30C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2695B0C78();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  v15 = *(*(EnablementStatus - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, EnablementStatus);
}

uint64_t static SegmentStore.readLastRecordedSegments()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2695B0B48();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26958A570(v7);
  if (!v1)
  {
    sub_26958A8F0(v7, a1);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_26958A570@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = sub_2695B0DE8();
  v26 = *(v28 - 8);
  v1 = *(v26 + 64);
  (MEMORY[0x28223BE20])();
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2695B0B48();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_2695B0FB8();
  v16 = [v14 containerURLForSecurityApplicationGroupIdentifier_];

  if (v16)
  {
    sub_2695B0B38();

    v17 = v25;
    (*(v4 + 32))(v13, v11, v25);
    sub_2695B0DD8();
    sub_2695B0B18();
    v18 = *(v26 + 8);
    v19 = v28;
    v18(v3, v28);
    sub_2695B0DC8();
    sub_2695B0B18();
    v18(v3, v19);
    v20 = *(v4 + 8);
    v20(v8, v17);
    return (v20)(v13, v17);
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_2695B1208();
    MEMORY[0x26D6414B0](0xD00000000000001ALL, 0x80000002695B38B0);
    MEMORY[0x26D6414B0](0xD000000000000029, 0x80000002695B3880);
    MEMORY[0x26D6414B0](0xD00000000000002ALL, 0x80000002695B38D0);
    v22 = v29;
    v23 = v30;
    sub_26958B580();
    swift_allocError();
    *v24 = v22;
    v24[1] = v23;
    return swift_willThrow();
  }
}

uint64_t sub_26958A8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2695B0B48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v11 = sub_2695B0EF8();
  __swift_project_value_buffer(v11, qword_2814B2250);
  (*(v7 + 16))(v10, a1, v6);
  v12 = sub_2695B0ED8();
  v13 = sub_2695B1128();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32 = a2;
    v15 = v14;
    v30 = swift_slowAlloc();
    v31 = v2;
    v33 = v30;
    *v15 = 136315394;
    *(v15 + 4) = sub_26959CE44(0xD00000000000001FLL, 0x80000002695B3860, &v33);
    *(v15 + 12) = 2080;
    sub_26958B538(&qword_2814B1FD0, MEMORY[0x277CC9260]);
    v16 = sub_2695B1318();
    v18 = v17;
    (*(v7 + 8))(v10, v6);
    v19 = sub_26959CE44(v16, v18, &v33);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_269588000, v12, v13, "SegmentStore.%s from: %s", v15, 0x16u);
    v20 = v30;
    swift_arrayDestroy();
    v21 = v20;
    v3 = v31;
    MEMORY[0x26D641DE0](v21, -1, -1);
    MEMORY[0x26D641DE0](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  result = sub_2695B0B58();
  if (!v3)
  {
    v24 = result;
    v25 = v23;
    v26 = sub_2695B0AA8();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_2695B0A98();
    type metadata accessor for SegmentsSummary();
    sub_26958B538(&qword_28031D000, type metadata accessor for SegmentsSummary);
    sub_2695B0A88();
    sub_26958B49C(v24, v25);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26958ACE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26958AD2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26958AD84(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v63[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2695B0B48();
  v4 = *(v3 - 8);
  isa = v4[8].isa;
  v6 = MEMORY[0x28223BE20](v3);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v12 = sub_2695B0EF8();
  __swift_project_value_buffer(v12, qword_2814B2250);
  v54 = v4[2].isa;
  v55 = v4 + 2;
  v54(v11, a2, v3);
  v13 = sub_2695B0ED8();
  v14 = sub_2695B1128();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    p_isa = &v4->isa;
    v16 = v15;
    v53 = swift_slowAlloc();
    v63[0] = v53;
    *v16 = 136315394;
    *(v16 + 4) = sub_26959CE44(0x3A5F286574697277, 0xEC000000293A6F74, v63);
    *(v16 + 12) = 2080;
    sub_26958B538(&qword_2814B1FD0, MEMORY[0x277CC9260]);
    v17 = sub_2695B1318();
    v18 = a2;
    v20 = v19;
    v59 = p_isa[1];
    v59(v11, v3);
    v21 = sub_26959CE44(v17, v20, v63);
    a2 = v18;

    *(v16 + 14) = v21;
    _os_log_impl(&dword_269588000, v13, v14, "SegmentStore.%s to: %s", v16, 0x16u);
    v22 = v53;
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v22, -1, -1);
    MEMORY[0x26D641DE0](v16, -1, -1);
  }

  else
  {

    v59 = v4[1].isa;
    v59(v11, v3);
  }

  v23 = sub_2695B0AE8();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_2695B0AD8();
  sub_2695B0AB8();
  type metadata accessor for SegmentsSummary();
  sub_26958B538(&unk_28031CF88, type metadata accessor for SegmentsSummary);
  v26 = v61;
  v27 = sub_2695B0AC8();
  if (!v26)
  {
    v60 = v27;
    v61 = v28;
    v29 = [objc_opt_self() defaultManager];
    v30 = v57;
    sub_2695B0B28();
    v31 = sub_2695B0B08();
    v59(v30, v3);
    v63[0] = 0;
    LODWORD(v30) = [v29 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:v63];

    if (v30)
    {
      v32 = v63[0];
    }

    else
    {
      v33 = v63[0];
      v34 = sub_2695B0AF8();

      swift_willThrow();
      v35 = v56;
      v54(v56, a2, v3);
      MEMORY[0x26D641C60](v34);
      v36 = sub_2695B0ED8();
      v37 = sub_2695B1138();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        LODWORD(v57) = v37;
        v39 = v38;
        p_isa = swift_slowAlloc();
        v63[0] = p_isa;
        *v39 = 136315394;
        sub_26958B538(&qword_2814B1FD0, MEMORY[0x277CC9260]);
        v55 = v36;
        v40 = sub_2695B1318();
        v42 = v41;
        v59(v35, v3);
        v43 = sub_26959CE44(v40, v42, v63);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        v62 = v34;
        MEMORY[0x26D641C60](v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031CF98, qword_2695B2630);
        v44 = sub_2695B0FC8();
        v46 = sub_26959CE44(v44, v45, v63);

        *(v39 + 14) = v46;
        v47 = v55;
        _os_log_impl(&dword_269588000, v55, v57, "SegmentStore.write(): Unable to create the store directory for path: %s, error: %s", v39, 0x16u);
        v48 = p_isa;
        swift_arrayDestroy();
        MEMORY[0x26D641DE0](v48, -1, -1);
        MEMORY[0x26D641DE0](v39, -1, -1);
      }

      else
      {

        v59(v35, v3);
      }
    }

    v49 = v60;
    v50 = v61;
    sub_2695B0B88();
    sub_26958B49C(v49, v50);
  }

  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26958B49C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26958B538(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26958B580()
{
  result = qword_28031D008;
  if (!qword_28031D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D008);
  }

  return result;
}

void sub_26958B610(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t SiriUserSegmentsFeatureFlag.hashValue.getter()
{
  sub_2695B1388();
  MEMORY[0x26D641850](0);
  return sub_2695B13A8();
}

uint64_t sub_26958B738()
{
  sub_2695B1388();
  MEMORY[0x26D641850](0);
  return sub_2695B13A8();
}

uint64_t sub_26958B7A4()
{
  sub_2695B1388();
  MEMORY[0x26D641850](0);
  return sub_2695B13A8();
}

unint64_t sub_26958B7E8()
{
  result = qword_28031D090;
  if (!qword_28031D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D090);
  }

  return result;
}

unint64_t sub_26958B868()
{
  result = qword_28031D098;
  if (!qword_28031D098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031D0A0, &qword_2695B1ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D098);
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

uint64_t getEnumTagSinglePayload for SiriUserSegmentsFeatureFlag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriUserSegmentsFeatureFlag(_WORD *result, int a2, int a3)
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

uint64_t type metadata accessor for SiriFirstEnablementStatus()
{
  result = qword_2814B1FA8;
  if (!qword_2814B1FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26958BA90()
{
  sub_26958BAE8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_26958BAE8()
{
  if (!qword_2814B1FC0)
  {
    v0 = sub_2695B0C78();
    if (!v1)
    {
      atomic_store(v0, &qword_2814B1FC0);
    }
  }
}

uint64_t sub_26958BB30()
{
  v1 = sub_2695B0C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2695B0C78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  v12 = *(*(EnablementStatus - 8) + 64);
  MEMORY[0x28223BE20](EnablementStatus - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26958D34C(v0, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  v16 = (*(*(v15 - 8) + 48))(v14, 3, v15);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      return 0x616E45726576656ELL;
    }

    else
    {
      return 0x6D726554676E6F6CLL;
    }
  }

  else if (v16)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2695B1208();

    v22 = 0xD000000000000016;
    v23 = 0x80000002695B3970;
    sub_2695AC8F0(v5);
    v17 = sub_2695B0BB8();
    v19 = v18;
    (*(v2 + 8))(v5, v1);
    MEMORY[0x26D6414B0](v17, v19);

    MEMORY[0x26D6414B0](41, 0xE100000000000000);
    v20 = v22;
    (*(v7 + 8))(v10, v6);
    return v20;
  }
}

uint64_t sub_26958BE54()
{
  v1 = *v0;
  sub_2695B1388();
  MEMORY[0x26D641850](v1);
  return sub_2695B13A8();
}

uint64_t sub_26958BEC8()
{
  v1 = *v0;
  sub_2695B1388();
  MEMORY[0x26D641850](v1);
  return sub_2695B13A8();
}

uint64_t sub_26958BF0C()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x796C746E65636572;
  if (*v0 != 2)
  {
    v2 = 0x6D726554676E6F6CLL;
  }

  if (*v0)
  {
    v1 = 0x616E45726576656ELL;
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

uint64_t sub_26958BFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26958E060(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26958BFE8(uint64_t a1)
{
  v2 = sub_26958D2F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26958C024(uint64_t a1)
{
  v2 = sub_26958D2F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26958C060(void *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0B0, &qword_2695B2040);
  v44 = *(v46 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v42 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0B8, &qword_2695B2048);
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v37 - v6;
  v7 = sub_2695B0C78();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0C0, &qword_2695B2050);
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0C8, &qword_2695B2058);
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = *(v38 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  v19 = *(*(EnablementStatus - 8) + 64);
  MEMORY[0x28223BE20](EnablementStatus - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0D0, &qword_2695B2060);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v37 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26958D2F8();
  sub_2695B13C8();
  sub_26958D34C(v51, v21);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  v29 = (*(*(v28 - 8) + 48))(v21, 3, v28);
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v53 = 1;
      sub_26958D458();
      sub_2695B12E8();
      (*(v40 + 8))(v13, v41);
    }

    else
    {
      v55 = 3;
      sub_26958D3B0();
      v36 = v42;
      sub_2695B12E8();
      (*(v44 + 8))(v36, v46);
    }
  }

  else
  {
    if (!v29)
    {
      v31 = v47;
      v30 = v48;
      v32 = v43;
      (*(v47 + 32))(v43, v21, v48);
      v54 = 2;
      sub_26958D404();
      v33 = v45;
      sub_2695B12E8();
      sub_26958D5B0(&qword_28031D0F0);
      v34 = v50;
      sub_2695B1308();
      (*(v49 + 8))(v33, v34);
      (*(v31 + 8))(v32, v30);
      return (*(v23 + 8))(v26, v22);
    }

    v52 = 0;
    sub_26958D4AC();
    sub_2695B12E8();
    (*(v38 + 8))(v17, v39);
  }

  return (*(v23 + 8))(v26, v22);
}

uint64_t sub_26958C660@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D108, &qword_2695B2068);
  v56 = *(v58 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v64 = &v50 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D110, &qword_2695B2070);
  v59 = *(v57 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  v60 = &v50 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D118, &qword_2695B2078);
  v55 = *(v63 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D120, &qword_2695B2080);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D128, &qword_2695B2088);
  v65 = *(v13 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  v18 = *(*(EnablementStatus - 8) + 64);
  v19 = MEMORY[0x28223BE20](EnablementStatus);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_26958D2F8();
  v26 = v66;
  sub_2695B13B8();
  if (!v26)
  {
    v66 = EnablementStatus;
    v51 = v21;
    v52 = v23;
    v27 = v62;
    v28 = v63;
    v29 = v64;
    v30 = sub_2695B12D8();
    v31 = *(v30 + 16);
    if (!v31 || ((v32 = *(v30 + 32), v31 == 1) ? (v33 = v32 == 4) : (v33 = 1), v33))
    {
      v34 = sub_2695B1248();
      swift_allocError();
      v36 = v35;
      v37 = v13;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D130, &qword_2695B2090) + 48);
      *v36 = v66;
      sub_2695B12A8();
      sub_2695B1238();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v65 + 8))(v16, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v30 + 32) > 1u)
      {
        v43 = v65;
        if (v32 == 2)
        {
          v70 = 2;
          sub_26958D404();
          v44 = v60;
          sub_2695B1298();
          sub_2695B0C78();
          sub_26958D5B0(&qword_28031D138);
          v45 = v51;
          v46 = v57;
          sub_2695B12C8();
          (*(v59 + 8))(v44, v46);
          (*(v43 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
          (*(*(v47 - 8) + 56))(v45, 0, 3, v47);
          v42 = v52;
          sub_26958D54C(v45, v52);
        }

        else
        {
          v71 = 3;
          sub_26958D3B0();
          sub_2695B1298();
          (*(v56 + 8))(v29, v58);
          (*(v43 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
          v42 = v52;
          (*(*(v49 - 8) + 56))(v52, 3, 3, v49);
        }

        v40 = v61;
      }

      else
      {
        v40 = v61;
        if (*(v30 + 32))
        {
          v69 = 1;
          sub_26958D458();
          sub_2695B1298();
          (*(v55 + 8))(v27, v28);
          (*(v65 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
          v42 = v52;
          (*(*(v48 - 8) + 56))(v52, 2, 3, v48);
        }

        else
        {
          v68 = 0;
          sub_26958D4AC();
          sub_2695B1298();
          (*(v53 + 8))(v12, v54);
          (*(v65 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
          v42 = v52;
          (*(*(v41 - 8) + 56))(v52, 1, 3, v41);
        }
      }

      sub_26958D54C(v42, v40);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_26958CF14(uint64_t a1)
{
  v2 = sub_26958D3B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26958CF50(uint64_t a1)
{
  v2 = sub_26958D3B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26958CFA4(uint64_t a1)
{
  v2 = sub_26958D458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26958CFE0(uint64_t a1)
{
  v2 = sub_26958D458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26958D024()
{
  sub_2695B1388();
  MEMORY[0x26D641850](0);
  return sub_2695B13A8();
}

uint64_t sub_26958D090()
{
  sub_2695B1388();
  MEMORY[0x26D641850](0);
  return sub_2695B13A8();
}

uint64_t sub_26958D0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1716482913 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2695B1328();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26958D174(uint64_t a1)
{
  v2 = sub_26958D404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26958D1B0(uint64_t a1)
{
  v2 = sub_26958D404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26958D204(uint64_t a1)
{
  v2 = sub_26958D4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26958D240(uint64_t a1)
{
  v2 = sub_26958D4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26958D2F8()
{
  result = qword_28031D0D8;
  if (!qword_28031D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D0D8);
  }

  return result;
}

uint64_t sub_26958D34C(uint64_t a1, uint64_t a2)
{
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  (*(*(EnablementStatus - 8) + 16))(a2, a1, EnablementStatus);
  return a2;
}

unint64_t sub_26958D3B0()
{
  result = qword_28031D0E0;
  if (!qword_28031D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D0E0);
  }

  return result;
}

unint64_t sub_26958D404()
{
  result = qword_28031D0E8;
  if (!qword_28031D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D0E8);
  }

  return result;
}

unint64_t sub_26958D458()
{
  result = qword_28031D0F8;
  if (!qword_28031D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D0F8);
  }

  return result;
}

unint64_t sub_26958D4AC()
{
  result = qword_28031D100;
  if (!qword_28031D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D100);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26958D54C(uint64_t a1, uint64_t a2)
{
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  (*(*(EnablementStatus - 8) + 32))(a2, a1, EnablementStatus);
  return a2;
}

uint64_t sub_26958D5B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2695B0C78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26958D5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2695B0C78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  v10 = *(*(EnablementStatus - 8) + 64);
  MEMORY[0x28223BE20](EnablementStatus - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D140, &qword_2695B2098);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_26958D34C(a1, &v25 - v16);
  sub_26958D34C(a2, &v17[v18]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 3, v19);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v20(&v17[v18], 3, v19) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v20(&v17[v18], 3, v19) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_26958D8F0(v17);
    v22 = 0;
    return v22 & 1;
  }

  if (!v21)
  {
    sub_26958D34C(v17, v12);
    if (!v20(&v17[v18], 3, v19))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v22 = sub_2695B0C48();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
      sub_26958D958(v17);
      return v22 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_11;
  }

  if (v20(&v17[v18], 3, v19) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_26958D958(v17);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_26958D8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D140, &qword_2695B2098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26958D958(uint64_t a1)
{
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  (*(*(EnablementStatus - 8) + 8))(a1, EnablementStatus);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriFirstEnablementStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriFirstEnablementStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriFirstEnablementStatus.RecentlyEnabledCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriFirstEnablementStatus.RecentlyEnabledCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_26958DC44()
{
  result = qword_28031D148;
  if (!qword_28031D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D148);
  }

  return result;
}

unint64_t sub_26958DC9C()
{
  result = qword_28031D150;
  if (!qword_28031D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D150);
  }

  return result;
}

unint64_t sub_26958DCF4()
{
  result = qword_28031D158;
  if (!qword_28031D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D158);
  }

  return result;
}

unint64_t sub_26958DD4C()
{
  result = qword_28031D160;
  if (!qword_28031D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D160);
  }

  return result;
}

unint64_t sub_26958DDA4()
{
  result = qword_28031D168;
  if (!qword_28031D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D168);
  }

  return result;
}

unint64_t sub_26958DDFC()
{
  result = qword_28031D170;
  if (!qword_28031D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D170);
  }

  return result;
}

unint64_t sub_26958DE54()
{
  result = qword_28031D178;
  if (!qword_28031D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D178);
  }

  return result;
}

unint64_t sub_26958DEAC()
{
  result = qword_28031D180;
  if (!qword_28031D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D180);
  }

  return result;
}

unint64_t sub_26958DF04()
{
  result = qword_28031D188;
  if (!qword_28031D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D188);
  }

  return result;
}

unint64_t sub_26958DF5C()
{
  result = qword_28031D190;
  if (!qword_28031D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D190);
  }

  return result;
}

unint64_t sub_26958DFB4()
{
  result = qword_28031D198;
  if (!qword_28031D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D198);
  }

  return result;
}

unint64_t sub_26958E00C()
{
  result = qword_28031D1A0;
  if (!qword_28031D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D1A0);
  }

  return result;
}

uint64_t sub_26958E060(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_2695B1328() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616E45726576656ELL && a2 == 0xEC00000064656C62 || (sub_2695B1328() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C746E65636572 && a2 == 0xEF64656C62616E45 || (sub_2695B1328() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726554676E6F6CLL && a2 == 0xEF64656C62616E45)
  {

    return 3;
  }

  else
  {
    v6 = sub_2695B1328();

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

uint64_t sub_26958E1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1E0, &qword_2695B2560);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1E8, &unk_2695B31E0);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26958E338, 0, 0);
}

uint64_t sub_26958E338()
{
  v1 = v0[9];
  sub_2695B0E28();
  sub_2695B0BA8();
  v3 = v2;
  v4 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538) + 36);
  sub_2695B0BA8();
  v6 = v5;
  v7 = *(MEMORY[0x277CE4850] + 4);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_26958E448;
  v9 = v0[8];

  return MEMORY[0x2821377A8](v0 + 2, v9, v3, 0, v6, 0, 0, 1);
}

uint64_t sub_26958E448()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_26958F55C;
  }

  else
  {
    v3 = sub_26958E55C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26958E55C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[6];
  v10 = v0[15];
  v11 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2695B0DF8();
  sub_26958F514(&qword_28031D1F0, &qword_28031D1E0, &qword_2695B2560);
  sub_2695B0D78();
  (*(v5 + 8))(v4, v6);
  swift_allocObject();
  (*(v3 + 16))(v10, v1, v2);
  sub_26958F514(&qword_28031D1F8, &qword_28031D1E8, &unk_2695B31E0);
  sub_2695B10F8();
  sub_2695B0EC8();

  sub_2695B10E8();
  (*(v3 + 8))(v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26958E770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1A8, &qword_2695B2528);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B0, &qword_2695B2530);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26958E8B4, 0, 0);
}

uint64_t sub_26958E8B4()
{
  v1 = v0[9];
  sub_2695B0E28();
  sub_2695B0BA8();
  v3 = v2;
  v4 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538) + 36);
  sub_2695B0BA8();
  v6 = v5;
  v7 = *(MEMORY[0x277CE4850] + 4);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_26958E9C4;
  v9 = v0[8];

  return MEMORY[0x2821377A8](v0 + 2, v9, v3, 0, v6, 0, 0, 1);
}

uint64_t sub_26958E9C4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_26958ECEC;
  }

  else
  {
    v3 = sub_26958EAD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26958EAD8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[6];
  v11 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2695B0E08();
  sub_26958F514(&qword_28031D1C0, &qword_28031D1A8, &qword_2695B2528);
  sub_2695B0D78();
  (*(v6 + 8))(v5, v7);
  swift_allocObject();
  (*(v4 + 16))(v1, v2, v3);
  sub_26958F514(&qword_28031D1C8, &qword_28031D1B0, &qword_2695B2530);
  sub_2695B10F8();
  sub_2695B0DB8();

  sub_2695B10E8();
  (*(v4 + 8))(v2, v3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26958ECEC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_26958ED64(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_26958ED84, 0, 0);
}

uint64_t sub_26958ED84()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D200, &qword_2695B2578);
  v3 = sub_26958F514(&qword_28031D208, &qword_28031D200, &qword_2695B2578);
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_26958EE94;

  return MEMORY[0x282200308](v0 + 40, v2, v3);
}

uint64_t sub_26958EE94()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26958F564, 0, 0);
  }

  else
  {
    swift_endAccess();
    **(v3 + 48) = *(v3 + 40);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26958EFD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_26958EFF8, 0, 0);
}

uint64_t sub_26958EFF8()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1D0, &qword_2695B2550);
  v3 = sub_26958F514(&qword_28031D1D8, &qword_28031D1D0, &qword_2695B2550);
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_26958F108;

  return MEMORY[0x282200308](v0 + 40, v2, v3);
}

uint64_t sub_26958F108()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26958F24C, 0, 0);
  }

  else
  {
    swift_endAccess();
    **(v3 + 48) = *(v3 + 40);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26958F24C()
{
  v1 = *(v0 + 72);
  swift_endAccess();

  **(v0 + 48) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26958F2C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26958F370;

  return sub_26958EFD8(a1, v1);
}

uint64_t sub_26958F370()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26958F464(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26958F560;

  return sub_26958ED64(a1, v1);
}

uint64_t sub_26958F514(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26958F568(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26958F680;

  return v9(a1, a2);
}

uint64_t sub_26958F680(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_26958F78C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031CF98, qword_2695B2630);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26958F880()
{
  v1 = [objc_opt_self() sharedStatusController];
  v0[19] = v1;
  v2 = [objc_opt_self() activeAccount];
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26958F9F8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D210, &qword_2695B2628);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26958F78C;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 getSubscriptionStatusForUserIdentity:v2 bypassingCache:0 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26958F9F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_26958FB78;
  }

  else
  {
    v3 = sub_26958FB08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26958FB08()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26958FB78()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

uint64_t sub_26958FC00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26958FD1C()
{
  v1 = *v0;
  sub_2695B1388();
  MEMORY[0x26D641850](v1);
  return sub_2695B13A8();
}

uint64_t sub_26958FD90()
{
  v1 = *v0;
  sub_2695B1388();
  MEMORY[0x26D641850](v1);
  return sub_2695B13A8();
}

uint64_t *sub_26958FDD4@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t type metadata accessor for SiriUsageMetrics()
{
  result = qword_28031D220;
  if (!qword_28031D220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26958FE6C()
{
  result = sub_2695B0A18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProductId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProductId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269590054()
{
  v1 = 0x6E61747369737361;
  if (*v0 != 1)
  {
    v1 = 0x6F69746174636964;
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

unint64_t sub_2695900C0()
{
  result = qword_28031D230;
  if (!qword_28031D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D230);
  }

  return result;
}

uint64_t sub_26959017C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v110 = a3;
  v118 = a1;
  v119 = a2;
  v7 = sub_2695B0A78();
  v8 = *(v7 - 8);
  v113 = v7;
  v114 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v112 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v117 = &v100 - v12;
  v13 = sub_2695B0C98();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2695B0D48();
  v19 = *(v18 - 8);
  v115 = v18;
  v116 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v121 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v100 - v24;
  v26 = sub_2695B0C78();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  result = MEMORY[0x28223BE20](v29);
  if (*(v4 + 16) != 1)
  {
    if (*(v4 + 17))
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    *a4 = v33;
    return result;
  }

  v109 = v32;
  v111 = &v100 - v31;
  sub_269591050(v119, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    result = sub_2695910C0(v25);
    *a4 = 0;
    return result;
  }

  v101 = a4;
  v102 = v5;
  v119 = v27;
  v34 = *(v27 + 32);
  v108 = v26;
  v34(v111, v25);
  (*(v14 + 104))(v17, *MEMORY[0x277CC9830], v13);
  sub_2695B0CA8();
  (*(v14 + 8))(v17, v13);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D238, &qword_2695B33C0);
  v36 = sub_2695B0D38();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v106 = *(v37 + 72);
  v107 = v35;
  v39 = swift_allocObject();
  v104 = xmmword_2695B2770;
  *(v39 + 16) = xmmword_2695B2770;
  v40 = *MEMORY[0x277CC9998];
  v105 = *(v37 + 104);
  v105(v39 + v38, v40, v36);
  sub_269591E84(v39);
  swift_setDeallocating();
  v103 = *(v37 + 8);
  v103(v39 + v38, v36);
  swift_deallocClassInstance();
  v41 = v117;
  sub_2695B0CD8();

  v42 = sub_2695B0A48();
  if (v43)
  {
    v120[0] = 0;
    v120[1] = 0xE000000000000000;
    sub_2695B1208();

    v120[0] = 0xD000000000000010;
    v120[1] = 0x80000002695B3A20;
    sub_269592AB8(&qword_28031D240, MEMORY[0x277CC8990]);
    v44 = v113;
    v45 = sub_2695B1318();
    MEMORY[0x26D6414B0](v45);

    v46 = v120[0];
    v47 = v120[1];
    sub_2695921A4();
    swift_allocError();
    *v48 = v46;
    v48[1] = v47;
    swift_willThrow();
    (*(v114 + 8))(v41, v44);
LABEL_16:
    v64 = v119;
    v65 = v108;
LABEL_17:
    (*(v116 + 8))(v121, v115);
    return (*(v64 + 8))(v111, v65);
  }

  v100 = v42;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v49 = sub_2695B0EF8();
  __swift_project_value_buffer(v49, qword_2814B2250);
  v50 = sub_2695B0ED8();
  v51 = sub_2695B1128();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = v100;
    _os_log_impl(&dword_269588000, v50, v51, "ActivitySegmentMetrics: assistant last active: %ld months ago", v52, 0xCu);
    v53 = v52;
    v41 = v117;
    MEMORY[0x26D641DE0](v53, -1, -1);
  }

  v54 = swift_allocObject();
  *(v54 + 16) = v104;
  v105(v54 + v38, *MEMORY[0x277CC9968], v36);
  sub_269591E84(v54);
  swift_setDeallocating();
  v103(v54 + v38, v36);
  swift_deallocClassInstance();
  v55 = v112;
  sub_2695B0CD8();

  v56 = sub_2695B0A28();
  if (v57)
  {
    v120[0] = 0;
    v120[1] = 0xE000000000000000;
    sub_2695B1208();

    strcpy(v120, "day is nil in ");
    HIBYTE(v120[1]) = -18;
    sub_269592AB8(&qword_28031D240, MEMORY[0x277CC8990]);
    v58 = v113;
    v59 = sub_2695B1318();
    MEMORY[0x26D6414B0](v59);

    v60 = v120[0];
    v61 = v120[1];
    sub_2695921A4();
    swift_allocError();
    *v62 = v60;
    v62[1] = v61;
    swift_willThrow();
    v63 = *(v114 + 8);
    v63(v55, v58);
    v63(v41, v58);
    goto LABEL_16;
  }

  v66 = v56;
  v67 = sub_2695B0ED8();
  v68 = sub_2695B1128();
  v69 = os_log_type_enabled(v67, v68);
  v64 = v119;
  v65 = v108;
  if (v69)
  {
    v70 = swift_slowAlloc();
    *v70 = 134217984;
    *(v70 + 4) = v66;
    _os_log_impl(&dword_269588000, v67, v68, "ActivitySegmentMetrics: assistant last active: %ld days ago", v70, 0xCu);
    v71 = v70;
    v41 = v117;
    MEMORY[0x26D641DE0](v71, -1, -1);
  }

  v72 = v102;
  if (v100 >= 6)
  {
    v77 = v113;
    v78 = *(v114 + 8);
    v78(v55, v113);
    v78(v41, v77);
    (*(v116 + 8))(v121, v115);
    result = (*(v64 + 8))(v111, v65);
    v79 = 3;
LABEL_29:
    *v101 = v79;
    return result;
  }

  if (v66 >= 28)
  {
    v80 = v113;
    v81 = *(v114 + 8);
    v81(v55, v113);
    v81(v41, v80);
    (*(v116 + 8))(v121, v115);
    result = (*(v64 + 8))(v111, v65);
    v79 = 4;
    goto LABEL_29;
  }

  if (v66 >= 14)
  {
    v82 = v113;
    v83 = *(v114 + 8);
    v83(v55, v113);
    v83(v41, v82);
    (*(v116 + 8))(v121, v115);
    result = (*(v64 + 8))(v111, v65);
    v79 = 5;
    goto LABEL_29;
  }

  if (v66 >= 7)
  {
    v84 = v113;
    v85 = *(v114 + 8);
    v85(v55, v113);
    v85(v41, v84);
    (*(v116 + 8))(v121, v115);
    result = (*(v64 + 8))(v111, v65);
    *v101 = 6;
  }

  else
  {
    v73 = v109;
    (*(v64 + 16))(v109, v118, v65);
    v74 = v110;

    result = sub_2695921F8(v73, v74);
    if (v72)
    {
      v75 = v113;
      v76 = *(v114 + 8);
      v76(v55, v113);
      v76(v41, v75);
      goto LABEL_17;
    }

    v86 = *(result + 16);
    if (v86)
    {
      v87 = 0;
      v88 = 32;
      do
      {
        v89 = *(result + v88);
        v90 = __CFADD__(v87, v89);
        v87 += v89;
        if (v90)
        {
          __break(1u);
          return result;
        }

        v88 += 8;
        --v86;
      }

      while (v86);
      if (v87 == 1)
      {

        v91 = v113;
        v92 = *(v114 + 8);
        v92(v55, v113);
        v92(v41, v91);
        (*(v116 + 8))(v121, v115);
        result = (*(v64 + 8))(v111, v65);
        v79 = 7;
        goto LABEL_29;
      }

      if (v87 - 4 >= 0xFFFFFFFFFFFFFFFDLL)
      {

        v95 = v113;
        v96 = *(v114 + 8);
        v96(v55, v113);
        v96(v41, v95);
        (*(v116 + 8))(v121, v115);
        result = (*(v64 + 8))(v111, v65);
        v79 = 8;
      }

      else
      {
        if (v87 < 4)
        {
          goto LABEL_39;
        }

        v97 = sub_269590F40(result);

        v98 = v113;
        v99 = *(v114 + 8);
        v99(v55, v113);
        v99(v41, v98);
        (*(v116 + 8))(v121, v115);
        result = (*(v64 + 8))(v111, v65);
        if (v97)
        {
          v79 = 10;
        }

        else
        {
          v79 = 9;
        }
      }

      goto LABEL_29;
    }

LABEL_39:

    v93 = v113;
    v94 = *(v114 + 8);
    v94(v55, v113);
    v94(v41, v93);
    (*(v116 + 8))(v121, v115);
    result = (*(v64 + 8))(v111, v65);
    *v101 = 0;
  }

  return result;
}

BOOL sub_269590F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v2++;
      v4 = v5;
      if (v5 >= 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_26959F360(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          v3 = sub_26959F360((v6 > 1), v7 + 1, 1, v3);
        }

        *(v3 + 2) = v7 + 1;
        *&v3[8 * v7 + 32] = v4;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = *(v3 + 2);

  return v8 > 2;
}

uint64_t sub_269591050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2695910C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269591138(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>, double a6@<D0>)
{
  v108 = a5;
  v99 = a4;
  v107 = a3;
  v106 = type metadata accessor for SiriUsageMetrics();
  v9 = *(*(v106 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v106);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v105 = &v96 - v14;
  MEMORY[0x28223BE20](v13);
  v101 = &v96 - v15;
  v16 = sub_2695B0A78();
  v103 = *(v16 - 8);
  v104 = v16;
  v17 = *(v103 + 64);
  MEMORY[0x28223BE20](v16);
  v102 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2695B0C78();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v100 = &v96 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v96 - v27;
  sub_2695B0A08();
  if (v29 != a6)
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v52 = sub_2695B0EF8();
    __swift_project_value_buffer(v52, qword_2814B2250);
    sub_2695929F8(a1, v12);
    v53 = sub_2695B0ED8();
    v54 = sub_2695B1128();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v109[0] = v56;
      *v55 = 136315138;
      sub_2695B0A18();
      sub_269592AB8(&qword_28031D258, MEMORY[0x277CC88A8]);
      v57 = sub_2695B1318();
      v59 = v58;
      sub_269592A5C(v12);
      v60 = sub_26959CE44(v57, v59, v109);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_269588000, v53, v54, "SiriActivityWeek.init(): metrics time interval: %s is not equal to one day", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x26D641DE0](v56, -1, -1);
      MEMORY[0x26D641DE0](v55, -1, -1);

      goto LABEL_17;
    }

    v78 = v12;
LABEL_16:
    sub_269592A5C(v78);
    goto LABEL_17;
  }

  sub_2695B09F8();
  v97 = a2;
  v30 = sub_2695B0D08();
  v31 = *(v20 + 8);
  v31(v28, v19);
  v32 = v19;
  v33 = v20;
  if ((v30 & 1) == 0)
  {
    v98 = v31;
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v61 = sub_2695B0EF8();
    __swift_project_value_buffer(v61, qword_2814B2250);
    v62 = a1;
    v63 = v105;
    sub_2695929F8(v62, v105);
    (*(v20 + 16))(v24, v107, v32);
    v64 = sub_2695B0ED8();
    v65 = sub_2695B1128();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = v63;
      v67 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v109[0] = v107;
      *v67 = 136315394;
      sub_2695B0A18();
      sub_269592AB8(&qword_28031D258, MEMORY[0x277CC88A8]);
      v68 = sub_2695B1318();
      v70 = v69;
      sub_269592A5C(v66);
      v71 = sub_26959CE44(v68, v70, v109);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      sub_269592AB8(&qword_28031D250, MEMORY[0x277CC9578]);
      v72 = sub_2695B1318();
      v73 = v32;
      v75 = v74;
      v98(v24, v73);
      v76 = sub_26959CE44(v72, v75, v109);

      *(v67 + 14) = v76;
      _os_log_impl(&dword_269588000, v64, v65, "SiriActivityWeek.init(): metrics time interval: %s is not aligned with weekEnding date: %s", v67, 0x16u);
      v77 = v107;
      swift_arrayDestroy();
      MEMORY[0x26D641DE0](v77, -1, -1);
      MEMORY[0x26D641DE0](v67, -1, -1);

      goto LABEL_17;
    }

    v98(v24, v32);
    v78 = v63;
    goto LABEL_16;
  }

  if (*(a1 + *(v106 + 20)) != 1)
  {
LABEL_17:
    v79 = 0;
    v80 = 1;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D238, &qword_2695B33C0);
  v34 = sub_2695B0D38();
  v98 = v31;
  v35 = v34;
  v36 = *(v34 - 8);
  v37 = *(v36 + 72);
  v38 = *(v36 + 80);
  v105 = v20 + 8;
  v39 = (v38 + 32) & ~v38;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2695B2770;
  (*(v36 + 104))(v40 + v39, *MEMORY[0x277CC9968], v35);
  sub_269591E84(v40);
  swift_setDeallocating();
  v41 = v35;
  v42 = v98;
  (*(v36 + 8))(v40 + v39, v41);
  swift_deallocClassInstance();
  v96 = a1;
  sub_2695B09D8();
  v43 = v102;
  v44 = v107;
  sub_2695B0CD8();

  v42(v28, v32);
  v45 = sub_2695B0A28();
  if (v46)
  {
    v109[0] = 0;
    v109[1] = 0xE000000000000000;
    sub_2695B1208();

    strcpy(v109, "day is nil in ");
    HIBYTE(v109[1]) = -18;
    sub_269592AB8(&qword_28031D240, MEMORY[0x277CC8990]);
    v47 = v104;
    v48 = sub_2695B1318();
    MEMORY[0x26D6414B0](v48);

    v49 = v109[0];
    v50 = v109[1];
    sub_2695921A4();
    swift_allocError();
    *v51 = v49;
    v51[1] = v50;
    swift_willThrow();
    (*(v103 + 8))(v43, v47);
    return;
  }

  v97 = v45;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v82 = sub_2695B0EF8();
  __swift_project_value_buffer(v82, qword_2814B2250);
  v83 = v100;
  (*(v33 + 16))(v100, v44, v32);
  v84 = v101;
  sub_2695929F8(v96, v101);
  v85 = v32;
  v86 = sub_2695B0ED8();
  v87 = sub_2695B1128();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v109[0] = v107;
    *v88 = 134218498;
    v89 = v97;
    *(v88 + 4) = v97;
    *(v88 + 12) = 2080;
    sub_269592AB8(&qword_28031D250, MEMORY[0x277CC9578]);
    v90 = sub_2695B1318();
    v92 = v91;
    v98(v83, v85);
    v93 = sub_26959CE44(v90, v92, v109);

    *(v88 + 14) = v93;
    *(v88 + 22) = 2048;
    v94 = *(v101 + *(v106 + 24));
    sub_269592A5C(v101);
    *(v88 + 24) = v94;
    _os_log_impl(&dword_269588000, v86, v87, "SiriActivityWeek: assistant valid turn count from %ld days before %s is %lu", v88, 0x20u);
    v95 = v107;
    __swift_destroy_boxed_opaque_existential_0(v107);
    MEMORY[0x26D641DE0](v95, -1, -1);
    MEMORY[0x26D641DE0](v88, -1, -1);

    (*(v103 + 8))(v43, v104);
  }

  else
  {
    sub_269592A5C(v84);

    v42(v83, v85);
    (*(v103 + 8))(v43, v104);
    v89 = v97;
  }

  v79 = 0;
  v80 = 1;
  if ((v89 & 0x8000000000000000) == 0 && v89 < v99)
  {
    v80 = 0;
    v79 = *(v96 + *(v106 + 24));
  }

LABEL_18:
  v81 = v108;
  *v108 = v79;
  *(v81 + 8) = v80;
}

uint64_t sub_269591CA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for SiriUsageMetrics();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v20, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v21 & 1) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v13 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26959F360(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 16);
    v15 = *(v8 + 24);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v19 = v14 + 1;
      v17 = v8;
      v18 = *(v8 + 16);
      result = sub_26959F360((v15 > 1), v14 + 1, 1, v17);
      v14 = v18;
      v16 = v19;
      v8 = result;
    }

    *(v8 + 16) = v16;
    *(v8 + 8 * v14 + 32) = v13;
  }

  while (v7 != v4);
  return v8;
}

void *sub_269591E34(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_269591E54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_269591E84(uint64_t a1)
{
  v2 = sub_2695B0D38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D260, &qword_2695B2810);
    v10 = sub_2695B11E8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_269592AB8(&qword_28031D268, MEMORY[0x277CC99D0]);
      v18 = sub_2695B0F58();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_269592AB8(&qword_28031D270, MEMORY[0x277CC99D0]);
          v25 = sub_2695B0FA8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2695921A4()
{
  result = qword_28031D248;
  if (!qword_28031D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D248);
  }

  return result;
}

uint64_t sub_2695921F8(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = sub_2695B0A78();
  v69 = *(v3 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2695B0C98();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2695B0D48();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2695B0C78();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v72 = v3;
  v19 = sub_2695B0EF8();
  __swift_project_value_buffer(v19, qword_2814B2250);
  (*(v15 + 16))(v18, a1, v14);
  v20 = sub_2695B0ED8();
  v21 = sub_2695B1128();
  v22 = os_log_type_enabled(v20, v21);
  v64 = v15;
  v65 = v14;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v58 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v57 = v13;
    v26 = v25;
    v70 = v25;
    *v24 = 136315138;
    sub_269592AB8(&qword_28031D250, MEMORY[0x277CC9578]);
    v27 = sub_2695B1318();
    v28 = v14;
    v30 = v29;
    v62 = *(v15 + 8);
    v62(v18, v28);
    v31 = sub_26959CE44(v27, v30, &v70);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_269588000, v20, v21, "SiriActivityWeek.init() week ending: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v32 = v26;
    v13 = v57;
    MEMORY[0x26D641DE0](v32, -1, -1);
    v33 = v24;
    a1 = v58;
    MEMORY[0x26D641DE0](v33, -1, -1);
  }

  else
  {

    v62 = *(v15 + 8);
    v62(v18, v14);
  }

  v35 = v60;
  v34 = v61;
  (*(v60 + 104))(v9, *MEMORY[0x277CC9830], v61);
  sub_2695B0CA8();
  (*(v35 + 8))(v9, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D238, &qword_2695B33C0);
  v36 = sub_2695B0D38();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2695B2780;
  v41 = v40 + v39;
  v42 = *(v37 + 104);
  v42(v41, *MEMORY[0x277CC9980], v36);
  v42(v41 + v38, *MEMORY[0x277CC99A0], v36);
  v42(v41 + 2 * v38, *MEMORY[0x277CC99A8], v36);
  sub_269591E84(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v43 = v68;
  sub_2695B0CE8();

  sub_2695B0A38();
  if (v44 & 1) != 0 || (sub_2695B0A58(), (v45) || (v46 = v43, v47 = sub_2695B0A68(), (v48))
  {

    v70 = 0;
    v71 = 0xE000000000000000;
    sub_2695B1208();
    MEMORY[0x26D6414B0](0xD000000000000031, 0x80000002695B3A40);
    sub_269592AB8(&qword_28031D240, MEMORY[0x277CC8990]);
    v49 = v72;
    v50 = sub_2695B1318();
    MEMORY[0x26D6414B0](v50);

    v46 = v70;
    v51 = v71;
    sub_2695921A4();
    swift_allocError();
    *v52 = v46;
    v52[1] = v51;
    swift_willThrow();
  }

  else
  {
    MEMORY[0x28223BE20](v47);
    *(&v56 - 6) = 0x40F5180000000000;
    *(&v56 - 5) = v13;
    *(&v56 - 4) = v43;
    *(&v56 - 3) = a1;
    *(&v56 - 2) = 7;
    v54 = v59;
    v55 = sub_269591CA0(sub_2695929D4, (&v56 - 8), v63);
    v49 = v72;
    if (!v54)
    {
      v46 = v55;

      (*(v69 + 8))(v43, v49);
      (*(v66 + 8))(v13, v67);
      v62(a1, v65);
      return v46;
    }
  }

  (*(v69 + 8))(v43, v49);
  (*(v66 + 8))(v13, v67);
  v62(a1, v65);
  return v46;
}

uint64_t sub_2695929F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriUsageMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269592A5C(uint64_t a1)
{
  v2 = type metadata accessor for SiriUsageMetrics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269592AB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269592B00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_269592B48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269592B94()
{
  sub_2695B1208();
  MEMORY[0x26D6414B0](0xD000000000000023, 0x80000002695B3AC0);
  v1 = *v0;
  v2 = 0xEB0000000072656DLL;
  v3 = 0x6F7473754377656ELL;
  v4 = 0x80000002695B36F0;
  v5 = 0xD00000000000001ALL;
  if (v1 != 6)
  {
    v5 = 7104878;
    v4 = 0xE300000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x73646F50726961;
  if (v1 != 4)
  {
    v7 = 0x6D6F44736D6D6F63;
    v6 = 0xED0000746E616E69;
  }

  if (*v0 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 7496035;
  if (v1 != 2)
  {
    v9 = 0xD000000000000011;
    v8 = 0x80000002695B36C0;
  }

  if (*v0)
  {
    v3 = 0x6F69746174636964;
    v2 = 0xE90000000000006ELL;
  }

  if (*v0 > 1u)
  {
    v3 = v9;
    v2 = v8;
  }

  if (*v0 <= 3u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v0 <= 3u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x26D6414B0](v10, v11);

  MEMORY[0x26D6414B0](0xD000000000000014, 0x80000002695B3AF0);
  v12 = &v0[*(type metadata accessor for NewCustomerSegment.Result() + 20)];
  v13 = sub_26958BB30();
  MEMORY[0x26D6414B0](v13);

  MEMORY[0x26D6414B0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_269592D74(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 200) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for NewCustomerSegment.Result();
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  *(v4 + 80) = EnablementStatus;
  v8 = *(EnablementStatus - 8);
  *(v4 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v10 = sub_2695B0C18();
  *(v4 + 104) = v10;
  v11 = *(v10 - 8);
  *(v4 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D278, &qword_2695B3490) - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v14 = sub_2695B0C78();
  *(v4 + 152) = v14;
  v15 = *(v14 - 8);
  *(v4 + 160) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269592F98, 0, 0);
}

uint64_t sub_269592F98()
{
  v54 = v0;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = sub_2695B0EF8();
  *(v0 + 176) = __swift_project_value_buffer(v7, qword_2814B2250);
  (*(v2 + 16))(v1, v6, v3);
  sub_269595A7C(v5, v4, &qword_28031D278, &qword_2695B3490);
  v8 = sub_2695B0ED8();
  v9 = sub_2695B1128();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);
  if (v10)
  {
    v51 = v9;
    v52 = v8;
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v45 = *(v0 + 104);
    v17 = *(v0 + 88);
    v48 = *(v0 + 136);
    v49 = *(v0 + 80);
    v47 = *(v0 + 200);
    v46 = *(v0 + 144);
    v18 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v18 = 136315650;
    sub_2695AC8F0(v16);
    v19 = sub_2695B0BB8();
    v21 = v20;
    (*(v15 + 8))(v16, v45);
    (*(v12 + 8))(v11, v14);
    v22 = sub_26959CE44(v19, v21, &v53);

    *(v18 + 4) = v22;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v47;
    *(v18 + 18) = 2080;
    sub_269595A7C(v46, v48, &qword_28031D278, &qword_2695B3490);
    v23 = (*(v17 + 48))(v48, 1, v49);
    v24 = *(v0 + 136);
    if (v23 == 1)
    {
      sub_269595B54(*(v0 + 136), &qword_28031D278, &qword_2695B3490);
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      v27 = *(v0 + 136);
      v26 = sub_26958BB30();
      v25 = v28;
      sub_269594868(v24, type metadata accessor for SiriFirstEnablementStatus);
    }

    sub_269595B54(*(v0 + 144), &qword_28031D278, &qword_2695B3490);
    v29 = sub_26959CE44(v26, v25, &v53);

    *(v18 + 20) = v29;
    _os_log_impl(&dword_269588000, v52, v51, "Starting NewCustomerSegment.calculate(now: %s, currentAssistantEnabled: %{BOOL}d, lastKnown: %s", v18, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v50, -1, -1);
    MEMORY[0x26D641DE0](v18, -1, -1);
  }

  else
  {

    sub_269595B54(v13, &qword_28031D278, &qword_2695B3490);
    (*(v12 + 8))(v11, v14);
  }

  v30 = *(v0 + 128);
  v31 = *(v0 + 80);
  v32 = *(v0 + 88);
  sub_269595A7C(*(v0 + 32), v30, &qword_28031D278, &qword_2695B3490);
  v33 = *(v32 + 48);
  v34 = v33(v30, 1, v31);
  v35 = *(v0 + 128);
  v36 = *(v0 + 96);
  if (v34 == 1)
  {
    v37 = *(v0 + 80);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
    (*(*(v38 - 8) + 56))(v36, 1, 3, v38);
    if (v33(v35, 1, v37) != 1)
    {
      sub_269595B54(*(v0 + 128), &qword_28031D278, &qword_2695B3490);
    }
  }

  else
  {
    sub_2695948C8(*(v0 + 128), *(v0 + 96), type metadata accessor for SiriFirstEnablementStatus);
  }

  v39 = swift_task_alloc();
  *(v0 + 184) = v39;
  *v39 = v0;
  v39[1] = sub_269593464;
  v40 = *(v0 + 96);
  v41 = *(v0 + 72);
  v42 = *(v0 + 200);
  v43 = *(v0 + 24);

  return sub_269593B5C(v41, v43, v42, v40);
}

uint64_t sub_269593464()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_269593800;
  }

  else
  {
    v3 = sub_269593578;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_269593578()
{
  v26 = v0;
  v1 = v0[22];
  sub_269594800(v0[9], v0[8], type metadata accessor for NewCustomerSegment.Result);
  v2 = sub_2695B0ED8();
  v3 = sub_2695B1128();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  v6 = v0[8];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26959CE44(0xD000000000000031, 0x80000002695B3A80, &v25);
    *(v7 + 12) = 2080;
    v9 = sub_269592B94();
    v11 = v10;
    sub_269594868(v6, type metadata accessor for NewCustomerSegment.Result);
    v12 = sub_26959CE44(v9, v11, &v25);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_269588000, v2, v3, "Ended NewCustomerSegment.%s -> %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v8, -1, -1);
    MEMORY[0x26D641DE0](v7, -1, -1);
  }

  else
  {

    sub_269594868(v6, type metadata accessor for NewCustomerSegment.Result);
  }

  sub_269594868(v5, type metadata accessor for SiriFirstEnablementStatus);
  sub_2695948C8(v0[9], v0[2], type metadata accessor for NewCustomerSegment.Result);
  v13 = v0[21];
  v14 = v0[17];
  v15 = v0[18];
  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[12];
  v20 = v0[8];
  v19 = v0[9];
  v22 = v0[6];
  v21 = v0[7];

  v23 = v0[1];

  return v23();
}

uint64_t sub_269593800()
{
  v34 = v0;
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[6];
  v3 = v0[7];
  sub_269594800(v0[12], &v3[*(v0[5] + 20)], type metadata accessor for SiriFirstEnablementStatus);
  *v3 = 7;
  sub_269594800(v3, v4, type metadata accessor for NewCustomerSegment.Result);
  MEMORY[0x26D641C60](v1);
  v5 = sub_2695B0ED8();
  v6 = sub_2695B1128();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  v9 = v0[12];
  v10 = v0[6];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_26959CE44(0xD000000000000031, 0x80000002695B3A80, &v33);
    *(v11 + 12) = 2112;
    MEMORY[0x26D641C60](v8);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    *(v11 + 22) = 2080;
    v15 = sub_269592B94();
    v32 = v9;
    v17 = v16;
    sub_269594868(v10, type metadata accessor for NewCustomerSegment.Result);
    v18 = sub_26959CE44(v15, v17, &v33);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_269588000, v5, v6, "Ended NewCustomerSegment.%s with error: %@ -> %s", v11, 0x20u);
    sub_269595B54(v12, &qword_28031D280, &unk_2695B28C0);
    MEMORY[0x26D641DE0](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v13, -1, -1);
    MEMORY[0x26D641DE0](v11, -1, -1);

    v19 = v32;
  }

  else
  {

    sub_269594868(v10, type metadata accessor for NewCustomerSegment.Result);
    v19 = v9;
  }

  sub_269594868(v19, type metadata accessor for SiriFirstEnablementStatus);
  sub_2695948C8(v0[7], v0[2], type metadata accessor for NewCustomerSegment.Result);
  v20 = v0[21];
  v21 = v0[17];
  v22 = v0[18];
  v24 = v0[15];
  v23 = v0[16];
  v25 = v0[12];
  v27 = v0[8];
  v26 = v0[9];
  v29 = v0[6];
  v28 = v0[7];

  v30 = v0[1];

  return v30();
}

uint64_t sub_269593B5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 112) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D288, &qword_2695B28D0) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v7 = sub_2695B0C78();
  *(v4 + 56) = v7;
  v8 = *(v7 - 8);
  *(v4 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D290, &qword_2695B28D8) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269593CCC, 0, 0);
}

uint64_t sub_269593CCC()
{
  v1 = *(v0 + 80);
  sub_269594800(*(v0 + 32), v1, type metadata accessor for SiriFirstEnablementStatus);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  *(v0 + 88) = v2;
  v3 = *(v2 - 8);
  *(v0 + 96) = v3;
  v4 = (*(v3 + 48))(v1, 3, v2);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (qword_2814B1FD8 != -1)
      {
        swift_once();
      }

      v25 = sub_2695B0EF8();
      __swift_project_value_buffer(v25, qword_2814B2250);
      v26 = sub_2695B0ED8();
      v27 = sub_2695B1128();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_269588000, v26, v27, "NewCustomerSegment - previously determined not a new customer", v28, 2u);
        MEMORY[0x26D641DE0](v28, -1, -1);
      }

      v29 = *(v0 + 16);

      goto LABEL_20;
    }

    if (*(v0 + 112))
    {
      if (qword_2814B1FD8 != -1)
      {
        swift_once();
      }

      v12 = sub_2695B0EF8();
      __swift_project_value_buffer(v12, qword_2814B2250);
      v13 = sub_2695B0ED8();
      v14 = sub_2695B1128();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_269588000, v13, v14, "NewCustomerSegment - transitioned from disabled to enabled, new customer", v15, 2u);
        MEMORY[0x26D641DE0](v15, -1, -1);
      }

      v16 = *(v0 + 56);
      v17 = *(v0 + 64);
      v19 = *(v0 + 16);
      v18 = *(v0 + 24);

      v20 = v19 + *(type metadata accessor for NewCustomerSegment.Result() + 20);
      (*(v17 + 16))(v20, v18, v16);
      v21 = v20;
      goto LABEL_38;
    }

    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v32 = sub_2695B0EF8();
    __swift_project_value_buffer(v32, qword_2814B2250);
    v33 = sub_2695B0ED8();
    v34 = sub_2695B1128();
    if (!os_log_type_enabled(v33, v34))
    {
LABEL_30:
      v38 = *(v0 + 16);

      v21 = v38 + *(type metadata accessor for NewCustomerSegment.Result() + 20);
      v30 = 7;
      v31 = 2;
      goto LABEL_39;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "NewCustomerSegment - always was and still is disabled, not a Siri user.";
LABEL_29:
    _os_log_impl(&dword_269588000, v33, v34, v36, v35, 2u);
    MEMORY[0x26D641DE0](v35, -1, -1);
    goto LABEL_30;
  }

  if (!v4)
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 24);
    v8 = *(*(v0 + 64) + 32);
    v8(*(v0 + 72), *(v0 + 80), *(v0 + 56));
    v9 = sub_2695B0C98();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = sub_2695B0D68();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = sub_2695AB4A4(v7, v5, v6);
    sub_269595B54(v6, &unk_28031D360, &unk_2695B2B50);
    sub_269595B54(v5, &qword_28031D288, &qword_2695B28D0);
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v39 = sub_2695B0EF8();
    __swift_project_value_buffer(v39, qword_2814B2250);
    v40 = sub_2695B0ED8();
    v41 = sub_2695B1128();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v11;
      _os_log_impl(&dword_269588000, v40, v41, "NewCustomerSegment - was recently enabled at previous check, %ld days ago", v42, 0xCu);
      MEMORY[0x26D641DE0](v42, -1, -1);
    }

    v43 = *(v0 + 72);
    if (v11 > 28)
    {
      v29 = *(v0 + 16);
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_20:
      v21 = v29 + *(type metadata accessor for NewCustomerSegment.Result() + 20);
      v30 = 7;
      v31 = 3;
LABEL_39:
      v47 = *(v0 + 72);
      v48 = *(v0 + 80);
      v50 = *(v0 + 40);
      v49 = *(v0 + 48);
      v51 = *(v0 + 16);
      (*(*(v0 + 96) + 56))(v21, v31, 3, *(v0 + 88));
      *v51 = v30;

      v52 = *(v0 + 8);

      return v52();
    }

    v44 = *(v0 + 56);
    v45 = *(v0 + 16);
    v46 = v45 + *(type metadata accessor for NewCustomerSegment.Result() + 20);
    v8(v46, v43, v44);
    v21 = v46;
LABEL_38:
    v31 = 0;
    v30 = 0;
    goto LABEL_39;
  }

  if ((*(v0 + 112) & 1) == 0)
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v37 = sub_2695B0EF8();
    __swift_project_value_buffer(v37, qword_2814B2250);
    v33 = sub_2695B0ED8();
    v34 = sub_2695B1128();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_30;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "NewCustomerSegment 0 never checked before, assume current disabled state is the long term status quo.";
    goto LABEL_29;
  }

  v22 = swift_task_alloc();
  *(v0 + 104) = v22;
  *v22 = v0;
  v22[1] = sub_26959442C;
  v23 = *(v0 + 24);

  return sub_269595660(v23);
}

uint64_t sub_26959442C(char a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 113) = a1;

  return MEMORY[0x2822009F8](sub_26959452C, 0, 0);
}

uint64_t sub_26959452C()
{
  if (*(v0 + 113) == 1)
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v1 = sub_2695B0EF8();
    __swift_project_value_buffer(v1, qword_2814B2250);
    v2 = sub_2695B0ED8();
    v3 = sub_2695B1128();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_269588000, v2, v3, "NewCustomerSegment - never checked before, has evidence of recent onboarding.", v4, 2u);
      MEMORY[0x26D641DE0](v4, -1, -1);
    }

    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);

    v9 = v8 + *(type metadata accessor for NewCustomerSegment.Result() + 20);
    (*(v6 + 16))(v9, v7, v5);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v12 = sub_2695B0EF8();
    __swift_project_value_buffer(v12, qword_2814B2250);
    v13 = sub_2695B0ED8();
    v14 = sub_2695B1128();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_269588000, v13, v14, "NewCustomerSegment - never checked before, assume current enabled state is the long term status quo.", v15, 2u);
      MEMORY[0x26D641DE0](v15, -1, -1);
    }

    v16 = *(v0 + 16);

    v9 = v16 + *(type metadata accessor for NewCustomerSegment.Result() + 20);
    v11 = 7;
    v10 = 3;
  }

  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v20 = *(v0 + 40);
  v19 = *(v0 + 48);
  v21 = *(v0 + 16);
  (*(*(v0 + 96) + 56))(v9, v10, 3, *(v0 + 88));
  *v21 = v11;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t type metadata accessor for NewCustomerSegment.Result()
{
  result = qword_28031D2B8;
  if (!qword_28031D2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269594800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269594868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2695948C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269594930(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 7)
  {
    if (v5 != 7)
    {
      return 0;
    }
  }

  else if (v5 == 7 || (sub_2695A438C(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for NewCustomerSegment.Result() + 20);

  return sub_26958D5F4(&a1[v6], &a2[v6]);
}

uint64_t sub_2695949B4(uint64_t a1)
{
  v1[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D298, &qword_2695B28F0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2A0, &qword_2695B28F8);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2A8, &unk_2695B2900);
  v1[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v10 = sub_2695B0D38();
  v1[13] = v10;
  v11 = *(v10 - 8);
  v1[14] = v11;
  v12 = *(v11 + 64) + 15;
  v1[15] = swift_task_alloc();
  v13 = sub_2695B0C78();
  v1[16] = v13;
  v14 = *(v13 - 8);
  v1[17] = v14;
  v15 = *(v14 + 64) + 15;
  v1[18] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v1[19] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269594C24, 0, 0);
}

uint64_t sub_269594C24()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[3];
  sub_2695B0E98();
  sub_2695959D8();
  v6 = sub_2695B0E78();
  v0[21] = v6;
  (*(v3 + 104))(v2, *MEMORY[0x277CC9968], v4);
  sub_2695ABE9C(-28, v1);
  (*(v3 + 8))(v2, v4);
  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[3];
  sub_269595A24();
  result = sub_2695B0F98();
  if (result)
  {
    v23 = v0[20];
    v25 = v0[19];
    v11 = v0[17];
    v12 = v0[16];
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    v16 = v0[3];
    v17 = *(v11 + 32);
    v17(v13, v0[18], v12);
    (*(v11 + 16))(v13 + *(v15 + 48), v16, v12);
    sub_269595A7C(v13, v14, &qword_28031D2A8, &unk_2695B2900);
    v22 = *(v15 + 48);
    v17(v23, v14, v12);
    v24 = v6;
    v18 = *(v11 + 8);
    v18(v14 + v22, v12);
    sub_269595AE4(v13, v14);
    v17(v23 + *(v25 + 36), v14 + *(v15 + 48), v12);
    v18(v14, v12);
    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    v19[1] = sub_269594F38;
    v20 = v0[20];
    v21 = v0[9];

    return sub_26958E770(v21, v24, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269594F38()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_26959557C;
  }

  else
  {
    v3 = sub_26959504C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26959504C()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  sub_2695B10C8();
  v0[24] = 0;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_269595104;
  v6 = v0[6];
  v7 = v0[4];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v7);
}

uint64_t sub_269595104()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_269595200, 0, 0);
}

uint64_t sub_269595200(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = v4;
  v5 = v4[2];
  v6 = v4[24];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (__OFADD__(v6++, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4[2];
  a1 = sub_2695B0D98();
  if (!a1)
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

  v9 = a1;
  v10 = [a1 getAnyEventType];

  if (v10 != 47)
  {
    v4[24] = v6;
    v33 = *(MEMORY[0x277D85798] + 4);
    v34 = swift_task_alloc();
    v4[25] = v34;
    *v34 = v4;
    v34[1] = sub_269595104;
    v35 = v4[6];
    a4 = v4[4];
    a1 = v4 + 2;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

LABEL_5:
  (*(v4[5] + 8))(v4[6], v4[4]);
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v11 = sub_2695B0EF8();
  __swift_project_value_buffer(v11, qword_2814B2250);
  v12 = sub_2695B0ED8();
  v13 = sub_2695B1128();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v4[20];
  v15 = v4[21];
  v17 = v4[8];
  v18 = v4[9];
  v19 = v4[7];
  if (v14)
  {
    v38 = v4[20];
    v37 = v4[9];
    v20 = swift_slowAlloc();
    v36 = v19;
    v21 = swift_slowAlloc();
    v39 = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_26959CE44(0xD000000000000026, 0x80000002695B3B10, &v39);
    *(v20 + 12) = 1024;
    *(v20 + 14) = v5 != 0;
    *(v20 + 18) = 2048;
    *(v20 + 20) = v6;
    _os_log_impl(&dword_269588000, v12, v13, "NewCustomerSegment.%s result: %{BOOL}d from %ld events", v20, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x26D641DE0](v21, -1, -1);
    MEMORY[0x26D641DE0](v20, -1, -1);

    (*(v17 + 8))(v37, v36);
    v22 = v38;
  }

  else
  {

    (*(v17 + 8))(v18, v19);
    v22 = v16;
  }

  sub_269595B54(v22, &qword_28031D1B8, &qword_2695B2538);
  v23 = v5 != 0;
  v24 = v4[20];
  v25 = v4[18];
  v26 = v4[15];
  v28 = v4[11];
  v27 = v4[12];
  v29 = v4[9];
  v30 = v4[6];

  v31 = v4[1];

  return v31(v23);
}

uint64_t sub_26959557C()
{
  v1 = *(v0 + 160);

  sub_269595B54(v1, &qword_28031D1B8, &qword_2695B2538);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_269595660(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2695956F4;

  return sub_2695949B4(a1);
}

uint64_t sub_2695956F4(char a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_269595830, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_269595830()
{
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_2695B0EF8();
  __swift_project_value_buffer(v2, qword_2814B2250);
  MEMORY[0x26D641C60](v1);
  v3 = sub_2695B0ED8();
  v4 = sub_2695B1138();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 24);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x26D641C60](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_269588000, v3, v4, "Failed to check SELF events for Siri grading opt-in: %@", v7, 0xCu);
    sub_269595B54(v8, &qword_28031D280, &unk_2695B28C0);
    MEMORY[0x26D641DE0](v8, -1, -1);
    MEMORY[0x26D641DE0](v7, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0);
}

unint64_t sub_2695959D8()
{
  result = qword_28031D2B0;
  if (!qword_28031D2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28031D2B0);
  }

  return result;
}

unint64_t sub_269595A24()
{
  result = qword_28031D390;
  if (!qword_28031D390)
  {
    sub_2695B0C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D390);
  }

  return result;
}

uint64_t sub_269595A7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269595AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2A8, &unk_2695B2900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269595B54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_269595BDC()
{
  sub_269595C60();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SiriFirstEnablementStatus();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269595C60()
{
  if (!qword_28031D2C8)
  {
    v0 = sub_2695B1198();
    if (!v1)
    {
      atomic_store(v0, &qword_28031D2C8);
    }
  }
}

uint64_t sub_269595CB0()
{
  v0 = sub_2695B0EF8();
  __swift_allocate_value_buffer(v0, qword_2814B2250);
  __swift_project_value_buffer(v0, qword_2814B2250);
  return sub_2695B0EE8();
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

uint64_t sub_269595D94@<X0>(uint64_t *a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v50 = a4;
  v56 = a1;
  v57 = a2;
  v5 = sub_2695B0F08();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v50 - v9;
  v10 = sub_2695B0F48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D300, &qword_2695B2B68);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v50 - v20;
  v22 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D308, &qword_2695B2B70);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2695B29B0;
  v24 = sub_2695B10B8();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v57;
  v25[5] = a3;
  v25[6] = sub_26959EC50;
  v25[7] = v23;
  v25[8] = v22;
  swift_retain_n();

  v26 = v22;
  sub_2695965B0(0, 0, v21, &unk_2695B2B80, v25);

  sub_2695B0F28();
  v27 = v56;
  sub_2695B0F38();
  v28 = *(v11 + 8);
  v28(v15, v10);
  v57 = v26;
  sub_2695B1168();
  v28(v17, v10);
  if (sub_2695B0F18())
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v29 = sub_2695B0EF8();
    __swift_project_value_buffer(v29, qword_2814B2250);
    v31 = v53;
    v30 = v54;
    v32 = *(v54 + 16);
    v33 = v55;
    v32(v53, v27, v55);
    v34 = sub_2695B0ED8();
    v35 = sub_2695B1148();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v58 = v56;
      *v36 = 136315138;
      LODWORD(v51) = v35;
      v32(v52, v31, v33);
      v37 = sub_2695B0FC8();
      v39 = v38;
      (*(v30 + 8))(v31, v33);
      v40 = sub_26959CE44(v37, v39, &v58);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_269588000, v34, v51, "a thread was blocked by a semaphore awaiting a Task and timed out after %s seconds", v36, 0xCu);
      v41 = v56;
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x26D641DE0](v41, -1, -1);
      MEMORY[0x26D641DE0](v36, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v31, v33);
    }

    v43 = "t result from async Task";
    v44 = 0xD00000000000002FLL;
    goto LABEL_10;
  }

  v42 = *(v23 + 24);
  if (v42 == 2)
  {
    v43 = "ot be calculated from ";
    v44 = 0xD000000000000028;
LABEL_10:
    v45 = v43 | 0x8000000000000000;
    sub_26959ED78();
    swift_allocError();
    *v46 = v44;
    v46[1] = v45;
    swift_willThrow();
  }

  v48 = *(v23 + 16);
  sub_26959CE1C(v48, *(v23 + 24));

  v49 = v50;
  *v50 = v48;
  v49[1] = v42;
  return result;
}

uint64_t sub_269596324(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a6;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v8[6] = v11;
  *v11 = v8;
  v11[1] = sub_269596424;

  return v13(a1);
}

uint64_t sub_269596424()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_269596520, 0, 0);
}

uint64_t sub_269596520()
{
  v10 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3[1];
  v8 = *v3;
  v9 = v5;
  sub_26959CE1C(v8, v5);
  v4(&v8);
  sub_26959F0F8(v8, v9);
  sub_2695B1178();
  v6 = v0[1];

  return v6();
}

uint64_t sub_2695965B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D300, &qword_2695B2B68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26959EDCC(a3, v27 - v11, &qword_28031D300, &qword_2695B2B68);
  v13 = sub_2695B10B8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26959EE34(v12, &qword_28031D300, &qword_2695B2B68);
  }

  else
  {
    sub_2695B10A8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2695B1088();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2695B0FD8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_26959EE34(a3, &qword_28031D300, &qword_2695B2B68);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26959EE34(a3, &qword_28031D300, &qword_2695B2B68);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2695968A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = sub_2695B0C78();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  sub_26959EDCC(a2, v10, &unk_28031D370, &unk_2695B2800);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_26959EE34(v10, &unk_28031D370, &unk_2695B2800);
    return sub_26959EDCC(v28, v29, &unk_28031D370, &unk_2695B2800);
  }

  else
  {
    v21 = *(v12 + 32);
    v21(v18, v10, v11);
    sub_26959EDCC(v28, v8, &unk_28031D370, &unk_2695B2800);
    if (v19(v8, 1, v11) == 1)
    {
      sub_26959EE34(v8, &unk_28031D370, &unk_2695B2800);
      v22 = v29;
      v21(v29, v18, v11);
      return (*(v12 + 56))(v22, 0, 1, v11);
    }

    else
    {
      v21(v16, v8, v11);
      sub_26959EB0C(&qword_28031D390);
      v23 = sub_2695B0F88();
      v24 = (v23 & 1) == 0;
      if (v23)
      {
        v25 = v16;
      }

      else
      {
        v25 = v18;
      }

      if (v24)
      {
        v26 = v16;
      }

      else
      {
        v26 = v18;
      }

      (*(v12 + 8))(v25, v11);
      v27 = v29;
      v21(v29, v26, v11);
      return (*(v12 + 56))(v27, 0, 1, v11);
    }
  }
}

void static SegmentationTask.perform()(uint64_t *a1@<X8>)
{
  v4 = sub_2695B0F08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = 60;
  (*(v5 + 104))(v8, *MEMORY[0x277D85188], v4);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_269595D94(v8, &stru_2695B29E8, v9, &v22);
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v5 + 8))(v8, v4);

    v11 = v22;
    v10 = v23;
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v12 = sub_2695B0EF8();
    __swift_project_value_buffer(v12, qword_2814B2250);
    sub_26959CE1C(v11, v10);
    v13 = sub_2695B0ED8();
    v14 = sub_2695B1128();
    sub_26959CE30(v11, v10);
    if (os_log_type_enabled(v13, v14))
    {
      v21 = a1;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      if (v10)
      {
        if (v10 == 1)
        {
          v17 = 0xE700000000000000;
          v18 = 0x64657070696B73;
        }

        else
        {
          v22 = 0x3A6572756C696166;
          v23 = 0xE900000000000020;
          sub_26959CE1C(v11, v10);
          MEMORY[0x26D6414B0](v11, v10);
          sub_26959CE30(v11, v10);
          v18 = v22;
          v17 = v23;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        v18 = 0x73736563637573;
      }

      v19 = sub_26959CE44(v18, v17, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_269588000, v13, v14, "SegmentationTask.perform() result: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x26D641DE0](v16, -1, -1);
      MEMORY[0x26D641DE0](v15, -1, -1);

      a1 = v21;
    }

    else
    {
    }

    *a1 = v11;
    a1[1] = v10;
  }
}

uint64_t sub_269596EFC(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = sub_269596F9C;

  return static SegmentationTask.performAsync()(a1);
}

uint64_t sub_269596F9C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2695970D0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2695970D0()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_2695B1208();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x26D6414B0](0x687420726F727245, 0xEE00203A6E776F72);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031CF98, qword_2695B2630);
  sub_2695B1268();

  v3 = v0[3];
  *v2 = v0[2];
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t static SegmentationTask.performAsync()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_2695B0B48();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = sub_2695B0C78();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269597300, 0, 0);
}

uint64_t sub_269597300()
{
  if (_s16SiriUserSegments16SegmentationTaskC9isEnabledSbyFZ_0())
  {
    v1 = v0[19];
    v2 = v0[20];
    sub_2695B0C58();
    sub_26959C2FC(v1, v2);
    v4 = v0[18];
    v3 = v0[19];
    v5 = v0[17];
    v10 = v0[16];
    v11 = *(v4 + 8);
    v0[21] = v11;
    v0[22] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v3, v5);
    type metadata accessor for SegmentStore();
    sub_26958A570(v10);
    v13 = objc_opt_self();
    v14 = [v13 sharedPreferences];
    v15 = [v14 assistantIsEnabled];

    v16 = [v13 sharedPreferences];
    v17 = [v16 dictationIsEnabled];

    v0[5] = &type metadata for AIMLInstrumentationStreamSource;
    v0[6] = &off_287A1A368;
    v0[10] = &type metadata for ITunesCloudMusicSubscriptionStatusController;
    v0[11] = &off_287A19D98;
    v18 = swift_task_alloc();
    v0[23] = v18;
    if (v17)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    *v18 = v0;
    v18[1] = sub_26959757C;
    v20 = v0[20];
    v21 = v0[16];
    v22 = v0[13];

    return sub_26959781C(v20, v21, 7, v19 | v15, (v0 + 2), (v0 + 7));
  }

  else
  {
    *v0[12] = xmmword_2695B29C0;
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[16];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_26959757C()
{
  v2 = *v1;
  v3 = (*v1)[23];
  v12 = *v1;
  (*v1)[24] = v0;

  v5 = v2[21];
  v4 = v2[22];
  if (v0)
  {
    v6 = v2[20];
    v7 = v2[17];
    (*(v2[15] + 8))(v2[16], v2[14]);
    v5(v6, v7);
    v8 = sub_269597788;
  }

  else
  {
    v9 = v2[20];
    v10 = v2[17];
    (*(v2[15] + 8))(v2[16], v2[14]);
    v5(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 7);
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
    v8 = sub_269597708;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_269597708()
{
  v1 = v0[12];
  *v1 = 0;
  v1[1] = 0;
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_269597788()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26959781C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 160) = a6;
  *(v7 + 168) = v6;
  *(v7 + 54) = a4;
  *(v7 + 144) = a3;
  *(v7 + 152) = a5;
  *(v7 + 128) = a1;
  *(v7 + 136) = a2;
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  *(v7 + 176) = EnablementStatus;
  v9 = *(EnablementStatus - 8);
  *(v7 + 184) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  v11 = type metadata accessor for SegmentsSummary();
  *(v7 + 200) = v11;
  v12 = *(v11 - 8);
  *(v7 + 208) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D278, &qword_2695B3490) - 8) + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  v15 = type metadata accessor for NewCustomerSegment.Result();
  *(v7 + 256) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v7 + 264) = swift_task_alloc();
  SeenResult = type metadata accessor for SegmentFlagLastSeenResult();
  *(v7 + 272) = SeenResult;
  v18 = *(*(SeenResult - 8) + 64) + 15;
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2A8, &unk_2695B2900);
  *(v7 + 304) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  *(v7 + 328) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v7 + 336) = swift_task_alloc();
  v23 = type metadata accessor for SiriUsageMetrics();
  *(v7 + 344) = v23;
  v24 = *(v23 - 8);
  *(v7 + 352) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2D0, &unk_2695B2B20) - 8) + 64) + 15;
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  *(v7 + 416) = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 504) = swift_task_alloc();
  *(v7 + 512) = swift_task_alloc();
  *(v7 + 520) = swift_task_alloc();
  *(v7 + 528) = swift_task_alloc();
  *(v7 + 536) = swift_task_alloc();
  *(v7 + 544) = swift_task_alloc();
  *(v7 + 552) = swift_task_alloc();
  *(v7 + 560) = swift_task_alloc();
  *(v7 + 568) = swift_task_alloc();
  *(v7 + 576) = swift_task_alloc();
  *(v7 + 584) = swift_task_alloc();
  *(v7 + 592) = swift_task_alloc();
  *(v7 + 600) = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2D8, &qword_2695B2B30) - 8) + 64) + 15;
  *(v7 + 608) = swift_task_alloc();
  *(v7 + 616) = swift_task_alloc();
  v30 = sub_2695B0C78();
  *(v7 + 624) = v30;
  v31 = *(v30 - 8);
  *(v7 + 632) = v31;
  v32 = *(v31 + 64) + 15;
  *(v7 + 640) = swift_task_alloc();
  *(v7 + 648) = swift_task_alloc();
  *(v7 + 656) = swift_task_alloc();
  *(v7 + 664) = swift_task_alloc();
  *(v7 + 672) = swift_task_alloc();
  *(v7 + 680) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269597D8C, 0, 0);
}

uint64_t sub_269597D8C()
{
  v47 = v0;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[85];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[16];
  v5 = sub_2695B0EF8();
  v0[86] = __swift_project_value_buffer(v5, qword_2814B2250);
  v6 = *(v2 + 16);
  v0[87] = v6;
  v0[88] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_2695B0ED8();
  v8 = sub_2695B1128();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[85];
  v11 = v0[79];
  v12 = &unk_2695B2000;
  v13 = v0[78];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46[0] = v45;
    *v14 = 136315138;
    sub_26959EB0C(&qword_28031D250);
    v15 = sub_2695B1318();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v13);
    v19 = v15;
    v12 = &unk_2695B2000;
    v20 = sub_26959CE44(v19, v17, v46);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_269588000, v7, v8, "SegmentationTask.perform() calculationDate: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x26D641DE0](v45, -1, -1);
    MEMORY[0x26D641DE0](v14, -1, -1);
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v13);
  }

  v0[89] = v18;
  v21 = v0[76];
  v22 = v0[17];
  v23 = *(v0[26] + 56);
  v23(v0[77], 1, 1, v0[25]);
  type metadata accessor for SegmentStore();
  sub_26958A8F0(v22, v21);
  v24 = v0[77];
  v25 = v0[76];
  v23(v25, 0, 1, v0[25]);
  sub_26959EAA4(v25, v24, &qword_28031D2D8, &qword_2695B2B30);
  v26 = v0[77];
  v28 = v0[25];
  v27 = v0[26];
  v29 = *(v27 + 48);
  v0[90] = v29;
  v0[91] = (v27 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v29(v26, 1, v28))
  {
    (*(v0[79] + 56))(v0[75], 1, 1, v0[78]);
  }

  else
  {
    sub_26959EDCC(v26 + *(v28 + 28), v0[75], &unk_28031D370, &unk_2695B2800);
  }

  v30 = sub_2695B0ED8();
  v31 = sub_2695B1128();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v0[75];
    v33 = v0[74];
    v34 = v0[52];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46[0] = v36;
    *v35 = v12[243];
    swift_beginAccess();
    sub_26959EDCC(v32, v33, &unk_28031D370, &unk_2695B2800);
    v37 = sub_2695B0FC8();
    v39 = sub_26959CE44(v37, v38, v46);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_269588000, v30, v31, "SegmentationTask: initial assistantLastActive: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x26D641DE0](v36, -1, -1);
    MEMORY[0x26D641DE0](v35, -1, -1);
  }

  v40 = swift_task_alloc();
  v0[92] = v40;
  *v40 = v0;
  v40[1] = sub_269598334;
  v41 = v0[18];
  v42 = v0[19];
  v43 = v0[16];

  return sub_2695A7E94(v43, v41, v42);
}

uint64_t sub_269598334(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 736);
  v7 = *v2;
  *(v3 + 744) = a1;
  *(v3 + 752) = v1;

  if (v1)
  {
    v5 = sub_269599624;
  }

  else
  {
    v5 = sub_26959844C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26959844C()
{
  v202 = v0;
  v1 = v0[93];
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[84];
  v5 = v0[78];
  v6 = v0[75];
  v7 = v0[72];
  v8 = *(v0 + 27);
  v9 = v0[16];
  type metadata accessor for ActivitySegmentCalculator();
  inited = swift_initStackObject();
  v0[95] = inited;
  *(inited + 16) = v8 & 1;
  *(inited + 17) = HIBYTE(v8) & 1;
  v11 = 1;
  swift_beginAccess();
  sub_26959EDCC(v6, v7, &unk_28031D370, &unk_2695B2800);
  v3(v4, v9, v5);
  v12 = *(v1 + 16);

  v198 = v0;
  if (v12)
  {
    v14 = v0[43];
    v13 = v0[44];
    v193 = v0[79] + 8;
    v15 = v0[93] + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v16 = *(v13 + 72);
    v17 = -1;
    do
    {
      v18 = v0[47];
      sub_26959E9DC(v15, v18, type metadata accessor for SiriUsageMetrics);
      v19 = v0[47];
      if (*(v18 + *(v14 + 20)) == 1)
      {
        if (*(v19 + *(v14 + 24)))
        {
          v20 = v198[89];
          v21 = v198[84];
          v22 = v198[82];
          v23 = v198[78];
          sub_2695B09D8();
          sub_26959EB0C(&qword_28031D390);
          v24 = sub_2695B0F78();
          v20(v22, v23);
          v0 = v198;
          v19 = v198[47];
          if ((v24 & 1) == 0)
          {
            sub_26959E974(v19, v198[51], type metadata accessor for SiriUsageMetrics);
            v11 = 0;
            v25 = -v17;
            goto LABEL_10;
          }
        }
      }

      sub_26959EA44(v19, type metadata accessor for SiriUsageMetrics);
      v15 += v16;
      --v17;
    }

    while (v12 + v17 != -1);
    v11 = 1;
    v25 = v12;
  }

  else
  {
    v25 = 0;
  }

LABEL_10:
  v26 = v198[51];
  v27 = v198[50];
  v28 = v198[44];
  v29 = v198[43];
  v30 = 1;
  v173 = *(v28 + 56);
  v173(v26, v11, 1, v29);
  sub_26959E90C(v26, v27, &qword_28031D2D0, &unk_2695B2B20);
  v179 = *(v28 + 48);
  if (v179(v27, 1, v29) != 1)
  {
    v31 = v198[70];
    v32 = v198[46];
    sub_26959E974(v198[50], v32, type metadata accessor for SiriUsageMetrics);
    sub_2695B09D8();
    sub_26959EA44(v32, type metadata accessor for SiriUsageMetrics);
    v30 = 0;
  }

  v33 = v198[79];
  v34 = v198[78];
  v35 = v198[70];
  v36 = *(v33 + 56);
  v198[96] = v36;
  v184 = v36;
  v36(v35, v30, 1, v34);
  v37 = *(v33 + 48);
  v198[97] = v37;
  v198[98] = (v33 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v175 = v37;
  if (v37(v35, 1, v34) != 1)
  {
    v41 = v198[79];
    v43 = v198[43];
    v42 = v198[44];
    v46 = *(v41 + 32);
    v45 = v41 + 32;
    v44 = v46;
    v46(v198[83], v198[70], v198[78]);
    v189 = v42;
    v47 = (v45 + 24) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v40 = v198;
    v186 = v43;
    while (v25 == v12)
    {
LABEL_18:
      v173(v40[49], 1, 1, v40[43]);
      v25 = v12;
LABEL_19:
      v48 = v40[48];
      v49 = v40[43];
      sub_26959E90C(v40[49], v48, &qword_28031D2D0, &unk_2695B2B20);
      v50 = 1;
      if (v179(v48, 1, v49) != 1)
      {
        v51 = v40[69];
        v52 = v40[46];
        sub_26959E974(v40[48], v52, type metadata accessor for SiriUsageMetrics);
        sub_2695B09D8();
        sub_26959EA44(v52, type metadata accessor for SiriUsageMetrics);
        v50 = 0;
      }

      v53 = v40[78];
      v54 = v40[69];
      v184(v54, v50, 1, v53);
      v55 = v175(v54, 1, v53);
      v56 = v40[83];
      if (v55 == 1)
      {
        v73 = v40[78];
        v74 = v40[71];
        sub_26959EE34(v40[69], &unk_28031D370, &unk_2695B2800);
        (v44)(v74, v56, v73);
        v39 = 0;
        goto LABEL_33;
      }

      (v44)(v40[81], v40[69], v40[78]);
      sub_26959EB0C(&qword_28031D390);
      v57 = sub_2695B0F78();
      v58 = v40[89];
      if (v57)
      {
        v59 = v40[83];
        v60 = v40[81];
        v61 = v40[78];
        v58(v59, v61);
        (v44)(v59, v60, v61);
      }

      else
      {
        v58(v40[81], v40[78]);
      }

      v43 = v186;
      v42 = v189;
    }

    while (v25 < v12)
    {
      sub_26959E9DC(v40[93] + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25, v40[45], type metadata accessor for SiriUsageMetrics);
      v62 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_66;
      }

      v63 = v40[45];
      if (*(v63 + *(v43 + 20)) == 1 && *(v63 + *(v43 + 24)))
      {
        v64 = v44;
        v65 = v45;
        v66 = v47;
        v194 = v198[89];
        v67 = v198[84];
        v68 = v198[82];
        v69 = v198[78];
        sub_2695B09D8();
        sub_26959EB0C(&qword_28031D390);
        v70 = sub_2695B0F78();
        v194(v68, v69);
        v40 = v198;
        v63 = v198[45];
        if ((v70 & 1) == 0)
        {
          v71 = v198[49];
          v72 = v198[43];
          sub_26959E974(v63, v71, type metadata accessor for SiriUsageMetrics);
          v173(v71, 0, 1, v72);
          v25 = v62;
          v47 = v66;
          v45 = v65;
          v44 = v64;
          goto LABEL_19;
        }

        v47 = v66;
        v45 = v65;
        v44 = v64;
        v43 = v186;
        v42 = v189;
      }

      sub_26959EA44(v63, type metadata accessor for SiriUsageMetrics);
      ++v25;
      if (v62 == v12)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    if (v12)
    {
      v118 = 0x64656C6261736964;
    }

    else
    {
      v118 = 0x6E776F6E6B6E75;
    }

    if (v12)
    {
      v119 = 0xE800000000000000;
    }

    else
    {
      v119 = 0xE700000000000000;
    }

    goto LABEL_74;
  }

  v38 = v198[79];
  sub_26959EE34(v198[70], &unk_28031D370, &unk_2695B2800);
  v39 = 1;
  v40 = v198;
LABEL_33:
  v75 = v40[93];
  v76 = v40[89];
  v195 = v40[86];
  v77 = v40;
  v78 = v40[84];
  v79 = v77[79];
  v80 = v77[78];
  v81 = v77[75];
  v82 = v77[73];
  v83 = v77[72];
  v84 = v77[71];
  v184(v84, v39, 1, v80);
  sub_2695968A8(v83, v84, v82);

  v77[99] = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v76(v78, v80);
  sub_26959EE34(v84, &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v83, &unk_28031D370, &unk_2695B2800);
  sub_26959EAA4(v82, v81, &unk_28031D370, &unk_2695B2800);
  v85 = sub_2695B0ED8();
  v86 = sub_2695B1128();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = v77[75];
    v88 = v77[74];
    v89 = v77[52];
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v201[0] = v91;
    *v90 = 136315138;
    sub_26959EDCC(v87, v88, &unk_28031D370, &unk_2695B2800);
    v92 = sub_2695B0FC8();
    v94 = sub_26959CE44(v92, v93, v201);

    *(v90 + 4) = v94;
    _os_log_impl(&dword_269588000, v85, v86, "SegmentationTask: updated assistantLastActive: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v91);
    MEMORY[0x26D641DE0](v91, -1, -1);
    MEMORY[0x26D641DE0](v90, -1, -1);
  }

  v95 = v77[94];
  v96 = v77[93];
  v97 = v77[68];
  v98 = v77[16];
  sub_26959EDCC(v77[75], v97, &unk_28031D370, &unk_2695B2800);
  sub_26959017C(v98, v97, v96, v201);
  v77[100] = v95;
  v99 = v77[68];
  if (v95)
  {
    v100 = v77[93];
    sub_26959EE34(v99, &unk_28031D370, &unk_2695B2800);

    v101 = v77[85];
    v102 = v77[84];
    v103 = v77[83];
    v104 = v77[82];
    v105 = v77[81];
    v106 = v77[80];
    v107 = v77[77];
    v141 = v77[76];
    v142 = v77[74];
    v143 = v77[73];
    v144 = v77[72];
    v145 = v77[71];
    v146 = v77[70];
    v147 = v77[69];
    v148 = v77[68];
    v149 = v77[67];
    v150 = v77[66];
    v151 = v77[65];
    v152 = v77[64];
    v153 = v77[63];
    v154 = v77[62];
    v155 = v77[61];
    v156 = v77[60];
    v157 = v77[59];
    v158 = v77[58];
    v159 = v77[57];
    v160 = v77[56];
    v161 = v77[55];
    v162 = v77[54];
    v163 = v77[53];
    v164 = v77[51];
    v165 = v77[50];
    v166 = v77[49];
    v167 = v77[48];
    v168 = v77[47];
    v169 = v77[46];
    v170 = v77[45];
    v171 = v77[42];
    v172 = v77[40];
    v174 = v77[39];
    v176 = v77[37];
    v177 = v77[36];
    v180 = v77[35];
    v182 = v77[33];
    v185 = v77[31];
    v187 = v77[30];
    v190 = v77[29];
    v192 = v77[28];
    v196 = v77[27];
    v199 = v77[24];
    sub_26959EE34(v77[75], &unk_28031D370, &unk_2695B2800);
    sub_26959EE34(v107, &qword_28031D2D8, &qword_2695B2B30);

    v108 = v77[1];

    return v108();
  }

  v110 = v77[86];
  sub_26959EE34(v99, &unk_28031D370, &unk_2695B2800);
  LODWORD(v12) = LOBYTE(v201[0]);
  *(v77 + 122) = v201[0];
  v42 = sub_2695B0ED8();
  v44 = sub_2695B1128();
  if (!os_log_type_enabled(v42, v44))
  {

    goto LABEL_75;
  }

  v25 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v201[0] = v40;
  *v25 = 136315138;
  if (v12 > 4)
  {
    v111 = 0x80000002695B37D0;
    v112 = 0xD00000000000001ALL;
    v113 = 0x80000002695B37F0;
    v114 = 0xD00000000000001BLL;
    if (v12 != 9)
    {
      v114 = 0xD000000000000014;
      v113 = 0x80000002695B3810;
    }

    if (v12 != 8)
    {
      v112 = v114;
      v111 = v113;
    }

    v115 = 0x80000002695B3770;
    v116 = 0x80000002695B3790;
    v117 = 0xD000000000000012;
    if (v12 != 6)
    {
      v117 = 0xD000000000000016;
      v116 = 0x80000002695B37B0;
    }

    if (v12 == 5)
    {
      v117 = 0xD000000000000013;
    }

    else
    {
      v115 = v116;
    }

    if (v12 <= 7)
    {
      v118 = v117;
    }

    else
    {
      v118 = v112;
    }

    if (v12 <= 7)
    {
      v119 = v115;
    }

    else
    {
      v119 = v111;
    }

    goto LABEL_74;
  }

  if (v12 <= 1)
  {
    goto LABEL_67;
  }

  if (v12 == 2)
  {
    v119 = 0xED0000796C6E4F6ELL;
    v118 = 0x6F69746174636964;
  }

  else
  {
    if (v12 == 3)
    {
      v118 = 0xD000000000000016;
    }

    else
    {
      v118 = 0xD000000000000018;
    }

    if (v12 == 3)
    {
      v119 = 0x80000002695B3730;
    }

    else
    {
      v119 = 0x80000002695B3750;
    }
  }

LABEL_74:
  v120 = sub_26959CE44(v118, v119, v201);

  *(v25 + 4) = v120;
  _os_log_impl(&dword_269588000, v42, v44, "SegmentationTask: activitySegment calculated: %s", v25, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  MEMORY[0x26D641DE0](v40, -1, -1);
  MEMORY[0x26D641DE0](v25, -1, -1);

  v77 = v198;
LABEL_75:
  v121 = v77[82];
  v122 = v77[78];
  v123 = v77[16];
  v124 = v77[18] * -86400.0;
  sub_2695B0C28();
  sub_26959EB0C(&qword_28031D390);
  result = sub_2695B0F98();
  if (result)
  {
    v197 = v77[90];
    v200 = v77[91];
    v178 = v77[88];
    v181 = v77[89];
    v125 = v77[87];
    v126 = v77[82];
    v127 = v77[79];
    v128 = v77[78];
    v129 = v77[42];
    v183 = v77[41];
    v130 = v77[39];
    v131 = v77[40];
    v132 = v77[38];
    v188 = v77[25];
    v191 = v77[77];
    v133 = v77[16];
    v134 = *(v127 + 32);
    v77[101] = v134;
    v77[102] = (v127 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v134(v131, v126, v128);
    v125(v131 + *(v132 + 48), v133, v128);
    sub_26959EDCC(v131, v130, &qword_28031D2A8, &unk_2695B2900);
    v135 = *(v132 + 48);
    v134(v129, v130, v128);
    v181(v130 + v135, v128);
    sub_26959E90C(v131, v130, &qword_28031D2A8, &unk_2695B2900);
    v134(v129 + *(v183 + 36), v130 + *(v132 + 48), v128);
    v181(v130, v128);
    if (v197(v191, 1, v188))
    {
      v136 = v77[79] + 56;
      v184(v77[67], 1, 1, v77[78]);
    }

    else
    {
      sub_26959EDCC(v77[77] + *(v77[25] + 32), v77[67], &unk_28031D370, &unk_2695B2800);
    }

    v137 = swift_task_alloc();
    v77[103] = v137;
    *v137 = v77;
    v137[1] = sub_269599960;
    v138 = v77[67];
    v139 = v77[42];
    v140 = v77[37];

    return sub_2695A8E28(v140, v139, v138);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269599624()
{
  v53 = v0[94];
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[77];
  v8 = v0[76];
  v11 = v0[74];
  v12 = v0[73];
  v13 = v0[72];
  v14 = v0[71];
  v15 = v0[70];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[66];
  v20 = v0[65];
  v21 = v0[64];
  v22 = v0[63];
  v23 = v0[62];
  v24 = v0[61];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[58];
  v28 = v0[57];
  v29 = v0[56];
  v30 = v0[55];
  v31 = v0[54];
  v32 = v0[53];
  v33 = v0[51];
  v34 = v0[50];
  v35 = v0[49];
  v36 = v0[48];
  v37 = v0[47];
  v38 = v0[46];
  v39 = v0[45];
  v40 = v0[42];
  v41 = v0[40];
  v42 = v0[39];
  v43 = v0[37];
  v44 = v0[36];
  v45 = v0[35];
  v46 = v0[33];
  v47 = v0[31];
  v48 = v0[30];
  v49 = v0[29];
  v50 = v0[28];
  v51 = v0[27];
  v52 = v0[24];
  sub_26959EE34(v0[75], &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v7, &qword_28031D2D8, &qword_2695B2B30);

  v9 = v0[1];

  return v9();
}

uint64_t sub_269599960()
{
  v1 = *v0;
  v2 = *(*v0 + 824);
  v3 = *(*v0 + 536);
  v6 = *v0;

  sub_26959EE34(v3, &unk_28031D370, &unk_2695B2800);
  v4 = swift_task_alloc();
  *(v1 + 832) = v4;
  *v4 = v6;
  v4[1] = sub_269599ABC;

  return sub_26959AF04(v1 + 53);
}

uint64_t sub_269599ABC()
{
  v1 = *(*v0 + 832);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_269599BB8, 0, 0);
}

uint64_t sub_269599BB8()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 616);
  v4 = *(v0 + 200);
  *(v0 + 123) = *(v0 + 53);
  if (v2(v3, 1, v4))
  {
    v5 = *(v0 + 632) + 56;
    (*(v0 + 768))(*(v0 + 528), 1, 1, *(v0 + 624));
  }

  else
  {
    sub_26959EDCC(v3 + *(v4 + 36), *(v0 + 528), &unk_28031D370, &unk_2695B2800);
  }

  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 616);
  v9 = *(v0 + 528);
  v10 = *(v0 + 200);
  sub_2695A1AD8(*(v0 + 336), v9, *(v0 + 288));
  sub_26959EE34(v9, &unk_28031D370, &unk_2695B2800);
  if (v7(v8, 1, v10))
  {
    v11 = *(v0 + 632) + 56;
    (*(v0 + 768))(*(v0 + 520), 1, 1, *(v0 + 624));
  }

  else
  {
    sub_26959EDCC(*(v0 + 616) + *(*(v0 + 200) + 40), *(v0 + 520), &unk_28031D370, &unk_2695B2800);
  }

  v12 = *(v0 + 728);
  v13 = *(v0 + 720);
  v14 = *(v0 + 616);
  v15 = *(v0 + 520);
  v16 = *(v0 + 200);
  sub_26959B310(*(v0 + 128), v15, *(v0 + 744), *(v0 + 280));

  sub_26959EE34(v15, &unk_28031D370, &unk_2695B2800);
  v17 = 1;
  if (!v13(v14, 1, v16))
  {
    sub_26959E9DC(*(v0 + 616) + *(*(v0 + 200) + 44), *(v0 + 248), type metadata accessor for SiriFirstEnablementStatus);
    v17 = 0;
  }

  v18 = *(v0 + 248);
  v19 = *(v0 + 176);
  v20 = *(*(v0 + 184) + 56);
  *(v0 + 840) = v20;
  v21 = *(v0 + 54);
  v20(v18, v17, 1, v19);
  v22 = swift_task_alloc();
  *(v0 + 848) = v22;
  *v22 = v0;
  v22[1] = sub_269599E40;
  v23 = *(v0 + 264);
  v24 = *(v0 + 248);
  v25 = *(v0 + 128);

  return sub_269592D74(v23, v25, v21 & 1, v24);
}

uint64_t sub_269599E40()
{
  v1 = *(*v0 + 848);
  v2 = *(*v0 + 248);
  v4 = *v0;

  sub_26959EE34(v2, &qword_28031D278, &qword_2695B3490);

  return MEMORY[0x2822009F8](sub_269599F68, 0, 0);
}

uint64_t sub_269599F68()
{
  v229 = v0;
  v211 = *(v0 + 840);
  v176 = *(v0 + 123);
  v207 = *(v0 + 122);
  v219 = *(v0 + 776);
  v225 = *(v0 + 784);
  v161 = *(v0 + 696);
  v164 = *(v0 + 704);
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v167 = *(v0 + 512);
  v170 = *(v0 + 600);
  v173 = *(v0 + 504);
  v180 = *(v0 + 496);
  v215 = *(v0 + 472);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  v187 = *(v0 + 256);
  v190 = *(v0 + 488);
  v184 = *(v0 + 224);
  v200 = *(v0 + 176);
  v204 = *(v0 + 200);
  v193 = *(v0 + 240);
  v196 = *(v0 + 184) + 56;
  v8 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2E0, &qword_2695B2B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2695B29D0;
  *(inited + 32) = *v4;
  *(inited + 33) = v176;
  *(inited + 34) = *v3;
  *(inited + 35) = *v6;
  *(inited + 36) = *v7;
  v177 = sub_26959E82C(inited);
  swift_setDeallocating();
  v161(v1, v8, v2);
  sub_26959EDCC(v170, v167, &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(&v4[*(v5 + 20)], v173, &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(&v3[*(v5 + 20)], v180, &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(&v6[*(v5 + 20)], v190, &unk_28031D370, &unk_2695B2800);
  sub_26959E9DC(&v7[*(v187 + 20)], v193, type metadata accessor for SiriFirstEnablementStatus);
  v10 = 1;
  v211(v193, 0, 1, v200);
  *v184 = v207;
  v11 = *(v204 + 24);
  sub_2695B0BA8();
  sub_2695B0B98();
  *(v184 + 8) = v177;
  sub_26959EDCC(v167, v215, &unk_28031D370, &unk_2695B2800);
  if (v219(v215, 1, v2) != 1)
  {
    v12 = *(v0 + 816);
    v13 = *(v0 + 792);
    v14 = *(v0 + 712);
    v15 = *(v0 + 656);
    v16 = *(v0 + 624);
    v17 = *(v0 + 480);
    (*(v0 + 808))(v15, *(v0 + 472), v16);
    sub_2695B0BA8();
    sub_2695B0B98();
    v14(v15, v16);
    v10 = 0;
  }

  v18 = *(v0 + 776);
  v19 = *(v0 + 624);
  v20 = *(v0 + 504);
  v21 = *(v0 + 480);
  v22 = *(v0 + 456);
  v23 = *(v0 + 224);
  v24 = *(v0 + 200);
  v25 = 1;
  v220 = *(v0 + 784);
  v226 = *(*(v0 + 632) + 56);
  v226(v21, v10, 1, v19);
  sub_26959E90C(v21, v23 + *(v24 + 28), &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(v20, v22, &unk_28031D370, &unk_2695B2800);
  if (v18(v22, 1, v19) != 1)
  {
    v26 = *(v0 + 816);
    v27 = *(v0 + 792);
    v28 = *(v0 + 712);
    v29 = *(v0 + 656);
    v30 = *(v0 + 624);
    v31 = *(v0 + 464);
    (*(v0 + 808))(v29, *(v0 + 456), v30);
    sub_2695B0BA8();
    sub_2695B0B98();
    v28(v29, v30);
    v25 = 0;
  }

  v221 = *(v0 + 784);
  v32 = *(v0 + 776);
  v33 = *(v0 + 624);
  v34 = *(v0 + 496);
  v35 = *(v0 + 464);
  v36 = *(v0 + 440);
  v37 = *(v0 + 224);
  v38 = *(v0 + 200);
  v39 = *(v0 + 632) + 56;
  v40 = 1;
  v226(v35, v25, 1, v33);
  sub_26959E90C(v35, v37 + *(v38 + 32), &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(v34, v36, &unk_28031D370, &unk_2695B2800);
  if (v32(v36, 1, v33) != 1)
  {
    v41 = *(v0 + 816);
    v42 = *(v0 + 792);
    v43 = *(v0 + 712);
    v44 = *(v0 + 656);
    v45 = *(v0 + 624);
    v46 = *(v0 + 448);
    (*(v0 + 808))(v44, *(v0 + 440), v45);
    sub_2695B0BA8();
    sub_2695B0B98();
    v43(v44, v45);
    v40 = 0;
  }

  v47 = *(v0 + 784);
  v48 = *(v0 + 776);
  v49 = *(v0 + 624);
  v50 = *(v0 + 488);
  v51 = *(v0 + 448);
  v52 = *(v0 + 424);
  v53 = *(v0 + 224);
  v54 = *(v0 + 200);
  v55 = *(v0 + 632) + 56;
  v222 = 1;
  v226(v51, v40, 1, v49);
  sub_26959E90C(v51, v53 + *(v54 + 36), &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(v50, v52, &unk_28031D370, &unk_2695B2800);
  if (v48(v52, 1, v49) != 1)
  {
    v56 = *(v0 + 816);
    v57 = *(v0 + 792);
    v58 = *(v0 + 712);
    v59 = *(v0 + 656);
    v60 = *(v0 + 624);
    v61 = *(v0 + 432);
    (*(v0 + 808))(v59, *(v0 + 424), v60);
    sub_2695B0BA8();
    sub_2695B0B98();
    v58(v59, v60);
    v222 = 0;
  }

  v201 = *(v0 + 712);
  v205 = *(v0 + 792);
  v62 = *(v0 + 640);
  v63 = *(v0 + 624);
  v65 = *(v0 + 504);
  v64 = *(v0 + 512);
  v66 = *(v0 + 496);
  v67 = *(v0 + 432);
  v208 = *(v0 + 224);
  v194 = *(v0 + 200);
  v197 = *(v0 + 632);
  v68 = *(v0 + 184);
  v212 = *(v0 + 176);
  v216 = *(v0 + 240);
  sub_26959EE34(*(v0 + 488), &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v66, &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v65, &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v64, &unk_28031D370, &unk_2695B2800);
  v201(v62, v63);
  v226(v67, v222, 1, v63);
  sub_26959E90C(v67, v208 + *(v194 + 40), &unk_28031D370, &unk_2695B2800);
  v69 = *(v68 + 48);
  v70 = v69(v216, 1, v212);
  v71 = *(v0 + 240);
  v72 = *(v0 + 192);
  if (v70 == 1)
  {
    v73 = *(v0 + 176);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
    (*(*(v74 - 8) + 56))(v72, 1, 3, v74);
    if (v69(v71, 1, v73) != 1)
    {
      sub_26959EE34(*(v0 + 240), &qword_28031D278, &qword_2695B3490);
    }
  }

  else
  {
    sub_26959E974(*(v0 + 240), *(v0 + 192), type metadata accessor for SiriFirstEnablementStatus);
  }

  v75 = *(v0 + 688);
  v77 = *(v0 + 224);
  v76 = *(v0 + 232);
  v78 = *(v0 + 216);
  sub_26959E974(*(v0 + 192), v77 + *(*(v0 + 200) + 44), type metadata accessor for SiriFirstEnablementStatus);
  sub_26959E974(v77, v76, type metadata accessor for SegmentsSummary);
  sub_26959E9DC(v76, v78, type metadata accessor for SegmentsSummary);
  v79 = sub_2695B0ED8();
  v80 = sub_2695B1128();
  v81 = os_log_type_enabled(v79, v80);
  v82 = *(v0 + 216);
  if (v81)
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v228 = v84;
    *v83 = 136315138;
    v85 = SegmentsSummary.description.getter();
    v87 = v86;
    sub_26959EA44(v82, type metadata accessor for SegmentsSummary);
    v88 = sub_26959CE44(v85, v87, &v228);

    *(v83 + 4) = v88;
    _os_log_impl(&dword_269588000, v79, v80, "SegmentationTask ended: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    MEMORY[0x26D641DE0](v84, -1, -1);
    MEMORY[0x26D641DE0](v83, -1, -1);
  }

  else
  {

    sub_26959EA44(v82, type metadata accessor for SegmentsSummary);
  }

  v89 = *(v0 + 800);
  sub_26958AD84(*(v0 + 232), *(v0 + 136));
  if (v89)
  {
    v90 = *(v0 + 336);
    v92 = *(v0 + 288);
    v91 = *(v0 + 296);
    v93 = *(v0 + 280);
    v94 = *(v0 + 264);
    sub_26959EA44(*(v0 + 232), type metadata accessor for SegmentsSummary);
    sub_26959EA44(v94, type metadata accessor for NewCustomerSegment.Result);
    sub_26959EA44(v93, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EA44(v92, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EA44(v91, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EE34(v90, &qword_28031D1B8, &qword_2695B2538);
    v95 = *(v0 + 680);
    v96 = *(v0 + 672);
    v97 = *(v0 + 664);
    v98 = *(v0 + 656);
    v99 = *(v0 + 648);
    v100 = *(v0 + 640);
    v101 = *(v0 + 616);
    v102 = *(v0 + 608);
    v115 = *(v0 + 592);
    v117 = *(v0 + 584);
    v119 = *(v0 + 576);
    v121 = *(v0 + 568);
    v123 = *(v0 + 560);
    v125 = *(v0 + 552);
    v127 = *(v0 + 544);
    v129 = *(v0 + 536);
    v131 = *(v0 + 528);
    v133 = *(v0 + 520);
    v135 = *(v0 + 512);
    v137 = *(v0 + 504);
    v139 = *(v0 + 496);
    v141 = *(v0 + 488);
    v143 = *(v0 + 480);
    v145 = *(v0 + 472);
    v147 = *(v0 + 464);
    v149 = *(v0 + 456);
    v151 = *(v0 + 448);
    v153 = *(v0 + 440);
    v155 = *(v0 + 432);
    v157 = *(v0 + 424);
    v159 = *(v0 + 408);
    v162 = *(v0 + 400);
    v165 = *(v0 + 392);
    v168 = *(v0 + 384);
    v171 = *(v0 + 376);
    v174 = *(v0 + 368);
    v178 = *(v0 + 360);
    v181 = *(v0 + 336);
    v182 = *(v0 + 320);
    v185 = *(v0 + 312);
    v188 = *(v0 + 296);
    v191 = *(v0 + 288);
    v195 = *(v0 + 280);
    v198 = *(v0 + 264);
    v202 = *(v0 + 248);
    v206 = *(v0 + 240);
    v209 = *(v0 + 232);
    v213 = *(v0 + 224);
    v217 = *(v0 + 216);
    v223 = *(v0 + 192);
    sub_26959EE34(*(v0 + 600), &unk_28031D370, &unk_2695B2800);
    sub_26959EE34(v101, &qword_28031D2D8, &qword_2695B2B30);
  }

  else
  {
    v104 = *(v0 + 680);
    v105 = *(v0 + 672);
    v114 = *(v0 + 664);
    v116 = *(v0 + 656);
    v118 = *(v0 + 648);
    v120 = *(v0 + 640);
    v106 = *(v0 + 616);
    v107 = *(v0 + 600);
    v122 = *(v0 + 608);
    v124 = *(v0 + 592);
    v126 = *(v0 + 584);
    v128 = *(v0 + 576);
    v130 = *(v0 + 568);
    v132 = *(v0 + 560);
    v134 = *(v0 + 552);
    v136 = *(v0 + 544);
    v138 = *(v0 + 536);
    v140 = *(v0 + 528);
    v142 = *(v0 + 520);
    v144 = *(v0 + 512);
    v146 = *(v0 + 504);
    v148 = *(v0 + 496);
    v150 = *(v0 + 488);
    v152 = *(v0 + 480);
    v154 = *(v0 + 472);
    v156 = *(v0 + 464);
    v158 = *(v0 + 456);
    v160 = *(v0 + 448);
    v163 = *(v0 + 440);
    v166 = *(v0 + 432);
    v169 = *(v0 + 424);
    v172 = *(v0 + 408);
    v175 = *(v0 + 400);
    v183 = *(v0 + 384);
    v186 = *(v0 + 376);
    v189 = *(v0 + 368);
    v108 = *(v0 + 336);
    v199 = *(v0 + 320);
    v203 = *(v0 + 312);
    v110 = *(v0 + 288);
    v109 = *(v0 + 296);
    v111 = *(v0 + 280);
    v179 = *(v0 + 392);
    v112 = *(v0 + 264);
    v192 = *(v0 + 360);
    v210 = *(v0 + 248);
    v214 = *(v0 + 240);
    v218 = *(v0 + 224);
    v224 = *(v0 + 216);
    v227 = *(v0 + 192);
    sub_26959EA44(*(v0 + 232), type metadata accessor for SegmentsSummary);
    sub_26959EA44(v112, type metadata accessor for NewCustomerSegment.Result);
    sub_26959EA44(v111, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EA44(v110, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EA44(v109, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EE34(v108, &qword_28031D1B8, &qword_2695B2538);
    sub_26959EE34(v107, &unk_28031D370, &unk_2695B2800);
    sub_26959EE34(v106, &qword_28031D2D8, &qword_2695B2B30);
  }

  v103 = *(v0 + 8);

  return v103();
}

uint64_t sub_26959AF04(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26959AFA8;

  return sub_26958F864();
}

uint64_t sub_26959AFA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = sub_26959B160;
  }

  else
  {
    *(v4 + 40) = a1;
    v7 = sub_26959B0D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26959B0D0()
{
  v1 = *(v0 + 40);
  v2 = [v1 statusType];

  if (((v2 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v3 = 7;
  }

  else
  {
    v3 = 3;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26959B160()
{
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_2695B0EF8();
  __swift_project_value_buffer(v2, qword_2814B2250);
  MEMORY[0x26D641C60](v1);
  v3 = sub_2695B0ED8();
  v4 = sub_2695B1138();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x26D641C60](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_269588000, v3, v4, "Unable to calculate music segment: %@", v7, 0xCu);
    sub_26959EE34(v8, &qword_28031D280, &unk_2695B28C0);
    MEMORY[0x26D641DE0](v8, -1, -1);
    MEMORY[0x26D641DE0](v7, -1, -1);
  }

  else
  {
  }

  **(v0 + 16) = 7;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26959B310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v130 = a2;
  v133 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v132 = &v128 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D288, &qword_2695B28D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v131 = &v128 - v11;
  v12 = type metadata accessor for SiriUsageMetrics();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v139 = &v128 - v19;
  MEMORY[0x28223BE20](v18);
  v155 = &v128 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2D0, &unk_2695B2B20);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v151 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v156 = &v128 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v147 = &v128 - v28;
  MEMORY[0x28223BE20](v27);
  v148 = (&v128 - v29);
  v30 = sub_2695B0C78();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v158 = &v128 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v153 = &v128 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v145 = &v128 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v128 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v48 = &v128 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v46);
  v136 = &v128 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v144 = &v128 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v137 = &v128 - v54;
  MEMORY[0x28223BE20](v53);
  v135 = &v128 - v55;
  v56 = *(v31 + 16);
  v154 = v43;
  v129 = a1;
  v157 = v30;
  v56(v43, a1, v30);
  v57 = *(a3 + 16);

  v138 = v31;
  v159 = a3;
  v134 = v35;
  if (v57)
  {
    v58 = (v31 + 8);
    v59 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v60 = *(v13 + 72);
    v61 = -1;
    v62 = v155;
    v149 = v60;
    v150 = v58;
    do
    {
      sub_26959E9DC(v59, v62, type metadata accessor for SiriUsageMetrics);
      if (*(v62 + *(v12 + 20)) == 2)
      {
        if (*(v62 + *(v12 + 24)))
        {
          v63 = v153;
          sub_2695B09D8();
          sub_26959EB0C(&qword_28031D390);
          v64 = v157;
          v65 = sub_2695B0F78();
          v66 = v63;
          v60 = v149;
          v67 = v64;
          v62 = v155;
          (*v150)(v66, v67);
          if ((v65 & 1) == 0)
          {
            sub_26959E974(v62, v148, type metadata accessor for SiriUsageMetrics);
            v68 = 0;
            v69 = -v61;
            goto LABEL_9;
          }
        }
      }

      sub_26959EA44(v62, type metadata accessor for SiriUsageMetrics);
      --v61;
      v59 += v60;
    }

    while (v57 + v61 != -1);
    v68 = 1;
    v69 = v57;
LABEL_9:
    v35 = v134;
  }

  else
  {
    v68 = 1;
    v69 = 0;
  }

  v70 = 1;
  v71 = v148;
  v140 = *(v13 + 56);
  v141 = v13 + 56;
  v140(v148, v68, 1, v12);
  v72 = v71;
  v73 = v147;
  sub_26959E90C(v72, v147, &qword_28031D2D0, &unk_2695B2B20);
  v142 = *(v13 + 48);
  v143 = v13 + 48;
  if (v142(v73, 1, v12) != 1)
  {
    v74 = v139;
    sub_26959E974(v73, v139, type metadata accessor for SiriUsageMetrics);
    sub_2695B09D8();
    sub_26959EA44(v74, type metadata accessor for SiriUsageMetrics);
    v70 = 0;
  }

  v75 = v138;
  v76 = v137;
  v77 = v70;
  v78 = v157;
  v148 = *(v138 + 56);
  v149 = v138 + 56;
  (v148)(v137, v77, 1, v157);
  v146 = *(v75 + 48);
  v147 = v75 + 48;
  if (v146(v76, 1, v78) != 1)
  {
    v81 = v75 + 32;
    v150 = *(v75 + 32);
    (v150)(v145, v76, v78);
    v155 = (v75 + 8);
    v82 = v158;
    v152 = v57;
    while (1)
    {
      v83 = v156;
      if (v69 != v57)
      {
        break;
      }

LABEL_18:
      v140(v83, 1, 1, v12);
      v69 = v57;
LABEL_19:
      v84 = v151;
      sub_26959E90C(v83, v151, &qword_28031D2D0, &unk_2695B2B20);
      v85 = 1;
      v86 = v142(v84, 1, v12);
      v87 = v144;
      if (v86 != 1)
      {
        v88 = v139;
        sub_26959E974(v151, v139, type metadata accessor for SiriUsageMetrics);
        sub_2695B09D8();
        sub_26959EA44(v88, type metadata accessor for SiriUsageMetrics);
        v85 = 0;
      }

      v89 = v85;
      v78 = v157;
      (v148)(v87, v89, 1, v157);
      v90 = v146(v87, 1, v78);
      v91 = v87;
      v92 = v145;
      if (v90 == 1)
      {
        sub_26959EE34(v91, &unk_28031D370, &unk_2695B2800);
        v80 = v135;
        (v150)(v135, v92, v78);
        v79 = 0;
        v35 = v134;
        goto LABEL_32;
      }

      (v150)(v82, v91, v78);
      sub_26959EB0C(&qword_28031D390);
      v93 = sub_2695B0F78();
      v94 = *v155;
      if (v93)
      {
        v94(v92, v78);
        (v150)(v92, v82, v78);
      }

      else
      {
        v94(v82, v78);
      }
    }

    while (v69 < v57)
    {
      sub_26959E9DC(v159 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v69, v17, type metadata accessor for SiriUsageMetrics);
      v96 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_46;
      }

      if (v17[*(v12 + 20)] == 2)
      {
        if (*&v17[*(v12 + 24)])
        {
          v97 = v13;
          v98 = v81;
          v99 = v12;
          v100 = v153;
          sub_2695B09D8();
          sub_26959EB0C(&qword_28031D390);
          v101 = v157;
          v102 = sub_2695B0F78();
          v103 = v100;
          v12 = v99;
          v81 = v98;
          v13 = v97;
          v57 = v152;
          v104 = v101;
          v83 = v156;
          (*v155)(v103, v104);
          if ((v102 & 1) == 0)
          {
            sub_26959E974(v17, v83, type metadata accessor for SiriUsageMetrics);
            v140(v83, 0, 1, v12);
            ++v69;
            v82 = v158;
            goto LABEL_19;
          }
        }
      }

      sub_26959EA44(v17, type metadata accessor for SiriUsageMetrics);
      ++v69;
      v95 = v96 == v57;
      v82 = v158;
      if (v95)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    swift_once();
    v117 = sub_2695B0EF8();
    __swift_project_value_buffer(v117, qword_2814B2250);
    MEMORY[0x26D641C60](v13);
    v118 = sub_2695B0ED8();
    v119 = sub_2695B1138();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *v120 = 138412290;
      MEMORY[0x26D641C60](v13);
      v122 = _swift_stdlib_bridgeErrorToNSError();
      *(v120 + 4) = v122;
      *v121 = v122;
      _os_log_impl(&dword_269588000, v118, v119, "Unable to calculate dictation segment: %@", v120, 0xCu);
      sub_26959EE34(v121, &qword_28031D280, &unk_2695B28C0);
      MEMORY[0x26D641DE0](v121, -1, -1);
      MEMORY[0x26D641DE0](v120, -1, -1);
    }

    else
    {
    }

    v112 = *(type metadata accessor for SegmentFlagLastSeenResult() + 20);
    v111 = v133;
    goto LABEL_42;
  }

  sub_26959EE34(v76, &unk_28031D370, &unk_2695B2800);
  v79 = 1;
  v80 = v135;
LABEL_32:
  (v148)(v80, v79, 1, v78);

  v105 = v138;
  v159 = *(v138 + 8);
  v159(v154, v78);
  v106 = v136;
  sub_2695968A8(v80, v130, v136);
  sub_26959EDCC(v106, v48, &unk_28031D370, &unk_2695B2800);
  v107 = v146(v48, 1, v78);
  v108 = v132;
  v109 = v131;
  v110 = v78;
  if (v107 == 1)
  {
    sub_26959EE34(v106, &unk_28031D370, &unk_2695B2800);
    sub_26959EE34(v80, &unk_28031D370, &unk_2695B2800);
    sub_26959EE34(v48, &unk_28031D370, &unk_2695B2800);
    v111 = v133;
    v48 = v78;
LABEL_34:
    v112 = *(type metadata accessor for SegmentFlagLastSeenResult() + 20);
LABEL_42:
    result = (v148)(&v111[v112], 1, 1, v48);
    v126 = 7;
    goto LABEL_43;
  }

  v113 = *(v105 + 32);
  v113(v35, v48, v78);
  v114 = sub_2695B0C98();
  (*(*(v114 - 8) + 56))(v109, 1, 1, v114);
  v115 = sub_2695B0D68();
  (*(*(v115 - 8) + 56))(v108, 1, 1, v115);
  v116 = sub_2695AB4A4(v129, v109, v108);
  v48 = v78;
  v123 = v105 + 32;
  v124 = v116;
  v138 = v123;
  sub_26959EE34(v108, &unk_28031D360, &unk_2695B2B50);
  sub_26959EE34(v109, &qword_28031D288, &qword_2695B28D0);
  sub_26959EE34(v136, &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v135, &unk_28031D370, &unk_2695B2800);
  if (v124 >= 28)
  {
    v159(v35, v78);
    v111 = v133;
    goto LABEL_34;
  }

  v125 = *(type metadata accessor for SegmentFlagLastSeenResult() + 20);
  v111 = v133;
  v113(&v133[v125], v35, v110);
  v126 = 1;
  result = (v148)(&v111[v125], 0, 1, v110);
LABEL_43:
  *v111 = v126;
  return result;
}

uint64_t sub_26959C2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = a1;
  v36 = sub_2695B0C78();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2695B0D38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = sub_2695B0C98();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2695B0D48();
  v39 = *(v42 - 8);
  v21 = *(v39 + 64);
  MEMORY[0x28223BE20](v42);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, *MEMORY[0x277CC9830], v16);
  sub_2695B0CA8();
  (*(v17 + 8))(v20, v16);
  v24 = v36;
  (*(v5 + 104))(v8, *MEMORY[0x277CC9968], v4);
  sub_2695B0CF8();
  v25 = v8;
  v26 = v38;
  (*(v5 + 8))(v25, v4);
  sub_26959EDCC(v15, v13, &unk_28031D370, &unk_2695B2800);
  if ((*(v26 + 48))(v13, 1, v24) == 1)
  {
    sub_26959EE34(v13, &unk_28031D370, &unk_2695B2800);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_2695B1208();

    v40 = 0xD000000000000026;
    v41 = 0x80000002695B3BB0;
    sub_26959EB0C(&qword_28031D250);
    v27 = sub_2695B1318();
    MEMORY[0x26D6414B0](v27);

    v28 = v40;
    v29 = v41;
    sub_26959EBA4();
    swift_allocError();
    *v30 = v28;
    v30[1] = v29;
    swift_willThrow();
  }

  else
  {
    v32 = v34;
    (*(v26 + 32))(v34, v13, v24);
    sub_2695B0CC8();
    (*(v26 + 8))(v32, v24);
  }

  sub_26959EE34(v15, &unk_28031D370, &unk_2695B2800);
  return (*(v39 + 8))(v23, v42);
}

uint64_t SegmentationTaskResult.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x73736563637573;
  }

  if (v1 == 1)
  {
    return 0x64657070696B73;
  }

  MEMORY[0x26D6414B0](*v0);
  return 0x3A6572756C696166;
}

uint64_t sub_26959C8D8()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x73736563637573;
  }

  if (v1 == 1)
  {
    return 0x64657070696B73;
  }

  MEMORY[0x26D6414B0](*v0);
  return 0x3A6572756C696166;
}

uint64_t sub_26959C968(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26959C9B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26959CAAC;

  return v7(a1);
}

uint64_t sub_26959CAAC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26959CBA4(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_26959CC2C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26959CE44(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26959CC88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26959CD28;

  return sub_269596EFC(a1);
}

uint64_t sub_26959CD28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26959CE1C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_26959CE30(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_26959CE44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26959CF10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26958FC00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_26959CF10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26959D01C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_2695B1258();
    a6 = v11;
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

uint64_t sub_26959D01C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26959D068(a1, a2);
  sub_26959D198(&unk_287A197A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26959D068(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26959D284(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2695B1258();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2695B1008();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26959D284(v10, 0);
        result = sub_2695B11F8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26959D198(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26959D2F8(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26959D284(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2F8, &qword_2695B2B60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26959D2F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2F8, &qword_2695B2B60);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_26959D3EC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_26959D3FC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_26959D470(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2695B1388();
  sub_2695B0FE8();
  v6 = sub_2695B13A8();

  return sub_26959D4E8(a1, a2, v6);
}

unint64_t sub_26959D4E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2695B1328())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26959D5A0(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_2695A3B60();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v26 = ~v7;
    while (1)
    {
      v9 = *(*(v4 + 48) + v8);
      if (v9 <= 2)
      {
        if (*(*(v4 + 48) + v8))
        {
          if (v9 == 1)
          {
            v10 = 0x6F69746174636964;
          }

          else
          {
            v10 = 7496035;
          }

          if (v9 == 1)
          {
            v11 = 0xE90000000000006ELL;
          }

          else
          {
            v11 = 0xE300000000000000;
          }
        }

        else
        {
          v10 = 0x6F7473754377656ELL;
          v11 = 0xEB0000000072656DLL;
        }
      }

      else if (*(*(v4 + 48) + v8) > 4u)
      {
        if (v9 == 5)
        {
          v10 = 0x6D6F44736D6D6F63;
          v11 = 0xED0000746E616E69;
        }

        else
        {
          v10 = 0xD00000000000001ALL;
          v11 = 0x80000002695B36F0;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 0xD000000000000011;
        }

        else
        {
          v10 = 0x73646F50726961;
        }

        if (v9 == 3)
        {
          v11 = 0x80000002695B36C0;
        }

        else
        {
          v11 = 0xE700000000000000;
        }
      }

      v12 = 0xD00000000000001ALL;
      if (a2 == 5)
      {
        v12 = 0x6D6F44736D6D6F63;
      }

      v13 = 0xED0000746E616E69;
      if (a2 != 5)
      {
        v13 = 0x80000002695B36F0;
      }

      v14 = 0x73646F50726961;
      if (a2 == 3)
      {
        v14 = 0xD000000000000011;
      }

      v15 = 0xE700000000000000;
      if (a2 == 3)
      {
        v15 = 0x80000002695B36C0;
      }

      if (a2 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x6F69746174636964;
      if (a2 != 1)
      {
        v16 = 7496035;
      }

      v17 = 0xE90000000000006ELL;
      if (a2 != 1)
      {
        v17 = 0xE300000000000000;
      }

      if (!a2)
      {
        v16 = 0x6F7473754377656ELL;
        v17 = 0xEB0000000072656DLL;
      }

      v18 = a2 <= 2u ? v16 : v12;
      v19 = a2 <= 2u ? v17 : v13;
      if (v10 == v18 && v11 == v19)
      {
        break;
      }

      v20 = sub_2695B1328();

      if (v20)
      {
        goto LABEL_50;
      }

      v8 = (v8 + 1) & v26;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_50:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_48:
    v21 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    sub_26959DBE0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26959D890(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2E8, &qword_2695B2B48);
  result = sub_2695B11D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_2695B1388();
      sub_2695B0FE8();

      result = sub_2695B13A8();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26959DBE0(uint64_t result, unint64_t a2, char a3)
{
  v28 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_55;
  }

  if (a3)
  {
    sub_26959D890(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_26959DF18();
      goto LABEL_55;
    }

    sub_26959E058(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  result = sub_2695A3B60();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 <= 2)
      {
        if (*(*(v7 + 48) + a2))
        {
          if (v11 == 1)
          {
            v12 = 0x6F69746174636964;
          }

          else
          {
            v12 = 7496035;
          }

          if (v11 == 1)
          {
            v13 = 0xE90000000000006ELL;
          }

          else
          {
            v13 = 0xE300000000000000;
          }
        }

        else
        {
          v12 = 0x6F7473754377656ELL;
          v13 = 0xEB0000000072656DLL;
        }
      }

      else if (*(*(v7 + 48) + a2) > 4u)
      {
        if (v11 == 5)
        {
          v12 = 0x6D6F44736D6D6F63;
          v13 = 0xED0000746E616E69;
        }

        else
        {
          v12 = 0xD00000000000001ALL;
          v13 = 0x80000002695B36F0;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0xD000000000000011;
        }

        else
        {
          v12 = 0x73646F50726961;
        }

        if (v11 == 3)
        {
          v13 = 0x80000002695B36C0;
        }

        else
        {
          v13 = 0xE700000000000000;
        }
      }

      v14 = 0xD00000000000001ALL;
      if (v28 == 5)
      {
        v14 = 0x6D6F44736D6D6F63;
      }

      v15 = 0xED0000746E616E69;
      if (v28 != 5)
      {
        v15 = 0x80000002695B36F0;
      }

      v16 = 0x73646F50726961;
      if (v28 == 3)
      {
        v16 = 0xD000000000000011;
      }

      v17 = 0xE700000000000000;
      if (v28 == 3)
      {
        v17 = 0x80000002695B36C0;
      }

      if (v28 <= 4u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0x6F69746174636964;
      if (v28 != 1)
      {
        v18 = 7496035;
      }

      v19 = 0xE90000000000006ELL;
      if (v28 != 1)
      {
        v19 = 0xE300000000000000;
      }

      if (!v28)
      {
        v18 = 0x6F7473754377656ELL;
        v19 = 0xEB0000000072656DLL;
      }

      v20 = v28 <= 2u ? v18 : v14;
      v21 = v28 <= 2u ? v19 : v15;
      if (v12 == v20 && v13 == v21)
      {
        goto LABEL_58;
      }

      v22 = sub_2695B1328();

      if (v22)
      {
        goto LABEL_59;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_55:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = v28;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_58:

LABEL_59:
  result = sub_2695B1338();
  __break(1u);
  return result;
}

void *sub_26959DF18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2E8, &qword_2695B2B48);
  v2 = *v0;
  v3 = sub_2695B11C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26959E058(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2E8, &qword_2695B2B48);
  result = sub_2695B11D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_2695B1388();
      sub_2695B0FE8();

      result = sub_2695B13A8();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t _s16SiriUserSegments16SegmentationTaskC9isEnabledSbyFZ_0()
{
  v9[3] = &type metadata for SiriUserSegmentsFeatureFlag;
  v9[4] = sub_26959EBF8();
  if (qword_28031CF80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_28031D218 + 2))
  {
    v7 = sub_2695B1218();
    v8 = v0;
    MEMORY[0x26D6414B0](47, 0xE100000000000000);
    v1 = sub_2695B1218();
    MEMORY[0x26D6414B0](v1);

    swift_beginAccess();
    v2 = off_28031D218;
    if (*(off_28031D218 + 2))
    {
      v3 = sub_26959D470(v7, v8);
      if (v4)
      {
        v5 = *(v2[7] + v3);
        if (v5 != 2)
        {
          swift_endAccess();

          goto LABEL_9;
        }
      }
    }

    swift_endAccess();
  }

  LOBYTE(v5) = sub_2695B0D88();
LABEL_9:
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return v5 & 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t _s16SiriUserSegments22SegmentationTaskResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_26959CE30(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_26959CE30(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_2695B1328();
      sub_26959CE1C(v4, v5);
      sub_26959CE1C(v2, v3);
      sub_26959CE30(v2, v3);
      sub_26959CE30(v4, v5);
      return v11 & 1;
    }

    sub_26959CE1C(v9, v3);
    sub_26959CE1C(v2, v3);
    sub_26959CE30(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_26959CE1C(*a2, *(a2 + 8));
    sub_26959CE1C(v2, v3);
    sub_26959CE30(v2, v3);
    sub_26959CE30(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_26959CE30(*a1, 1uLL);
  sub_26959CE30(v4, 1uLL);
  return v6;
}

uint64_t get_enum_tag_for_layout_string_16SiriUserSegments22SegmentationTaskResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26959E6D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26959E728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_26959E788(void *result, int a2)
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

uint64_t sub_26959E7B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26959EB50();
  result = MEMORY[0x26D6415C0](v2, &type metadata for SegmentFlags, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_26959D5A0(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26959E82C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v2++;
      v4 = v5;
      if (v5 != 7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_26959F63C(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          v3 = sub_26959F63C((v6 > 1), v7 + 1, 1, v3);
        }

        *(v3 + 2) = v7 + 1;
        v3[v7 + 32] = v4;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = sub_26959E7B8(v3);

  return v8;
}

uint64_t sub_26959E90C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26959E974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26959E9DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26959EA44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26959EAA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26959EB0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2695B0C78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26959EB50()
{
  result = qword_2814B1E98[0];
  if (!qword_2814B1E98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B1E98);
  }

  return result;
}

unint64_t sub_26959EBA4()
{
  result = qword_28031D2F0;
  if (!qword_28031D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D2F0);
  }

  return result;
}

unint64_t sub_26959EBF8()
{
  result = qword_2814B1E18;
  if (!qword_2814B1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B1E18);
  }

  return result;
}

uint64_t sub_26959EC50(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  sub_26959F0F8(v4, v5);

  return sub_26959F108(v2, v3);
}

uint64_t sub_26959EC9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26959F1AC;

  return sub_269596324(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_26959ED78()
{
  result = qword_28031D310;
  if (!qword_28031D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D310);
  }

  return result;
}

uint64_t sub_26959EDCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26959EE34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26959EE94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26959F1B0;

  return sub_26959C9B4(a1, v5);
}

uint64_t sub_26959EF4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26959F004;

  return sub_26959C9B4(a1, v5);
}

uint64_t sub_26959F004()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26959F0F8(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_26959CE30(a1, a2);
  }

  return a1;
}

uint64_t sub_26959F108(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_26959CE1C(a1, a2);
  }

  return a1;
}

uint64_t sub_26959F118(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26959F160(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26959F1B4()
{
  result = v0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_26959F1C4(unint64_t *a1)
{
  v3 = a1[1];
  v1[22] = sub_26959F920(v3);
  v1[26] = sub_2695A0440(v3, &selRef_punchOut);
  v4 = a1[2];
  v1[23] = sub_2695A05CC(v4, &selRef_ended);
  sub_26959FCF4(v3);
  v1[24] = v5 & 1;
  v1[21] = sub_2695A005C(v3) & 1;
  v6 = sub_2695A023C(v4);
  v1[27] = (v6 | sub_2695A0440(v4, &selRef_requestMitigated)) & 1;
  v7 = *a1;
  v1[20] = sub_2695A05CC(v7, &selRef_cancelled);
  v8 = sub_2695A079C(v3);
  v1[25] = v8;
  v9 = 1;
  if ((v1[22] & 1) == 0 && !v1[26])
  {
    v9 = v1[23] | v1[24];
  }

  if ((v1[21] | v1[27]))
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v1[20] | v8) ^ 1) & v9;
  }

  v1[16] = v10 & 1;
  v1[17] = sub_2695A09C4(v3);
  result = sub_2695A0CF8(v7, v3);
  v1[18] = result & 1;
  v1[19] = result & 1 & v1[17];
  return result;
}

char *sub_26959F360(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D340, &qword_2695B2CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_26959F464(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D350, &qword_2695B2D00);
  v10 = *(type metadata accessor for SiriUsageMetrics() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  v15 = *(type metadata accessor for SiriUsageMetrics() - 8);
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

char *sub_26959F63C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D348, &qword_2695B2CF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_26959F730(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D328, &qword_2695B2CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_26959F824(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

BOOL sub_26959F920(unint64_t a1)
{
  v30 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_53:
    v3 = sub_2695B1278();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x26D6416E0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_48;
      }

      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v7;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v10 = [v7 uufrSaid];

    ++v4;
    if (v10)
    {
      MEMORY[0x26D6414F0]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2695B1058();
      }

      sub_2695B1068();
      v29 = v30;
      v4 = v9;
    }
  }

  v12 = 0;
  v30 = v6;
  v28 = v6;
  while (v3 != v12)
  {
    if (v5)
    {
      v13 = MEMORY[0x26D6416E0](v12, a1);
    }

    else
    {
      if (v12 >= *(v2 + 16))
      {
        goto LABEL_50;
      }

      v13 = *(a1 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_49;
    }

    v16 = [v13 uufrShown];

    ++v12;
    if (v16)
    {
      MEMORY[0x26D6414F0]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2695B1058();
      }

      sub_2695B1068();
      v28 = v6;
      v12 = v15;
    }
  }

  v18 = 0;
  v30 = v6;
  while (v3 != v18)
  {
    if (v5)
    {
      v19 = MEMORY[0x26D6416E0](v18, a1);
    }

    else
    {
      if (v18 >= *(v2 + 16))
      {
        goto LABEL_52;
      }

      v19 = *(a1 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_51;
    }

    v22 = [v19 uufrPresented];

    ++v18;
    if (v22)
    {
      MEMORY[0x26D6414F0]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2695B1058();
      }

      sub_2695B1068();
      v6 = v30;
      v18 = v21;
    }
  }

  if (v29 >> 62)
  {
    v24 = sub_2695B1278();
  }

  else
  {
    v24 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24)
  {

LABEL_43:

    return 1;
  }

  if (v28 >> 62)
  {
    v25 = sub_2695B1278();
  }

  else
  {
    v25 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25)
  {
    goto LABEL_43;
  }

  if (v6 >> 62)
  {
    v27 = sub_2695B1278();
  }

  else
  {
    v27 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v27 != 0;
}