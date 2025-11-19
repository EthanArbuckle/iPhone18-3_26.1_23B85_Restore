void TTRReminderTitleAttributesStylerType.timeZoneForFormattingDates.getter()
{
  v0 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();
}

uint64_t sub_21D4E3824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC09CF0;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  return v0;
}

uint64_t TTRReminderTitleAttributesStylerType.requiredKeysForFetchingContacts.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC09CF0;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  return v0;
}

uint64_t sub_21D4E3914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, void **a14)
{
  v62 = a8;
  v56 = a5;
  v58 = a1;
  v60 = a14;
  v57 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v54 - v23;
  v25 = sub_21DBF7A0C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a6 & 1) == 0)
  {
    swift_beginAccess();
    sub_21D29C590(&v63, a4, v56);
    swift_endAccess();
  }

  LODWORD(v56) = a13;
  v54 = a11;
  v55 = a12;
  v29 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v30 = a2;
  v31 = sub_21DBFA12C();
  v32 = [v29 initWithString_];

  v33 = *(type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0) + 24);
  (*(v26 + 104))(v28, *MEMORY[0x277D45708], v25);
  LOBYTE(v29) = sub_21DBF79DC();
  (*(v26 + 8))(v28, v25);
  if (v29)
  {
    [v32 beginEditing];
    sub_21D4E3E9C(v32);
    v65 = v30;
    v66 = a3;
    v63 = a9;
    v64 = a10;
    v34 = sub_21DBF582C();
    (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
    sub_21D176F0C();
    v35 = sub_21DBFBBAC();
    v37 = v36;
    v39 = v38;
    sub_21D0CF7E0(v24, &unk_27CE65010);
    if ((v39 & 1) == 0)
    {
      v65 = v35;
      v66 = v37;
      v63 = v30;
      v64 = a3;
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
      sub_21D4E596C();
      v40 = sub_21DBFB9DC();
      sub_21D4E4130(v32, v40, v41);
    }

    [v32 endEditing];
  }

  sub_21D4E58A4(v58, v21, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  v42 = v57;
  v43 = *(v57 + 20);
  v44 = sub_21DBF79FC();
  (*(*(v44 - 8) + 16))(&v21[v43], v62 + v33, v44);
  *&v21[*(v42 + 24)] = v32;
  v45 = &v21[*(v42 + 28)];
  v46 = v55;
  *v45 = v54;
  *(v45 + 1) = v46;
  v45[16] = v56 & 1;
  v47 = v59;
  sub_21D4E58A4(v21, v59, type metadata accessor for TTRReminderSuggestedAttribute);
  v48 = v60;
  swift_beginAccess();
  v49 = *v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v48 = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v49 = sub_21D2137F0(0, v49[2] + 1, 1, v49);
    *v48 = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_21D2137F0(v51 > 1, v52 + 1, 1, v49);
    *v48 = v49;
  }

  v49[2] = v52 + 1;
  sub_21D4E59D0(v47, v49 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v52, type metadata accessor for TTRReminderSuggestedAttribute);
  swift_endAccess();
  return sub_21D4E590C(v21, type metadata accessor for TTRReminderSuggestedAttribute);
}

void sub_21D4E3E9C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v3 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondaryLabelColor];
  v7 = sub_21D0D8CF0(0, &qword_280D1B8F0);
  v8 = MEMORY[0x277D740A8];
  *(inited + 40) = v6;
  v9 = *v8;
  *(inited + 64) = v7;
  *(inited + 72) = v9;
  v10 = qword_280D176B8;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_21D900614(6);
  v13 = [v12 fontDescriptor];
  v14 = [v13 fontDescriptorWithSymbolicTraits_];

  if (v14)
  {
    v15 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];

    v12 = v15;
  }

  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 80) = v12;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_21D112874();
  v16 = sub_21DBF9E5C();

  v17 = [a1 string];
  v18 = sub_21DBFA16C();
  v20 = v19;

  v21 = MEMORY[0x223D42B30](v18, v20);

  [a1 addAttributes:v16 range:{0, v21}];
}

void sub_21D4E4130(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v7 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 labelColor];
  v11 = sub_21D0D8CF0(0, &qword_280D1B8F0);
  v12 = MEMORY[0x277D740A8];
  *(inited + 40) = v10;
  v13 = *v12;
  *(inited + 64) = v11;
  *(inited + 72) = v13;
  v14 = qword_280D176B8;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_21D900614(7);
  v17 = [v16 fontDescriptor];
  v18 = [v17 fontDescriptorWithSymbolicTraits_];

  if (v18)
  {
    v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];

    v16 = v19;
  }

  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 80) = v16;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_21D112874();
  v20 = sub_21DBF9E5C();

  [a1 addAttributes:v20 range:{a2, a3}];
}

uint64_t sub_21D4E4390()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D130);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v21 - v1;
  v3 = sub_21DBF5C4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF563C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D4E4A74(v2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D148);
  if ((*(*(v11 - 8) + 48))(v2, 1, v11) == 1)
  {
    sub_21D0CF7E0(v2, &qword_27CE5D130);
    return 0;
  }

  else
  {
    v13 = *(v11 + 48);
    (*(v8 + 32))(v10, v2, v7);
    (*(v4 + 32))(v6, &v2[v13], v3);
    v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v15 = sub_21DBF5C0C();
    [v14 setTimeZone_];

    [v14 setDoesRelativeDateFormatting_];
    [v14 setDateStyle_];
    v16 = sub_21DBF4EDC();
    v17 = [v16 rem_isAllDayDateComponents];

    [v14 setTimeStyle_];
    v18 = sub_21DBF55BC();
    v19 = [v14 stringFromDate_];

    v20 = sub_21DBFA16C();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    return v20;
  }
}

uint64_t sub_21D4E46F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D130);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v27[0] = sub_21DBF5C4C();
  v9 = *(v27[0] - 8);
  MEMORY[0x28223BE20](v27[0]);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF563C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = a1;
  sub_21D4E4E04(a2, a3, v8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D148);
  if ((*(*(v16 - 8) + 48))(v8, 1, v16) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5D130);
    return 0;
  }

  else
  {
    v18 = *(v16 + 48);
    (*(v13 + 32))(v15, v8, v12);
    v19 = v27[0];
    (*(v9 + 32))(v11, &v8[v18], v27[0]);
    v20 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v21 = sub_21DBF5C0C();
    [v20 setTimeZone_];

    [v20 setDoesRelativeDateFormatting_];
    [v20 setDateStyle_];
    v22 = sub_21DBF4EDC();
    v23 = [v22 rem_isAllDayDateComponents];

    [v20 setTimeStyle_];
    v24 = sub_21DBF55BC();
    v25 = [v20 stringFromDate_];

    v26 = sub_21DBFA16C();
    (*(v9 + 8))(v11, v19);
    (*(v13 + 8))(v15, v12);
    return v26;
  }
}

uint64_t sub_21D4E4A74@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = sub_21DBF563C();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_21DBF5C4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF507C();
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    v12 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v11(v6, 1, v7) != 1)
    {
      sub_21D0CF7E0(v6, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v13 = objc_opt_self();
  v14 = sub_21DBF4EDC();
  v15 = sub_21DBF5C0C();
  v16 = [v13 rem:v14 dateWithDateComponents:v15 timeZone:?];

  if (v16)
  {
    sub_21DBF55FC();

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D148);
    v18 = *(v17 + 48);
    v19 = v23;
    (*(v1 + 32))(v23, v3, v22);
    (*(v8 + 32))(v19 + v18, v10, v7);
    return (*(*(v17 - 8) + 56))(v19, 0, 1, v17);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D148);
    return (*(*(v21 - 8) + 56))(v23, 1, 1, v21);
  }
}

uint64_t sub_21D4E4E04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v29 = a2;
  v28 = a1;
  v32 = a3;
  v3 = sub_21DBF563C();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_21DBF5C4C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF507C();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    (*(v29 + 16))(v28);
    if (v16(v11, 1, v12) != 1)
    {
      sub_21D0CF7E0(v11, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v17 = objc_opt_self();
  v18 = sub_21DBF4EDC();
  v19 = sub_21DBF5C0C();
  v20 = [v17 rem:v18 dateWithDateComponents:v19 timeZone:?];

  if (v20)
  {
    sub_21DBF55FC();

    v21 = v31;
    v22 = *(v30 + 32);
    v22(v8, v5, v31);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D148);
    v24 = *(v23 + 48);
    v25 = v32;
    v22(v32, v8, v21);
    (*(v13 + 32))(&v25[v24], v15, v12);
    return (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D148);
    return (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  }
}

uint64_t sub_21D4E51D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t sub_21D4E5274()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_21D2137F0(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_21D4E52C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v66 = a8;
  v61 = a5;
  v62 = a1;
  v63 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v64 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v57 - v25;
  v27 = sub_21DBF7A0C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a6 & 1) == 0)
  {
    swift_beginAccess();
    sub_21D29C590(&v67, a4, v61);
    swift_endAccess();
  }

  v60 = a13;
  v58 = a11;
  v59 = a12;
  v61 = a14;
  v31 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v32 = a3;
  v33 = sub_21DBFA12C();
  v34 = [v31 initWithString_];

  v35 = *(type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0) + 24);
  (*(v28 + 104))(v30, *MEMORY[0x277D45708], v27);
  LOBYTE(v31) = sub_21DBF79DC();
  (*(v28 + 8))(v30, v27);
  if (v31)
  {
    [v34 beginEditing];
    v57[1] = a15;
    v57[2] = a16;
    sub_21D4E3E9C(v34);
    v69 = a2;
    v70 = v32;
    v67 = a9;
    v68 = a10;
    v36 = sub_21DBF582C();
    (*(*(v36 - 8) + 56))(v26, 1, 1, v36);
    sub_21D176F0C();
    v37 = sub_21DBFBBAC();
    v38 = v32;
    v40 = v39;
    v42 = v41;
    sub_21D0CF7E0(v26, &unk_27CE65010);
    if ((v42 & 1) == 0)
    {
      v69 = v37;
      v70 = v40;
      v67 = a2;
      v68 = v38;
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
      sub_21D4E596C();
      v43 = sub_21DBFB9DC();
      sub_21D4E4130(v34, v43, v44);
    }

    [v34 endEditing];
  }

  sub_21D4E58A4(v62, v23, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  v45 = v63;
  v46 = *(v63 + 20);
  v47 = sub_21DBF79FC();
  (*(*(v47 - 8) + 16))(&v23[v46], v66 + v35, v47);
  *&v23[*(v45 + 24)] = v34;
  v48 = &v23[*(v45 + 28)];
  v49 = v59;
  *v48 = v58;
  *(v48 + 1) = v49;
  v48[16] = v60 & 1;
  v50 = v64;
  sub_21D4E58A4(v23, v64, type metadata accessor for TTRReminderSuggestedAttribute);
  v51 = v61;
  swift_beginAccess();
  v52 = *(v51 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v51 + 16) = v52;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v52 = sub_21D2137F0(0, v52[2] + 1, 1, v52);
    *(v51 + 16) = v52;
  }

  v55 = v52[2];
  v54 = v52[3];
  if (v55 >= v54 >> 1)
  {
    v52 = sub_21D2137F0(v54 > 1, v55 + 1, 1, v52);
  }

  v52[2] = v55 + 1;
  sub_21D4E59D0(v50, v52 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v55, type metadata accessor for TTRReminderSuggestedAttribute);
  *(v51 + 16) = v52;
  swift_endAccess();
  return sub_21D4E590C(v23, type metadata accessor for TTRReminderSuggestedAttribute);
}

uint64_t sub_21D4E58A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D4E590C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21D4E596C()
{
  result = qword_280D178A0;
  if (!qword_280D178A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE5FB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D178A0);
  }

  return result;
}

