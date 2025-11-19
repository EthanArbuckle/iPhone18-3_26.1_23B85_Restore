uint64_t sub_220DA573C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_220DBE560();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220DBE1A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[8] != 1)
  {
    return *a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
  v29[3] = a3;
  v18 = sub_220DBE6C0();
  v29[2] = a4;
  v19 = v18;
  v20 = *(v18 - 8);
  v30 = v8;
  v21 = v20;
  v22 = *(v20 + 72);
  v23 = *(v21 + 80);
  v29[1] = a2;
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_220DC17A0;
  (*(v21 + 104))(v25 + v24, *MEMORY[0x277CC9968], v19);
  sub_220CE05C8(v25);
  sub_220DC03B0();
  sub_220DBE620();

  (*(v9 + 8))(v12, v30);
  v26 = sub_220DBE150();
  LOBYTE(v24) = v27;
  (*(v14 + 8))(v17, v13);
  if (v24)
  {
    v26 = 0;
  }

  swift_beginAccess();
  *a1 = v26;
  a1[8] = 0;
  return v26;
}

uint64_t SunriseSunsetNextEventFutureDayCountdown.shortDescription.getter()
{
  EventFutureDayCountdown = type metadata accessor for SunriseSunsetNextEventFutureDayCountdown();
  v2 = *(*(EventFutureDayCountdown - 8) + 64);
  MEMORY[0x28223BE20](EventFutureDayCountdown);
  OUTLINED_FUNCTION_1();
  v5 = (v4 - v3);
  sub_220DA5CF8(v0, v4 - v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v7 = *v5;
    v5 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78) + 48));
    if (qword_280FA6600 == -1)
    {
LABEL_6:
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      goto LABEL_10;
    }

LABEL_11:
    OUTLINED_FUNCTION_10();
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = *v5;
    v5 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78) + 48));
    if (qword_280FA6600 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  v7 = 7;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v8 = OUTLINED_FUNCTION_24_3();
  v9 = MEMORY[0x277D83B88];
  *(v8 + 16) = xmmword_220DC17A0;
  v10 = MEMORY[0x277D83C10];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v7;
  v11 = sub_220DC05F0();

  v12 = sub_220DC03C0();
  OUTLINED_FUNCTION_1_0(v12);
  (*(v13 + 8))(v5);
  return v11;
}

uint64_t type metadata accessor for SunriseSunsetNextEventFutureDayCountdown()
{
  result = qword_27CF96538;
  if (!qword_27CF96538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220DA5CF8(uint64_t a1, uint64_t a2)
{
  EventFutureDayCountdown = type metadata accessor for SunriseSunsetNextEventFutureDayCountdown();
  (*(*(EventFutureDayCountdown - 8) + 16))(a2, a1, EventFutureDayCountdown);
  return a2;
}

void sub_220DA5D5C()
{
  sub_220DA5DD0();
  if (v0 <= 0x3F)
  {
    sub_220DA5E3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220DA5DD0()
{
  if (!qword_27CF96548)
  {
    sub_220DC03C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF96548);
    }
  }
}

void sub_220DA5E3C()
{
  if (!qword_27CF96550)
  {
    v0 = sub_220DC03C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96550);
    }
  }
}

uint64_t RandomAccessCollection<>.averagePressure(from:timeZone:unit:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void (**a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v80 = a1;
  v89 = a4;
  v79 = a3;
  v87 = a2;
  v77 = a5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v6 = OUTLINED_FUNCTION_0(v83);
  v78 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v86 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v85 = v72 - v13;
  v84 = sub_220DBE960();
  v14 = OUTLINED_FUNCTION_0(v84);
  v88 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v82 = v19 - v18;
  v20 = *(a3 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = sub_220DBE6E0();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  v35 = sub_220DBE560();
  v36 = OUTLINED_FUNCTION_0(v35);
  v76 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = v72 - v44;
  sub_220DBE480();
  sub_220DBE600();
  sub_220DBE320();
  (*(v29 + 8))(v34, v26);
  (*(v20 + 16))(v25, v81, v79);
  v90 = v45;
  v91 = v42;
  v46 = *(*(*(v89 + 8) + 8) + 8);
  v47 = sub_220DC0700();
  v48 = *(v47 + 16);
  if (v48)
  {
    v73 = v45;
    v74 = v42;
    v75 = v35;
    v92 = MEMORY[0x277D84F90];
    sub_220CFB704(0, v48, 0);
    v49 = v92;
    v81 = *(v88 + 16);
    v50 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v72[1] = v47;
    v51 = v47 + v50;
    v52 = *(v88 + 72);
    v79 = v78 + 1;
    v80 = v52;
    v78 = (v88 + 8);
    v72[2] = v48;
    v88 += 16;
    v53 = v83;
    v54 = v79;
    do
    {
      v89 = v49;
      v55 = v82;
      v56 = v84;
      v81(v82, v51, v84);
      v57 = v86;
      sub_220DBE940();
      v58 = v85;
      sub_220DBE130();
      v59 = *v54;
      (*v54)(v57, v53);
      sub_220DBE050();
      v61 = v60;
      v59(v58, v53);
      v62 = v55;
      v49 = v89;
      (*v78)(v62, v56);
      v92 = v49;
      v64 = *(v49 + 16);
      v63 = *(v49 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_220CFB704((v63 > 1), v64 + 1, 1);
        v49 = v92;
      }

      *(v49 + 16) = v64 + 1;
      *(v49 + 8 * v64 + 32) = v61;
      v51 += v80;
      --v48;
    }

    while (v48);

    v35 = v75;
    v42 = v74;
    v45 = v73;
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v65 = *(v49 + 16);
  if (v65)
  {
    v66 = (v49 + 32);
    v67 = 0.0;
    do
    {
      v68 = *v66++;
      v67 = v67 + v68;
      --v65;
    }

    while (v65);
  }

  sub_220D5E724();
  v69 = v87;
  sub_220DBE040();
  v70 = *(v76 + 8);
  v70(v42, v35);
  return (v70)(v45, v35);
}

double RandomAccessCollection<>.averageHumidity(from:timeZone:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a1;
  v67 = a4;
  v63 = a3;
  v68 = sub_220DBE960();
  v5 = OUTLINED_FUNCTION_0(v68);
  v61 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v62 = v16 - v15;
  v17 = sub_220DBE6E0();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v66 = sub_220DBE560();
  v26 = OUTLINED_FUNCTION_0(v66);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v61 - v35;
  sub_220DBE480();
  sub_220DBE600();
  sub_220DBE320();
  (*(v20 + 8))(v25, v17);
  (*(v12 + 16))(v62, v65, v63);
  v64 = v36;
  v65 = v33;
  v69 = v36;
  v70 = v33;
  v37 = *(*(*(v67 + 8) + 8) + 8);
  v38 = sub_220DC0700();
  v39 = *(v38 + 16);
  if (v39)
  {
    v63 = v28;
    v71 = MEMORY[0x277D84F90];
    sub_220CFB704(0, v39, 0);
    v40 = v71;
    v41 = v61 + 16;
    v67 = *(v61 + 16);
    v42 = *(v61 + 80);
    v61 = v38;
    v62 = v39;
    v43 = v38 + ((v42 + 32) & ~v42);
    v44 = *(v41 + 56);
    v45 = (v41 - 8);
    v46 = v39;
    v47 = v41;
    do
    {
      v48 = v68;
      v49 = v47;
      (v67)(v11, v43, v68);
      sub_220DBE930();
      v51 = v50;
      (*v45)(v11, v48);
      v71 = v40;
      v53 = *(v40 + 16);
      v52 = *(v40 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_220CFB704((v52 > 1), v53 + 1, 1);
        v40 = v71;
      }

      *(v40 + 16) = v53 + 1;
      *(v40 + 8 * v53 + 32) = v51;
      v43 += v44;
      --v46;
      v47 = v49;
    }

    while (v46);

    v54 = v66;
    v39 = v62;
    v28 = v63;
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
    v54 = v66;
  }

  v55 = *(v40 + 16);
  if (v55)
  {
    v56 = (v40 + 32);
    v57 = 0.0;
    do
    {
      v58 = *v56++;
      v57 = v57 + v58;
      --v55;
    }

    while (v55);
  }

  else
  {
    v57 = 0.0;
  }

  v59 = *(v28 + 8);
  v59(v65, v54);
  v59(v64, v54);
  return v57 / v39;
}

uint64_t sub_220DA6898()
{
  v0 = sub_220DBE560();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  sub_220DBE8F0();
  sub_220CD9B24();
  v9 = sub_220DC0580();
  v10 = *(v3 + 8);
  v10(v8, v0);
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    sub_220DBE8F0();
    v11 = sub_220DBE440();
    v10(v8, v0);
  }

  return v11 & 1;
}

uint64_t sub_220DA69CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_220DA6898() & 1;
}

uint64_t sub_220DA6A38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_220DA6A78(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220DA6B04()
{
  v1 = sub_220DBFE80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_220DBF9C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v11 & 1) == 0)
    {
      return sub_220DBFF20();
    }
  }

  else
  {
    v13 = *v0;

    sub_220DC0990();
    v14 = sub_220DBFBA0();
    sub_220DBF380();

    sub_220DBF9B0();
    swift_getAtKeyPath();
    sub_220DA9DA4(v11, 0);
    (*(v7 + 8))(v10, v6);
    if (v15[15] != 1)
    {
      return sub_220DBFF20();
    }
  }

  (*(v2 + 104))(v5, *MEMORY[0x277CE0EE0], v1);
  return sub_220DBFF30();
}

uint64_t sub_220DA6D1C(SEL *a1)
{
  v3 = sub_220DBFE80();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_220DBF9C0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v24[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *v1;
  if (*(v1 + 8) == 1)
  {
    if ((v19 & 1) == 0)
    {
LABEL_3:
      v20 = [objc_opt_self() *a1];
      return sub_220DBFF40();
    }
  }

  else
  {
    v22 = *v1;

    sub_220DC0990();
    v23 = sub_220DBFBA0();
    sub_220DBF380();

    sub_220DBF9B0();
    swift_getAtKeyPath();
    sub_220DA9DA4(v19, 0);
    (*(v14 + 8))(v18, v11);
    if (v24[15] != 1)
    {
      goto LABEL_3;
    }
  }

  (*(v6 + 104))(v10, *MEMORY[0x277CE0EE0], v3);
  return sub_220DBFF30();
}

uint64_t sub_220DA6F3C@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  *a1 = sub_220DC0120();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96560, &qword_220DC7C00);
  return sub_220DA6FA0(__dst, a1 + *(v4 + 44));
}

uint64_t sub_220DA6FA0@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v45 = a1;
  v55 = a2;
  v50 = sub_220DBF9F0();
  v48 = *(v50 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96568, &qword_220DC7C08);
  v6 = *(v5 - 8);
  v53 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = sub_220DC04E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96570, &qword_220DC7C10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96578, &qword_220DC7C18);
  v51 = *(v52 - 8);
  v21 = *(v51 + 64);
  v22 = MEMORY[0x28223BE20](v52);
  v49 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v46 = &v44 - v24;
  memcpy(__dst, a1, 0x88uLL);
  sub_220DA7650(v20);
  sub_220DBFA20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96580, &qword_220DC7C20);
  v25 = sub_220DA9B0C();
  sub_220DA9EC0(&qword_280FA6668, MEMORY[0x277D7B460]);
  v56 = v17;
  v57 = v25;
  swift_getOpaqueTypeConformance2();
  sub_220DBFE40();
  (*(v13 + 8))(v16, v12);
  sub_220CEC81C(v20);
  v26 = v45;
  memcpy(__dst, v45, 0x88uLL);
  v27 = sub_220DA6D1C(&selRef_tertiarySystemFillColor);
  memcpy(__dst, v26, 0x88uLL);
  v28 = sub_220DA6D1C(&selRef_secondarySystemFillColor);
  v29 = swift_allocObject();
  memcpy(v29 + 2, v26, 0x88uLL);
  v29[19] = v28;
  v29[20] = v27;
  (*(v48 + 104))(v47, *MEMORY[0x277CE00F0], v50);
  sub_220DA9DBC(v26, __dst);

  sub_220DC0010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965A0, &unk_220DC7C40);
  sub_220DBFFF0();
  sub_220DC0000();
  LODWORD(v29) = sub_220DBFB30();

  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96598, &qword_220DC7C38) + 36)] = v29;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96588, &qword_220DC7C28) + 36);
  v31 = *MEMORY[0x277CE13B8];
  v32 = sub_220DC0150();
  (*(*(v32 - 8) + 104))(&v11[v30], v31, v32);
  v33 = &v11[*(v53 + 44)];
  *v33 = 0x3FF0000000000000;
  *(v33 + 4) = 0;
  v34 = v51;
  v35 = *(v51 + 16);
  v36 = v49;
  v37 = v46;
  v38 = v52;
  v35(v49, v46, v52);
  v39 = v54;
  sub_220DA9DF4(v11, v54);
  v40 = v55;
  v35(v55, v36, v38);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965A8, &qword_220DC7C50);
  sub_220DA9DF4(v39, &v40[*(v41 + 48)]);
  sub_220D3DD1C(v11, &qword_27CF96568, &qword_220DC7C08);
  v42 = *(v34 + 8);
  v42(v37, v38);
  sub_220D3DD1C(v39, &qword_27CF96568, &qword_220DC7C08);
  return (v42)(v36, v38);
}

uint64_t sub_220DA7650@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96590, &qword_220DC7C30);
  v3 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v49 = &v41 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96588, &qword_220DC7C28);
  v5 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965B8, &qword_220DC7C60);
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - v9;
  v10 = sub_220DBF9F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965A0, &unk_220DC7C40);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = sub_220DBFC80();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v53, v2, 0x88uLL);
  if (v53[16] == 2)
  {
    memcpy(v52, v2, sizeof(v52));
    v24 = sub_220DA6B04();
    v25 = swift_allocObject();
    memcpy((v25 + 16), v53, 0x88uLL);
    v51 = v25;
    *(v25 + 152) = v24;
    v26 = MEMORY[0x277CDF9E8];
  }

  else
  {
    if (v53[16])
    {
      (*(v20 + 104))(v23, *MEMORY[0x277CE0AA8], v19);
      sub_220DBFC10();
      v27 = sub_220DBFBE0();
      (*(v20 + 8))(v23, v19);
      v28 = swift_allocObject();
      memcpy((v28 + 16), v53, 0x88uLL);
      v51 = v28;
      *(v28 + 152) = v27;
    }

    else
    {
      v51 = swift_allocObject();
      memcpy((v51 + 16), v2, 0x88uLL);
    }

    v26 = MEMORY[0x277CDF9D8];
  }

  (*(v11 + 104))(v14, *MEMORY[0x277CE00F0], v10);

  sub_220DA9DBC(v53, v52);
  sub_220DC0010();
  sub_220DBFFF0();
  sub_220DC0000();
  v29 = sub_220DBFB40();
  v31 = v47;
  v30 = v48;
  (*(v47 + 16))(v48, v18, v15);
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96598, &qword_220DC7C38) + 36)) = v29;
  v32 = *(v50 + 36);
  v33 = *MEMORY[0x277CE13B8];
  v34 = sub_220DC0150();
  (*(*(v34 - 8) + 104))(v30 + v32, v33, v34);
  v35 = sub_220DBF7D0();
  v36 = v49;
  (*(*(v35 - 8) + 104))(v49, *v26, v35);
  sub_220DA9EC0(&qword_280FA6710, MEMORY[0x277CDFA28]);
  result = sub_220DC05B0();
  if (result)
  {
    sub_220DA9C34();
    sub_220CE161C(qword_280FA6560, &qword_27CF96590, &qword_220DC7C30);
    v38 = v42;
    sub_220DBFDA0();

    sub_220D3DD1C(v36, &qword_27CF96590, &qword_220DC7C30);
    sub_220D3DD1C(v30, &qword_27CF96588, &qword_220DC7C28);
    (*(v31 + 8))(v18, v15);
    v39 = v46;
    (*(v43 + 32))(v46, v38, v44);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96570, &qword_220DC7C10);
    v40 = v39 + *(result + 36);
    *v40 = 0x3FF0000000000000;
    *(v40 + 8) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220DA7D48()
{
  v0 = sub_220DBF9F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CE00F0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96570, &qword_220DC7C10);
  sub_220DA9B0C();
  sub_220DBFD80();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_220DA7E6C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_220DBFC80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = *(a2 + 80);
  v56 = *(a2 + 72);
  v57 = v10;
  v11 = *(a2 + 96);
  v54 = *(a2 + 88);
  v55 = v11;
  v12 = *(a2 + 112);
  v58 = *(a2 + 104);
  v59 = v12;
  v13 = *(a2 + 120);
  v14 = *(a2 + 128);
  if (v9 == 2)
  {
    v15 = MEMORY[0x277CE0A58];
  }

  else
  {
    if (v9)
    {
      [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    }

    v15 = MEMORY[0x277CE0AA8];
  }

  memcpy(__dst, a2, sizeof(__dst));
  sub_220DA83DC();
  memcpy(__dst, a2, sizeof(__dst));
  sub_220DA848C(a1);
  (*(v5 + 104))(v8, *v15, v4);
  sub_220DBFC10();
  v53[1] = sub_220DBFBE0();
  (*(v5 + 8))(v8, v4);
  v16 = *a1;
  __dst[0] = v13;
  __dst[1] = v14;
  v17 = sub_220CEFF14();

  v53[2] = v17;
  v18 = sub_220DBFD40();
  v20 = v19;
  v22 = v21;

  v23 = sub_220DBFD10();
  v25 = v24;
  v27 = v26;
  sub_220CF0978(v18, v20, v22 & 1);

  sub_220DC01B0();
  v60 = v16;
  sub_220DBF810();
  sub_220CF0978(v23, v25, v27 & 1);

  __dst[0] = v54;
  __dst[1] = v55;

  v28 = sub_220DBFD40();
  v30 = v29;
  LOBYTE(v23) = v31;
  v32 = sub_220DBFD10();
  v34 = v33;
  LOBYTE(v20) = v35;
  sub_220CF0978(v28, v30, v23 & 1);

  sub_220DC01C0();
  sub_220DBF810();
  sub_220CF0978(v32, v34, v20 & 1);

  __dst[0] = v56;
  __dst[1] = v57;

  v36 = sub_220DBFD40();
  v38 = v37;
  LOBYTE(v23) = v39;
  v40 = sub_220DBFD10();
  v42 = v41;
  LOBYTE(v20) = v43;
  sub_220CF0978(v36, v38, v23 & 1);

  sub_220DC0180();
  sub_220DBF810();
  sub_220CF0978(v40, v42, v20 & 1);

  __dst[0] = v58;
  __dst[1] = v59;

  v44 = sub_220DBFD40();
  v46 = v45;
  LOBYTE(v23) = v47;
  v48 = sub_220DBFD10();
  v50 = v49;
  LOBYTE(v42) = v51;

  sub_220CF0978(v44, v46, v23 & 1);

  sub_220DC0190();
  sub_220DBF810();
  sub_220CF0978(v48, v50, v42 & 1);
}

uint64_t sub_220DA83DC()
{
  v1 = *(v0 + 16);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  }

  return sub_220DBF7E0();
}

uint64_t sub_220DA848C(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_220DBF850();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  LODWORD(v2) = *(v2 + 16);
  sub_220DBF830();
  v9 = *a1;
  sub_220DBFCA0();
  sub_220DBF840();
  sub_220DBF820();
  sub_220DA9E64(v15);
  v10 = *(v5 + 8);
  v10(v8, v4);
  sub_220DBF830();
  v11 = *a1;
  sub_220DBFCA0();
  sub_220DBF840();
  sub_220DBF820();
  sub_220DA9E64(v17);
  v10(v8, v4);
  sub_220DBF830();
  v12 = *a1;
  sub_220DBFCA0();
  sub_220DBF840();
  sub_220DBF820();
  sub_220DA9E64(v16);
  v10(v8, v4);
  return sub_220DBF830();
}

uint64_t sub_220DA86AC(uint64_t *a1, unsigned __int8 *__src)
{
  v4 = __src[16];
  if (v4 != 2 && (v4 & 1) != 0)
  {
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  }

  memcpy(__dst, __src, sizeof(__dst));
  sub_220DA83DC();
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v6, __src, sizeof(v6));
  sub_220DA6B04();
  sub_220DA848C(a1);
}

uint64_t sub_220DA87B4(uint64_t *a1, void *__src)
{
  v4 = *(__src + 16);
  v48 = __src[9];
  v49 = __src[10];
  v46 = __src[11];
  v47 = __src[12];
  v50 = __src[13];
  v51 = __src[14];
  v5 = __src[15];
  v6 = __src[16];
  if (v4 != 2 && (v4 & 1) != 0)
  {
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  }

  memcpy(__dst, __src, sizeof(__dst));
  sub_220DA83DC();
  v45 = *a1;
  __dst[0] = v5;
  __dst[1] = v6;
  sub_220CEFF14();

  v7 = sub_220DBFD40();
  v9 = v8;
  v11 = v10;
  v12 = sub_220DBFD10();
  v14 = v13;
  v16 = v15;
  sub_220CF0978(v7, v9, v11 & 1);

  sub_220DC01A0();
  sub_220DBF810();
  sub_220CF0978(v12, v14, v16 & 1);

  __dst[0] = v46;
  __dst[1] = v47;

  v17 = sub_220DBFD40();
  v19 = v18;
  v21 = v20;
  v22 = sub_220DBFD10();
  v24 = v23;
  LOBYTE(v7) = v25;
  sub_220CF0978(v17, v19, v21 & 1);

  sub_220DC01A0();
  sub_220DBF810();
  sub_220CF0978(v22, v24, v7 & 1);

  __dst[0] = v48;
  __dst[1] = v49;

  v26 = sub_220DBFD40();
  v28 = v27;
  v30 = v29;
  v31 = sub_220DBFD10();
  v33 = v32;
  LOBYTE(v7) = v34;
  sub_220CF0978(v26, v28, v30 & 1);

  sub_220DC01A0();
  sub_220DBF810();
  sub_220CF0978(v31, v33, v7 & 1);

  __dst[0] = v50;
  __dst[1] = v51;

  v35 = sub_220DBFD40();
  v37 = v36;
  v39 = v38;
  v40 = sub_220DBFD10();
  v42 = v41;
  LOBYTE(v33) = v43;
  sub_220CF0978(v35, v37, v39 & 1);

  sub_220DC01A0();
  sub_220DBF810();
  sub_220CF0978(v40, v42, v33 & 1);
}

