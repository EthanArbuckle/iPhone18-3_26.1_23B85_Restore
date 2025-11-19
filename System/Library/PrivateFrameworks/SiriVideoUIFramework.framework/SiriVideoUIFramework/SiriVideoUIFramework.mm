uint64_t sub_2698BD5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a2)
  {
    v8 = objc_opt_self();

    v9 = [v8 VideosUICoreBundle];
    if (a4)
    {

      v10 = sub_2698BDD48(v9, &selRef_bundleIdentifier);
      if (v11)
      {
        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          v13 = objc_allocWithZone(MEMORY[0x277D78328]);

          v14 = sub_2698BDBB0(a3, a4, a1, v4, 0, 0, 0);
          v15 = [objc_opt_self() sharedInstance];
          v16 = [v15 badgeForContentRating:v14 drawUnknownRatingBadge:0];
          if (v16)
          {
            v17 = v16;
            v18 = MEMORY[0x26D647A80]();
            if (v18)
            {
              v19 = v18;

              sub_2698CA634();

              sub_2698BDDA0();
              sub_2698BDAAC();
              v4 = sub_2698CA3F4();

              return v4;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D970, &unk_2698CA950);
            v26 = swift_allocObject();
            *(v26 + 16) = xmmword_2698CA940;
            *(v26 + 56) = MEMORY[0x277D837D0];
            v27 = sub_2698BDB5C();
            *(v26 + 64) = v27;
            *(v26 + 32) = a1;
            *(v26 + 40) = v4;
            OUTLINED_FUNCTION_0(v27, 0x80000002698CAFA0);
            OUTLINED_FUNCTION_1();
          }

          else
          {

            v23 = sub_2698BD924(v14);
            if (v23)
            {
              v24 = v23;
              v25 = [v15 badgeForContentRating:v23 drawUnknownRatingBadge:0];
            }

            else
            {
              v25 = 0;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D970, &unk_2698CA950);
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_2698CA940;
            *(v28 + 56) = MEMORY[0x277D837D0];
            v29 = sub_2698BDB5C();
            *(v28 + 64) = v29;
            *(v28 + 32) = a1;
            *(v28 + 40) = v4;
            OUTLINED_FUNCTION_0(v29, 0x80000002698CAFA0);
            OUTLINED_FUNCTION_1();
          }

          return 0;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D970, &unk_2698CA950);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2698CA940;
    *(v20 + 56) = MEMORY[0x277D837D0];
    v21 = sub_2698BDB5C();
    *(v20 + 64) = v21;
    *(v20 + 32) = a1;
    *(v20 + 40) = v4;
    OUTLINED_FUNCTION_0(v21, 0x80000002698CAFA0);
    OUTLINED_FUNCTION_1();
    return 0;
  }

  return v4;
}

id sub_2698BD924(void *a1)
{
  sub_2698BDD48(a1, &selRef_ratingLabel);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_2698CA654();
  v5 = v4;

  v6 = v3 == 6369841 && v5 == 0xE300000000000000;
  if (v6 || (sub_2698CA6A4() & 1) != 0)
  {

    if ([a1 ratingSystem] == 134)
    {
      v7 = 12849;
LABEL_9:
      v8 = [a1 rank];
      v9 = sub_2698BDD48(a1, &selRef_ratingDescription);
      v11 = v10;
      v12 = objc_allocWithZone(MEMORY[0x277D78328]);
      return sub_2698BDC88(134, v7, 0xE200000000000000, v8, v9, v11);
    }
  }

  else
  {
    if (v3 == 3682674 && v5 == 0xE300000000000000)
    {
    }

    else
    {
      v15 = sub_2698CA6A4();

      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    if ([a1 ratingSystem] == 134)
    {
      v7 = 14385;
      goto LABEL_9;
    }
  }

  return 0;
}

id sub_2698BDAAC()
{
  v0 = sub_2698CA624();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
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

unint64_t sub_2698BDB5C()
{
  result = qword_28033D978;
  if (!qword_28033D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033D978);
  }

  return result;
}

id sub_2698BDBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_2698CA624();

  if (!a4)
  {
    v12 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_2698CA624();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_2698CA624();

LABEL_6:
  v14 = [v7 initWithRatingSystemString:v11 ratingLabel:v12 rank:a5 ratingDescription:v13];

  return v14;
}

id sub_2698BDC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_2698CA624();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_2698CA624();

LABEL_6:
  v12 = [v6 initWithRatingSystem:a1 ratingLabel:v10 rank:a4 ratingDescription:v11];

  return v12;
}

uint64_t sub_2698BDD48(void *a1, SEL *a2)
{
  if (![a1 *a2])
  {
    return 0;
  }

  sub_2698CA634();
  OUTLINED_FUNCTION_1();
  return v2;
}

unint64_t sub_2698BDDA0()
{
  result = qword_28033D980;
  if (!qword_28033D980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28033D980);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x28211E920](0xD00000000000001DLL, a2, v2);
}

void OUTLINED_FUNCTION_1()
{
}

uint64_t ConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v76 = sub_2698CA434();
  v2 = OUTLINED_FUNCTION_1_0(v76);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConfirmationView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = v12;
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D988, &qword_2698CA960);
  OUTLINED_FUNCTION_1_0(v69);
  v77 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D990, &qword_2698CA968);
  v21 = OUTLINED_FUNCTION_1_0(v20);
  v72 = v22;
  v73 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v71 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v70 = &v60 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v75 = &v60 - v29;
  MEMORY[0x28223BE20](v28);
  v68 = &v60 - v30;
  v61 = v1;
  v65 = v13;
  sub_2698BE4BC(v1, v13);
  v31 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v32 = swift_allocObject();
  sub_2698BE524(v13, v32 + v31);
  v79 = v1;
  sub_2698CA404();
  v33 = *MEMORY[0x277D63A90];
  v66 = *(v4 + 104);
  v34 = v8;
  v35 = v8;
  v36 = v76;
  v66(v35, v33, v76);
  v64 = sub_2698BF164(&qword_28033D9A8, &qword_28033D988, &qword_2698CA960);
  v37 = v69;
  sub_2698CA314();
  v38 = *(v4 + 8);
  v62 = v4 + 8;
  v63 = v38;
  v38(v34, v36);
  v39 = *(v77 + 8);
  v77 += 8;
  v39(v19, v37);
  v40 = v61;
  v41 = v65;
  sub_2698BE4BC(v61, v65);
  v42 = swift_allocObject();
  sub_2698BE524(v41, v42 + v31);
  v78 = v40;
  sub_2698CA404();
  v43 = v76;
  v66(v34, *MEMORY[0x277D63A88], v76);
  v44 = v75;
  sub_2698CA314();
  v63(v34, v43);
  v39(v19, v37);
  v46 = v72;
  v45 = v73;
  v47 = *(v72 + 16);
  v48 = v70;
  v49 = v68;
  v47(v70, v68, v73);
  v50 = v71;
  v47(v71, v44, v45);
  v51 = *(v46 + 80);
  v52 = (v51 + 16) & ~v51;
  v53 = (v24 + v51 + v52) & ~v51;
  v54 = swift_allocObject();
  v55 = *(v46 + 32);
  v55(v54 + v52, v48, v45);
  v55(v54 + v53, v50, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9B0, &qword_2698CA980);
  v56 = sub_2698CA524();
  v57 = sub_2698BEE48();
  v80 = v56;
  v81 = v57;
  swift_getOpaqueTypeConformance2();
  sub_2698CA4D4();
  v58 = *(v46 + 8);
  v58(v75, v45);
  return (v58)(v49, v45);
}

uint64_t type metadata accessor for ConfirmationView()
{
  result = qword_28033D9C0;
  if (!qword_28033D9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2698BE4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698BE524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_2698BE618(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9E8, &unk_2698CAA20);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F8, &unk_2698CAA30);
  OUTLINED_FUNCTION_3(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v18 = &v24 - v17;
  sub_2698CA494();
  v19 = sub_2698CA594();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    return sub_2698BF200(v18, &qword_28033D9F8, &unk_2698CAA30);
  }

  v21 = a1 + *(type metadata accessor for ConfirmationView() + 20);
  a2();
  v22 = sub_2698C9F64();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v22);
  v23 = sub_2698CA504();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v23);
  sub_2698CA584();
  sub_2698BF200(v8, &qword_28033D9E8, &unk_2698CAA20);
  sub_2698BF200(v13, &qword_28033D9F0, &unk_2698CAB60);
  return (*(*(v19 - 8) + 8))(v18, v19);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ConfirmationView() - 8);
  v2 = *(*v1 + 80);
  v15 = (v2 + 16) & ~v2;
  v16 = *(*v1 + 64);
  v3 = sub_2698CA4B4();
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 8))(v0 + v15);
  v5 = v0 + v15 + v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D998, &unk_2698CA970);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = sub_2698CA144();
  v10 = v9[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_0(v11);
  v13 = *(v12 + 8);
  v13(v5 + v10, v11);
  v8(v5 + v9[6], v6);
  v13(v5 + v9[7], v11);

  return MEMORY[0x2821FE8E8](v17, v15 + v16, v2 | 7);
}