uint64_t sub_21D4E59D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D4E5A38(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = v40 - v4;
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v54 = MEMORY[0x277D84F90];
  sub_21D18E678(0, v5 & ~(v5 >> 63), 0);
  v6 = v54;
  if (v47)
  {
    result = sub_21DBFBD0C();
  }

  else
  {
    result = sub_21DBFBCCC();
    v8 = *(a1 + 36);
  }

  v51 = result;
  v52 = v8;
  v53 = v47 != 0;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v10 = a1;
    }

    v42 = a1 + 56;
    v43 = v10;
    v40[1] = v1;
    v41 = a1 + 64;
    v44 = v5;
    v45 = a1;
    while (v9 < v5)
    {
      if (__OFADD__(v9++, 1))
      {
        goto LABEL_37;
      }

      v13 = v51;
      v48 = v52;
      v49 = v53;
      sub_21D3656F4(v51, v52, v53, a1);
      v15 = v14;
      v16 = [v14 name];
      v17 = sub_21DBFA16C();
      v19 = v18;

      v50[0] = v17;
      v50[1] = v19;
      v20 = v6;
      v21 = v46;
      sub_21DBF57AC();
      v22 = sub_21DBF582C();
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      sub_21D176F0C();
      v23 = sub_21DBFBBEC();
      v25 = v24;
      v26 = v21;
      v6 = v20;
      sub_21D0CF7E0(v26, &unk_27CE65010);

      v54 = v20;
      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_21D18E678((v27 > 1), v28 + 1, 1);
        v6 = v54;
      }

      *(v6 + 16) = v28 + 1;
      v29 = v6 + 16 * v28;
      *(v29 + 32) = v23;
      *(v29 + 40) = v25;
      if (v47)
      {
        a1 = v45;
        if (!v49)
        {
          goto LABEL_42;
        }

        if (sub_21DBFBD2C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v5 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58);
        v11 = sub_21DBFAAEC();
        sub_21DBFBDEC();
        result = v11(v50, 0);
        if (v9 == v5)
        {
LABEL_34:
          sub_21D15746C(v51, v52, v53);
          return v6;
        }
      }

      else
      {
        a1 = v45;
        if (v49)
        {
          goto LABEL_43;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v30 = 1 << *(v45 + 32);
        if (v13 >= v30)
        {
          goto LABEL_38;
        }

        v31 = v13 >> 6;
        v32 = *(v42 + 8 * (v13 >> 6));
        if (((v32 >> v13) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v45 + 36) != v48)
        {
          goto LABEL_40;
        }

        v33 = v32 & (-2 << (v13 & 0x3F));
        if (v33)
        {
          v30 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v34 = v31 << 6;
          v35 = v31 + 1;
          v36 = (v41 + 8 * v31);
          while (v35 < (v30 + 63) >> 6)
          {
            v38 = *v36++;
            v37 = v38;
            v34 += 64;
            ++v35;
            if (v38)
            {
              result = sub_21D15746C(v13, v48, 0);
              v30 = __clz(__rbit64(v37)) + v34;
              goto LABEL_33;
            }
          }

          result = sub_21D15746C(v13, v48, 0);
        }

LABEL_33:
        v39 = *(a1 + 36);
        v51 = v30;
        v52 = v39;
        v53 = 0;
        v5 = v44;
        if (v9 == v44)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

char *sub_21D4E5E80(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *v5++;
    v17 = v7;
    a1(&v15, &v17);
    if (v3)
    {
      break;
    }

    v8 = v16;
    if (v16)
    {
      v9 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_21D210F2C(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = sub_21D210F2C((v10 > 1), v11 + 1, 1, v6);
      }

      *(v6 + 2) = v11 + 1;
      v12 = &v6[16 * v11];
      v12[32] = v9;
      v12[33] = BYTE1(v9) & 1;
      v12[34] = BYTE2(v9) & 1;
      *(v12 + 5) = v8;
    }

    else
    {
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_21D4E5FC8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = sub_21DBFBD7C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x223D44740](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v7;
        a1(&v13, &v14);
        if (v3)
        {
          goto LABEL_16;
        }

        if (v13)
        {
          MEMORY[0x223D42D80](v9);
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v11 = v15;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void *sub_21D4E6184(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v26 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(type metadata accessor for TTRRemindersListTreeViewModel.Section(0) - 8);
  v23 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = MEMORY[0x277D84F90];
  v27 = *(v15 + 72);
  v24 = v9;
  v25 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE5A4C8);
    }

    else
    {
      v19 = v26;
      sub_21D0D523C(v8, v26, &qword_27CE581C8);
      sub_21D0D523C(v19, v28, &qword_27CE581C8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_21D211A34(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_21D211A34(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_21D0D523C(v28, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_27CE581C8);
      v9 = v24;
      a1 = v25;
    }

    v17 += v27;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_21D4E64B8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  result = sub_21DBF8E0C();
  v12 = 0;
  while (v9)
  {
LABEL_11:
    v14 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v15 = v14[1];
    v18[0] = *v14;
    v18[1] = v15;
    sub_21DBF8E0C();
    a1(&v17, v18);
    if (v3)
    {

      return v5;
    }

    if (v17)
    {
      MEMORY[0x223D42D80](result);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      result = sub_21DBFA6CC();
      v5 = v19;
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_21D4E665C(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  MEMORY[0x28223BE20](v10);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(v13 + 72);
  v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a3 + v27;
  v31 = (v13 + 48);
  v19 = MEMORY[0x277D84F90];
  v28 = v10;
  v29 = a2;
  while (1)
  {
    a1(v18, v14);
    if (v3)
    {
      break;
    }

    if ((*v31)(v9, 1, v10) == 1)
    {
      sub_21D0CF7E0(v9, &qword_27CE5CFD8);
    }

    else
    {
      v20 = v30;
      sub_21D100F60(v9, v30, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D100F60(v20, v32, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_21D2137C8(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v24 = sub_21D2137C8(v21 > 1, v22 + 1, 1, v19);
        v23 = v17;
        v19 = v24;
      }

      else
      {
        v23 = v17;
      }

      v19[2] = v22 + 1;
      v17 = v23;
      sub_21D100F60(v32, v19 + v27 + v22 * v23, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      v10 = v28;
    }

    v18 += v17;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_21D4E6934(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v31 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v26 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v25 = &v23 - v11;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v13 = 0;
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v29 = a3 & 0xC000000000000001;
    v14 = (v26 + 48);
    v15 = MEMORY[0x277D84F90];
    v24 = a3;
    v27 = i;
    while (1)
    {
      if (v29)
      {
        v16 = MEMORY[0x223D44740](v13, a3, v10);
      }

      else
      {
        if (v13 >= *(v28 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(a3 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v33 = v16;
      v32(&v33);
      if (v3)
      {

        return v15;
      }

      if ((*v14)(v7, 1, v31) == 1)
      {
        sub_21D0CF7E0(v7, &qword_27CE5CFD8);
      }

      else
      {
        v19 = v25;
        sub_21D100F60(v7, v25, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        sub_21D100F60(v19, v30, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_21D2137C8(0, v15[2] + 1, 1, v15);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_21D2137C8(v20 > 1, v21 + 1, 1, v15);
        }

        v15[2] = v21 + 1;
        sub_21D100F60(v30, v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        a3 = v24;
      }

      ++v13;
      if (v18 == v27)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_21D4E6C7C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D198);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C48);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v26 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0) - 8);
  v23 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = MEMORY[0x277D84F90];
  v27 = *(v15 + 72);
  v24 = v9;
  v25 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE5D198);
    }

    else
    {
      v19 = v26;
      sub_21D0D523C(v8, v26, &qword_27CE59C48);
      sub_21D0D523C(v19, v28, &qword_27CE59C48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_21D213818(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_21D213818(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_21D0D523C(v28, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_27CE59C48);
      v9 = v24;
      a1 = v25;
    }

    v17 += v27;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

void *sub_21D4E6FB0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D190);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.ImageAttachment(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.ImageAttachment(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_21D0CF7E0(v9, &qword_27CE5D190);
    }

    else
    {
      v20 = v28;
      sub_21D100F60(v9, v28, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.ImageAttachment);
      sub_21D100F60(v20, v30, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.ImageAttachment);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_21D21383C(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_21D21383C(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_21D100F60(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.ImageAttachment);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_21D4E72CC(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v31 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  v26 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v25 = &v23 - v11;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v13 = 0;
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v29 = a3 & 0xC000000000000001;
    v14 = (v26 + 48);
    v15 = MEMORY[0x277D84F90];
    v24 = a3;
    v27 = i;
    while (1)
    {
      if (v29)
      {
        v16 = MEMORY[0x223D44740](v13, a3, v10);
      }

      else
      {
        if (v13 >= *(v28 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(a3 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v33 = v16;
      v32(&v33);
      if (v3)
      {

        return v15;
      }

      if ((*v14)(v7, 1, v31) == 1)
      {
        sub_21D0CF7E0(v7, &qword_27CE5A408);
      }

      else
      {
        v19 = v25;
        sub_21D100F60(v7, v25, type metadata accessor for TTRRemindersListUncommittedReminder);
        sub_21D100F60(v19, v30, type metadata accessor for TTRRemindersListUncommittedReminder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_21D211BA8(0, v15[2] + 1, 1, v15);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_21D211BA8(v20 > 1, v21 + 1, 1, v15);
        }

        v15[2] = v21 + 1;
        sub_21D100F60(v30, v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, type metadata accessor for TTRRemindersListUncommittedReminder);
        a3 = v24;
      }

      ++v13;
      if (v18 == v27)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_21D4E7614(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D188);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B40);
  v25 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v24 = &v23 - v11;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v13 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v14 = (v25 + 48);
    v15 = MEMORY[0x277D84F90];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v16 = MEMORY[0x223D44740](v13, a3, v10);
      }

      else
      {
        if (v13 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(a3 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v33 = v16;
      v32(&v33);
      if (v3)
      {

        return v15;
      }

      if ((*v14)(v7, 1, v30) == 1)
      {
        sub_21D0CF7E0(v7, &qword_27CE5D188);
      }

      else
      {
        v19 = v24;
        sub_21D0D523C(v7, v24, &qword_27CE59B40);
        sub_21D0D523C(v19, v29, &qword_27CE59B40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_21D214538(0, v15[2] + 1, 1, v15);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_21D214538(v20 > 1, v21 + 1, 1, v15);
        }

        v15[2] = v21 + 1;
        sub_21D0D523C(v29, v15 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, &qword_27CE59B40);
        a3 = v23;
      }

      ++v13;
      if (v18 == v26)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_21D4E7974(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 72);
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v9 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 4);
    v30[0] = *(v6 - 5);
    v30[1] = v11;
    v30[2] = v9;
    v30[3] = v10;
    v30[4] = v7;
    v30[5] = v8;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    a1(&v24, v30);
    if (v4)
    {
      break;
    }

    v13 = v24;
    v12 = v25;
    v15 = v26;
    v14 = v27;
    if (v25)
    {
      v22 = v28;
      v23 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_21D214F38(0, *(v31 + 2) + 1, 1, v31);
      }

      v17 = *(v31 + 2);
      v16 = *(v31 + 3);
      if (v17 >= v16 >> 1)
      {
        v31 = sub_21D214F38((v16 > 1), v17 + 1, 1, v31);
      }

      v18 = v31;
      *(v31 + 2) = v17 + 1;
      v19 = &v18[48 * v17];
      *(v19 + 4) = v13;
      *(v19 + 5) = v12;
      *(v19 + 6) = v15;
      *(v19 + 7) = v14;
      *(v19 + 8) = v22;
      *(v19 + 9) = v23;
    }

    else
    {
      sub_21D4F432C(v24, 0);
    }

    v6 += 6;
    if (!--v5)
    {
      return v31;
    }
  }

  return v31;
}

uint64_t sub_21D4E7B44(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D44740](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x223D42D80]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_21D4E7CF0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(type metadata accessor for TTRSECreateRemindersViewModel.Item(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_21D0CF7E0(v9, &unk_27CE5CD80);
    }

    else
    {
      v20 = v28;
      sub_21D100F60(v9, v28, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D100F60(v20, v30, type metadata accessor for TTRRemindersListViewModel.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_21D211A80(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_21D211A80(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_21D100F60(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for TTRRemindersListViewModel.Item);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_21D4E800C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D180);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v26 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(sub_21DBF68CC() - 8);
  v23 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = MEMORY[0x277D84F90];
  v27 = *(v15 + 72);
  v24 = v9;
  v25 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE5D180);
    }

    else
    {
      v19 = v26;
      sub_21D0D523C(v8, v26, &qword_27CE58180);
      sub_21D0D523C(v19, v28, &qword_27CE58180);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_21D0FBE34(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_21D0FBE34(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_21D0D523C(v28, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_27CE58180);
      v9 = v24;
      a1 = v25;
    }

    v17 += v27;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_21D4E8340(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1B0);
  MEMORY[0x28223BE20](v29);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = sub_21DBF7B0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = *(v9 + 16);
  v28 = v2;
  v16(v11, v2, v8, v13);
  v17 = MEMORY[0x277D45750];
  v26 = sub_21D4F43FC(&qword_280D0C7C0, MEMORY[0x277D45750]);
  sub_21DBFBC3C();
  v18 = v17;
  v19 = v29;
  sub_21D4F43FC(&qword_280D0C7D0, v18);
  v27 = a2;
  v20 = sub_21DBFA10C();
  v21 = *(v19 + 48);
  *v7 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v9 + 32))(&v7[v21], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v22 = v27;
    (v16)(&v7[v21], v27, v8);
    (v16)(v11, v22, v8);
    sub_21DBFBC8C();
  }

  v23 = v30;
  sub_21D0D523C(v7, v30, &qword_27CE5D1B0);
  v24 = *v23;
  (*(v9 + 32))(v31, &v23[*(v19 + 48)], v8);
  return v24;
}

uint64_t sub_21D4E8644()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5D150);
  v1 = __swift_project_value_buffer(v0, qword_27CE5D150);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *TTRReminderTitleAttributesInteractor.__allocating_init(harvester:styler:contactsProvider:locationOptionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 24);
  v18 = *(a2 + 32);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = *(a3 + 24);
  v9 = *(a3 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v10);
  v13 = *(a4 + 24);
  v12 = *(a4 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  *(&v17 + 1) = v18;
  *&v17 = v9;
  v15 = sub_21D4EC9A0(a1, v8, v11, v14, v20, v10, v7, v13, v17, v12);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v15;
}

void *TTRReminderTitleAttributesInteractor.init(harvester:styler:contactsProvider:locationOptionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v7 = *(a2 + 24);
  v29 = *(a2 + 32);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = *(a3 + 24);
  v28 = *(a3 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  v20 = *(a4 + 24);
  v19 = *(a4 + 32);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a4, v20);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  v26 = sub_21D4EC824(v30, v11, v17, v24, v31, v13, v7, v20, v28, v29, v19);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v26;
}

uint64_t TTRReminderTitleAttributesInteractor.resultsPublisher.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_21D4E8AD8(v0);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_21D4E8AD8(uint64_t a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1B8);
  v18 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1C0);
  v5 = *(v4 - 8);
  v16 = v4;
  v17 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = sub_21D4C5020();
  v19 = *(a1 + 152);
  v20 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1C8);
  sub_21D0D0F1C(&qword_280D0C4A8, &qword_27CE5CFA8);
  sub_21D0D0F1C(&qword_280D0C7A8, &qword_27CE5D1C8);
  sub_21DBF923C();

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21D4F4444;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1D0);
  sub_21D0D0F1C(qword_280D0C668, &qword_27CE5D1B8);
  v11 = v15;
  sub_21DBF921C();

  (*(v18 + 8))(v3, v11);
  sub_21D0D0F1C(&qword_280D0C648, &qword_27CE5D1C0);
  v12 = v16;
  v13 = sub_21DBF920C();
  (*(v17 + 8))(v7, v12);
  return v13;
}

uint64_t sub_21D4E8E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_21D4D496C(a1, a2))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = type metadata accessor for TTRReminderTitleAttributesInteractor.Request();
      (*(a2 + *(v8 + 24)))(&v43);
      if (*(&v44 + 1))
      {
        v46 = v43;
        v47 = v44;
        v48 = v45;
        v9 = *(a1 + *(type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0) + 20));
        v10 = (a2 + *(type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0) + 24));
        v12 = *v10;
        v11 = v10[1];
        v37 = v12;
        v36 = v11;
        *&v38 = sub_21D178858(MEMORY[0x277D84F90]);
        sub_21D0D32E4(&v46, &v43);
        v13 = *(&v48 + 1);
        v39 = v8;
        if (*(&v48 + 1))
        {
          v41 = &protocol witness table for REMList;
          *(&v40[1] + 1) = sub_21D0D8CF0(0, &qword_280D17690);
          *&v40[0] = v13;
          v14 = sub_21D0D0FD0(v40, v42);
        }

        else
        {
          v41 = 0;
          memset(v40, 0, sizeof(v40));
          v20 = *(&v47 + 1);
          v19 = v48;
          __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
          v14 = (*(v19 + 184))(v42, v20, v19);
        }

        MEMORY[0x28223BE20](v14);
        v33 = &v43;
        v34 = v42;
        v21 = v13;
        v22 = sub_21D4E6C7C(sub_21D4F44B0, v32, v9);
        v23 = *(v7 + 7);
        v24 = *(v7 + 8);
        v35[0] = __swift_project_boxed_opaque_existential_1(v7 + 4, v23);
        v25 = sub_21D7F6350(v22);

        v26 = sub_21D4C81AC();
        LOBYTE(v22) = v26;
        v35[1] = v35;
        MEMORY[0x28223BE20](v26);
        v33 = v7;
        v34 = &v43;
        v27 = *(v24 + 8);

        v28 = v27(v40, v37, v36, v25, v22 & 1, v38, sub_21D4F44A8, v32, sub_21D4F44AC, v7, v23, v24);

        v29 = *&v40[0];
        v38 = *(v40 + 8);
        sub_21D0CF7E0(v42, &qword_27CE59DC0);
        __swift_destroy_boxed_opaque_existential_0(&v43);
        sub_21D4ECC40(&v46);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1D0);
        v31 = a3 + *(v30 + 48);
        sub_21D105014(a2 + *(v39 + 20), a3, type metadata accessor for TTRRemindersListViewModel.Item);
        *v31 = v29;
        *(v31 + 8) = v38;
        *(v31 + 24) = v28;
        return (*(*(v30 - 8) + 56))(a3, 0, 1, v30);
      }

      sub_21D0CF7E0(&v43, &qword_27CE5D168);
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1D0);
    return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1D0);
  v16 = *(*(v15 - 8) + 56);

  return v16(a3, 1, 1, v15);
}

uint64_t (*TTRReminderTitleAttributesInteractor.resultsPublisher.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = TTRReminderTitleAttributesInteractor.resultsPublisher.getter();
  return sub_21D4E9398;
}

uint64_t TTRReminderTitleAttributesInteractor.requestHarvestAttributesCancelingPrevious(for:editingSessionID:title:textInputModePrimaryLanguage:reminderAndList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(__int128 *__return_ptr, __n128), uint64_t a8)
{
  v9 = v8;
  v121 = a5;
  v119 = a4;
  v118 = a3;
  v124 = a2;
  v14 = sub_21DBF9D8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for TTRReminderTitleAttributesInteractor.Request();
  MEMORY[0x28223BE20](v117);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_21DBF7B0C();
  v127 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v122 = &v104 - v22;
  MEMORY[0x28223BE20](v23);
  v128 = &v104 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v120 = a8;
  a7(&v135, v26);
  if (!*(&v136 + 1))
  {
    return sub_21D0CF7E0(&v135, &qword_27CE5D168);
  }

  v109 = a1;
  v110 = a7;
  v111 = a6;
  v138 = v135;
  v139 = v136;
  v140 = v137;
  sub_21D0D32E4(&v138, &v135);
  v27 = *(&v140 + 1);
  if (*(&v140 + 1))
  {
    *(&v130 + 1) = sub_21D0D8CF0(0, &qword_280D17690);
    v131 = &protocol witness table for REMList;
    *&v129 = v27;
    sub_21D0D0FD0(&v129, v132);
  }

  else
  {
    v131 = 0;
    v130 = 0u;
    v129 = 0u;
    v29 = *(&v139 + 1);
    v30 = v140;
    __swift_project_boxed_opaque_existential_1(&v138, *(&v139 + 1));
    (*(v30 + 184))(v132, v29, v30);
    if (*(&v130 + 1))
    {
      sub_21D0CF7E0(&v129, &qword_27CE59DC0);
    }
  }

  v31 = v133;
  v116 = v9;
  v114 = v14;
  v113 = v15;
  v112 = v17;
  if (v133)
  {
    v32 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    v33 = *(v32 + 8);
    v34 = v27;
    v108 = v33(v31, v32);
    __swift_destroy_boxed_opaque_existential_0(v132);
  }

  else
  {
    v35 = v27;
    sub_21D0CF7E0(v132, &qword_27CE59DC0);
    v108 = 0;
  }

  v36 = *(&v136 + 1);
  v37 = v137;
  __swift_project_boxed_opaque_existential_1(&v135, *(&v136 + 1));
  v38 = (*(v37 + 16))(v36, v37);
  v39 = *(&v136 + 1);
  v40 = v137;
  __swift_project_boxed_opaque_existential_1(&v135, *(&v136 + 1));
  v41 = (*(v40 + 80))(v39, v40);
  if (v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v43 = *(&v136 + 1);
  v44 = v137;
  __swift_project_boxed_opaque_existential_1(&v135, *(&v136 + 1));
  v45 = (*(v44 + 8))(v43, v44);
  sub_21DBF646C();
  v125 = MEMORY[0x223D3EBD0](v42);
  v46 = *(&v136 + 1);
  v47 = v137;
  __swift_project_boxed_opaque_existential_1(&v135, *(&v136 + 1));
  (*(v47 + 200))(v132, v46, v47);
  v48 = v133;
  v49 = v126;
  if (v133)
  {
    v50 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    v51 = (*(v50 + 8))(v48, v50);
    __swift_destroy_boxed_opaque_existential_0(v132);
    v52 = v51 == 0;
  }

  else
  {
    sub_21D0CF7E0(v132, &qword_27CE5D100);
    v52 = 1;
  }

  v115 = v52;
  sub_21DBF63BC();
  v53 = *(&v136 + 1);
  v54 = v137;
  __swift_project_boxed_opaque_existential_1(&v135, *(&v136 + 1));
  (*(v54 + 96))(v53, v54);
  v55 = sub_21DBF639C();
  v56 = *(&v136 + 1);
  v57 = v137;
  __swift_project_boxed_opaque_existential_1(&v135, *(&v136 + 1));
  v58 = (*(v57 + 104))(v56, v57);
  v107 = v38;
  v106 = v45;
  v105 = v55;
  if (v58)
  {
    v59 = v58;

LABEL_18:

    sub_21DBF7ADC();
  }

  else
  {
    if (v42 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
    {
      v61 = 0;
      while (1)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x223D44740](v61, v42);
        }

        else
        {
          if (v61 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v62 = *(v42 + 8 * v61 + 32);
        }

        v63 = v62;
        v64 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        v59 = [v62 trigger];

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v49 = v126;
          goto LABEL_18;
        }

        ++v61;
        if (v64 == i)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:

    v132[0] = MEMORY[0x277D84F90];
    sub_21D4F43FC(&qword_280D0C7C0, MEMORY[0x277D45750]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D170);
    sub_21D0D0F1C(&qword_280D0C3B8, &qword_27CE5D170);
    v49 = v126;
    sub_21DBFBCBC();
  }

  v65 = v116;
  v66 = v124;
  v67 = v123;
  v68 = v122;
  v69 = v115;
  if (!v115)
  {
    sub_21DBF7A9C();
    sub_21D4E8340(v68, v67);
    v70 = *(v127 + 8);
    v70(v67, v49);
    v70(v68, v49);
  }

  v71 = *(&v136 + 1);
  v72 = v137;
  __swift_project_boxed_opaque_existential_1(&v135, *(&v136 + 1));
  if ((*(v72 + 88))(v71, v72))
  {
    sub_21DBF7AEC();
    sub_21D4E8340(v68, v67);
    v73 = *(v127 + 8);
    v73(v67, v49);
    v73(v68, v49);
  }

  v74 = !v69;
  if (sub_21DBF640C())
  {
    sub_21DBF7AFC();
    sub_21D4E8340(v68, v67);
    v75 = *(v127 + 8);
    v75(v67, v49);
    v75(v68, v49);
  }

  v76 = *(&v136 + 1);
  v77 = v137;
  __swift_project_boxed_opaque_existential_1(&v135, *(&v136 + 1));
  (*(v77 + 216))(&v129, v76, v77);
  if (*(&v130 + 1))
  {
    sub_21D0D0FD0(&v129, v132);
    v78 = v133;
    v79 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    v80 = (*(v79 + 8))(v78, v79);
    v81 = sub_21D4E5A38(v80);

    v82 = sub_21D0FC0A8(v81);

    __swift_destroy_boxed_opaque_existential_0(v132);
  }

  else
  {
    sub_21D0CF7E0(&v129, &qword_27CE5A140);
    v82 = MEMORY[0x277D84FA0];
  }

  v83 = sub_21DBF56BC();
  (*(*(v83 - 8) + 16))(v19, v66, v83);
  v84 = *(&v136 + 1);
  v85 = v137;
  __swift_project_boxed_opaque_existential_1(&v135, *(&v136 + 1));
  v86 = *(v85 + 88);
  v87 = v119;
  sub_21DBF8E0C();
  v88 = v86(v84, v85);
  v89 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v90 = v126;
  (*(v127 + 16))(&v19[v89[14]], v128, v126);
  *&v19[v89[5]] = v106;
  v91 = &v19[v89[6]];
  *v91 = v118;
  *(v91 + 1) = v87;
  *&v19[v89[7]] = v108;
  *&v19[v89[8]] = v107;
  *&v19[v89[9]] = v125;
  *&v19[v89[10]] = v105;
  v19[v89[11]] = v74;
  *&v19[v89[12]] = v88;
  *&v19[v89[13]] = v82;
  v92 = &v19[v89[15]];
  v93 = v121;
  v94 = v111;
  *v92 = v121;
  *(v92 + 1) = v94;
  v95 = v117;
  sub_21D105014(v109, &v19[*(v117 + 20)], type metadata accessor for TTRRemindersListViewModel.Item);
  v96 = &v19[*(v95 + 24)];
  v97 = v120;
  *v96 = v110;
  *(v96 + 1) = v97;

  if (v94)
  {
    sub_21DBF8E0C();
    v98._countAndFlagsBits = v93;
    v98._object = v94;
    TTRReminderTitleAttributesHarvester.updateParserIfNeeded(forTextInputPrimaryLanguage:)(v98);
  }

  v99 = *(*(v65 + 24) + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_queue);
  v100 = v112;
  *v112 = v99;
  v101 = v113;
  v102 = v114;
  (*(v113 + 104))(v100, *MEMORY[0x277D85200], v114);
  v103 = v99;
  LOBYTE(v99) = sub_21DBF9DAC();
  result = (*(v101 + 8))(v100, v102);
  if (v99)
  {

    sub_21DBF7D1C();

    sub_21DBF7D1C();
    sub_21D4F437C(v19, type metadata accessor for TTRReminderTitleAttributesInteractor.Request);
    (*(v127 + 8))(v128, v90);
    sub_21D4ECC40(&v138);
    return __swift_destroy_boxed_opaque_existential_0(&v135);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double TTRReminderTitleAttributesInteractor.syncHandleAutoCompleteReminders(_:for:imagesByReminderObjectID:reminderAndList:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v7 = v6;
  *&v44 = a4;
  v43 = a3;
  v42 = a2;
  v11 = sub_21DBF7A0C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF79FC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x277D45708], v11, v17);
  sub_21DBF79EC();
  v46 = v19;
  sub_21D174280(sub_21D4D5620, v45, a1);
  v21 = v20;
  (*(v16 + 8))(v19, v15);
  sub_21D0D3954(a5, &v50, &qword_27CE5D168);
  if (*(&v51 + 1))
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
    sub_21D0D32E4(&v53, &v50);
    v22 = *(&v55 + 1);
    v41 = a6;
    if (*(&v55 + 1))
    {
      *(&v47[1] + 1) = sub_21D0D8CF0(0, &qword_280D17690);
      v48 = &protocol witness table for REMList;
      *&v47[0] = v22;
      v23 = sub_21D0D0FD0(v47, v49);
    }

    else
    {
      v48 = 0;
      memset(v47, 0, sizeof(v47));
      v25 = *(&v54 + 1);
      v26 = v55;
      __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
      v23 = (*(v26 + 184))(v49, v25, v26);
      if (*(&v47[1] + 1))
      {
        v23 = sub_21D0CF7E0(v47, &qword_27CE59DC0);
      }
    }

    MEMORY[0x28223BE20](v23);
    v38 = &v50;
    v39 = v49;
    v27 = v22;
    v28 = sub_21D4E6C7C(sub_21D4ECE84, v37, v21);

    v29 = *(v7 + 7);
    v30 = *(v7 + 8);
    __swift_project_boxed_opaque_existential_1(v7 + 4, v29);
    v31 = sub_21D7F6350(v28);

    v32 = sub_21D4C81AC();
    LOBYTE(v28) = v32;
    MEMORY[0x28223BE20](v32);
    v38 = v7;
    v39 = &v50;
    v33 = *(v30 + 1);

    v38 = v29;
    v39 = v30;
    v37[0] = sub_21D4ECEA8;
    v37[1] = v7;
    v34 = v33(v47, v42, v43, v31, v28 & 1, v44, sub_21D4ECEA0, v37);

    v35 = *&v47[0];
    v44 = *(v47 + 8);
    sub_21D0CF7E0(v49, &qword_27CE59DC0);
    __swift_destroy_boxed_opaque_existential_0(&v50);
    sub_21D4ECC40(&v53);
    v36 = v41;
    *v41 = v35;
    result = *&v44;
    *(v36 + 1) = v44;
    v36[3] = v34;
  }

  else
  {

    sub_21D0CF7E0(&v50, &qword_27CE5D168);
    result = 0.0;
    *a6 = 0u;
    a6[1] = 0u;
  }

  return result;
}

uint64_t sub_21D4EA57C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v232 = a3;
  v236 = a2;
  v237 = a4;
  v239 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v4 - 8);
  v231 = &v215 - v5;
  v234 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v234);
  v230 = &v215 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1A0);
  MEMORY[0x28223BE20](v229);
  v228 = &v215 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v233 = (&v215 - v9);
  v222 = sub_21DBF5A2C();
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v220 = &v215 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v11 - 8);
  v223 = &v215 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v225 = &v215 - v14;
  MEMORY[0x28223BE20](v15);
  v226 = &v215 - v16;
  MEMORY[0x28223BE20](v17);
  v224 = &v215 - v18;
  MEMORY[0x28223BE20](v19);
  v227 = &v215 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v215 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v215 - v25;
  v27 = sub_21DBF509C();
  v235 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v215 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v215 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v215 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v215 - v37;
  v39 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v39);
  v41 = (&v215 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  sub_21D105014(v239 + *(v42 + 20), v41, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v216 = v35;
    v50 = v234;
    v218 = v23;
    v219 = v38;
    v51 = v233;
    v231 = v29;
    v217 = v32;
    v52 = v235;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v53 = *v41;
        v80 = *(v236 + 3);
        v81 = *(v236 + 4);
        __swift_project_boxed_opaque_existential_1(v236, v80);
        v82 = TTRReminderProtocol.mostRelevantAlarmLocationTrigger()(v80, v81);
        if (v82)
        {
          v57 = v82;
          v58 = &qword_280D17748;
          goto LABEL_27;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          v53 = *v41;
          sub_21D0D3954(v232, &v248, &qword_27CE59DC0);
          v108 = v250;
          if (v250)
          {
            v109 = v251;
            __swift_project_boxed_opaque_existential_1(&v248, v250);
            v108 = (*(v109 + 8))(v108, v109);
            __swift_destroy_boxed_opaque_existential_0(&v248);
          }

          else
          {
            sub_21D0CF7E0(&v248, &qword_27CE59DC0);
          }

          v160 = [v53 objectID];
          v161 = v160;
          if (!v108)
          {

            if (v161)
            {

              goto LABEL_99;
            }

            goto LABEL_110;
          }

          if (!v160)
          {

            goto LABEL_99;
          }

          sub_21D0D8CF0(0, &qword_280D17880);
          v83 = sub_21DBFB63C();

          goto LABEL_58;
        }

        v53 = *v41;
        v54 = *(v236 + 3);
        v55 = *(v236 + 4);
        __swift_project_boxed_opaque_existential_1(v236, v54);
        v56 = TTRReminderProtocol.mostRelevantVehicleTrigger()(v54, v55);
        if (v56)
        {
          v57 = v56;
          v58 = &qword_280D17758;
LABEL_27:
          sub_21D0D8CF0(0, v58);
          v83 = sub_21DBFB63C();

LABEL_58:
          goto LABEL_59;
        }
      }

LABEL_31:

LABEL_99:
      v64 = 0;
LABEL_100:
      v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C48);
      v200 = *(v199 + 48);
      v201 = v237;
      sub_21D105014(v239, v237, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      *(v201 + v200) = v64;
      return (*(*(v199 - 8) + 56))(v201, 0, 1, v199);
    }

    if (!EnumCaseMultiPayload)
    {
      v65 = v235;
      v66 = *(v235 + 32);
      v67 = v219;
      v234 = v235 + 32;
      v232 = v66;
      (v66)(v219, v41, v27);
      v68 = sub_21DBF4EDC();
      v69 = [v68 rem_isAllDayDateComponents];

      if (!v69)
      {
LABEL_22:
        v72 = v67;
        v73 = *(v236 + 3);
        v74 = *(v236 + 4);
        __swift_project_boxed_opaque_existential_1(v236, v73);
        v75 = v218;
        (*(v74 + 96))(v73, v74);
        v76 = v227;
        (*(v65 + 16))(v227, v72, v27);
        (*(v65 + 56))(v76, 0, 1, v27);
        v77 = *(v229 + 48);
        sub_21D0D3954(v75, v51, &qword_27CE58D60);
        v236 = v77;
        sub_21D0D3954(v76, &v77[v51], &qword_27CE58D60);
        v78 = *(v65 + 48);
        v79 = v27;
        if (v78(v51, 1, v27) == 1)
        {
          sub_21D0CF7E0(v76, &qword_27CE58D60);
          sub_21D0CF7E0(v75, &qword_27CE58D60);
          (*(v65 + 8))(v219, v27);
          if (v78(&v236[v51], 1, v27) == 1)
          {
            sub_21D0CF7E0(v51, &qword_27CE58D60);
            v64 = 0;
            goto LABEL_115;
          }
        }

        else
        {
          v162 = v224;
          sub_21D0D3954(v51, v224, &qword_27CE58D60);
          v163 = v236;
          if (v78(&v236[v51], 1, v79) != 1)
          {
            v203 = v163 + v51;
            v204 = v217;
            v232(v217, v203, v79);
            sub_21D4F43FC(&qword_27CE5D1A8, MEMORY[0x277CC8990]);
            v205 = v162;
            v49 = sub_21DBFA10C();
            v206 = *(v65 + 8);
            v206(v204, v79);
            sub_21D0CF7E0(v227, &qword_27CE58D60);
            sub_21D0CF7E0(v218, &qword_27CE58D60);
            v206(v219, v79);
            v206(v205, v79);
            sub_21D0CF7E0(v51, &qword_27CE58D60);
            goto LABEL_103;
          }

          sub_21D0CF7E0(v227, &qword_27CE58D60);
          sub_21D0CF7E0(v218, &qword_27CE58D60);
          v164 = *(v65 + 8);
          v164(v219, v79);
          v164(v162, v79);
        }

        sub_21D0CF7E0(v51, &qword_27CE5D1A0);
        goto LABEL_99;
      }

      v71 = *(v236 + 3);
      v70 = *(v236 + 4);
      __swift_project_boxed_opaque_existential_1(v236, v71);
      v65 = v52;
      (*(v70 + 96))(v71, v70);
      if ((*(v52 + 48))(v26, 1, v27) == 1)
      {
        sub_21D0CF7E0(v26, &qword_27CE58D60);
        goto LABEL_22;
      }

      v167 = v216;
      v232(v216, v26, v27);
      v168 = v220;
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v83 = sub_21DBF593C();
      (*(v221 + 8))(v168, v222);
      v169 = *(v65 + 8);
      v169(v167, v27);
      v169(v67, v27);
LABEL_59:
      v64 = 0;
      if (v83)
      {
        goto LABEL_115;
      }

      goto LABEL_100;
    }

    v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
    v111 = v231;
    v112 = v27;
    v233 = *(v52 + 32);
    v233(v231, v41, v27);
    v113 = v41 + v110;
    v114 = v230;
    sub_21D100F60(v113, v230, type metadata accessor for TTRRecurrenceRuleModel);
    if (*&v114[*(v50 + 20)] == 4)
    {
      v115 = *(v236 + 3);
      v116 = *(v236 + 4);
      __swift_project_boxed_opaque_existential_1(v236, v115);
      (*(v116 + 184))(&v248, v115, v116);
      v117 = v250;
      if (v250)
      {
        v118 = v251;
        __swift_project_boxed_opaque_existential_1(&v248, v250);
        v119 = (*(v118 + 72))(v117, v118);
        v120 = [v119 supportsHourlyRecurrence];

        __swift_destroy_boxed_opaque_existential_0(&v248);
        if (v120)
        {
          goto LABEL_40;
        }

        (*(v52 + 8))(v111, v112);
      }

      else
      {
        (*(v52 + 8))(v111, v112);
        sub_21D0CF7E0(&v248, &qword_27CE59DC0);
      }

      sub_21D4F437C(v114, type metadata accessor for TTRRecurrenceRuleModel);
      goto LABEL_110;
    }

LABEL_40:
    v234 = v52 + 32;
    v121 = *(v236 + 3);
    v122 = *(v236 + 4);
    __swift_project_boxed_opaque_existential_1(v236, v121);
    v123 = v226;
    (*(v122 + 96))(v121, v122);
    v124 = v225;
    (*(v52 + 16))(v225, v111, v112);
    (*(v52 + 56))(v124, 0, 1, v112);
    v125 = *(v229 + 48);
    v126 = v228;
    sub_21D0D3954(v123, v228, &qword_27CE58D60);
    v127 = v125;
    sub_21D0D3954(v124, v126 + v125, &qword_27CE58D60);
    v128 = *(v52 + 48);
    if (v128(v126, 1, v112) == 1)
    {
      sub_21D0CF7E0(v124, &qword_27CE58D60);
      v129 = v228;
      sub_21D0CF7E0(v123, &qword_27CE58D60);
      v130 = v128(v129 + v127, 1, v112);
      v131 = v230;
      v132 = v235;
      if (v130 == 1)
      {
        sub_21D0CF7E0(v129, &qword_27CE58D60);
LABEL_106:
        v209 = *(v236 + 3);
        v210 = *(v236 + 4);
        __swift_project_boxed_opaque_existential_1(v236, v209);
        v211 = (*(v210 + 136))(v209, v210);
        if (v211)
        {
          v212 = v211;
          MEMORY[0x28223BE20](v211);
          *(&v215 - 2) = v131;
          v213 = v238;
          v83 = sub_21D17B954(sub_21D4F43DC, (&v215 - 4), v212);
          v238 = v213;

          (*(v132 + 8))(v231, v112);
          sub_21D4F437C(v131, type metadata accessor for TTRRecurrenceRuleModel);
          goto LABEL_59;
        }

        (*(v132 + 8))(v231, v112);
LABEL_75:
        sub_21D4F437C(v131, type metadata accessor for TTRRecurrenceRuleModel);
        goto LABEL_99;
      }
    }

    else
    {
      v165 = v223;
      sub_21D0D3954(v126, v223, &qword_27CE58D60);
      if (v128(v126 + v127, 1, v112) != 1)
      {
        v207 = v217;
        v233(v217, (v126 + v127), v112);
        sub_21D4F43FC(&qword_27CE5D1A8, MEMORY[0x277CC8990]);
        v208 = sub_21DBFA10C();
        v132 = v235;
        v166 = *(v235 + 8);
        v166(v207, v112);
        sub_21D0CF7E0(v225, &qword_27CE58D60);
        sub_21D0CF7E0(v226, &qword_27CE58D60);
        v166(v165, v112);
        sub_21D0CF7E0(v126, &qword_27CE58D60);
        v131 = v230;
        if (v208)
        {
          goto LABEL_106;
        }

LABEL_74:
        v166(v231, v112);
        goto LABEL_75;
      }

      sub_21D0CF7E0(v225, &qword_27CE58D60);
      v129 = v228;
      sub_21D0CF7E0(v226, &qword_27CE58D60);
      v132 = v235;
      (*(v235 + 8))(v165, v112);
      v131 = v230;
    }

    sub_21D0CF7E0(v129, &qword_27CE5D1A0);
    v166 = *(v132 + 8);
    goto LABEL_74;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v235 = *v41;
        type metadata accessor for TTRListColors();
        static TTRListColors.color(for:)(v232, &v248);
        v133 = v248;
        v134 = v249;
        v135 = v250;
        v136 = v251;
        v137 = v252;
        v138 = v253;
        v242 = v248;
        v243 = v249;
        v244 = v250;
        v245 = v251;
        v246 = v252;
        v247 = v253;
        v64 = TTRListColors.Color.nativeColor.getter();
        sub_21D1078C0(v133, *(&v133 + 1), v134, v135, v136, v137, v138);
        v139 = *(v236 + 3);
        v140 = *(v236 + 4);
        __swift_project_boxed_opaque_existential_1(v236, v139);
        v141 = (*(v140 + 88))(v139, v140);
        if (v141 == v235)
        {
          goto LABEL_115;
        }

        goto LABEL_100;
      }

      v44 = *v41;
      v45 = *(v236 + 3);
      v46 = *(v236 + 4);
      __swift_project_boxed_opaque_existential_1(v236, v45);
      (*(v46 + 200))(&v242, v45, v46);
      if (v244)
      {
        sub_21D0D0FD0(&v242, &v248);
        if ((v44 & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_0(&v248);
          v64 = 0;
          goto LABEL_115;
        }

        v47 = v250;
        v48 = v251;
        __swift_project_boxed_opaque_existential_1(&v248, v250);
        v49 = (*(v48 + 16))(v47, v48);
        __swift_destroy_boxed_opaque_existential_0(&v248);
LABEL_103:
        v64 = 0;
        if (v49)
        {
          goto LABEL_115;
        }

        goto LABEL_100;
      }

      sub_21D0CF7E0(&v242, &qword_27CE5D100);
      goto LABEL_99;
    }

    v64 = *v41;
    v84 = *(v236 + 3);
    v85 = *(v236 + 4);
    __swift_project_boxed_opaque_existential_1(v236, v84);
    (*(v85 + 184))(&v248, v84, v85);
    v86 = v250;
    if (v250)
    {
      v87 = v251;
      __swift_project_boxed_opaque_existential_1(&v248, v250);
      v88 = (*(v87 + 72))(v86, v87);
      v89 = [v88 supportsAssignments];

      __swift_destroy_boxed_opaque_existential_0(&v248);
      if (v89)
      {
        v90 = *(v236 + 3);
        v91 = *(v236 + 4);
        __swift_project_boxed_opaque_existential_1(v236, v90);
        v53 = sub_21D4EC2AC(v64, v90, v91);

        if (v53)
        {
          goto LABEL_31;
        }

LABEL_110:
        v64 = 0;
        goto LABEL_115;
      }
    }

    else
    {
      sub_21D0CF7E0(&v248, &qword_27CE59DC0);
    }

    if (qword_27CE56970 != -1)
    {
      goto LABEL_118;
    }

    goto LABEL_50;
  }

  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      v53 = *v41;
      v59 = *(v236 + 3);
      v60 = *(v236 + 4);
      __swift_project_boxed_opaque_existential_1(v236, v59);
      v61 = (*(v60 + 152))(v59, v60);
      if (v61)
      {
        v62 = v61;
        v63 = sub_21DBFB4BC();

        v64 = 0;
        if (v63)
        {
          goto LABEL_115;
        }

        goto LABEL_100;
      }

      goto LABEL_31;
    }

    v142 = *v41;
    type metadata accessor for TTRListColors();
    static TTRListColors.color(for:)(v232, &v248);
    v143 = v248;
    v144 = v249;
    v145 = v250;
    v146 = v251;
    v147 = v252;
    v148 = v253;
    v242 = v248;
    v243 = v249;
    v244 = v250;
    v245 = v251;
    v246 = v252;
    v247 = v253;
    v232 = TTRListColors.Color.nativeColor.getter();
    sub_21D1078C0(v143, *(&v143 + 1), v144, v145, v146, v147, v148);
    v149 = [v142 title];
    if (v149)
    {
      v150 = v149;
      v151 = [v149 string];

      v152 = sub_21DBFA16C();
      v154 = v153;

      if ((v154 & 0x2000000000000000) == 0)
      {
        v155 = v152 & 0xFFFFFFFFFFFFLL;
        goto LABEL_69;
      }
    }

    else
    {

      v154 = 0xE000000000000000;
    }

    v155 = HIBYTE(v154) & 0xF;
LABEL_69:
    v64 = v232;
    if (!v155)
    {
      goto LABEL_115;
    }

    goto LABEL_100;
  }

  v64 = *v41;
  type metadata accessor for TTRListColors();
  static TTRListColors.color(for:)(v232, &v248);
  v92 = v248;
  v93 = v249;
  v94 = v250;
  v95 = v251;
  v96 = v252;
  v97 = v253;
  v242 = v248;
  v243 = v249;
  v244 = v250;
  v245 = v251;
  v246 = v252;
  v247 = v253;
  v232 = TTRListColors.Color.nativeColor.getter();
  sub_21D1078C0(v92, *(&v92 + 1), v93, v94, v95, v96, v97);
  v98 = *(v236 + 3);
  v99 = *(v236 + 4);
  __swift_project_boxed_opaque_existential_1(v236, v98);
  (*(v99 + 216))(&v248, v98, v99);
  if (!v250)
  {

    sub_21D0CF7E0(&v248, &qword_27CE5A140);
LABEL_97:
    v64 = v232;
    goto LABEL_100;
  }

  v230 = v64;
  sub_21D0D0FD0(&v248, &v242);
  v100 = v244;
  v101 = v245;
  __swift_project_boxed_opaque_existential_1(&v242, v244);
  v102 = (*(v101 + 8))(v100, v101);
  v224 = v102;
  if ((v102 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348);
    sub_21D365CC4();
    sub_21DBFAB5C();
    v103 = *(&v248 + 1);
    v104 = v248;
    v105 = v249;
    v106 = v250;
    v107 = v251;
  }

  else
  {
    v170 = -1 << *(v102 + 32);
    v103 = v102 + 56;
    v171 = ~v170;
    v172 = -v170;
    if (v172 < 64)
    {
      v173 = ~(-1 << v172);
    }

    else
    {
      v173 = -1;
    }

    v107 = v173 & *(v102 + 56);
    v174 = sub_21DBF8E0C();
    v105 = v171;
    v106 = 0;
    v104 = v174;
  }

  v175 = v230;
  v223 = v105;
  v176 = (v105 + 64) >> 6;
  v229 = v103;
  v228 = v104;
  v227 = v176;
  while (1)
  {
    v178 = v106;
    if ((v104 & 0x8000000000000000) == 0)
    {
      break;
    }

    v181 = v107;
    v183 = sub_21DBFBDBC();
    if (!v183 || (v254 = v183, sub_21D0D8CF0(0, &qword_280D0C348), swift_dynamicCast(), (v182 = v240) == 0))
    {
LABEL_96:

      sub_21D0CFAF8();

      __swift_destroy_boxed_opaque_existential_0(&v242);
      goto LABEL_97;
    }

LABEL_93:
    v233 = v181;
    v225 = v107;
    v226 = v178;
    v236 = v182;
    v184 = [v182 name];
    v185 = sub_21DBFA16C();
    v187 = v186;

    v240 = v185;
    v241 = v187;
    v188 = v231;
    sub_21DBF57AC();
    v189 = sub_21DBF582C();
    v190 = *(*(v189 - 8) + 56);
    v190(v188, 0, 1, v189);
    sub_21D176F0C();
    v235 = sub_21DBFBBEC();
    v234 = v191;
    sub_21D0CF7E0(v188, &unk_27CE65010);

    v192 = [v175 name];
    v64 = sub_21DBFA16C();
    v194 = v193;

    v240 = v64;
    v241 = v194;
    sub_21DBF57AC();
    v190(v188, 0, 1, v189);
    v195 = v234;
    v196 = sub_21DBFBBEC();
    v198 = v197;
    sub_21D0CF7E0(v188, &unk_27CE65010);

    if (v235 == v196 && v195 == v198)
    {

LABEL_114:
      sub_21D0CFAF8();

      __swift_destroy_boxed_opaque_existential_0(&v242);
      v64 = v232;
      goto LABEL_115;
    }

    v177 = sub_21DBFC64C();

    v175 = v230;
    v103 = v229;
    v104 = v228;
    v176 = v227;
    v107 = v233;
    if (v177)
    {

      goto LABEL_114;
    }
  }

  v179 = v106;
  v180 = v107;
  if (v107)
  {
LABEL_89:
    v181 = (v180 - 1) & v180;
    v182 = *(*(v104 + 48) + ((v106 << 9) | (8 * __clz(__rbit64(v180)))));
    if (!v182)
    {
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  while (1)
  {
    v106 = v179 + 1;
    if (__OFADD__(v179, 1))
    {
      break;
    }

    if (v106 >= v176)
    {
      goto LABEL_96;
    }

    v180 = *(v103 + 8 * v106);
    ++v179;
    if (v180)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_118:
  swift_once();
LABEL_50:
  v156 = sub_21DBF84BC();
  __swift_project_value_buffer(v156, qword_27CE5D150);
  v157 = sub_21DBF84AC();
  v158 = sub_21DBFAECC();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    *v159 = 0;
    _os_log_impl(&dword_21D0C9000, v157, v158, "Suggested attributes should not contain any assignee if the reminder's list does not support assignment.", v159, 2u);
    MEMORY[0x223D46520](v159, -1, -1);
  }

LABEL_115:
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C48);
  return (*(*(v214 - 8) + 56))(v237, 1, 1, v214);
}

uint64_t sub_21D4EC1F0(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRecurrenceRuleModel.init(sourceRule:)(*a1, v6);
  LOBYTE(a2) = _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(v6, a2);
  sub_21D4F437C(v6, type metadata accessor for TTRRecurrenceRuleModel);
  return a2 & 1;
}

void *sub_21D4EC2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 184))(v19, a2, a3);
  v3 = v20;
  if (!v20)
  {
    v16 = &qword_27CE59DC0;
    v17 = v19;
LABEL_16:
    sub_21D0CF7E0(v17, v16);
    return 0;
  }

  v4 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v4 + 96))(v22, v3, v4);
  v5 = v23;
  if (!v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v19);
    v16 = &unk_27CE62630;
    v17 = v22;
    goto LABEL_16;
  }

  v6 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      sub_21D0D8CF0(0, &qword_280D17680);
      v14 = [v12 objectID];
      v15 = sub_21DBFB63C();

      if (v15)
      {

        goto LABEL_22;
      }

      ++v10;
      if (v13 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v12 = 0;
LABEL_22:
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v12;
}

unint64_t sub_21D4EC4D0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4[3];
  v8 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v7);
  v9 = sub_21D4EC2AC(a1, v7, v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *(a3 + 96);
  __swift_project_boxed_opaque_existential_1((a3 + 72), v10);
  v11 = v9;
  TTRParticipantModel.init(sharee:)(v11, &v14.displayName.value._countAndFlagsBits);
  v16.value._rawValue = a2;
  v16.is_nil = v10;
  v12 = REMContactsProviderType.syncContactAndFullName(for:keys:)(&v14, v16);

  v15 = v14;
  sub_21D1D9B90(&v15);
  return v12;
}