uint64_t sub_220DA8BAC(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v37 = a4;
  v36 = a3;
  v35 = sub_220DBF850();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v35);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6 >= a5)
  {
    a6 = a5;
  }

  v31 = a2;
  v14 = a2[16];
  v15 = 0.0;
  v38 = v14;
  if (v14 == 2)
  {
    v33 = 0;
    v16 = 168;
  }

  else
  {
    if (v14)
    {
      v17 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
      v15 = 1.0;
      if (v17)
      {
        v15 = 4.0;
      }

      v33 = 1;
    }

    else
    {
      v33 = 0;
    }

    v16 = 108;
  }

  v18 = a6 * 0.5 - v15;
  memcpy(__dst, v31, sizeof(__dst));
  sub_220DA83DC();
  v19 = 0;
  v20 = 0;
  v32 = 360.0 / v16;
  v34 = v16 - 1;
  v30 = v18;
  v21 = (v10 + 8);
  v22 = v38;
  do
  {
    v23 = v19 % (v16 >> 2);
    if (v22 == 2)
    {
      if (!v23)
      {
        goto LABEL_29;
      }

LABEL_28:

      v28 = *a1;
      sub_220DBFCA0();
      sub_220DBF840();
      sub_220DBF820();
      sub_220DA9E64(v40);

      (*v21)(v13, v35);
      v22 = v38;
      goto LABEL_29;
    }

    if ((v33 & 1) == 0)
    {
      if (!v23)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (!v20)
    {
      memcpy(__dst, v31, sizeof(__dst));
      v20 = sub_220DA8F40(*a1, v30);
    }

    v24 = *(v20 + 16);
    if (!v24)
    {
      goto LABEL_28;
    }

    v25 = v32 * v19;
    v26 = (v20 + 40);
    while (*(v26 - 1) > v25 || v25 > *v26)
    {
      v26 += 2;
      if (!--v24)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    ++v19;
    sub_220DBF830();
  }

  while (v19 != v16);
}

uint64_t sub_220DA8F40(uint64_t a1, double a2)
{
  v149 = a1;
  v4 = sub_220DBF800();
  v5 = *(v4 - 8);
  v151 = v4;
  v152 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v147 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220DBFC80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 16);
  v15 = *(v2 + 72);
  v14 = *(v2 + 80);
  v16 = *(v2 + 88);
  v141 = *(v2 + 96);
  v142 = v16;
  v17 = *(v2 + 104);
  v143 = *(v2 + 112);
  v144 = v17;
  v18 = *(v9 + 104);
  v19 = MEMORY[0x277CE0A58];
  v20 = *(v2 + 120);
  v145 = *(v2 + 128);
  v146 = v20;
  v130 = v13;
  if (v13 != 2)
  {
    v19 = MEMORY[0x277CE0AA8];
  }

  v18(v12, *v19, v8);

  sub_220DBFC10();
  v21 = sub_220DBFBE0();
  (*(v9 + 8))(v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965B0, &qword_220DC7C58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220DC1CE0;
  v153 = v15;
  v154 = v14;
  v148 = sub_220CEFF14();
  v23 = sub_220DBFD40();
  v25 = v24;
  v27 = v26;
  v150 = v21;

  v28 = sub_220DBFD10();
  v132 = v29;
  v133 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v134 = v33;
  sub_220CF0978(v23, v25, v27 & 1);

  *(inited + 32) = v28;
  *(inited + 40) = v30;
  v131 = v32 & 1;
  *(inited + 48) = v32 & 1;
  *(inited + 56) = v34;
  *(inited + 64) = 0x4070E00000000000;
  v153 = v142;
  v154 = v141;
  v35 = sub_220DBFD40();
  v37 = v36;
  v39 = v38;
  v40 = sub_220DBFD10();
  v42 = v41;
  LODWORD(v142) = v43;
  v45 = v44;
  sub_220CF0978(v35, v37, v39 & 1);

  v136 = v42;
  v137 = v40;
  *(inited + 72) = v40;
  *(inited + 80) = v42;
  v135 = v142 & 1;
  *(inited + 88) = v142 & 1;
  v138 = v45;
  *(inited + 96) = v45;
  *(inited + 104) = 0;
  v153 = v144;
  v154 = v143;
  v46 = sub_220DBFD40();
  v48 = v47;
  LOBYTE(v37) = v49;
  v50 = sub_220DBFD10();
  v52 = v51;
  LODWORD(v45) = v53;
  v55 = v54;
  sub_220CF0978(v46, v48, v37 & 1);

  v140 = v52;
  v141 = v50;
  *(inited + 112) = v50;
  *(inited + 120) = v52;
  v139 = v45;
  *(inited + 128) = v45 & 1;
  v142 = v55;
  *(inited + 136) = v55;
  *(inited + 144) = 0x4056800000000000;
  v153 = v146;
  v154 = v145;
  v56 = sub_220DBFD40();
  v58 = v57;
  LOBYTE(v48) = v59;
  v148 = v60;
  v61 = sub_220DBFD10();
  v63 = v62;
  LODWORD(v52) = v64;
  v66 = v65;

  sub_220CF0978(v56, v58, v48 & 1);

  v144 = v63;
  v145 = v61;
  *(inited + 152) = v61;
  *(inited + 160) = v63;
  LODWORD(v143) = v52;
  *(inited + 168) = v52 & 1;
  v146 = v66;
  *(inited + 176) = v66;
  *(inited + 184) = 0x4066800000000000;
  v153 = MEMORY[0x277D84F90];
  sub_220CFB834(0, 4, 0);
  v67 = v153;
  v69 = v132;
  v68 = v133;
  LOBYTE(v63) = v131;
  sub_220CFD2C8(v133, v132, v131);

  v70 = v147;
  sub_220DBF860();
  sub_220DBF7F0();
  v72 = v71;
  v73 = *(v152 + 8);
  v152 += 8;
  (v73)(v70, v151);
  sub_220CF0978(v68, v69, v63);

  v153 = v67;
  v75 = *(v67 + 16);
  v74 = *(v67 + 24);
  v76 = v75 + 1;
  v77 = v70;
  if (v75 >= v74 >> 1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    *(v67 + 16) = v76;
    *(v67 + 8 * v75 + 32) = v72;
    v79 = v136;
    v78 = v137;
    v80 = v135;
    sub_220CFD2C8(v137, v136, v135);

    sub_220DBF860();
    sub_220DBF7F0();
    v82 = v81;
    (v73)(v77, v151);
    sub_220CF0978(v78, v79, v80);

    v153 = v67;
    v84 = *(v67 + 16);
    v83 = *(v67 + 24);
    v148 = v73;
    if (v84 >= v83 >> 1)
    {
      sub_220CFB834((v83 > 1), v84 + 1, 1);
      v67 = v153;
    }

    *(v67 + 16) = v84 + 1;
    *(v67 + 8 * v84 + 32) = v82;
    v85 = v139;
    v87 = v140;
    v86 = v141;
    sub_220CFD2C8(v141, v140, v139 & 1);

    v73 = v149;
    sub_220DBF860();
    v88 = v77;
    sub_220DBF7F0();
    v90 = v89;
    v148(v77, v151);
    sub_220CF0978(v86, v87, v85 & 1);

    v153 = v67;
    v92 = *(v67 + 16);
    v91 = *(v67 + 24);
    if (v92 >= v91 >> 1)
    {
      sub_220CFB834((v91 > 1), v92 + 1, 1);
      v88 = v77;
      v67 = v153;
    }

    *(v67 + 16) = v92 + 1;
    *(v67 + 8 * v92 + 32) = v90;
    v93 = v143;
    v95 = v144;
    v94 = v145;
    sub_220CFD2C8(v145, v144, v143 & 1);

    sub_220DBF860();
    sub_220DBF7F0();
    v97 = v96;
    v148(v88, v151);
    sub_220CF0978(v94, v95, v93 & 1);

    v153 = v67;
    v99 = *(v67 + 16);
    v98 = *(v67 + 24);
    if (v99 >= v98 >> 1)
    {
      sub_220CFB834((v98 > 1), v99 + 1, 1);
      v67 = v153;
    }

    *(v67 + 16) = v99 + 1;
    *(v67 + 8 * v99 + 32) = v97;
    *&v100 = COERCE_DOUBLE(sub_220DA9AC4(v67));
    if (v101)
    {
      break;
    }

    v111 = *&v100;

    v112 = 9.0;
    if (v130 == 2)
    {
      v112 = 7.0;
    }

    v113 = 0;
    v114 = acos(((a2 - v112) * (a2 - v112) + (a2 - v112) * (a2 - v112) - v111 * v111) / ((a2 - v112) * (a2 - v112 + a2 - v112))) * 57.2957795 * 0.5;
    v76 = MEMORY[0x277D84F90];
    a2 = 360.0;
    while (1)
    {
      v115 = *(inited + v113 + 32);
      v116 = *(inited + v113 + 40);
      v77 = *(inited + v113 + 48);
      v75 = *(inited + v113 + 56);
      v117 = *(inited + v113 + 64);
      v118 = v114 + v117;
      v119 = fmod(v117 - v114 + 360.0, 360.0);
      v72 = fmod(v118 + 360.0, 360.0);
      if (v72 >= v119)
      {
        sub_220CFD2C8(v115, v116, v77);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_220D56B68(0, *(v76 + 16) + 1, 1, v76);
          v76 = v127;
        }

        v121 = *(v76 + 16);
        v122 = *(v76 + 24);
        v73 = v121 + 1;
        if (v121 < v122 >> 1)
        {
          goto LABEL_30;
        }

LABEL_26:
        sub_220D56B68(v122 > 1, v73, 1, v76);
        v76 = v123;
        goto LABEL_30;
      }

      if (v119 > 360.0)
      {
        break;
      }

      sub_220CFD2C8(v115, v116, v77);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220D56B68(0, *(v76 + 16) + 1, 1, v76);
        v76 = v125;
      }

      v73 = *(v76 + 16);
      v120 = *(v76 + 24);
      v121 = v73 + 1;
      if (v73 >= v120 >> 1)
      {
        sub_220D56B68(v120 > 1, v73 + 1, 1, v76);
        v76 = v126;
      }

      *(v76 + 16) = v121;
      v74 = v76 + 16 * v73;
      *(v74 + 32) = v119;
      *(v74 + 40) = 0x4076800000000000;
      if (v72 < 0.0)
      {
        goto LABEL_36;
      }

      v122 = *(v76 + 24);
      v73 += 2;
      v119 = 0.0;
      if (v73 > (v122 >> 1))
      {
        goto LABEL_26;
      }

LABEL_30:
      sub_220CF0978(v115, v116, v77);

      *(v76 + 16) = v73;
      v124 = v76 + 16 * v121;
      *(v124 + 32) = v119;
      *(v124 + 40) = v72;
      v113 += 40;
      if (v113 == 160)
      {

        swift_setDeallocating();
        sub_220D7FE28();
        return v76;
      }
    }

    __break(1u);
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    sub_220CFB834((v74 > 1), v76, 1);
    v67 = v153;
  }

  swift_setDeallocating();
  sub_220D7FE28();
  if (qword_27CF94F58 != -1)
  {
    swift_once();
  }

  v102 = sub_220DBF410();
  __swift_project_value_buffer(v102, qword_27CF95F90);

  v103 = sub_220DBF3F0();
  v104 = sub_220DC0980();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v153 = v106;
    *v105 = 136446210;
    v107 = MEMORY[0x223D98370](v67, MEMORY[0x277D85048]);
    v109 = v108;

    v110 = sub_220D3F210(v107, v109, &v153);

    *(v105 + 4) = v110;
    _os_log_impl(&dword_220CD1000, v103, v104, "Failed to find max amount to knockout when drawing wind compass; knockoutAmounts=%{public}s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v106);
    MEMORY[0x223D98FB0](v106, -1, -1);
    MEMORY[0x223D98FB0](v105, -1, -1);
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_220DA9AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_220DA9B0C()
{
  result = qword_280FA66F8;
  if (!qword_280FA66F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96570, &qword_220DC7C10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96588, &qword_220DC7C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96590, &qword_220DC7C30);
    sub_220DA9C34();
    sub_220CE161C(qword_280FA6560, &qword_27CF96590, &qword_220DC7C30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66F8);
  }

  return result;
}

unint64_t sub_220DA9C34()
{
  result = qword_280FA66D0;
  if (!qword_280FA66D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96588, &qword_220DC7C28);
    sub_220DA9CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66D0);
  }

  return result;
}

unint64_t sub_220DA9CC0()
{
  result = qword_280FA66E8;
  if (!qword_280FA66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96598, &qword_220DC7C38);
    sub_220CE161C(&qword_280FA6680, &qword_27CF965A0, &unk_220DC7C40);
    sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66E8);
  }

  return result;
}

uint64_t sub_220DA9DA4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_220DA9DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96568, &qword_220DC7C08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220DA9EC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_7Tm()
{
  OUTLINED_FUNCTION_0_25();
  v1 = v0[9];

  v2 = v0[12];

  v3 = v0[14];

  v4 = v0[16];

  v5 = v0[18];

  v6 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t WindComponentCompassViewStyle.maxDynamicTypeSizeRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_220DBF7D0();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277CDF9E8];
  if (v3 != 2)
  {
    v6 = MEMORY[0x277CDF9D8];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t WindComponentCompassViewStyle.compassDirectionFont.getter()
{
  v1 = sub_220DBFC80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CE0A58];
  if (*v0 != 2)
  {
    v6 = MEMORY[0x277CE0AA8];
  }

  (*(v2 + 104))(v5, *v6, v1);
  sub_220DBFC10();
  v7 = sub_220DBFBE0();
  (*(v2 + 8))(v5, v1);
  return v7;
}

double WindComponentCompassViewStyle.tickMarkHeight.getter()
{
  result = 9.0;
  if (*v0 == 2)
  {
    return 7.0;
  }

  return result;
}

uint64_t WindComponentCompassViewStyle.numberOfTicks.getter()
{
  if (*v0 == 2)
  {
    return 168;
  }

  else
  {
    return 108;
  }
}

double WindComponentCompassViewStyle.circlePadding.getter()
{
  v1 = *v0;
  result = 0.0;
  if (v1 != 2 && (v1 & 1) != 0)
  {
    v3 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    result = 1.0;
    if (v3)
    {
      return 4.0;
    }
  }

  return result;
}

uint64_t static WindComponentCompassViewStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 != 2)
    {
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
    }

    goto LABEL_5;
  }

  if (v3 != 2)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

double WindComponentCompassViewStyle.windCompassNorthTriangleSize.getter()
{
  result = 10.1818182;
  if (*v0 == 2)
  {
    return 8.0;
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for WindComponentCompassViewStyle(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WindComponentCompassViewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220DAA3C4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_220DAA3E0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void *WindComponentCompassContainerView.init(model:showCircleOutline:primaryLabelFont:secondaryLabelFont:)@<X0>(const void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965C8, &qword_220DC7D40);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for WindComponentCompassContainerView();
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965D0, &qword_220DC7D78);
  swift_storeEnumTagMultiPayload();
  result = memcpy(a5 + v10[6], a1, 0x78uLL);
  *(a5 + v10[7]) = a2;
  *(a5 + v10[8]) = a3;
  *(a5 + v10[9]) = a4;
  return result;
}

double sub_220DAA4F4()
{
  v21 = sub_220DBF9C0();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965D0, &qword_220DC7D78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v21 - v7);
  v9 = sub_220DBF870();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WindComponentCompassContainerView();
  v15 = *(v0 + *(v14 + 24) + 8);
  sub_220D07944(v0 + *(v14 + 20), v8, &qword_27CF965D0, &qword_220DC7D78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v16 = *v8;
    sub_220DC0990();
    v17 = sub_220DBFBA0();
    sub_220DBF380();

    sub_220DBF9B0();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v21);
  }

  v18 = v15 * 0.0174532925;
  v19 = (*(v10 + 88))(v13, v9);
  if (v19 != *MEMORY[0x277CDFA88])
  {
    if (v19 == *MEMORY[0x277CDFA90])
    {
      v22 = 0x401921FB54442D18;
      sub_220DBFE50();
      sub_220DBFE50();
      sub_220DBFE60();
      return *&v22;
    }

    else
    {
      (*(v10 + 8))(v13, v9);
    }
  }

  return v18;
}

uint64_t WindComponentCompassContainerView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_220DC0120();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965D8, &qword_220DC7D80);
  return sub_220DAA860(v1, a1 + *(v4 + 44));
}

uint64_t sub_220DAA860@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965F8, &qword_220DC7E20);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96600, &qword_220DC7E28);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v29 - v13);
  v15 = *(type metadata accessor for WindComponentCompassContainerView() + 24);
  memcpy(__dst, (a1 + v15), 0x78uLL);
  KeyPath = swift_getKeyPath();
  LOBYTE(v39[0]) = 0;
  memcpy(&v40[7], __dst, 0x78uLL);
  v33 = 0;
  v16 = *(a1 + v15);
  if (v16 == 2 || (v16 & 1) == 0)
  {
    sub_220DAC24C(__dst, v39);
    v17 = sub_220DBFA40();
    v38 = 0;
    sub_220DAAD70(a1, v39);
    memcpy(v36, v39, 0x79uLL);
    memcpy(v35, v39, 0x79uLL);
    sub_220D07944(v36, v34, &qword_27CF96608, &qword_220DC7E60);
    sub_220CDA548(v35, &qword_27CF96608, &qword_220DC7E60);
    memcpy(&v37[7], v36, 0x79uLL);
    v39[0] = v17;
    v39[1] = 0;
    LOBYTE(v39[2]) = v38;
    memcpy(&v39[2] + 1, v37, 0x80uLL);
    v39[19] = 0x3FF0000000000000;
    LOWORD(v39[20]) = 256;
    nullsub_1(v39);
  }

  else
  {
    sub_220DAC2A8(v39);
    sub_220DAC24C(__dst, v35);
  }

  memcpy(v41, v39, sizeof(v41));
  *v14 = sub_220DC0120();
  v14[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96610, &qword_220DC7E68);
  sub_220DAB010(a1, (v14 + *(v19 + 44)));
  v20 = v14 + *(v9 + 36);
  *v20 = 0x3FF0000000000000;
  *(v20 + 4) = 256;
  *v8 = sub_220DBFA40();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96618, &qword_220DC7E70);
  sub_220DAB518(a1, &v8[*(v21 + 44)]);
  v22 = &v8[*(v3 + 36)];
  *v22 = 0x3FD999999999999ALL;
  *(v22 + 4) = 0;
  v23 = v31;
  sub_220D07944(v14, v31, &qword_27CF96600, &qword_220DC7E28);
  v24 = v32;
  sub_220D07944(v8, v32, &qword_27CF965F8, &qword_220DC7E20);
  v25 = KeyPath;
  v34[0] = KeyPath;
  LOBYTE(v34[1]) = v33;
  memcpy(&v34[1] + 1, v40, 0x7FuLL);
  v34[17] = 0x3FF0000000000000;
  v26 = v29;
  memcpy(v29, v34, 0x90uLL);
  memcpy(v35, v41, 0xA2uLL);
  memcpy(v26 + 144, v41, 0xA2uLL);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96620, &qword_220DC7E78);
  sub_220D07944(v23, &v26[*(v27 + 64)], &qword_27CF96600, &qword_220DC7E28);
  sub_220D07944(v24, &v26[*(v27 + 80)], &qword_27CF965F8, &qword_220DC7E20);
  sub_220D07944(v34, v39, &qword_27CF96628, &qword_220DC7E80);
  sub_220D07944(v35, v39, &qword_27CF96630, &qword_220DC7E88);
  sub_220CDA548(v8, &qword_27CF965F8, &qword_220DC7E20);
  sub_220CDA548(v14, &qword_27CF96600, &qword_220DC7E28);
  sub_220CDA548(v24, &qword_27CF965F8, &qword_220DC7E20);
  sub_220CDA548(v23, &qword_27CF96600, &qword_220DC7E28);
  memcpy(v39, v41, 0xA2uLL);
  sub_220CDA548(v39, &qword_27CF96630, &qword_220DC7E88);
  v36[0] = v25;
  LOBYTE(v36[1]) = v33;
  memcpy(&v36[1] + 1, v40, 0x7FuLL);
  v36[17] = 0x3FF0000000000000;
  return sub_220CDA548(v36, &qword_27CF96628, &qword_220DC7E80);
}

uint64_t sub_220DAAD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220DBFF90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_220DBFF50();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v9 = sub_220DBFFE0();

  (*(v5 + 8))(v8, v4);
  v10 = *(a1 + *(type metadata accessor for WindComponentCompassContainerView() + 24)) == 2;
  sub_220DC0120();
  sub_220DBF760();
  v28 = 1;
  *&v27[6] = v29;
  *&v27[22] = v30;
  *&v27[38] = v31;
  v11 = sub_220DBFF20();
  KeyPath = swift_getKeyPath();
  LODWORD(v8) = sub_220DBFB40();
  *(&v17[1] + 2) = *v27;
  v17[0] = v9;
  LOWORD(v17[1]) = 1;
  *(&v17[2] + 2) = *&v27[16];
  *(&v17[3] + 2) = *&v27[32];
  *&v17[4] = *&v27[46];
  *(&v17[4] + 1) = KeyPath;
  *&v17[5] = v11;
  DWORD2(v17[5]) = v8;
  v15 = xmmword_220DC7CF0;
  v17[6] = xmmword_220DC7CF0;
  v16[112] = 1;
  memcpy(a2, v17, 0x70uLL);
  v13 = *&v27[16];
  v20 = *v27;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  v18[0] = v9;
  v18[1] = 0;
  v19 = 1;
  v21 = v13;
  *v22 = *&v27[32];
  *&v22[14] = *&v27[46];
  v23 = KeyPath;
  v24 = v11;
  v25 = v8;
  v26 = v15;
  sub_220D07944(v17, v16, &qword_27CF966E0, &unk_220DC8030);
  return sub_220CDA548(v18, &qword_27CF966E0, &unk_220DC8030);
}

uint64_t sub_220DAB010@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF966C8, &qword_220DC7FE8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v11 = sub_220DBFF90();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFF60();
  (*(v12 + 104))(v15, *MEMORY[0x277CE0FE0], v11);
  v45 = sub_220DBFFE0();

  (*(v12 + 8))(v15, v11);
  v16 = sub_220DAA4F4();
  sub_220DC01A0();
  v18 = v17;
  v20 = v19;
  v21 = type metadata accessor for WindComponentCompassContainerView();
  v22 = *(a1 + *(v21 + 24));
  if (v22 != 2 && (v22 & 1) != 0)
  {
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  }

  v44 = sub_220DBFBC0();
  sub_220DBF700();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v66 = 1;
  v62 = 0;
  if (*(a1 + *(v21 + 28)))
  {
    sub_220DBFED0();
    v31 = sub_220DBFF10();

    v43 = 0x4018000000000000;
    v32 = 0x3FE0000000000000;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v43 = 0;
  }

  v33 = sub_220DBFED0();
  v34 = *(v4 + 36);
  v35 = *MEMORY[0x277CE13C0];
  v36 = sub_220DC0150();
  (*(*(v36 - 8) + 104))(&v10[v34], v35, v36);
  *v10 = v33;
  *(v10 + 4) = 256;
  *(v10 + 2) = 0x3FE051EB851EB852;
  *(v10 + 12) = 0;
  sub_220D07944(v10, v8, &qword_27CF966C8, &qword_220DC7FE8);
  v37 = v45;
  __src[0] = v45;
  __src[1] = 0;
  LOWORD(__src[2]) = 1;
  *(&__src[2] + 2) = v64;
  HIWORD(__src[2]) = v65;
  *&__src[3] = v16;
  __src[4] = v18;
  __src[5] = v20;
  v38 = v44;
  LOBYTE(__src[6]) = v44;
  *(&__src[6] + 1) = *v63;
  HIDWORD(__src[6]) = *&v63[3];
  __src[7] = v24;
  __src[8] = v26;
  __src[9] = v28;
  __src[10] = v30;
  LOBYTE(__src[11]) = 0;
  memcpy(a2, __src, 0x59uLL);
  a2[12] = v32;
  a2[13] = 0;
  v39 = v43;
  a2[14] = v31;
  a2[15] = v39;
  a2[16] = 0;
  a2[17] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF966D0, &qword_220DC7FF0);
  sub_220D07944(v8, a2 + *(v40 + 64), &qword_27CF966C8, &qword_220DC7FE8);
  sub_220D07944(__src, v47, &qword_27CF966D8, &qword_220DC7FF8);

  sub_220CDA548(v10, &qword_27CF966C8, &qword_220DC7FE8);
  sub_220CDA548(v8, &qword_27CF966C8, &qword_220DC7FE8);

  v47[0] = v37;
  v47[1] = 0;
  v48 = 1;
  v49 = 0;
  v50 = v64;
  v51 = v65;
  v52 = v16;
  v53 = v18;
  v54 = v20;
  v55 = v38;
  *v56 = *v63;
  *&v56[3] = *&v63[3];
  v57 = v24;
  v58 = v26;
  v59 = v28;
  v60 = v30;
  v61 = 0;
  return sub_220CDA548(v47, &qword_27CF966D8, &qword_220DC7FF8);
}