uint64_t sub_2698BEA04(void (*a1)(void))
{
  v3 = type metadata accessor for ConfirmationView();
  OUTLINED_FUNCTION_3(v3);
  return sub_2698BE618(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

uint64_t sub_2698BEA64@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ConfirmationView() + 20);
  a1();
  sub_2698BF1AC();
  result = sub_2698CA2F4();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_2698BEB10()
{
  v0 = sub_2698CA524();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D990, &qword_2698CA968);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033D988, &qword_2698CA960);
  v6 = sub_2698BF164(&qword_28033D9A8, &qword_28033D988, &qword_2698CA960);
  v13 = v5;
  v14 = v6;
  swift_getOpaqueTypeConformance2();
  v7 = sub_2698CA304();
  v8 = MEMORY[0x277CE11C8];
  v9 = MEMORY[0x277D63A60];
  v15 = MEMORY[0x277CE11C8];
  v16 = MEMORY[0x277D63A60];
  v13 = v7;
  v10 = sub_2698CA304();
  v12[3] = v8;
  v12[4] = v9;
  v12[0] = v10;
  sub_2698CA514();
  sub_2698BEE48();
  sub_2698CA3B4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2698BECE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D990, &qword_2698CA968);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v6, v4 | 7);
}

uint64_t sub_2698BEDA0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D990, &qword_2698CA968) - 8);
  v2 = v0 + ((*(v1 + 64) + *(v1 + 80) + ((*(v1 + 80) + 16) & ~*(v1 + 80))) & ~*(v1 + 80));

  return sub_2698BEB10();
}

unint64_t sub_2698BEE48()
{
  result = qword_28033D9B8;
  if (!qword_28033D9B8)
  {
    sub_2698CA524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033D9B8);
  }

  return result;
}

uint64_t sub_2698BEEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2698CA4B4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2698CA144();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2698BEFD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2698CA4B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2698CA144();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2698BF09C()
{
  result = sub_2698CA4B4();
  if (v1 <= 0x3F)
  {
    result = sub_2698CA144();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2698BF164(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2698BF1AC()
{
  result = qword_28033D9E0;
  if (!qword_28033D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033D9E0);
  }

  return result;
}

uint64_t sub_2698BF200(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2698BF298()
{
  sub_2698C1604();
  sub_2698CA674();
  sub_2698CA674();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2698CA6A4();
  }

  return v1 & 1;
}

uint64_t DisambiguationList.body.getter()
{
  v0 = type metadata accessor for DisambiguationList();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2698C1BEC();
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  swift_allocObject();
  sub_2698C1F40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA10, &qword_2698CAA58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DA18, &qword_2698CAA60);
  sub_2698BF164(&qword_28033DA20, &qword_28033DA18, &qword_2698CAA60);
  swift_getOpaqueTypeConformance2();
  return sub_2698CA4D4();
}

uint64_t type metadata accessor for DisambiguationList()
{
  result = qword_28033DA28;
  if (!qword_28033DA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2698BF540@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = type metadata accessor for DisambiguationList();
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = sub_2698CA574();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA18, &qword_2698CAA60);
  v7 = *(v18[0] - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v18[0]);
  v11 = v18 - v10;
  v12 = *(v2 + 28);
  v13 = MEMORY[0x26D647520](v9);
  v24 = MEMORY[0x277D837D0];
  v25 = MEMORY[0x277D63F80];
  v22 = v13;
  v23 = v14;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_2698CA564();
  sub_2698C1BEC();
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  swift_allocObject();
  sub_2698C1F40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA48, &qword_2698CAB00);
  sub_2698C1520();
  sub_2698CA534();
  sub_2698CA174();
  sub_2698BF298();
  sub_2698BF164(&qword_28033DA20, &qword_28033DA18, &qword_2698CAA60);
  v16 = v18[0];
  sub_2698CA3B4();
  return (*(v7 + 8))(v11, v16);
}

uint64_t sub_2698BF850(uint64_t a1)
{
  v2 = type metadata accessor for DisambiguationList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28);
  sub_2698CA164();
  sub_2698C1BEC();
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  swift_allocObject();
  sub_2698C1F40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA68, &qword_2698CAB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA70, &qword_2698CAB10);
  sub_2698BF164(&qword_28033DA78, &qword_28033DA68, &qword_2698CAB08);
  sub_2698CA554();
  sub_2698C1A64(&qword_28033DA58, MEMORY[0x277D63D08]);
  swift_getOpaqueTypeConformance2();
  sub_2698C1A64(&qword_28033DA80, MEMORY[0x277D61E80]);
  return sub_2698CA414();
}

uint64_t sub_2698BFAB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v29 = a1;
  v33 = a2;
  v2 = sub_2698CA1E4();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = v4;
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DisambiguationList();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA88, &qword_2698CAB18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v28 = sub_2698CA554();
  v11 = *(v28 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v28);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2698CA194();
  v62 = MEMORY[0x277D837D0];
  v63 = MEMORY[0x277D63F80];
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v16)
  {
    v18 = v16;
  }

  v60 = v17;
  v61 = v18;
  v19 = sub_2698CA1B4();
  if (v20)
  {
    v21 = MEMORY[0x277D63F80];
    v22 = MEMORY[0x277D837D0];
  }

  else
  {
    v19 = 0;
    v22 = 0;
    v21 = 0;
    v57 = 0;
  }

  v55 = v19;
  v56 = v20;
  v58 = v22;
  v59 = v21;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_2698BFF18(v10);
  sub_2698C1868();
  v23 = sub_2698CA304();
  sub_2698C20BC(v10, &qword_28033DA88, &qword_2698CAB18);
  v35 = MEMORY[0x277CE11C8];
  v36 = MEMORY[0x277D63A60];
  v34 = v23;
  sub_2698CA544();
  sub_2698C1BEC();
  sub_2698C1BEC();
  v24 = (v6 + *(v30 + 80) + ((*(v27 + 80) + 16) & ~*(v27 + 80))) & ~*(v30 + 80);
  swift_allocObject();
  sub_2698C1F40();
  sub_2698C1F40();
  sub_2698C1A64(&qword_28033DA58, MEMORY[0x277D63D08]);
  v25 = v28;
  sub_2698CA344();

  return (*(v11 + 8))(v14, v25);
}

uint64_t sub_2698BFF18@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAF8, &qword_2698CAB70);
  v1 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v81 - v2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAD8, &qword_2698CAB38);
  v3 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v5 = &v81 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB00, &qword_2698CAB78);
  v6 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v96 = &v81 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAC8, &qword_2698CAB30);
  v8 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v98 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB08, &qword_2698CAB80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB10, &qword_2698CAB88);
  v12 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v100 = &v81 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB18, &qword_2698CAB90);
  v14 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v90 = &v81 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAB0, &qword_2698CAB28);
  v16 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v94 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAA0, &qword_2698CAB20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v101 = &v81 - v20;
  v88 = sub_2698C9F14();
  v87 = *(v88 - 8);
  v21 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB20, &qword_2698CAB98);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v81 - v25;
  v27 = sub_2698C9FB4();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = sub_2698CA444();
  v103 = *(v29 - 8);
  v104 = v29;
  v30 = *(v103 + 64);
  MEMORY[0x28223BE20](v29);
  v102 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB28, &qword_2698CABA0);
  v92 = *(v32 - 8);
  v93 = v32;
  v33 = *(v92 + 64);
  MEMORY[0x28223BE20](v32);
  v91 = &v81 - v34;
  v85 = sub_2698C9EF4();
  v35 = *(v85 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v85);
  v38 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB30, &qword_2698CABA8);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = (&v81 - v41);
  sub_2698CA1D4();
  v43 = sub_2698CA1C4();
  if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_2698C1AAC();
    sub_2698CA294();
    sub_2698C2064();
    swift_storeEnumTagMultiPayload();
    sub_2698C18F4();
    sub_2698C1B60();
    sub_2698CA294();
    return sub_2698C20BC(v5, &qword_28033DAD8, &qword_2698CAB38);
  }

  else
  {
    v83 = v10;
    v84 = v18;
    v45 = v5;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v64 = *v42;
        v65 = v42[1];
        sub_2698C9FA4();

        v66 = v102;
        sub_2698CA454();
        v67 = v87;
        v68 = v86;
        v69 = v88;
        (*(v87 + 104))(v86, *MEMORY[0x277D62BE0], v88);
        v70 = sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20]);
        v71 = v91;
        v72 = v104;
        sub_2698CA324();
        (*(v67 + 8))(v68, v69);
        (*(v103 + 8))(v66, v72);
        v74 = v92;
        v73 = v93;
        (*(v92 + 16))(v90, v71, v93);
        swift_storeEnumTagMultiPayload();
        v110 = v72;
        v111 = v70;
        swift_getOpaqueTypeConformance2();
        v75 = v94;
        sub_2698CA294();
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C1980();
        sub_2698C1AAC();
        v76 = v101;
        sub_2698CA294();
        sub_2698C20BC(v75, &qword_28033DAB0, &qword_2698CAB28);
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C18F4();
        sub_2698C1B60();
        sub_2698CA294();
        sub_2698C20BC(v76, &qword_28033DAA0, &qword_2698CAB20);
        result = (*(v74 + 8))(v71, v73);
        break;
      case 2u:
      case 3u:
        sub_2698C9F94();
        v59 = v102;
        sub_2698CA454();
        v61 = v103;
        v60 = v104;
        (*(v103 + 16))(v96, v59, v104);
        swift_storeEnumTagMultiPayload();
        sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20]);
        v62 = v98;
        sub_2698CA294();
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C1980();
        sub_2698C1AAC();
        v63 = v101;
        sub_2698CA294();
        sub_2698C20BC(v62, &qword_28033DAC8, &qword_2698CAB30);
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C18F4();
        sub_2698C1B60();
        sub_2698CA294();
        sub_2698C20BC(v63, &qword_28033DAA0, &qword_2698CAB20);
        result = (*(v61 + 8))(v59, v60);
        break;
      case 4u:
      case 5u:
        sub_2698C9F94();
        v77 = v102;
        sub_2698CA454();
        v79 = v103;
        v78 = v104;
        (*(v103 + 16))(v96, v77, v104);
        swift_storeEnumTagMultiPayload();
        sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20]);
        v80 = v98;
        sub_2698CA294();
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C1AAC();
        sub_2698CA294();
        sub_2698C20BC(v80, &qword_28033DAC8, &qword_2698CAB30);
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C18F4();
        sub_2698C1B60();
        sub_2698CA294();
        sub_2698C20BC(v45, &qword_28033DAD8, &qword_2698CAB38);
        result = (*(v79 + 8))(v77, v78);
        break;
      default:
        v82 = v35;
        v46 = *(v35 + 32);
        v81 = v38;
        v47 = v85;
        v46(v38, v42, v85);
        __swift_storeEnumTagSinglePayload(v26, 1, 1, v47);
        sub_2698C9F84();
        sub_2698C20BC(v26, &qword_28033DB20, &qword_2698CAB98);
        v48 = v102;
        sub_2698CA454();
        v49 = v87;
        v50 = v86;
        v51 = v88;
        (*(v87 + 104))(v86, *MEMORY[0x277D62BE0], v88);
        v52 = sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20]);
        v53 = v91;
        v54 = v104;
        sub_2698CA324();
        (*(v49 + 8))(v50, v51);
        (*(v103 + 8))(v48, v54);
        v56 = v92;
        v55 = v93;
        (*(v92 + 16))(v90, v53, v93);
        swift_storeEnumTagMultiPayload();
        v110 = v54;
        v111 = v52;
        swift_getOpaqueTypeConformance2();
        v57 = v94;
        sub_2698CA294();
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C1980();
        sub_2698C1AAC();
        v58 = v101;
        sub_2698CA294();
        sub_2698C20BC(v57, &qword_28033DAB0, &qword_2698CAB28);
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C18F4();
        sub_2698C1B60();
        sub_2698CA294();
        sub_2698C20BC(v58, &qword_28033DAA0, &qword_2698CAB20);
        (*(v56 + 8))(v53, v55);
        result = (*(v82 + 8))(v81, v85);
        break;
    }
  }

  return result;
}