void sub_21D4EC5C4(char *a1@<X8>)
{
  v2 = v1;
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  v6 = (*(v5 + 16))(v4, v5);
  if (v6 && (v7 = v6, v8 = sub_21DBFB40C(), v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v10 = v2[17];
    v11 = v2[18];
    __swift_project_boxed_opaque_existential_1(v2 + 14, v10);
    v12 = (*(v11 + 24))(v10, v11);
    if (v12 && (v13 = v12, v14 = sub_21DBFB40C(), v13, (v14 & 1) != 0))
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  *a1 = v9;
}

uint64_t TTRReminderTitleAttributesInteractor.deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0(v0 + 112);

  return v0;
}

uint64_t TTRReminderTitleAttributesInteractor.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0(v0 + 112);

  return swift_deallocClassInstance();
}

void *sub_21D4EC824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = a7;
  v31 = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_0, a2, a7);
  v27 = a6;
  v28 = a9;
  v20 = __swift_allocate_boxed_opaque_existential_0(&v26);
  (*(*(a6 - 8) + 32))(v20, a3, a6);
  v24 = a8;
  v25 = a11;
  v21 = __swift_allocate_boxed_opaque_existential_0(&v23);
  (*(*(a8 - 8) + 32))(v21, a4, a8);
  a5[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1C8);
  swift_allocObject();
  a5[19] = sub_21DBF7D2C();
  a5[3] = a1;
  sub_21D0D0FD0(&v29, (a5 + 4));
  sub_21D0D0FD0(&v26, (a5 + 9));
  sub_21D0D0FD0(&v23, (a5 + 14));
  return a5;
}