uint64_t sub_220DAB518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96638, &qword_220DC7E90);
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  MEMORY[0x28223BE20](v3);
  v106 = v101 - v5;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96640, &qword_220DC7E98);
  v6 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v105 = v101 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96648, &unk_220DC7EA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v116 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v115 = v101 - v12;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96590, &qword_220DC7C30);
  v13 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v126 = v101 - v14;
  v125 = sub_220DBFB90();
  v128 = *(v125 - 8);
  v15 = *(v128 + 64);
  MEMORY[0x28223BE20](v125);
  v17 = v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96650, &qword_220DC7EB0);
  v18 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v127 = v101 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96658, &qword_220DC7EB8);
  v120 = *(v20 - 8);
  v121 = v20;
  v21 = *(v120 + 64);
  MEMORY[0x28223BE20](v20);
  v119 = v101 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96660, &qword_220DC7EC0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v113 = v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v123 = v101 - v27;
  v28 = type metadata accessor for WindComponentCompassContainerView();
  v29 = (a1 + *(v28 + 24));
  v30 = v29[3];
  v130[0] = v29[2];
  v130[1] = v30;
  v31 = sub_220CEFF14();

  v109 = v31;
  v32 = sub_220DBFD40();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  KeyPath = swift_getKeyPath();
  v110 = v28;
  v40 = *(v28 + 32);
  v112 = a1;
  v41 = *(a1 + v40);
  v42 = swift_getKeyPath();
  v36 &= 1u;
  LOBYTE(v130[0]) = v36;
  v118 = v29;
  v43 = v29[6];
  v44 = swift_getKeyPath();
  LOBYTE(v129[0]) = 0;
  v130[0] = v32;
  v130[1] = v34;
  LOBYTE(v130[2]) = v36;
  v130[3] = v38;
  v130[4] = KeyPath;
  v130[5] = 0x3FE0000000000000;
  v130[6] = v42;
  v45 = v126;
  v130[7] = v41;
  v130[8] = v44;
  v130[9] = v43;
  LOBYTE(v130[10]) = 0;

  sub_220DBFB80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96668, &qword_220DC7F58);
  sub_220DAC338();
  v46 = v127;
  v47 = v122;
  sub_220DBFE00();
  v48 = *(v128 + 8);
  v111 = v17;
  v128 += 8;
  v48(v17, v125);
  memcpy(__dst, v130, 0x51uLL);
  sub_220CDA548(__dst, &qword_27CF96668, &qword_220DC7F58);
  v49 = swift_getKeyPath();
  v50 = &v46[*(v47 + 36)];
  *v50 = v49;
  v50[8] = 1;
  v51 = *MEMORY[0x277CDF9D8];
  v52 = sub_220DBF7D0();
  v53 = *(v52 - 8);
  v54 = *(v53 + 104);
  v55 = v53 + 104;
  v54(v45, v51, v52);
  v56 = sub_220DAC560();
  result = sub_220DC05B0();
  if (result)
  {
    v101[0] = v48;
    v101[1] = v56;
    v101[2] = v55;
    v102 = v54;
    v103 = v51;
    v104 = v52;
    v58 = sub_220DAC5B8();
    v59 = sub_220CE161C(qword_280FA6560, &qword_27CF96590, &qword_220DC7C30);
    v60 = v119;
    v61 = v124;
    v62 = v127;
    sub_220DBFDA0();
    sub_220CDA548(v45, &qword_27CF96590, &qword_220DC7C30);
    sub_220CDA548(v62, &qword_27CF96650, &qword_220DC7EB0);
    v130[0] = v47;
    v130[1] = v61;
    v130[2] = v58;
    v130[3] = v59;
    v127 = v59;
    swift_getOpaqueTypeConformance2();
    v63 = v123;
    v64 = v121;
    sub_220DBFDF0();
    (*(v120 + 8))(v60, v64);
    v65 = v118[5];
    if (!v65)
    {
      v96 = v115;
      __swift_storeEnumTagSinglePayload(v115, 1, 1, v114);
      goto LABEL_6;
    }

    v130[0] = v118[4];
    v130[1] = v65;

    v66 = sub_220DBFD40();
    v68 = v67;
    v70 = v69;
    v71 = *(v112 + *(v110 + 36));
    v72 = sub_220DBFD10();
    v74 = v73;
    v76 = v75;
    sub_220CF0978(v66, v68, v70 & 1);

    v77 = v111;
    sub_220DBFB80();
    v122 = sub_220DBFD00();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    sub_220CF0978(v72, v74, v76 & 1);

    (v101[0])(v77, v125);
    v84 = swift_getKeyPath();
    v85 = v81 & 1;
    LOBYTE(v129[0]) = v81 & 1;
    v86 = swift_getKeyPath();
    LOBYTE(v130[0]) = 0;
    v87 = swift_getKeyPath();
    *&v129[0] = v122;
    *(&v129[0] + 1) = v79;
    LOBYTE(v129[1]) = v85;
    *(&v129[1] + 1) = v83;
    v129[2] = xmmword_220DC7D00;
    *&v129[3] = v84;
    BYTE8(v129[3]) = 1;
    *&v129[4] = v86;
    *(&v129[4] + 1) = 2;
    LOBYTE(v129[5]) = 0;
    *(&v129[5] + 1) = v87;
    *&v129[6] = 0x3FE0000000000000;
    v88 = v126;
    v102(v126, v103, v104);
    result = sub_220DC05B0();
    if (result)
    {
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF966A8, &qword_220DC7FC8);
      v90 = sub_220DAC6AC();
      v91 = v106;
      v92 = v124;
      v93 = v127;
      sub_220DBFDA0();
      sub_220CDA548(v88, &qword_27CF96590, &qword_220DC7C30);
      memcpy(v130, v129, sizeof(v130));
      sub_220CDA548(v130, &qword_27CF966A8, &qword_220DC7FC8);
      *&v129[0] = v89;
      *(&v129[0] + 1) = v92;
      *&v129[1] = v90;
      *(&v129[1] + 1) = v93;
      swift_getOpaqueTypeConformance2();
      v94 = v105;
      v95 = v108;
      sub_220DBFDF0();
      (*(v107 + 8))(v91, v95);
      v96 = v115;
      sub_220CECE0C(v94, v115);
      __swift_storeEnumTagSinglePayload(v96, 0, 1, v114);
      v63 = v123;
LABEL_6:
      v97 = v113;
      sub_220D07944(v63, v113, &qword_27CF96660, &qword_220DC7EC0);
      v98 = v116;
      sub_220D07944(v96, v116, &qword_27CF96648, &unk_220DC7EA0);
      v99 = v117;
      sub_220D07944(v97, v117, &qword_27CF96660, &qword_220DC7EC0);
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF966A0, &qword_220DC7FC0);
      sub_220D07944(v98, v99 + *(v100 + 48), &qword_27CF96648, &unk_220DC7EA0);
      sub_220CDA548(v96, &qword_27CF96648, &unk_220DC7EA0);
      sub_220CDA548(v63, &qword_27CF96660, &qword_220DC7EC0);
      sub_220CDA548(v98, &qword_27CF96648, &unk_220DC7EA0);
      return sub_220CDA548(v97, &qword_27CF96660, &qword_220DC7EC0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WindComponentCompassContainerView()
{
  result = qword_280FA6B80;
  if (!qword_280FA6B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220DAC004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_220DAC118()
{
  sub_220DAC1F8(319, &qword_280FA6718, MEMORY[0x277CE02A8]);
  if (v0 <= 0x3F)
  {
    sub_220DAC1F8(319, qword_280FA6720, MEMORY[0x277CDFAA0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220DAC1F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220DBF710();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220DAC2B0(uint64_t *a1)
{
  v1 = *a1;

  return sub_220DBF900();
}

uint64_t sub_220DAC2DC(uint64_t *a1)
{
  v1 = *a1;

  return sub_220DBF980();
}

uint64_t sub_220DAC308(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_220DBF9A0();
}

unint64_t sub_220DAC338()
{
  result = qword_280FA66C0;
  if (!qword_280FA66C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96668, &qword_220DC7F58);
    sub_220DAC3F0();
    sub_220CE161C(&qword_280FA6690, &qword_27CF96690, &qword_220DC7F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66C0);
  }

  return result;
}

unint64_t sub_220DAC3F0()
{
  result = qword_280FA66D8;
  if (!qword_280FA66D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96670, &qword_220DC7F60);
    sub_220DAC4A8();
    sub_220CE161C(&qword_280FA6698, &qword_27CF96688, &qword_220DC7F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66D8);
  }

  return result;
}

unint64_t sub_220DAC4A8()
{
  result = qword_280FA6700;
  if (!qword_280FA6700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96678, &qword_220DC7F68);
    sub_220CE161C(&qword_280FA66A8, &qword_27CF96680, &qword_220DC7F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6700);
  }

  return result;
}

unint64_t sub_220DAC560()
{
  result = qword_280FA6710;
  if (!qword_280FA6710)
  {
    sub_220DBF7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6710);
  }

  return result;
}

unint64_t sub_220DAC5B8()
{
  result = qword_280FA66F0;
  if (!qword_280FA66F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96650, &qword_220DC7EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96668, &qword_220DC7F58);
    sub_220DAC338();
    swift_getOpaqueTypeConformance2();
    sub_220CE161C(&qword_280FA66A0, &qword_27CF96698, &qword_220DC7FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66F0);
  }

  return result;
}

unint64_t sub_220DAC6AC()
{
  result = qword_280FA66B8;
  if (!qword_280FA66B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF966A8, &qword_220DC7FC8);
    sub_220DAC764();
    sub_220CE161C(&qword_280FA66A8, &qword_27CF96680, &qword_220DC7F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66B8);
  }

  return result;
}

unint64_t sub_220DAC764()
{
  result = qword_280FA66C8;
  if (!qword_280FA66C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF966B0, &qword_220DC7FD0);
    sub_220DAC81C();
    sub_220CE161C(&qword_280FA6690, &qword_27CF96690, &qword_220DC7F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66C8);
  }

  return result;
}

unint64_t sub_220DAC81C()
{
  result = qword_280FA66E0;
  if (!qword_280FA66E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF966B8, &qword_220DC7FD8);
    sub_220DAC8D4();
    sub_220CE161C(&qword_280FA66A0, &qword_27CF96698, &qword_220DC7FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66E0);
  }

  return result;
}

unint64_t sub_220DAC8D4()
{
  result = qword_280FA6708;
  if (!qword_280FA6708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF966C0, &qword_220DC7FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6708);
  }

  return result;
}

uint64_t WindComponentCompassViewModel.primaryLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_20();
}

uint64_t WindComponentCompassViewModel.secondaryLabel.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_20();
}

uint64_t WindComponentCompassViewModel.northString.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_20();
}

uint64_t WindComponentCompassViewModel.eastString.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_20();
}

uint64_t WindComponentCompassViewModel.southString.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_20();
}

uint64_t WindComponentCompassViewModel.westString.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_20();
}

_BYTE *WindComponentCompassViewModel.init(style:angle:primaryLabel:secondaryLabel:primaryLabelLineLimit:northString:eastString:southString:westString:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  *a9 = *result;
  *(a9 + 8) = a10;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a11;
  *(a9 + 88) = a12;
  *(a9 + 104) = a13;
  *(a9 + 112) = a14;
  return result;
}

uint64_t static WindComponentCompassViewModel.== infix(_:_:)(double *a1, double *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v10 = *(a1 + 5);
  v9 = *(a1 + 6);
  v11 = *(a1 + 7);
  v12 = *(a1 + 8);
  v14 = *(a1 + 9);
  v13 = *(a1 + 10);
  v16 = *(a1 + 11);
  v15 = *(a1 + 12);
  v17 = *(a1 + 13);
  v18 = *(a1 + 14);
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 2);
  v22 = *(a2 + 3);
  v23 = *(a2 + 4);
  v24 = *(a2 + 5);
  v25 = *(a2 + 6);
  v26 = *(a2 + 7);
  v28 = *(a2 + 8);
  v27 = *(a2 + 9);
  v29 = *(a2 + 10);
  v30 = *(a2 + 11);
  v32 = *(a2 + 12);
  v31 = *(a2 + 13);
  v33 = *(a2 + 14);
  if (v4 == 2)
  {
    if (v19 != 2 || v5 != v20)
    {
      return 0;
    }
  }

  else
  {
    v35 = 0;
    if (v19 == 2 || ((v19 ^ v4) & 1) != 0 || v5 != v20)
    {
      return v35;
    }
  }

  if (v6 != v21 || v7 != v22)
  {
    v76 = v14;
    v78 = v9;
    v80 = v32;
    v72 = v15;
    v74 = v30;
    v68 = v33;
    v70 = v16;
    v66 = v12;
    v67 = v31;
    v65 = v18;
    v37 = v17;
    v64 = v23;
    v38 = v13;
    v39 = v27;
    v40 = v29;
    v41 = v11;
    v42 = v26;
    v43 = v28;
    v44 = v10;
    v45 = v25;
    v46 = v8;
    v47 = sub_220DC0CA0();
    v8 = v46;
    v25 = v45;
    v10 = v44;
    v28 = v43;
    v26 = v42;
    v11 = v41;
    v29 = v40;
    v27 = v39;
    v13 = v38;
    v23 = v64;
    v17 = v37;
    v18 = v65;
    v12 = v66;
    v31 = v67;
    v33 = v68;
    v16 = v70;
    v15 = v72;
    v30 = v74;
    v32 = v80;
    v14 = v76;
    v9 = v78;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  if (!v10)
  {
    v35 = 0;
    if (v24 || v9 != v25)
    {
      return v35;
    }

    goto LABEL_28;
  }

  if (!v24)
  {
    return 0;
  }

  if (v8 == v23 && v10 == v24)
  {
    if (v9 == v25)
    {
      goto LABEL_28;
    }

    return 0;
  }

  v49 = v25;
  v77 = v29;
  v79 = v9;
  v71 = v28;
  v73 = v26;
  v75 = v11;
  v81 = v27;
  v69 = v13;
  v62 = v17;
  v50 = sub_220DC0CA0();
  v35 = 0;
  if ((v50 & 1) == 0)
  {
    return v35;
  }

  v29 = v77;
  v17 = v62;
  v13 = v69;
  v28 = v71;
  v27 = v81;
  v26 = v73;
  v11 = v75;
  if (v79 != v49)
  {
    return v35;
  }

LABEL_28:
  v63 = v17;
  v82 = v32;
  v51 = v30;
  v52 = v15;
  if (v11 != v26 || v12 != v28)
  {
    v54 = v13;
    v55 = v27;
    v56 = v29;
    v57 = sub_220DC0CA0();
    v29 = v56;
    v27 = v55;
    v13 = v54;
    if ((v57 & 1) == 0)
    {
      return 0;
    }
  }

  v58 = v14 == v27 && v13 == v29;
  if (!v58 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  v59 = v16 == v51 && v52 == v82;
  if (!v59 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  if (v63 == v31 && v18 == v33)
  {
    return 1;
  }

  return sub_220DC0CA0();
}

uint64_t static WindComponentCompassViewModel.mock(style:northString:eastString:southString:westString:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = *a1;
  *(a9 + 8) = 0x4066800000000000;
  *(a9 + 16) = 12849;
  *(a9 + 24) = 0xE200000000000000;
  *(a9 + 32) = xmmword_220DC8040;
  *(a9 + 48) = 1;
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  *(a9 + 72) = a4;
  *(a9 + 80) = a5;
  *(a9 + 88) = a6;
  *(a9 + 96) = a7;
  *(a9 + 104) = a8;
  *(a9 + 112) = a10;
}

uint64_t sub_220DACE50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_220DACE90(uint64_t result, int a2, int a3)
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

uint64_t PolarType.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

unint64_t sub_220DACF88()
{
  result = qword_27CF966E8;
  if (!qword_27CF966E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF966E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PolarType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220DAD0B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v75 = a2;
  v71 = a1;
  v78 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v72 = &v66 - v10;
  v76 = sub_220DC0260();
  v11 = OUTLINED_FUNCTION_0(v76);
  v74 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v73 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_18_17();
  v24 = OUTLINED_FUNCTION_0(v23);
  v77 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v32 = *a3;
  v31 = *(a3 + 8);
  v33 = *(a3 + 16);
  v34 = *(a3 + 24);
  v35 = *(a3 + 32);
  v36 = *(a3 + 40);
  sub_220CEF48C(v75, v4);
  v37 = OUTLINED_FUNCTION_16_21();
  if (__swift_getEnumTagSinglePayload(v37, v38, v23) == 1)
  {
    v39 = v76;
    sub_220CE1ABC(v4, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v40 = sub_220DBF410();
    __swift_project_value_buffer(v40, qword_27CF95F48);
    v41 = sub_220DBF3F0();
    v42 = sub_220DC0980();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v78;
    if (v43)
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_14(&dword_220CD1000, v45, v46, "Failed to create platter string for Feels Like due to missing extrema values");
      OUTLINED_FUNCTION_19_14();
    }

    v47 = 1;
  }

  else
  {
    (*(v77 + 32))(v30, v4, v23);
    sub_220DBF300();
    sub_220DBF2F0();
    v79 = v32;
    v80 = v31;
    v81 = v33;
    v82 = v34;
    v83 = v35;
    v84 = v36;
    sub_220DAD640(&v79, v18);
    v79 = v32;
    v80 = v31;
    v81 = v33;
    v82 = v34;
    v83 = v35;
    v84 = v36;
    v48 = v72;
    sub_220DADF68(v71, &v79, v72);
    v49 = OUTLINED_FUNCTION_16_21();
    v39 = v76;
    if (__swift_getEnumTagSinglePayload(v49, v50, v76) == 1)
    {
      (*(v77 + 8))(v30, v23);
      sub_220CE1ABC(v48, &qword_27CF951F8, &qword_220DC1DA0);
      v44 = v78;
      (*(v74 + 32))(v78, v18, v39);
    }

    else
    {
      v75 = v23;
      v51 = v74;
      (*(v74 + 32))(v73, v48, v39);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_2_35();
      v52 = sub_220DBE240();
      v71 = v53;
      v72 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v54 = sub_220DC0250();
      v66 = v54;
      v55 = *(v54 - 8);
      v68 = *(v55 + 72);
      v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v57 = swift_allocObject();
      v69 = v57;
      v70 = v18;
      *(v57 + 16) = xmmword_220DC17C0;
      v58 = v57 + v56;
      v67 = *(v51 + 16);
      v67(v57 + v56, v18, v39);
      v59 = *MEMORY[0x277D7B3C0];
      v60 = v39;
      v61 = *(v55 + 104);
      v61(v58, v59, v54);
      v62 = v68;
      v63 = v73;
      v67(v58 + v68, v73, v60);
      v61(v58 + v62, v59, v66);
      v39 = v60;
      v44 = v78;
      sub_220DC0220();
      v64 = *(v51 + 8);
      v64(v63, v60);
      v64(v70, v60);
      (*(v77 + 8))(v30, v75);
    }

    v47 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v44, v47, 1, v39);
}

uint64_t sub_220DAD640@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v86 = sub_220DC0300();
  v3 = *(v86 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v86);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_220DC0A40();
  v95 = *(v85 - 8);
  v7 = *(v95 + 64);
  MEMORY[0x28223BE20](v85);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v94 = *(v83 - 8);
  v10 = *(v94 + 64);
  v11 = MEMORY[0x28223BE20](v83);
  v89 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v88 = &v76 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v76 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v93 = &v76 - v18;
  MEMORY[0x28223BE20](v17);
  v96 = &v76 - v19;
  v20 = *a1;
  sub_220D287C0();
  v21 = v20;
  sub_220DBE040();
  sub_220DBE040();
  sub_220DC02B0();
  v22 = sub_220DBF130();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = v21;
  v80 = v25;
  sub_220DBF120();
  v26 = [v25 symbol];
  sub_220DC0620();

  LODWORD(v84) = *MEMORY[0x277D7B408];
  v27 = v3[13];
  v76 = v3 + 13;
  v82 = v27;
  v28 = v6;
  v29 = v86;
  v27(v6);
  v81 = sub_220CF6ABC();
  v30 = v83;
  v31 = v85;
  v90 = sub_220DBE090();
  v91 = v32;

  v33 = v3[1];
  v78 = v3 + 1;
  v79 = v33;
  v33(v28, v29);
  v34 = *(v95 + 8);
  v95 += 8;
  v77 = v34;
  v35 = v31;
  v34(v9, v31);
  v36 = v9;
  sub_220DC02B0();
  v37 = *(v22 + 48);
  v38 = *(v22 + 52);
  swift_allocObject();
  v39 = v80;
  sub_220DBF120();
  v40 = [v39 symbol];
  sub_220DC0620();

  v82(v28, v84, v29);
  v41 = v35;
  v42 = v93;
  v82 = sub_220DBE090();
  v84 = v43;

  v44 = v94;

  v79(v28, v29);
  v77(v36, v41);
  v45 = *(v44 + 16);
  v46 = v87;
  v45(v87, v96, v30);
  v47 = v88;
  v45(v88, v42, v30);
  v48 = v89;
  sub_220DBE130();
  sub_220DBE050();
  v50 = v49;
  v53 = *(v44 + 8);
  v52 = v44 + 8;
  v51 = v53;
  v53(v48, v30);
  v54 = round(v50);
  sub_220DBE130();
  sub_220DBE050();
  v56 = v55;
  v53(v48, v30);
  v53(v47, v30);
  v53(v46, v30);
  if (v54 == round(v56))
  {

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v57 = *(sub_220DC0250() - 8);
    v58 = *(v57 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_220DC17A0;
    v61 = (v60 + v59);
    v62 = v91;
    *v61 = v90;
    v61[1] = v62;
    v63 = *MEMORY[0x277D7B3C8];
    (*(v57 + 104))();
    sub_220DC0220();
  }

  else
  {
    v64 = v82;
    v94 = v52;
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v95 = sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v65 = sub_220DC0250();
    v66 = *(v65 - 8);
    v67 = *(v66 + 72);
    v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_220DC17C0;
    v70 = (v69 + v68);
    v71 = v84;
    *v70 = v64;
    v70[1] = v71;
    v72 = *(v66 + 104);
    (v72)(v70, *MEMORY[0x277D7B3C8], v65);
    v73 = (v70 + v67);
    v74 = v91;
    *v73 = v90;
    v73[1] = v74;
    v72();
    sub_220DC0220();
    v42 = v93;
  }

  v51(v42, v30);
  return (v51)(v96, v30);
}

uint64_t sub_220DADF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v121 = a1;
  v122 = a3;
  v113 = sub_220DBE5C0();
  v112 = *(v113 - 8);
  v4 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_220DBE5E0();
  v109 = *(v110 - 8);
  v6 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v126 = *(v8 - 8);
  v9 = v126[8];
  v10 = MEMORY[0x28223BE20](v8);
  v107 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v106 = &v104 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v105 = &v104 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v104 = &v104 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v120 = &v104 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v119 = &v104 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v104 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v104 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v104 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v104 - v31;
  v34 = *a2;
  v33 = *(a2 + 8);
  v35 = *(a2 + 24);
  v115 = *(a2 + 16);
  v116 = v35;
  v36 = *(a2 + 40);
  v117 = *(a2 + 32);
  v118 = v36;
  sub_220DBF2F0();
  sub_220D287C0();
  v37 = v34;
  sub_220DBE040();
  sub_220DBF300();
  v114 = v30;
  sub_220DBE040();
  sub_220DBE7B0();
  v123 = v24;
  sub_220DBE780();
  v38 = v126[2];
  v39 = v119;
  v125 = v32;
  v38(v119, v32, v8);
  v40 = v120;
  v124 = v27;
  v121 = v8;
  v38(v120, v27, v8);
  v127[0] = v37;
  v127[1] = v33;
  v42 = v115;
  v41 = v116;
  v127[2] = v115;
  v127[3] = v116;
  v44 = v117;
  v43 = v118;
  v127[4] = v117;
  v127[5] = v118;
  v45 = v37;
  v46 = v33;
  v47 = v42;
  v48 = v41;
  v49 = v44;
  v50 = v43;
  switch(sub_220DB14E4(v39, v40, v127))
  {
    case 1u:
      v62 = v108;
      sub_220DBE580();
      v63 = v111;
      sub_220DBE5D0();
      (*(v109 + 8))(v62, v110);
      LOBYTE(v62) = sub_220DBE5A0();
      (*(v112 + 8))(v63, v113);
      v51 = v121;
      v52 = v114;
      if (v62)
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_29;
    case 2u:
      v57 = v108;
      sub_220DBE580();
      v58 = v111;
      sub_220DBE5D0();
      (*(v109 + 8))(v57, v110);
      LOBYTE(v57) = sub_220DBE5A0();
      (*(v112 + 8))(v58, v113);
      v51 = v121;
      v52 = v114;
      if (v57)
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_29;
    case 3u:
      v60 = v108;
      sub_220DBE580();
      v61 = v111;
      sub_220DBE5D0();
      (*(v109 + 8))(v60, v110);
      LOBYTE(v60) = sub_220DBE5A0();
      (*(v112 + 8))(v61, v113);
      v51 = v121;
      v52 = v114;
      if (v60)
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_29;
        }
      }

LABEL_36:
      swift_once();
LABEL_29:
      sub_220DBE240();
      v53 = v122;
      goto LABEL_30;
    case 4u:
      v55 = v108;
      sub_220DBE580();
      v56 = v111;
      sub_220DBE5D0();
      (*(v109 + 8))(v55, v110);
      LOBYTE(v55) = sub_220DBE5A0();
      (*(v112 + 8))(v56, v113);
      v51 = v121;
      v52 = v114;
      if (v55)
      {
        v54 = v126;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v54 = v126;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_22;
        }
      }

      swift_once();
LABEL_22:
      sub_220DBE240();
      v53 = v122;
LABEL_23:
      v59 = v125;
LABEL_30:
      sub_220DC0210();
      v99 = v54[1];
      v99(v123, v51);
      v99(v124, v51);
      v99(v52, v51);
      v99(v59, v51);
      v100 = 0;
LABEL_31:
      v101 = sub_220DC0260();
      return __swift_storeEnumTagSinglePayload(v53, v100, 1, v101);
    case 5u:
      v64 = v121;
      v65 = v114;
      v66 = v123;
      v67 = v124;
      if (qword_27CF94F40 != -1)
      {
        swift_once();
      }

      v68 = sub_220DBF410();
      __swift_project_value_buffer(v68, qword_27CF95F48);
      v69 = v104;
      v70 = v125;
      v38(v104, v125, v64);
      v71 = v105;
      v38(v105, v65, v64);
      v38(v106, v67, v64);
      v38(v107, v66, v64);
      v72 = v65;
      v73 = sub_220DBF3F0();
      v74 = sub_220DC0980();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v127[0] = v120;
        *v75 = 136446978;
        sub_220DB1ED4(&qword_27CF96720);
        LODWORD(v119) = v74;
        v76 = sub_220DC0C70();
        v118 = v73;
        v77 = v72;
        v79 = v78;
        v80 = v126[1];
        v80(v69, v64);
        v81 = sub_220D3F210(v76, v79, v127);

        *(v75 + 4) = v81;
        v82 = v77;
        *(v75 + 12) = 2082;
        v83 = sub_220DC0C70();
        v85 = v84;
        v80(v71, v64);
        v86 = sub_220D3F210(v83, v85, v127);

        *(v75 + 14) = v86;
        *(v75 + 22) = 2082;
        v87 = v106;
        v88 = sub_220DC0C70();
        v90 = v89;
        v80(v87, v64);
        v91 = sub_220D3F210(v88, v90, v127);

        *(v75 + 24) = v91;
        *(v75 + 32) = 2082;
        v92 = v107;
        v93 = sub_220DC0C70();
        v95 = v94;
        v80(v92, v64);
        v96 = sub_220D3F210(v93, v95, v127);

        *(v75 + 34) = v96;
        v97 = v118;
        _os_log_impl(&dword_220CD1000, v118, v119, "Failed to make future day platter string for Feels Like due to unhandled case with maxApparentTemperature:%{public}s, minApparentTemperature:%{public}s, maxActualTemperature:%{public}s, minActualTemperature:%{public}s", v75, 0x2Au);
        v98 = v120;
        swift_arrayDestroy();
        MEMORY[0x223D98FB0](v98, -1, -1);
        MEMORY[0x223D98FB0](v75, -1, -1);

        v80(v123, v64);
        v80(v124, v64);
        v80(v82, v64);
        v80(v125, v64);
      }

      else
      {

        v103 = v126[1];
        v103(v107, v64);
        v103(v106, v64);
        v103(v71, v64);
        v103(v69, v64);
        v103(v66, v64);
        v103(v67, v64);
        v103(v72, v64);
        v103(v70, v64);
      }

      v100 = 1;
      v53 = v122;
      goto LABEL_31;
    default:
      v51 = v121;
      v52 = v114;
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      v53 = v122;
      v54 = v126;
      goto LABEL_23;
  }
}