uint64_t sub_2698C1054()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9E8, &unk_2698CAA20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F8, &unk_2698CAA30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_2698CA494();
  v12 = sub_2698CA594();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_2698C20BC(v11, &qword_28033D9F8, &unk_2698CAA30);
  }

  sub_2698CA1A4();
  v14 = sub_2698CA504();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v14);
  sub_2698CA584();
  sub_2698C20BC(v3, &qword_28033D9E8, &unk_2698CAA20);
  sub_2698C20BC(v7, &qword_28033D9F0, &unk_2698CAB60);
  return (*(*(v12 - 8) + 8))(v11, v12);
}

uint64_t sub_2698C1268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2698CA4B4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2698CA184();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2698C1318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2698CA4B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2698CA184();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2698C13BC()
{
  result = sub_2698CA4B4();
  if (v1 <= 0x3F)
  {
    result = sub_2698CA184();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2698C149C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DisambiguationList() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2698C1520()
{
  result = qword_28033DA50;
  if (!qword_28033DA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DA48, &qword_2698CAB00);
    sub_2698CA554();
    sub_2698C1A64(&qword_28033DA58, MEMORY[0x277D63D08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DA50);
  }

  return result;
}

unint64_t sub_2698C1604()
{
  result = qword_28033DA60;
  if (!qword_28033DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DA60);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v2 = type metadata accessor for DisambiguationList();
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_2698CA4B4();
  OUTLINED_FUNCTION_0_1(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = v1 + v5 + *(v0 + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_1(v11);
  (*(v12 + 8))(v10);
  v13 = sub_2698CA184();
  v14 = *(v13 + 20);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA00, &qword_2698CAA48);
  OUTLINED_FUNCTION_0_1(v15);
  (*(v16 + 8))(v10 + v14);
  v17 = *(v13 + 24);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA08, &qword_2698CAA50);
  OUTLINED_FUNCTION_0_1(v18);
  (*(v19 + 8))(v10 + v17);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_2698C17E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DisambiguationList() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2698BFAB0(v4, a1);
}

unint64_t sub_2698C1868()
{
  result = qword_28033DA90;
  if (!qword_28033DA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DA88, &qword_2698CAB18);
    sub_2698C18F4();
    sub_2698C1B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DA90);
  }

  return result;
}

unint64_t sub_2698C18F4()
{
  result = qword_28033DA98;
  if (!qword_28033DA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DAA0, &qword_2698CAB20);
    sub_2698C1980();
    sub_2698C1AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DA98);
  }

  return result;
}

unint64_t sub_2698C1980()
{
  result = qword_28033DAA8;
  if (!qword_28033DAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DAB0, &qword_2698CAB28);
    sub_2698CA444();
    sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DAA8);
  }

  return result;
}

uint64_t sub_2698C1A64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2698C1AAC()
{
  result = qword_28033DAC0;
  if (!qword_28033DAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DAC8, &qword_2698CAB30);
    sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DAC0);
  }

  return result;
}

unint64_t sub_2698C1B60()
{
  result = qword_28033DAD0;
  if (!qword_28033DAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DAD8, &qword_2698CAB38);
    sub_2698C1AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DAD0);
  }

  return result;
}

uint64_t sub_2698C1BEC()
{
  OUTLINED_FUNCTION_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_3_0();
  v6(v5);
  return v0;
}

uint64_t sub_2698C1C44()
{
  v2 = (type metadata accessor for DisambiguationList() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_2698CA1E4();
  OUTLINED_FUNCTION_2_0(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = (v4 + v5 + v11) & ~v11;
  v38 = *(v10 + 64);
  v13 = v3 | v11;
  v14 = sub_2698CA4B4();
  OUTLINED_FUNCTION_0_1(v14);
  (*(v15 + 8))(v1 + v4);
  v16 = v1 + v4 + v2[7];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_0(v17);
  v19 = *(v18 + 8);
  v19(v16, v17);
  v20 = sub_2698CA184();
  v21 = *(v20 + 20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA00, &qword_2698CAA48);
  OUTLINED_FUNCTION_0_1(v22);
  (*(v23 + 8))(v16 + v21);
  v24 = *(v20 + 24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA08, &qword_2698CAA50);
  OUTLINED_FUNCTION_0_1(v25);
  (*(v26 + 8))(v16 + v24);
  v19(v1 + v12, v17);
  v27 = v0[7];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAE0, &qword_2698CAB40);
  OUTLINED_FUNCTION_0_0(v28);
  v30 = *(v29 + 8);
  v30(v1 + v12 + v27, v28);
  v30(v1 + v12 + v0[8], v28);
  v31 = v0[9];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAE8, &qword_2698CAB48);
  OUTLINED_FUNCTION_0_1(v32);
  (*(v33 + 8))(v1 + v12 + v31);
  v34 = v0[10];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAF0, &unk_2698CAB50);
  OUTLINED_FUNCTION_0_1(v35);
  (*(v36 + 8))(v1 + v12 + v34);

  return MEMORY[0x2821FE8E8](v1, v12 + v38, v13 | 7);
}

uint64_t sub_2698C1F40()
{
  OUTLINED_FUNCTION_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_3_0();
  v6(v5);
  return v0;
}