void *sub_21D4EC9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v30 = a3;
  v31 = a4;
  v28 = a2;
  v33 = a1;
  v32 = a9;
  v13 = *(a8 - 8);
  v29 = a10;
  MEMORY[0x28223BE20](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  (*(v22 + 16))(v25, v28, a7);
  (*(v17 + 16))(v20, v30, a6);
  (*(v13 + 16))(v15, v31, a8);
  return sub_21D4EC824(v33, v25, v20, v15, v26, a6, a7, a8, v32, *(&v32 + 1), v29);
}

uint64_t type metadata accessor for TTRReminderTitleAttributesInteractor.Request()
{
  result = qword_280D0FF98;
  if (!qword_280D0FF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s15RemindersUICore36TTRReminderTitleAttributesInteractorC13adjustedRange23forDeletingCharactersIn4fromSo8_NSRangeVAH_SStF_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_21DBFAD7C();
  if (v8)
  {
    return 0;
  }

  v10 = v7;
  if (v6 >> 14)
  {
    v13 = sub_21DBFA2AC();
    if (sub_21DBFA3CC() == 32 && v14 == 0xE100000000000000)
    {
    }

    else
    {
      v15 = sub_21DBFC64C();

      if ((v15 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v10 >> 14 >= v13 >> 14)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7 >> 14 >= 4 * v11)
    {
      goto LABEL_18;
    }

    if (sub_21DBFA3CC() == 32 && v12 == 0xE100000000000000)
    {

LABEL_17:
      sub_21DBFA29C();
      goto LABEL_18;
    }
  }

  v16 = sub_21DBFC64C();

  if (v16)
  {
    goto LABEL_17;
  }

LABEL_18:
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
  sub_21D0D0F1C(&qword_280D178A0, &unk_27CE5FB00);
  sub_21D176F0C();
  return sub_21DBFB9DC();
}

void *sub_21D4ECEFC(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
    v9 = v8[5];
    v10 = *(a2 + v9);
    *(a1 + v9) = v10;
    v11 = v8[6];
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
    v15 = v8[7];
    v137 = a3;
    v16 = *(a2 + v15);
    *(a1 + v15) = v16;
    v17 = v8[8];
    v18 = *(a2 + v17);
    *(a1 + v17) = v18;
    *(a1 + v8[9]) = *(a2 + v8[9]);
    *(a1 + v8[10]) = *(a2 + v8[10]);
    *(a1 + v8[11]) = *(a2 + v8[11]);
    *(a1 + v8[12]) = *(a2 + v8[12]);
    v139 = a1;
    *(a1 + v8[13]) = *(a2 + v8[13]);
    v19 = v8[14];
    v138 = a2;
    v20 = sub_21DBF7B0C();
    v133 = *(*(v20 - 8) + 16);
    v21 = v10;
    sub_21DBF8E0C();
    v22 = v16;
    v23 = v137;
    v24 = v18;

    v25 = v139;
    sub_21DBF8E0C();
    v26 = v20;
    v27 = v138;
    v133(v139 + v19, v138 + v19, v26);
    v28 = v8[15];
    v29 = (v139 + v28);
    v30 = (v138 + v28);
    v31 = v30[1];
    *v29 = *v30;
    v29[1] = v31;
    v32 = *(v137 + 20);
    v33 = (v139 + v32);
    v34 = (v138 + v32);
    v35 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    sub_21DBF8E0C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v58 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v59 = *(v58 - 8);
            if ((*(v59 + 48))(v34, 1, v58))
            {
              v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v33, v34, *(*(v60 - 8) + 64));
            }

            else
            {
              *v33 = *v34;
              v69 = v34;
              v70 = *(v58 + 20);
              v71 = sub_21DBF6C1C();
              v135 = *(*(v71 - 8) + 16);
              sub_21DBF8E0C();
              v72 = v33 + v70;
              v73 = v69 + v70;
              v34 = v69;
              v23 = v137;
              v135(v72, v73, v71);
              (*(v59 + 56))(v33, 0, 1, v58);
            }

            v74 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v75 = (v33 + v74);
            v76 = (v34 + v74);
            v77 = v76[1];
            if (v77)
            {
              *v75 = *v76;
              v75[1] = v77;
              v78 = v76[2];
              v75[2] = v78;
              sub_21DBF8E0C();
              v79 = v78;
            }

            else
            {
              *v75 = *v76;
              v75[2] = v76[2];
            }

            goto LABEL_128;
          case 7:
            v64 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v65 = *(v64 - 8);
            if ((*(v65 + 48))(v34, 1, v64))
            {
              v66 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v33, v34, *(*(v66 - 8) + 64));
            }

            else
            {
              v81 = sub_21DBF563C();
              (*(*(v81 - 8) + 16))(v33, v34, v81);
              *(v33 + *(v64 + 20)) = *(v34 + *(v64 + 20));
              (*(v65 + 56))(v33, 0, 1, v64);
            }

            v82 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v33 + *(v82 + 20)) = *(v34 + *(v82 + 20));
            goto LABEL_128;
          case 8:
            *v33 = *v34;
            v37 = v34;
            v38 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v39 = sub_21DBF8D7C();
            (*(*(v39 - 8) + 16))(v33 + v38, &v37[v38], v39);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

LABEL_35:
        memcpy(v33, v34, *(*(v35 - 8) + 64));