uint64_t sub_220DAEED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a2;
  v71 = a1;
  v78 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v72 = &v66 - v10;
  v76 = sub_220DC0260();
  v11 = OUTLINED_FUNCTION_0(v76);
  v74 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v73 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_18_17();
  v24 = OUTLINED_FUNCTION_0(v23);
  v77 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v32 = *a3;
  v31 = *(a3 + 8);
  v33 = *(a3 + 16);
  v34 = *(a3 + 24);
  v35 = *(a3 + 32);
  v36 = *(a3 + 40);
  sub_220CEF48C(v75, v4);
  v37 = OUTLINED_FUNCTION_16_21();
  if (__swift_getEnumTagSinglePayload(v37, v38, v23) == 1)
  {
    v39 = v76;
    sub_220CE1ABC(v4, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v40 = sub_220DBF410();
    __swift_project_value_buffer(v40, qword_27CF95F48);
    v41 = sub_220DBF3F0();
    v42 = sub_220DC0980();
    if (os_log_type_enabled(v41, v42))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_14(&dword_220CD1000, v43, v44, "Failed to create platter string for Feels Like due to missing extrema values");
      OUTLINED_FUNCTION_19_14();
    }

    v45 = 1;
    v46 = v78;
  }

  else
  {
    (*(v77 + 32))(v30, v4, v23);
    v79 = v32;
    v80 = v31;
    v81 = v33;
    v82 = v34;
    v83 = v35;
    v84 = v36;
    sub_220DAF450(&v79, v18);
    v79 = v32;
    v80 = v31;
    v81 = v33;
    v82 = v34;
    v83 = v35;
    v84 = v36;
    v47 = v72;
    sub_220DAFD84(v71, &v79, v72);
    v48 = OUTLINED_FUNCTION_16_21();
    v39 = v76;
    if (__swift_getEnumTagSinglePayload(v48, v49, v76) == 1)
    {
      (*(v77 + 8))(v30, v23);
      sub_220CE1ABC(v47, &qword_27CF951F8, &qword_220DC1DA0);
      v46 = v78;
      (*(v74 + 32))(v78, v18, v39);
    }

    else
    {
      v71 = v30;
      v75 = v23;
      v50 = v18;
      v51 = v74;
      (*(v74 + 32))(v73, v47, v39);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_2_35();
      v72 = sub_220DBE240();
      v70 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v53 = sub_220DC0250();
      v66 = v53;
      v54 = *(v53 - 8);
      v67 = *(v54 + 72);
      v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v56 = swift_allocObject();
      v68 = v56;
      v69 = v50;
      *(v56 + 16) = xmmword_220DC17C0;
      v57 = v56 + v55;
      v58 = *(v51 + 16);
      v58(v56 + v55, v50, v39);
      v59 = *MEMORY[0x277D7B3C0];
      v60 = v39;
      v61 = *(v54 + 104);
      v61(v57, v59, v53);
      v62 = v67;
      v63 = v73;
      v58(v57 + v67, v73, v60);
      v61(v57 + v62, v59, v66);
      v39 = v60;
      v46 = v78;
      sub_220DC0220();
      v64 = *(v51 + 8);
      v64(v63, v60);
      v64(v69, v60);
      (*(v77 + 8))(v71, v75);
    }

    v45 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v46, v45, 1, v39);
}

uint64_t sub_220DAF450@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  v92 = a2;
  v86 = sub_220DC0300();
  v3 = *(v86 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v86);
  v6 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_220DC0A40();
  v96 = *(v85 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x28223BE20](v85);
  v9 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = *(v94 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v89 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v88 = v78 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v87 = v78 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v93 = v78 - v19;
  MEMORY[0x28223BE20](v18);
  v97 = v78 - v20;
  v21 = *a1;
  sub_220DBF2F0();
  sub_220D287C0();
  v22 = v21;
  sub_220DBE040();
  sub_220DBF300();
  sub_220DBE040();
  sub_220DC02B0();
  v23 = sub_220DBF130();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = v22;
  v80 = v26;
  sub_220DBF120();
  v27 = [v26 symbol];
  sub_220DC0620();

  LODWORD(v84) = *MEMORY[0x277D7B408];
  v28 = v3[13];
  v82 = v3 + 13;
  v83 = v28;
  v29 = v6;
  v30 = v86;
  v28(v6);
  v81 = sub_220CF6ABC();
  v31 = v85;
  v90 = sub_220DBE090();
  v91 = v32;

  v33 = v3[1];
  v78[1] = v3 + 1;
  v79 = v33;
  v34 = v30;
  v33(v29, v30);
  v35 = *(v96 + 8);
  v96 += 8;
  v78[0] = v35;
  v35(v9, v31);
  v36 = v9;
  sub_220DC02B0();
  v37 = *(v23 + 48);
  v38 = *(v23 + 52);
  swift_allocObject();
  v39 = v80;
  sub_220DBF120();
  v40 = [v39 symbol];
  sub_220DC0620();

  v41 = v95;
  v83(v29, v84, v34);
  v42 = v93;
  v84 = sub_220DBE090();
  v44 = v43;

  v45 = v94;

  v79(v29, v34);
  v46 = v42;
  (v78[0])(v36, v31);
  v47 = *(v45 + 16);
  v48 = v87;
  v47(v87, v97, v41);
  v49 = v88;
  v47(v88, v46, v41);
  v50 = v89;
  sub_220DBE130();
  sub_220DBE050();
  v52 = v51;
  v55 = *(v45 + 8);
  v54 = v45 + 8;
  v53 = v55;
  v55(v50, v41);
  v56 = round(v52);
  sub_220DBE130();
  sub_220DBE050();
  v58 = v57;
  v55(v50, v41);
  v55(v49, v41);
  v55(v48, v41);
  if (v56 == round(v58))
  {

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v59 = *(sub_220DC0250() - 8);
    v60 = *(v59 + 72);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_220DC17A0;
    v63 = (v62 + v61);
    v64 = v91;
    *v63 = v90;
    v63[1] = v64;
    v65 = *MEMORY[0x277D7B3C8];
    (*(v59 + 104))();
    sub_220DC0220();
  }

  else
  {
    v96 = v44;
    v66 = v84;
    v94 = v54;
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v89 = sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v67 = sub_220DC0250();
    v68 = *(v67 - 8);
    v69 = *(v68 + 72);
    v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_220DC17C0;
    v72 = (v71 + v70);
    v73 = v96;
    *v72 = v66;
    v72[1] = v73;
    v74 = *(v68 + 104);
    (v74)(v72, *MEMORY[0x277D7B3C8], v67);
    v75 = (v72 + v69);
    v76 = v91;
    *v75 = v90;
    v75[1] = v76;
    v74();
    sub_220DC0220();
    v46 = v93;
  }

  v53(v46, v41);
  return (v53)(v97, v41);
}

uint64_t sub_220DAFD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v121 = a1;
  v122 = a3;
  v113 = sub_220DBE5C0();
  v112 = *(v113 - 8);
  v4 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_220DBE5E0();
  v109 = *(v110 - 8);
  v6 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v126 = *(v8 - 8);
  v9 = v126[8];
  v10 = MEMORY[0x28223BE20](v8);
  v107 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v106 = &v104 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v105 = &v104 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v104 = &v104 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v120 = &v104 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v119 = &v104 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v104 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v104 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v104 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v104 - v31;
  v34 = *a2;
  v33 = *(a2 + 8);
  v35 = *(a2 + 24);
  v115 = *(a2 + 16);
  v116 = v35;
  v36 = *(a2 + 40);
  v117 = *(a2 + 32);
  v118 = v36;
  sub_220DBF2F0();
  sub_220D287C0();
  v37 = v34;
  sub_220DBE040();
  sub_220DBF300();
  v114 = v30;
  sub_220DBE040();
  sub_220DBE7B0();
  v123 = v24;
  sub_220DBE780();
  v38 = v126[2];
  v39 = v119;
  v125 = v32;
  v38(v119, v32, v8);
  v40 = v120;
  v124 = v27;
  v121 = v8;
  v38(v120, v27, v8);
  v127[0] = v37;
  v127[1] = v33;
  v42 = v115;
  v41 = v116;
  v127[2] = v115;
  v127[3] = v116;
  v44 = v117;
  v43 = v118;
  v127[4] = v117;
  v127[5] = v118;
  v45 = v37;
  v46 = v33;
  v47 = v42;
  v48 = v41;
  v49 = v44;
  v50 = v43;
  switch(sub_220DB14E4(v39, v40, v127))
  {
    case 1u:
      v62 = v108;
      sub_220DBE580();
      v63 = v111;
      sub_220DBE5D0();
      (*(v109 + 8))(v62, v110);
      LOBYTE(v62) = sub_220DBE5A0();
      (*(v112 + 8))(v63, v113);
      v51 = v121;
      v52 = v114;
      if (v62)
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_29;
    case 2u:
      v57 = v108;
      sub_220DBE580();
      v58 = v111;
      sub_220DBE5D0();
      (*(v109 + 8))(v57, v110);
      LOBYTE(v57) = sub_220DBE5A0();
      (*(v112 + 8))(v58, v113);
      v51 = v121;
      v52 = v114;
      if (v57)
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_29;
    case 3u:
      v60 = v108;
      sub_220DBE580();
      v61 = v111;
      sub_220DBE5D0();
      (*(v109 + 8))(v60, v110);
      LOBYTE(v60) = sub_220DBE5A0();
      (*(v112 + 8))(v61, v113);
      v51 = v121;
      v52 = v114;
      if (v60)
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v59 = v125;
        v54 = v126;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_29;
        }
      }

LABEL_36:
      swift_once();
LABEL_29:
      sub_220DBE240();
      v53 = v122;
      goto LABEL_30;
    case 4u:
      v55 = v108;
      sub_220DBE580();
      v56 = v111;
      sub_220DBE5D0();
      (*(v109 + 8))(v55, v110);
      LOBYTE(v55) = sub_220DBE5A0();
      (*(v112 + 8))(v56, v113);
      v51 = v121;
      v52 = v114;
      if (v55)
      {
        v54 = v126;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v54 = v126;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_22;
        }
      }

      swift_once();
LABEL_22:
      sub_220DBE240();
      v53 = v122;
LABEL_23:
      v59 = v125;
LABEL_30:
      sub_220DC0210();
      v99 = v54[1];
      v99(v123, v51);
      v99(v124, v51);
      v99(v52, v51);
      v99(v59, v51);
      v100 = 0;
LABEL_31:
      v101 = sub_220DC0260();
      return __swift_storeEnumTagSinglePayload(v53, v100, 1, v101);
    case 5u:
      v64 = v121;
      v65 = v114;
      v66 = v123;
      v67 = v124;
      if (qword_27CF94F40 != -1)
      {
        swift_once();
      }

      v68 = sub_220DBF410();
      __swift_project_value_buffer(v68, qword_27CF95F48);
      v69 = v104;
      v70 = v125;
      v38(v104, v125, v64);
      v71 = v105;
      v38(v105, v65, v64);
      v38(v106, v67, v64);
      v38(v107, v66, v64);
      v72 = v65;
      v73 = sub_220DBF3F0();
      v74 = sub_220DC0980();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v127[0] = v120;
        *v75 = 136446978;
        sub_220DB1ED4(&qword_27CF96720);
        LODWORD(v119) = v74;
        v76 = sub_220DC0C70();
        v118 = v73;
        v77 = v72;
        v79 = v78;
        v80 = v126[1];
        v80(v69, v64);
        v81 = sub_220D3F210(v76, v79, v127);

        *(v75 + 4) = v81;
        v82 = v77;
        *(v75 + 12) = 2082;
        v83 = sub_220DC0C70();
        v85 = v84;
        v80(v71, v64);
        v86 = sub_220D3F210(v83, v85, v127);

        *(v75 + 14) = v86;
        *(v75 + 22) = 2082;
        v87 = v106;
        v88 = sub_220DC0C70();
        v90 = v89;
        v80(v87, v64);
        v91 = sub_220D3F210(v88, v90, v127);

        *(v75 + 24) = v91;
        *(v75 + 32) = 2082;
        v92 = v107;
        v93 = sub_220DC0C70();
        v95 = v94;
        v80(v92, v64);
        v96 = sub_220D3F210(v93, v95, v127);

        *(v75 + 34) = v96;
        v97 = v118;
        _os_log_impl(&dword_220CD1000, v118, v119, "Failed to make yesterday platter string for Feels Like due to unhandled case with maxApparentTemperature:%{public}s, minApparentTemperature:%{public}s, maxActualTemperature:%{public}s, minActualTemperature:%{public}s", v75, 0x2Au);
        v98 = v120;
        swift_arrayDestroy();
        MEMORY[0x223D98FB0](v98, -1, -1);
        MEMORY[0x223D98FB0](v75, -1, -1);

        v80(v123, v64);
        v80(v124, v64);
        v80(v82, v64);
        v80(v125, v64);
      }

      else
      {

        v103 = v126[1];
        v103(v107, v64);
        v103(v106, v64);
        v103(v71, v64);
        v103(v69, v64);
        v103(v66, v64);
        v103(v67, v64);
        v103(v72, v64);
        v103(v70, v64);
      }

      v100 = 1;
      v53 = v122;
      goto LABEL_31;
    default:
      v51 = v121;
      v52 = v114;
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      v53 = v122;
      v54 = v126;
      goto LABEL_23;
  }
}

uint64_t sub_220DB0CEC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = sub_220DC0300();
  v4 = OUTLINED_FUNCTION_0(v3);
  v111 = v5;
  v112 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v109 = v9 - v8;
  v110 = sub_220DC0A40();
  v10 = OUTLINED_FUNCTION_0(v110);
  v108 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v116 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  v115 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v23);
  v114 = (&v107 - v24);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v25);
  v120 = &v107 - v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v27);
  v119 = &v107 - v28;
  OUTLINED_FUNCTION_23();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v107 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v107 - v33;
  v36 = *a1;
  v35 = *(a1 + 8);
  v37 = *(a1 + 16);
  v38 = *(a1 + 24);
  v39 = *(a1 + 40);
  v117 = *(a1 + 32);
  v118 = v39;
  sub_220DBE9D0();
  sub_220DBE9B0();
  v121 = v19;
  v40 = *(v19 + 16);
  v41 = v119;
  v125 = v34;
  v40(v119, v34, v16);
  v42 = v120;
  v124 = v32;
  v122 = v16;
  v113 = v40;
  v40(v120, v32, v16);
  v126[0] = v36;
  v126[1] = v35;
  v126[2] = v37;
  v126[3] = v38;
  v44 = v117;
  v43 = v118;
  v126[4] = v117;
  v126[5] = v118;
  v45 = v36;
  v46 = v35;
  v47 = v37;
  v48 = v38;
  v49 = v44;
  v50 = v43;
  v51 = sub_220DB14E4(v41, v42, v126);
  if (v51 == 5)
  {
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v52 = sub_220DBF410();
    __swift_project_value_buffer(v52, qword_27CF95F48);
    v53 = v113;
    v54 = v114;
    v55 = v122;
    v113(v114, v125, v122);
    v56 = v115;
    v57 = v124;
    v53(v115, v124, v55);
    v58 = sub_220DBF3F0();
    v59 = sub_220DC0980();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v126[0] = v120;
      *v60 = 136446466;
      sub_220DB1ED4(&qword_27CF96720);
      v61 = sub_220DC0C70();
      v63 = v62;
      v64 = *(v121 + 8);
      v64(v54, v55);
      v65 = sub_220D3F210(v61, v63, v126);
      LODWORD(v121) = v59;
      v66 = v65;

      *(v60 + 4) = v66;
      *(v60 + 12) = 2082;
      v67 = sub_220DC0C70();
      v69 = v68;
      v70 = OUTLINED_FUNCTION_37();
      (v64)(v70);
      v71 = sub_220D3F210(v67, v69, v126);

      *(v60 + 14) = v71;
      _os_log_impl(&dword_220CD1000, v58, v121, "Failed to make today Feels Like sentence due to unhandled case with apparentTemperature:%{public}s, actualTemperature:%{public}s", v60, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_14();
      OUTLINED_FUNCTION_19_14();

      v64(v124, v55);
      v64(v125, v55);
    }

    else
    {

      v100 = *(v121 + 8);
      v100(v56, v55);
      v101 = OUTLINED_FUNCTION_37();
      (v100)(v101);
      v100(v57, v55);
      v102 = OUTLINED_FUNCTION_36();
      (v100)(v102);
    }

    goto LABEL_10;
  }

  v72 = sub_220DB18B8(v51);
  if (!v73)
  {
    v103 = v122;
    v104 = *(v121 + 8);
    v104(v124, v122);
    v104(v125, v103);
LABEL_10:
    v99 = 1;
    v96 = v123;
    goto LABEL_11;
  }

  v119 = v73;
  v120 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
  v74 = sub_220DC0250();
  v75 = OUTLINED_FUNCTION_0(v74);
  v117 = v76;
  v118 = v75;
  v78 = *(v77 + 72);
  v79 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_220DC17A0;
  v114 = (v80 + v79);
  v115 = v80;
  sub_220DC02B0();
  v81 = sub_220DBF130();
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  swift_allocObject();
  v84 = v45;
  sub_220DBF120();
  v85 = [v84 symbol];
  sub_220DC0620();

  v87 = v111;
  v86 = v112;
  v88 = v109;
  (*(v111 + 104))(v109, *MEMORY[0x277D7B408], v112);
  sub_220CF6ABC();
  v89 = v122;
  v90 = v110;
  v91 = sub_220DBE090();
  v93 = v92;

  (*(v87 + 8))(v88, v86);
  (*(v108 + 8))(v116, v90);
  v94 = v114;
  *v114 = v91;
  v94[1] = v93;
  v95 = *MEMORY[0x277D7B3C8];
  (*(v117 + 104))();
  v96 = v123;
  sub_220DC0220();
  v97 = *(v121 + 8);
  v97(v124, v89);
  v98 = OUTLINED_FUNCTION_37();
  (v97)(v98);
  v99 = 0;
LABEL_11:
  v105 = sub_220DC0260();
  return __swift_storeEnumTagSinglePayload(v96, v99, 1, v105);
}

uint64_t sub_220DB14E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v12 = *a3;
  v13 = *(a3 + 24);
  v39 = *(a3 + 16);
  v40 = *(a3 + 8);
  v14 = *(a3 + 32);
  v15 = *(a3 + 40);
  v41 = a1;
  sub_220DBE130();
  sub_220DBE050();
  v17 = v16;
  v18 = *(v8 + 8);
  v19 = OUTLINED_FUNCTION_37();
  v18(v19);
  v20 = round(v17);
  sub_220DBE130();

  sub_220DBE050();
  v22 = v21;
  v23 = OUTLINED_FUNCTION_37();
  v18(v23);
  if (v20 == round(v22))
  {
    (v18)(a2, v6);
    (v18)(v41, v6);
    return 0;
  }

  sub_220DB1ED4(&qword_27CF96728);
  v25 = OUTLINED_FUNCTION_9_25();
  if ((v25 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (qword_27CF94F68 != -1)
  {
    v25 = OUTLINED_FUNCTION_7_25();
  }

  OUTLINED_FUNCTION_20_9(v25, qword_27CF966F0);
  if ((OUTLINED_FUNCTION_9_25() & 1) == 0)
  {
    v33 = OUTLINED_FUNCTION_36();
    v18(v33);
    v34 = OUTLINED_FUNCTION_27_0();
    v18(v34);
    return 1;
  }

  else
  {
LABEL_27:
    if (OUTLINED_FUNCTION_9_25())
    {
      if (qword_27CF94F68 != -1)
      {
        OUTLINED_FUNCTION_7_25();
      }

      __swift_project_value_buffer(v6, qword_27CF966F0);
      sub_220D287C0();
      if (sub_220DBE010())
      {
        v26 = OUTLINED_FUNCTION_36();
        v18(v26);
        v27 = OUTLINED_FUNCTION_27_0();
        v18(v27);
        return 2;
      }
    }

    sub_220D287C0();
    v28 = OUTLINED_FUNCTION_14_20();
    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_27CF94F70 != -1)
    {
      v28 = OUTLINED_FUNCTION_6_26();
    }

    OUTLINED_FUNCTION_20_9(v28, qword_27CF96708);
    if ((OUTLINED_FUNCTION_9_25() & 1) == 0)
    {
      v37 = OUTLINED_FUNCTION_36();
      v18(v37);
      v38 = OUTLINED_FUNCTION_27_0();
      v18(v38);
      return 3;
    }

    else
    {
LABEL_16:
      v29 = OUTLINED_FUNCTION_14_20();
      if (v29)
      {
        if (qword_27CF94F70 != -1)
        {
          v29 = OUTLINED_FUNCTION_6_26();
        }

        OUTLINED_FUNCTION_20_9(v29, qword_27CF96708);
        v30 = OUTLINED_FUNCTION_14_20();
        v31 = OUTLINED_FUNCTION_36();
        v18(v31);
        v32 = OUTLINED_FUNCTION_27_0();
        v18(v32);
        if (v30)
        {
          return 4;
        }
      }

      else
      {
        v35 = OUTLINED_FUNCTION_36();
        v18(v35);
        v36 = OUTLINED_FUNCTION_27_0();
        v18(v36);
      }

      return 5;
    }
  }
}