uint64_t sub_2698C1F98()
{
  v1 = *(type metadata accessor for DisambiguationList() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2698CA1E4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2698C1054();
}

uint64_t sub_2698C2064()
{
  OUTLINED_FUNCTION_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_3_0();
  v7(v6);
  return v0;
}

uint64_t sub_2698C20BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2698C216C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2698CA4B4();
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_2698CA134();
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_2698C2258(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_2698CA4B4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_2698CA134();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for ResultsList()
{
  result = qword_28033DB38;
  if (!qword_28033DB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2698C236C()
{
  sub_2698C2408();
  if (v0 <= 0x3F)
  {
    sub_2698CA4B4();
    if (v1 <= 0x3F)
    {
      sub_2698CA134();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2698C2408()
{
  if (!qword_28033DB48)
  {
    sub_2698CA5F4();
    sub_2698C46EC(&qword_28033DB50, MEMORY[0x277D63F60]);
    v0 = sub_2698CA274();
    if (!v1)
    {
      atomic_store(v0, &qword_28033DB48);
    }
  }
}

uint64_t sub_2698C24BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB58, &qword_2698CAC38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v37 - v5;
  v7 = type metadata accessor for ResultsList();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB60, &qword_2698CAC40);
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = v37 - v16;
  v37[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB68, &qword_2698CAC48);
  v18 = OUTLINED_FUNCTION_1_0(v37[0]);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = v37 - v23;
  sub_2698C428C(v2, v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ResultsList);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  sub_2698C422C(v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for ResultsList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB80, &qword_2698CAC68);
  sub_2698BF164(&qword_28033DB88, &qword_28033DB80, &qword_2698CAC68);
  sub_2698CA4D4();
  v27 = *MEMORY[0x277D63BA8];
  v28 = sub_2698CA4E4();
  OUTLINED_FUNCTION_0_0(v28);
  (*(v29 + 104))(v6, v27);
  v30 = *MEMORY[0x277D63BC0];
  v31 = sub_2698CA4F4();
  OUTLINED_FUNCTION_0_0(v31);
  (*(v32 + 104))(v6, v30, v31);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v31);
  OUTLINED_FUNCTION_2_1();
  v34 = sub_2698BF164(v33, &qword_28033DB60, &qword_2698CAC40);
  sub_2698CA364();
  sub_2698C20BC(v6, &qword_28033DB58, &qword_2698CAC38);
  (*(v13 + 8))(v17, v10);
  v37[2] = v10;
  v37[3] = v34;
  OUTLINED_FUNCTION_3_1();
  swift_getOpaqueTypeConformance2();
  v35 = v37[0];
  sub_2698CA3B4();
  return (*(v20 + 8))(v24, v35);
}

uint64_t sub_2698C28C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB98, &qword_2698CAC70);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ResultsList();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = *(MEMORY[0x28223BE20](v11 - 8) + 32);
  sub_2698C428C(a1, &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ResultsList);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  sub_2698C422C(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ResultsList);
  sub_2698C2F28(sub_2698C3F74, v16, &v25);

  if (v26)
  {
    sub_2698C3FE4(&v25, v27);
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v17 = sub_2698CA304();

    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_2698C20BC(&v25, &qword_28033DBA0, &qword_2698CAC78);
    v17 = 0;
  }

  v27[0] = sub_2698CA124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBA8, &qword_2698CAC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBB0, &qword_2698CAC88);
  type metadata accessor for VideoResult();
  sub_2698BF164(&qword_28033DBB8, &qword_28033DBA8, &qword_2698CAC80);
  sub_2698C46EC(&qword_28033DBC0, type metadata accessor for VideoResult);
  sub_2698C46EC(&qword_28033DBC8, MEMORY[0x277D61E28]);
  sub_2698CA414();
  v18 = v4[2];
  v18(v8, v10, v3);
  v19 = v24;
  *v24 = v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBD0, &unk_2698CAC90);
  v18(v19 + *(v20 + 48), v8, v3);
  v21 = v4[1];
  v21(v10, v3);
  v21(v8, v3);
}

uint64_t sub_2698C2CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9E8, &unk_2698CAA20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F8, &unk_2698CAA30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v16 = a2 + *(type metadata accessor for ResultsList() + 20);
  sub_2698CA494();
  v17 = sub_2698CA594();
  if (__swift_getEnumTagSinglePayload(v15, 1, v17) == 1)
  {
    return sub_2698C20BC(v15, &qword_28033D9F8, &unk_2698CAA30);
  }

  v19 = sub_2698C9F64();
  (*(*(v19 - 8) + 16))(v11, a1, v19);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v19);
  v20 = sub_2698CA504();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v20);
  sub_2698CA584();
  sub_2698C20BC(v7, &qword_28033D9E8, &unk_2698CAA20);
  sub_2698C20BC(v11, &qword_28033D9F0, &unk_2698CAB60);
  return (*(*(v17 - 8) + 8))(v15, v17);
}

double sub_2698C2F28@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v60 = a2;
  v61 = a3;
  v55 = a1;
  v3 = sub_2698CA5D4();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB20, &qword_2698CAB98);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - v9;
  v58 = sub_2698CA5B4();
  v54 = *(v58 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v58);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBE0, &qword_2698CACA0);
  v57 = *(v59 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBE8, &qword_2698CACA8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v50 - v18;
  v20 = sub_2698CA0F4();
  v53 = *(v20 - 8);
  v21 = *(v53 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v23 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  sub_2698CA114();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v26 = v61;
    sub_2698C20BC(v19, &qword_28033DBE8, &qword_2698CACA8);
    v27 = sub_2698CA104();
    if (v28)
    {
      v74 = MEMORY[0x277D837D0];
      v75 = MEMORY[0x277D63F80];
      v72 = v27;
      v73 = v28;
      v71 = 0;
      v69 = 0u;
      v70 = 0u;
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      sub_2698CA5C4();
      v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBF0, &unk_2698CACB0);
      v26[4] = sub_2698C40E0();
      __swift_allocate_boxed_opaque_existential_1(v26);
      sub_2698C46EC(&qword_28033DC00, MEMORY[0x277D63EB0]);
      v29 = v52;
      sub_2698CA3C4();
      (*(v51 + 8))(v6, v29);
    }

    else
    {
      v26[4] = 0;
      result = 0.0;
      *v26 = 0u;
      *(v26 + 1) = 0u;
    }
  }

  else
  {
    v31 = MEMORY[0x277D61E40];
    v32 = sub_2698C422C(v19, v25, MEMORY[0x277D61E40]);
    v33 = MEMORY[0x26D647490](v32);
    v34 = MEMORY[0x277D837D0];
    v35 = MEMORY[0x277D63F80];
    v74 = MEMORY[0x277D837D0];
    v75 = MEMORY[0x277D63F80];
    v72 = v33;
    v73 = v36;
    v37 = sub_2698CA0D4();
    *(&v70 + 1) = v34;
    v71 = v35;
    *&v69 = v37;
    *(&v69 + 1) = v38;
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    sub_2698CA0E4();
    sub_2698C37A0(v10, v62);
    sub_2698C20BC(v10, &qword_28033DB20, &qword_2698CAB98);
    __swift_project_boxed_opaque_existential_1(v62, v62[3]);
    v39 = sub_2698CA304();
    v62[8] = MEMORY[0x277CE11C8];
    v62[9] = MEMORY[0x277D63A60];
    v62[5] = v39;
    sub_2698CA5A4();
    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_2698C428C(v25, v23, MEMORY[0x277D61E40]);
    v40 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v41 = swift_allocObject();
    sub_2698C422C(v23, v41 + v40, v31);
    v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    v43 = v60;
    *v42 = v55;
    v42[1] = v43;
    v44 = sub_2698C46EC(&qword_28033DC18, MEMORY[0x277D63E70]);

    v45 = v56;
    v46 = v58;
    sub_2698CA344();

    (*(v54 + 8))(v13, v46);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC20, qword_2698CACD0);
    v48 = v61;
    v61[3] = v47;
    v48[4] = sub_2698C4504();
    __swift_allocate_boxed_opaque_existential_1(v48);
    v72 = v46;
    v73 = v44;
    swift_getOpaqueTypeConformance2();
    v49 = v59;
    sub_2698CA3C4();
    (*(v57 + 8))(v45, v49);
    sub_2698C4620(v25);
  }

  return result;
}

uint64_t sub_2698C3610@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2698CA2D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VideoResult();
  sub_2698C428C(a1, a2 + v9[7], MEMORY[0x277D61E28]);
  sub_2698CA5F4();
  sub_2698C46EC(&qword_28033DB50, MEMORY[0x277D63F60]);
  *a2 = sub_2698CA264();
  a2[1] = v10;
  v11 = a2 + v9[5];
  _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
  v12 = v9[6];
  v14[1] = 0x4028000000000000;
  (*(v5 + 104))(v8, *MEMORY[0x277CE0A80], v4);
  sub_2698C408C();
  return sub_2698CA214();
}

uint64_t sub_2698C37A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_2698C9F14();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2698C9FB4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2698CA444();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB20, &qword_2698CAB98);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = sub_2698C9EF4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2698C467C(a1, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    result = sub_2698C20BC(v19, &qword_28033DB20, &qword_2698CAB98);
    v26 = MEMORY[0x277CE1410];
    v27 = v36;
    v36[3] = MEMORY[0x277CE1428];
    v27[4] = v26;
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v20);
    sub_2698C9F84();
    sub_2698C20BC(v17, &qword_28033DB20, &qword_2698CAB98);
    sub_2698CA454();
    v29 = v34;
    v28 = v35;
    (*(v34 + 104))(v6, *MEMORY[0x277D62AA8], v35);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB28, &qword_2698CABA0);
    v31 = v36;
    v36[3] = v30;
    v32 = sub_2698C46EC(&qword_28033DAB8, MEMORY[0x277D63B20]);
    v37 = v9;
    v38 = v32;
    v31[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v31);
    sub_2698CA324();
    (*(v29 + 8))(v6, v28);
    (*(v33 + 8))(v12, v9);
    return (*(v21 + 8))(v24, v20);
  }

  return result;
}