LABEL_129:
        v127 = *(v23 + 24);
        v128 = (v25 + v127);
        v129 = (v27 + v127);
        v130 = v129[1];
        *v128 = *v129;
        v128[1] = v130;
        goto LABEL_130;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *v33 = *v34;
        *(v33 + 8) = *(v34 + 8);
        *(v33 + 9) = *(v34 + 9);
        v50 = v34[2];
        v33[2] = v50;
        v51 = v50;
        goto LABEL_128;
      }

      v134 = v34;
      v61 = *v34;
      *v33 = v61;
      v44 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v45 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v46 = *(v45 - 8);
      v62 = *(v46 + 48);
      v63 = v61;
      v49 = v134;
      if (v62(v134 + v44, 1, v45))
      {
LABEL_28:
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v33 + v44, v49 + v44, *(*(v57 - 8) + 64));
        goto LABEL_128;
      }

      v80 = swift_getEnumCaseMultiPayload();
      if (v80 > 4)
      {
        if (v80 <= 7)
        {
          if (v80 == 5 || v80 == 6)
          {
            goto LABEL_113;
          }

          goto LABEL_126;
        }

        if (v80 != 8 && v80 != 9)
        {
          goto LABEL_126;
        }

LABEL_112:
        v124 = *(v134 + v44);
        *(v33 + v44) = v124;
        v125 = v124;
        swift_storeEnumTagMultiPayload();
LABEL_127:
        (*(v46 + 56))(v33 + v44, 0, 1, v45);
        goto LABEL_128;
      }

      if (v80 <= 2)
      {
        if (v80 != 1)
        {
          if (v80 == 2)
          {
            goto LABEL_113;
          }

LABEL_126:
          memcpy(v33 + v44, v134 + v44, *(v46 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v126 = sub_21DBF563C();
      (*(*(v126 - 8) + 16))(v33 + v44, v134 + v44, v126);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v134 = v34;
        v54 = *v34;
        *v33 = v54;
        v44 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v45 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v46 = *(v45 - 8);
        v55 = *(v46 + 48);
        v56 = v54;
        v49 = v134;
        if (v55(v134 + v44, 1, v45))
        {
          goto LABEL_28;
        }

        v68 = swift_getEnumCaseMultiPayload();
        if (v68 > 4)
        {
          if (v68 <= 7)
          {
            if (v68 == 5 || v68 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v68 != 8 && v68 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v68 > 2)
        {
          goto LABEL_113;
        }

        if (v68 == 1)
        {
          goto LABEL_112;
        }

        if (v68 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v134 = v34;
        v43 = *v34;
        *v33 = v43;
        v44 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v45 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v46 = *(v45 - 8);
        v47 = *(v46 + 48);
        v48 = v43;
        v49 = v134;
        if (v47(v134 + v44, 1, v45))
        {
          goto LABEL_28;
        }

        v67 = swift_getEnumCaseMultiPayload();
        if (v67 > 4)
        {
          if (v67 <= 7)
          {
            if (v67 == 5 || v67 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v67 != 8 && v67 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v67 > 2)
        {
          goto LABEL_113;
        }

        if (v67 == 1)
        {
          goto LABEL_112;
        }

        if (v67 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v42 = swift_getEnumCaseMultiPayload();
      if (v42 <= 4)
      {
        if (v42 > 2)
        {
LABEL_65:
          v83 = sub_21DBF563C();
          (*(*(v83 - 8) + 16))(v33, v34, v83);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v42 != 1)
        {
          if (v42 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v84 = *v34;
        *v33 = *v34;
        v85 = v84;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v42 > 7)
      {
        if (v42 == 8 || v42 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v42 == 5 || v42 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(v33, v34, *(*(v41 - 8) + 64));
LABEL_92:
      v89 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v90 = v89[5];
      v91 = v33 + v90;
      v92 = v34 + v90;
      v93 = *(v34 + v90 + 8);
      if (v93)
      {
        v136 = v34;
        v132 = v33;
        *v91 = *v92;
        *(v91 + 1) = v93;
        v94 = *(v92 + 2);
        v95 = *(v92 + 3);
        v96 = *(v92 + 4);
        v97 = *(v92 + 5);
        v98 = *(v92 + 6);
        v99 = *(v92 + 7);
        v100 = v92[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v94, v95, v96, v97, v98, v99, v100);
        *(v91 + 2) = v94;
        *(v91 + 3) = v95;
        *(v91 + 4) = v96;
        *(v91 + 5) = v97;
        *(v91 + 6) = v98;
        *(v91 + 7) = v99;
        v91[64] = v100;
        *(v91 + 65) = *(v92 + 65);
        v101 = v92[120];
        if (v101 == 255)
        {
          *(v91 + 72) = *(v92 + 72);
          *(v91 + 88) = *(v92 + 88);
          *(v91 + 104) = *(v92 + 104);
          v91[120] = v92[120];
          goto LABEL_97;
        }

LABEL_94:
        v102 = *(v92 + 9);
        v103 = *(v92 + 10);
        v104 = *(v92 + 11);
        v105 = *(v92 + 12);
        v106 = *(v92 + 13);
        v107 = *(v92 + 14);
        v108 = v101 & 1;
        sub_21D0FB960(v102, v103, v104, v105, v106, v107, v101 & 1);
        *(v91 + 9) = v102;
        *(v91 + 10) = v103;
        *(v91 + 11) = v104;
        *(v91 + 12) = v105;
        *(v91 + 13) = v106;
        *(v91 + 14) = v107;
        v91[120] = v108;
LABEL_97:
        v27 = v138;
        v25 = v139;
        v34 = v136;
        v23 = v137;
        v33 = v132;
        v91[121] = v92[121];
        goto LABEL_98;
      }

      goto LABEL_95;
    }

    v52 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v53 = swift_getEnumCaseMultiPayload();
    if (v53 <= 4)
    {
      if (v53 > 2)
      {
LABEL_69:
        v86 = sub_21DBF563C();
        (*(*(v86 - 8) + 16))(v33, v34, v86);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v53 != 1)
      {
        if (v53 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v87 = *v34;
      *v33 = *v34;
      v88 = v87;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v53 > 7)
    {
      if (v53 == 8 || v53 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v53 == 5 || v53 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(v33, v34, *(*(v52 - 8) + 64));
LABEL_100:
    v89 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v115 = v89[5];
    v91 = v33 + v115;
    v92 = v34 + v115;
    v116 = *(v34 + v115 + 8);
    if (v116)
    {
      v136 = v34;
      v132 = v33;
      *v91 = *v92;
      *(v91 + 1) = v116;
      v117 = *(v92 + 2);
      v118 = *(v92 + 3);
      v119 = *(v92 + 4);
      v120 = *(v92 + 5);
      v121 = *(v92 + 6);
      v122 = *(v92 + 7);
      v123 = v92[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v117, v118, v119, v120, v121, v122, v123);
      *(v91 + 2) = v117;
      *(v91 + 3) = v118;
      *(v91 + 4) = v119;
      *(v91 + 5) = v120;
      *(v91 + 6) = v121;
      *(v91 + 7) = v122;
      v91[64] = v123;
      *(v91 + 65) = *(v92 + 65);
      v101 = v92[120];
      if (v101 == 255)
      {
        *(v91 + 72) = *(v92 + 72);
        *(v91 + 88) = *(v92 + 88);
        *(v91 + 104) = *(v92 + 104);
        v91[120] = v92[120];
        goto LABEL_97;
      }

      goto LABEL_94;
    }

LABEL_95:
    v109 = *(v92 + 5);
    *(v91 + 4) = *(v92 + 4);
    *(v91 + 5) = v109;
    *(v91 + 6) = *(v92 + 6);
    *(v91 + 106) = *(v92 + 106);
    v110 = *(v92 + 1);
    *v91 = *v92;
    *(v91 + 1) = v110;
    v111 = *(v92 + 3);
    *(v91 + 2) = *(v92 + 2);
    *(v91 + 3) = v111;
    v27 = v138;
    v25 = v139;
    v23 = v137;
LABEL_98:
    *(v33 + v89[6]) = *(v34 + v89[6]);
    *(v33 + v89[7]) = *(v34 + v89[7]);
    *(v33 + v89[8]) = *(v34 + v89[8]);
    *(v33 + v89[9]) = *(v34 + v89[9]);
    *(v33 + v89[10]) = *(v34 + v89[10]);
    v112 = v89[11];
    v113 = *(v34 + v112);
    *(v33 + v112) = v113;
    v114 = v113;
    goto LABEL_128;
  }

  v40 = *a2;
  *a1 = *a2;
  v25 = (v40 + ((v5 + 16) & ~v5));
LABEL_130:

  return v25;
}

uint64_t sub_21D4EE7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);

  v6 = v5[14];
  v7 = sub_21DBF7B0C();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);

  v8 = a1 + *(a2 + 20);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_46;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 4)
    {
      if (v12 <= 7)
      {
        if (v12 != 5 && v12 != 6)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v12 != 8 && v12 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v12 > 2)
      {
        goto LABEL_37;
      }

      if (v12 != 1)
      {
        if (v12 != 2)
        {
LABEL_41:
          v22 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v23 = v8 + *(v22 + 20);
          if (*(v23 + 8))
          {

            sub_21D179EF0(*(v23 + 16), *(v23 + 24), *(v23 + 32), *(v23 + 40), *(v23 + 48), *(v23 + 56), *(v23 + 64));
            v24 = *(v23 + 120);
            if (v24 != 255)
            {
              sub_21D1078C0(*(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96), *(v23 + 104), *(v23 + 112), v24 & 1);
            }
          }

          goto LABEL_46;
        }

LABEL_37:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(v8, v21);
        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_30:

      goto LABEL_46;
    }

LABEL_16:

    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v14 - 8) + 48))(v8 + v13, 1, v14))
    {
      goto LABEL_46;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 4)
    {
      if (v15 <= 7)
      {
        if (v15 != 5 && v15 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 8))(v8 + v13, v25);
        goto LABEL_46;
      }

      if (v15 != 8 && v15 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v15 > 2)
      {
        goto LABEL_45;
      }

      if (v15 != 1)
      {
        if (v15 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v19 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if (!(*(*(v19 - 8) + 48))(v8, 1, v19))
      {
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(v8, v20);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v10 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v11 = sub_21DBF8D7C();
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
    }

    goto LABEL_46;
  }

  v16 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v16 - 8) + 48))(v8, 1, v16))
  {

    v17 = *(v16 + 20);
    v18 = sub_21DBF6C1C();
    (*(*(v18 - 8) + 8))(v8 + v17, v18);
  }

  v8 += *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v8 + 8))
  {

    goto LABEL_30;
  }

LABEL_46:
}

uint64_t sub_21D4EECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBF56BC();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v7 = v6[5];
  v134 = *(a2 + v7);
  *(a1 + v7) = v134;
  v8 = v6[6];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = v6[7];
  v13 = *(a2 + v12);
  *(a1 + v12) = v13;
  v14 = v6[8];
  v15 = *(a2 + v14);
  *(a1 + v14) = v15;
  *(a1 + v6[9]) = *(a2 + v6[9]);
  *(a1 + v6[10]) = *(a2 + v6[10]);
  *(a1 + v6[11]) = *(a2 + v6[11]);
  *(a1 + v6[12]) = *(a2 + v6[12]);
  *(a1 + v6[13]) = *(a2 + v6[13]);
  v16 = v6[14];
  v17 = sub_21DBF7B0C();
  v130 = *(*(v17 - 8) + 16);
  v18 = v134;
  sub_21DBF8E0C();
  v19 = v13;
  v20 = a3;
  v21 = v15;

  sub_21DBF8E0C();
  v22 = v17;
  v23 = a2;
  v130(a1 + v16, a2 + v16, v22);
  v24 = v6[15];
  v25 = (a1 + v24);
  v26 = (a2 + v24);
  v27 = v26[1];
  *v25 = *v26;
  v25[1] = v27;
  v28 = *(a3 + 20);
  v29 = (a1 + v28);
  v30 = (v23 + v28);
  v31 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  sub_21DBF8E0C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v48 = *v30;
        *v29 = *v30;
        v38 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v40 = *(v49 - 8);
        v41 = v30;
        v50 = *(v40 + 48);
        v51 = v48;
        if (v50(v41 + v38, 1, v49))
        {
          goto LABEL_26;
        }

        v67 = swift_getEnumCaseMultiPayload();
        v64 = v41;
        v65 = v49;
        if (v67 > 4)
        {
          v20 = a3;
          v66 = v38;
          if (v67 <= 7)
          {
            if (v67 == 5 || v67 == 6)
            {
              goto LABEL_111;
            }

            goto LABEL_124;
          }

          if (v67 != 8 && v67 != 9)
          {
            goto LABEL_124;
          }

          goto LABEL_110;
        }

        v20 = a3;
        v66 = v38;
        if (v67 > 2)
        {
          goto LABEL_111;
        }

        if (v67 == 1)
        {
          goto LABEL_110;
        }

        if (v67 != 2)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v37 = *v30;
        *v29 = *v30;
        v38 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v40 = *(v39 - 8);
        v41 = v30;
        v42 = *(v40 + 48);
        v43 = v37;
        if (v42(v41 + v38, 1, v39))
        {
          goto LABEL_26;
        }

        v63 = swift_getEnumCaseMultiPayload();
        v64 = v41;
        v65 = v39;
        if (v63 > 4)
        {
          v20 = a3;
          v66 = v38;
          if (v63 <= 7)
          {
            if (v63 == 5 || v63 == 6)
            {
              goto LABEL_111;
            }

            goto LABEL_124;
          }

          if (v63 != 8 && v63 != 9)
          {
            goto LABEL_124;
          }

          goto LABEL_110;
        }

        v20 = a3;
        v66 = v38;
        if (v63 > 2)
        {
          goto LABEL_111;
        }

        if (v63 == 1)
        {
          goto LABEL_110;
        }

        if (v63 != 2)
        {
          goto LABEL_124;
        }
      }

      goto LABEL_111;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v36 = swift_getEnumCaseMultiPayload();
      v128 = a1;
      v129 = v23;
      if (v36 <= 4)
      {
        if (v36 > 2)
        {
LABEL_63:
          v79 = sub_21DBF563C();
          (*(*(v79 - 8) + 16))(v29, v30, v79);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v36 != 1)
        {
          if (v36 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v80 = *v30;
        *v29 = *v30;
        v81 = v80;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v36 > 7)
      {
        if (v36 == 8 || v36 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v36 == 5 || v36 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(v29, v30, *(*(v35 - 8) + 64));
LABEL_90:
      v85 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v86 = v85[5];
      v87 = v29 + v86;
      v88 = v30 + v86;
      v89 = *(v30 + v86 + 8);
      if (v89)
      {
        v131 = v29;
        v133 = v30;
        *v87 = *v88;
        *(v87 + 1) = v89;
        v90 = *(v88 + 2);
        v91 = *(v88 + 3);
        v92 = *(v88 + 4);
        v93 = *(v88 + 5);
        v94 = *(v88 + 6);
        v95 = *(v88 + 7);
        v96 = v88[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v90, v91, v92, v93, v94, v95, v96);
        *(v87 + 2) = v90;
        *(v87 + 3) = v91;
        *(v87 + 4) = v92;
        *(v87 + 5) = v93;
        *(v87 + 6) = v94;
        *(v87 + 7) = v95;
        v87[64] = v96;
        *(v87 + 65) = *(v88 + 65);
        v97 = v88[120];
        if (v97 == 255)
        {
          *(v87 + 72) = *(v88 + 72);
          *(v87 + 88) = *(v88 + 88);
          *(v87 + 104) = *(v88 + 104);
          v87[120] = v88[120];
          goto LABEL_95;
        }

LABEL_92:
        v98 = *(v88 + 9);
        v99 = *(v88 + 10);
        v100 = *(v88 + 11);
        v101 = *(v88 + 12);
        v102 = *(v88 + 13);
        v103 = *(v88 + 14);
        v104 = v97 & 1;
        sub_21D0FB960(v98, v99, v100, v101, v102, v103, v97 & 1);
        *(v87 + 9) = v98;
        *(v87 + 10) = v99;
        *(v87 + 11) = v100;
        *(v87 + 12) = v101;
        *(v87 + 13) = v102;
        *(v87 + 14) = v103;
        v87[120] = v104;
LABEL_95:
        a1 = v128;
        v23 = v129;
        v20 = a3;
        v87[121] = v88[121];
        v29 = v131;
        v30 = v133;
        goto LABEL_96;
      }

      goto LABEL_93;
    }

    v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v47 = swift_getEnumCaseMultiPayload();
    v128 = a1;
    v129 = v23;
    if (v47 <= 4)
    {
      if (v47 > 2)
      {
LABEL_67:
        v82 = sub_21DBF563C();
        (*(*(v82 - 8) + 16))(v29, v30, v82);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v47 != 1)
      {
        if (v47 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v83 = *v30;
      *v29 = *v30;
      v84 = v83;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v47 > 7)
    {
      if (v47 == 8 || v47 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v47 == 5 || v47 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(v29, v30, *(*(v46 - 8) + 64));
LABEL_98:
    v85 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v111 = v85[5];
    v87 = v29 + v111;
    v88 = v30 + v111;
    v112 = *(v30 + v111 + 8);
    if (v112)
    {
      v131 = v29;
      v133 = v30;
      *v87 = *v88;
      *(v87 + 1) = v112;
      v113 = *(v88 + 2);
      v114 = *(v88 + 3);
      v116 = *(v88 + 4);
      v115 = *(v88 + 5);
      v118 = *(v88 + 6);
      v117 = *(v88 + 7);
      v119 = v88[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v113, v114, v116, v115, v118, v117, v119);
      *(v87 + 2) = v113;
      *(v87 + 3) = v114;
      *(v87 + 4) = v116;
      *(v87 + 5) = v115;
      *(v87 + 6) = v118;
      *(v87 + 7) = v117;
      v87[64] = v119;
      *(v87 + 65) = *(v88 + 65);
      v97 = v88[120];
      if (v97 == 255)
      {
        *(v87 + 72) = *(v88 + 72);
        *(v87 + 88) = *(v88 + 88);
        *(v87 + 104) = *(v88 + 104);
        v87[120] = v88[120];
        goto LABEL_95;
      }

      goto LABEL_92;
    }

LABEL_93:
    v105 = *(v88 + 5);
    *(v87 + 4) = *(v88 + 4);
    *(v87 + 5) = v105;
    *(v87 + 6) = *(v88 + 6);
    *(v87 + 106) = *(v88 + 106);
    v106 = *(v88 + 1);
    *v87 = *v88;
    *(v87 + 1) = v106;
    v107 = *(v88 + 3);
    *(v87 + 2) = *(v88 + 2);
    *(v87 + 3) = v107;
    v20 = a3;
LABEL_96:
    *(v29 + v85[6]) = *(v30 + v85[6]);
    *(v29 + v85[7]) = *(v30 + v85[7]);
    *(v29 + v85[8]) = *(v30 + v85[8]);
    *(v29 + v85[9]) = *(v30 + v85[9]);
    *(v29 + v85[10]) = *(v30 + v85[10]);
    v108 = v85[11];
    v109 = *(v30 + v108);
    *(v29 + v108) = v109;
    v110 = v109;
    goto LABEL_126;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v29 = *v30;
      *(v29 + 8) = *(v30 + 8);
      *(v29 + 9) = *(v30 + 9);
      v44 = v30[2];
      v29[2] = v44;
      v45 = v44;
      goto LABEL_126;
    }

    v56 = *v30;
    *v29 = *v30;
    v38 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v57 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v40 = *(v57 - 8);
    v41 = v30;
    v58 = *(v40 + 48);
    v59 = v56;
    if (v58(v41 + v38, 1, v57))
    {
LABEL_26:
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v29 + v38, v41 + v38, *(*(v52 - 8) + 64));
      v20 = a3;
      goto LABEL_126;
    }

    v76 = swift_getEnumCaseMultiPayload();
    v64 = v41;
    v65 = v57;
    if (v76 > 4)
    {
      v20 = a3;
      v66 = v38;
      if (v76 <= 7)
      {
        if (v76 == 5 || v76 == 6)
        {
          goto LABEL_111;
        }

        goto LABEL_124;
      }

      if (v76 != 8 && v76 != 9)
      {
        goto LABEL_124;
      }

LABEL_110:
      v120 = *(v64 + v66);
      *(v29 + v66) = v120;
      v121 = v120;
      swift_storeEnumTagMultiPayload();
LABEL_125:
      (*(v40 + 56))(v29 + v66, 0, 1, v65);
      goto LABEL_126;
    }

    v20 = a3;
    v66 = v38;
    if (v76 <= 2)
    {
      if (v76 != 1)
      {
        if (v76 == 2)
        {
          goto LABEL_111;
        }

LABEL_124:
        memcpy(v29 + v66, v64 + v66, *(v40 + 64));
        goto LABEL_125;
      }

      goto LABEL_110;
    }

LABEL_111:
    v122 = sub_21DBF563C();
    (*(*(v122 - 8) + 16))(v29 + v66, v64 + v66, v122);
    swift_storeEnumTagMultiPayload();
    goto LABEL_125;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v53 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(v30, 1, v53))
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(v29, v30, *(*(v55 - 8) + 64));
      }

      else
      {
        *v29 = *v30;
        v68 = *(v53 + 20);
        v69 = sub_21DBF6C1C();
        v132 = *(*(v69 - 8) + 16);
        sub_21DBF8E0C();
        v132(v29 + v68, v30 + v68, v69);
        (*(v54 + 56))(v29, 0, 1, v53);
      }

      v70 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v71 = (v29 + v70);
      v72 = (v30 + v70);
      v73 = v72[1];
      v20 = a3;
      if (v73)
      {
        *v71 = *v72;
        v71[1] = v73;
        v74 = v72[2];
        v71[2] = v74;
        sub_21DBF8E0C();
        v75 = v74;
      }

      else
      {
        *v71 = *v72;
        v71[2] = v72[2];
      }

      goto LABEL_126;
    case 7:
      v60 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v30, 1, v60))
      {
        v62 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(v29, v30, *(*(v62 - 8) + 64));
      }

      else
      {
        v77 = sub_21DBF563C();
        (*(*(v77 - 8) + 16))(v29, v30, v77);
        *(v29 + *(v60 + 20)) = *(v30 + *(v60 + 20));
        (*(v61 + 56))(v29, 0, 1, v60);
      }

      v78 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(v29 + *(v78 + 20)) = *(v30 + *(v78 + 20));
      goto LABEL_126;
    case 8:
      *v29 = *v30;
      v33 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v34 = sub_21DBF8D7C();
      (*(*(v34 - 8) + 16))(v29 + v33, v30 + v33, v34);
LABEL_126:
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
  }

LABEL_33:
  memcpy(v29, v30, *(*(v31 - 8) + 64));
LABEL_127:
  v123 = *(v20 + 24);
  v124 = (a1 + v123);
  v125 = (v23 + v123);
  v126 = v125[1];
  *v124 = *v125;
  v124[1] = v126;

  return a1;
}

uint64_t sub_21D4F0518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v8 = v7[5];
  v9 = *(a2 + v8);
  v10 = *(a1 + v8);
  *(a1 + v8) = v9;
  v11 = v9;

  v12 = v7[6];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  *v13 = *v14;
  v13[1] = v14[1];
  sub_21DBF8E0C();

  v15 = v7[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  *(a1 + v15) = v17;
  v18 = v17;

  v19 = v7[8];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  *(a1 + v19) = v21;
  v22 = v21;

  *(a1 + v7[9]) = *(a2 + v7[9]);

  *(a1 + v7[10]) = *(a2 + v7[10]);

  *(a1 + v7[11]) = *(a2 + v7[11]);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  *(a1 + v7[13]) = *(a2 + v7[13]);
  sub_21DBF8E0C();

  v23 = v7[14];
  v24 = sub_21DBF7B0C();
  (*(*(v24 - 8) + 24))(a1 + v23, a2 + v23, v24);
  v25 = v7[15];
  v26 = (a1 + v25);
  v27 = (a2 + v25);
  *v26 = *v27;
  v26[1] = v27[1];
  sub_21DBF8E0C();

  if (a1 != a2)
  {
    v28 = *(a3 + 20);
    v29 = (a1 + v28);
    v30 = (a2 + v28);
    sub_21D4F437C(a1 + v28, type metadata accessor for TTRRemindersListViewModel.Item);
    v31 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v56 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v57 = *(v56 - 8);
            if ((*(v57 + 48))(v30, 1, v56))
            {
              v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v29, v30, *(*(v58 - 8) + 64));
            }

            else
            {
              *v29 = *v30;
              v70 = *(v56 + 20);
              v71 = sub_21DBF6C1C();
              v162 = *(*(v71 - 8) + 16);
              sub_21DBF8E0C();
              v162(v29 + v70, v30 + v70, v71);
              (*(v57 + 56))(v29, 0, 1, v56);
            }

            v72 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v73 = (v29 + v72);
            v74 = (v30 + v72);
            if (v74[1])
            {
              *v73 = *v74;
              v73[1] = v74[1];
              v75 = v74[2];
              v73[2] = v75;
              sub_21DBF8E0C();
              v76 = v75;
            }

            else
            {
              v77 = *v74;
              v73[2] = v74[2];
              *v73 = v77;
            }

            goto LABEL_132;
          case 7:
            v63 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v64 = *(v63 - 8);
            if ((*(v64 + 48))(v30, 1, v63))
            {
              v65 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v29, v30, *(*(v65 - 8) + 64));
            }

            else
            {
              v79 = sub_21DBF563C();
              (*(*(v79 - 8) + 16))(v29, v30, v79);
              *(v29 + *(v63 + 20)) = *(v30 + *(v63 + 20));
              (*(v64 + 56))(v29, 0, 1, v63);
            }

            v80 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v29 + *(v80 + 20)) = *(v30 + *(v80 + 20));
            goto LABEL_132;
          case 8:
            *v29 = *v30;
            v33 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v34 = sub_21DBF8D7C();
            (*(*(v34 - 8) + 16))(v29 + v33, v30 + v33, v34);