uint64_t sub_220DB18B8(unsigned __int8 a1)
{
  v2 = sub_220DBE5C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220DBE5E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a1;
  switch(a1)
  {
    case 1u:
      sub_220DBE580();
      sub_220DBE5D0();
      (*(v8 + 8))(v11, v7);
      v13 = sub_220DBE5A0();
      (*(v3 + 8))(v6, v2);
      v14 = qword_280FA6600;
      if (v13)
      {
        goto LABEL_9;
      }

      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      return sub_220DBE240();
    case 2u:
      sub_220DBE580();
      sub_220DBE5D0();
      (*(v8 + 8))(v11, v7);
      v17 = sub_220DBE5A0();
      (*(v3 + 8))(v6, v2);
      v14 = qword_280FA6600;
      if (v17)
      {
LABEL_9:
        if (v14 != -1)
        {
          goto LABEL_18;
        }
      }

      else if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      return sub_220DBE240();
    case 3u:
      sub_220DBE580();
      sub_220DBE5D0();
      (*(v8 + 8))(v11, v7);
      v18 = sub_220DBE5A0();
      (*(v3 + 8))(v6, v2);
      v16 = qword_280FA6600;
      if (v18)
      {
        goto LABEL_12;
      }

      if (qword_280FA6600 == -1)
      {
        return sub_220DBE240();
      }

      goto LABEL_18;
    case 4u:
      sub_220DBE580();
      sub_220DBE5D0();
      (*(v8 + 8))(v11, v7);
      v15 = sub_220DBE5A0();
      (*(v3 + 8))(v6, v2);
      v16 = qword_280FA6600;
      if (v15)
      {
LABEL_12:
        if (v16 == -1)
        {
          return sub_220DBE240();
        }
      }

      else if (qword_280FA6600 == -1)
      {
        return sub_220DBE240();
      }

LABEL_18:
      swift_once();
      return sub_220DBE240();
    default:
      return result;
  }
}

uint64_t sub_220DB1E38(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  v4 = [objc_opt_self() fahrenheit];
  sub_220D287C0();
  return sub_220DBE040();
}

uint64_t sub_220DB1ED4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF94FA0, &unk_220DC17F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ChartPastDataTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

unint64_t sub_220DB1FBC()
{
  result = qword_27CF96730;
  if (!qword_27CF96730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96730);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChartPastDataTreatment(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t SunriseSunsetDetailChartContentStyle.TwilightSunColors.init(twilightCivil:twilightNautical:twilightAstronomical:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static SunriseSunsetDetailChartContentStyle.TwilightSunColors.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((sub_220DBFE90() & 1) == 0 || (sub_220DBFE90() & 1) == 0)
  {
    return 0;
  }

  return sub_220DBFE90();
}

uint64_t sub_220DB2194()
{
  v0 = sub_220DBFE80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95290, &qword_220DC2180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220DC5A40;
  v6 = *MEMORY[0x277CE0EE0];
  v7 = *(v1 + 104);
  v7(v4, v6, v0);
  sub_220DBFF30();
  *(v5 + 32) = sub_220DC00F0();
  *(v5 + 40) = v8;
  v7(v4, v6, v0);
  sub_220DBFF30();
  *(v5 + 48) = sub_220DC00F0();
  *(v5 + 56) = v9;
  v7(v4, v6, v0);
  sub_220DBFF30();
  *(v5 + 64) = sub_220DC00F0();
  *(v5 + 72) = v10;
  v7(v4, v6, v0);
  sub_220DBFF30();
  *(v5 + 80) = sub_220DC00F0();
  *(v5 + 88) = v11;
  v7(v4, v6, v0);
  sub_220DBFF30();
  *(v5 + 96) = sub_220DC00F0();
  *(v5 + 104) = v12;
  result = sub_220DC0100();
  qword_27CF96738 = result;
  return result;
}

uint64_t sub_220DB23EC()
{
  v0 = sub_220DBFE80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95290, &qword_220DC2180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220DC5A40;
  v6 = *MEMORY[0x277CE0EE0];
  v7 = *(v1 + 104);
  v7(v4, v6, v0);
  sub_220DBFF30();
  *(v5 + 32) = sub_220DC00F0();
  *(v5 + 40) = v8;
  v7(v4, v6, v0);
  sub_220DBFF30();
  *(v5 + 48) = sub_220DC00F0();
  *(v5 + 56) = v9;
  v7(v4, v6, v0);
  sub_220DBFF30();
  *(v5 + 64) = sub_220DC00F0();
  *(v5 + 72) = v10;
  v7(v4, v6, v0);
  sub_220DBFF30();
  *(v5 + 80) = sub_220DC00F0();
  *(v5 + 88) = v11;
  v7(v4, v6, v0);
  sub_220DBFF30();
  *(v5 + 96) = sub_220DC00F0();
  *(v5 + 104) = v12;
  result = sub_220DC0100();
  qword_27CF96740 = result;
  return result;
}

uint64_t sub_220DB2630(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t SunriseSunsetDetailChartContentStyle.horizonLineShadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = *(v1 + 64);
  *(a1 + 24) = v2;
}

uint64_t SunriseSunsetDetailChartContentStyle.twilightSunColors.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

__n128 SunriseSunsetDetailChartContentStyle.init(nightLineGradient:dayLineGradient:daySunImage:nightSunImage:dayNightLineWidth:horizonLineWidth:horizonLineColor:horizonLineShadow:sunImageWidth:nightSunColor:nightSunSymbolSize:twilightSunColors:twilightSunSymbolSize:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v14 = *a6;
  v15 = a6[3];
  v16 = a8[1].n128_u64[0];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a10;
  *(a9 + 40) = a11;
  *(a9 + 48) = a5;
  *(a9 + 56) = v14;
  *(a9 + 64) = *(a6 + 1);
  *(a9 + 80) = v15;
  *(a9 + 88) = a12;
  *(a9 + 96) = a7;
  *(a9 + 104) = a13;
  result = *a8;
  *(a9 + 112) = *a8;
  *(a9 + 128) = v16;
  *(a9 + 136) = a14;
  return result;
}

uint64_t static SunriseSunsetDetailChartContentStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v33 = *(a1 + 96);
  v9 = *(a1 + 104);
  v29 = *(a1 + 112);
  v26 = *(a1 + 128);
  v27 = *(a1 + 120);
  v10 = *(a1 + 136);
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v36 = *(a1 + 64);
  v37 = *(a1 + 80);
  v34 = *(a2 + 64);
  v35 = *(a2 + 80);
  v18 = *(a2 + 104);
  v31 = *(a2 + 112);
  v32 = *(a2 + 96);
  v30 = *(a2 + 120);
  v28 = *(a2 + 128);
  v19 = *(a2 + 136);
  if ((MEMORY[0x223D97D10](*a1, *a2) & 1) == 0 || (MEMORY[0x223D97D10](v2, v11) & 1) == 0 || (sub_220DBFFD0() & 1) == 0)
  {
    return 0;
  }

  v20 = sub_220DBFFD0();
  result = 0;
  if ((v20 & 1) != 0 && v5 == v14 && v6 == v15)
  {
    if (sub_220DBFE90())
    {

      v23 = sub_220DBFE90();

      result = 0;
      if ((v23 & 1) == 0)
      {
        return result;
      }

      if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v36, v34), vceqq_f64(v37, v35)), xmmword_220DC82A0)) & 0xF) != 0)
      {
        return result;
      }

      v24 = sub_220DBFE90();
      result = 0;
      if ((v24 & 1) == 0 || v9 != v18)
      {
        return result;
      }

      if (sub_220DBFE90() & 1) != 0 && (sub_220DBFE90())
      {
        v25 = sub_220DBFE90();

        return v25 & (v10 == v19);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_220DB2A3C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_220DB2A7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 ChartLineMark.init(chartData:dateExtrema:xAxisRange:yAxisRange:lineStyle:colorSchemeContrast:shadow:useSecondValue:showAccessibilityLabels:)@<Q0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X5>, char a5@<W6>, char a6@<W7>, char *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v15 = *a4;
  v26 = *(a4 + 1);
  v16 = a4[3];
  *a7 = a1;
  memcpy(a7 + 8, a2, 0x59uLL);
  v17 = type metadata accessor for ChartLineMark(0);
  v18 = &a7[v17[7]];
  *v18 = a8;
  v18[1] = a9;
  v19 = v17[6];
  sub_220DB3920();
  v20 = v17[8];
  sub_220DB3870();
  v21 = v17[11];
  v22 = sub_220DBFA30();
  OUTLINED_FUNCTION_0_2(v22);
  (*(v23 + 32))(&a7[v21], a3);
  v24 = &a7[v17[12]];
  *v24 = v15;
  result = v26;
  *(v24 + 8) = v26;
  *(v24 + 3) = v16;
  a7[v17[9]] = a5;
  a7[v17[10]] = a6;
  return result;
}

uint64_t ChartLineMark.body.getter@<X0>(uint64_t a1@<X8>)
{
  v181 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96748, &qword_220DC8458);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v178 = &v162 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96750, &unk_220DC8460);
  v10 = OUTLINED_FUNCTION_18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v176 = &v162 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E80, &qword_220DC59A0);
  v15 = OUTLINED_FUNCTION_18(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9();
  v175 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v162 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v162 - v23;
  v25 = type metadata accessor for StyledLineMark(0);
  v26 = OUTLINED_FUNCTION_6(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9();
  v179 = v29;
  MEMORY[0x28223BE20](v30);
  v32 = (&v162 - v31);
  v183 = sub_220DBE560();
  v33 = OUTLINED_FUNCTION_0(v183);
  v182.n128_u64[0] = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9();
  v177 = v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v162 - v39;
  v41 = type metadata accessor for ChartLineStrokeStyle(0);
  v42 = OUTLINED_FUNCTION_6(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = &v162 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ChartLineMark(0);
  v180.n128_u64[0] = v1 + v47[8];
  sub_220DB381C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v136 = *v1;
      OUTLINED_FUNCTION_15_16();
      v137 = v47[6];
      v138 = v25[6];
      v139 = v179;
      v140 = v180.n128_u64[0];
      sub_220CFF7DC();
      OUTLINED_FUNCTION_7_26();
      v142 = *(v1 + v141);
      OUTLINED_FUNCTION_0_27();
      sub_220DB381C();
      v143 = *(v140 + *(type metadata accessor for ChartLineStyle(0) + 20));

      OUTLINED_FUNCTION_4_26();
      sub_220DBF720();
      v144 = v47[11];
      LOBYTE(v140) = *(v1 + v47[10]);
      v145 = v25[15];
      v146 = sub_220DBFA30();
      OUTLINED_FUNCTION_0_2(v146);
      (*(v147 + 16))(&v139[v145], v1 + v144);
      v182 = OUTLINED_FUNCTION_22_13();
      v149 = *(v148 + 24);
      v150 = OUTLINED_FUNCTION_9_26(v25[12]);
      v151 = v183;
      __swift_storeEnumTagSinglePayload(v150, v152, v153, v183);
      v154 = OUTLINED_FUNCTION_9_26(v25[13]);
      __swift_storeEnumTagSinglePayload(v154, v155, v156, v151);
      *v139 = v136;
      memcpy(v139 + 8, v185, 0x59uLL);
      OUTLINED_FUNCTION_5_32();
      OUTLINED_FUNCTION_12_25(v157);
      v139[v158] = v142;
      OUTLINED_FUNCTION_10_24();
      v139[v159] = v140;
      OUTLINED_FUNCTION_13_16();
      OUTLINED_FUNCTION_2_36(v160, v182);
      sub_220DB3870();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96758, &qword_220DC8470);
      swift_storeEnumTagMultiPayload();
    }

    v49 = v182.n128_u64[0];
    v50 = v177;
    v51 = v46;
    v52 = v183;
    (*(v182.n128_u64[0] + 32))(v177, v51, v183);
    v53 = v1 + v47[6];
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0) + 36);
    if (sub_220DBE440())
    {
      v176 = *v1;
      OUTLINED_FUNCTION_15_16();
      v55 = v25[6];
      v56 = v179;
      v57 = v180.n128_u64[0];
      sub_220CFF7DC();
      OUTLINED_FUNCTION_7_26();
      LODWORD(v174) = *(v1 + v58);
      OUTLINED_FUNCTION_0_27();
      sub_220DB381C();
      v59 = *(v57 + *(type metadata accessor for ChartLineStyle(0) + 20));

      OUTLINED_FUNCTION_4_26();
      sub_220DBF720();
      v60 = v47[11];
      v180.n128_u32[0] = *(v1 + v47[10]);
      v61 = v49;
      v62 = v25[15];
      v63 = sub_220DBFA30();
      OUTLINED_FUNCTION_0_2(v63);
      (*(v64 + 16))(&v56[v62], v1 + v60);
      v173 = OUTLINED_FUNCTION_22_13();
      v66 = *(v65 + 24);
      (*(v61 + 16))(&v56[v25[12]], v50, v52);
      OUTLINED_FUNCTION_7();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v52);
      v70 = OUTLINED_FUNCTION_9_26(v25[13]);
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v52);
      v73 = *(v61 + 8);

      v73(v50, v52);
      *v56 = v176;
      memcpy(v56 + 8, v185, 0x59uLL);
      OUTLINED_FUNCTION_5_32();
      OUTLINED_FUNCTION_12_25(v74);
      v56[v75] = v174;
      OUTLINED_FUNCTION_10_24();
      v56[v76] = v180.n128_u8[0];
      OUTLINED_FUNCTION_13_16();
      OUTLINED_FUNCTION_2_36(v77, v173);
      v78 = v175;
      sub_220DB3870();
      v79 = v78;
      v80 = 0;
    }

    else
    {
      (*(v49 + 8))(v50, v52);
      v79 = v175;
      v80 = 1;
    }

    __swift_storeEnumTagSinglePayload(v79, v80, 1, v25);
    sub_220DB3920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96760, &qword_220DC8478);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v172 = v40;
    v173.n128_u64[0] = v24;
    v174 = v22;
    v81 = v183;
    (*(v182.n128_u64[0] + 32))(v40, v46, v183);
    v177 = *v1;
    OUTLINED_FUNCTION_15_16();
    v171 = v1 + v47[6];
    v82 = v25[6];
    sub_220CFF7DC();
    OUTLINED_FUNCTION_7_26();
    LODWORD(v175) = *(v1 + v83);
    OUTLINED_FUNCTION_0_27();
    v84 = v180.n128_u64[0];
    sub_220DB381C();
    v85 = type metadata accessor for ChartLineStyle(0);
    v86 = *(v84 + *(v85 + 20));
    v87 = *(v84 + *(v85 + 28));

    OUTLINED_FUNCTION_4_26();
    sub_220DBF720();
    v88 = v47[11];
    v89 = *(v1 + v47[10]);
    v90 = v25[15];
    v91 = sub_220DBFA30();
    OUTLINED_FUNCTION_0_2(v91);
    v93 = *(v92 + 16);
    v167 = v94;
    v168 = v88;
    v165 = v92 + 16;
    v166 = v93;
    (v93)(v32 + v90, v1 + v88);
    v95 = v1 + v47[12];
    v96 = *v95;
    v170 = *(v95 + 8);
    v97 = *(v95 + 3);
    __swift_storeEnumTagSinglePayload(v32 + v25[12], 1, 1, v81);
    v98 = v32 + v25[13];
    v99 = v172;
    v163 = *(v182.n128_u64[0] + 16);
    v164 = v182.n128_u64[0] + 16;
    v163(v98, v172, v81);
    OUTLINED_FUNCTION_7();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v81);
    *v32 = v177;
    memcpy(v32 + 1, v185, 0x59uLL);
    v103 = (v32 + v25[7]);
    *v103 = v2;
    v103[1] = v3;
    OUTLINED_FUNCTION_12_25((v32 + v25[8]));
    *(v32 + v104) = v175;
    v105 = v32 + v25[11];
    v106 = v187;
    *v105 = v186;
    *(v105 + 1) = v106;
    *(v105 + 4) = v188;
    v107 = v25[14];
    v169 = v89;
    *(v32 + v107) = v89;
    v108 = v32 + v25[16];
    *v108 = v96;
    *(v108 + 8) = v170;
    *(v108 + 3) = v97;
    v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0) + 36);

    v110 = v99;
    if (sub_220DBE440())
    {
      memcpy(v184, v1 + 1, 0x59uLL);
      v111 = v25[6];
      v112 = v179;
      sub_220CFF7DC();
      OUTLINED_FUNCTION_0_27();
      sub_220DB381C();
      v113 = v177;

      OUTLINED_FUNCTION_4_26();
      sub_220DBF720();
      v166(&v112[v25[15]], v1 + v168, v167);
      v114 = *v95;
      v180 = *(v95 + 8);
      v115 = *(v95 + 3);
      v116 = v110;
      v117 = v110;
      v118 = v183;
      v163(&v112[v25[12]], v116, v183);
      OUTLINED_FUNCTION_7();
      __swift_storeEnumTagSinglePayload(v119, v120, v121, v118);
      v122 = OUTLINED_FUNCTION_9_26(v25[13]);
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v118);
      *v112 = v113;
      memcpy(v112 + 8, v184, 0x59uLL);
      OUTLINED_FUNCTION_5_32();
      *v125 = 0x694C646568736144;
      v125[1] = 0xEA0000000000656ELL;
      v112[v25[9]] = v175;
      v126 = &v112[v25[11]];
      v127 = v190;
      *v126 = v189;
      *(v126 + 1) = v127;
      *(v126 + 4) = v191;
      v112[v25[14]] = v169;
      OUTLINED_FUNCTION_13_16();
      OUTLINED_FUNCTION_2_36(v128, v180);
      v129 = v173.n128_u64[0];
      sub_220DB3870();
      OUTLINED_FUNCTION_7();
      __swift_storeEnumTagSinglePayload(v130, v131, v132, v25);

      v133 = v118;
      v134 = v176;
      v110 = v117;
      v135 = v174;
    }

    else
    {
      v129 = v173.n128_u64[0];
      __swift_storeEnumTagSinglePayload(v173.n128_i64[0], 1, 1, v25);
      v133 = v183;
      v134 = v176;
      v135 = v174;
      v112 = v179;
    }

    sub_220DB381C();
    v184[0] = v112;
    sub_220CFF7DC();
    v184[1] = v135;
    sub_220D7749C(v184, v134);
    sub_220CDA548(v129, &qword_27CF95E80, &qword_220DC59A0);
    sub_220DB38C4(v32);
    (*(v182.n128_u64[0] + 8))(v110, v133);
    sub_220CDA548(v135, &qword_27CF95E80, &qword_220DC59A0);
    sub_220DB38C4(v112);
    sub_220DB3920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96760, &qword_220DC8478);
    OUTLINED_FUNCTION_16_22();
    swift_storeEnumTagMultiPayload();
  }

  sub_220DB3920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96758, &qword_220DC8470);
  OUTLINED_FUNCTION_16_22();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_220DB381C()
{
  OUTLINED_FUNCTION_6_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  return v0;
}

uint64_t sub_220DB3870()
{
  OUTLINED_FUNCTION_6_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  return v0;
}