uint64_t sub_2698C3BD4(uint64_t a1, void (*a2)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = sub_2698C9F64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2698CA0B4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2698C20BC(v6, &qword_28033D9F0, &unk_2698CAB60);
  }

  (*(v8 + 32))(v11, v6, v7);
  a2(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2698C3D68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ResultsList() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2698C28C4(v4, a1);
}

uint64_t objectdestroyTm_1()
{
  v2 = type metadata accessor for ResultsList();
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);

  v8 = *(v0 + 28);
  v9 = sub_2698CA4B4();
  OUTLINED_FUNCTION_0_1(v9);
  (*(v10 + 8))(v1 + v5 + v8);
  v11 = v1 + v5 + *(v0 + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB70, &qword_2698CAC50);
  OUTLINED_FUNCTION_0_1(v12);
  (*(v13 + 8))(v11);
  v14 = sub_2698CA134();
  v15 = *(v14 + 20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB78, &unk_2698CAC58);
  OUTLINED_FUNCTION_0_1(v16);
  (*(v17 + 8))(v11 + v15);
  v18 = *(v14 + 24);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAE0, &qword_2698CAB40);
  OUTLINED_FUNCTION_0_1(v19);
  (*(v20 + 8))(v11 + v18);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_2698C3F74(uint64_t a1)
{
  v3 = *(type metadata accessor for ResultsList() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2698C2CD4(a1, v4);
}

uint64_t sub_2698C3FE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

unint64_t sub_2698C408C()
{
  result = qword_28033DBD8;
  if (!qword_28033DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DBD8);
  }

  return result;
}

unint64_t sub_2698C40E0()
{
  result = qword_28033DBF8;
  if (!qword_28033DBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DBF0, &unk_2698CACB0);
    sub_2698C46EC(&qword_28033DC00, MEMORY[0x277D63EB0]);
    sub_2698C46EC(&qword_28033DC08, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DBF8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2698C422C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2698C428C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2698C42EC()
{
  v2 = sub_2698CA0F4();
  OUTLINED_FUNCTION_2_0(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_0(v11);
  v13 = *(v12 + 8);
  v13(v10, v11);
  v13(v10 + v0[7], v11);
  v14 = v0[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC10, &unk_2698CACC0);
  OUTLINED_FUNCTION_0_1(v15);
  (*(v16 + 8))(v10 + v14);
  v17 = v0[9];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAF0, &unk_2698CAB50);
  OUTLINED_FUNCTION_0_1(v18);
  (*(v19 + 8))(v10 + v17);
  v20 = *(v1 + v9 + 8);

  return MEMORY[0x2821FE8E8](v1, v9 + 16, v7 | 7);
}

uint64_t sub_2698C4474()
{
  v1 = *(sub_2698CA0F4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_2698C3BD4(v0 + v2, v4);
}

unint64_t sub_2698C4504()
{
  result = qword_28033DC28;
  if (!qword_28033DC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DC20, qword_2698CACD0);
    sub_2698CA5B4();
    sub_2698C46EC(&qword_28033DC18, MEMORY[0x277D63E70]);
    swift_getOpaqueTypeConformance2();
    sub_2698C46EC(&qword_28033DC08, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DC28);
  }

  return result;
}

uint64_t sub_2698C4620(uint64_t a1)
{
  v2 = sub_2698CA0F4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2698C467C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB20, &qword_2698CAB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C46EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2698C4734()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DB68, &qword_2698CAC48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DB60, &qword_2698CAC40);
  OUTLINED_FUNCTION_2_1();
  sub_2698BF164(v0, &qword_28033DB60, &qword_2698CAC40);
  OUTLINED_FUNCTION_3_1();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2698C4830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2698CA4B4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2698CA0A4();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2698C48E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2698CA4B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2698CA0A4();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for StandardButtonView()
{
  result = qword_28033DC30;
  if (!qword_28033DC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2698C49D0()
{
  result = sub_2698CA4B4();
  if (v1 <= 0x3F)
  {
    result = sub_2698CA0A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2698C4A70()
{
  v1 = type metadata accessor for StandardButtonView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2698C531C(v0, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2698C5384(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC40, &qword_2698CAD68);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DC48, &qword_2698CAD70);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033D988, &qword_2698CA960);
  v8 = sub_2698CA4C4();
  v9 = sub_2698BF164(&qword_28033D9A8, &qword_28033D988, &qword_2698CA960);
  v10 = sub_2698C5458();
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v6;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_2698CA4D4();
}

uint64_t sub_2698C4C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v25 = sub_2698CA4C4();
  v27 = *(v25 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StandardButtonView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D988, &qword_2698CA960);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC48, &qword_2698CAD70);
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v26);
  v17 = &v25 - v16;
  sub_2698C531C(a1, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_2698C5384(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v29 = a1;
  sub_2698CA404();
  sub_2698CA2A4();
  v20 = sub_2698BF164(&qword_28033D9A8, &qword_28033D988, &qword_2698CA960);
  v21 = sub_2698C5458();
  v22 = v25;
  sub_2698CA394();
  (*(v27 + 8))(v5, v22);
  (*(v10 + 8))(v13, v9);
  v30 = v9;
  v31 = v22;
  v32 = v20;
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_2698CA3B4();
  return (*(v14 + 8))(v17, v23);
}

uint64_t sub_2698C5010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9E8, &unk_2698CAA20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F8, &unk_2698CAA30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  sub_2698CA494();
  v14 = sub_2698CA594();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    return sub_2698C20BC(v13, &qword_28033D9F8, &unk_2698CAA30);
  }

  v16 = a1 + *(type metadata accessor for StandardButtonView() + 20);
  sub_2698CA084();
  v17 = sub_2698C9F64();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  v18 = sub_2698CA504();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v18);
  sub_2698CA584();
  sub_2698C20BC(v5, &qword_28033D9E8, &unk_2698CAA20);
  sub_2698C20BC(v9, &qword_28033D9F0, &unk_2698CAB60);
  return (*(*(v14 - 8) + 8))(v13, v14);
}

uint64_t sub_2698C5230@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for StandardButtonView() + 20);
  MEMORY[0x26D647460]();
  sub_2698BF1AC();
  v3 = sub_2698CA2F4();
  v5 = v4;
  v7 = v6;
  sub_2698CA2C4();
  v8 = sub_2698CA2E4();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_2698C566C(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_2698C531C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C5384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C53E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StandardButtonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2698C4C5C(v4, a1);
}