LABEL_132:
            swift_storeEnumTagMultiPayload();
            goto LABEL_133;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *v29 = *v30;
        *(v29 + 8) = *(v30 + 8);
        *(v29 + 9) = *(v30 + 9);
        *(v29 + 10) = *(v30 + 10);
        v45 = v30[2];
        v29[2] = v45;
        v46 = v45;
        goto LABEL_132;
      }

      v168 = a3;
      v59 = *v30;
      *v29 = *v30;
      v50 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v51 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v52 = *(v51 - 8);
      v53 = v30;
      v60 = *(v52 + 48);
      v61 = v59;
      if (v60(&v53[v50], 1, v51))
      {
LABEL_31:
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v29 + v50, &v53[v50], *(*(v62 - 8) + 64));
        a3 = v168;
        goto LABEL_132;
      }

      v78 = swift_getEnumCaseMultiPayload();
      v68 = v53;
      v69 = v50;
      if (v78 > 4)
      {
        a3 = v168;
        if (v78 <= 7)
        {
          if (v78 == 5 || v78 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_130;
        }

        if (v78 != 8 && v78 != 9)
        {
          goto LABEL_130;
        }

LABEL_117:
        v145 = *&v68[v69];
        *(v29 + v69) = v145;
        v146 = v145;
        swift_storeEnumTagMultiPayload();
        goto LABEL_131;
      }

      a3 = v168;
      if (v78 <= 2)
      {
        if (v78 != 1)
        {
          if (v78 == 2)
          {
            goto LABEL_114;
          }

LABEL_130:
          memcpy(v29 + v69, &v68[v69], *(v52 + 64));
          goto LABEL_131;
        }

        goto LABEL_117;
      }

LABEL_114:
      v144 = sub_21DBF563C();
      (*(*(v144 - 8) + 16))(v29 + v69, &v68[v69], v144);
      swift_storeEnumTagMultiPayload();
LABEL_131:
      (*(v52 + 56))(v29 + v69, 0, 1, v51);
      goto LABEL_132;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
LABEL_34:
          memcpy(v29, v30, *(*(v31 - 8) + 64));
          goto LABEL_133;
        }

        v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v36 = swift_getEnumCaseMultiPayload();
        v165 = a3;
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_64;
            }

            goto LABEL_90;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_90;
          }
        }

        else
        {
          if (v36 > 2)
          {
LABEL_64:
            v81 = sub_21DBF563C();
            (*(*(v81 - 8) + 16))(v29, v30, v81);
            swift_storeEnumTagMultiPayload();
LABEL_91:
            v87 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v88 = v87[5];
            v89 = v29 + v88;
            v90 = v30 + v88;
            if (*(v30 + v88 + 8))
            {
              v160 = v30;
              v163 = v29;
              *v89 = *v90;
              *(v89 + 1) = *(v90 + 1);
              v92 = *(v90 + 2);
              v91 = *(v90 + 3);
              v93 = *(v90 + 4);
              v94 = *(v90 + 5);
              v95 = *(v90 + 6);
              v152 = *(v90 + 7);
              v156 = v90[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v92, v91, v93, v94, v95, v152, v156);
              *(v89 + 2) = v92;
              *(v89 + 3) = v91;
              *(v89 + 4) = v93;
              *(v89 + 5) = v94;
              *(v89 + 6) = v95;
              *(v89 + 7) = v152;
              v89[64] = v156;
              v89[65] = v90[65];
              v89[66] = v90[66];
              v89[67] = v90[67];
              v89[68] = v90[68];
              v96 = v90[120];
              if (v96 == 255)
              {
                v108 = *(v90 + 72);
                v109 = *(v90 + 88);
                v110 = *(v90 + 104);
                v89[120] = v90[120];
                *(v89 + 104) = v110;
                *(v89 + 88) = v109;
                *(v89 + 72) = v108;
              }

              else
              {
                v153 = *(v90 + 10);
                v157 = *(v90 + 9);
                v98 = *(v90 + 11);
                v97 = *(v90 + 12);
                v99 = *(v90 + 13);
                v100 = *(v90 + 14);
                v101 = v96 & 1;
                sub_21D0FB960(v157, v153, v98, v97, v99, v100, v96 & 1);
                *(v89 + 9) = v157;
                *(v89 + 10) = v153;
                *(v89 + 11) = v98;
                *(v89 + 12) = v97;
                *(v89 + 13) = v99;
                *(v89 + 14) = v100;
                v89[120] = v101;
              }

              a3 = v165;
              v89[121] = v90[121];
              v30 = v160;
              v29 = v163;
            }

            else
            {
              v102 = *v90;
              v103 = *(v90 + 1);
              v104 = *(v90 + 3);
              *(v89 + 2) = *(v90 + 2);
              *(v89 + 3) = v104;
              *v89 = v102;
              *(v89 + 1) = v103;
              v105 = *(v90 + 4);
              v106 = *(v90 + 5);
              v107 = *(v90 + 6);
              *(v89 + 106) = *(v90 + 106);
              *(v89 + 5) = v106;
              *(v89 + 6) = v107;
              *(v89 + 4) = v105;
            }

            *(v29 + v87[6]) = *(v30 + v87[6]);
            *(v29 + v87[7]) = *(v30 + v87[7]);
            *(v29 + v87[8]) = *(v30 + v87[8]);
            *(v29 + v87[9]) = *(v30 + v87[9]);
            *(v29 + v87[10]) = *(v30 + v87[10]);
            v111 = v87[11];
            v112 = *(v30 + v111);
            *(v29 + v111) = v112;
            v113 = v112;
            goto LABEL_132;
          }

          if (v36 != 1)
          {
            if (v36 == 2)
            {
              goto LABEL_64;
            }

LABEL_90:
            memcpy(v29, v30, *(*(v35 - 8) + 64));
            goto LABEL_91;
          }
        }

        v82 = *v30;
        *v29 = *v30;
        v83 = v82;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v48 = swift_getEnumCaseMultiPayload();
      v167 = a3;
      if (v48 > 4)
      {
        if (v48 <= 7)
        {
          if (v48 == 5 || v48 == 6)
          {
            goto LABEL_68;
          }

          goto LABEL_98;
        }

        if (v48 != 8 && v48 != 9)
        {
          goto LABEL_98;
        }
      }

      else
      {
        if (v48 > 2)
        {
LABEL_68:
          v84 = sub_21DBF563C();
          (*(*(v84 - 8) + 16))(v29, v30, v84);
          swift_storeEnumTagMultiPayload();
LABEL_99:
          v114 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v115 = v114[5];
          v116 = v29 + v115;
          v117 = v30 + v115;
          if (*(v30 + v115 + 8))
          {
            v161 = v30;
            v164 = v29;
            *v116 = *v117;
            *(v116 + 1) = *(v117 + 1);
            v118 = *(v117 + 2);
            v119 = *(v117 + 3);
            v121 = *(v117 + 4);
            v120 = *(v117 + 5);
            v122 = *(v117 + 6);
            v158 = *(v117 + 7);
            v154 = v117[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v118, v119, v121, v120, v122, v158, v154);
            *(v116 + 2) = v118;
            *(v116 + 3) = v119;
            *(v116 + 4) = v121;
            *(v116 + 5) = v120;
            *(v116 + 6) = v122;
            *(v116 + 7) = v158;
            v116[64] = v154;
            v116[65] = v117[65];
            v116[66] = v117[66];
            v116[67] = v117[67];
            v116[68] = v117[68];
            v123 = v117[120];
            if (v123 == 255)
            {
              v135 = *(v117 + 72);
              v136 = *(v117 + 88);
              v137 = *(v117 + 104);
              v116[120] = v117[120];
              *(v116 + 104) = v137;
              *(v116 + 88) = v136;
              *(v116 + 72) = v135;
            }

            else
            {
              v155 = *(v117 + 10);
              v159 = *(v117 + 9);
              v125 = *(v117 + 11);
              v124 = *(v117 + 12);
              v126 = *(v117 + 13);
              v127 = *(v117 + 14);
              v128 = v123 & 1;
              sub_21D0FB960(v159, v155, v125, v124, v126, v127, v123 & 1);
              *(v116 + 9) = v159;
              *(v116 + 10) = v155;
              *(v116 + 11) = v125;
              *(v116 + 12) = v124;
              *(v116 + 13) = v126;
              *(v116 + 14) = v127;
              v116[120] = v128;
            }

            a3 = v167;
            v116[121] = v117[121];
            v30 = v161;
            v29 = v164;
          }

          else
          {
            v129 = *v117;
            v130 = *(v117 + 1);
            v131 = *(v117 + 3);
            *(v116 + 2) = *(v117 + 2);
            *(v116 + 3) = v131;
            *v116 = v129;
            *(v116 + 1) = v130;
            v132 = *(v117 + 4);
            v133 = *(v117 + 5);
            v134 = *(v117 + 6);
            *(v116 + 106) = *(v117 + 106);
            *(v116 + 5) = v133;
            *(v116 + 6) = v134;
            *(v116 + 4) = v132;
          }

          *(v29 + v114[6]) = *(v30 + v114[6]);
          *(v29 + v114[7]) = *(v30 + v114[7]);
          *(v29 + v114[8]) = *(v30 + v114[8]);
          *(v29 + v114[9]) = *(v30 + v114[9]);
          *(v29 + v114[10]) = *(v30 + v114[10]);
          v138 = v114[11];
          v139 = *(v30 + v138);
          *(v29 + v138) = v139;
          v140 = v139;
          goto LABEL_132;
        }

        if (v48 != 1)
        {
          if (v48 == 2)
          {
            goto LABEL_68;
          }

LABEL_98:
          memcpy(v29, v30, *(*(v47 - 8) + 64));
          goto LABEL_99;
        }
      }

      v85 = *v30;
      *v29 = *v30;
      v86 = v85;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v168 = a3;
      v49 = *v30;
      *v29 = *v30;
      v50 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v51 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v52 = *(v51 - 8);
      v53 = v30;
      v54 = *(v52 + 48);
      v55 = v49;
      if (v54(&v53[v50], 1, v51))
      {
        goto LABEL_31;
      }

      v67 = swift_getEnumCaseMultiPayload();
      v68 = v53;
      v69 = v50;
      if (v67 > 4)
      {
        a3 = v168;
        if (v67 <= 7)
        {
          if (v67 == 5 || v67 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_130;
        }

        if (v67 != 8 && v67 != 9)
        {
          goto LABEL_130;
        }

        goto LABEL_117;
      }

      a3 = v168;
      if (v67 > 2)
      {
        goto LABEL_114;
      }

      if (v67 == 1)
      {
        goto LABEL_117;
      }

      if (v67 != 2)
      {
        goto LABEL_130;
      }

      goto LABEL_114;
    }

    v166 = a3;
    v37 = *v30;
    *v29 = *v30;
    v38 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v40 = *(v39 - 8);
    v41 = v30;
    v42 = *(v40 + 48);
    v43 = v37;
    if (v42(&v41[v38], 1, v39))
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v29 + v38, &v41[v38], *(*(v44 - 8) + 64));
LABEL_129:
      a3 = v166;
      goto LABEL_132;
    }

    v66 = swift_getEnumCaseMultiPayload();
    if (v66 > 4)
    {
      if (v66 <= 7)
      {
        if (v66 == 5 || v66 == 6)
        {
          goto LABEL_106;
        }

        goto LABEL_127;
      }

      if (v66 != 8 && v66 != 9)
      {
        goto LABEL_127;
      }
    }

    else
    {
      if (v66 > 2)
      {
LABEL_106:
        v141 = sub_21DBF563C();
        (*(*(v141 - 8) + 16))(v29 + v38, &v41[v38], v141);
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v40 + 56))(v29 + v38, 0, 1, v39);
        goto LABEL_129;
      }

      if (v66 != 1)
      {
        if (v66 == 2)
        {
          goto LABEL_106;
        }

LABEL_127:
        memcpy(v29 + v38, &v41[v38], *(v40 + 64));
        goto LABEL_128;
      }
    }

    v142 = *&v41[v38];
    *(v29 + v38) = v142;
    v143 = v142;
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

LABEL_133:
  v147 = *(a3 + 24);
  v148 = (a1 + v147);
  v149 = (a2 + v147);
  v150 = v149[1];
  *v148 = *v149;
  v148[1] = v150;

  return a1;
}