uint64_t sub_220DB38C4(uint64_t a1)
{
  v2 = type metadata accessor for StyledLineMark(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220DB3920()
{
  OUTLINED_FUNCTION_6_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_2(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_20();
  v7(v6);
  return v0;
}

void sub_220DB39BC()
{
  sub_220CD6118(319, &qword_280FA6638, type metadata accessor for DetailChartDataElement, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_220D8B1D4();
    if (v1 <= 0x3F)
    {
      sub_220D8B2B0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ChartLineStyle(319);
        if (v3 <= 0x3F)
        {
          sub_220DBFA30();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_220DB3AD8()
{
  result = qword_27CF96778;
  if (!qword_27CF96778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96780, &unk_220DC8500);
    sub_220DB3B94();
    sub_220DB3CE4(&qword_27CF95E78, type metadata accessor for StyledLineMark);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96778);
  }

  return result;
}

unint64_t sub_220DB3B94()
{
  result = qword_27CF96788;
  if (!qword_27CF96788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96748, &qword_220DC8458);
    sub_220DB3C20();
    sub_220D7A988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96788);
  }

  return result;
}

unint64_t sub_220DB3C20()
{
  result = qword_27CF96790;
  if (!qword_27CF96790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96750, &unk_220DC8460);
    sub_220DB3CE4(&qword_27CF95E78, type metadata accessor for StyledLineMark);
    sub_220D7A988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96790);
  }

  return result;
}

uint64_t sub_220DB3CE4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_16_22();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220DB3D50()
{
  sub_220CD6118(319, &qword_280FA6638, type metadata accessor for DetailChartDataElement, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_220D8B1D4();
    if (v1 <= 0x3F)
    {
      sub_220D8B2B0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ChartLineStyle(319);
        if (v3 <= 0x3F)
        {
          sub_220CD6118(319, &qword_27CF967A8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_220DBFA30();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220DB3EE8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StyledLineMark(0) + 40);
  v4 = v3 + *(type metadata accessor for ChartLineStyle(0) + 24);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (*(v4 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96800, &qword_220DC8628);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_220DC17A0;
    *(v8 + 32) = v6;
    sub_220D1EC60(*&v6, v5, v7, 1);

    MEMORY[0x223D97D40](v8);
    sub_220DC0190();
    sub_220DC0180();
    sub_220DBF7B0();
    v9 = v14;
    result = sub_220D1ECD8(*&v6, v5, v7, 1);
  }

  else
  {
    v13[0] = *v4;
    *&v13[1] = v5;
    *&v13[2] = v7;
    result = sub_220DB4030(v13, &v14);
    v9 = v14;
  }

  v12 = v15;
  v11 = v16;
  *a1 = v9;
  *(a1 + 24) = v11;
  *(a1 + 8) = v12;
  return result;
}

uint64_t sub_220DB4030@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  result = type metadata accessor for StyledLineMark(0);
  if (v2[*(result + 36)] == 1)
  {
    if (v2[48] == 1)
    {
      v8 = *(result + 28);
    }

    else
    {
      v8 = 40;
    }

    v10 = *&v2[v8];
    if ((v2[64] & 1) == 0)
    {
      v11 = (v2 + 56);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v2[16] == 1)
  {
    v9 = *(result + 28);
  }

  else
  {
    v9 = 8;
  }

  v10 = *&v2[v9];
  if (v2[32])
  {
LABEL_11:
    v11 = &v2[*(result + 28) + 8];
    goto LABEL_13;
  }

  v11 = (v2 + 24);
LABEL_13:
  v12 = *v11;
  if (*v11 <= v10 + 0.01)
  {
    v12 = v10 + 0.01;
  }

  if (v5 > v6 || v10 > v12)
  {
    __break(1u);
  }

  else
  {
    if (v5 >= v6)
    {
    }

    else
    {
      sub_220DC00D0();
    }

    sub_220DC0190();
    sub_220DC0180();
    result = sub_220DBF7B0();
    *a2 = v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = v16;
  }

  return result;
}

uint64_t sub_220DB4188@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = type metadata accessor for StyledLineMark(0);
  v63 = *(v3 - 8);
  v62 = *(v63 + 64);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967B0, &qword_220DC8580);
  v71 = *(v70 - 8);
  v6 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  v66 = &v57 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967B8, &qword_220DC8588);
  v73 = *(v72 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  v67 = &v57 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967C0, &qword_220DC8590);
  v75 = *(v74 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  v68 = &v57 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967C8, &unk_220DC8598);
  v77 = *(v76 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  v69 = &v57 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED8, &unk_220DC5A10);
  v80 = *(v79 - 8);
  v14 = *(v80 + 64);
  v15 = MEMORY[0x28223BE20](v79);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  sub_220DBFA00();
  v64 = v4;
  v18 = (v1 + *(v4 + 40));
  v19 = v18[1];
  v20 = *(v1 + *(v4 + 44));
  *&v89 = *v18;
  *(&v89 + 1) = v19;

  if (v20)
  {
    v21 = 0x646E6F636553;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = 0xE600000000000000;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  MEMORY[0x223D982B0](v21, v22);

  v65 = v17;
  sub_220DBF5A0();

  v60 = v2;
  *&v87[0] = *v2;
  KeyPath = swift_getKeyPath();
  sub_220DB381C();
  v23 = v80;
  v24 = v58;
  v25 = v79;
  (*(v80 + 16))(v58, v17, v79);
  v26 = v23;
  v27 = (v62 + *(v23 + 80) + ((*(v63 + 80) + 16) & ~*(v63 + 80))) & ~*(v23 + 80);
  v28 = swift_allocObject();
  sub_220DB3870();
  (*(v26 + 32))(v28 + v27, v24, v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EE0, &qword_220DC85D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967D0, &qword_220DC85D8);
  sub_220DB5B0C(&qword_27CF95EE8, &qword_27CF95EE0, &qword_220DC85D0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967D8, &qword_220DC85E0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967E0, &qword_220DC85E8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967E8, &unk_220DC85F0);
  v32 = sub_220DB5B0C(&qword_27CF967F0, &qword_27CF967E8, &unk_220DC85F0);
  v33 = sub_220CEFF14();
  *&v89 = v31;
  v34 = MEMORY[0x277D837D0];
  *(&v89 + 1) = MEMORY[0x277D837D0];
  *&v90 = v32;
  *(&v90 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v89 = v30;
  *(&v89 + 1) = v34;
  *&v90 = OpaqueTypeConformance2;
  *(&v90 + 1) = v33;
  v36 = swift_getOpaqueTypeConformance2();
  *&v89 = v29;
  *(&v89 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v66;
  sub_220DC0090();
  v38 = v64;
  v39 = v60;
  v40 = v60 + *(v64 + 52);
  v41 = *(v40 + 1);
  v89 = *v40;
  v90 = v41;
  v91 = *(v40 + 4);
  v42 = sub_220DB5B50();
  v43 = v67;
  v44 = v70;
  sub_220DBF560();
  (*(v71 + 8))(v37, v44);
  v45 = v39;
  sub_220DB3EE8(v87);
  v84 = v87[0];
  v85 = v87[1];
  v86 = v88;
  v82 = v44;
  v83 = v42;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = MEMORY[0x277CDF838];
  v48 = MEMORY[0x277CDF828];
  v49 = v68;
  v50 = v72;
  sub_220DBF4A0();
  sub_220D7AE00(v87);
  (*(v73 + 8))(v43, v50);
  v51 = v45 + *(v38 + 48);
  ChartLineStyle.opacity(for:)(v45 + *(v38 + 68));
  *&v84 = v50;
  *(&v84 + 1) = v47;
  *&v85 = v46;
  *(&v85 + 1) = v48;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v69;
  v54 = v74;
  sub_220DBF550();
  (*(v75 + 8))(v49, v54);
  v81 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96050, &qword_220DC6030);
  *&v84 = v54;
  *(&v84 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  *&v84 = sub_220DBF590();
  *(&v84 + 1) = MEMORY[0x277CBB2F8];
  swift_getOpaqueTypeConformance2();
  v55 = v76;
  sub_220DBF500();
  (*(v77 + 8))(v53, v55);
  return (*(v80 + 8))(v65, v79);
}

uint64_t sub_220DB4BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967E8, &unk_220DC85F0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967E0, &qword_220DC85E8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967D8, &qword_220DC85E0);
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96808, &qword_220DC8630);
  v42 = sub_220DBF6B0();
  v43 = MEMORY[0x277CBB438];
  swift_getOpaqueTypeConformance2();
  sub_220DBF670();
  v20 = type metadata accessor for DetailChartDataElement(0);
  v21 = (a1 + *(v20 + 48));
  v23 = *v21;
  v22 = v21[1];
  v42 = v23;
  v43 = v22;
  v24 = sub_220DB5B0C(&qword_27CF967F0, &qword_27CF967E8, &unk_220DC85F0);
  v25 = sub_220CEFF14();
  v26 = MEMORY[0x277D837D0];
  sub_220DBF4C0();
  (*(v34 + 8))(v10, v7);
  v27 = (a1 + *(v20 + 52));
  v29 = *v27;
  v28 = v27[1];
  v46 = v29;
  v47 = v28;
  v42 = v7;
  v43 = v26;
  v44 = v24;
  v45 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_220DBF4D0();
  (*(v35 + 8))(v14, v11);
  LOBYTE(v10) = *(v33 + *(type metadata accessor for StyledLineMark(0) + 56));
  v42 = v11;
  v43 = v26;
  v44 = OpaqueTypeConformance2;
  v45 = v25;
  swift_getOpaqueTypeConformance2();
  v31 = v36;
  sub_220DBF4E0();
  return (*(v37 + 8))(v19, v31);
}

uint64_t sub_220DB4FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v37 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED8, &unk_220DC5A10);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v30[1] = v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_220DBF6B0();
  v15 = *(v14 - 8);
  v31 = v14;
  v32 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFA00();
  v30[0] = sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  v19 = type metadata accessor for StyledLineMark(0);
  v20 = *(a2 + *(v19 + 36));
  v21 = type metadata accessor for DetailChartDataElement(0);
  v22 = 20;
  if (v20)
  {
    v22 = 24;
  }

  v38 = *(a1 + *(v21 + v22));
  sub_220DBF5A0();

  (*(v34 + 16))(v33, v36, v35);
  sub_220DBF6A0();
  v23 = (a2 + *(v19 + 64));
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  v27 = v23[3];
  v28 = v31;
  sub_220DBF530();
  return (*(v32 + 8))(v18, v28);
}

uint64_t sub_220DB5364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = sub_220DBE560();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v51 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v52 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v61 = &v49 - v25;
  v26 = sub_220DBF590();
  v54 = *(v26 - 8);
  v55 = v26;
  v27 = *(v54 + 64);
  MEMORY[0x28223BE20](v26);
  v53 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFA00();
  v29 = type metadata accessor for StyledLineMark(0);
  v30 = *(v29 + 48);
  sub_220CFF7DC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v60 = v29;
  if (EnumTagSinglePayload == 1)
  {
    (*(v15 + 16))(v20, a1 + *(v29 + 24), v14);
    v32 = a1;
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_220CDA548(v13, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    v32 = a1;
  }

  sub_220DBF5A0();

  v33 = *(v15 + 8);
  v33(v20, v14);
  v49 = sub_220DBFA00();
  v34 = v60;
  v35 = *(v60 + 52);
  v36 = v50;
  sub_220CFF7DC();
  v37 = __swift_getEnumTagSinglePayload(v36, 1, v14);
  v58 = v32;
  if (v37 == 1)
  {
    v38 = v32 + *(v34 + 24);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
    v40 = v51;
    (*(v15 + 16))(v51, v38 + *(v39 + 36), v14);
    if (__swift_getEnumTagSinglePayload(v36, 1, v14) != 1)
    {
      sub_220CDA548(v36, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    v40 = v51;
    (*(v15 + 32))(v51, v36, v14);
  }

  sub_220DBF5A0();

  v33(v40, v14);
  sub_220DBFA00();
  v41 = v60;
  v42 = v58;
  v43 = (v58 + *(v60 + 28));
  v62 = *v43;
  sub_220DBF5A0();

  sub_220DBFA00();
  v62 = v43[1];
  sub_220DBF5A0();

  v44 = v53;
  sub_220DBF580();
  v45 = v42 + *(v41 + 40);
  v46 = *(v45 + *(type metadata accessor for ChartLineStyle(0) + 20)) * 0.5;
  v47 = v55;
  sub_220DBF520();
  return (*(v54 + 8))(v44, v47);
}

uint64_t sub_220DB5A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StyledLineMark(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED8, &unk_220DC5A10);
  OUTLINED_FUNCTION_18(v8);
  v10 = v2 + ((v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_220DB4BFC(a1, v2 + v6, v10, a2);
}

uint64_t sub_220DB5B0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_16_22();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220DB5B50()
{
  result = qword_27CF967F8;
  if (!qword_27CF967F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967B0, &qword_220DC8580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967D8, &qword_220DC85E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967E0, &qword_220DC85E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967E8, &unk_220DC85F0);
    sub_220DB5B0C(&qword_27CF967F0, &qword_27CF967E8, &unk_220DC85F0);
    sub_220CEFF14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF967F8);
  }

  return result;
}

uint64_t DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v24 = sub_220DBE560();
  OUTLINED_FUNCTION_6(v24);
  (*(v25 + 32))(a9, a1);
  v26 = type metadata accessor for DetailChartDataElement(0);
  *(a9 + v26[5]) = a10;
  *(a9 + v26[6]) = a11;
  v27 = a9 + v26[7];
  *v27 = a2;
  *(v27 + 8) = a3 & 1;
  v28 = v26[8];
  OUTLINED_FUNCTION_4_27();
  result = sub_220DB7114(a4, a9 + v29);
  v31 = (a9 + v26[9]);
  *v31 = a5;
  v31[1] = a6;
  v32 = (a9 + v26[12]);
  *v32 = a7;
  v32[1] = a8;
  v33 = (a9 + v26[13]);
  *v33 = a12;
  v33[1] = a13;
  *(a9 + v26[10]) = a14;
  *(a9 + v26[11]) = a15;
  return result;
}

uint64_t static DetailChartDataElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_220DBE460() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DetailChartDataElement(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4;
  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if ((static DetailChartDataElement.ValueLabel.== infix(_:_:)(a1 + v4[8], a2 + v4[8]) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_24(v5[9]);
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  v14 = v5[10];
  v15 = *(a2 + v14);
  if (*(a1 + v14))
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *(a2 + v14);

    v17 = sub_220DBFE90();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v18 = v5[11];
  v19 = *(a2 + v18);
  if (!*(a1 + v18))
  {
    if (!v19)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v19)
  {
    return 0;
  }

  v20 = *(a2 + v18);

  v21 = sub_220DBFE90();

  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  OUTLINED_FUNCTION_5_24(v5[12]);
  v24 = v13 && v22 == v23;
  if (!v24 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_24(v5[13]);
  if (v13 && v25 == v26)
  {
    return 1;
  }

  return sub_220DC0CA0();
}

uint64_t static DetailChartDataElement.ValueLabel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v98 = a1;
  v99 = a2;
  v2 = sub_220DBFFC0();
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v93 = v5 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96810, &unk_220DC8640);
  v6 = OUTLINED_FUNCTION_6(v95);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v94 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v92 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v92 - v19;
  v21 = type metadata accessor for DetailChartDataElement.ValueLabel(0);
  v22 = OUTLINED_FUNCTION_6(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v27 = (v25 - v26);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = (&v92 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = (&v92 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96818, &unk_220DC8650);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v92 - v37;
  v39 = (&v92 + *(v36 + 56) - v37);
  sub_220DB7064(v98, &v92 - v37);
  sub_220DB7064(v99, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v98 = v20;
    v99 = v18;
    v92 = v14;
    v43 = v96;
    v42 = v97;
    OUTLINED_FUNCTION_4_27();
    v44 = v38;
    sub_220DB7064(v38, v33);
    v45 = *v33;
    v46 = v33[1];
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A50, &unk_220DC5A00) + 48);
    OUTLINED_FUNCTION_16_23();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_220CDA548(v33 + v47, &qword_27CF95A48, &unk_220DC4100);
      v38 = v44;
      goto LABEL_14;
    }

    v57 = *v39;
    v56 = *(v39 + 1);
    sub_220D2C870(v33 + v47, v98);
    sub_220D2C870(v39 + v47, v99);
    if (v45 == *&v57 && v46 == v56)
    {

      v60 = v43;
      v61 = v95;
    }

    else
    {
      v59 = sub_220DC0CA0();

      v60 = v43;
      v61 = v95;
      if ((v59 & 1) == 0)
      {
        OUTLINED_FUNCTION_26();
        sub_220CDA548(v62, v63, v64);
        OUTLINED_FUNCTION_26();
LABEL_33:
        sub_220CDA548(v65, v66, v67);
LABEL_34:
        OUTLINED_FUNCTION_5_33();
        v54 = v44;
        goto LABEL_35;
      }
    }

    v71 = *(v61 + 48);
    v72 = v98;
    v73 = v94;
    sub_220DB66D4(v98, v94);
    sub_220DB66D4(v99, v73 + v71);
    if (__swift_getEnumTagSinglePayload(v73, 1, v42) == 1)
    {
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v74, v75, v76);
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v77, v78, v79);
      if (__swift_getEnumTagSinglePayload(v73 + v71, 1, v42) == 1)
      {
        sub_220CDA548(v73, &qword_27CF95A48, &unk_220DC4100);
        goto LABEL_37;
      }
    }

    else
    {
      v80 = v92;
      sub_220DB66D4(v73, v92);
      if (__swift_getEnumTagSinglePayload(v73 + v71, 1, v42) != 1)
      {
        v87 = v93;
        (*(v60 + 32))(v93, v73 + v71, v42);
        OUTLINED_FUNCTION_13_17();
        sub_220DB69F8(v88, v89);
        v90 = sub_220DC05B0();
        v91 = *(v60 + 8);
        v91(v87, v42);
        sub_220CDA548(v99, &qword_27CF95A48, &unk_220DC4100);
        sub_220CDA548(v72, &qword_27CF95A48, &unk_220DC4100);
        v91(v80, v42);
        sub_220CDA548(v73, &qword_27CF95A48, &unk_220DC4100);
        if ((v90 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_37:
        OUTLINED_FUNCTION_5_33();
        v70 = v44;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_26();
      sub_220CDA548(v81, v82, v83);
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v84, v85, v86);
      (*(v60 + 8))(v80, v42);
    }

    v66 = &qword_27CF96810;
    v67 = &unk_220DC8640;
    v65 = v73;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_4_27();
    sub_220DB7064(v38, v27);
    v48 = *v27;
    v49 = v27[1];
    OUTLINED_FUNCTION_16_23();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      if (v48 == *v39 && v49 == *(v39 + 1))
      {
        v68 = *(v39 + 1);
      }

      else
      {
        v51 = *(v39 + 1);
        v52 = sub_220DC0CA0();

        if ((v52 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_33();
          v54 = v38;
LABEL_35:
          sub_220DB70BC(v54, v53);
          return 0;
        }
      }

      OUTLINED_FUNCTION_5_33();
      v70 = v38;
LABEL_38:
      sub_220DB70BC(v70, v69);
      return 1;
    }

LABEL_14:

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_27();
  sub_220DB7064(v38, v31);
  OUTLINED_FUNCTION_16_23();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_15:
    sub_220CDA548(v38, &qword_27CF96818, &unk_220DC8650);
    return 0;
  }

  v41 = *v31 == *v39;
  sub_220DB70BC(v38, type metadata accessor for DetailChartDataElement.ValueLabel);
  return v41;
}

uint64_t sub_220DB66D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void DetailChartDataElement.ValueLabel.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_28_3();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_11_0();
  v26 = sub_220DBFFC0();
  v27 = OUTLINED_FUNCTION_2_15(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  OUTLINED_FUNCTION_4();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &a9 - v41;
  v43 = type metadata accessor for DetailChartDataElement.ValueLabel(0);
  v44 = OUTLINED_FUNCTION_6(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  OUTLINED_FUNCTION_4_27();
  sub_220DB7064(v23, v49);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v51 = *v49;
      MEMORY[0x223D98920](1);
      v52 = 0.0;
      if (v51 != 0.0)
      {
        v52 = v51;
      }

      MEMORY[0x223D98940](*&v52);
    }

    else
    {
      v56 = *v49;
      v57 = *(v49 + 8);
      MEMORY[0x223D98920](2);
      sub_220DC0660();
    }
  }

  else
  {
    v53 = *v49;
    v54 = *(v49 + 8);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A50, &unk_220DC5A00);
    sub_220D2C870(v49 + *(v55 + 48), v42);
    MEMORY[0x223D98920](0);
    sub_220DC0660();

    sub_220DB66D4(v42, v39);
    if (__swift_getEnumTagSinglePayload(v39, 1, v22) == 1)
    {
      sub_220DC0D00();
    }

    else
    {
      (*(v29 + 32))(v34, v39, v22);
      sub_220DC0D00();
      OUTLINED_FUNCTION_13_17();
      sub_220DB69F8(v58, v59);
      sub_220DC0560();
      (*(v29 + 8))(v34, v22);
    }

    sub_220CDA548(v42, &qword_27CF95A48, &unk_220DC4100);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220DB69F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DetailChartDataElement.thirdValue.getter()
{
  v1 = (v0 + *(type metadata accessor for DetailChartDataElement(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t DetailChartDataElement.valueLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DetailChartDataElement(0) + 32);
  OUTLINED_FUNCTION_4_27();
  return sub_220DB7064(v1 + v4, a1);
}

uint64_t DetailChartDataElement.dateLabel.getter()
{
  v0 = type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_4_24(*(v0 + 36));
  return OUTLINED_FUNCTION_20();
}

uint64_t DetailChartDataElement.color.getter()
{
  v1 = *(v0 + *(type metadata accessor for DetailChartDataElement(0) + 40));
}

uint64_t DetailChartDataElement.textColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for DetailChartDataElement(0) + 44));
}

uint64_t DetailChartDataElement.accessibilityDateString.getter()
{
  v0 = type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_4_24(*(v0 + 48));
  return OUTLINED_FUNCTION_20();
}

uint64_t DetailChartDataElement.accessibilityValueDescription.getter()
{
  v0 = type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_4_24(*(v0 + 52));
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_220DB6C28()
{
  v0 = sub_220DBE560();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_20();

  return v4(v3);
}

uint64_t sub_220DB6E54(void (*a1)(_BYTE *))
{
  sub_220DC0CE0();
  a1(v3);
  return sub_220DC0D20();
}

uint64_t sub_220DB6EC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_220DC0CE0();
  a4(v6);
  return sub_220DC0D20();
}

void Array<A>.maxValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  v6 = v5;
  v7 = type metadata accessor for DetailChartDataElement(0);
  v8 = OUTLINED_FUNCTION_2_15(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_27();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_22();
  if (v4)
  {
    v15 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v4 != i; ++i)
    {
      v17 = *(v10 + 72);
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v18, v1);
      if (*(v3 + *(v0 + 20)) >= *(v1 + *(v0 + 20)))
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v1, v20);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v3, v19);
        OUTLINED_FUNCTION_18_18();
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v3, v2);
    v21 = *(v2 + *(v0 + 20));
    v22 = OUTLINED_FUNCTION_16_23();
    sub_220DB70BC(v22, v23);
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220DB7064(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_20();
  v9(v8);
  return a2;
}

uint64_t sub_220DB70BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220DB7114(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_20();
  v9(v8);
  return a2;
}

void Array<A>.minValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  v6 = v5;
  v7 = type metadata accessor for DetailChartDataElement(0);
  v8 = OUTLINED_FUNCTION_2_15(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_27();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_22();
  if (v4)
  {
    v15 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v4 != i; ++i)
    {
      v17 = *(v10 + 72);
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v18, v1);
      if (*(v1 + *(v0 + 20)) >= *(v3 + *(v0 + 20)))
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v1, v20);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v3, v19);
        OUTLINED_FUNCTION_18_18();
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v3, v2);
    v21 = *(v2 + *(v0 + 20));
    v22 = OUTLINED_FUNCTION_16_23();
    sub_220DB70BC(v22, v23);
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_29_0();
}

void Array<A>.maxSecondValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  v6 = v5;
  v7 = type metadata accessor for DetailChartDataElement(0);
  v8 = OUTLINED_FUNCTION_2_15(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_27();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_22();
  if (v4)
  {
    v15 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v4 != i; ++i)
    {
      v17 = *(v10 + 72);
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v18, v1);
      if (*(v3 + *(v0 + 24)) >= *(v1 + *(v0 + 24)))
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v1, v20);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v3, v19);
        OUTLINED_FUNCTION_18_18();
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v3, v2);
    v21 = *(v2 + *(v0 + 24));
    v22 = OUTLINED_FUNCTION_16_23();
    sub_220DB70BC(v22, v23);
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_29_0();
}

void Array<A>.maxThirdValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  v5 = v4;
  v6 = type metadata accessor for DetailChartDataElement(0);
  v7 = OUTLINED_FUNCTION_2_15(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_29_7();
  if (v3)
  {
    v17 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v3 != i; ++i)
    {
      v19 = *(v9 + 72);
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v20, v14);
      v21 = *(v0 + 28);
      v23 = OUTLINED_FUNCTION_27_9();
      if (!v25)
      {
        v23 = v24;
      }

      v26 = v14 + v22;
      if (!*(v26 + 8))
      {
        v24 = *v26;
      }

      if (v23 >= v24)
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v14, v28);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v2, v27);
        sub_220DB7114(v14, v2);
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v2, v1);
    OUTLINED_FUNCTION_22_14();
  }

  OUTLINED_FUNCTION_29_0();
}

void Array<A>.minSecondValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  v6 = v5;
  v7 = type metadata accessor for DetailChartDataElement(0);
  v8 = OUTLINED_FUNCTION_2_15(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_27();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_22();
  if (v4)
  {
    v15 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v4 != i; ++i)
    {
      v17 = *(v10 + 72);
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v18, v1);
      if (*(v1 + *(v0 + 24)) >= *(v3 + *(v0 + 24)))
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v1, v20);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v3, v19);
        OUTLINED_FUNCTION_18_18();
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v3, v2);
    v21 = *(v2 + *(v0 + 24));
    v22 = OUTLINED_FUNCTION_16_23();
    sub_220DB70BC(v22, v23);
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_29_0();
}

void Array<A>.minThirdValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  v5 = v4;
  v6 = type metadata accessor for DetailChartDataElement(0);
  v7 = OUTLINED_FUNCTION_2_15(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_29_7();
  if (v3)
  {
    v17 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v3 != i; ++i)
    {
      v19 = *(v9 + 72);
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v20, v14);
      v21 = *(v0 + 28);
      v23 = OUTLINED_FUNCTION_27_9();
      if (!v25)
      {
        v23 = v24;
      }

      v26 = v2 + v22;
      if (*(v26 + 8))
      {
        v27 = 1.79769313e308;
      }

      else
      {
        v27 = *v26;
      }

      if (v23 >= v27)
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v14, v29);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v2, v28);
        sub_220DB7114(v14, v2);
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v2, v1);
    OUTLINED_FUNCTION_22_14();
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t AirQualityDetailStringBuilder.attributionDescription(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96840, &qword_220DC8800);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  sub_220DBEBF0();
  v4 = sub_220DBED60();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_220DB7C08(v3);
    return 0;
  }

  else
  {
    v6 = sub_220DBED50();
    v8 = v7;
    (*(*(v4 - 8) + 8))(v3, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    sub_220CD8184(0, &qword_27CF95038, 0x277CCA898);
    sub_220DB7ED0();
    v9 = sub_220DB7C70(v6, v8);

    sub_220CD8184(0, &qword_27CF96848, 0x277CCAB48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96850, &qword_220DC8808);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220DC87F0;
    *(v10 + 32) = v9;
    return sub_220DC0A70();
  }
}