unint64_t sub_2698C5458()
{
  result = qword_28033DC50;
  if (!qword_28033DC50)
  {
    sub_2698CA4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DC50);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for StandardButtonView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2698CA4B4();
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = v0 + v3 + v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_1(v8);
  (*(v9 + 8))(v7);
  v10 = *(sub_2698CA0A4() + 20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D998, &unk_2698CA970);
  OUTLINED_FUNCTION_0_1(v11);
  (*(v12 + 8))(v7 + v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2698C5604()
{
  v1 = *(type metadata accessor for StandardButtonView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2698C5010(v2);
}

uint64_t sub_2698C566C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2698C56C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2698CA2D4();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2698CA5F4();
  sub_2698C8D24(&qword_28033DB50, MEMORY[0x277D63F60]);
  *a2 = sub_2698CA264();
  a2[1] = v12;
  v13 = type metadata accessor for VideoResult();
  v14 = a2 + v13[5];
  _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
  v15 = v13[6];
  v17[1] = 0x4028000000000000;
  (*(v7 + 104))(v11, *MEMORY[0x277CE0A80], v4);
  sub_2698C408C();
  sub_2698CA214();
  return sub_2698C85B4(a1, a2 + v13[7], MEMORY[0x277D61E28]);
}

uint64_t type metadata accessor for VideoResult()
{
  result = qword_28033DC70;
  if (!qword_28033DC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2698C58B0(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2698CA4B4();
    v10 = OUTLINED_FUNCTION_3_2(v9);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC68, qword_2698CAD80);
      v15 = OUTLINED_FUNCTION_3_2(v14);
      if (*(v16 + 84) == a2)
      {
        v12 = v15;
        v13 = a3[6];
      }

      else
      {
        v12 = sub_2698CA074();
        v13 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v13, a2, v12);
  }
}

void *sub_2698C59E4(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_2698CA4B4();
    v9 = OUTLINED_FUNCTION_3_2(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC68, qword_2698CAD80);
      v14 = OUTLINED_FUNCTION_3_2(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = sub_2698CA074();
        v12 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

void sub_2698C5AF4()
{
  sub_2698C2408();
  if (v0 <= 0x3F)
  {
    sub_2698CA4B4();
    if (v1 <= 0x3F)
    {
      sub_2698C5BA8();
      if (v2 <= 0x3F)
      {
        sub_2698CA074();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2698C5BA8()
{
  if (!qword_28033DC80)
  {
    sub_2698C408C();
    v0 = sub_2698CA234();
    if (!v1)
    {
      atomic_store(v0, &qword_28033DC80);
    }
  }
}

uint64_t sub_2698C5C20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = type metadata accessor for VideoResult();
  v4 = v3 - 8;
  v65 = *(v3 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = v6;
  v69 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC88, &qword_2698CAE08);
  OUTLINED_FUNCTION_0_0(v61);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC90, &unk_2698CAE10);
  OUTLINED_FUNCTION_0_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v60 = sub_2698CA5B4();
  v18 = OUTLINED_FUNCTION_1_0(v60);
  v62 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBE0, &qword_2698CACA0);
  OUTLINED_FUNCTION_1_0(v67);
  v63 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC98, &qword_2698CAE20);
  OUTLINED_FUNCTION_1_0(v66);
  v64 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v33);
  v59 = &v58 - v34;
  v35 = *(v4 + 36);
  v36 = sub_2698CA064();
  v87 = MEMORY[0x277D837D0];
  v88 = MEMORY[0x277D63F80];
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  v39 = 0xE000000000000000;
  if (v37)
  {
    v39 = v37;
  }

  v85 = v38;
  v86 = v39;
  sub_2698C6238(v17);
  sub_2698C7FF8(&qword_28033DCA0, &qword_28033DC90, &unk_2698CAE10, sub_2698C7FC8);
  v40 = sub_2698CA304();
  sub_2698BF200(v17, &qword_28033DC90, &unk_2698CAE10);
  v41 = MEMORY[0x277CE11C8];
  v42 = MEMORY[0x277D63A60];
  v83 = MEMORY[0x277CE11C8];
  v84 = MEMORY[0x277D63A60];
  v82 = v40;
  v43 = sub_2698CA014();
  if (v44)
  {
    v45 = MEMORY[0x277D63F80];
    v46 = MEMORY[0x277D837D0];
  }

  else
  {
    v43 = 0;
    v46 = 0;
    v45 = 0;
    v79 = 0;
  }

  v77 = v43;
  v78 = v44;
  v80 = v46;
  v81 = v45;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  sub_2698C6898(v11);
  sub_2698C8110();
  v47 = sub_2698CA304();
  sub_2698C8274(v11);
  v73 = v42;
  v72 = v41;
  v71 = v47;
  sub_2698CA5A4();
  v48 = v69;
  sub_2698C82D4(v2, v69);
  v49 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v50 = swift_allocObject();
  sub_2698C85B4(v48, v50 + v49, type metadata accessor for VideoResult);
  v51 = sub_2698C8D24(&qword_28033DC18, MEMORY[0x277D63E70]);
  v52 = v60;
  sub_2698CA344();

  (*(v62 + 8))(v23, v52);
  v85 = v52;
  v86 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v59;
  v55 = v67;
  sub_2698CA3B4();
  (*(v63 + 8))(v29, v55);
  v85 = v55;
  v86 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v56 = v66;
  sub_2698CA3C4();
  return (*(v64 + 8))(v54, v56);
}

uint64_t sub_2698C6238@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v47 = sub_2698CA474();
  v45 = *(v47 - 8);
  v3 = *(v45 + 64);
  v4 = MEMORY[0x28223BE20](v47);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v41 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD20, &qword_2698CAE80);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v41 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD28, &qword_2698CAE88);
  v9 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v11 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCB0, &qword_2698CAE28);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCC0, &qword_2698CAE30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = *(type metadata accessor for VideoResult() + 28);
  v20 = sub_2698CA034();
  v22 = v21;
  v23 = sub_2698CA044();
  v25 = sub_2698BD5A8(v20, v22, v23, v24);
  v27 = v26;
  v52 = v28;

  if (v25)
  {

    *v18 = sub_2698CA284();
    *(v18 + 1) = 0;
    v18[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD30, &qword_2698CAE90);
    sub_2698C79EC(v2, v25, &v18[*(v29 + 44)]);
    sub_2698C8B60(v18, v11, &qword_28033DCC0, &qword_2698CAE30);
    swift_storeEnumTagMultiPayload();
    sub_2698C80AC();
    sub_2698C8D24(&qword_28033DCC8, MEMORY[0x277D63B48]);
    sub_2698CA294();
    sub_2698C8B60(v14, v48, &qword_28033DCB0, &qword_2698CAE28);
    swift_storeEnumTagMultiPayload();
    sub_2698C7FC8();
    sub_2698CA294();

    sub_2698BF200(v14, &qword_28033DCB0, &qword_2698CAE28);
    return sub_2698BF200(v18, &qword_28033DCC0, &qword_2698CAE30);
  }

  else
  {
    v32 = v43;
    v31 = v44;
    v41 = v11;
    v42 = v14;
    v33 = v45;
    v34 = v47;
    if (v52)
    {
      v35 = v52;

      v36 = sub_2698CA024();
      if (v37)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }

      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0xE000000000000000;
      }

      v53 = v38;
      v54 = v39;

      MEMORY[0x26D647A30](v27, v35);

      sub_2698CA484();
      (*(v33 + 16))(v41, v32, v34);
      swift_storeEnumTagMultiPayload();
      sub_2698C80AC();
      sub_2698C8D24(&qword_28033DCC8, MEMORY[0x277D63B48]);
      v40 = v42;
      sub_2698CA294();
      sub_2698C8B60(v40, v48, &qword_28033DCB0, &qword_2698CAE28);
      swift_storeEnumTagMultiPayload();
      sub_2698C7FC8();
      sub_2698CA294();

      sub_2698BF200(v40, &qword_28033DCB0, &qword_2698CAE28);
      return (*(v33 + 8))(v32, v34);
    }

    else
    {
      sub_2698CA024();
      sub_2698CA484();
      (*(v33 + 16))(v48, v31, v34);
      swift_storeEnumTagMultiPayload();
      sub_2698C7FC8();
      sub_2698C8D24(&qword_28033DCC8, MEMORY[0x277D63B48]);
      sub_2698CA294();
      return (*(v33 + 8))(v31, v34);
    }
  }
}

uint64_t sub_2698C6898@<X0>(uint64_t a1@<X8>)
{
  v124 = a1;
  v107 = sub_2698C9FC4();
  v106 = *(v107 - 8);
  v2 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_2698C9F34();
  v103 = *(v112 - 8);
  v4 = *(v103 + 64);
  MEMORY[0x28223BE20](v112);
  v104 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCE0, &qword_2698CAE48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v97 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCE8, &qword_2698CAE50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v97 - v12;
  v14 = sub_2698C9F54();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v102 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCF0, &qword_2698CAE58);
  v17 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v123 = &v97 - v18;
  v125 = sub_2698C9F14();
  v19 = *(v125 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v125);
  v109 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2698C9FB4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_2698CA444();
  v110 = *(v24 - 8);
  v111 = v24;
  v25 = *(v110 + 64);
  MEMORY[0x28223BE20](v24);
  v108 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB28, &qword_2698CABA0);
  v114 = *(v27 - 8);
  v115 = v27;
  v28 = *(v114 + 64);
  MEMORY[0x28223BE20](v27);
  v113 = &v97 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCD8, &unk_2698CAE38);
  v117 = *(v30 - 8);
  v118 = v30;
  v31 = *(v117 + 64);
  MEMORY[0x28223BE20](v30);
  v116 = &v97 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCF8, &unk_2698CAE60);
  v120 = *(v33 - 8);
  v121 = v33;
  v34 = *(v120 + 64);
  MEMORY[0x28223BE20](v33);
  v119 = &v97 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB20, &qword_2698CAB98);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v97 - v41;
  v43 = sub_2698C9EF4();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v97 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v1 + *(type metadata accessor for VideoResult() + 28);
  sub_2698CA054();
  if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
  {
    sub_2698BF200(v42, &qword_28033DB20, &qword_2698CAB98);
    v49 = sub_2698C9F74();
    v99 = v13;
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v49);
    v50 = sub_2698C9F24();
    v98 = v9;
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v50);
    v51 = v103;
    v52 = v104;
    (*(v103 + 104))(v104, *MEMORY[0x277D62D68], v112);
    v53 = *MEMORY[0x277D62B70];
    v97 = v19;
    v54 = *(v19 + 104);
    v100 = v19 + 104;
    v101 = v54;
    v55 = v109;
    v54(v109, v53, v125);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD00, &qword_2698CAE70);
    v56 = sub_2698C9F04();
    v57 = *(v56 - 8);
    v58 = *(v57 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_2698CA940;
    (*(v57 + 104))(v60 + v59, *MEMORY[0x277D62A28], v56);
    sub_2698C8674(v60);
    v61 = v106;
    v62 = v105;
    v63 = v107;
    (*(v106 + 104))(v105, *MEMORY[0x277D63838], v107);
    v64 = v99;
    v65 = v52;
    v66 = v98;
    sub_2698C9F44();

    (*(v61 + 8))(v62, v63);
    v67 = *(v97 + 8);
    v68 = v125;
    v67(v55, v125);
    (*(v51 + 8))(v65, v112);
    sub_2698BF200(v66, &qword_28033DCE0, &qword_2698CAE48);
    sub_2698BF200(v64, &qword_28033DCE8, &qword_2698CAE50);
    v69 = v108;
    sub_2698CA464();
    v70 = v68;
    v101(v55, *MEMORY[0x277D62B38], v68);
    v71 = sub_2698C8D24(&qword_28033DAB8, MEMORY[0x277D63B20]);
    v72 = v113;
    v73 = v111;
    sub_2698CA324();
    v67(v55, v70);
    (*(v110 + 8))(v69, v73);
    v126 = v73;
    v127 = v71;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v76 = v115;
    v75 = v116;
    sub_2698CA354();
    (*(v114 + 8))(v72, v76);
    v126 = v76;
    v127 = OpaqueTypeConformance2;
    v77 = swift_getOpaqueTypeConformance2();
    v79 = v118;
    v78 = v119;
    sub_2698CA334();
    (*(v117 + 8))(v75, v79);
    v81 = v120;
    v80 = v121;
    (*(v120 + 16))(v123, v78, v121);
    swift_storeEnumTagMultiPayload();
    v126 = v79;
    v127 = v77;
    swift_getOpaqueTypeConformance2();
    sub_2698CA294();
    return (*(v81 + 8))(v78, v80);
  }

  else
  {
    (*(v44 + 32))(v47, v42, v43);
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v43);
    sub_2698C9F84();
    sub_2698BF200(v40, &qword_28033DB20, &qword_2698CAB98);
    v83 = v108;
    sub_2698CA454();
    v84 = v109;
    v85 = v125;
    (*(v19 + 104))(v109, *MEMORY[0x277D62B38], v125);
    v86 = sub_2698C8D24(&qword_28033DAB8, MEMORY[0x277D63B20]);
    v87 = v113;
    v88 = v111;
    sub_2698CA324();
    (*(v19 + 8))(v84, v85);
    (*(v110 + 8))(v83, v88);
    v126 = v88;
    v127 = v86;
    v89 = swift_getOpaqueTypeConformance2();
    v91 = v115;
    v90 = v116;
    sub_2698CA354();
    (*(v114 + 8))(v87, v91);
    v126 = v91;
    v127 = v89;
    v92 = swift_getOpaqueTypeConformance2();
    v94 = v118;
    v93 = v119;
    sub_2698CA334();
    (*(v117 + 8))(v90, v94);
    v96 = v120;
    v95 = v121;
    (*(v120 + 16))(v123, v93, v121);
    swift_storeEnumTagMultiPayload();
    v126 = v94;
    v127 = v92;
    swift_getOpaqueTypeConformance2();
    sub_2698CA294();
    (*(v96 + 8))(v93, v95);
    return (*(v44 + 8))(v47, v43);
  }
}