uint64_t sub_21D4F1DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  *(a1 + v7[5]) = *(a2 + v7[5]);
  *(a1 + v7[6]) = *(a2 + v7[6]);
  *(a1 + v7[7]) = *(a2 + v7[7]);
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  *(a1 + v7[11]) = *(a2 + v7[11]);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  *(a1 + v7[13]) = *(a2 + v7[13]);
  v8 = v7[14];
  v9 = sub_21DBF7B0C();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  *(a1 + v7[15]) = *(a2 + v7[15]);
  v10 = *(a3 + 20);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v28 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v12, 1, v28))
        {
          v30 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(v11, v12, *(*(v30 - 8) + 64));
        }

        else
        {
          v33 = sub_21DBF563C();
          (*(*(v33 - 8) + 32))(v11, v12, v33);
          v11[*(v28 + 20)] = v12[*(v28 + 20)];
          (*(v29 + 56))(v11, 0, 1, v28);
        }

        v34 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&v11[*(v34 + 20)] = *&v12[*(v34 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *v11 = *v12;
      v24 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v25 = sub_21DBF8D7C();
      (*(*(v25 - 8) + 32))(&v11[v24], &v12[v24], v25);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v18 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(v12, 1, v18))
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(v11, v12, *(*(v20 - 8) + 64));
        }

        else
        {
          *v11 = *v12;
          v35 = *(v18 + 20);
          v36 = sub_21DBF6C1C();
          (*(*(v36 - 8) + 32))(&v11[v35], &v12[v35], v36);
          (*(v19 + 56))(v11, 0, 1, v18);
        }

        v37 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v38 = &v11[v37];
        v39 = &v12[v37];
        *v38 = *v39;
        *(v38 + 2) = *(v39 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *v11 = *v12;
    v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(&v12[v21], 1, v22))
    {
      v31 = swift_getEnumCaseMultiPayload();
      if (v31 <= 3)
      {
        if (v31 == 2 || v31 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v31 == 4 || v31 == 5 || v31 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *v11 = *v12;
      v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(&v12[v21], 1, v22))
      {
        goto LABEL_29;
      }

      v40 = swift_getEnumCaseMultiPayload();
      if (v40 <= 3)
      {
        if (v40 == 2 || v40 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v40 == 4 || v40 == 5 || v40 == 6)
      {
LABEL_57:
        v41 = sub_21DBF563C();
        (*(*(v41 - 8) + 32))(&v11[v21], &v12[v21], v41);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v23 + 56))(&v11[v21], 0, 1, v22);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&v11[v21], &v12[v21], *(v23 + 64));
      goto LABEL_86;
    }

    *v11 = *v12;
    v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(&v12[v21], 1, v22))
    {
      v32 = swift_getEnumCaseMultiPayload();
      if (v32 <= 3)
      {
        if (v32 == 2 || v32 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v32 == 4 || v32 == 5 || v32 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&v11[v21], &v12[v21], *(*(v27 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v26 = swift_getEnumCaseMultiPayload();
    if (v26 <= 3)
    {
      if (v26 == 2 || v26 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v26 == 4 || v26 == 5 || v26 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 <= 3)
    {
      if (v16 == 2 || v16 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v16 == 4 || v16 == 5 || v16 == 6)
    {
LABEL_9:
      v17 = sub_21DBF563C();
      (*(*(v17 - 8) + 32))(v11, v12, v17);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v42 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v43 = v42[5];
      v44 = &v11[v43];
      v45 = &v12[v43];
      v46 = v45[3];
      v44[2] = v45[2];
      v44[3] = v46;
      v47 = v45[1];
      *v44 = *v45;
      v44[1] = v47;
      *(v44 + 106) = *(v45 + 106);
      v48 = v45[6];
      v44[5] = v45[5];
      v44[6] = v48;
      v44[4] = v45[4];
      v11[v42[6]] = v12[v42[6]];
      v11[v42[7]] = v12[v42[7]];
      v11[v42[8]] = v12[v42[8]];
      v11[v42[9]] = v12[v42[9]];
      v11[v42[10]] = v12[v42[10]];
      *&v11[v42[11]] = *&v12[v42[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(v11, v12, *(*(v15 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(v11, v12, *(*(v13 - 8) + 64));
LABEL_88:
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_21D4F2FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v8 = v7[5];
  v9 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);

  v10 = v7[6];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v14 = *v12;
  v13 = v12[1];
  *v11 = v14;
  v11[1] = v13;

  v15 = v7[7];
  v16 = *(a1 + v15);
  *(a1 + v15) = *(a2 + v15);

  v17 = v7[8];
  v18 = *(a1 + v17);
  *(a1 + v17) = *(a2 + v17);

  *(a1 + v7[9]) = *(a2 + v7[9]);

  *(a1 + v7[10]) = *(a2 + v7[10]);

  *(a1 + v7[11]) = *(a2 + v7[11]);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  *(a1 + v7[13]) = *(a2 + v7[13]);

  v19 = v7[14];
  v20 = sub_21DBF7B0C();
  (*(*(v20 - 8) + 40))(a1 + v19, a2 + v19, v20);
  v21 = v7[15];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v25 = *v23;
  v24 = v23[1];
  *v22 = v25;
  v22[1] = v24;

  if (a1 != a2)
  {
    v26 = *(a3 + 20);
    v27 = (a1 + v26);
    v28 = (a2 + v26);
    sub_21D4F437C(a1 + v26, type metadata accessor for TTRRemindersListViewModel.Item);
    v29 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v42 = swift_getEnumCaseMultiPayload();
          if (v42 <= 3)
          {
            if (v42 == 2 || v42 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v42 == 4 || v42 == 5 || v42 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v32 = swift_getEnumCaseMultiPayload();
          if (v32 <= 3)
          {
            if (v32 == 2 || v32 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v32 == 4 || v32 == 5 || v32 == 6)
          {
LABEL_10:
            v33 = sub_21DBF563C();
            (*(*(v33 - 8) + 32))(v27, v28, v33);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v59 = v58[5];
            v60 = (v27 + v59);
            v61 = (v28 + v59);
            v62 = v61[3];
            v60[2] = v61[2];
            v60[3] = v62;
            v63 = v61[1];
            *v60 = *v61;
            v60[1] = v63;
            *(v60 + 106) = *(v61 + 106);
            v64 = v61[6];
            v60[5] = v61[5];
            v60[6] = v64;
            v60[4] = v61[4];
            *(v27 + v58[6]) = *(v28 + v58[6]);
            *(v27 + v58[7]) = *(v28 + v58[7]);
            *(v27 + v58[8]) = *(v28 + v58[8]);
            *(v27 + v58[9]) = *(v28 + v58[9]);
            *(v27 + v58[10]) = *(v28 + v58[10]);
            *(v27 + v58[11]) = *(v28 + v58[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(v27, v28, *(*(v31 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *v27 = *v28;
        v37 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v38 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(v28 + v37, 1, v38))
        {
LABEL_30:
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(v27 + v37, v28 + v37, *(*(v43 - 8) + 64));
          goto LABEL_88;
        }

        v48 = swift_getEnumCaseMultiPayload();
        if (v48 <= 3)
        {
          if (v48 == 2 || v48 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v48 == 4 || v48 == 5 || v48 == 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *v27 = *v28;
        v37 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v38 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(v28 + v37, 1, v38))
        {
          goto LABEL_30;
        }

        v56 = swift_getEnumCaseMultiPayload();
        if (v56 <= 3)
        {
          if (v56 == 2 || v56 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v56 == 4 || v56 == 5 || v56 == 6)
        {
LABEL_58:
          v57 = sub_21DBF563C();
          (*(*(v57 - 8) + 32))(v27 + v37, v28 + v37, v57);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v39 + 56))(v27 + v37, 0, 1, v38);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(v27 + v37, v28 + v37, *(v39 + 64));
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v44 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(v28, 1, v44))
        {
          v46 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(v27, v28, *(*(v46 - 8) + 64));
        }

        else
        {
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 32))(v27, v28, v49);
          *(v27 + *(v44 + 20)) = *(v28 + *(v44 + 20));
          (*(v45 + 56))(v27, 0, 1, v44);
        }

        v50 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(v27 + *(v50 + 20)) = *(v28 + *(v50 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *v27 = *v28;
        v40 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v41 = sub_21DBF8D7C();
        (*(*(v41 - 8) + 32))(v27 + v40, v28 + v40, v41);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *v27 = *v28;
        v37 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v38 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(v28 + v37, 1, v38))
        {
          goto LABEL_30;
        }

        v47 = swift_getEnumCaseMultiPayload();
        if (v47 <= 3)
        {
          if (v47 == 2 || v47 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v47 == 4 || v47 == 5 || v47 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v34 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v35 = *(v34 - 8);
        if ((*(v35 + 48))(v28, 1, v34))
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(v27, v28, *(*(v36 - 8) + 64));
        }

        else
        {
          *v27 = *v28;
          v51 = *(v34 + 20);
          v52 = sub_21DBF6C1C();
          (*(*(v52 - 8) + 32))(v27 + v51, v28 + v51, v52);
          (*(v35 + 56))(v27, 0, 1, v34);
        }

        v53 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v54 = v27 + v53;
        v55 = v28 + v53;
        *v54 = *v55;
        *(v54 + 2) = *(v55 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(v27, v28, *(*(v29 - 8) + 64));
  }

LABEL_89:
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t sub_21D4F4258()
{
  result = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D4F432C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21D4F437C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D4F43FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D4F444C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1D8);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_21D4F44F0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5D1E0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5D1E0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRAnyTreeViewCollapsedStatesPersisting.__allocating_init<A>(base:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TTRAnyTreeViewCollapsedStatesPersisting.init<A>(base:)(a1, a2, a3);
  return v6;
}

uint64_t TTRAnyTreeViewCollapsedStatesPersisting.deinit()
{

  return v0;
}

uint64_t TTRAnyTreeViewCollapsedStatesPersisting.__deallocating_deinit()
{
  TTRAnyTreeViewCollapsedStatesPersisting.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRTreeViewCollapsedStatesInMemoryPersistence.__allocating_init()()
{
  v0 = swift_allocObject();
  TTRTreeViewCollapsedStatesInMemoryPersistence.init()();
  return v0;
}

void *TTRTreeViewCollapsedStatesInMemoryPersistence.init()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    v4 = sub_21D495A08(v3, v2, *(v1 + 88));
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v0[2] = v4;
  return v0;
}

uint64_t TTRTreeViewCollapsedStatesInMemoryPersistence.__allocating_init(collapsedItemIDs:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTRTreeViewCollapsedStatesInMemoryPersistence.fetchCollapsedTreeViewItemIDs()()
{
  sub_21D4F5B78();

  return sub_21DBF8E0C();
}

uint64_t TTRTreeViewCollapsedStatesInMemoryPersistence.saveCollapsedTreeViewItemIDs(_:)(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  sub_21DBF8E0C();
}

uint64_t TTRTreeViewCollapsedStatesInMemoryPersistence.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D4F494C()
{
  sub_21D4F5B78();

  return sub_21DBF8E0C();
}

void *TTRTreeViewCollapsedStatesUserDefaultsPersistence.init(observableProperty:loggingDescription:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void sub_21D4F49C8(uint64_t a1, char a2)
{
  v3 = v2;
  *oslog = *(*v2 + 80);
  v6 = *(*v2 + 96);
  v7 = *(*v2 + 104);
  sub_21DBF8E0C();
  if ((sub_21DBFAB4C() & 1) != 0 && (a2 & 1) == 0)
  {

    v8 = v2[2];
    v9 = *(v8 + 88);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(v8 + 88) = v11;
      v34 = xmmword_21DC18EF0;
      (*(v8 + 48))(&v34);
      v12 = *(v8 + 88);
      v10 = __OFSUB__(v12, 1);
      v13 = v12 - 1;
      if (!v10)
      {
        *(v8 + 88) = v13;
        if (qword_280D0F3A8 == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
LABEL_6:
    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_27CE5D1E0);

    osloga = sub_21DBF84AC();
    v15 = sub_21DBFAEAC();

    if (os_log_type_enabled(osloga, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v34 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21D0CDFB4(v3[3], v3[4], &v34);
      _os_log_impl(&dword_21D0C9000, osloga, v15, "Removed collapsed itemIDs from user defaults {persistence: %s}", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223D46520](v17, -1, -1);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    else
    {
    }

    return;
  }

  sub_21DBF525C();
  swift_allocObject();
  sub_21DBF524C();
  v37 = a1;
  v38 = a2 & 1;
  v34 = *oslog;
  v35 = v6;
  v36 = v7;
  type metadata accessor for TTRTreeViewCollapsedStatesUserDefaultsPersistence.CodableItemIDs();
  swift_getWitnessTable();
  v18 = sub_21DBF522C();
  v20 = v19;

  v21 = v2[2];
  v22 = *(v21 + 88);
  v10 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(v21 + 88) = v23;
  *&v34 = v18;
  *(&v34 + 1) = v20;
  v24 = *(v21 + 48);
  sub_21D1BAF70(v18, v20);
  v24(&v34);
  sub_21D17B8A8(v18, v20);
  v25 = *(v21 + 88);
  v10 = __OFSUB__(v25, 1);
  v26 = v25 - 1;
  if (v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v21 + 88) = v26;
  if (qword_280D0F3A8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v27 = sub_21DBF84BC();
  __swift_project_value_buffer(v27, qword_27CE5D1E0);
  sub_21DBF8E0C();

  v28 = sub_21DBF84AC();
  v29 = sub_21DBFAEAC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v34 = v31;
    *v30 = 134218242;
    *(v30 + 4) = sub_21DBFAAFC();

    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_21D0CDFB4(v3[3], v3[4], &v34);
    _os_log_impl(&dword_21D0C9000, v28, v29, "Saved collapsed itemIDs to user defaults {count: %ld, persistence: %s}", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x223D46520](v31, -1, -1);
    MEMORY[0x223D46520](v30, -1, -1);
  }

  else
  {
  }

  sub_21D17B8A8(v18, v20);
}

void sub_21D4F5014(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v3 = Strong;
  v4 = _s15RemindersUICore49TTRTreeViewCollapsedStatesUserDefaultsPersistenceC05fetche4TreeD7ItemIDsShyxGyF_0();
  if ((v5 & 1) == 0)
  {

    if (qword_280D0F3A8 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE5D1E0);

    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEAC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      v20 = *(v3 + 24);
      v21 = *(v3 + 32);
      sub_21DBF8E0C();
      v22 = sub_21D0CDFB4(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_21D0C9000, v16, v17, "Ignoring collapsed itemIDs user defaults change {persistence: %s}", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223D46520](v19, -1, -1);
      MEMORY[0x223D46520](v18, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  v6 = v4;
  if (qword_280D0F3A8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE5D1E0);

  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    sub_21DBF8E0C();
    v14 = sub_21D0CDFB4(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21D0C9000, v8, v9, "Detected collapsed itemIDs user defaults change {persistence: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D46520](v11, -1, -1);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  else
  {
  }

LABEL_14:
  *a1 = v6;
}

uint64_t sub_21D4F531C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7344496D657469 && a2 == 0xE700000000000000;
  if (v4 || (sub_21DBFC64C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021DC5EBC0 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_21DBFC64C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21D4F53F0(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x7344496D657469;
  }
}

uint64_t sub_21D4F546C()
{
  sub_21DBFC7DC();
  sub_21D35B9B4(v2, *v0);
  return sub_21DBFC82C();
}

uint64_t sub_21D4F54CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21D4F531C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21D4F5500@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21D4F5F1C();
  *a1 = result;
  return result;
}

uint64_t sub_21D4F5534(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_21D4F5588(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_21D4F55DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a2;
  v17 = a5;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  type metadata accessor for TTRTreeViewCollapsedStatesUserDefaultsPersistence.CodableItemIDs.CodingKeys();
  swift_getWitnessTable();
  v15 = sub_21DBFC4FC();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DBFC87C();
  if (v5)
  {
    sub_21D0D32E4(a1, v19);
    v12 = sub_21DBFABBC();
  }

  else
  {
    v14 = v8;
    sub_21DBFABAC();
    v20 = 0;
    v18 = a3;
    swift_getWitnessTable();
    v11 = v15;
    sub_21DBFC4EC();
    v12 = v19[0];
    LOBYTE(v19[0]) = 1;
    sub_21DBFC4BC();
    (*(v14 + 8))(v10, v11);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t sub_21D4F589C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a6;
  v15 = a2;
  v16 = a7;
  v24 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  type metadata accessor for TTRTreeViewCollapsedStatesUserDefaultsPersistence.CodableItemIDs.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_21DBFC57C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DBFC88C();
  v20 = v15;
  v25 = 0;
  sub_21DBFABAC();
  v19 = v17;
  swift_getWitnessTable();
  v12 = v18;
  sub_21DBFC56C();
  if (!v12)
  {
    LOBYTE(v20) = 1;
    sub_21DBFC52C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21D4F5A80@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_21D4F55DC(a1, a2[2], a2[3], a2[4], a2[5]);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t TTRTreeViewCollapsedStatesUserDefaultsPersistence.deinit()
{

  return v0;
}

uint64_t TTRTreeViewCollapsedStatesUserDefaultsPersistence.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D4F5BAC()
{
  sub_21DBFABAC();
  v0 = sub_21DBF910C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_21DBF90FC();
  swift_getWitnessTable();
  v4 = sub_21DBF920C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_21D4F5F28(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59328);
  v3 = sub_21DBFBEBC();
LABEL_6:
  if (sub_21D0D8CF0(0, &qword_280D17880) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_21DBF8E0C();
      sub_21DBFBD1C();
      sub_21DBF634C();
      sub_21D0D9340(&qword_27CE58AA0, MEMORY[0x277D44FB0]);
      sub_21DBFAB5C();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      sub_21DBF8E0C();
      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_21DBFBDBC())
        {
LABEL_55:
          sub_21D0CFAF8();

          return;
        }

        sub_21DBF634C();
        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_21D4FAFFC(v35);
    }
  }

  if (v2)
  {

    sub_21DBF8E0C();
    sub_21DBFBD1C();
    sub_21DBF634C();
    sub_21D0D9340(&qword_27CE58AA0, MEMORY[0x277D44FB0]);
    sub_21DBFAB5C();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    sub_21DBF8E0C();
    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_21DBFBDBC())
    {
      goto LABEL_55;
    }

    sub_21DBF634C();
    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = sub_21DBFB62C();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_21D4F6424(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D370);
    v2 = sub_21DBFBEBC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  result = sub_21DBF8E0C();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    swift_dynamicCast();
    result = sub_21DBFBDFC();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21D4F664C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5D2F8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5D2F8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D4F6764(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D4F67D0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRShowCompletedByDateBucketsDataModelSource.__allocating_init(store:countCompleted:)(void *a1, char a2)
{
  swift_allocObject();
  v4 = sub_21D503FB8(a1, a2);

  return v4;
}

uint64_t TTRShowCompletedByDateBucketsDataModelSource.init(store:countCompleted:)(void *a1, char a2)
{
  v3 = sub_21D503FB8(a1, a2);

  return v3;
}

uint64_t sub_21D4F68F8()
{
  type metadata accessor for TTRShowCompletedDataModelSourceDeleteCompletedContext(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC15RemindersUICore53TTRShowCompletedDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = *MEMORY[0x277D45948];
  v3 = sub_21DBF806C();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  return v0;
}

id sub_21D4F6A0C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v9 = *(v3 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_store);
  v6 = a1();
  v7 = swift_allocObject();
  *(v7 + 16) = v9;
  a3[3] = v6;
  a3[4] = a2;
  *a3 = v7;

  return v9;
}

uint64_t TTRShowCompletedByDateBucketsPrintingDataModelSource.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_21D4F6AD8(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0);
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1F8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  v53 = sub_21DBF757C();
  v15 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v55 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v54 = v18;
  if (*(v2 + v18))
  {
    v19 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      v56[0] = v17;
      (*(*(v20 + 8) + 16))(v56, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v22 = sub_21DBF72DC();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  sub_21DBF755C();
  v23 = *(v2 + v54);
  v49 = v17;
  if (v23)
  {
    v24 = *(*v23 + 104);
    swift_beginAccess();
    sub_21D0D3954(v23 + v24, v11, &qword_27CE5C1F8);
    v25 = (*(v51 + 48))(v11, 1, v4);
    v26 = v53;
    if (v25 == 1)
    {
      sub_21D0CF7E0(v11, &qword_27CE5C1F8);
      v27 = 0;
    }

    else
    {
      v27 = *&v11[*(v4 + 48)];
      (*(v15 + 8))(v11, v53);
    }
  }

  else
  {
    v27 = 0;
    v26 = v53;
  }

  v50 = v15;
  v51 = v4;
  v28 = *(v4 + 48);
  v48 = *(v15 + 16);
  v48(v8, v55, v26);
  *&v8[v28] = v27;
  v29 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v29 + 8);
    v31 = swift_getObjectType();
    v32 = *(v30 + 8);
    v33 = v2;
    v34 = v8;
    v35 = *(v32 + 8);
    v36 = v27;
    v37 = v35(v31, v32);
    v26 = v53;
    v8 = v34;
    v2 = v33;
    v38 = v37;
    LOBYTE(v31) = v39;
    swift_unknownObjectRelease();
    if ((v31 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v40 = v27;
  }

  v38 = 30;
LABEL_14:
  v41 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_store);
  type metadata accessor for TTRShowCompletedByDateBucketsMonitorableDataView();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v38;
  v43 = v52;
  v44 = *(v51 + 48);
  v48(v52, v8, v26);
  *(v43 + v44) = v27;
  v45 = v54;
  swift_beginAccess();
  v46 = v41;
  sub_21D5025DC((v2 + v45), v43, v42, v2, v49);
  sub_21D0CF7E0(v43, &qword_27CE5C1E0);
  swift_endAccess();

  sub_21D0CF7E0(v8, &qword_27CE5C1E0);
  return (*(v50 + 8))(v55, v26);
}

uint64_t TTRShowCompletedByDateBucketsMonitorableDataView.__allocating_init(store:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_21D4F70C4()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate);
}

uint64_t TTRShowCompletedByDateBucketsDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowCompletedByDateBucketsDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate;

  sub_21D157444(v0 + v3);

  return swift_deallocClassInstance();
}

uint64_t TTRShowCompletedDataModelSourceDeleteCompletedContext.listForBatchDelete.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore53TTRShowCompletedDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowCompletedDataModelSourceDeleteCompletedContext.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore53TTRShowCompletedDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRShowCompletedDataModelSourceDeleteCompletedContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore53TTRShowCompletedDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21D4F7458@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore53TTRShowCompletedDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowCompletedByDateBucketsDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowCompletedByDateBucketsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v56 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = sub_21DBF757C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  *&v13[*(v8 + 48)] = a3;
  v16 = OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v57 = v4;
  v17 = *(v4 + v16);
  if (!v17)
  {
    v27 = a3;
    return sub_21D0CF7E0(v13, &qword_27CE5C1E0);
  }

  v18 = a3;
  if (v17 != a1)
  {
    return sub_21D0CF7E0(v13, &qword_27CE5C1E0);
  }

  v19 = v18;
  v20 = sub_21DBF6E3C();
  sub_21D4F5F28(v20);
  v22 = v21;

  v55 = v13;
  if (a3)
  {
    v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v24 = v57;
    swift_beginAccess();
    if (*(v24 + v23))
    {
      v25 = v19;

      sub_21D4F9FBC(v25, v22);

      v26 = v57;
    }

    else
    {
      v28 = *(v24 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900);
      v29 = v19;
      v30 = sub_21DBFB12C();
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      v32 = sub_21D87E81C(v28, sub_21D1947D8, v31, v29, v30);
      *(v57 + v23) = v32;

      v26 = v57;

      swift_beginAccess();
      v32[3] = &protocol witness table for TTRShowCompletedByDateBucketsDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v13 = v55;
  }

  else
  {

    v26 = v57;
  }

  sub_21D0D3954(v13, v10, &qword_27CE5C1E0);

  v33 = sub_21DBF716C();
  (*(v15 + 8))(v10, v14);
  if (!(v33 >> 62))
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_12;
    }

LABEL_30:

LABEL_31:
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_21DBFBEEC();
    v58 = *v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D328);
    v50 = sub_21DBFA1AC();
    v52 = v51;

    v58 = v50;
    v59 = v52;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v53 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v53);
    *(&v55 - 4) = v26;
    *(&v55 - 3) = v13;
    *(&v55 - 2) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();

    return sub_21D0CF7E0(v13, &qword_27CE5C1E0);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_30;
  }

  v34 = sub_21DBFBD7C();
  if (!v34)
  {

    v36 = MEMORY[0x277D84F90];
LABEL_21:
    v13 = v55;
    v26 = v57;
    if (*(v36 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
      v44 = sub_21DBFC40C();
    }

    else
    {
      v44 = MEMORY[0x277D84F98];
    }

    v60[0] = v44;
    v45 = sub_21DBF8E0C();
    sub_21D1931C0(v45, 1, v60);

    v46 = v60[0];
    v47 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v26 + v47))
    {

      sub_21D188810(v46);
      v49 = v48;

      TTRBatchFetchManager<A>.override(objects:)(v49);
    }

    else
    {
    }

    goto LABEL_31;
  }

LABEL_12:
  v60[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v36 = v60[0];
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x223D44740](v35, v33);
      }

      else
      {
        v37 = *(v33 + 8 * v35 + 32);
      }

      v38 = v37;
      v39 = [v37 objectID];
      v60[0] = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);
      if (v41 >= v40 >> 1)
      {
        v43 = v39;
        sub_21D18E6B8((v40 > 1), v41 + 1, 1);
        v39 = v43;
        v36 = v60[0];
      }

      ++v35;
      *(v36 + 16) = v41 + 1;
      v42 = v36 + 16 * v41;
      *(v42 + 32) = v39;
      *(v42 + 40) = v38;
    }

    while (v34 != v35);

    goto LABEL_21;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D4F7C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(a2, a3, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_21D4F7CF4()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D4F7D70(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0) + 48));

  return TTRShowCompletedByDateBucketsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowCompletedByDateBucketsDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D328);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
}

uint64_t sub_21D4F7F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowCompletedByDateBucketsDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56980 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5D2F8);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x6574656C706D6F63, 0xE900000000000064, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowCompletedByDateBucketsDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowCompletedByDateBucketsPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v119 = retstr;
  v155 = sub_21DBF753C();
  v140 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v154 = &v114[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v130 = sub_21DBF754C();
  v138 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v114[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v142 = &v114[-v4];
  v141 = sub_21DBF757C();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v137 = &v114[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_21DBF582C();
  v135 = *(v6 - 8);
  v136 = v6;
  MEMORY[0x28223BE20](v6);
  v133 = &v114[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v8 - 8);
  v134 = &v114[-v9];
  v148 = sub_21DBF5A2C();
  *&v145 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v132 = &v114[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v114[-v12];
  v156 = sub_21DBF563C();
  v14 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v150 = &v114[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v114[-v17];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1F0);
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v125 = &v114[-v19];
  v20 = sub_21DBF714C();
  v157 = *(v20 - 8);
  *&v158 = v20;
  MEMORY[0x28223BE20](v20);
  v153 = &v114[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_21DBF734C();
  v22 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v151 = &v114[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v146 = sub_21DBF71BC();
  v24 = *(v146 - 1);
  MEMORY[0x28223BE20](v146);
  v147 = &v114[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = sub_21DBF70DC();
  v26 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v144 = &v114[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_21DBF738C();
  v121 = *(v28 - 8);
  v122 = v28;
  MEMORY[0x28223BE20](v28);
  v124 = &v114[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27CE56980 != -1)
  {
LABEL_58:
    swift_once();
  }

  v30 = sub_21DBF84BC();
  __swift_project_value_buffer(v30, qword_27CE5D2F8);
  v31 = sub_21DBF84AC();
  v32 = sub_21DBFAEDC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v131 = v18;
    v34 = v13;
    v35 = v14;
    v36 = v26;
    v37 = v24;
    v38 = v22;
    v39 = v33;
    *v33 = 0;
    _os_log_impl(&dword_21D0C9000, v31, v32, "PrintingDataModelSource: fetch Completed tree", v33, 2u);
    v40 = v39;
    v22 = v38;
    v24 = v37;
    v26 = v36;
    v14 = v35;
    v13 = v34;
    v18 = v131;
    MEMORY[0x223D46520](v40, -1, -1);
  }

  (*(v26 + 104))(v144, *MEMORY[0x277D45420], v143);
  (*(v24 + 13))(v147, *MEMORY[0x277D45468], v146);
  (*(v22 + 13))(v151, *MEMORY[0x277D45500], v149);
  (*(v157 + 13))(v153, *MEMORY[0x277D45460], v158);
  v41 = v124;
  sub_21DBF737C();
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v22 = v125;
  v42 = v176;
  sub_21DBF765C();
  if (v42)
  {
    (*(v145 + 8))(v13, v148);
    (*(v14 + 1))(v18, v156);
    (*(v121 + 8))(v41, v122);
    return;
  }

  v116 = 0;
  v43 = v145;
  v44 = v13;
  v45 = v148;
  (*(v145 + 8))(v44, v148);
  v46 = v156;
  v151 = *(v14 + 1);
  v152 = v14 + 8;
  (v151)(v18, v156);
  v47 = *(v14 + 7);
  v48 = v134;
  v47(v134, 1, 1, v46);
  v49 = v133;
  sub_21DBF57AC();
  v50 = v132;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  type metadata accessor for TTRShowCompletedSectionHeaderTitleFormatter();
  v51 = swift_allocObject();
  *(v51 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
  *(v51 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
  *(v51 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
  *(v51 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
  *(v51 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
  *(v51 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
  *(v51 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
  (*(v135 + 32))(v51 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale, v49, v136);
  v52 = *(v43 + 32);
  v24 = (v43 + 32);
  v52(v51 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar, v50, v45);
  *(v51 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = 0;
  v149 = v51;
  sub_21D46CA8C(v48, v51 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
  v53 = v137;
  sub_21DBF76DC();
  v54 = sub_21DBF718C();
  (*(v139 + 8))(v53, v141);
  v26 = MEMORY[0x277D84F90];
  v137 = *(v54 + 16);
  if (v137)
  {
    v55 = 0;
    v135 = v138 + 88;
    v136 = v138 + 16;
    v148 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates;
    v134 = (v138 + 96);
    v128 = v140 + 32;
    LODWORD(v133) = *MEMORY[0x277D45580];
    v127 = *MEMORY[0x277D45570];
    v123 = *MEMORY[0x277D45578];
    v117 = *MEMORY[0x277D45590];
    v115 = *MEMORY[0x277D45588];
    v146 = (v140 + 8);
    v147 = (v140 + 16);
    v132 = (v138 + 8);
    *(&v56 + 1) = 2;
    v126 = xmmword_21DC08D00;
    *&v56 = 65856;
    v145 = v56;
    v14 = MEMORY[0x277D84F90];
    v13 = v129;
    v18 = v130;
    v131 = v54;
    while (1)
    {
      if (v55 >= *(v54 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v57 = v138;
      v58 = v54 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      v59 = *(v138 + 72);
      v141 = v55;
      v60 = *(v138 + 16);
      v61 = v142;
      v24 = v136;
      v60(v142, v58 + v59 * v55, v18);
      v60(v13, v61, v18);
      v62 = (*(v57 + 88))(v13, v18);
      v143 = v14;
      if (v62 == v133)
      {
        (*v134)(v13, v18);
        v63 = v140;
        v64 = *(v140 + 32);
        v66 = v154;
        v65 = v155;
        v24 = v18;
        v64(v154, v13, v155);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D340);
        v67 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v68 = swift_allocObject();
        *(v68 + 16) = v126;
        v69 = v66;
        v14 = v143;
        v70 = v65;
        v71 = v68;
        v64((v68 + v67), v69, v70);
        v72 = *(v71 + 16);
        if (!v72)
        {
          goto LABEL_26;
        }
      }

      else if (v62 == v127 || v62 == v123 || v62 == v117)
      {
        (*v134)(v13, v18);
        v71 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D338) + 48)];
        (v151)(v13, v156);
        v72 = *(v71 + 16);
        if (!v72)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v62 != v115)
        {
          sub_21DBFC63C();
          __break(1u);
          return;
        }

        (*v134)(v13, v18);
        v71 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D330) + 48)];
        v94 = sub_21DBF731C();
        (*(*(v94 - 8) + 8))(v13, v94);
        v72 = *(v71 + 16);
        if (!v72)
        {
LABEL_26:

          (*v132)(v142, v18);
          goto LABEL_27;
        }
      }

      v175 = v26;
      sub_21D18E6F8(0, v72, 0);
      v26 = v175;
      v73 = *(v140 + 80);
      v139 = v71;
      v74 = (v71 + ((v73 + 32) & ~v73));
      v144 = *(v140 + 72);
      v153 = *(v140 + 16);
      v176 = v72 - 1;
      while (1)
      {
        v75 = v154;
        v24 = v155;
        v157 = v74;
        v76 = v153(v154);
        v77 = v150;
        MEMORY[0x223D3FCD0](v76);
        TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v77, *(v149 + v148), &v159);
        v158 = v159;
        v78 = v160;
        v79 = v161;
        v80 = v162;
        (v151)(v77, v156);
        v81 = *(sub_21DBF752C() + 16);

        *(v167 + 5) = v159;
        BYTE7(v167[0]) = BYTE2(v159);
        v163 = v158;
        *&v164 = v78;
        *(&v164 + 1) = v79;
        v165 = v80;
        v166 = 0uLL;
        LODWORD(v167[0]) = v145;
        BYTE4(v167[0]) = v81 == 0;
        *(v167 + 8) = 0u;
        *(&v167[1] + 8) = 0u;
        *(&v167[2] + 8) = 0u;
        WORD4(v167[3]) = 255;
        nullsub_1(&v163, v82, v83);
        v84 = sub_21DBF752C();
        (*v146)(v75, v24);
        v172 = v167[0];
        v173 = v167[1];
        v174[0] = v167[2];
        *(v174 + 10) = *(&v167[2] + 10);
        v168 = v163;
        v169 = v164;
        v170 = v165;
        v171 = v166;
        v175 = v26;
        v86 = *(v26 + 16);
        v85 = *(v26 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_21D18E6F8((v85 > 1), v86 + 1, 1);
          v26 = v175;
        }

        *(v26 + 16) = v86 + 1;
        v87 = v26 + 136 * v86;
        v88 = v168;
        v89 = v169;
        v90 = v171;
        *(v87 + 64) = v170;
        *(v87 + 80) = v90;
        *(v87 + 32) = v88;
        *(v87 + 48) = v89;
        v91 = v172;
        v92 = v173;
        v93 = v174[1];
        *(v87 + 128) = v174[0];
        *(v87 + 144) = v93;
        *(v87 + 96) = v91;
        *(v87 + 112) = v92;
        *(v87 + 160) = v84;
        if (!v176)
        {
          break;
        }

        --v176;
        v74 = &v144[v157];
      }

      v18 = v130;
      (*v132)(v142, v130);

      v13 = v129;
      v14 = v143;
LABEL_27:
      v95 = *(v26 + 16);
      v96 = *(v14 + 2);
      v22 = (v96 + v95);
      if (__OFADD__(v96, v95))
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v22 <= *(v14 + 3) >> 1)
      {
        if (!*(v26 + 16))
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (v96 <= v22)
        {
          v98 = v96 + v95;
        }

        else
        {
          v98 = v96;
        }

        v14 = sub_21D2117D0(isUniquelyReferenced_nonNull_native, v98, 1, v14);
        if (!*(v26 + 16))
        {
LABEL_8:

          v26 = MEMORY[0x277D84F90];
          if (v95)
          {
            goto LABEL_55;
          }

          goto LABEL_9;
        }
      }

      if ((*(v14 + 3) >> 1) - *(v14 + 2) < v95)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      v26 = MEMORY[0x277D84F90];
      if (v95)
      {
        v99 = *(v14 + 2);
        v100 = __OFADD__(v99, v95);
        v101 = v99 + v95;
        if (v100)
        {
          goto LABEL_57;
        }

        *(v14 + 2) = v101;
      }

LABEL_9:
      v55 = v141 + 1;
      v54 = v131;
      if ((v141 + 1) == v137)
      {
        goto LABEL_41;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_41:

  v102 = REMSmartListType.title.getter();
  if (v103)
  {
    v104 = v102;
  }

  else
  {
    v104 = 0;
  }

  if (v103)
  {
    v105 = v103;
  }

  else
  {
    v105 = 0xE000000000000000;
  }

  v106 = REMSmartListType.color.getter();
  if (v106)
  {
    v107 = v106;

    (*(v118 + 8))(v125, v120);
    (*(v121 + 8))(v124, v122);
  }

  else
  {
    v176 = v104;
    v143 = v14;
    if (qword_280D1BAC0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v109 = *(&xmmword_280D1BAC8 + 1);
    v108 = xmmword_280D1BAC8;
    v111 = *(&xmmword_280D1BAD8 + 1);
    v110 = xmmword_280D1BAD8;
    v112 = xmmword_280D1BAE8;
    LODWORD(v158) = byte_280D1BAF8;
    v168 = xmmword_280D1BAC8;
    v169 = xmmword_280D1BAD8;
    v170 = xmmword_280D1BAE8;
    LOBYTE(v171) = byte_280D1BAF8;
    sub_21D0FB960(xmmword_280D1BAC8, *(&xmmword_280D1BAC8 + 1), xmmword_280D1BAD8, *(&xmmword_280D1BAD8 + 1), xmmword_280D1BAE8, *(&xmmword_280D1BAE8 + 1), byte_280D1BAF8);
    v107 = TTRListColors.Color.nativeColor.getter();

    (*(v118 + 8))(v125, v120);
    (*(v121 + 8))(v124, v122);
    sub_21D1078C0(v108, v109, v110, v111, v112, *(&v112 + 1), v158);
    v14 = v143;
    v104 = v176;
  }

  v113 = v119;
  v119->listName._countAndFlagsBits = v104;
  v113->listName._object = v105;
  v113->listColor.super.isa = v107;
  v113->count.value = 0;
  v113->count.is_nil = 1;
  v113->sections._rawValue = v14;
  v113->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_fixedListColor;
}

uint64_t TTRShowCompletedByDateBucketsPrintingDataModelSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRShowCompletedByDateBucketsMonitorableDataView.init(store:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

char *TTRShowCompletedByDateBucketsMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v77) = a4;
  v56 = a2;
  v55 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E8);
  MEMORY[0x28223BE20](v52);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v50 - v6;
  v7 = sub_21DBF5A2C();
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF563C();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v69 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1F0);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v65 = &v50 - v11;
  v12 = sub_21DBF714C();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12);
  v62 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_21DBF71BC();
  v14 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v61 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21DBF70DC();
  v16 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF738C();
  v67 = *(v18 - 8);
  v68 = v18;
  MEMORY[0x28223BE20](v18);
  v76 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_21DBF734C();
  v20 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v50 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1F8);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v50 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8);
  sub_21DBFC83C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    sub_21D0CF7E0(v28, &qword_27CE5C1F8);
    if (v77)
    {
      v30 = v66;
      v77 = v66[2];
      v31 = 0;
LABEL_7:
      v34 = MEMORY[0x277D45508];
      goto LABEL_12;
    }

    v33 = 0;
    goto LABEL_10;
  }

  v31 = *&v28[*(v29 + 48)];
  v32 = sub_21DBF757C();
  (*(*(v32 - 8) + 8))(v28, v32);
  if ((v77 & 1) == 0)
  {
    v33 = v31;
LABEL_10:
    v30 = v66;
    v77 = [v66[2] nonUserInteractiveStore];
    goto LABEL_11;
  }

  v30 = v66;
  v77 = v66[2];
  if (!v31)
  {
    goto LABEL_7;
  }

  v33 = v31;
LABEL_11:
  v34 = MEMORY[0x277D454F8];
  v31 = v33;
LABEL_12:
  *v25 = v30[3];
  v35 = v58;
  (*(v20 + 104))(v25, *v34, v58);
  (*(v16 + 104))(v57, *MEMORY[0x277D45420], v59);
  (*(v14 + 104))(v61, *MEMORY[0x277D45468], v60);
  v36 = *(v20 + 16);
  v66 = v25;
  v36(v22, v25, v35);
  (*(v63 + 104))(v62, *MEMORY[0x277D45460], v64);
  v37 = v76;
  sub_21DBF737C();
  v38 = v69;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v39 = v70;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v40 = v65;
  v41 = v77;
  v42 = v75;
  sub_21DBF765C();
  if (v42)
  {

    (*(v73 + 8))(v39, v74);
    (*(v71 + 8))(v38, v72);
    (*(v67 + 8))(v37, v68);
  }

  else
  {
    v75 = v31;
    v77 = v41;
    (*(v73 + 8))(v39, v74);
    (*(v71 + 8))(v38, v72);
    v43 = v52;
    v44 = *(v52 + 48);
    v45 = v54;
    v46 = v50;
    sub_21DBF76DC();
    *(v45 + v44) = sub_21DBF76BC();
    v47 = v53;
    sub_21D0D3954(v45, v53, &qword_27CE5C1E8);
    v38 = *(v47 + *(v43 + 48));
    v48 = sub_21DBF757C();
    (*(*(v48 - 8) + 32))(v55, v47, v48);
    sub_21DBF76CC();

    sub_21D0CF7E0(v45, &qword_27CE5C1E8);
    (*(v51 + 8))(v40, v46);
    (*(v67 + 8))(v76, v68);
  }

  (*(v20 + 8))(v66, v35);
  return v38;
}

uint64_t TTRShowCompletedByDateBucketsMonitorableDataView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D4F9F08(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = TTRShowCompletedByDateBucketsMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

uint64_t sub_21D4F9FBC(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 32);
  *(v3 + 32) = a1;
  v7 = a1;

  if (a2)
  {
    if (qword_280D17EA0 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_280D0F108);
    sub_21DBF8E0C();
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEAC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      sub_21D0D8CF0(0, &qword_280D17880);
      sub_21D183A0C();
      v13 = sub_21DBFAABC();
      v15 = sub_21D0CDFB4(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21D0C9000, v9, v10, "TTRBatchFetchManager invalidate cached objects {objectIDs: %s}", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }

    v22 = *(v3 + 80);
    MEMORY[0x28223BE20](v16);
    sub_21DBF5EFC();

    sub_21DBF814C();
  }

  else
  {
    if (qword_280D17EA0 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_280D0F108);
    v19 = sub_21DBF84AC();
    v20 = sub_21DBFAEAC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_21D0C9000, v19, v20, "TTRBatchFetchManager invalidate all cached objects", v21, 2u);
      MEMORY[0x223D46520](v21, -1, -1);
    }

    sub_21DBF5EFC();

    sub_21DBF814C();
  }
}

void sub_21D4FA324(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, uint64_t), void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21D183A0C();
    sub_21DBFAB5C();
    v5 = v38;
    v6 = v39;
    v7 = v40;
    v8 = v41;
    v9 = v42;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);
    sub_21DBF8E0C();
    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  while (v5 < 0)
  {
    if (!sub_21DBFBDBC() || (sub_21D0D8CF0(0, &qword_280D17880), swift_dynamicCast(), (v17 = v37) == 0))
    {
LABEL_29:
      sub_21D0CFAF8();
      return;
    }

LABEL_19:
    swift_beginAccess();
    v18 = *(a2 + 64);
    if ((v18 & 0xC000000000000001) != 0)
    {
      if (v18 < 0)
      {
        v19 = *(a2 + 64);
      }

      else
      {
        v19 = v18 & 0xFFFFFFFFFFFFFF8;
      }

      v20 = v17;
      v21 = sub_21DBFC2CC();

      if (v21)
      {
        swift_unknownObjectRelease();
        sub_21DBF8E0C();
        v22 = sub_21DBFBD7C();
        v23 = a5(v19, v22);

        v24 = sub_21D17E07C(v20);
        v26 = v25;

        if ((v26 & 1) == 0)
        {
          goto LABEL_31;
        }

        v27 = *(*(v23 + 56) + 8 * v24);
        a3(v24, v23);

        *(a2 + 64) = v23;
      }
    }

    else
    {
      v28 = sub_21D17E07C(v17);
      if (v29)
      {
        v30 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *(a2 + 64);
        if (!isUniquelyReferenced_nonNull_native)
        {
          a4();
        }

        v14 = *(*(v32 + 56) + 8 * v30);
        a3(v30, v32);
        *(a2 + 64) = v32;
      }
    }

    swift_endAccess();
  }

  v15 = v8;
  v16 = v9;
  if (v9)
  {
LABEL_15:
    v9 = (v16 - 1) & v16;
    v17 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_29;
    }

    v16 = *(v6 + 8 * v8);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_21D4FA668(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21D183A0C();
    sub_21DBFAB5C();
    v3 = v31;
    v4 = v32;
    v5 = v33;
    v6 = v34;
    v7 = v35;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);
    sub_21DBF8E0C();
    v6 = 0;
  }

  v27 = v4;
  v11 = (v5 + 64) >> 6;
  v28 = v3;
  while (v3 < 0)
  {
    if (!sub_21DBFBDBC() || (sub_21D0D8CF0(0, &qword_280D17880), swift_dynamicCast(), v20 = v30, v19 = v6, v16 = v7, !v30))
    {
LABEL_22:
      sub_21D0CFAF8();
      return;
    }

LABEL_19:
    swift_beginAccess();
    v21 = sub_21D17E07C(v20);
    if (v22)
    {
      v23 = v21;
      v29 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(a2 + 64);
      *(a2 + 64) = 0x8000000000000000;
      v26 = a2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21D220360();
      }

      v12 = *(v25 + 56) + 48 * v23;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);

      sub_21D4B38A4(v23, v25);
      *(v26 + 64) = v25;
      a2 = v26;
      v4 = v27;
      v3 = v28;
      v16 = v29;
    }

    swift_endAccess();

    v6 = v19;
    v7 = v16;
  }

  v17 = v6;
  v18 = v7;
  v19 = v6;
  if (v7)
  {
LABEL_15:
    v16 = (v18 - 1) & v18;
    v20 = *(*(v3 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v11)
    {
      goto LABEL_22;
    }

    v18 = *(v4 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_21D4FA934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v29 = a4;
  v30 = a1;
  v8 = sub_21DBF9D2C();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D5C();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF9D8C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v6 + *(*v6 + 112));
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_21DBF9DAC();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = *(*(v6 + *(*v6 + 128)) + 16);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v26 = v30;
    v25 = v31;
    v24[2] = v23;
    v24[3] = v26;
    v24[4] = a2;
    aBlock[4] = v25;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = v32;
    v27 = _Block_copy(aBlock);
    v28 = v22;

    sub_21DBF9D4C();
    v36 = MEMORY[0x277D84F90];
    sub_21D0D9340(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v13, v10, v27);
    _Block_release(v27);

    (*(v35 + 8))(v10, v8);
    (*(v33 + 8))(v13, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D4FAD2C(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t *), uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_21D4FADD8(a2, a3, a4);
  }

  return result;
}

uint64_t sub_21D4FADD8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, void (*a3)(void))
{
  v18 = a3;
  v4 = v3;
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 16);
  *v10 = v11;
  v12 = *MEMORY[0x277D85200];
  v13 = *(v7 + 104);
  v13(v10, v12, v6, v8);
  v19 = v11;
  LOBYTE(v11) = sub_21DBF9DAC();
  v20 = *(v7 + 8);
  result = v20(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  swift_beginAccess();
  v21 = *(v3 + 40);

  v15 = a1(&v22, &v21);

  *(v4 + 40) = v22;

  if ((v15 & 1) == 0)
  {
    return result;
  }

  v16 = v19;
  *v10 = v19;
  (v13)(v10, v12, v6);
  v17 = v16;

  LOBYTE(v16) = sub_21DBF9DAC();
  result = v20(v10, v6);
  if ((v16 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *(v4 + 128) = 1;
  if (*(v4 + 104) != 1)
  {
  }

  v18(0);

  *(v4 + 128) = 0;
  return result;
}

void sub_21D4FAFFC(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_21DBFB62C();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_21D0D8CF0(0, &qword_280D17880);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_21DBFB63C();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

uint64_t sub_21D4FB13C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585C8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737CA0();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE585A0);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D488);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE585A0);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE585A0);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE585C8);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE585A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D490);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE585A0);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE585A0);
      sub_21D0CF7E0(v23, &qword_27CE585A0);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D504A90;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D504A98;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D504AA0;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D4009AC(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC1F88, &unk_282EC1FB0, sub_21D504AE8, &block_descriptor_357);
}

uint64_t sub_21D4FBAF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D390);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C210);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737CC8();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C210);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D398);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C210);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C210);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5D390);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3A0);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C210);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C210);
      sub_21D0CF7E0(v23, &qword_27CE5C210);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D504614;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D50461C;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D504624;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D4009D4(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D50462C, a3, &unk_282EC1268, &unk_282EC1290, sub_21D504650, &block_descriptor_66_0);
}

uint64_t sub_21D4FC4AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737CF0();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C258);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D8);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C258);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C258);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5D3D0);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C258);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E0);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C258);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C258);
      sub_21D0CF7E0(v23, &qword_27CE5C258);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D50471C;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D504724;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D50472C;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D4009FC(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC15B0, &unk_282EC15D8, sub_21D504734, &block_descriptor_138);
}

uint64_t sub_21D4FCE64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737D18();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C270);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3F0);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C270);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C270);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5D3E8);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C270);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3F8);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C270);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C270);
      sub_21D0CF7E0(v23, &qword_27CE5C270);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D504768;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D504770;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D504778;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D400A24(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC16C8, &unk_282EC16F0, sub_21D504780, &block_descriptor_162_0);
}

uint64_t sub_21D4FD81C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C360);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737D40();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C348);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D458);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C348);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C348);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5C360);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C348);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D460);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C348);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C348);
      sub_21D0CF7E0(v23, &qword_27CE5C348);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D5048E4;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D5048EC;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D5048F4;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D400A4C(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC1C40, &unk_282EC1C68, sub_21D5048FC, &block_descriptor_282);
}