uint64_t sub_220DB7C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96840, &qword_220DC8800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_220DB7C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DBE2E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_220DC0640();
  v28 = v9;
  v25 = 0x656D6F7A65657262;
  v26 = 0xEB00000000726574;
  sub_220CEFF14();
  v10 = MEMORY[0x277D837D0];
  v11 = sub_220DC0B10();

  if (v11)
  {
    sub_220CD8184(0, &qword_27CF96848, 0x277CCAB48);

    return sub_220DB7ED0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96858, &unk_220DC8880);
    inited = swift_initStackObject();
    v14 = MEMORY[0x277D741F0];
    *(inited + 16) = xmmword_220DC17C0;
    v15 = *v14;
    v16 = MEMORY[0x277D83B88];
    *(inited + 32) = v15;
    *(inited + 40) = 1;
    v17 = *MEMORY[0x277D740E8];
    *(inited + 64) = v16;
    *(inited + 72) = v17;
    v18 = v15;
    v19 = v17;
    sub_220DBEBE0();
    v20 = sub_220DBE2C0();
    v22 = v21;
    (*(v5 + 8))(v8, v4);
    *(inited + 104) = v10;
    *(inited + 80) = v20;
    *(inited + 88) = v22;
    type metadata accessor for Key(0);
    sub_220DB7FD8();
    v23 = sub_220DC0540();
    objc_allocWithZone(MEMORY[0x277CCAB48]);

    return sub_220DB8030(a1, a2, v23);
  }
}

id sub_220DB7ED0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_220DC05E0();

  v2 = [v0 initWithString_];

  return v2;
}

unint64_t sub_220DB7FD8()
{
  result = qword_27CF95110;
  if (!qword_27CF95110)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95110);
  }

  return result;
}

id sub_220DB8030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_220DC05E0();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_220DB7FD8();
    v6 = sub_220DC0530();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

uint64_t PrecipitationCalculator.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IsSameDayCache();
  v2 = swift_allocObject();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955E8, &unk_220DC2EA0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_220DBF280();
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

void PrecipitationCalculator.dominantPrecipitationType(precipitation:snowfall:)()
{
  OUTLINED_FUNCTION_28_3();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_24();
  v9 = objc_opt_self();
  v10 = [v9 centimeters];
  sub_220DBE130();

  sub_220DBE050();
  v11 = *(v5 + 8);
  v11(v0, v3);
  v12 = [v9 centimeters];
  sub_220DBE130();

  sub_220DBE050();
  v14 = v13;
  v11(v0, v3);
  OUTLINED_FUNCTION_18_19();
  if (v17 ^ v18 | v16)
  {
    v15 = 0;
  }

  if (v14 > 0.0)
  {
    v15 = 2;
  }

  *v2 = v15;
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220DB82E8@<X0>(void (*a1)(void)@<X1>, char *a2@<X8>)
{
  v5 = sub_220DBEBA0();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_24();
  a1();
  WeatherCondition.dominantPrecipitation.getter(&v13);
  result = (*(v8 + 8))(v2, v5);
  v12 = v13;
  if (v13 == 6)
  {
    v12 = 5;
  }

  *a2 = v12;
  return result;
}

uint64_t PrecipitationCalculator.precipitationAmountForDisplay(precipitation:snowfall:precipitationType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  switch(*a3)
  {
    case 1:
    case 3:
    case 4:
    case 5:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      v7 = OUTLINED_FUNCTION_6(v6);
      v9 = *(v8 + 16);
      v10 = v7;
      v11 = a4;
      v12 = a1;
      goto LABEL_3;
    case 2:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      v16 = OUTLINED_FUNCTION_6(v15);
      v9 = *(v17 + 16);
      v10 = v16;
      v11 = a4;
      v12 = a2;
LABEL_3:

      result = v9(v11, v12, v10);
      break;
    default:
      v18 = [objc_opt_self() centimeters];
      OUTLINED_FUNCTION_11_0();
      sub_220CDB190();

      result = sub_220DBE040();
      break;
  }

  return result;
}

void PrecipitationCalculator.precipitationAmountForDisplay(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v111 = sub_220DBEBA0();
  v6 = OUTLINED_FUNCTION_0(v111);
  v113 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v110 = v11 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0(v109);
  v108 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  v112 = &v100 - v16;
  OUTLINED_FUNCTION_6_1();
  *&v115 = sub_220DBE6E0();
  v17 = OUTLINED_FUNCTION_0(v115);
  *&v118 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v116 = sub_220DBE560();
  v24 = OUTLINED_FUNCTION_0(v116);
  v114 = v25;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v24);
  v30 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_22();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z") - 8) + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_16_24();
  v33 = sub_220DBE830();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v41 = v40 - v39;
  v119 = *v2;
  OUTLINED_FUNCTION_11_0();
  v42 = type metadata accessor for WeatherValueCalculationContext();
  v43 = a1;
  sub_220D833A8(a1 + v42[5], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    sub_220CDA548(v3, &qword_27CF95A10, "Z");
    v44 = a1;
    v45 = v119;
LABEL_3:
    v46 = v117;
LABEL_8:
    v124 = v45;
    v61 = v42[7];
    v123 = *(v44 + v42[6]);
    v62 = *(v44 + v61 + 8);
    v63 = *(v44 + v61 + 16);
    v64 = *(v44 + v61 + 24);
    v65 = *(v44 + v61 + 32);
    v66 = *(v44 + v61 + 40);
    *&v120 = *(v44 + v61);
    *(&v120 + 1) = v62;
    *&v121 = v63;
    *(&v121 + 1) = v64;
    *&v122 = v65;
    *(&v122 + 1) = v66;
    v67 = v42[8];
    v68 = v120;
    v69 = v62;
    v70 = v63;
    v71 = v64;
    v72 = v65;
    v73 = v66;
    sub_220DB8CC4(v44, &v120, v44 + v67, v46);
    v74 = v120;
    v75 = v121;
    v76 = v122;

    return;
  }

  v106 = v36;
  (*(v36 + 32))(v41, v3, v2);
  v107 = v2;
  sub_220DBE8F0();
  sub_220DBE810();
  v105 = v42[9];
  sub_220DBE600();
  v47 = OUTLINED_FUNCTION_28();
  v49 = IsSameDayCache.isSameDay(_:_:calendar:)(v47, v48, v23);
  v50 = *(v118 + 8);
  *&v118 = v118 + 8;
  *&v104 = v50;
  v50(v23, v115);
  v51 = v114 + 8;
  v52 = *(v114 + 8);
  v53 = v116;
  v52(v30, v116);
  v52(v4, v53);
  if ((v49 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_0(&v125);
    v60(v41, v107);
    v46 = v117;
    v44 = v43;
    v45 = v119;
    goto LABEL_8;
  }

  v103 = v41;
  v44 = v43;
  v54 = v43 + v42[8];
  sub_220DBEA60();
  sub_220DBE8F0();
  sub_220DBE600();
  v55 = OUTLINED_FUNCTION_28();
  v56 = v119;
  v58 = IsSameDayCache.isSameDay(_:_:calendar:)(v55, v57, v23);
  (v104)(v23, v115);
  v59 = v116;
  v52(v30, v116);
  v52(v4, v59);
  v45 = v56;
  if (v58)
  {
    (*(v106 + 8))(v103, v107);
    goto LABEL_3;
  }

  v77 = v51;
  v78 = v30;
  v114 = v77;
  v79 = (v44 + v42[7]);
  v80 = v79[1];
  v115 = *v79;
  v104 = v80;
  v118 = v79[2];
  sub_220CDB190();
  v81 = v118;
  v82 = v112;
  sub_220DBE040();
  v83 = v110;
  sub_220DBE950();
  v84 = sub_220DBEB80();
  v85 = v113 + 8;
  v102 = *(v113 + 8);
  v102(v83, v111);
  v86 = v117;
  if (v84)
  {
    v113 = v85;
    sub_220DBE810();
    sub_220DBE8F0();
    v101 = v44;
    v87 = sub_220DBE530();
    v88 = v116;
    v52(v78, v116);
    v52(v4, v88);
    if ((v87 & 1) != 0 && (v89 = v45, v90 = v110, sub_220DBE820(), v91 = sub_220DBEB80(), v92 = v90, v45 = v89, v102(v92, v111), (v91 & 1) == 0))
    {
      v98 = OUTLINED_FUNCTION_8_19();
      v99(v98);
      (*(v108 + 32))(v117, v112, v109);
    }

    else
    {
      v124 = v45;
      v120 = v115;
      v121 = v104;
      v122 = v118;
      sub_220DB9CBC(v101, &v120, v117);
      OUTLINED_FUNCTION_8_0(&v126);
      v93(v112, v109);
      v94 = OUTLINED_FUNCTION_8_19();
      v95(v94);
    }
  }

  else
  {
    v96 = OUTLINED_FUNCTION_8_19();
    v97(v96);
    (*(v108 + 32))(v86, v82, v109);
  }
}

uint64_t sub_220DB8CC4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v74 = a3;
  v75 = a1;
  v76 = a4;
  v64 = sub_220DBE560();
  v63 = *(v64 - 8);
  v6 = *(v63 + 64);
  v7 = MEMORY[0x28223BE20](v64);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v59 - v9;
  v10 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220DBEE10();
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  v69 = type metadata accessor for PresentativePastHourRange(0);
  v22 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v71 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_220DBEBA0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v59 - v32;
  v34 = *a2;
  v67 = a2[1];
  v68 = v34;
  v77 = a2[2];
  v66 = *v4;
  sub_220CDB190();
  v35 = v77;
  sub_220DBE040();
  v36 = v75;
  sub_220DBE950();
  v37 = sub_220DBEB80();
  (*(v25 + 8))(v28, v24);
  if ((v37 & 1) == 0)
  {
    return (*(v30 + 32))(v76, v33, v29);
  }

  v60 = v33;
  v38 = v30;
  v39 = v29;
  sub_220DBEA20();
  sub_220DBEA30();
  v40 = v70;
  sub_220DBEA50();
  v41 = v71;
  PrecipitationCalculator.findPresentativePastHourRange(pastHourAmounts:past6HourAmounts:past24HourAmounts:)(v71);
  v42 = *(v72 + 8);
  v43 = v40;
  v44 = v73;
  v42(v43, v73);
  v42(v19, v44);
  v42(v21, v44);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v45 = v65;
    sub_220CDD014(v41, v65);
    sub_220DBE050();
    if (v46 == 0.0)
    {
      v47 = v61;
      v48 = v36;
      sub_220DBE8F0();
      v49 = v62;
      sub_220DBEA60();
      v50 = sub_220DBE440();
      v51 = *(v63 + 8);
      v52 = v49;
      v53 = v64;
      v51(v52, v64);
      v51(v47, v53);
      sub_220CDD864(v45, type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext);
      v54 = v76;
      v55 = v60;
      if (v50)
      {
        return (*(v38 + 32))(v76, v60, v39);
      }

      goto LABEL_10;
    }

    v57 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext;
    v58 = v45;
  }

  else
  {
    v57 = type metadata accessor for PresentativePastHourRange;
    v58 = v41;
  }

  sub_220CDD864(v58, v57);
  v54 = v76;
  v48 = v36;
  v55 = v60;
LABEL_10:
  v79 = v66;
  v78[0] = v68;
  v78[1] = v67;
  v78[2] = v77;
  sub_220DB9CBC(v48, v78, v54);
  return (*(v38 + 8))(v55, v39);
}

void PrecipitationCalculator.apparentPrecipitationIntensityForDisplay(for:currentWeather:dayWeather:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_28_3();
  a21 = v24;
  a22 = v25;
  v154 = v22;
  v155 = v26;
  v147 = v27;
  v149 = v28;
  v152 = v29;
  v157 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v32 = OUTLINED_FUNCTION_0(v31);
  v140 = v33;
  v141 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  v139 = &v133 - v37;
  OUTLINED_FUNCTION_6_1();
  v138 = sub_220DBEE10();
  v38 = OUTLINED_FUNCTION_0(v138);
  v137 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1();
  v136 = v43 - v42;
  OUTLINED_FUNCTION_6_1();
  v44 = sub_220DBE560();
  v45 = OUTLINED_FUNCTION_0(v44);
  v145 = v46;
  v146 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9();
  v144 = v49;
  OUTLINED_FUNCTION_23();
  v51 = MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_22_15(v51, v52, v53, v54, v55, v56, v57, v58, v133);
  v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z") - 8) + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v60);
  v62 = &v133 - v61;
  v153 = sub_220DBE830();
  v63 = OUTLINED_FUNCTION_0(v153);
  v148 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_1();
  v142 = v68 - v67;
  OUTLINED_FUNCTION_6_1();
  v69 = sub_220DBE6E0();
  v70 = OUTLINED_FUNCTION_0(v69);
  v150 = v71;
  v151 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_1();
  v156 = v75 - v74;
  OUTLINED_FUNCTION_6_1();
  v76 = sub_220DBEBA0();
  v77 = OUTLINED_FUNCTION_0(v76);
  v79 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_1();
  v84 = v83 - v82;
  v85 = sub_220DBEE90();
  v86 = OUTLINED_FUNCTION_0(v85);
  v88 = v87;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_24();
  v91 = sub_220DBEE60();
  v92 = OUTLINED_FUNCTION_0(v91);
  v94 = v93;
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_1();
  v99 = v98 - v97;
  v154 = *v154;
  (*(v88 + 104))(v23, *MEMORY[0x277CE3798], v85);
  sub_220DBEE40();
  sub_220DBE950();
  LOBYTE(v85) = sub_220DBEB80();
  v100 = *(v79 + 8);
  v135 = v76;
  v100(v84, v76);
  if (v85)
  {
    v133 = v99;
    v134 = v94;
    sub_220DBE600();
    v101 = swift_allocObject();
    *(v101 + 16) = 2;
    sub_220D833A8(v149, v62);
    v102 = v153;
    if (__swift_getEnumTagSinglePayload(v62, 1, v153) == 1)
    {
      sub_220CDA548(v62, &qword_27CF95A10, "Z");
      v103 = v154;
      v104 = v155;
    }

    else
    {
      v147 = v101;
      v149 = v91;
      v105 = v142;
      (*(v148 + 32))(v142, v62, v102);
      v106 = v143;
      sub_220DBE8F0();
      v107 = v144;
      sub_220DBE810();
      v108 = v154;
      v109 = IsSameDayCache.isSameDay(_:_:calendar:)(v106, v107, v156);
      v110 = *(v145 + 8);
      v111 = v107;
      v112 = v146;
      v110(v111, v146);
      v110(v106, v112);
      if (v109)
      {
        v113 = v153;
        v101 = v147;
        v114 = sub_220DB9B48(v147, v108, v152, v157, v156);
        v104 = v155;
        v103 = v108;
        if (v114)
        {
          (*(v148 + 8))(v142, v113);
          v91 = v149;
        }

        else
        {
          v131 = v142;
          sub_220DBE820();
          v132 = sub_220DBEB80();
          v100(v84, v135);
          (*(v148 + 8))(v131, v113);
          v91 = v149;
          if ((v132 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        (*(v148 + 8))(v105, v153);
        v104 = v155;
        v91 = v149;
        v101 = v147;
        v103 = v108;
      }
    }

    if ((sub_220DB9B48(v101, v103, v152, v157, v156) & 1) == 0)
    {
      goto LABEL_12;
    }

    v115 = v91;
    v116 = v104;
    v117 = v143;
    sub_220DBE8F0();
    v118 = v144;
    sub_220DBEA60();
    OUTLINED_FUNCTION_28();
    v119 = sub_220DBE440();
    v120 = *(v145 + 8);
    v121 = v118;
    v122 = v146;
    v120(v121, v146);
    v123 = v117;
    v104 = v116;
    v91 = v115;
    v120(v123, v122);
    if ((v119 & 1) == 0)
    {
      goto LABEL_12;
    }

    v124 = v136;
    sub_220DBEA50();
    v125 = v139;
    sub_220DBEDD0();
    OUTLINED_FUNCTION_8_0(&a19);
    v126(v124, v138);
    v127 = v141;
    sub_220DBE050();
    v129 = v128;
    (*(v140 + 8))(v125, v127);
    if (v129 != 0.0)
    {
LABEL_12:
      sub_220DBE8D0();
      (*(v150 + 8))(v156, v151);
      OUTLINED_FUNCTION_8_0(&a16);
      v130(v133, v91);
LABEL_15:

      goto LABEL_16;
    }

LABEL_14:
    (*(v150 + 8))(v156, v151);
    (*(v134 + 32))(v104, v133, v91);
    goto LABEL_15;
  }

  (*(v94 + 32))(v155, v99, v91);
LABEL_16:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220DB9B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_220DBE560();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v17 = *(a1 + 16);
  v15 = (a1 + 16);
  v16 = v17;
  if (v17 == 2)
  {
    sub_220DBEA60();
    sub_220DBE8F0();
    v16 = IsSameDayCache.isSameDay(_:_:calendar:)(v14, v12, a5);
    v18 = *(v8 + 8);
    v18(v12, v7);
    v18(v14, v7);
    swift_beginAccess();
    *v15 = v16 & 1;
  }

  return v16 & 1;
}

uint64_t sub_220DB9CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a3;
  v4 = sub_220DBEC20();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220DBEBA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *(a2 + 32);
  sub_220CDB190();
  v22 = v21;
  sub_220DBE040();
  sub_220DBE950();
  LOBYTE(a2) = sub_220DBEB80();
  (*(v9 + 8))(v12, v8);
  if (a2)
  {
    sub_220DBE860();
    v23 = v28;
    v24 = v29;
    v25 = (*(v28 + 88))(v7, v29);
    if (v25 == *MEMORY[0x277CE3388])
    {
      (*(v14 + 32))(v18, v20, v13);
    }

    else
    {
      v27 = (v14 + 8);
      if (v25 == *MEMORY[0x277CE33A0])
      {
        sub_220DBE880();
        (*v27)(v20, v13);
      }

      else
      {
        sub_220DBE8A0();
        (*v27)(v20, v13);
        (*(v23 + 8))(v7, v24);
      }
    }
  }

  else
  {
    v18 = v20;
  }

  return (*(v14 + 32))(v31, v18, v13);
}

void static LinearGradient.fallback.getter()
{
  sub_220DC0180();
  sub_220DC0190();
  MEMORY[0x223D97D40](MEMORY[0x277D84F90]);
  v0 = sub_220DBF7B0();
  OUTLINED_FUNCTION_0_29(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10, v11);
}

double LinearGradient.init(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = sub_220DBF7B0();
  *&result = OUTLINED_FUNCTION_0_29(v4, v5, v6, v7, v8, v9, v10, v11, v14, v12, v15, v16).n128_u64[0];
  return result;
}

uint64_t static DetailChartCondition.read(from:)@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220DBF260();
  if (!v1)
  {
    v4 = v7 - 1;
    if (v4 >= 9)
    {
      sub_220DBF210();
      sub_220DBA2D0();
      OUTLINED_FUNCTION_0_30();
      v5 = *MEMORY[0x277D6CB18];
      OUTLINED_FUNCTION_1_42();
      (*(v6 + 104))();
      return swift_willThrow();
    }

    else
    {
      *a1 = v4;
    }
  }

  return result;
}

unint64_t sub_220DBA2D0()
{
  result = qword_27CF96860;
  if (!qword_27CF96860)
  {
    sub_220DBF210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96860);
  }

  return result;
}

uint64_t static DetailCondition.read(from:)@<X0>(char *a1@<X8>)
{
  result = sub_220DBF260();
  if (!v1)
  {
    v4 = 2;
    switch(v8)
    {
      case 1:
        goto LABEL_10;
      case 2:
        v4 = 3;
        goto LABEL_10;
      case 3:
        v4 = 4;
        goto LABEL_10;
      case 4:
        result = sub_220DBF260();
        if (v7 == 2)
        {
          v4 = 1;
        }

        else
        {
          if (v7 != 1)
          {
LABEL_8:
            sub_220DBF210();
            sub_220DBA2D0();
            OUTLINED_FUNCTION_0_30();
            v5 = *MEMORY[0x277D6CB18];
            OUTLINED_FUNCTION_1_42();
            (*(v6 + 104))();
            return swift_willThrow();
          }

          v4 = 0;
        }

LABEL_10:
        *a1 = v4;
        break;
      case 5:
      case 6:
      case 7:
        v4 = v8;
        goto LABEL_10;
      default:
        goto LABEL_8;
    }
  }

  return result;
}

uint64_t DetailCondition.write(to:)()
{
  switch(*v0)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      return sub_220DBF270();
    default:
      result = sub_220DBF270();
      if (!v1)
      {
        return sub_220DBF270();
      }

      return result;
  }
}

uint64_t static TemperatureChartKind.read(from:)@<X0>(char *a1@<X8>)
{
  result = sub_220DBF260();
  if (!v1)
  {
    if (v7 == 1)
    {
      v4 = 0;
      goto LABEL_6;
    }

    if (v7 == 2)
    {
      v4 = 1;
LABEL_6:
      *a1 = v4;
      return result;
    }

    sub_220DBF210();
    sub_220DBA2D0();
    OUTLINED_FUNCTION_0_30();
    v5 = *MEMORY[0x277D6CB18];
    OUTLINED_FUNCTION_1_42();
    (*(v6 + 104))();
    return swift_willThrow();
  }

  return result;
}

uint64_t PresentativePastHourRange.dominantPrecipitation.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PresentativePastHourRange(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D5AC7C(v1, v11);
  sub_220DBA98C(v11, v7);
  v12 = v7[*(v4 + 32)];
  result = sub_220DBA9F0(v7);
  *a1 = v12;
  return result;
}

uint64_t sub_220DBA98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220DBA9F0(uint64_t a1)
{
  v2 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeatherCondition.dominantPrecipitation.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_220DBEBA0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_4_28(v6);
  v8(v7);
  v9 = OUTLINED_FUNCTION_7_29();
  result = v10(v9);
  if (result == *MEMORY[0x277CE32F8] || result == *MEMORY[0x277CE3228])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277CE32F0])
  {
LABEL_8:
    v13 = 3;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x277CE3300])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277CE3270] || result == *MEMORY[0x277CE3240])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277CE3290])
  {
    v13 = 5;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x277CE3308])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277CE3310])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277CE3318] || result == *MEMORY[0x277CE32A0] || result == *MEMORY[0x277CE3280])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277CE32C0])
  {
    v13 = 4;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x277CE32A8])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277CE3258])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277CE3238])
  {
LABEL_6:
    v13 = 2;
LABEL_9:
    *a1 = v13;
    return result;
  }

  if (result == *MEMORY[0x277CE3218] || result == *MEMORY[0x277CE3260] || result == *MEMORY[0x277CE3268])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277CE3320])
  {
    v13 = 1;
    goto LABEL_9;
  }

  v17 = OUTLINED_FUNCTION_6_27(6);
  return v18(v17);
}

uint64_t DominantPrecipitation.title.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    case 2:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 3:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_11;
      }

LABEL_13:
      OUTLINED_FUNCTION_10();
      goto LABEL_11;
    case 4:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    default:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_9;
      }

LABEL_14:
      OUTLINED_FUNCTION_10();
LABEL_9:
      OUTLINED_FUNCTION_3_32();
LABEL_11:
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
  }
}

uint64_t DominantPrecipitation.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

uint64_t Measurement<>.formattedWithoutScaling(precipitationType:)(_BYTE *a1)
{
  v2 = sub_220DC0300();
  v3 = OUTLINED_FUNCTION_0(v2);
  v50 = v4;
  v51 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v49 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - v11;
  v13 = sub_220DC02F0();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = sub_220DC0960();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v48 = sub_220DC0950();
  v31 = OUTLINED_FUNCTION_0(v48);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  v39 = MEMORY[0x277D7B4C0];
  if (*a1 != 2)
  {
    v39 = MEMORY[0x277D7B4B8];
  }

  (*(v25 + 104))(v30, *v39, v22);
  (*(v16 + 104))(v21, *MEMORY[0x277D7B3F0], v13);
  v40 = sub_220DBE5E0();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v40);
  sub_220DC0810();
  sub_220DC0280();

  sub_220D69B34(v12);
  (*(v16 + 8))(v21, v13);
  (*(v25 + 8))(v30, v22);
  v42 = v49;
  v41 = v50;
  v43 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277D7B408], v51);
  sub_220DBF100();
  sub_220DBF0D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  sub_220D427C0();
  v44 = v48;
  v45 = sub_220DBE0B0();

  (*(v41 + 8))(v42, v43);
  (*(v33 + 8))(v38, v44);
  return v45;
}