uint64_t sub_2698C767C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9E8, &unk_2698CAA20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F8, &unk_2698CAA30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = sub_2698C9F64();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for VideoResult();
  v23 = a1 + *(v22 + 28);
  sub_2698CA004();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    v24 = &qword_28033D9F0;
    v25 = &unk_2698CAB60;
    v26 = v16;
    return sub_2698BF200(v26, v24, v25);
  }

  (*(v18 + 32))(v21, v16, v17);
  v27 = a1 + *(v22 + 20);
  sub_2698CA494();
  v28 = sub_2698CA594();
  if (__swift_getEnumTagSinglePayload(v9, 1, v28) == 1)
  {
    (*(v18 + 8))(v21, v17);
    v24 = &qword_28033D9F8;
    v25 = &unk_2698CAA30;
    v26 = v9;
    return sub_2698BF200(v26, v24, v25);
  }

  (*(v18 + 16))(v14, v21, v17);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
  v30 = sub_2698CA504();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v30);
  sub_2698CA584();
  sub_2698BF200(v5, &qword_28033D9E8, &unk_2698CAA20);
  sub_2698BF200(v14, &qword_28033D9F0, &unk_2698CAB60);
  (*(v18 + 8))(v21, v17);
  return (*(*(v28 - 8) + 8))(v9, v28);
}

uint64_t sub_2698C79EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v49 = a3;
  v5 = sub_2698CA3D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2698CA474();
  v46 = *(v50 - 8);
  v10 = *(v46 + 64);
  v11 = MEMORY[0x28223BE20](v50);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = type metadata accessor for VideoResult();
  v16 = a1 + *(v15 + 28);
  sub_2698CA024();
  v47 = v14;
  sub_2698CA484();
  if (*a1)
  {
    v17 = *a1;
    sub_2698CA5E4();

    if (sub_2698CA684())
    {
      v18 = sub_2698CA2B4();
      sub_2698CA204();
      v54[0] = 0;
      LOBYTE(v51) = 0;
      *v57 = a2;
      v57[8] = v18;
      *&v57[16] = v19;
      *&v57[24] = v20;
      *&v57[32] = v21;
      *&v57[40] = v22;
      *&v57[48] = 0;
    }

    else
    {
      (*(v6 + 104))(v9, *MEMORY[0x277CE0FE0], v5);
      v23 = sub_2698CA3E4();
      (*(v6 + 8))(v9, v5);
      v24 = *(v15 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC68, qword_2698CAD80);
      sub_2698CA224();
      sub_2698CA424();
      sub_2698CA244();
      v57[0] = 1;
      *&v56[6] = v59;
      *&v56[22] = v60;
      *&v56[38] = v61;
      LOBYTE(v24) = sub_2698CA2B4();
      sub_2698CA204();
      v54[0] = 0;
      *v55 = v23;
      *&v55[8] = 0;
      *&v55[16] = 1;
      *&v55[18] = *v56;
      *&v55[34] = *&v56[16];
      *&v55[50] = *&v56[32];
      *&v55[64] = *&v56[46];
      v55[72] = v24;
      *&v55[80] = v25;
      *&v55[88] = v26;
      *&v55[96] = v27;
      *&v55[104] = v28;
      v55[112] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD38, &qword_2698CAE98);
      sub_2698C89B8();
      v29 = sub_2698CA304();
      memcpy(v57, v55, sizeof(v57));
      sub_2698BF200(v57, &qword_28033DD38, &qword_2698CAE98);
      v58 = 1;
      *v54 = v29;
      *&v54[8] = v51;
      *&v54[24] = v52[0];
      *&v54[33] = *(v52 + 9);
      v54[49] = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD68, &qword_2698CAEB0);
    sub_2698C8AF0(&qword_28033DD70, &qword_28033DD68, &qword_2698CAEB0);
    sub_2698CA294();
    v30 = v46;
    v31 = v47;
    v32 = *(v46 + 16);
    v33 = v48;
    v34 = v50;
    v32(v48, v47, v50);
    v51 = *v55;
    v52[0] = *&v55[16];
    v52[1] = *&v55[32];
    v53 = *&v55[48];
    v58 = 1;
    v35 = v49;
    v32(v49, v33, v34);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD78, &qword_2698CAEB8);
    v37 = &v35[*(v36 + 48)];
    v38 = v53;
    *&v54[48] = v53;
    v39 = v52[0];
    *v54 = v51;
    *&v54[16] = v52[0];
    v40 = v52[1];
    *&v54[32] = v52[1];
    *v37 = v51;
    *(v37 + 1) = v39;
    *(v37 + 2) = v40;
    *(v37 + 24) = v38;
    v41 = &v35[*(v36 + 64)];
    LOBYTE(v38) = v58;
    *v41 = 0;
    v41[8] = v38;
    sub_2698C8B60(v54, v57, &qword_28033DD80, &qword_2698CAEC0);
    v42 = *(v30 + 8);
    v42(v31, v34);
    *v57 = v51;
    *&v57[16] = v52[0];
    *&v57[32] = v52[1];
    *&v57[48] = v53;
    sub_2698BF200(v57, &qword_28033DD80, &qword_2698CAEC0);
    return (v42)(v33, v34);
  }

  else
  {
    v44 = *(a1 + 8);
    sub_2698CA5F4();
    sub_2698C8D24(&qword_28033DB50, MEMORY[0x277D63F60]);
    result = sub_2698CA254();
    __break(1u);
  }

  return result;
}

uint64_t sub_2698C7FF8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2698C8D24(&qword_28033DCC8, MEMORY[0x277D63B48]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2698C80AC()
{
  result = qword_28033DCB8;
  if (!qword_28033DCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DCC0, &qword_2698CAE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DCB8);
  }

  return result;
}

unint64_t sub_2698C8110()
{
  result = qword_28033DCD0;
  if (!qword_28033DCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DC88, &qword_2698CAE08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DCD8, &unk_2698CAE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DB28, &qword_2698CABA0);
    sub_2698CA444();
    sub_2698C8D24(&qword_28033DAB8, MEMORY[0x277D63B20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DCD0);
  }

  return result;
}

uint64_t sub_2698C8274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC88, &qword_2698CAE08);
  OUTLINED_FUNCTION_0_0(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2698C82D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C8338()
{
  v1 = (type metadata accessor for VideoResult() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_2698CA4B4();
  OUTLINED_FUNCTION_0_0(v6);
  (*(v7 + 8))(v0 + v3 + v5);
  v8 = v1[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC68, qword_2698CAD80);
  OUTLINED_FUNCTION_0_0(v9);
  (*(v10 + 8))(v0 + v3 + v8);
  v11 = v0 + v3 + v1[9];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAE0, &qword_2698CAB40);
  OUTLINED_FUNCTION_0_0(v12);
  v14 = *(v13 + 8);
  v14(v11, v12);
  v15 = sub_2698CA074();
  v16 = OUTLINED_FUNCTION_2_2(v15[5]);
  (v14)(v16);
  v17 = OUTLINED_FUNCTION_2_2(v15[6]);
  (v14)(v17);
  v18 = OUTLINED_FUNCTION_2_2(v15[7]);
  (v14)(v18);
  v19 = OUTLINED_FUNCTION_2_2(v15[8]);
  (v14)(v19);
  v20 = OUTLINED_FUNCTION_2_2(v15[9]);
  (v14)(v20);
  v21 = v15[10];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC10, &unk_2698CACC0);
  OUTLINED_FUNCTION_0_0(v22);
  (*(v23 + 8))(v11 + v21);
  v24 = v15[11];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAF0, &unk_2698CAB50);
  OUTLINED_FUNCTION_0_0(v25);
  (*(v26 + 8))(v11 + v24);
  v27 = OUTLINED_FUNCTION_2_2(v15[12]);
  (v14)(v27);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2698C85B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2698C8614()
{
  v1 = *(type metadata accessor for VideoResult() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2698C767C(v2);
}

uint64_t sub_2698C8674(uint64_t a1)
{
  v2 = sub_2698C9F04();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD08, &qword_2698CAE78);
  result = sub_2698CA694();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_2698C8D24(&qword_28033DD10, MEMORY[0x277D62A30]);
    v16 = sub_2698CA604();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_2698C8D24(&qword_28033DD18, MEMORY[0x277D62A30]);
      v23 = sub_2698CA614();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_2698C89B8()
{
  result = qword_28033DD40;
  if (!qword_28033DD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DD38, &qword_2698CAE98);
    sub_2698C8A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DD40);
  }

  return result;
}

unint64_t sub_2698C8A44()
{
  result = qword_28033DD48;
  if (!qword_28033DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DD50, &qword_2698CAEA0);
    sub_2698C8AF0(&qword_28033DD58, &qword_28033DD60, &qword_2698CAEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DD48);
  }

  return result;
}

uint64_t sub_2698C8AF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2698C8B60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2698C8BC4()
{
  result = qword_28033DD88;
  if (!qword_28033DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DD90, &unk_2698CAEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DBE0, &qword_2698CACA0);
    sub_2698CA5B4();
    sub_2698C8D24(&qword_28033DC18, MEMORY[0x277D63E70]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2698C8D24(&qword_28033DC08, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DD88);
  }

  return result;
}

uint64_t sub_2698C8D24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VideoResultDisambiguationList.body.getter()
{
  v1 = type metadata accessor for VideoResultDisambiguationList();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2698C90F0(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2698C9158(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DDA0, &qword_2698CAEE0);
  sub_2698BF164(&qword_28033DDA8, &qword_28033DDA0, &qword_2698CAEE0);
  return sub_2698CA4D4();
}

uint64_t type metadata accessor for VideoResultDisambiguationList()
{
  result = qword_28033DDB0;
  if (!qword_28033DDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2698C8F20(uint64_t a1)
{
  v2 = type metadata accessor for VideoResultDisambiguationList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2698CA574();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v8 = MEMORY[0x26D6473B0](v7);
  v17 = MEMORY[0x277D837D0];
  v18 = MEMORY[0x277D63F80];
  v15 = v8;
  v16 = v9;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2698CA564();
  sub_2698C90F0(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_2698C9158(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  type metadata accessor for ResultsList();
  sub_2698C95B8(&qword_28033DDD0, type metadata accessor for ResultsList);
  return sub_2698CA534();
}

uint64_t sub_2698C90F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoResultDisambiguationList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C9158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoResultDisambiguationList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C91F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ResultsList();
  v3 = a1 + *(v2 + 24);
  sub_2698C9FD4();
  sub_2698CA5F4();
  sub_2698C95B8(&qword_28033DB50, MEMORY[0x277D63F60]);
  *a1 = sub_2698CA264();
  a1[1] = v4;
  v5 = a1 + *(v2 + 20);
  return _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
}

uint64_t sub_2698C92A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698C9FF4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2698C9304(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698C9FF4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2698C9350()
{
  result = sub_2698C9FF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for VideoResultDisambiguationList() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = *(sub_2698C9FF4() + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD98, &qword_2698CAED8);
  OUTLINED_FUNCTION_0_1(v8);
  (*(v9 + 8))(v0 + v3 + v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2698C9534(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VideoResultDisambiguationList() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2698C95B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SnippetProvider.snippet(for:mode:idiom:)(uint64_t a1)
{
  v94 = type metadata accessor for StandardButtonView();
  v1 = OUTLINED_FUNCTION_0_0(v94);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_2();
  v93 = v5 - v4;
  OUTLINED_FUNCTION_4_0();
  v6 = sub_2698CA0A4();
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_2();
  v92 = v11 - v10;
  OUTLINED_FUNCTION_4_0();
  v91 = type metadata accessor for ConfirmationView();
  v12 = OUTLINED_FUNCTION_0_0(v91);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_2();
  v90 = v16 - v15;
  OUTLINED_FUNCTION_4_0();
  v17 = sub_2698CA144();
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_2();
  v89 = v22 - v21;
  OUTLINED_FUNCTION_4_0();
  v88 = type metadata accessor for VideoResultDisambiguationList();
  v23 = OUTLINED_FUNCTION_0_0(v88);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_2();
  v87 = v27 - v26;
  OUTLINED_FUNCTION_4_0();
  v28 = sub_2698C9FF4();
  v29 = OUTLINED_FUNCTION_3(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_2();
  v34 = v33 - v32;
  v35 = type metadata accessor for DisambiguationList();
  v36 = OUTLINED_FUNCTION_0_0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_0_2();
  v41 = v40 - v39;
  v42 = sub_2698CA184();
  v43 = OUTLINED_FUNCTION_3(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_0_2();
  v48 = v47 - v46;
  v49 = type metadata accessor for ResultsList();
  v50 = OUTLINED_FUNCTION_0_0(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_0_2();
  v55 = (v54 - v53);
  v56 = sub_2698CA134();
  v57 = OUTLINED_FUNCTION_3(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_0_2();
  v62 = v61 - v60;
  v63 = sub_2698CA1F4();
  v64 = OUTLINED_FUNCTION_0_0(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_0_2();
  sub_2698C9D98(a1, v68 - v67, MEMORY[0x277D61E90]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v84 = OUTLINED_FUNCTION_2_3();
      sub_2698C9D38(v84, v48, v85);
      sub_2698C9D98(v48, v41 + *(v35 + 20), MEMORY[0x277D61E78]);
      _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
      sub_2698C9DF8(&unk_28033DDF0, type metadata accessor for DisambiguationList);
      OUTLINED_FUNCTION_5();
      v73 = sub_2698CA304();
      sub_2698C9E40(v41, type metadata accessor for DisambiguationList);
      v74 = MEMORY[0x277D61E78];
      v75 = v48;
      break;
    case 2u:
      v80 = OUTLINED_FUNCTION_2_3();
      sub_2698C9D38(v80, v34, v81);
      sub_2698C9D98(v34, v87, MEMORY[0x277D61E20]);
      sub_2698C9DF8(&qword_28033DDE8, type metadata accessor for VideoResultDisambiguationList);
      v73 = sub_2698CA304();
      OUTLINED_FUNCTION_6();
      v74 = MEMORY[0x277D61E20];
      v75 = v34;
      break;
    case 3u:
      v82 = OUTLINED_FUNCTION_2_3();
      v77 = v89;
      sub_2698C9D38(v82, v89, v83);
      sub_2698C9D98(v89, v90 + *(v91 + 20), MEMORY[0x277D61E70]);
      _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
      sub_2698C9DF8(&qword_28033DDE0, type metadata accessor for ConfirmationView);
      OUTLINED_FUNCTION_5();
      v73 = sub_2698CA304();
      OUTLINED_FUNCTION_6();
      v79 = MEMORY[0x277D61E70];
      goto LABEL_6;
    case 4u:
      v76 = OUTLINED_FUNCTION_2_3();
      v77 = v92;
      sub_2698C9D38(v76, v92, v78);
      sub_2698C9D98(v92, v93 + *(v94 + 20), MEMORY[0x277D61E38]);
      _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
      sub_2698C9DF8(&qword_28033DDD8, type metadata accessor for StandardButtonView);
      OUTLINED_FUNCTION_5();
      v73 = sub_2698CA304();
      OUTLINED_FUNCTION_6();
      v79 = MEMORY[0x277D61E38];
LABEL_6:
      v74 = v79;
      v75 = v77;
      break;
    default:
      v69 = OUTLINED_FUNCTION_2_3();
      sub_2698C9D38(v69, v62, v70);
      sub_2698C9D98(v62, v55 + *(v49 + 24), MEMORY[0x277D61E48]);
      sub_2698CA5F4();
      sub_2698C9DF8(&qword_28033DB50, MEMORY[0x277D63F60]);
      OUTLINED_FUNCTION_5();
      *v55 = sub_2698CA264();
      v55[1] = v71;
      v72 = v55 + *(v49 + 20);
      _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
      sub_2698C9DF8(&qword_28033DDD0, type metadata accessor for ResultsList);
      v73 = sub_2698CA304();
      OUTLINED_FUNCTION_6();
      v74 = MEMORY[0x277D61E48];
      v75 = v62;
      break;
  }

  sub_2698C9E40(v75, v74);
  return v73;
}

uint64_t sub_2698C9D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2698C9D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2698C9DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2698C9E40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6()
{

  return sub_2698C9E40(v1, v0);
}