uint64_t Precipitation.dominantPrecipitation.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_220DBEC20();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_4_28(v6);
  v8(v7);
  v9 = OUTLINED_FUNCTION_7_29();
  result = v10(v9);
  if (result == *MEMORY[0x277CE3390])
  {
    *a1 = 0;
    return result;
  }

  if (result == *MEMORY[0x277CE33A8])
  {
    v12 = 1;
LABEL_11:
    *a1 = v12;
    return result;
  }

  if (result == *MEMORY[0x277CE3398])
  {
    v12 = 3;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277CE33B0])
  {
    v12 = 4;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277CE33A0])
  {
    v12 = 2;
    goto LABEL_11;
  }

  v13 = OUTLINED_FUNCTION_6_27(5);
  return v14(v13);
}

uint64_t sub_220DBB51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6, void *a7)
{
  v9 = *a6;
  v10 = a6[1];
  v12 = a6[2];
  v11 = a6[3];
  v14 = a6[4];
  v13 = a6[5];
  if (sub_220DBE610())
  {
    OUTLINED_FUNCTION_29_8();
    return sub_220DBB5E0(v15, a2, v21, a7);
  }

  else if (sub_220DBE640())
  {
    OUTLINED_FUNCTION_29_8();
    return sub_220DBBA5C(a2, v21, a7);
  }

  else
  {
    OUTLINED_FUNCTION_29_8();
    v17 = OUTLINED_FUNCTION_37();
    return sub_220DBBEE8(v17, v18, a5, v19, a7);
  }
}

uint64_t sub_220DBB5E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_15(v15, v50);
  v16 = a4;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = a3;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_28_8();
  if (v23)
  {
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v24 = sub_220DBF410();
    __swift_project_value_buffer(v24, qword_27CF95F48);
    v25 = sub_220DBF3F0();
    v26 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v26))
    {
      v27 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v27);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v28, v29, "Failed to create Visibility summary (today) due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }

    return 0;
  }

  else
  {
    switch(v4 >> 62)
    {
      case 1uLL:
        v43 = qword_280FA6600;

        if (v43 != -1)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      case 2uLL:
        v37 = qword_280FA6600;

        if (v37 != -1)
        {
LABEL_21:
          OUTLINED_FUNCTION_10();
        }

LABEL_18:
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_10_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v44 = swift_allocObject();
        v30 = OUTLINED_FUNCTION_12_26(v44, xmmword_220DC1CC0);
        v46 = v45;
        v44[3].n128_u64[1] = MEMORY[0x277D837D0];
        v47 = sub_220CEFDB0();
        v44[2].n128_u64[0] = v30;
        v44[2].n128_u64[1] = v46;
        v48 = OUTLINED_FUNCTION_15_18(v47);
        OUTLINED_FUNCTION_32_7(v48);
        OUTLINED_FUNCTION_16_25();

        v36 = OUTLINED_FUNCTION_9_27();
        break;
      case 3uLL:
        v38 = qword_280FA6600;

        if (v38 != -1)
        {
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_10_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v39 = swift_allocObject();
        v30 = OUTLINED_FUNCTION_12_26(v39, xmmword_220DC1CE0);
        v39[3].n128_u64[1] = MEMORY[0x277D837D0];
        v40 = sub_220CEFDB0();
        v41 = OUTLINED_FUNCTION_20_10(v40);
        OUTLINED_FUNCTION_19_15(v41, v42);
        OUTLINED_FUNCTION_16_25();

        OUTLINED_FUNCTION_9_27();
        OUTLINED_FUNCTION_42_3();
        break;
      default:
        OUTLINED_FUNCTION_9_27();
        OUTLINED_FUNCTION_42_3();
        sub_220DBDF04(v31);
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_10_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v32 = swift_allocObject();
        v30 = OUTLINED_FUNCTION_12_26(v32, xmmword_220DC17C0);
        v34 = v33;
        v32[3].n128_u64[1] = MEMORY[0x277D837D0];
        v35 = sub_220CEFDB0();
        v32[2].n128_u64[0] = v30;
        v32[2].n128_u64[1] = v34;
        OUTLINED_FUNCTION_15_18(v35);
        sub_220DC05F0();
        OUTLINED_FUNCTION_16_25();

        v36 = OUTLINED_FUNCTION_9_27();
        break;
    }

    sub_220DBDE80(v36);
  }

  return v30;
}

uint64_t sub_220DBBA5C(uint64_t a1, void *a2, void *a3)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21_15(v14, v49);
  v15 = a3;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = a2;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_28_8();
  if (v22)
  {
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v23 = sub_220DBF410();
    __swift_project_value_buffer(v23, qword_27CF95F48);
    v24 = sub_220DBF3F0();
    v25 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v25))
    {
      v26 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v26);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v27, v28, "Failed to create Visibility summary (yesterday) due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }

    return 0;
  }

  else
  {
    switch(v3 >> 62)
    {
      case 1uLL:
        v42 = qword_280FA6600;

        if (v42 != -1)
        {
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_33();
        goto LABEL_21;
      case 2uLL:
        v36 = qword_280FA6600;

        if (v36 != -1)
        {
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_33();
LABEL_21:
        OUTLINED_FUNCTION_10_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v43 = swift_allocObject();
        v29 = OUTLINED_FUNCTION_12_26(v43, xmmword_220DC1CC0);
        v45 = v44;
        v43[3].n128_u64[1] = MEMORY[0x277D837D0];
        v46 = sub_220CEFDB0();
        v43[2].n128_u64[0] = v29;
        v43[2].n128_u64[1] = v45;
        v47 = OUTLINED_FUNCTION_15_18(v46);
        OUTLINED_FUNCTION_32_7(v47);
        OUTLINED_FUNCTION_16_25();

        v35 = OUTLINED_FUNCTION_9_27();
        break;
      case 3uLL:
        v37 = qword_280FA6600;

        if (v37 != -1)
        {
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_10_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v38 = swift_allocObject();
        v29 = OUTLINED_FUNCTION_12_26(v38, xmmword_220DC1CE0);
        v38[3].n128_u64[1] = MEMORY[0x277D837D0];
        v39 = sub_220CEFDB0();
        v40 = OUTLINED_FUNCTION_20_10(v39);
        OUTLINED_FUNCTION_19_15(v40, v41);
        OUTLINED_FUNCTION_16_25();

        OUTLINED_FUNCTION_9_27();
        OUTLINED_FUNCTION_42_3();
        break;
      default:
        OUTLINED_FUNCTION_9_27();
        OUTLINED_FUNCTION_42_3();
        sub_220DBDF04(v30);
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_10_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v31 = swift_allocObject();
        v29 = OUTLINED_FUNCTION_12_26(v31, xmmword_220DC17C0);
        v33 = v32;
        v31[3].n128_u64[1] = MEMORY[0x277D837D0];
        v34 = sub_220CEFDB0();
        v31[2].n128_u64[0] = v29;
        v31[2].n128_u64[1] = v33;
        OUTLINED_FUNCTION_15_18(v34);
        sub_220DC05F0();
        OUTLINED_FUNCTION_16_25();

        v35 = OUTLINED_FUNCTION_9_27();
        break;
    }

    sub_220DBDE80(v35);
  }

  return v29;
}

uint64_t sub_220DBBEE8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v74 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = v70 - v13;
  v15 = *a4;
  v16 = *(a4 + 8);
  v17 = *(a4 + 16);
  v18 = *(a4 + 24);
  v19 = *(a4 + 32);
  v20 = *(a4 + 40);
  sub_220CEF48C(a2, v70 - v13);
  v75[0] = v15;
  v75[1] = v16;
  v75[2] = v17;
  v75[3] = v18;
  v75[4] = v19;
  v75[5] = v20;
  v21 = a5;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  sub_220DBCB0C(v14, v75, v21, v76);
  OUTLINED_FUNCTION_28_8();
  if (v28)
  {
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v29 = sub_220DBF410();
    __swift_project_value_buffer(v29, qword_27CF95F48);
    v30 = sub_220DBF3F0();
    v31 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v31))
    {
      v32 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v32);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v33, v34, "Failed to create Visibility summary (future) due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }

    return 0;
  }

  else
  {
    v37 = v76[1];
    v36 = v76[2];
    v39 = v76[3];
    v38 = v76[4];
    v40 = v76[5];
    v41 = sub_220DBE520();
    switch(v14 >> 62)
    {
      case 1uLL:

        v73 = v39;
        v74 = v38;
        switch(v41)
        {
          case 1:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 2:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 3:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 4:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 5:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 6:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          default:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
        }

        goto LABEL_97;
      case 2uLL:

        v73 = v39;
        v74 = v38;
        switch(v41)
        {
          case 1:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 2:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 3:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 4:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 5:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 6:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          default:
            v43 = v37;
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
        }

LABEL_97:
        OUTLINED_FUNCTION_1_43();
        OUTLINED_FUNCTION_10_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v61 = swift_allocObject();
        v62 = OUTLINED_FUNCTION_12_26(v61, xmmword_220DC1CC0);
        v64 = v63;
        v65 = MEMORY[0x277D837D0];
        v61[3].n128_u64[1] = MEMORY[0x277D837D0];
        v66 = sub_220CEFDB0();
        v61[2].n128_u64[0] = v62;
        v61[2].n128_u64[1] = v64;
        v61[6].n128_u64[0] = v65;
        v61[6].n128_u64[1] = v66;
        v61[4].n128_u64[0] = v66;
        v61[4].n128_u64[1] = v43;
        v61[5].n128_u64[0] = v36;
        v61[8].n128_u64[1] = v65;
        v61[9].n128_u64[0] = v66;
        v67 = v74;
        v61[7].n128_u64[0] = v73;
        v61[7].n128_u64[1] = v67;
        v35 = sub_220DC05F0();
        OUTLINED_FUNCTION_39_4();
        sub_220DBDE80(v68);

        goto LABEL_98;
      case 3uLL:

        v74 = v38;
        v72 = v40;
        switch(v41)
        {
          case 1:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 2:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 3:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 4:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 5:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 6:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          default:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
        }

        OUTLINED_FUNCTION_1_43();
        v70[1] = OUTLINED_FUNCTION_10_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_220DC1CE0;
        LOBYTE(v76[0]) = a1;
        v45 = VisibilityCondition.shortDescription.getter();
        v47 = v46;
        v48 = MEMORY[0x277D837D0];
        *(v44 + 56) = MEMORY[0x277D837D0];
        v49 = sub_220CEFDB0();
        *(v44 + 32) = v45;
        *(v44 + 40) = v47;
        *(v44 + 96) = v48;
        *(v44 + 104) = v49;
        *(v44 + 64) = v49;
        *(v44 + 72) = v36;
        *(v44 + 80) = v14;
        LOBYTE(v75[0]) = v38;
        v50 = VisibilityCondition.shortDescription.getter();
        *(v44 + 136) = v48;
        *(v44 + 144) = v49;
        *(v44 + 112) = v50;
        *(v44 + 120) = v51;
        *(v44 + 176) = v48;
        *(v44 + 184) = v49;
        v52 = v72;
        *(v44 + 152) = v74;
        *(v44 + 160) = v52;
        v35 = sub_220DC05F0();
        sub_220DBDE80(a1);
        goto LABEL_94;
      default:
        OUTLINED_FUNCTION_33_3();
        OUTLINED_FUNCTION_39_4();
        sub_220DBDF04(v42);
        v73 = v39;
        v71 = v37;
        switch(v41)
        {
          case 1:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 2:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 3:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 4:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 5:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          case 6:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
          default:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v28)
            {
              OUTLINED_FUNCTION_10();
            }

            break;
        }

        OUTLINED_FUNCTION_2_39();
        OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_10_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_220DC17C0;
        v54 = v41;
        LOBYTE(v76[0]) = v41;
        v55 = VisibilityCondition.shortDescription.getter();
        v57 = v56;
        v58 = MEMORY[0x277D837D0];
        *(v53 + 56) = MEMORY[0x277D837D0];
        v59 = sub_220CEFDB0();
        *(v53 + 32) = v55;
        *(v53 + 40) = v57;
        *(v53 + 96) = v58;
        *(v53 + 104) = v59;
        v60 = v71;
        *(v53 + 64) = v59;
        *(v53 + 72) = v60;
        *(v53 + 80) = v14;
        v35 = sub_220DC05F0();
        sub_220DBDE80(v54);
LABEL_94:

LABEL_98:

        break;
    }
  }

  return v35;
}

void sub_220DBCB0C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  v204 = a3;
  v196 = a4;
  v203 = sub_220DC0300();
  v6 = OUTLINED_FUNCTION_0(v203);
  v208 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_21();
  v190 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14(v162 - v15);
  v202 = sub_220DC02F0();
  v16 = OUTLINED_FUNCTION_0(v202);
  v206 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v20);
  v192 = sub_220DC0960();
  v21 = OUTLINED_FUNCTION_0(v192);
  v205 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v25);
  v188 = sub_220DC0950();
  v26 = OUTLINED_FUNCTION_0(v188);
  v207 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_21();
  v186 = v30;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v31 = OUTLINED_FUNCTION_0(v201);
  v191 = v32;
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v31);
  v200 = (v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x28223BE20](v35);
  v199 = v162 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v197 = v162 - v40;
  MEMORY[0x28223BE20](v39);
  v198 = v162 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v45);
  v47 = v162 - v46;
  v48 = sub_220DBF310();
  v49 = OUTLINED_FUNCTION_0(v48);
  v193 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_21();
  v194 = v53;
  v195 = a1;
  v54 = *a2;
  v55 = *(a2 + 8);
  v57 = *(a2 + 16);
  v56 = *(a2 + 24);
  v58 = *(a2 + 32);
  v59 = *(a2 + 40);
  sub_220CEF48C(a1, v47);
  if (__swift_getEnumTagSinglePayload(v47, 1, v48) != 1)
  {
    (*(v193 + 32))(v194, v47, v48);
    v167 = v48;
    sub_220DBF2F0();
    sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
    v68 = v59;
    sub_220DBE040();
    sub_220DBF300();
    v69 = v68;
    sub_220DBE040();

    static VisibilityCondition.condition(for:)(&v210);
    v168 = v210;
    static VisibilityCondition.condition(for:)(&v209);
    v163 = v209;
    sub_220DC03F0();
    sub_220DC03F0();
    v184 = *MEMORY[0x277D7B4B0];
    v70 = v205;
    v71 = *(v205 + 104);
    v182 = v205 + 104;
    v183 = v71;
    v72 = v185;
    v73 = v192;
    v71(v185);
    v181 = *MEMORY[0x277D7B3F0];
    v74 = v206;
    v75 = *(v206 + 104);
    v179 = v206 + 104;
    v180 = v75;
    v76 = v187;
    v77 = v202;
    v75(v187);
    v178 = sub_220DBE5E0();
    v78 = v189;
    v79 = OUTLINED_FUNCTION_31_8();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
    sub_220DC0810();
    OUTLINED_FUNCTION_22_16();

    sub_220CE1ABC(v78, &qword_27CF95228, &unk_220DC1E60);
    v83 = *(v74 + 8);
    v206 = v74 + 8;
    v177 = v83;
    v83(v76, v77);
    v84 = *(v70 + 8);
    v205 = v70 + 8;
    v176 = v84;
    v84(v72, v73);
    v175 = *MEMORY[0x277D7B408];
    v85 = v208;
    v86 = *(v208 + 104);
    v173 = v208 + 104;
    v174 = v86;
    v87 = v190;
    v88 = v203;
    v86(v190);
    v172 = sub_220DBF100();
    sub_220DBF0D0();
    v171 = sub_220D427C0();
    OUTLINED_FUNCTION_37();
    v165 = sub_220DBE0B0();
    v166 = v89;

    v90 = *(v85 + 8);
    v208 = v85 + 8;
    v170 = v90;
    v90(v87, v88);
    v91 = *(v207 + 8);
    v207 += 8;
    v169 = v91;
    v92 = OUTLINED_FUNCTION_33_3();
    v93(v92);
    sub_220DC0830();
    OUTLINED_FUNCTION_34_3();
    v94();
    v95 = v202;
    OUTLINED_FUNCTION_41_3();
    v96();
    v97 = OUTLINED_FUNCTION_31_8();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v178);
    OUTLINED_FUNCTION_22_16();

    sub_220CE1ABC(v78, &qword_27CF95228, &unk_220DC1E60);
    v177(v76, v95);
    v100 = OUTLINED_FUNCTION_35_5();
    v101(v100);
    v102 = v203;
    OUTLINED_FUNCTION_11_6();
    v103();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_37();
    v162[1] = sub_220DBE0B0();
    v164 = v104;

    v170(v87, v102);
    v105 = OUTLINED_FUNCTION_33_3();
    v169(v105);
    OUTLINED_FUNCTION_34_3();
    v106();
    v107 = v202;
    OUTLINED_FUNCTION_41_3();
    v108();
    v109 = OUTLINED_FUNCTION_31_8();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v178);
    sub_220DC0810();
    OUTLINED_FUNCTION_22_16();

    sub_220CE1ABC(v78, &qword_27CF95228, &unk_220DC1E60);
    v177(v76, v107);
    v112 = OUTLINED_FUNCTION_35_5();
    v113(v112);
    v114 = v203;
    OUTLINED_FUNCTION_11_6();
    v115();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_37();
    v117 = v200;
    v116 = v201;
    v118 = sub_220DBE0B0();
    v120 = v119;

    v170(v87, v114);
    v121 = OUTLINED_FUNCTION_33_3();
    v169(v121);
    sub_220DBE050();
    v123 = v122;
    v124 = v197;
    v125 = v197;
    sub_220DBE050();
    v126 = v204;
    v127 = v116;
    if (v123 == v128)
    {

      sub_220CE1ABC(v195, &qword_27CF94F90, &unk_220DC4410);
      v129 = OUTLINED_FUNCTION_38_4();
      v116(v129);
      v130 = OUTLINED_FUNCTION_14_2();
      v116(v130);
      (v116)(v124, v116);
      v131 = OUTLINED_FUNCTION_37();
      v116(v131);
      (*(v193 + 8))(v194, v167);
      OUTLINED_FUNCTION_37_4();
      v133 = v165;
      v134 = v166;
      v135 = 0;
      v127 = 0;
LABEL_9:
      v136 = 0;
LABEL_18:
      v157 = v196;
      *v196 = v132;
      v157[1] = v133;
      v157[2] = v134;
      v157[3] = v135;
      v157[4] = v127;
      v157[5] = v136;
      return;
    }

    v207 = v118;
    v208 = v120;
    v134 = v164;
    OUTLINED_FUNCTION_37_4();
    v137 = v163;
    if (v138 == v163)
    {
      v139 = sub_220CD8184(0, &qword_27CF95530, 0x277D82BB8);
      v140 = sub_220DBE030();
      v141 = sub_220DBE030();
      v142 = sub_220DC0AB0();

      if (v142)
      {
        sub_220DBE050();
        v144 = v143;
        sub_220DBE050();
        if (v144 != v145)
        {

          sub_220CE1ABC(v195, &qword_27CF94F90, &unk_220DC4410);
          v158 = OUTLINED_FUNCTION_38_4();
          v139(v158);
          v159 = OUTLINED_FUNCTION_14_2();
          v139(v159);
          (v139)(v197, v127);
          (v139)(v198, v127);
          v160 = OUTLINED_FUNCTION_43_2();
          v161(v160);
          OUTLINED_FUNCTION_37_4();
          OUTLINED_FUNCTION_36_4();
          goto LABEL_9;
        }
      }

      sub_220DBE050();
      v147 = v146;
      sub_220DBE050();
      v149 = v148;

      sub_220CE1ABC(v195, &qword_27CF94F90, &unk_220DC4410);
      v150 = OUTLINED_FUNCTION_45_3();
      v117(v150);
      v151 = OUTLINED_FUNCTION_14_2();
      v117(v151);
      (v117)(v197, v127);
      (v117)(v198, v127);
      v152 = OUTLINED_FUNCTION_43_2();
      v153(v152);
      if (v147 != v149)
      {
        OUTLINED_FUNCTION_37_4();
        OUTLINED_FUNCTION_36_4();
        v136 = 0;
LABEL_17:
        v133 = v207;
        v134 = v208;
        goto LABEL_18;
      }
    }

    else
    {

      sub_220CE1ABC(v195, &qword_27CF94F90, &unk_220DC4410);
      v154 = OUTLINED_FUNCTION_45_3();
      v125(v154);
      v155 = OUTLINED_FUNCTION_14_2();
      v125(v155);
      (v125)(v124, v116);
      v156 = OUTLINED_FUNCTION_37();
      v125(v156);
      (*(v193 + 8))(v194, v167);
    }

    v132 = v137 | 0xC000000000000000;
    v135 = v168;
    v127 = v165;
    v136 = v166;
    goto LABEL_17;
  }

  v60 = v204;

  sub_220CE1ABC(v47, &qword_27CF94F90, &unk_220DC4410);
  if (qword_27CF94F40 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v61 = sub_220DBF410();
  __swift_project_value_buffer(v61, qword_27CF95F48);
  v62 = sub_220DBF3F0();
  v63 = sub_220DC0980();
  if (OUTLINED_FUNCTION_19_10(v63))
  {
    v64 = OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_27_4(v64);
    OUTLINED_FUNCTION_12_16(&dword_220CD1000, v65, v66, "Failed to determine the sentence kind for Visibility due to missing extrema values");
    OUTLINED_FUNCTION_17();
  }

  sub_220CE1ABC(v195, &qword_27CF94F90, &unk_220DC4410);
  v67 = v196;
  *v196 = 0x7FFFFFFF8;
  *(v67 + 1) = 0u;
  *(v67 + 3) = 0u;
  v67[5] = 0;
}

uint64_t sub_220DBD970(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = sub_220DC0300();
  v4 = OUTLINED_FUNCTION_0(v3);
  v71 = v5;
  v72 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_21();
  v70 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v65 = &v61 - v13;
  v63 = sub_220DC02F0();
  v14 = OUTLINED_FUNCTION_0(v63);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = sub_220DC0960();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v31 = sub_220DC0950();
  v68 = OUTLINED_FUNCTION_0(v31);
  v69 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v38 = OUTLINED_FUNCTION_0(v64);
  v67 = v39;
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v38);
  v61 = &v61 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v62 = &v61 - v44;
  v45 = *(a1 + 40);
  sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
  v46 = v45;
  sub_220DBE040();
  sub_220DC03F0();
  (*(v25 + 104))(v30, *MEMORY[0x277D7B4B0], v22);
  (*(v16 + 104))(v21, *MEMORY[0x277D7B3E8], v63);
  v47 = sub_220DBE5E0();
  v48 = v65;
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v47);
  sub_220DC0810();
  sub_220DC0280();

  sub_220CE1ABC(v48, &qword_27CF95228, &unk_220DC1E60);
  v49 = *(v16 + 8);
  v50 = OUTLINED_FUNCTION_33_3();
  v51(v50);
  (*(v25 + 8))(v30, v22);
  v53 = v70;
  v52 = v71;
  v54 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x277D7B408], v72);
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220D427C0();
  v55 = v64;
  v56 = v68;
  v57 = v61;
  v58 = sub_220DBE0B0();

  (*(v52 + 8))(v53, v54);
  (*(v69 + 8))(v37, v56);
  v59 = *(v67 + 8);
  v59(v57, v55);
  v59(v62, v55);
  return v58;
}

unint64_t sub_220DBDE80(unint64_t a1)
{
  if (a1 >> 3 != 0xFFFFFFFF)
  {
    return sub_220DBDE94(a1);
  }

  return a1;
}

uint64_t sub_220DBDE94(unint64_t a1)
{
  v1 = a1 >> 62;

  if ((v1 - 1) < 2 || v1)
  {
  }

  return result;
}

uint64_t sub_220DBDF04(unint64_t a1)
{
  if ((a1 >> 62) - 1 < 2 || a1 >> 62)
  {
  }
}

uint64_t OUTLINED_FUNCTION_43_2()
{
  v2 = *(v0 + 8);
  result = *(v1 - 232);
  v4 = *(v1 - 448);
  return result;
}

void OUTLINED_FUNCTION_47_2()
{

  sub_220DBCB0C(v1, v2 - 176, v0, (v2 - 128));
}