uint64_t sub_21D4C465C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21DBF7B0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  v14 = *(v7 + 16);
  v14(v9, v3, v6, v11);
  sub_21D0F1CB0(&qword_280D0C7C0, MEMORY[0x277D45750]);
  sub_21DBFBC3C();
  (v14)(v9, a1, v6);
  sub_21DBFBC8C();
  if (sub_21DBFBC7C())
  {
    (*(v7 + 8))(v13, v6);
    v15 = 1;
  }

  else
  {
    (*(v7 + 32))(a2, v13, v6);
    v15 = 0;
  }

  return (*(v7 + 56))(a2, v15, 1, v6);
}

uint64_t sub_21D4C484C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F390);
  v1 = __swift_project_value_buffer(v0, qword_280D0F390);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderTitleAttributesHarvester.Attribute.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0) + 24);
  v4 = sub_21DBF79FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRReminderTitleAttributesHarvester.Attribute.init(range:type:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  sub_21D4D984C(a3, &a5[*(v8 + 20)], type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  v9 = *(v8 + 24);
  v10 = sub_21DBF79FC();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a5[v9], a4, v10);
}

uint64_t static TTRReminderTitleAttributesHarvester.Attribute.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  if ((sub_21DBF79BC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 20);

  return _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(a1 + v6, a2 + v6);
}

uint64_t TTRReminderTitleAttributesHarvester.Attribute.sameValue(with:)(void *a1)
{
  if (*v1 != *a1 || v1[1] != a1[1])
  {
    return 0;
  }

  v5 = *(type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0) + 20);

  return _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(v1 + v5, a1 + v5);
}

uint64_t sub_21D4C4BAC(void *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 || (sub_21DBF79BC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(a1 + v7, a2 + v7);
}

uint64_t sub_21D4C4C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_21D4D496C(a1, a2))
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_21D1D5834(v7, v8);
}

void sub_21D4C4CA0()
{
  v0 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();
}

uint64_t TTRReminderTitleAttributesHarvester.__allocating_init(queue:backgroundQueue:locationOptionsProvider:contactsProvider:store:excludedSuggestedAttributes:locale:timeZone:now:forTesting:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t), uint64_t a10, unsigned __int8 a11)
{
  v16 = *(a3 + 24);
  v15 = *(a3 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v16);
  v18 = *(a4 + 24);
  v19 = *(a4 + 32);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a4, v18);
  v21 = sub_21D4D5348(a1, a2, v17, v20, a5, a6, a7, a8, a9, a10, a11, v23, v16, v18, v15, v19);

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v21;
}

uint64_t TTRReminderTitleAttributesHarvester.init(queue:backgroundQueue:locationOptionsProvider:contactsProvider:store:excludedSuggestedAttributes:locale:timeZone:now:forTesting:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t), uint64_t a10, unsigned __int8 a11)
{
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v33 = a10;
  v34 = a9;
  v32 = a11;
  v16 = *(a3 + 24);
  v31 = *(a3 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v23 = *(a4 + 24);
  v22 = *(a4 + 32);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(a4, v23);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v25);
  v29 = sub_21D4D4C1C(a1, a2, v20, v27, a5, v36, v37, v38, v34, v33, v32, v35, v16, v23, v31, v22);

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v29;
}

uint64_t sub_21D4C5020()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_21D4D857C(v0);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_21D4C5080(uint64_t a1)
{
  v14 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0A8);
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v13 - v2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0B0);
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v13 - v5;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0B8);
  swift_allocObject();
  v18 = sub_21DBF911C();
  v17 = 0;
  sub_21D0D0F1C(&qword_280D0C420, &qword_27CE5D0B8);
  sub_21DBF922C();

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v14;

  sub_21DBF8FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA8);
  sub_21D0D0F1C(&qword_280D0C620, &qword_27CE5D0A8);
  sub_21D0D0F1C(&qword_280D0C4A8, &qword_27CE5CFA8);
  v9 = v15;
  sub_21DBF93DC();

  (*(v1 + 8))(v3, v9);
  sub_21D0D0F1C(&qword_280D0C560, &qword_27CE5D0B0);
  v10 = v16;
  v11 = sub_21DBF920C();
  (*(v4 + 8))(v6, v10);
  return v11;
}

uint64_t sub_21D4C5424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D4D97E4(a1, a2, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults);
  v3 = type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_21D4C54AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_21D4D496C(a1, a2))
    {
      sub_21D0D3954(a4, v12, &qword_27CE5CFB0);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        sub_21D0CF7E0(v12, &qword_27CE5CFB0);
      }

      else
      {
        sub_21D4D984C(v12, v16, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults);
        if (_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0())
        {
          v18 = *&v16[*(v13 + 20)];
          sub_21DBF8E0C();
          sub_21D4D5640(v16, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults);
LABEL_11:
          v19 = sub_21D4C576C(*(a1 + *(v13 + 20)), *(a2 + *(v13 + 20)), *(a3 + *(v13 + 20)), v18);

          sub_21D4D97E4(a1, a5, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest);
          v17 = 0;
          *(a5 + *(v13 + 20)) = v19;
          return (*(v14 + 56))(a5, v17, 1, v13);
        }

        sub_21D4D5640(v16, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults);
      }

      v18 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }
  }

  v17 = 1;
  return (*(v14 + 56))(a5, v17, 1, v13);
}

void *sub_21D4C576C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v95 = a4;
  v84 = a1;
  v85 = a3;
  v6 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v81 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v97 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v86 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v81 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v96 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v82 = &v81 - v18;
  MEMORY[0x28223BE20](v19);
  v91 = &v81 - v20;
  MEMORY[0x28223BE20](v21);
  v89 = &v81 - v22;
  MEMORY[0x28223BE20](v23);
  v88 = &v81 - v24;
  MEMORY[0x28223BE20](v25);
  v92 = (&v81 - v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v81 - v28;
  v30 = sub_21DBF9D8C();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v4 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  *v34 = v35;
  (*(v31 + 104))(v34, *MEMORY[0x277D85200], v30, v32);
  v36 = v35;
  LOBYTE(v35) = sub_21DBF9DAC();
  v38 = *(v31 + 8);
  v37 = v31 + 8;
  v38(v34, v30);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v83 = a2;
  v39 = MEMORY[0x277D84F90];
  v100 = MEMORY[0x277D84F90];
  v40 = v95[2];
  if (v40)
  {
    v93 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v94 = MEMORY[0x277D84F90];
    v41 = v95 + v93;
    v42 = *(v86 + 72);
    v95 = MEMORY[0x277D84F90];
    v87 = v8;
    do
    {
      sub_21D4D97E4(v41, v29, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      v45 = *(v97 + 20);
      sub_21D4D97E4(&v29[v45], v13, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_21D4D5640(v13, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      if (EnumCaseMultiPayload)
      {
        v47 = &v29[v45];
        v48 = v90;
        sub_21D4D97E4(v47, v90, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
        v49 = swift_getEnumCaseMultiPayload();
        sub_21D4D5640(v48, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
        if (v49 == 4)
        {
          sub_21D4D97E4(v29, v88, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          v50 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_21D2137C8(0, v50[2] + 1, 1, v50);
          }

          v52 = v50[2];
          v51 = v50[3];
          v94 = v50;
          if (v52 >= v51 >> 1)
          {
            v94 = sub_21D2137C8(v51 > 1, v52 + 1, 1, v94);
          }

          sub_21D4D5640(v29, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          v54 = v93;
          v53 = v94;
          v94[2] = v52 + 1;
          v43 = v53 + v54 + v52 * v42;
          v44 = v88;
        }

        else
        {
          sub_21D4D97E4(v29, v89, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_21D2137C8(0, v39[2] + 1, 1, v39);
          }

          v61 = v39[2];
          v60 = v39[3];
          if (v61 >= v60 >> 1)
          {
            v39 = sub_21D2137C8(v60 > 1, v61 + 1, 1, v39);
          }

          sub_21D4D5640(v29, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          v39[2] = v61 + 1;
          v43 = v39 + v93 + v61 * v42;
          v44 = v89;
        }

        sub_21D4D984C(v44, v43, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      }

      else
      {
        sub_21D4D97E4(v29, v92, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_21D2137C8(0, v95[2] + 1, 1, v95);
        }

        v55 = v6;
        v57 = v95[2];
        v56 = v95[3];
        v58 = v39;
        if (v57 >= v56 >> 1)
        {
          v95 = sub_21D2137C8(v56 > 1, v57 + 1, 1, v95);
        }

        sub_21D4D5640(v29, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        v59 = v95;
        v95[2] = v57 + 1;
        sub_21D4D984C(v92, v59 + v93 + v57 * v42, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        v100 = v59;
        v39 = v58;
        v6 = v55;
        v8 = v87;
      }

      v41 += v42;
      --v40;
    }

    while (v40);
  }

  else
  {
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
  }

  v93 = v39;
  v62 = v84;
  v92 = sub_21D4C417C(v84, &v100);
  v90 = 0;
  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v65 = *(v86 + 72);
    v66 = v62 + v64;
    v34 = MEMORY[0x277D84F90];
    v67 = v91;
    do
    {
      sub_21D4D97E4(v66, v67, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D4D97E4(v67 + *(v97 + 20), v8, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      v68 = swift_getEnumCaseMultiPayload();
      sub_21D4D5640(v8, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      if (v68)
      {
        sub_21D4D984C(v67, v96, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21D18F024(0, v34[2] + 1, 1);
          v34 = v99;
        }

        v71 = v34[2];
        v70 = v34[3];
        if (v71 >= v70 >> 1)
        {
          sub_21D18F024(v70 > 1, v71 + 1, 1);
          v34 = v99;
        }

        v34[2] = v71 + 1;
        sub_21D4D984C(v96, v34 + v64 + v71 * v65, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        v67 = v91;
      }

      else
      {
        sub_21D4D5640(v67, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      }

      v66 += v65;
      --v63;
    }

    while (v63);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  if (*(v85 + 16))
  {
    v8 = ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v29 = v82;
    v72 = sub_21D4D97E4(&v8[v85], v82, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    LOBYTE(v99) = 0;
    MEMORY[0x28223BE20](v72);
    *(&v81 - 2) = v29;
    *(&v81 - 1) = &v99;
    v37 = sub_21D4E665C(sub_21D4D98B4, (&v81 - 4), v94);

    if (v99)
    {
LABEL_41:
      sub_21D4D5640(v29, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      goto LABEL_43;
    }

    v30 = v81;
    sub_21D4D97E4(v29, v81, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_38:
      v74 = *(v37 + 16);
      v73 = *(v37 + 24);
      if (v74 >= v73 >> 1)
      {
        v37 = sub_21D2137C8(v73 > 1, v74 + 1, 1, v37);
      }

      *(v37 + 16) = v74 + 1;
      sub_21D4D984C(v30, &v8[v37 + *(v86 + 72) * v74], type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      goto LABEL_41;
    }

LABEL_48:
    v37 = sub_21D2137C8(0, *(v37 + 16) + 1, 1, v37);
    goto LABEL_38;
  }

  v37 = v94;
LABEL_43:
  v75 = v92;
  v98 = v92;
  sub_21DBF8E0C();
  sub_21D562CB0(v34);
  v76 = sub_21DBF8E0C();
  sub_21D562CB0(v76);
  sub_21D562CB0(v37);
  sub_21D562CB0(v93);
  v77 = v98;
  v78 = v75[2];

  if (v78)
  {
    v79 = MEMORY[0x277D84F90];
  }

  else
  {
    v79 = sub_21DBF8E0C();
  }

  v99 = v77;
  sub_21D562CB0(v79);

  return v99;
}

uint64_t sub_21D4C620C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD0);
  if (sub_21D4D496C(a1 + *(v4 + 48), a1))
  {
    sub_21D4D97E4(a1, a2, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

Swift::Void __swiftcall TTRReminderTitleAttributesHarvester.updateParserIfNeeded(forTextInputPrimaryLanguage:)(Swift::String forTextInputPrimaryLanguage)
{
  v2 = v1;
  object = forTextInputPrimaryLanguage._object;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v13 = sub_21DBF582C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v60 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  *&v21 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v57 - v20;
  v23 = *(v1 + 24);
  if (v23)
  {
    v24 = v14;
    v25 = &v57 - v20;
    v26 = [v23 locale];
    sub_21DBF577C();

    v22 = v25;
    v14 = v24;
    (*(v24 + 56))(v9, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v9, 1, 1, v13);
  }

  sub_21D4C6A2C(v9, (v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_initialParserLocale), v12);
  sub_21D0CF7E0(v9, &unk_27CE65010);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21D0CF7E0(v12, &unk_27CE65010);
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
    if (qword_280D0F388 != -1)
    {
      swift_once();
    }

    v27 = sub_21DBF84BC();
    __swift_project_value_buffer(v27, qword_280D0F390);
    (*(v14 + 16))(v18, v22, v13);

    v28 = sub_21DBF84AC();
    LODWORD(v29) = sub_21DBFAEDC();

    v30 = os_log_type_enabled(v28, v29);
    v59 = v14;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v64 = v58;
      *v31 = 136315394;
      v32 = *(v1 + 24);
      if (v32)
      {
        v33 = [v32 locale];
        LODWORD(object) = v29;
        v29 = v60;
        sub_21DBF577C();

        v34 = sub_21DBF570C();
        v36 = v35;
        v37 = v29;
        LOBYTE(v29) = object;
        (*(v14 + 8))(v37, v13);
      }

      else
      {
        v36 = 0xE300000000000000;
        v34 = 7104878;
      }

      v38 = sub_21D0CDFB4(v34, v36, &v64);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2080;
      v39 = sub_21DBF570C();
      v41 = v40;
      object = *(v14 + 8);
      object(v18, v13);
      v42 = sub_21D0CDFB4(v39, v41, &v64);

      *(v31 + 14) = v42;
      _os_log_impl(&dword_21D0C9000, v28, v29, "TTRReminderTitleAttributesHarvester: recreating REMNLQueryParser parser {from: %s, to: %s}", v31, 0x16u);
      v43 = v58;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v43, -1, -1);
      MEMORY[0x223D46520](v31, -1, -1);
    }

    else
    {

      object = *(v14 + 8);
      object(v18, v13);
    }

    sub_21D0D3954(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_now, v61, &qword_27CE58D68);
    v44 = sub_21DBF5C4C();
    v45 = *(v44 - 8);
    (*(v45 + 56))(v63, 1, 1, v44);
    v46 = v22;
    v47 = sub_21DBF574C();
    v48 = v61;
    v49 = v47;
    v50 = sub_21DBF563C();
    v51 = *(v50 - 8);
    v52 = 0;
    if ((*(v51 + 48))(v48, 1, v50) != 1)
    {
      v52 = sub_21DBF55BC();
      (*(v51 + 8))(v48, v50);
    }

    v53 = v63;
    if ((*(v45 + 48))(v63, 1, v44) == 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = sub_21DBF5C0C();
      (*(v45 + 8))(v53, v44);
    }

    v55 = [objc_allocWithZone(MEMORY[0x277D45A90]) initWithLocale:v49 referenceDate:v52 referenceTimeZone:v54 forTesting:0];

    object(v46, v13);
    v56 = *(v2 + 24);
    *(v2 + 24) = v55;
  }
}

uint64_t sub_21D4C6A2C@<X0>(uint64_t a1@<X0>, char *a2@<X3>, uint64_t a3@<X8>)
{
  v71 = a1;
  v72 = a3;
  v4 = sub_21DBF56DC();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v59 - v7;
  v8 = sub_21DBF580C();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v59 - v11;
  v12 = sub_21DBF582C();
  v70 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v59 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = &v59 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D118);
  MEMORY[0x28223BE20](v64);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v59 - v28;
  sub_21DBF573C();
  if (!v30)
  {
    v63 = v23;
    v68 = v29;
    v33 = v70;
    v65 = *(v70 + 16);
    v66 = a2;
    (v65)(v26, a2, v12);
    v67 = *(v33 + 56);
    (v67)(v26, 0, 1, v12);
    v34 = *(v64 + 48);
    sub_21D0D3954(v71, v17, &unk_27CE65010);
    sub_21D0D3954(v26, &v17[v34], &unk_27CE65010);
    v35 = *(v33 + 48);
    v36 = v17;
    if (v35(v17, 1, v12) == 1)
    {
      sub_21D0CF7E0(v26, &unk_27CE65010);
      v37 = v35(&v17[v34], 1, v12);
      v38 = v68;
      if (v37 == 1)
      {
        sub_21D0CF7E0(v17, &unk_27CE65010);
LABEL_16:
        v55 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      v52 = v17;
      v53 = v63;
      sub_21D0D3954(v52, v63, &unk_27CE65010);
      if (v35((v36 + v34), 1, v12) != 1)
      {
        v56 = v36 + v34;
        v57 = v69;
        (*(v33 + 32))(v69, v56, v12);
        sub_21D0F1CB0(&qword_27CE5D120, MEMORY[0x277CC9788]);
        LODWORD(v71) = sub_21DBFA10C();
        v58 = *(v33 + 8);
        v58(v57, v12);
        sub_21D0CF7E0(v26, &unk_27CE65010);
        v58(v53, v12);
        sub_21D0CF7E0(v36, &unk_27CE65010);
        v54 = v66;
        v38 = v68;
        if (v71)
        {
          goto LABEL_16;
        }

LABEL_14:
        (v65)(v38, v54, v12);
        v55 = 0;
LABEL_17:
        (v67)(v38, v55, 1, v12);
        return sub_21D0D523C(v38, v72, &unk_27CE65010);
      }

      sub_21D0CF7E0(v26, &unk_27CE65010);
      (*(v33 + 8))(v53, v12);
      v38 = v68;
    }

    sub_21D0CF7E0(v36, &qword_27CE5D118);
    v54 = v66;
    goto LABEL_14;
  }

  sub_21DBF576C();
  sub_21D0D3954(v71, v20, &unk_27CE65010);
  v31 = v70;
  v32 = v12;
  if ((*(v70 + 48))(v20, 1, v12) == 1)
  {
    sub_21D0CF7E0(v20, &unk_27CE65010);
  }

  else
  {
    v39 = v59;
    (*(v31 + 32))(v59, v20, v12);
    sub_21DBF8E0C();
    v40 = v60;
    sub_21DBF57BC();
    v41 = v61;
    sub_21DBF581C();
    v42 = Locale.Language.isEquivalentOrMoreSpecific(than:)(v40);
    v43 = *(v62 + 8);
    v44 = v41;
    v45 = v63;
    v43(v44, v63);
    v43(v40, v45);
    (*(v31 + 8))(v39, v32);
    if (v42)
    {

      return (*(v31 + 56))(v72, 1, 1, v32);
    }
  }

  v47 = v66;
  sub_21DBF56CC();
  v49 = v67;
  v48 = v68;
  (*(v67 + 16))(v65, v47, v68);
  v50 = v69;
  sub_21DBF56EC();
  sub_21DBF570C();
  (*(v31 + 8))(v50, v32);
  v51 = v72;
  sub_21DBF56FC();
  (*(v49 + 8))(v47, v48);
  return (*(v31 + 56))(v51, 0, 1, v32);
}

uint64_t TTRReminderTitleAttributesHarvester.feedback(for:feedbackFactor:)(uint64_t a1, double a2)
{
  v22 = sub_21DBF9D2C();
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21DBF9D5C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF79FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  (*(v10 + 16))(v13, a1, v9, v12);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v13, v9);
  *(v16 + v15) = a2;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;
  aBlock[4] = sub_21D4D5520;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_40;
  v17 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v25 = MEMORY[0x277D84F90];
  sub_21D0F1CB0(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  v18 = v22;
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v8, v6, v17);
  _Block_release(v17);
  (*(v24 + 8))(v6, v18);
  (*(v21 + 8))(v8, v23);
}

uint64_t sub_21D4C765C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF79FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF7B9C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v10);
  sub_21DBF7B8C();
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v13 = sub_21DBF84BC();
  __swift_project_value_buffer(v13, qword_280D0F390);
  v14 = sub_21DBF84AC();
  v15 = sub_21DBFAEAC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21D0C9000, v14, v15, "Sending suggested attribute model feedback to invocation performer", v16, 2u);
    MEMORY[0x223D46520](v16, -1, -1);
  }

  if (*(a2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
  {
    sub_21DBF7CBC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t TTRReminderTitleAttributesHarvester.postSuggestionAnalytics(reminder:)(uint64_t a1)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF9D5C();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  sub_21D4D55B8(a1, v18);
  v10 = swift_allocObject();
  v11 = v18[1];
  *(v10 + 16) = v18[0];
  *(v10 + 32) = v11;
  *(v10 + 48) = v18[2];
  *(v10 + 64) = v1;
  aBlock[4] = sub_21D4D5614;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_6_1;
  v12 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v16 = MEMORY[0x277D84F90];
  sub_21D0F1CB0(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v9, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_21D4C7CB8(void *a1, uint64_t a2)
{
  v4 = sub_21DBF7C3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21D4D98F0(a1);
  if (result)
  {

    sub_21DBF7C2C();
    if (*(a2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
    {
      sub_21DBF7BFC();
    }

    (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t TTRReminderTitleAttributesHarvester.harvestAutoCompleteAttributesFrom(autoCompleteReminders:)(unint64_t a1)
{
  v2 = sub_21DBF7A0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_21DBF79FC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v5, *MEMORY[0x277D45708], v2, v8);
  sub_21DBF79EC();
  v15 = v10;
  sub_21D174280(sub_21D4D5620, v14, a1);
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  return v12;
}

id sub_21D4C80F8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  *&a3[*(v6 + 20)] = v5;
  type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(v6 + 24);
  v8 = sub_21DBF79FC();
  (*(*(v8 - 8) + 16))(&a3[v7], a2, v8);
  *a3 = 0;
  *(a3 + 1) = 0;
  return v5;
}

uint64_t sub_21D4C81AC()
{
  v1 = sub_21DBF580C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v28 - v6;
  v8 = sub_21DBF582C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = v28 - v14;
  v16 = *(v0 + 24);
  if (!v16)
  {
    v21 = 0;
    return v21 & 1;
  }

  v17 = [v16 locale];
  sub_21DBF577C();

  (*(v9 + 32))(v15, v11, v8);
  sub_21DBF581C();
  sub_21DBF57DC();
  (*(v2 + 8))(v4, v1);
  v18 = sub_21DBF572C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) != 1)
  {
    v22 = sub_21DBF571C();
    v24 = v23;
    (*(v19 + 8))(v7, v18);
    if (v22 == 28261 && v24 == 0xE200000000000000)
    {
    }

    else
    {
      v26 = sub_21DBFC64C();

      if ((v26 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    (*(v9 + 8))(v15, v8);
    v21 = 1;
    return v21 & 1;
  }

  sub_21D0CF7E0(v7, &qword_27CE5CF40);
LABEL_4:
  v28[2] = sub_21DBF570C();
  v28[3] = v20;
  v28[0] = 0x736E61482D687ALL;
  v28[1] = 0xE700000000000000;
  sub_21D176F0C();
  v21 = sub_21DBFBBDC();

  (*(v9 + 8))(v15, v8);
  return v21 & 1;
}

uint64_t sub_21D4C8548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D038);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v10[1] = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21D4DA488;
  *(v8 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D048);
  sub_21D0D0F1C(&qword_280D0C4A0, &qword_27CE5D040);
  sub_21DBF931C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  sub_21D0D0F1C(&qword_280D0C570, &qword_27CE5D038);
  sub_21DBF938C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21D4C8780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v5 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = v53 - v9;
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  v59 = v10;
  v60 = v11;
  MEMORY[0x28223BE20](v10);
  v58 = (v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v57 = a3;
  v13 = sub_21DBF84BC();
  v56 = __swift_project_value_buffer(v13, qword_280D0F390);
  v14 = sub_21DBF84AC();
  v15 = sub_21DBFAE9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21D0C9000, v14, v15, "Harvesting attributes using NLP", v16, 2u);
    MEMORY[0x223D46520](v16, -1, -1);
  }

  v17 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v18 = v62;
  v19 = sub_21DBF640C();
  v20 = (v18 + *(v17 + 24));
  v22 = *v20;
  v21 = v20[1];
  v64 = *(a1 + 24);
  v23 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0F0);
  v24 = v61;
  sub_21DBFBA6C();

  if (v24)
  {
    return v17;
  }

  v53[0] = v17;
  v53[1] = a1;
  v53[2] = v21;
  v53[3] = v22;
  v61 = v63;
  v25 = *(a1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  v27 = v58;
  v26 = v59;
  *v58 = v25;
  v28 = v60;
  (*(v60 + 104))(v27, *MEMORY[0x277D85200], v26);
  v29 = v25;
  LOBYTE(v25) = sub_21DBF9DAC();
  result = (*(v28 + 8))(v27, v26);
  if (v25)
  {
    v31 = sub_21DBFA12C();
    v32 = v61;
    v33 = [v61 parseString_];

    if (v33)
    {
      v60 = 0;
      v34 = v19 ^ 1;
      sub_21D0D8CF0(0, &qword_280D177E0);
      v35 = sub_21DBFA5EC();

      v36 = [v32 referenceDate];
      v37 = v55;
      sub_21DBF55FC();

      v38 = sub_21DBF563C();
      (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
      v17 = sub_21D4D072C(v35, v37, v34 & 1);

      sub_21D0CF7E0(v37, &qword_27CE58D68);
      v39 = sub_21DBF84AC();
      v40 = sub_21DBFAE9C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_21D0C9000, v39, v40, "Using QueryParser NLP attributes", v41, 2u);
        MEMORY[0x223D46520](v41, -1, -1);
      }

      sub_21DBF8E0C();
      v42 = sub_21DBF84AC();
      v43 = sub_21DBFAE9C();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v62;
      v46 = v53[0];
      if (v44)
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = *(v17 + 16);

        _os_log_impl(&dword_21D0C9000, v42, v43, "NLP finished {attributes.count: %ld}", v47, 0xCu);
        MEMORY[0x223D46520](v47, -1, -1);

        v48 = *(v17 + 16);
        if (!v48)
        {
          return v17;
        }

LABEL_15:
        v50 = v54;
        v51 = v17 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
        swift_beginAccess();
        v52 = *(v50 + 72);
        do
        {
          sub_21D4D97E4(v51, v7, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          if (swift_weakLoadStrong())
          {
            sub_21D4C8E14(v7, *(v45 + *(v46 + 20)));
          }

          sub_21D4D5640(v7, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          v51 += v52;
          --v48;
        }

        while (v48);
        return v17;
      }

      v48 = *(v17 + 16);
      if (v48)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_21D4DA518();
      swift_allocError();
      *v49 = 0;
      swift_willThrow();
    }

    return v17;
  }

  __break(1u);
  return result;
}

void sub_21D4C8E14(char *a1, uint64_t a2)
{
  v81 = a2;
  v86 = a1;
  v85 = sub_21DBF643C();
  v75 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF509C();
  v4 = *(v3 - 8);
  v76 = v3;
  v77 = v4;
  MEMORY[0x28223BE20](v3);
  v83 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21DBF7BCC();
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF7BEC();
  v79 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_21DBF7A0C();
  MEMORY[0x28223BE20](v26);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v87 = v32;
  v88 = &v70 - v31;
  v33 = *(v32 + 104);
  v89 = v34;
  v33(v30);
  v35 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  sub_21D4D97E4(&v86[*(v35 + 20)], v25, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      v37 = v87;
      v38 = v88;
    }

    else
    {
      v37 = v87;
      v38 = v88;
      if (EnumCaseMultiPayload != 5)
      {
        v39 = *(v87 + 8);
        v40 = v88;
LABEL_32:
        v39(v40, v89);
        return;
      }
    }

    (*(v37 + 8))(v38, v89);
LABEL_13:
    sub_21D4D5640(v25, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    return;
  }

  v71 = v13;
  v72 = v22;
  v41 = v84;
  v42 = v85;
  v86 = v28;
  v73 = v8;
  v74 = v7;
  if (EnumCaseMultiPayload > 1)
  {
    v43 = v88;
    if (EnumCaseMultiPayload == 2)
    {
      v55 = *v25;
      v56 = [*v25 structuredLocation];
      v57 = [v56 contactLabel];

      if (v57)
      {
        sub_21DBFA16C();

        v58 = [v55 proximity];
        if (sub_21DBFA24C())
        {
          v83 = v55;

          v59 = MEMORY[0x277D45000];
          v60 = v80;
          v62 = v74;
          v61 = v75;
        }

        else
        {
          v67 = sub_21DBFA25C();

          v60 = v80;
          v62 = v74;
          v61 = v75;
          if ((v67 & 1) == 0)
          {
            (*(v87 + 8))(v88, v89);

            return;
          }

          v83 = v55;
          v59 = MEMORY[0x277D45008];
        }

        *v41 = v58;
        v68 = v61;
        (*(v61 + 104))(v41, *v59, v42);
        sub_21DBF642C();
        (*(v68 + 8))(v41, v42);
        (*(v82 + 104))(v62, *MEMORY[0x277D457E0], v60);
        (*(v87 + 16))(v86, v88, v89);
        sub_21DBFADFC();
        v69 = v71;
        sub_21DBF7BDC();
        if (*(v78 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
        {
          sub_21DBF7BBC();
        }

        (*(v79 + 8))(v69, v73);
        v40 = v88;
        v39 = *(v87 + 8);
        goto LABEL_32;
      }
    }

    else
    {
      v44 = v82;
      v45 = v86;
      if (EnumCaseMultiPayload != 3)
      {
        (*(v87 + 8))(v88, v89);
        goto LABEL_13;
      }

      v46 = *v25;
      v47 = [*v25 description];
      sub_21DBFA16C();

      (*(v44 + 104))(v74, *MEMORY[0x277D457D8], v80);
      (*(v87 + 16))(v45, v43, v89);
      sub_21DBFADFC();
      sub_21DBF7BDC();
      if (*(v78 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
      {
        sub_21DBF7BBC();
      }

      (*(v79 + 8))(v10, v73);
    }

    v39 = *(v87 + 8);
    v40 = v43;
    goto LABEL_32;
  }

  v48 = v88;
  if (EnumCaseMultiPayload)
  {
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
    sub_21D4D984C(v25 + *(v63 + 48), v72, type metadata accessor for TTRRecurrenceRuleModel);
    v64 = TTRRecurrenceRuleModel.standaloneREMRecurrenceRule()();
    v65 = [v64 iCalendarDescription];

    sub_21DBFA16C();
    (*(v82 + 104))(v74, *MEMORY[0x277D457D0], v80);
    v66 = v87;
    (*(v87 + 16))(v86, v48, v89);
    sub_21DBFADFC();
    sub_21DBF7BDC();
    if (*(v78 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
    {
      sub_21DBF7BBC();
    }

    (*(v79 + 8))(v19, v73);
    sub_21D4D5640(v72, type metadata accessor for TTRRecurrenceRuleModel);
    (*(v66 + 8))(v48, v89);
    (*(v77 + 8))(v25, v76);
  }

  else
  {
    v49 = v77;
    v50 = v83;
    v51 = v25;
    v52 = v76;
    v53 = (*(v77 + 32))(v83, v51, v76);
    MEMORY[0x223D3D5E0](v53);
    (*(v82 + 104))(v74, *MEMORY[0x277D457C8], v80);
    v54 = v87;
    (*(v87 + 16))(v86, v48, v89);
    sub_21DBFADFC();
    sub_21DBF7BDC();
    if (*(v78 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
    {
      sub_21DBF7BBC();
    }

    (*(v79 + 8))(v16, v73);
    (*(v49 + 8))(v50, v52);
    (*(v54 + 8))(v88, v89);
  }
}

uint64_t sub_21D4C9908@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D030);
  result = a2(v7, &a1[*(v8 + 48)]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_21D4C99B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v38 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = sub_21DBF8F3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFE8);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFF0);
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v34 = &v33 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFF8);
  v18 = *(v17 - 8);
  v41 = v17;
  v42 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v39 = &v33 - v20;
  v35 = *(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  (*(v9 + 104))(v11, *MEMORY[0x277CBCBD0], v8, v19);
  (*(v5 + 104))(v7, *MEMORY[0x277CBCBE8], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF98);
  sub_21D0D0F1C(&qword_280D0C548, &qword_27CE5CF98);
  sub_21DBF92FC();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_21D0D0F1C(&qword_280D0C578, &qword_27CE5CFE8);
  sub_21D0F1CB0(&qword_280D10890, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest);
  v21 = v34;
  v22 = v36;
  sub_21DBF93AC();
  (*(v37 + 8))(v15, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v25 = v35;
  v24[2] = v35;
  v24[3] = v23;
  v26 = v45;
  v24[4] = v44;
  v24[5] = v26;
  v27 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA8);
  sub_21D0D0F1C(&qword_280D0C5E8, &qword_27CE5CFF0);
  sub_21D0D0F1C(&qword_280D0C4A8, &qword_27CE5CFA8);
  v29 = v39;
  v28 = v40;
  sub_21DBF93DC();

  (*(v43 + 8))(v21, v28);
  sub_21D0D0F1C(&qword_280D0C550, &qword_27CE5CFF8);
  v30 = v41;
  v31 = sub_21DBF920C();
  (*(v42 + 8))(v29, v30);
  return v31;
}

uint64_t sub_21D4C9FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = sub_21DBF8F3C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0D8);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0E0);
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0E8);
  v19 = *(v18 - 8);
  v41 = v18;
  v42 = v19;
  v20 = MEMORY[0x28223BE20](v18);
  v39 = &v34 - v21;
  v46 = a1;
  v36 = *(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  (*(v10 + 104))(v12, *MEMORY[0x277CBCBD0], v9, v20);
  (*(v6 + 104))(v8, *MEMORY[0x277CBCBE8], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA0);
  sub_21D0D0F1C(&qword_280D0C7B0, &qword_27CE5CFA0);
  sub_21DBF92FC();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  sub_21D0D0F1C(&qword_280D0C580, &qword_27CE5D0D8);
  sub_21D0F1CB0(&qword_280D10890, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest);
  v22 = v35;
  v23 = v37;
  sub_21DBF93AC();
  (*(v38 + 8))(v16, v23);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v26 = v36;
  v25[2] = v36;
  v25[3] = v24;
  v27 = v45;
  v25[4] = v44;
  v25[5] = v27;
  v28 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA8);
  sub_21D0D0F1C(&qword_280D0C5F0, &qword_27CE5D0E0);
  sub_21D0D0F1C(&qword_280D0C4A8, &qword_27CE5CFA8);
  v30 = v39;
  v29 = v40;
  sub_21DBF93DC();

  (*(v43 + 8))(v22, v29);
  sub_21D0D0F1C(&qword_280D0C558, &qword_27CE5D0E8);
  v31 = v41;
  v32 = sub_21DBF920C();
  (*(v42 + 8))(v30, v31);
  return v32;
}

void sub_21D4CA5B4(void (*a1)(id *), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_21D22D130;
    *(v7 + 24) = v4;
    v15 = sub_21D4DA3EC;
    v16 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_21D4CA934;
    v14 = &block_descriptor_47;
    v8 = _Block_copy(&aBlock);

    v9 = v6;

    [v9 anchoredBubbleCloudOverridesWithCompletion_];
    _Block_release(v8);
  }

  else
  {

    v10 = [objc_opt_self() unexpectedError];
    aBlock = v10;
    LOBYTE(v12) = 1;
    a1(&aBlock);
  }
}

void sub_21D4CA768(char a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    if (qword_280D0F388 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F390);
    v7 = a2;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_21DBFC75C();
      v14 = sub_21D0CDFB4(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21D0C9000, v8, v9, "TTRReminderTitleAttributesHarvester: Error when querying anchoredBubbleCloudOverridesPublisher {error: %s}", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    v15 = a2;
    a3(a2, 1);
  }

  else
  {
    (a3)(a1 & 1);
  }
}

void sub_21D4CA934(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_21D4CA9AC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D038);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v11[1] = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D4DA3B8;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D048);
  sub_21D0D0F1C(&qword_280D0C4A0, &qword_27CE5D040);
  sub_21DBF931C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  sub_21D0D0F1C(&qword_280D0C570, &qword_27CE5D038);
  sub_21DBF938C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21D4CABF8(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v141) = a3;
  v149 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8);
  MEMORY[0x28223BE20](v4 - 8);
  v147 = &v106[-v5];
  v146 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v140 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = &v106[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21DBF7A1C();
  v151 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v138 = &v106[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v106[-v10];
  MEMORY[0x28223BE20](v12);
  v144 = &v106[-v13];
  MEMORY[0x28223BE20](v14);
  v142 = &v106[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D050);
  MEMORY[0x28223BE20](v16 - 8);
  v135 = &v106[-v17];
  v139 = sub_21DBF9D8C();
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v136 = &v106[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v130 = sub_21DBF7B0C();
  v148 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v134 = &v106[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v127 = &v106[-v21];
  MEMORY[0x28223BE20](v22);
  v129 = &v106[-v23];
  v24 = sub_21DBF56BC();
  v128 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v132 = &v106[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v133 = &v106[-v27];
  v28 = sub_21DBF7A0C();
  v29 = *(v28 - 1);
  MEMORY[0x28223BE20](v28);
  v31 = &v106[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280D0F388 != -1)
  {
LABEL_61:
    swift_once();
  }

  v32 = sub_21DBF84BC();
  v122 = __swift_project_value_buffer(v32, qword_280D0F390);
  v33 = sub_21DBF84AC();
  v34 = sub_21DBFAE9C();
  v35 = os_log_type_enabled(v33, v34);
  v150 = v7;
  if (v35)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_21D0C9000, v33, v34, "Harvesting attributes using anchoredBubble model", v36, 2u);
    MEMORY[0x223D46520](v36, -1, -1);
  }

  if ((v141 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21DBF7CCC();
  (*(v29 + 104))(v31, *MEMORY[0x277D456F8], v28);
  v37 = sub_21DBF7C4C();
  (*(v29 + 8))(v31, v28);
  if ((v37 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v38 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v39 = v38[5];
  v40 = &a2[v38[6]];
  v42 = *v40;
  v41 = v40[1];
  v141 = v42;
  v131 = v41;
  v123 = *&a2[v39];
  v43 = v128;
  (*(v128 + 16))(v133, a2, v24);
  v44 = v38[8];
  v126 = *&a2[v38[7]];
  v125 = *&a2[v44];
  v45 = v38[14];
  v46 = a2;
  v47 = v148;
  v121 = v24;
  v48 = (v148 + 16);
  v49 = v129;
  v50 = v130;
  v124 = *(v148 + 16);
  (v124)(v129, &v46[v45], v130);
  v51 = &v46[v38[15]];
  v53 = *v51;
  v52 = v51[1];
  v120 = v53;
  v119 = v52;
  v152 = *(v149 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_listPredictor);
  v54 = "TitleAttributesHarvester.swift";

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0D0);
  v55 = v143;
  sub_21DBFBA6C();
  v143 = v55;
  if (v55)
  {

    (*(v47 + 8))(v49, v50);
    (*(v43 + 8))(v133, v121);
    return v54;
  }

  v24 = v131;
  v57 = v141;
  v118 = v48;

  v58 = v153;
  v59 = *(v149 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  v61 = v136;
  v60 = v137;
  *v136 = v59;
  v29 = v139;
  (*(v60 + 13))(v61, *MEMORY[0x277D85200], v139);
  v62 = v59;
  v63 = sub_21DBF9DAC();
  v64 = *(v60 + 1);
  v7 = (v60 + 8);
  v64(v61, v29);
  if ((v63 & 1) == 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v115 = v58;
  v141 = sub_21DBF660C();
  v65 = MEMORY[0x277D45750];
  sub_21D0F1CB0(&qword_280D0C7C8, MEMORY[0x277D45750]);
  v66 = v130;
  sub_21DBFA5BC();
  sub_21D0F1CB0(&qword_280D0C7B8, v65);
  v29 = v127;
  sub_21DBFC8DC();
  v24 = v134;
  v61 = v124;
  (v124)(v134, v129, v66);
  v67 = v65;
  v63 = v66;
  sub_21D0F1CB0(&qword_280D0C7C0, v67);
  sub_21DBFBC8C();
  v7 = v150;
  v57 = v148;
  if (qword_280D152C0 != -1)
  {
LABEL_63:
    swift_once();
  }

  TTRAcceptedAttributeCache.excludedAttributesDueToAccepted(_:)(v123, v24);
  v28 = v135;
  sub_21D4C465C(v24, v135);
  v68 = *(v57 + 8);
  v148 = v57 + 8;
  v114 = v68;
  v68(v24, v63);
  sub_21D0CF7E0(v28, &qword_27CE5D050);
  v69 = v63;
  v70 = *(v149 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store);
  v61(v24, v29, v69);
  sub_21DBF7B3C();
  swift_allocObject();
  v71 = v70;
  v123 = sub_21DBF7B1C();
  v72 = v141;
  v139 = *(v141 + 16);
  if (!v139)
  {
    v124 = MEMORY[0x277D84F90];
LABEL_45:

    v89 = *(v124 + 16);
    if (v89)
    {
      v90 = v150;
      v91 = *(v151 + 16);
      v92 = v124 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
      v141 = *(v151 + 72);
      v142 = v91;
      v151 += 16;
      v93 = (v151 - 8);
      v94 = (v140 + 48);
      v54 = MEMORY[0x277D84F90];
      do
      {
        v95 = v144;
        (v142)(v144, v92, v90);
        v96 = v147;
        sub_21D4CE0E8(v95, v147);
        (*v93)(v95, v90);
        if ((*v94)(v96, 1, v146) == 1)
        {
          sub_21D0CF7E0(v96, &qword_27CE5CFD8);
        }

        else
        {
          sub_21D4D984C(v96, v145, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_21D2137C8(0, *(v54 + 2) + 1, 1, v54);
          }

          v98 = *(v54 + 2);
          v97 = *(v54 + 3);
          if (v98 >= v97 >> 1)
          {
            v54 = sub_21D2137C8(v97 > 1, v98 + 1, 1, v54);
          }

          *(v54 + 2) = v98 + 1;
          sub_21D4D984C(v145, &v54[((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v98], type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        }

        v92 += v141;
        --v89;
      }

      while (v89);

      v99 = v121;
      v100 = v128;
    }

    else
    {

      v54 = MEMORY[0x277D84F90];
      v100 = v128;
      v99 = v121;
    }

    v101 = v130;
    v102 = v114;
    v114(v127, v130);
    v102(v129, v101);
    (*(v100 + 8))(v133, v99);
    sub_21DBF8E0C();
    v103 = sub_21DBF84AC();
    v104 = sub_21DBFAE9C();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 134217984;
      *(v105 + 4) = *(v54 + 2);

      _os_log_impl(&dword_21D0C9000, v103, v104, "anchoredBubble model finished {attributes.count: %ld}", v105, 0xCu);
      MEMORY[0x223D46520](v105, -1, -1);
    }

    else
    {
    }

    return v54;
  }

  v31 = 0;
  v108 = v11 + 8;
  v137 = (v151 + 16);
  v136 = (v151 + 88);
  LODWORD(v135) = *MEMORY[0x277D456D0];
  LODWORD(v120) = *MEMORY[0x277D456B8];
  v117 = *MEMORY[0x277D456C0];
  v116 = *MEMORY[0x277D45718];
  v113 = *MEMORY[0x277D456E0];
  v112 = *MEMORY[0x277D45710];
  v131 = (v151 + 8);
  v134 = (v151 + 96);
  v111 = *MEMORY[0x277D456E8];
  v118 = (v128 + 8);
  v110 = *MEMORY[0x277D45720];
  v119 = (v151 + 32);
  v109 = *MEMORY[0x277D456C8];
  v107 = *MEMORY[0x277D456D8];
  v124 = MEMORY[0x277D84F90];
  a2 = v142;
  while (1)
  {
    if (v31 >= *(v72 + 16))
    {
      __break(1u);
      goto LABEL_61;
    }

    v73 = v151;
    v28 = ((*(v151 + 80) + 32) & ~*(v151 + 80));
    v29 = *(v151 + 72);
    v74 = *(v151 + 16);
    v24 = v137;
    v74(a2, &v28[v72 + v29 * v31], v7);
    v74(v11, a2, v7);
    v75 = (*(v73 + 88))(v11, v7);
    if (v75 == v135)
    {
      (*v134)(v11, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0A0);
      if (v126)
      {
        v76 = [v126 uuid];
        v77 = v132;
        sub_21DBF568C();

        sub_21DBF565C();
        (*v118)(v77, v121);
      }

      v79 = sub_21DBF7B2C();

      v80 = sub_21DBF79FC();
      (*(*(v80 - 8) + 8))(v11, v80);
      if (v79)
      {
        v81 = *v119;
        (*v119)(v138, v142, v150);
        v82 = v124;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v152 = v82;
        if (isUniquelyReferenced_nonNull_native)
        {
          v84 = v82;
        }

        else
        {
          sub_21D18F068(0, *(v82 + 16) + 1, 1);
          v84 = v152;
        }

        v87 = *(v84 + 16);
        v86 = *(v84 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_21D18F068(v86 > 1, v87 + 1, 1);
          v84 = v152;
        }

        *(v84 + 16) = v87 + 1;
        v124 = v84;
        v88 = &v28[v84 + v87 * v29];
        v7 = v150;
        v81(v88, v138, v150);
        a2 = v142;
      }

      else
      {
        a2 = v142;
        v7 = v150;
        (*v131)(v142, v150);
      }

      goto LABEL_15;
    }

    if (v75 != v120 && v75 != v117)
    {
      break;
    }

LABEL_22:
    (*v131)(a2, v7);
    (*v134)(v11, v7);
LABEL_23:
    v78 = sub_21DBF79FC();
    (*(*(v78 - 8) + 8))(v11, v78);
LABEL_15:
    ++v31;
    v72 = v141;
    if (v139 == v31)
    {
      goto LABEL_45;
    }
  }

  if (v75 == v116)
  {
    (*v131)(a2, v7);
    (*v134)(v11, v7);
    v85 = &qword_27CE5D098;
LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(v85);

    goto LABEL_23;
  }

  if (v75 == v113)
  {
    (*v131)(a2, v7);
    (*v134)(v11, v7);
    v85 = &qword_27CE5D090;
    goto LABEL_35;
  }

  if (v75 == v112)
  {
    (*v131)(a2, v7);
    (*v134)(v11, v7);

    goto LABEL_23;
  }

  if (v75 == v111 || v75 == v110)
  {
    goto LABEL_22;
  }

  if (v75 == v109)
  {
    (*v131)(a2, v7);
    (*v134)(v11, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D070);

    goto LABEL_23;
  }

  if (v75 == v107)
  {
    (*v131)(a2, v7);
    (*v134)(v11, v7);
    v85 = &qword_27CE5D060;
    goto LABEL_35;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

id sub_21D4CC060@<X0>(void **a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)()@<X2>, const char *a4@<X3>, void *a5@<X8>)
{
  v9 = *a1;
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_280D0F390);
  v11 = v9;
  v12 = sub_21DBF84AC();
  v13 = a2();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = a3();
    v18 = sub_21D0CDFB4(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_21D0C9000, v12, v13, a4, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  *a5 = v9;
  return v9;
}

void *sub_21D4CC224(char *a1, uint64_t a2)
{
  v148 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8);
  MEMORY[0x28223BE20](v3 - 8);
  v149 = &v102 - v4;
  v146 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v140 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v143 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_21DBF7A1C();
  v147 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = (&v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D050);
  MEMORY[0x28223BE20](v7 - 8);
  v125 = &v102 - v8;
  v127 = sub_21DBF7CAC();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v136 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = &v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v12 - 8);
  v120 = &v102 - v13;
  v14 = sub_21DBF7C9C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v123 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v138 = &v102 - v18;
  v19 = sub_21DBF7C6C();
  v132 = *(v19 - 8);
  v133 = v19;
  MEMORY[0x28223BE20](v19);
  v121 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v137 = &v102 - v22;
  v141 = sub_21DBF9D8C();
  v130 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v129 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_21DBF7B0C();
  v24 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v124 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v131 = &v102 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v102 - v29;
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v134 = v15;
  v135 = v14;
  v31 = sub_21DBF84BC();
  v108 = __swift_project_value_buffer(v31, qword_280D0F390);
  v32 = sub_21DBF84AC();
  v33 = sub_21DBFAE9C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_21D0C9000, v32, v33, "Harvesting suggested attributes using REMSuggestedAttributesHarvester", v34, 2u);
    MEMORY[0x223D46520](v34, -1, -1);
  }

  v35 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v36 = v35[5];
  v37 = (a2 + v35[6]);
  v39 = *v37;
  v38 = v37[1];
  v116 = v39;
  v115 = v38;
  v112 = *(a2 + v36);
  v40 = v35[8];
  v128 = *(a2 + v35[7]);
  v117 = *(a2 + v40);
  v41 = v35[10];
  v113 = *(a2 + v35[9]);
  v114 = *(a2 + v41);
  v42 = v35[12];
  v111 = *(a2 + v35[11]);
  v110 = *(a2 + v42);
  v43 = v35[14];
  v109 = *(a2 + v35[13]);
  v44 = *(v24 + 16);
  v45 = v30;
  v46 = v30;
  v47 = v139;
  v44(v45, a2 + v43, v139);
  v48 = (a2 + v35[15]);
  v50 = *v48;
  v49 = v48[1];
  v119 = v50;
  v118 = v49;
  v51 = v148;
  v52 = *&v148[OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester];
  v150 = v52;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D058);
  v53 = v142;
  sub_21DBFBA6C();
  if (v53)
  {

    (*(v24 + 8))(v46, v47);
    return v52;
  }

  v54 = v128;
  v142 = (v24 + 16);
  v107 = v46;
  v106 = v24;

  v104 = v151;
  v55 = *&v51[OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue];
  v56 = v129;
  *v129 = v55;
  v57 = v130;
  v58 = v141;
  (*(v130 + 104))(v56, *MEMORY[0x277D85200], v141);
  v59 = v55;
  v60 = sub_21DBF9DAC();
  v62 = *(v57 + 8);
  v61 = v57 + 8;
  v62(v56, v58);
  if (v60)
  {
    v63 = 1;
    sub_21DBF7C5C();
    sub_21DBF7C8C();
    v105 = 0;
    v103 = v44;
    if (v54)
    {
      v64 = [v54 uuid];
      v65 = v120;
      sub_21DBF568C();

      v63 = 0;
      v66 = v133;
      v67 = v134;
    }

    else
    {
      v66 = v133;
      v67 = v134;
      v65 = v120;
    }

    v68 = sub_21DBF56BC();
    (*(*(v68 - 8) + 56))(v65, v63, 1, v68);
    sub_21DBF612C();
    MEMORY[0x223D3E8D0](v65);
    v69 = v122;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v70 = sub_21DBF563C();
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
    sub_21DBF797C();
    swift_allocObject();
    sub_21DBF8E0C();

    sub_21DBF8E0C();
    v51 = v112;
    v130 = sub_21DBF796C();
    if (v117)
    {
      sub_21DBFADFC();
    }

    (*(v132 + 16))(v121, v137, v66);
    (*(v67 + 16))(v123, v138, v135);
    sub_21DBF8E0C();
    sub_21D4DA2A0(MEMORY[0x277D84F90]);

    sub_21DBF7C7C();
    v71 = MEMORY[0x277D45750];
    sub_21D0F1CB0(&qword_280D0C7C8, MEMORY[0x277D45750]);
    v61 = v139;
    sub_21DBFA5BC();
    sub_21D0F1CB0(&qword_280D0C7B8, v71);
    v58 = v131;
    sub_21DBFC8DC();
    v72 = v124;
    v73 = v103;
    v103(v124, v107, v61);
    v74 = v71;
    v60 = v72;
    sub_21D0F1CB0(&qword_280D0C7C0, v74);
    sub_21DBFBC8C();
    v44 = v73;
    if (qword_280D152C0 == -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_14:
  TTRAcceptedAttributeCache.excludedAttributesDueToAccepted(_:)(v51, v60);
  v75 = v60;
  v76 = v125;
  sub_21D4C465C(v75, v125);
  v77 = v106 + 8;
  v78 = *(v106 + 8);
  v78(v75, v61);
  sub_21D0CF7E0(v76, &qword_27CE5D050);
  v79 = *&v148[OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store];
  v44(v75, v58, v61);
  sub_21DBF7B3C();
  swift_allocObject();
  v80 = v79;
  v52 = sub_21DBF7B1C();
  v81 = v136;
  v82 = v105;
  v83 = sub_21DBF7B6C();
  if (v82)
  {

    v78(v58, v61);
    (*(v126 + 8))(v81, v127);
    (*(v134 + 8))(v138, v135);
    (*(v132 + 8))(v137, v133);
    v78(v107, v61);
  }

  else
  {
    v128 = v52;
    v129 = v78;
    v105 = 0;
    v106 = v77;
    v84 = *(v83 + 16);
    if (v84)
    {
      v142 = *(v147 + 16);
      v85 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v125 = v83;
      v86 = v83 + v85;
      v141 = *(v147 + 72);
      v147 += 16;
      v87 = (v147 - 8);
      v88 = (v140 + 48);
      v52 = MEMORY[0x277D84F90];
      v89 = v149;
      do
      {
        v90 = v144;
        v91 = v145;
        v142(v144, v86, v145);
        sub_21D4CE0E8(v90, v89);
        v89 = v149;
        (*v87)(v90, v91);
        if ((*v88)(v89, 1, v146) == 1)
        {
          sub_21D0CF7E0(v89, &qword_27CE5CFD8);
        }

        else
        {
          sub_21D4D984C(v89, v143, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_21D2137C8(0, v52[2] + 1, 1, v52);
          }

          v93 = v52[2];
          v92 = v52[3];
          if (v93 >= v92 >> 1)
          {
            v52 = sub_21D2137C8(v92 > 1, v93 + 1, 1, v52);
          }

          v52[2] = v93 + 1;
          sub_21D4D984C(v143, v52 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v93, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          v89 = v149;
        }

        v86 += v141;
        --v84;
      }

      while (v84);

      v94 = v135;
      v81 = v136;
      v95 = v133;
      v96 = v134;
      v61 = v139;
    }

    else
    {

      v52 = MEMORY[0x277D84F90];
      v95 = v133;
      v96 = v134;
      v94 = v135;
    }

    v97 = v129;
    (v129)(v131, v61);
    (*(v126 + 8))(v81, v127);
    (*(v96 + 8))(v138, v94);
    (*(v132 + 8))(v137, v95);
    v97(v107, v61);
    sub_21DBF8E0C();
    v98 = sub_21DBF84AC();
    v99 = sub_21DBFAE9C();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 134217984;
      *(v100 + 4) = v52[2];

      _os_log_impl(&dword_21D0C9000, v98, v99, "REMSuggestedAttributesHarvester finished {attributes.count: %ld}", v100, 0xCu);
      MEMORY[0x223D46520](v100, -1, -1);
    }

    else
    {
    }
  }

  return v52;
}

uint64_t sub_21D4CD414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D038);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  v7[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D048);
  sub_21D0D0F1C(&qword_280D0C4A0, &qword_27CE5D040);
  sub_21DBF931C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  sub_21D0D0F1C(&qword_280D0C570, &qword_27CE5D038);
  sub_21DBF938C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D4CD5F4(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v27 = v5;
  v8 = sub_21DBF84BC();
  v26 = __swift_project_value_buffer(v8, qword_280D0F390);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21D0C9000, v9, v10, "Extracting mentions using REMSuggestedAttributesHarvester", v11, 2u);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v12 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v13 = (a2 + *(v12 + 24));
  v14 = *v13;
  v15 = v13[1];
  v30 = *(a2 + *(v12 + 28));
  v16 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0);
  sub_21DBFBA6C();

  if (!v2)
  {
    v24 = v15;
    v25 = v14;
    v17 = v31;
    v18 = v27;
    (*(v27 + 16))(v7, a2, v4);
    v29 = *(v28 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D058);
    sub_21DBFBA6C();

    a2 = sub_21D4CD9FC(v25, v24, v17, v7, v30);
    (*(v18 + 8))(v7, v4);

    sub_21DBF8E0C();
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAE9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = *(a2 + 16);

      _os_log_impl(&dword_21D0C9000, v20, v21, "REMSuggestedAttributesHarvester finished {mentions.count: %ld}", v22, 0xCu);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    else
    {
    }
  }

  return a2;
}

uint64_t sub_21D4CD9FC(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void (*)(uint64_t, char *, uint64_t), uint64_t), void (*a5)(void, uint64_t, uint64_t))
{
  v7 = v6;
  v55 = a1;
  v56 = a5;
  v54 = a4;
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8);
  MEMORY[0x28223BE20](v9 - 8);
  v59 = &v48 - v10;
  v62 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v57 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_21DBF7A1C();
  v64 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_21DBF56BC();
  v49 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_21DBF7C1C();
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x28223BE20](v16);
  v53 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF9D8C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = v5;
  v23 = *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18, v20);
  v24 = v23;
  LOBYTE(v23) = sub_21DBF9DAC();
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v48 = v13;
    v26 = [a3 entityName];
    v27 = sub_21DBFA16C();
    v29 = v28;

    v30 = [objc_opt_self() cdEntityName];
    v31 = sub_21DBFA16C();
    v33 = v32;

    if (v27 == v31 && v29 == v33)
    {
    }

    else
    {
      v34 = sub_21DBFC64C();

      if ((v34 & 1) == 0)
      {
        sub_21DBF8E0C();
        sub_21DBFADFC();
        (*(v49 + 16))(v15, v54, v48);
        v35 = v53;
        sub_21DBF7C0C();
        v36 = sub_21DBF7BAC();
        if (!v6)
        {
          v37 = *(v36 + 16);
          if (v37)
          {
            v38 = *(v64 + 16);
            v39 = *(v64 + 80);
            v49 = v36;
            v40 = v36 + ((v39 + 32) & ~v39);
            v55 = *(v64 + 72);
            v56 = v38;
            v64 += 16;
            v54 = (v64 - 8);
            v41 = (v57 + 48);
            v15 = MEMORY[0x277D84F90];
            v50 = 0;
            v42 = v59;
            do
            {
              v43 = v7;
              v44 = v58;
              v45 = v60;
              v56(v58, v40, v60);
              sub_21D4CE0E8(v44, v42);
              (*v54)(v44, v45);
              if ((*v41)(v42, 1, v62) == 1)
              {
                sub_21D0CF7E0(v42, &qword_27CE5CFD8);
                v7 = v43;
              }

              else
              {
                sub_21D4D984C(v42, v61, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v15 = sub_21D2137C8(0, v15[2] + 1, 1, v15);
                }

                v47 = v15[2];
                v46 = v15[3];
                if (v47 >= v46 >> 1)
                {
                  v15 = sub_21D2137C8(v46 > 1, v47 + 1, 1, v15);
                }

                v15[2] = v47 + 1;
                sub_21D4D984C(v61, v15 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v47, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
                v7 = v50;
              }

              v40 += v55;
              --v37;
            }

            while (v37);

            v35 = v53;
          }

          else
          {

            v15 = MEMORY[0x277D84F90];
          }
        }

        (*(v51 + 8))(v35, v52);
        return v15;
      }
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_21D4CE0E8@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, void *a2@<X8>)
{
  v241 = a2;
  v242 = a1;
  v246 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v2 - 8);
  v215 = &v209 - v3;
  v212 = sub_21DBF6AEC();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v210 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_21DBF5C4C();
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v218 = &v209 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_21DBF509C();
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v221 = &v209 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v222 = &v209 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v9 - 8);
  v226 = &v209 - v10;
  v11 = sub_21DBF563C();
  v228 = *(v11 - 8);
  v229 = v11;
  MEMORY[0x28223BE20](v11);
  v227 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v231 = &v209 - v14;
  v230 = sub_21DBF643C();
  v232 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v213 = (&v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v217 = (&v209 - v17);
  MEMORY[0x28223BE20](v18);
  v214 = (&v209 - v19);
  MEMORY[0x28223BE20](v20);
  v225 = (&v209 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v209 - v23;
  v25 = sub_21DBF56BC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = (&v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v237 = &v209 - v30;
  v31 = sub_21DBF7A1C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v209 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21DBF79FC();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v209 = &v209 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v216 = &v209 - v39;
  MEMORY[0x28223BE20](v40);
  v233 = &v209 - v41;
  MEMORY[0x28223BE20](v42);
  v234 = &v209 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v209 - v45;
  MEMORY[0x28223BE20](v47);
  v240 = &v209 - v48;
  v235 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  v49 = MEMORY[0x28223BE20](v235);
  v236 = (&v209 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v34, v242, v31, v49);
  v51 = (*(v32 + 88))(v34, v31);
  if (v51 == *MEMORY[0x277D456D0])
  {
    v242 = v28;
    (*(v32 + 96))(v34, v31);
    v52 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0A0) + 48)];
    v233 = *(v36 + 32);
    (v233)(v46, v34, v35);
    sub_21DBF610C();
    sub_21DBF564C();

    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      (*(v36 + 8))(v46, v35);

      sub_21D0CF7E0(v24, &qword_27CE58370);
LABEL_32:
      v124 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
      return (*(*(v124 - 8) + 56))(v241, 1, 1, v124);
    }

    v232 = v52;
    v239 = v36;
    v234 = v35;
    v55 = v237;
    (*(v26 + 32))(v237, v24, v25);
    v56 = *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store);
    v57 = v242;
    (*(v26 + 16))(v242, v55, v25);
    v58 = [objc_opt_self() cdEntityName];
    if (!v58)
    {
      sub_21DBFA16C();
      v58 = sub_21DBFA12C();
      v57 = v242;
    }

    v59 = objc_allocWithZone(MEMORY[0x277D44700]);
    v60 = sub_21DBF566C();
    v61 = [v59 initWithUUID:v60 entityName:v58];

    v62 = *(v26 + 8);
    v62(v57, v25);
    v243 = 0;
    v63 = [v56 fetchListWithObjectID:v61 error:&v243];

    if (!v63)
    {
      v96 = v243;
      v97 = sub_21DBF52DC();

      swift_willThrow();

      v62(v55, v25);
      (*(v239 + 8))(v46, v234);
      goto LABEL_32;
    }

    v64 = v243;
    v62(v55, v25);

    v65 = v236;
    *v236 = v63;
    swift_storeEnumTagMultiPayload();
    v66 = v240;
    v67 = v46;
    v69 = v233;
    v68 = v234;
    (v233)(v240, v67, v234);
    goto LABEL_10;
  }

  v239 = v36;
  if (v51 == *MEMORY[0x277D456B8])
  {
    (*(v32 + 96))(v34, v31);
    v54 = v239;
    v53 = v240;
    (*(v239 + 32))(v240, v34, v35);
    (*(v54 + 8))(v53, v35);
    goto LABEL_32;
  }

  v66 = v240;
  if (v51 == *MEMORY[0x277D456C0])
  {
    (*(v32 + 96))(v34, v31);
    v75 = v239;
    (*(v239 + 32))(v66, v34, v35);
    (*(v75 + 8))(v66, v35);
    goto LABEL_32;
  }

  if (v51 == *MEMORY[0x277D45718])
  {
    (*(v32 + 96))(v34, v31);
    v76 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D098) + 48)];
    v77 = v239;
    v78 = v234;
    v79 = v35;
    v233 = *(v239 + 32);
    (v233)(v234, v34, v35);
    v80 = v77;
    v81 = v76;
    (*(v80 + 16))(v66, v78, v35);
    if (sub_21DBF644C())
    {
      v82 = *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 24);
      v83 = *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 32);
      __swift_project_boxed_opaque_existential_1((v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider), v82);
      v238 = (*(v83 + 16))(v82, v83);
      if (v238)
      {

        v242 = v81;
        v84 = sub_21DBF628C();
        v86 = v85;
        v87 = v225;
        *v225 = 1;
        v88 = v232;
        v89 = *(v232 + 104);
        LODWORD(v237) = *MEMORY[0x277D45000];
        v90 = v230;
        v231 = v89;
        (v89)(v87);
        v91 = sub_21DBF642C();
        v93 = v92;
        v94 = v87;
        v95 = *(v88 + 8);
        v232 = v88 + 8;
        v95(v94, v90);
        if (v84 == v91 && v86 == v93)
        {
LABEL_28:

          v117 = 1;
          v68 = v35;
          v66 = v240;
LABEL_46:
          v153 = v239;
          v65 = v236;
          v149 = v234;
LABEL_64:
          v187 = objc_allocWithZone(MEMORY[0x277D44580]);
          v188 = v238;
          v189 = [v187 initWithStructuredLocation:v238 proximity:v117];

          (*(v153 + 8))(v149, v68);
          *v65 = v189;
          swift_storeEnumTagMultiPayload();
          v70 = 0;
          v71 = 0;
          v69 = v233;
          goto LABEL_11;
        }

        v141 = sub_21DBFC64C();

        v66 = v240;
        if ((v141 & 1) == 0)
        {
          v229 = sub_21DBF628C();
          v143 = v142;

          v144 = v214;
          *v214 = 2;
          v145 = v230;
          (v231)(v144, v237, v230);
          v146 = sub_21DBF642C();
          v148 = v147;
          v95(v144, v145);
          v149 = v234;
          if (v229 == v146 && v143 == v148)
          {

            v117 = 2;
          }

          else
          {
            v162 = sub_21DBFC64C();

            if (v162)
            {
              v117 = 2;
            }

            else
            {
              v117 = 0;
            }
          }

          v68 = v35;
          v153 = v239;
          v65 = v236;
          goto LABEL_64;
        }

LABEL_45:

        v117 = 1;
        v68 = v35;
        goto LABEL_46;
      }
    }

    else if (sub_21DBF645C())
    {
      v242 = v76;
      v105 = *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 24);
      v106 = *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 32);
      __swift_project_boxed_opaque_existential_1((v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider), v105);
      v238 = (*(v106 + 24))(v105, v106);
      if (v238)
      {

        v107 = sub_21DBF628C();
        v109 = v108;
        v110 = v217;
        *v217 = 1;
        v111 = v232;
        v112 = *(v232 + 104);
        LODWORD(v229) = *MEMORY[0x277D45008];
        v113 = v230;
        v237 = v112;
        (v112)(v110);
        v114 = sub_21DBF642C();
        v116 = v115;
        v231 = *(v111 + 8);
        v232 = v111 + 8;
        (v231)(v110, v113);
        if (v107 == v114 && v109 == v116)
        {
          goto LABEL_28;
        }

        v152 = sub_21DBFC64C();

        v66 = v240;
        if ((v152 & 1) == 0)
        {
          v163 = sub_21DBF628C();
          v165 = v164;

          v166 = v213;
          *v213 = 2;
          v167 = v230;
          (v237)(v166, v229, v230);
          v168 = sub_21DBF642C();
          v170 = v169;
          (v231)(v166, v167);
          if (v163 == v168 && v165 == v170)
          {

            v117 = 2;
          }

          else
          {
            v186 = sub_21DBFC64C();

            if (v186)
            {
              v117 = 2;
            }

            else
            {
              v117 = 0;
            }
          }

          v68 = v35;
          v153 = v239;
          v65 = v236;
          v149 = v234;
          goto LABEL_64;
        }

        goto LABEL_45;
      }
    }

    v123 = *(v239 + 8);
    v123(v78, v79);
    v123(v66, v79);
    goto LABEL_32;
  }

  if (v51 == *MEMORY[0x277D456E0])
  {
    (*(v32 + 96))(v34, v31);
    v98 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D090) + 48)];
    v99 = v239;
    v69 = *(v239 + 32);
    v100 = v34;
    v68 = v35;
    (v69)(v233, v100, v35);
    v101 = v231;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v102 = v226;
    v242 = v98;
    sub_21D4D2F38(v98, v101, v226);
    v104 = v228;
    v103 = v229;
    if ((*(v228 + 48))(v102, 1, v229) == 1)
    {

      (*(v104 + 8))(v101, v103);
      (*(v99 + 8))(v233, v68);
      sub_21D0CF7E0(v102, &qword_27CE58D68);
      goto LABEL_32;
    }

    (*(v104 + 32))(v227, v102, v103);
    (*(v99 + 16))(v66, v233, v68);
    v125 = v104;
    v126 = objc_opt_self();
    v127 = v103;
    v128 = sub_21DBF55BC();
    v129 = v218;
    (*(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone))();
    v130 = sub_21DBF5C0C();
    (*(v219 + 8))(v129, v220);
    v131 = [v126 rem:v128 dateComponentsWithDate:v130 timeZone:1 isAllDay:?];

    v132 = v221;
    sub_21DBF4EFC();

    v133 = sub_21DBF4EDC();
    v134 = [v133 rem_strippingTimeZone];

    v135 = v222;
    sub_21DBF4EFC();

    v136 = v223;
    v137 = v224;
    (*(v223 + 8))(v132, v224);
    v138 = *(v125 + 8);
    v138(v227, v127);
    v138(v231, v127);
    (*(v239 + 8))(v233, v68);
    v65 = v236;
    (*(v136 + 32))(v236, v135, v137);
    goto LABEL_42;
  }

  if (v51 == *MEMORY[0x277D45710])
  {
    (*(v32 + 96))(v34, v31);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D088);
    v119 = *&v34[*(v118 + 48)];
    v120 = &v34[*(v118 + 64)];
    v70 = *v120;
    v71 = *(v120 + 1);
    v69 = *(v239 + 32);
    v121 = v34;
    v68 = v35;
    (v69)(v66, v121, v35);
    v122 = v236;
    *v236 = v119;
    v65 = v122;
    swift_storeEnumTagMultiPayload();
    goto LABEL_11;
  }

  if (v51 == *MEMORY[0x277D456E8])
  {
    (*(v32 + 96))(v34, v31);
    v139 = v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D080) + 48)];
    v69 = *(v239 + 32);
    v140 = v34;
    v68 = v35;
    (v69)(v66, v140, v35);
    v65 = v236;
    *v236 = v139;
LABEL_42:
    swift_storeEnumTagMultiPayload();
LABEL_10:
    v70 = 0;
    v71 = 0;
LABEL_11:
    v72 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
    v73 = v241;
    sub_21D4D984C(v65, v241 + *(v72 + 20), type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    (v69)(v73 + *(v72 + 24), v66, v68);
    *v73 = v70;
    v73[1] = v71;
    return (*(*(v72 - 8) + 56))(v73, 0, 1, v72);
  }

  if (v51 == *MEMORY[0x277D45720])
  {
    (*(v32 + 96))(v34, v31);
    v150 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D078) + 48)];
    v69 = *(v239 + 32);
    v151 = v34;
    v68 = v35;
    (v69)(v66, v151, v35);
    v65 = v236;
    *v236 = v150;
    goto LABEL_42;
  }

  if (v51 == *MEMORY[0x277D456C8])
  {
    (*(v32 + 96))(v34, v31);
    v154 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D070) + 48)];
    v156 = *v154;
    v155 = *(v154 + 1);
    v237 = v156;
    v242 = v155;
    v157 = (v239 + 32);
    v158 = *(v239 + 32);
    v158(v216, v34, v35);
    sub_21DBF6AFC();
    v159 = v211;
    v160 = v210;
    v161 = v212;
    (*(v211 + 104))(v210, *MEMORY[0x277D45328], v212);
    v190 = sub_21DBF6ADC();
    v233 = v158;
    (*(v159 + 8))(v160, v161);
    v231 = v157;
    if (v190 >> 62)
    {
      v191 = sub_21DBFBD7C();
    }

    else
    {
      v191 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v192 = v216;
    if (!v191)
    {
LABEL_81:

      (*(v239 + 8))(v192, v35);
      goto LABEL_32;
    }

    v193 = 0;
    v238 = v190 & 0xC000000000000001;
    v234 = (v190 & 0xFFFFFFFFFFFFFF8);
    v232 = v191;
    while (1)
    {
      if (v238)
      {
        v194 = MEMORY[0x223D44740](v193, v190);
      }

      else
      {
        if (v193 >= *(v234 + 2))
        {
          goto LABEL_85;
        }

        v194 = *(v190 + 8 * v193 + 32);
      }

      v195 = v194;
      v196 = v193 + 1;
      if (__OFADD__(v193, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
      }

      v197 = v190;
      v198 = [v194 name];
      v199 = sub_21DBFA16C();
      v201 = v200;

      v243 = v199;
      v244 = v201;
      v202 = v215;
      sub_21DBF57AC();
      v203 = sub_21DBF582C();
      (*(*(v203 - 8) + 56))(v202, 0, 1, v203);
      sub_21D176F0C();
      v204 = sub_21DBFBBEC();
      v206 = v205;
      sub_21D0CF7E0(v202, &unk_27CE65010);

      if (v204 == v237 && v206 == v242)
      {
        break;
      }

      v207 = sub_21DBFC64C();

      v192 = v216;
      if (v207)
      {
        goto LABEL_83;
      }

      ++v193;
      v190 = v197;
      if (v196 == v232)
      {
        goto LABEL_81;
      }
    }

    v192 = v216;
LABEL_83:

    v66 = v240;
    v208 = v192;
    v68 = v35;
    v69 = v233;
    (v233)(v240, v208, v35);
    v65 = v236;
    *v236 = v195;
    goto LABEL_42;
  }

  if (v51 == *MEMORY[0x277D456D8])
  {
    (*(v32 + 96))(v34, v31);
    v171 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D060) + 48)];
    v172 = v239;
    v173 = v209;
    v233 = *(v239 + 32);
    (v233)(v209, v34, v35);
    v174 = sub_21DBF636C();
    if (!v174)
    {
      (*(v172 + 8))(v173, v35);

      goto LABEL_32;
    }

    v175 = v174;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v176 = swift_allocObject();
    *(v176 + 16) = xmmword_21DC0BFD0;
    v177 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
    v242 = v171;
    v178 = *MEMORY[0x277CBD098];
    *(v176 + 32) = v177;
    *(v176 + 40) = v178;
    v179 = *MEMORY[0x277CBCFC0];
    *(v176 + 48) = *MEMORY[0x277CBCFC0];
    __swift_project_boxed_opaque_existential_1((v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_contactsProvider), *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_contactsProvider + 24));
    v180 = v178;
    v181 = v179;
    v182 = sub_21DBF6A4C();
    v184 = v183;

    v243 = v182;
    LOBYTE(v244) = v184 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D068);
    sub_21DBFC83C();

    sub_21D3A229C(v182);
    v185 = v245;
    if (!v245)
    {
      (*(v239 + 8))(v173, v35);
      goto LABEL_32;
    }

    v66 = v240;
    v69 = v233;
    (v233)(v240, v173, v35);
    v68 = v35;
    v65 = v236;
    *v236 = v185;
    goto LABEL_42;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D4CFD58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v58 = a5;
  v59 = a4;
  v52 = a3;
  v48 = a2;
  v51 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D000);
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  MEMORY[0x28223BE20](v7);
  v61 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D008);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  MEMORY[0x28223BE20](v10);
  v54 = &v44 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D010);
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v53 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v50 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  MEMORY[0x28223BE20](v50);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D018);
  v20 = *(v19 - 8);
  v65 = v19;
  v66 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - v21;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D020);
  v23 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v25 = &v44 - v24;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D028);
  v26 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v28 = &v44 - v27;
  v49 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest;
  sub_21D4D97E4(a1, v18, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest);
  sub_21DBF90EC();
  v68 = v48;
  v29 = sub_21DBFB0DC();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  sub_21D0D8CF0(0, &qword_280D1B900);
  v48 = sub_21D0D0F1C(&qword_280D0C430, &qword_27CE5D018);
  sub_21D47130C();
  v30 = v65;
  sub_21DBF936C();
  sub_21D0CF7E0(v16, &unk_27CE5F250);
  v31 = *(v66 + 8);
  v66 += 8;
  v46 = v31;
  v31(v22, v30);
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D030);
  sub_21D0D0F1C(&qword_280D0C4F0, &qword_27CE5D020);
  v32 = v45;
  sub_21DBF921C();

  (*(v23 + 8))(v25, v32);
  sub_21D0D0F1C(&qword_280D0C630, &qword_27CE5D028);
  v33 = v47;
  v34 = sub_21DBF920C();
  (*(v26 + 8))(v28, v33);
  v35 = v54;
  v59(v34);
  v67 = MEMORY[0x277D84F90];
  sub_21D0D0F1C(&qword_280D0C538, &qword_27CE5D008);
  v36 = v53;
  v37 = v56;
  sub_21DBF922C();
  (*(v57 + 8))(v35, v37);
  sub_21D4D97E4(v51, v18, v49);
  sub_21DBF90EC();
  type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
  sub_21D0D0F1C(&qword_280D0C618, &qword_27CE5D010);
  v39 = v60;
  v38 = v61;
  v40 = v65;
  sub_21DBF928C();
  v46(v22, v40);
  sub_21D0D0F1C(&qword_280D0C5C0, &qword_27CE5D000);
  v41 = v63;
  v42 = sub_21DBF920C();

  (*(v64 + 8))(v38, v41);
  (*(v62 + 8))(v36, v39);
  return v42;
}

uint64_t sub_21D4D05CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D030);
  v6 = v5;
  if (!Strong)
  {
    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }

  v7 = *(v5 + 48);
  *a2 = Strong;
  sub_21D4D97E4(a1, a2 + v7, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest);
  return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
}

uint64_t sub_21D4D06C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_21D4D97E4(a1, a3, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest);
  *(a3 + *(type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0) + 20)) = v4;

  return sub_21DBF8E0C();
}

uint64_t sub_21D4D072C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_21DBF7A0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84F90];
  v10 = sub_21D4D08DC();
  if (v10)
  {
    sub_21D562CB0(v10);
  }

  if (a3)
  {
    sub_21DBF656C();
    v11 = sub_21DBF654C();
    v12 = (*(v7 + 104))(v9, *MEMORY[0x277D456F0], v6);
    MEMORY[0x28223BE20](v12);
    *(&v15 - 2) = v4;
    *(&v15 - 1) = v9;
    v13 = sub_21D4E6934(sub_21D4DA56C, (&v15 - 4), v11);

    (*(v7 + 8))(v9, v6);
    sub_21D562CB0(v13);
  }

  return v16;
}

void *sub_21D4D08DC()
{
  v28 = sub_21DBF7A0C();
  v0 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v18 - v4);
  v27 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v19 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF656C();
  v7 = sub_21DBF655C();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v10 = 0;
    v24 = v8 & 0xFFFFFFFFFFFFFF8;
    v25 = v8 & 0xC000000000000001;
    v23 = *MEMORY[0x277D456F0];
    v21 = (v0 + 1);
    v22 = (v0 + 13);
    v20 = (v19 + 48);
    v0 = MEMORY[0x277D84F90];
    v11 = v28;
    while (1)
    {
      if (v25)
      {
        v12 = MEMORY[0x223D44740](v10, v8);
      }

      else
      {
        if (v10 >= *(v24 + 16))
        {
          goto LABEL_18;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      (*v22)(v2, v23, v11);
      sub_21D4D0DD0(v13, v2, v5);

      (*v21)(v2, v11);
      if ((*v20)(v5, 1, v27) == 1)
      {
        sub_21D0CF7E0(v5, &qword_27CE5CFD8);
      }

      else
      {
        sub_21D4D984C(v5, v26, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_21D2137C8(0, v0[2] + 1, 1, v0);
        }

        v16 = v0[2];
        v15 = v0[3];
        if (v16 >= v15 >> 1)
        {
          v0 = sub_21D2137C8(v15 > 1, v16 + 1, 1, v0);
        }

        v0[2] = v16 + 1;
        sub_21D4D984C(v26, v0 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      }

      ++v10;
      if (v14 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v0 = MEMORY[0x277D84F90];
LABEL_21:

  return v0;
}

uint64_t sub_21D4D0CB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v9 = *(v8 + 20);
  if (_s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(a1 + v9, a2 + v9))
  {
    *a3 = 1;
    v10 = *a1;
    v11 = a1[1];
    sub_21D4D97E4(a1 + v9, a4 + *(v8 + 20), type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    sub_21DBF79CC();
    *a4 = v10;
    a4[1] = v11;
  }

  else
  {
    sub_21D4D97E4(a1, a4, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
  }

  return (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
}

uint64_t sub_21D4D0DD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v147 = a2;
  v5 = sub_21DBF7A0C();
  v145 = *(v5 - 8);
  v146 = v5;
  MEMORY[0x28223BE20](v5);
  v144 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v7 - 8);
  v135 = &v130 - v8;
  v9 = sub_21DBF563C();
  v149 = *(v9 - 8);
  v150 = v9;
  MEMORY[0x28223BE20](v9);
  v139 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v136 = &v130 - v12;
  MEMORY[0x28223BE20](v13);
  v142 = &v130 - v14;
  v148 = sub_21DBF509C();
  v152 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v138 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v140 = &v130 - v17;
  v143 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v143);
  v153 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v20 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v141 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v133 = &v130 - v23;
  MEMORY[0x28223BE20](v24);
  v134 = &v130 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v130 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v29 - 8);
  v151 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v130 - v32;
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v34 = sub_21DBF84BC();
  __swift_project_value_buffer(v34, qword_280D0F390);
  v35 = a1;
  v36 = sub_21DBF84AC();
  v37 = sub_21DBFAEAC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v20;
    v39 = a3;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v35;
    *v41 = v35;
    v42 = v35;
    _os_log_impl(&dword_21D0C9000, v36, v37, "Processing recurrent event: %@", v40, 0xCu);
    sub_21D0CF7E0(v41, &unk_27CE60070);
    MEMORY[0x223D46520](v41, -1, -1);
    v43 = v40;
    a3 = v39;
    v20 = v38;
    MEMORY[0x223D46520](v43, -1, -1);
  }

  v44 = *(v20 + 56);
  v44(v33, 1, 1, v19);
  v137 = [v35 weekDay];
  v45 = [v35 hourFrequency];
  if (v45 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_21D0CF7E0(v33, &qword_27CE5A018);
    v54 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v54 - 8) + 56))(v33, 1, 1, v54);
    v55 = v19[5];
    v56 = v19[6];
    *&v33[v19[7]] = 0;
    *&v33[v19[8]] = 0;
    *&v33[v19[9]] = 0;
    *&v33[v19[10]] = 0;
    *&v33[v19[11]] = 0;
    *&v33[v19[12]] = 0;
    *&v33[v19[13]] = 0;
    *&v33[v55] = 4;
    *&v33[v56] = v45;
    goto LABEL_13;
  }

  v132 = 0x7FFFFFFFFFFFFFFFLL;
  v46 = [v35 dayFrequency];
  if (v46 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v57 = v46;
    sub_21D0CF7E0(v33, &qword_27CE5A018);
    v58 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v58 - 8) + 56))(v33, 1, 1, v58);
    v59 = v19[5];
    v60 = v19[6];
    *&v33[v19[7]] = 0;
    *&v33[v19[8]] = 0;
    *&v33[v19[9]] = 0;
    *&v33[v19[10]] = 0;
    *&v33[v19[11]] = 0;
    *&v33[v19[12]] = 0;
    *&v33[v19[13]] = 0;
    *&v33[v59] = 0;
    *&v33[v60] = v57;
    v44(v33, 0, 1, v19);
LABEL_15:
    v45 = v132;
    goto LABEL_49;
  }

  v47 = [v35 monthFrequency];
  v131 = v44;
  if (v47 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v61 = v47;
    v62 = v20;
    v63 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v63 - 8) + 56))(v28, 1, 1, v63);
    v64 = v19[5];
    v65 = v19[6];
    *&v28[v19[7]] = 0;
    v66 = v19[8];
    *&v28[v66] = 0;
    *&v28[v19[9]] = 0;
    *&v28[v19[10]] = 0;
    *&v28[v19[11]] = 0;
    *&v28[v19[12]] = 0;
    *&v28[v19[13]] = 0;
    *&v28[v64] = 2;
    *&v28[v65] = v61;
    v67 = [v35 weekOfMonthFrequency];
    if (v67 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v137 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v68 = [v35 weekdayOrdinal];
        if (v68 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v69 = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960);
          v70 = swift_allocObject();
          *(v70 + 16) = xmmword_21DC08D00;
          *(v70 + 32) = v137;
          *(v70 + 40) = v69;
          sub_21D0CF7E0(v33, &qword_27CE5A018);
          *&v28[v66] = v70;
LABEL_29:
          v20 = v62;
          v45 = v132;
          sub_21D4D97E4(v28, v33, type metadata accessor for TTRRecurrenceRuleModel);
          v131(v33, 0, 1, v19);
LABEL_48:
          sub_21D4D5640(v28, type metadata accessor for TTRRecurrenceRuleModel);
          goto LABEL_49;
        }
      }
    }

    else
    {
      v79 = v137;
      if (v137 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v87 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960);
        v88 = swift_allocObject();
        v89 = v79;
        v90 = v88;
        *(v88 + 16) = xmmword_21DC08D00;
        *(v88 + 32) = v89;
        *(v88 + 40) = v87;
        sub_21D0CF7E0(v33, &qword_27CE5A018);
        *&v28[v66] = v90;
        goto LABEL_29;
      }
    }

    sub_21D0CF7E0(v33, &qword_27CE5A018);
    goto LABEL_29;
  }

  v48 = [v35 weekOfYear];
  if (v48 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v71 = v48;
    v72 = type metadata accessor for TTRRecurrenceEndModel(0);
    v73 = v134;
    (*(*(v72 - 8) + 56))(v134, 1, 1, v72);
    v74 = v19[5];
    v75 = v19[6];
    *&v73[v19[7]] = 0;
    v133 = v19[8];
    *&v73[v133] = 0;
    *&v73[v19[9]] = 0;
    *&v73[v19[10]] = 0;
    *&v73[v19[11]] = 0;
    *&v73[v19[12]] = 0;
    *&v73[v19[13]] = 0;
    *&v73[v74] = 1;
    *&v73[v75] = v71;
    v76 = [v35 weekdayStart];
    if (v76 == 0x7FFFFFFFFFFFFFFFLL || (v77 = v76, result = [v35 weekdayEnd], result == 0x7FFFFFFFFFFFFFFFLL))
    {
      if (v137 == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_21D0CF7E0(v33, &qword_27CE5A018);
        v45 = v132;
        v28 = v134;
      }

      else
      {
        v91 = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_21DC08D00;
        *(v92 + 32) = v91;
        *(v92 + 40) = 0;
        sub_21D0CF7E0(v33, &qword_27CE5A018);
        v93 = v134;
        *&v134[v133] = v92;
        v28 = v93;
        v45 = v132;
      }

LABEL_47:
      sub_21D4D97E4(v28, v33, type metadata accessor for TTRRecurrenceRuleModel);
      v44(v33, 0, 1, v19);
      goto LABEL_48;
    }

    if (result < v77)
    {
      v94 = __OFADD__(result, 7);
      result += 7;
      if (v94)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (result < v77)
      {
LABEL_68:
        __break(1u);
        return result;
      }
    }

    v137 = result;
    v130 = a3;
    v95 = MEMORY[0x277D84F90];
    while (!__OFSUB__(v77, 1))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v96 = v20;
      if ((result & 1) == 0)
      {
        result = sub_21D212558(0, *(v95 + 16) + 1, 1, v95);
        v95 = result;
      }

      v98 = *(v95 + 16);
      v97 = *(v95 + 24);
      if (v98 >= v97 >> 1)
      {
        result = sub_21D212558((v97 > 1), v98 + 1, 1, v95);
        v95 = result;
      }

      *(v95 + 16) = v98 + 1;
      v99 = v95 + 16 * v98;
      *(v99 + 32) = (v77 - 1) % 7 + 1;
      *(v99 + 40) = 0;
      if (v137 == v77)
      {
        sub_21D0CF7E0(v33, &qword_27CE5A018);
        v28 = v134;
        *&v134[v133] = v95;
        a3 = v130;
        v20 = v96;
        v45 = v132;
        v44 = v131;
        goto LABEL_47;
      }

      v94 = __OFADD__(v77++, 1);
      v20 = v96;
      if (v94)
      {
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v137 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v80 = [v35 weekdayOrdinal];
    v81 = type metadata accessor for TTRRecurrenceEndModel(0);
    v82 = v133;
    (*(*(v81 - 8) + 56))(v133, 1, 1, v81);
    v84 = v19[5];
    v83 = v19[6];
    *(v82 + v19[7]) = 0;
    v85 = v19[9];
    v134 = v19[8];
    *(v82 + v85) = 0;
    *(v82 + v19[10]) = 0;
    *(v82 + v19[11]) = 0;
    *(v82 + v19[12]) = 0;
    *(v82 + v19[13]) = 0;
    if (v80 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v82 + v84) = 1;
      *(v82 + v83) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_21DC08D00;
      *(v86 + 32) = v137;
      *(v86 + 40) = 0;
      sub_21D0CF7E0(v33, &qword_27CE5A018);
      *&v134[v82] = v86;
    }

    else
    {
      *(v82 + v84) = 2;
      *(v82 + v83) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_21DC08D00;
      *(v100 + 32) = v137;
      *(v100 + 40) = v80;
      sub_21D0CF7E0(v33, &qword_27CE5A018);
      *&v134[v82] = v100;
    }

    sub_21D4D97E4(v82, v33, type metadata accessor for TTRRecurrenceRuleModel);
    v44(v33, 0, 1, v19);
    sub_21D4D5640(v82, type metadata accessor for TTRRecurrenceRuleModel);
    goto LABEL_15;
  }

  v49 = [v35 yearFrequency];
  v45 = v132;
  if (v49 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = v49;
    sub_21D0CF7E0(v33, &qword_27CE5A018);
    v51 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v51 - 8) + 56))(v33, 1, 1, v51);
    v52 = v19[5];
    v53 = v19[6];
    *&v33[v19[7]] = 0;
    *&v33[v19[8]] = 0;
    *&v33[v19[9]] = 0;
    *&v33[v19[10]] = 0;
    *&v33[v19[11]] = 0;
    *&v33[v19[12]] = 0;
    *&v33[v19[13]] = 0;
    *&v33[v52] = 3;
    *&v33[v53] = v50;
LABEL_13:
    v44(v33, 0, 1, v19);
  }

LABEL_49:
  v101 = v151;
  sub_21D0D3954(v33, v151, &qword_27CE5A018);
  if ((*(v20 + 48))(v101, 1, v19) == 1)
  {
    sub_21D0CF7E0(v101, &qword_27CE5A018);
    v102 = [v35 startDate];
    v103 = v152;
    v104 = v153;
    if (!v102)
    {
      sub_21D0CF7E0(v33, &qword_27CE5A018);
      v115 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
      return (*(*(v115 - 8) + 56))(a3, 1, 1, v115);
    }

    v105 = v139;
    v106 = v102;
    sub_21DBF55FC();

    v107 = [v35 isAllDay];
    v108 = v138;
    sub_21D4D220C(v107, v138);
    (*(v149 + 8))(v105, v150);
    (*(v103 + 32))(v104, v108, v148);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v109 = v141;
    sub_21D4D984C(v101, v141, type metadata accessor for TTRRecurrenceRuleModel);
    v110 = [v35 startDate];
    v111 = v152;
    v104 = v153;
    if (v110)
    {
      v112 = v110;
      sub_21DBF55FC();

      v113 = v140;
      if (v45 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v114 = [v35 isAllDay];
      }

      else
      {
        v114 = 0;
      }

      v120 = v142;
      sub_21D4D220C(v114, v113);
      (*(v149 + 8))(v120, v150);
      v117 = v148;
    }

    else
    {
      v116 = v135;
      sub_21D4D2458(v109, v135);
      v117 = v148;
      v118 = (*(v111 + 48))(v116, 1, v148);
      v113 = v140;
      if (v118 == 1)
      {
        sub_21D0CF7E0(v33, &qword_27CE5A018);
        sub_21D0CF7E0(v116, &qword_27CE58D60);
        v119 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
        (*(*(v119 - 8) + 56))(a3, 1, 1, v119);
        return sub_21D4D5640(v109, type metadata accessor for TTRRecurrenceRuleModel);
      }

      (*(v111 + 32))(v140, v116, v117);
    }

    v121 = [v35 endDate];
    if (v121)
    {
      v122 = v136;
      v123 = v121;
      sub_21DBF55FC();

      sub_21D0CF7E0(v109, &unk_27CE62610);
      (*(v149 + 32))(v109, v122, v150);
      v124 = type metadata accessor for TTRRecurrenceEndModel(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v124 - 8) + 56))(v109, 0, 1, v124);
    }

    v125 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
    (*(v111 + 32))(v104, v113, v117);
    sub_21D4D97E4(v109, v104 + v125, type metadata accessor for TTRRecurrenceRuleModel);
    swift_storeEnumTagMultiPayload();
    sub_21D4D5640(v109, type metadata accessor for TTRRecurrenceRuleModel);
  }

  v126 = [v35 range];
  v128 = v127;
  v129 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  sub_21D4D97E4(v104, a3 + *(v129 + 20), type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  (*(v145 + 16))(v144, v147, v146);
  sub_21DBF79EC();
  sub_21D4D5640(v104, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  sub_21D0CF7E0(v33, &qword_27CE5A018);
  *a3 = v126;
  a3[1] = v128;
  return (*(*(v129 - 8) + 56))(a3, 0, 1, v129);
}

uint64_t sub_21D4D220C@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_21DBF5C4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF509C();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = sub_21DBF55BC();
  (*(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone))();
  v13 = sub_21DBF5C0C();
  (*(v5 + 8))(v7, v4);
  v14 = [v11 rem:v12 dateComponentsWithDate:v13 timeZone:a1 & 1 isAllDay:?];

  sub_21DBF4EFC();
  if ((a1 & 1) == 0)
  {
    return (*(v8 + 32))(v19, v10, v18);
  }

  v15 = sub_21DBF4EDC();
  v16 = [v15 rem_strippingTimeZone];

  sub_21DBF4EFC();
  return (*(v8 + 8))(v10, v18);
}

void sub_21D4D2458(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v46 - v6;
  v7 = sub_21DBF5C4C();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_21DBF563C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v51 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v52 = &v46 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21D0D8CF0(0, &qword_280D177E8);
  sub_21D4D97E4(a1, v23, type metadata accessor for TTRRecurrenceRuleModel);
  v55 = v24;
  v25 = sub_21D4D3C50(v23);
  v26 = v3;
  sub_21D0D3954(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_now, v12, &qword_27CE58D68);
  v27 = *(v14 + 48);
  v28 = v27(v12, 1, v13);
  v58 = v13;
  if (v28 == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    if (v27(v12, 1, v13) != 1)
    {
      sub_21D0CF7E0(v12, &qword_27CE58D68);
    }
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
  }

  v47 = [v25 frequency];
  v54 = v47 != 4;
  v29 = sub_21DBF509C();
  v30 = *(v29 - 8);
  v49 = *(v30 + 56);
  v50 = v29;
  v48 = v30 + 56;
  v49(v59, 1, 1);
  v31 = objc_opt_self();
  v32 = sub_21DBF55BC();
  v33 = sub_21DBF55BC();
  (*(v26 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone))();
  v34 = sub_21DBF5C0C();
  (*(v56 + 8))(v9, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21DC09CF0;
  *(v35 + 32) = v25;
  v36 = v25;
  v37 = sub_21DBFA5DC();

  v38 = [v31 nextRecurrentDueDateAfter:v32 dueDate:v33 timeZone:v34 allDay:v54 recurrenceRules:v37];

  if (v38)
  {
    v39 = v47 != 4;
    v40 = v51;
    sub_21DBF55FC();

    v41 = v52;
    v42 = v58;
    (*(v14 + 32))(v52, v40, v58);
    v43 = v53;
    sub_21D4D220C(v39, v53);

    v44 = *(v14 + 8);
    v44(v41, v42);
    v45 = v59;
    sub_21D0CF7E0(v59, &qword_27CE58D60);
    v44(v20, v42);
    (v49)(v43, 0, 1, v50);
    sub_21D0D523C(v43, v45, &qword_27CE58D60);
  }

  else
  {
    (*(v14 + 8))(v20, v58);
  }
}

void sub_21D4D2A30(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v46 = a3;
  v8 = sub_21DBF7A0C();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v16 = [*a1 proximity];
  v17 = [v15 locationType];
  if (v17 >= 2)
  {
    if (v17 == 2)
    {
      if (v16)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v23 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
      goto LABEL_15;
    }

    if (qword_280D0F388 != -1)
    {
      swift_once();
    }

    v40 = sub_21DBF84BC();
    __swift_project_value_buffer(v40, qword_280D0F390);
    v41 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v41);
    sub_21DAEAB00("unknown location type", 21, 2);
    __break(1u);
  }

  else
  {
    v42 = v4;
    v43 = a4;
    v18 = [v15 locationType];
    v20 = *(a2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 24);
    v19 = *(a2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider), v20);
    if (v18)
    {
      v21 = (*(v19 + 24))(v20, v19);
    }

    else
    {
      v21 = (*(v19 + 16))(v20, v19);
    }

    v24 = v21;
    a4 = v43;
    if (v21)
    {
      if (v16)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      v23 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v21 proximity:v25];

LABEL_15:
      *v14 = v23;
      swift_storeEnumTagMultiPayload();
      v26 = [v15 range];
      v28 = v27;
      v29 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
      sub_21D4D97E4(v14, a4 + *(v29 + 20), type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      (*(v44 + 16))(v10, v46, v45);
      sub_21DBF79EC();
      sub_21D4D5640(v14, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      *a4 = v26;
      a4[1] = v28;
      (*(*(v29 - 8) + 56))(a4, 0, 1, v29);
      return;
    }

    if (qword_280D0F388 != -1)
    {
      swift_once();
    }

    v30 = sub_21DBF84BC();
    __swift_project_value_buffer(v30, qword_280D0F390);
    v31 = v15;
    v32 = sub_21DBF84AC();
    v33 = sub_21DBFAEDC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      v47 = [v31 locationType];
      type metadata accessor for TTRNLTextStructuredEventLocationType(0);
      v36 = sub_21DBFA1AC();
      v38 = sub_21D0CDFB4(v36, v37, &v48);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_21D0C9000, v32, v33, "Not showing location suggestion because locationOptionsProvider doesn't have it {locationType: %s}", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223D46520](v35, -1, -1);
      MEMORY[0x223D46520](v34, -1, -1);
    }

    v39 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
    (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
  }
}

uint64_t sub_21D4D2F38@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a1;
  v124 = a2;
  v118 = a3;
  v3 = sub_21DBF58EC();
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x28223BE20](v3);
  v108 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_21DBF592C();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_21DBF58AC();
  v105 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v103 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v9 - 8);
  v101 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v11 - 8);
  v104 = &v90 - v12;
  v117 = sub_21DBF563C();
  v119 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v91 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = &v90 - v15;
  MEMORY[0x28223BE20](v16);
  v113 = &v90 - v17;
  v122 = sub_21DBF5A0C();
  v125 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_21DBF5A2C();
  v114 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v123 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF5C4C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21DBF509C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = objc_opt_self();
  v30 = sub_21DBF55BC();
  (*(v115 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone))();
  v31 = sub_21DBF5C0C();
  v97 = v22;
  v32 = *(v22 + 8);
  v98 = v21;
  v32(v24, v21);
  v33 = [v29 rem:v30 dateComponentsWithDate:v31 timeZone:0 isAllDay:?];

  sub_21DBF4EFC();
  v93 = sub_21DBF4F5C();
  v35 = v34;
  v36 = *(v26 + 8);
  v120 = v28;
  v100 = v25;
  v99 = v26 + 8;
  v96 = v36;
  v36(v28, v25);
  v37 = v123;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v38 = *MEMORY[0x277CC99B8];
  v39 = v125;
  v40 = *(v125 + 104);
  v41 = v122;
  v95 = v125 + 104;
  v94 = v40;
  (v40)(v19, v38, v122);
  v42 = sub_21DBF5A1C();
  v43 = v39 + 8;
  v44 = *(v39 + 8);
  v92 = v19;
  v45 = v19;
  v46 = v43;
  v44(v45, v41);
  v47 = v114;
  v49 = v114 + 8;
  v48 = *(v114 + 8);
  v50 = v37;
  v51 = v126;
  v48(v50);
  if (v42 != sub_21DBF63AC() || (v35 & 1) != 0 || v93 >= sub_21DBF55AC())
  {
    v125 = v46;
    v93 = v44;
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v56 = *(v47 + 56);
    v112 = v48;
    v56(v101, 1, 1, v51);
    (*(v97 + 56))(v102, 1, 1, v98);
    sub_21DBF63AC();
    sub_21DBF504C();
    v57 = v105;
    v58 = v103;
    (*(v105 + 104))(v103, *MEMORY[0x277CC9878], v121);
    v59 = *MEMORY[0x277CC9900];
    v60 = v107;
    v61 = *(v107 + 104);
    v115 = v49;
    v62 = v106;
    v63 = v109;
    v61(v106, v59, v109);
    v65 = v110;
    v64 = v111;
    v66 = v108;
    (*(v110 + 104))(v108, *MEMORY[0x277CC98E8], v111);
    v67 = v104;
    v68 = v123;
    sub_21DBF59EC();
    (*(v65 + 8))(v66, v64);
    (*(v60 + 8))(v62, v63);
    v69 = v112;
    (*(v57 + 8))(v58, v121);
    v96(v120, v100);
    v69(v68, v126);
    v55 = v119;
    v54 = v117;
    if ((*(v119 + 48))(v67, 1, v117) == 1)
    {
      sub_21D0CF7E0(v67, &qword_27CE58D68);
LABEL_13:
      v52 = 1;
      v53 = v118;
      return (*(v55 + 56))(v53, v52, 1, v54);
    }

    v70 = *(v55 + 32);
    v120 = (v55 + 32);
    v116 = v70;
    v70(v113, v67, v54);
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v71 = v92;
    LODWORD(v121) = *MEMORY[0x277CC9968];
    v72 = v122;
    v94(v92);
    v73 = sub_21DBF59BC();
    v93(v71, v72);
    v69(v68, v126);
    if (v73)
    {
      v74 = *(v55 + 8);
    }

    else
    {
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v75 = type metadata accessor for TTRReminderEditor();
      v76 = v91;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v77 = v71;
      v78 = v90;
      v124 = v75;
      static TTRReminderEditor.tomorrowDueDate(now:)(v76, v90);
      v79 = *(v55 + 8);
      v79(v76, v54);
      v80 = v122;
      (v94)(v77, v121, v122);
      v81 = v123;
      LOBYTE(v75) = sub_21DBF59BC();
      v82 = v80;
      v74 = v79;
      v93(v77, v82);
      v79(v78, v54);
      (v112)(v81, v126);
      if ((v75 & 1) == 0)
      {
        _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
        v85 = v91;
        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
        static TTRReminderEditor.thisWeekendDueDate(now:)(v85, v78);
        v79(v85, v54);
        v86 = v92;
        v87 = v122;
        (v94)(v92, v121, v122);
        v83 = v113;
        v88 = sub_21DBF59BC();
        v93(v86, v87);
        v74(v78, v54);
        (v112)(v81, v126);
        v55 = v119;
        if ((v88 & 1) == 0)
        {
          v89 = v118;
          v116(v118, v83, v54);
          v53 = v89;
          v52 = 0;
          return (*(v55 + 56))(v53, v52, 1, v54);
        }

        goto LABEL_12;
      }

      v55 = v119;
    }

    v83 = v113;
LABEL_12:
    v74(v83, v54);
    goto LABEL_13;
  }

  v52 = 1;
  v54 = v117;
  v53 = v118;
  v55 = v119;
  return (*(v55 + 56))(v53, v52, 1, v54);
}

id sub_21D4D3C50(uint64_t a1)
{
  v41 = [objc_opt_self() newObjectID];
  v40 = [objc_opt_self() newObjectID];
  v39 = [objc_opt_self() newObjectID];
  v2 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v37 = *(a1 + v2[6]);
  v38 = *(a1 + v2[5]);
  v36 = *(a1 + v2[7]);
  v3 = *(a1 + v2[8]);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      sub_21DBFC01C();
      v5 = objc_opt_self();
      v6 = (v3 + 40);
      do
      {
        v7 = [v5 dayOfWeek:*(v6 - 1) weekNumber:*v6];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v6 += 2;
        --v4;
      }

      while (v4);
    }

    sub_21D0D8CF0(0, &qword_27CE5A8F8);
    v35 = sub_21DBFA5DC();
  }

  else
  {
    v35 = 0;
  }

  v8 = *(a1 + v2[9]);
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      sub_21DBFC01C();
      v10 = (v8 + 32);
      do
      {
        v11 = *v10++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v9;
      }

      while (v9);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v34 = sub_21DBFA5DC();
  }

  else
  {
    v34 = 0;
  }

  v12 = *(a1 + v2[12]);
  if (v12)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      sub_21DBFC01C();
      v14 = (v12 + 32);
      do
      {
        v15 = *v14++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v13;
      }

      while (v13);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v33 = sub_21DBFA5DC();
  }

  else
  {
    v33 = 0;
  }

  v16 = *(a1 + v2[11]);
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      sub_21DBFC01C();
      v18 = (v16 + 32);
      do
      {
        v19 = *v18++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v17;
      }

      while (v17);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v20 = sub_21DBFA5DC();
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + v2[10]);
  if (v21)
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      sub_21DBFC01C();
      v23 = (v21 + 32);
      do
      {
        v24 = *v23++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v22;
      }

      while (v22);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v25 = sub_21DBFA5DC();
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + v2[13]);
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      sub_21DBFC01C();
      v28 = (v26 + 32);
      do
      {
        v29 = *v28++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v27;
      }

      while (v27);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v30 = sub_21DBFA5DC();
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initRecurrenceRuleWithObjectID:v41 accountID:v40 reminderID:v39 frequency:v38 interval:v37 firstDayOfTheWeek:v36 daysOfTheWeek:v35 daysOfTheMonth:v34 monthsOfTheYear:v33 weeksOfTheYear:v20 daysOfTheYear:v25 setPositions:v30 end:0];

  sub_21D4D5640(a1, type metadata accessor for TTRRecurrenceRuleModel);
  return v31;
}

uint64_t TTRReminderTitleAttributesHarvester.deinit()
{

  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_initialParserLocale;
  v2 = sub_21DBF582C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_now, &qword_27CE58D68);

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_contactsProvider);

  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_excludedSuggestedAttributes;
  v4 = sub_21DBF7B0C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t TTRReminderTitleAttributesHarvester.__deallocating_deinit()
{
  TTRReminderTitleAttributesHarvester.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRReminderSuggestedAttribute.AttributeType.typeDescription.getter()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D4D97E4(v0, v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
        sub_21D4D5640(&v3[*(v6 + 48)], type metadata accessor for TTRRecurrenceRuleModel);
        v7 = sub_21DBF509C();
        (*(*(v7 - 8) + 8))(v3, v7);
        return 0x6E65727275636572;
      }

      else
      {
        sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
        return 0x65746164657564;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 0x6E6F697461636F6CLL;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 0x656C6369686576;
    }

    else
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 1953720684;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 6775156;
    }

    else if (EnumCaseMultiPayload == 9)
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 0x73656D206E656877;
    }

    else
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 0x7265646E696D6572;
    }
  }

  else if (EnumCaseMultiPayload == 5)
  {
    sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    return 0x65656E6769737361;
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 1734437990;
  }

  else
  {
    return 0x797469726F697270;
  }
}

void sub_21D4D4734(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 iCalendarDescription];
  v4 = sub_21DBFA16C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_21D4D479C@<X0>(char *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = *a1;
  v11 = *a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    v13 = sub_21D4C9FB0(v11, sub_21D4DA3B0, v12);
  }

  else
  {
    type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
    sub_21DBF90FC();
    sub_21D0D0F1C(&qword_27CE5D0C8, &qword_27CE5D0C0);
    v13 = sub_21DBF920C();
    result = (*(v7 + 8))(v9, v6);
  }

  *a3 = v13;
  return result;
}

BOOL sub_21D4D496C(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  v4 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17880);
    v13 = v12;
    v14 = v11;
    v15 = sub_21DBFB63C();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17880);
    v19 = v18;
    v20 = v17;
    v21 = sub_21DBFB63C();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  sub_21DBF62AC();
  if (sub_21DBF629C() & 1) != 0 && (sub_21DBF629C() & 1) != 0 && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]) && (sub_21D3220EC(*(a1 + v4[13]), *(a2 + v4[13])))
  {
    sub_21DBF7B0C();
    sub_21D0F1CB0(&qword_280D0C7C8, MEMORY[0x277D45750]);
    sub_21DBFA5BC();
    sub_21DBFA5BC();
    if (v29 == v28)
    {
      v22 = v4[15];
      v23 = (a1 + v22);
      v24 = *(a1 + v22 + 8);
      v25 = (a2 + v22);
      v26 = v25[1];
      if (v24)
      {
        return v26 && (*v23 == *v25 && v24 == v26 || (sub_21DBFC64C() & 1) != 0);
      }

      if (!v26)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21D4D4C1C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t), uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v70 = a5;
  v71 = a6;
  v68 = a1;
  v69 = a2;
  v72 = a10;
  v73 = a7;
  v74 = a9;
  v75 = a8;
  v67 = a16;
  v65 = sub_21DBF54CC();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v19 - 8);
  v61 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v61 - v22;
  v24 = sub_21DBF582C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77[3] = a13;
  v77[4] = a15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_0, a3, a13);
  v76[3] = a14;
  v76[4] = v67;
  v29 = __swift_allocate_boxed_opaque_existential_0(v76);
  (*(*(a14 - 8) + 32))(v29, a4, a14);
  *(a12 + 16) = 0;
  *(a12 + 24) = 0;
  v30 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_requestSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA0);
  swift_allocObject();
  *(a12 + v30) = sub_21DBF7D2C();
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_resultsPublisherSelfSubscriptionCancellable) = 0;
  v66 = v25;
  v31 = *(v25 + 16);
  v32 = v73;
  v31(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_initialParserLocale, v73, v24);
  v33 = v72;
  sub_21D0D3954(v72, a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_now, &qword_27CE58D68);
  v67 = v24;
  v31(v27, v32, v24);
  v34 = v61;
  v35 = sub_21D0D3954(v33, v23, &qword_27CE58D68);
  v75(v35);
  v36 = sub_21DBF5C4C();
  v37 = *(v36 - 8);
  (*(v37 + 56))(v34, 0, 1, v36);
  v62 = v27;
  v38 = sub_21DBF574C();
  v39 = sub_21DBF563C();
  v40 = *(v39 - 8);
  v41 = 0;
  if ((*(v40 + 48))(v23, 1, v39) != 1)
  {
    v41 = sub_21DBF55BC();
    (*(v40 + 8))(v23, v39);
  }

  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_21DBF5C0C();
    (*(v37 + 8))(v34, v36);
  }

  v43 = [objc_allocWithZone(MEMORY[0x277D45A90]) initWithLocale:v38 referenceDate:v41 referenceTimeZone:v42 forTesting:a11 & 1];

  v44 = v67;
  v66 = *(v66 + 8);
  (v66)(v62, v67);
  v45 = *(a12 + 24);
  *(a12 + 24) = v43;

  sub_21DBF661C();
  sub_21D0D8CF0(0, &qword_280D0C1D8);
  v46 = v63;
  sub_21DBFB69C();
  v47 = sub_21DBF65FC();
  (*(v64 + 8))(v46, v65);
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_listPredictor) = v47;
  v49 = v68;
  v48 = v69;
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_queue) = v68;
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue) = v48;
  sub_21D0D32E4(v77, a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider);
  sub_21D0D32E4(v76, a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_contactsProvider);
  v50 = v70;
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store) = v70;
  v51 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_excludedSuggestedAttributes;
  v52 = sub_21DBF7B0C();
  v53 = *(v52 - 8);
  v54 = v71;
  (*(v53 + 16))(a12 + v51, v71, v52);
  v55 = objc_allocWithZone(MEMORY[0x277D44870]);
  v56 = v49;
  [v55 initWithQueue:v48 store:v50];
  sub_21DBF7CCC();
  swift_allocObject();
  v57 = sub_21DBF7B7C();
  sub_21D0CF7E0(v72, &qword_27CE58D68);
  (v66)(v73, v44);
  (*(v53 + 8))(v54, v52);
  __swift_destroy_boxed_opaque_existential_0(v76);
  __swift_destroy_boxed_opaque_existential_0(v77);
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester) = v57;
  v58 = (a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone);
  v59 = v74;
  *v58 = v75;
  v58[1] = v59;
  return a12;
}

uint64_t sub_21D4D5348(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t), uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v34 = a7;
  v35 = a8;
  v32 = a5;
  v33 = a6;
  v26 = a4;
  v30 = a1;
  v31 = a2;
  v28 = a10;
  v29 = a9;
  v27 = a11;
  v17 = *(a14 - 8);
  MEMORY[0x28223BE20](a12);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a13 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  (*(v20 + 16))(v23, a3, a13);
  (*(v17 + 16))(v19, v26, a14);
  return sub_21D4D4C1C(v30, v31, v23, v19, v32, v33, v34, v35, v29, v28, v27, v24, a13, a14, a15, a16);
}

uint64_t sub_21D4D5520()
{
  v1 = *(sub_21DBF79FC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D4C765C(v0 + v2, v3);
}

uint64_t sub_21D4D5640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21D4D56C8()
{
  sub_21DBF582C();
  if (v0 <= 0x3F)
  {
    sub_21D4D5850();
    if (v1 <= 0x3F)
    {
      sub_21DBF7B0C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21D4D5850()
{
  if (!qword_280D1B858)
  {
    sub_21DBF563C();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D1B858);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TTRReminderTitleAttributesHarvester.Attribute(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    v7 = *(a3 + 20);
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
LABEL_17:
        v20 = *v9;
        *v8 = *v9;
        v21 = v20;
LABEL_28:
        swift_storeEnumTagMultiPayload();
        goto LABEL_29;
      }

      if (!EnumCaseMultiPayload)
      {
        v22 = sub_21DBF509C();
        (*(*(v22 - 8) + 16))(v8, v9, v22);
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v13 = sub_21DBF509C();
        (*(*(v13 - 8) + 16))(v8, v9, v13);
        v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        v15 = v8 + v14;
        v16 = v9 + v14;
        v17 = type metadata accessor for TTRRecurrenceEndModel(0);
        v18 = *(v17 - 8);
        if ((*(v18 + 48))(v16, 1, v17))
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
          memcpy(v15, v16, *(*(v19 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload())
          {
            memcpy(v15, v16, *(v18 + 64));
          }

          else
          {
            v23 = sub_21DBF563C();
            (*(*(v23 - 8) + 16))(v15, v16, v23);
            swift_storeEnumTagMultiPayload();
          }

          (*(v18 + 56))(v15, 0, 1, v17);
        }

        v24 = type metadata accessor for TTRRecurrenceRuleModel(0);
        *&v15[v24[5]] = *&v16[v24[5]];
        *&v15[v24[6]] = *&v16[v24[6]];
        *&v15[v24[7]] = *&v16[v24[7]];
        *&v15[v24[8]] = *&v16[v24[8]];
        *&v15[v24[9]] = *&v16[v24[9]];
        *&v15[v24[10]] = *&v16[v24[10]];
        *&v15[v24[11]] = *&v16[v24[11]];
        *&v15[v24[12]] = *&v16[v24[12]];
        *&v15[v24[13]] = *&v16[v24[13]];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        goto LABEL_28;
      }
    }

    else if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
      {
        goto LABEL_17;
      }
    }

    else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
    {
      goto LABEL_17;
    }

    memcpy(v8, v9, *(*(v10 - 8) + 64));
LABEL_29:
    v25 = *(a3 + 24);
    v26 = sub_21DBF79FC();
    (*(*(v26 - 8) + 16))(&v4[v25], &a2[v25], v26);
    return v4;
  }

  v12 = *a2;
  *v4 = *a2;
  v4 = (v12 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for TTRReminderTitleAttributesHarvester.Attribute(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + *(a2 + 20));
  type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = sub_21DBF509C();
        (*(*(v6 - 8) + 8))(v4, v6);
        v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        v8 = type metadata accessor for TTRRecurrenceEndModel(0);
        if (!(*(*(v8 - 8) + 48))(v7, 1, v8) && !swift_getEnumCaseMultiPayload())
        {
          v9 = sub_21DBF563C();
          (*(*(v9 - 8) + 8))(v7, v9);
        }

        type metadata accessor for TTRRecurrenceRuleModel(0);
      }
    }

    else
    {
      v14 = sub_21DBF509C();
      (*(*(v14 - 8) + 8))(v4, v14);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 10)
      {
        goto LABEL_18;
      }

LABEL_17:

      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  v10 = *(a2 + 24);
  v11 = sub_21DBF79FC();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1 + v10, v11);
}

char *initializeWithCopy for TTRReminderTitleAttributesHarvester.Attribute(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
LABEL_15:
      v18 = *v8;
      *v7 = *v8;
      v19 = v18;
LABEL_26:
      swift_storeEnumTagMultiPayload();
      goto LABEL_27;
    }

    if (!EnumCaseMultiPayload)
    {
      v20 = sub_21DBF509C();
      (*(*(v20 - 8) + 16))(v7, v8, v20);
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v11 = sub_21DBF509C();
      (*(*(v11 - 8) + 16))(v7, v8, v11);
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
      v13 = v7 + v12;
      v14 = v8 + v12;
      v15 = type metadata accessor for TTRRecurrenceEndModel(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v14, 1, v15))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
        memcpy(v13, v14, *(*(v17 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v13, v14, *(v16 + 64));
        }

        else
        {
          v21 = sub_21DBF563C();
          (*(*(v21 - 8) + 16))(v13, v14, v21);
          swift_storeEnumTagMultiPayload();
        }

        (*(v16 + 56))(v13, 0, 1, v15);
      }

      v22 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v13[v22[5]] = *&v14[v22[5]];
      *&v13[v22[6]] = *&v14[v22[6]];
      *&v13[v22[7]] = *&v14[v22[7]];
      *&v13[v22[8]] = *&v14[v22[8]];
      *&v13[v22[9]] = *&v14[v22[9]];
      *&v13[v22[10]] = *&v14[v22[10]];
      *&v13[v22[11]] = *&v14[v22[11]];
      *&v13[v22[12]] = *&v14[v22[12]];
      *&v13[v22[13]] = *&v14[v22[13]];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_26;
    }
  }

  else if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
  {
    goto LABEL_15;
  }

  memcpy(v7, v8, *(*(v9 - 8) + 64));
LABEL_27:
  v23 = *(a3 + 24);
  v24 = sub_21DBF79FC();
  (*(*(v24 - 8) + 16))(&a1[v23], &a2[v23], v24);
  return a1;
}

char *assignWithCopy for TTRReminderTitleAttributesHarvester.Attribute(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  if (a1 != a2)
  {
    v6 = *(a3 + 20);
    v7 = &a1[v6];
    v8 = &a2[v6];
    sub_21D4D5640(&a1[v6], type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    v9 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
LABEL_16:
        v18 = *v8;
        *v7 = *v8;
        v19 = v18;
LABEL_27:
        swift_storeEnumTagMultiPayload();
        goto LABEL_28;
      }

      if (!EnumCaseMultiPayload)
      {
        v20 = sub_21DBF509C();
        (*(*(v20 - 8) + 16))(v7, v8, v20);
        goto LABEL_27;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v11 = sub_21DBF509C();
        (*(*(v11 - 8) + 16))(v7, v8, v11);
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        v13 = v7 + v12;
        v14 = v8 + v12;
        v15 = type metadata accessor for TTRRecurrenceEndModel(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(v14, 1, v15))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
          memcpy(v13, v14, *(*(v17 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload())
          {
            memcpy(v13, v14, *(v16 + 64));
          }

          else
          {
            v21 = sub_21DBF563C();
            (*(*(v21 - 8) + 16))(v13, v14, v21);
            swift_storeEnumTagMultiPayload();
          }

          (*(v16 + 56))(v13, 0, 1, v15);
        }

        v22 = type metadata accessor for TTRRecurrenceRuleModel(0);
        *&v13[v22[5]] = *&v14[v22[5]];
        *&v13[v22[6]] = *&v14[v22[6]];
        *&v13[v22[7]] = *&v14[v22[7]];
        *&v13[v22[8]] = *&v14[v22[8]];
        *&v13[v22[9]] = *&v14[v22[9]];
        *&v13[v22[10]] = *&v14[v22[10]];
        *&v13[v22[11]] = *&v14[v22[11]];
        *&v13[v22[12]] = *&v14[v22[12]];
        *&v13[v22[13]] = *&v14[v22[13]];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        goto LABEL_27;
      }
    }

    else if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
      {
        goto LABEL_16;
      }
    }

    else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
    {
      goto LABEL_16;
    }

    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

LABEL_28:
  v23 = *(a3 + 24);
  v24 = sub_21DBF79FC();
  (*(*(v24 - 8) + 24))(&a1[v23], &a2[v23], v24);
  return a1;
}

char *initializeWithTake for TTRReminderTitleAttributesHarvester.Attribute(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_21DBF509C();
    (*(*(v12 - 8) + 32))(v7, v8, v12);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
    v14 = &v7[v13];
    v15 = &v8[v13];
    v16 = type metadata accessor for TTRRecurrenceEndModel(0);
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(v14, v15, *(*(v18 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(v14, v15, *(v17 + 64));
      }

      else
      {
        v19 = sub_21DBF563C();
        (*(*(v19 - 8) + 32))(v14, v15, v19);
        swift_storeEnumTagMultiPayload();
      }

      (*(v17 + 56))(v14, 0, 1, v16);
    }

    v20 = type metadata accessor for TTRRecurrenceRuleModel(0);
    *&v14[v20[5]] = *&v15[v20[5]];
    *&v14[v20[6]] = *&v15[v20[6]];
    *&v14[v20[7]] = *&v15[v20[7]];
    *&v14[v20[8]] = *&v15[v20[8]];
    *&v14[v20[9]] = *&v15[v20[9]];
    *&v14[v20[10]] = *&v15[v20[10]];
    *&v14[v20[11]] = *&v15[v20[11]];
    *&v14[v20[12]] = *&v15[v20[12]];
    *&v14[v20[13]] = *&v15[v20[13]];
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v11 = sub_21DBF509C();
    (*(*(v11 - 8) + 32))(v7, v8, v11);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  memcpy(v7, v8, *(*(v9 - 8) + 64));
LABEL_13:
  v21 = *(a3 + 24);
  v22 = sub_21DBF79FC();
  (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
  return a1;
}

char *assignWithTake for TTRReminderTitleAttributesHarvester.Attribute(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    v6 = *(a3 + 20);
    v7 = &a1[v6];
    v8 = &a2[v6];
    sub_21D4D5640(&a1[v6], type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    v9 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v12 = sub_21DBF509C();
      (*(*(v12 - 8) + 32))(v7, v8, v12);
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
      v14 = &v7[v13];
      v15 = &v8[v13];
      v16 = type metadata accessor for TTRRecurrenceEndModel(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v15, 1, v16))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
        memcpy(v14, v15, *(*(v18 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v14, v15, *(v17 + 64));
        }

        else
        {
          v19 = sub_21DBF563C();
          (*(*(v19 - 8) + 32))(v14, v15, v19);
          swift_storeEnumTagMultiPayload();
        }

        (*(v17 + 56))(v14, 0, 1, v16);
      }

      v20 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v14[v20[5]] = *&v15[v20[5]];
      *&v14[v20[6]] = *&v15[v20[6]];
      *&v14[v20[7]] = *&v15[v20[7]];
      *&v14[v20[8]] = *&v15[v20[8]];
      *&v14[v20[9]] = *&v15[v20[9]];
      *&v14[v20[10]] = *&v15[v20[10]];
      *&v14[v20[11]] = *&v15[v20[11]];
      *&v14[v20[12]] = *&v15[v20[12]];
      *&v14[v20[13]] = *&v15[v20[13]];
      goto LABEL_13;
    }

    if (!EnumCaseMultiPayload)
    {
      v11 = sub_21DBF509C();
      (*(*(v11 - 8) + 32))(v7, v8, v11);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    }

    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

LABEL_14:
  v21 = *(a3 + 24);
  v22 = sub_21DBF79FC();
  (*(*(v22 - 8) + 40))(&a1[v21], &a2[v21], v22);
  return a1;
}

uint64_t sub_21D4D6FD0()
{
  result = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(319);
  if (v1 <= 0x3F)
  {
    result = sub_21DBF79FC();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *sub_21D4D70A4(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v26 = *a2;
    *a1 = *a2;
    a1 = (v26 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = sub_21DBF56BC();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
    v8 = v7[5];
    v29 = *(a2 + v8);
    *(a1 + v8) = v29;
    v9 = v7[6];
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = v7[7];
    v14 = *(a2 + v13);
    *(a1 + v13) = v14;
    v15 = v7[8];
    v16 = *(a2 + v15);
    *(a1 + v15) = v16;
    *(a1 + v7[9]) = *(a2 + v7[9]);
    *(a1 + v7[10]) = *(a2 + v7[10]);
    *(a1 + v7[11]) = *(a2 + v7[11]);
    *(a1 + v7[12]) = *(a2 + v7[12]);
    *(a1 + v7[13]) = *(a2 + v7[13]);
    v17 = v7[14];
    v18 = sub_21DBF7B0C();
    v28 = *(*(v18 - 8) + 16);
    v19 = v29;
    sub_21DBF8E0C();
    v20 = v14;
    v21 = v16;

    sub_21DBF8E0C();
    v28(a1 + v17, a2 + v17, v18);
    v22 = v7[15];
    v23 = (a1 + v22);
    v24 = (a2 + v22);
    v25 = v24[1];
    *v23 = *v24;
    v23[1] = v25;
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t sub_21D4D72D0(uint64_t a1)
{
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);

  v4 = v3[14];
  v5 = sub_21DBF7B0C();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
}

uint64_t sub_21D4D73FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBF56BC();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v7 = v6[5];
  v27 = *(a2 + v7);
  *(a1 + v7) = v27;
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
  v26 = *(*(v17 - 8) + 16);
  v18 = v27;
  sub_21DBF8E0C();
  v19 = v13;
  v20 = v15;

  sub_21DBF8E0C();
  v26(a1 + v16, a2 + v16, v17);
  v21 = v6[15];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D4D75BC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D4D77A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21D4D78F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_21D4D7AD8()
{
  result = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D4D7B70(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v27 = *a2;
    *a1 = *a2;
    a1 = (v27 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v31 = *(a2 + v8);
    *(a1 + v8) = v31;
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = a3[7];
    v14 = a3[8];
    v15 = *(a2 + v13);
    *(a1 + v13) = v15;
    v30 = *(a2 + v14);
    *(a1 + v14) = v30;
    v16 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    *(a1 + v16) = *(a2 + v16);
    v17 = a3[12];
    *(a1 + a3[11]) = *(a2 + a3[11]);
    *(a1 + v17) = *(a2 + v17);
    v18 = a3[14];
    *(a1 + a3[13]) = *(a2 + a3[13]);
    v19 = sub_21DBF7B0C();
    v29 = *(*(v19 - 8) + 16);
    v20 = v31;
    sub_21DBF8E0C();
    v21 = v15;
    v22 = v30;

    sub_21DBF8E0C();
    v29(a1 + v18, a2 + v18, v19);
    v23 = a3[15];
    v24 = (a1 + v23);
    v25 = (a2 + v23);
    v26 = v25[1];
    *v24 = *v25;
    v24[1] = v26;
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t sub_21D4D7D48(uint64_t a1, int *a2)
{
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a2[14];
  v6 = sub_21DBF7B0C();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
}

uint64_t sub_21D4D7E5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v29 = *(a2 + v7);
  *(a1 + v7) = v29;
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = a3[7];
  v13 = a3[8];
  v14 = *(a2 + v12);
  *(a1 + v12) = v14;
  v28 = *(a2 + v13);
  *(a1 + v13) = v28;
  v15 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v15) = *(a2 + v15);
  v16 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v16) = *(a2 + v16);
  v17 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  v18 = sub_21DBF7B0C();
  v27 = *(*(v18 - 8) + 16);
  v19 = v29;
  sub_21DBF8E0C();
  v20 = v14;
  v21 = v28;

  sub_21DBF8E0C();
  v27(a1 + v17, a2 + v17, v18);
  v22 = a3[15];
  v23 = (a1 + v22);
  v24 = (a2 + v22);
  v25 = v24[1];
  *v23 = *v24;
  v23[1] = v25;
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D4D7FE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  v11 = a3[6];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  *v12 = *v13;
  v12[1] = v13[1];
  sub_21DBF8E0C();

  v14 = a3[7];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  *(a1 + v14) = v16;
  v17 = v16;

  v18 = a3[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  *(a1 + v18) = v20;
  v21 = v20;

  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  sub_21DBF8E0C();

  v22 = a3[14];
  v23 = sub_21DBF7B0C();
  (*(*(v23 - 8) + 24))(a1 + v22, a2 + v22, v23);
  v24 = a3[15];
  v25 = (a1 + v24);
  v26 = (a2 + v24);
  *v25 = *v26;
  v25[1] = v26[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D4D81A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v9) = *(a2 + v9);
  v10 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v10) = *(a2 + v10);
  v11 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  v12 = sub_21DBF7B0C();
  (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
  *(a1 + a3[15]) = *(a2 + a3[15]);
  return a1;
}

uint64_t sub_21D4D82B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[6];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v13 = *v11;
  v12 = v11[1];
  *v10 = v13;
  v10[1] = v12;

  v14 = a3[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v16 = a3[8];
  v17 = *(a1 + v16);
  *(a1 + v16) = *(a2 + v16);

  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  v18 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v18) = *(a2 + v18);
  *(a1 + a3[13]) = *(a2 + a3[13]);

  v19 = a3[14];
  v20 = sub_21DBF7B0C();
  (*(*(v20 - 8) + 40))(a1 + v19, a2 + v19, v20);
  v21 = a3[15];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v25 = *v23;
  v24 = v23[1];
  *v22 = v25;
  v22[1] = v24;

  return a1;
}

uint64_t sub_21D4D8454()
{
  result = sub_21DBF56BC();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF7B0C();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D4D857C(uint64_t a1)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF48);
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v61 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF50);
  v4 = *(v3 - 8);
  v97 = v3;
  v98 = v4;
  MEMORY[0x28223BE20](v3);
  v90 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF58);
  v7 = *(v6 - 8);
  v95 = v6;
  v96 = v7;
  MEMORY[0x28223BE20](v6);
  v91 = &v61 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF60);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v61 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF68);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v61 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF70);
  v93 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v80 = &v61 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF78);
  v74 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v61 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF80);
  v76 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v69 = &v61 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF88);
  v73 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v106 = &v61 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF90);
  v88 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v105 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v61 - v17;
  v100 = sub_21DBFB10C();
  v19 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF98);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v23 = &v61 - v22;
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_requestSubject;
  v25 = swift_allocObject();
  swift_weakInit();

  v109 = sub_21D4C9FB0(v26, sub_21D4D97D4, v25);

  v108 = sub_21D4C5080(v27);

  v72 = v24;

  v107 = sub_21D4C9FB0(v28, sub_21D4CD3E8, 0);

  v113 = *(a1 + v24);

  sub_21DBFB0FC();
  v112 = *(a1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_queue);
  v29 = v112;
  v103 = sub_21DBFB0DC();
  v30 = *(v103 - 8);
  v102 = *(v30 + 56);
  v104 = v30 + 56;
  v102(v18, 1, 1, v103);
  v65 = v29;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA0);
  v101 = sub_21D0D8CF0(0, &qword_280D1B900);
  v66 = sub_21D0D0F1C(&qword_280D0C7B0, &qword_27CE5CFA0);
  v31 = sub_21D47130C();
  v77 = v23;
  v64 = v31;
  sub_21DBF937C();
  sub_21D0CF7E0(v18, &unk_27CE5F250);
  (*(v19 + 8))(v21, v100);

  v113 = sub_21D4C99B0(v23, sub_21D4CC1F8, 0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFB0);
  v100 = sub_21D0D0F1C(&qword_280D0C4A8, &qword_27CE5CFA8);
  sub_21DBF927C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFB8);
  v33 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_21DC08D00;
  v63 = type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
  (*(*(v63 - 8) + 56))(v34 + v33, 1, 1, v63);
  v113 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFC0);
  sub_21D0D0F1C(&qword_280D0C3D8, &qword_27CE5CFC0);
  v35 = v68;
  sub_21DBFA4DC();

  v36 = *(a1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  v62 = a1;
  v112 = v36;
  v102(v18, 1, 1, v103);
  sub_21D0D0F1C(&qword_280D0C530, &qword_27CE5CF78);
  v37 = v36;
  v38 = v69;
  v39 = v71;
  sub_21DBF936C();
  sub_21D0CF7E0(v18, &unk_27CE5F250);

  (*(v74 + 8))(v35, v39);
  sub_21D0D0F1C(&qword_280D0C5D0, &qword_27CE5CF88);
  sub_21D0D0F1C(&qword_280D0C4C8, &qword_27CE5CF80);
  v40 = v70;
  v41 = v75;
  v42 = v106;
  sub_21DBF935C();
  (*(v76 + 8))(v38, v41);
  (*(v73 + 8))(v42, v40);
  v112 = v107;
  v113 = v109;
  v111 = v108;
  swift_allocObject();
  swift_weakInit();
  sub_21D0D0F1C(&qword_280D0C628, &qword_27CE5CF90);
  v43 = v78;
  sub_21DBF924C();

  sub_21D0D0F1C(&qword_280D0C5C8, &qword_27CE5CF60);
  v44 = v79;
  v45 = v81;
  sub_21DBF921C();
  (*(v82 + 8))(v43, v45);
  sub_21D0D0F1C(&qword_280D0C638, &qword_27CE5CF68);
  sub_21D0F1CB0(&qword_280D107C0, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults);
  v46 = v80;
  v47 = v83;
  sub_21DBF93AC();
  (*(v84 + 8))(v44, v47);
  v48 = v65;
  v113 = v65;
  v102(v18, 1, 1, v103);
  sub_21D0D0F1C(&qword_280D0C600, &qword_27CE5CF70);
  v49 = v89;
  v50 = v85;
  sub_21DBF936C();
  sub_21D0CF7E0(v18, &unk_27CE5F250);

  v51 = v62;
  v113 = *(v62 + v72);
  sub_21D0D0F1C(&qword_280D0C4E0, &qword_27CE5CF48);
  v52 = v90;
  v53 = v92;
  sub_21DBF923C();
  (*(v94 + 8))(v49, v53);
  sub_21D0D0F1C(&qword_280D0C660, &qword_27CE5CF50);
  v54 = v91;
  v55 = v97;
  sub_21DBF921C();
  (*(v98 + 8))(v52, v55);
  sub_21D0D0F1C(&qword_280D0C640, &qword_27CE5CF58);
  v56 = v95;
  v57 = sub_21DBF92EC();
  (*(v96 + 8))(v54, v56);
  v113 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFC8);
  sub_21D0D0F1C(&qword_280D0C588, &qword_27CE5CFC8);
  v58 = sub_21DBF920C();

  v113 = v58;
  v59 = sub_21DBF93CC();

  (*(v93 + 8))(v46, v50);
  (*(v88 + 8))(v105, v110);
  (*(v86 + 8))(v77, v87);
  *(v51 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_resultsPublisherSelfSubscriptionCancellable) = v59;

  return v58;
}

uint64_t sub_21D4D97E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D4D984C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D4D98F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v2 - 8);
  v78 = v72 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v72 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v72 - v11;
  v13 = sub_21DBF509C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v76 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[5];
  if (v16)
  {
    *(&v80 + 1) = sub_21D0D8CF0(0, &qword_280D17690);
    v81 = &protocol witness table for REMList;
    *&v79 = v16;
    sub_21D0D0FD0(&v79, v82);
  }

  else
  {
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 184))(v82, v17, v18);
    if (*(&v80 + 1))
    {
      sub_21D0CF7E0(&v79, &qword_27CE59DC0);
    }
  }

  v19 = v83;
  if (v83)
  {
    v74 = v6;
    v77 = v14;
    v20 = v13;
    v21 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v22 = *(v21 + 8);
    v23 = v16;
    v24 = v21;
    v25 = v20;
    v26 = v77;
    v27 = v22(v19, v24);
    __swift_destroy_boxed_opaque_existential_0(v82);
    sub_21D0D32E4(a1, v82);
    v28 = v83;
    v29 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    (*(v29 + 96))(v28, v29);
    v30 = *(v26 + 48);
    if (v30(v12, 1, v25) == 1)
    {
      sub_21D0CF7E0(v12, &qword_27CE58D60);
      v75 = 0;
    }

    else
    {
      v33 = v76;
      (*(v26 + 32))(v76, v12, v25);
      sub_21DBF4EBC();
      if (v34)
      {
        (*(v26 + 8))(v33, v25);
        v75 = 0;
      }

      else
      {
        sub_21DBF63BC();
        swift_allocObject();
        v75 = sub_21DBF63CC();
        (*(v26 + 8))(v33, v25);
      }
    }

    v35 = v83;
    v36 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    if ((*(v36 + 152))(v35, v36))
    {
      sub_21DBF637C();
      swift_allocObject();
      v76 = sub_21DBF638C();
    }

    else
    {
      v76 = 0;
    }

    v37 = v83;
    v38 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v39 = (*(v38 + 136))(v37, v38);
    if (v39)
    {
      *&v79 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D108);
      sub_21D0D0F1C(&qword_27CE5D110, &qword_27CE5D108);
      v73 = sub_21DBFA49C();
    }

    else
    {
      v73 = 0;
    }

    v40 = v83;
    v41 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v42 = (*(v41 + 48))(v40, v41);
    if (v43)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0;
    }

    v45 = 0xE000000000000000;
    if (v43)
    {
      v45 = v43;
    }

    v72[1] = v45;
    v72[2] = v44;
    v46 = v83;
    v47 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v72[0] = (*(v47 + 8))(v46, v47);
    sub_21DBF612C();
    v48 = [v27 uuid];
    v49 = v74;
    sub_21DBF568C();

    v50 = sub_21DBF56BC();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v74 = MEMORY[0x223D3E8D0](v49);
    v51 = sub_21DBF563C();
    (*(*(v51 - 8) + 56))(v78, 1, 1, v51);
    v52 = v83;
    v53 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    (*(v53 + 96))(v52, v53);
    if (v30(v9, 1, v25) == 1)
    {
      sub_21D0CF7E0(v9, &qword_27CE58D60);
    }

    else
    {
      MEMORY[0x223D3D5E0]();
      (*(v77 + 8))(v9, v25);
    }

    v54 = v83;
    v55 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v56 = (*(v55 + 80))(v54, v55);
    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = MEMORY[0x277D84F90];
    }

    sub_21DBF646C();
    MEMORY[0x223D3EBD0](v57);

    v58 = v83;
    v59 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    (*(v59 + 200))(&v79, v58, v59);
    v60 = *(&v80 + 1);
    v61 = v27;
    if (*(&v80 + 1))
    {
      v62 = v81;
      __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
      (v62[2])(v60, v62);
      __swift_destroy_boxed_opaque_existential_0(&v79);
    }

    else
    {
      sub_21D0CF7E0(&v79, &qword_27CE5D100);
    }

    v63 = v83;
    v64 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    (*(v64 + 88))(v63, v64);
    v66 = v83;
    v65 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    (*(v65 + 216))(&v79, v66, v65);
    v67 = *(&v80 + 1);
    if (*(&v80 + 1))
    {
      v68 = v81;
      __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
      v69 = (v68[1])(v67, v68);
      v70 = sub_21D4C3D34(v69);

      __swift_destroy_boxed_opaque_existential_0(&v79);
    }

    else
    {
      sub_21D0CF7E0(&v79, &qword_27CE5A140);
      v70 = MEMORY[0x277D84F90];
    }

    sub_21D0FC0A8(v70);

    sub_21DBF797C();
    swift_allocObject();
    v32 = sub_21DBF796C();

    __swift_destroy_boxed_opaque_existential_0(v82);
  }

  else
  {
    v31 = v16;
    sub_21D0CF7E0(v82, &qword_27CE59DC0);
    return 0;
  }

  return v32;
}

unint64_t sub_21D4DA2A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE599E0);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_21DBF8E0C();
      result = sub_21D0CEF70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21D4DA454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_21D4CFD58(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), a2);
  *a3 = result;
  return result;
}

uint64_t sub_21D4DA4A4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D030);
  result = v6(v7, &a1[*(v8 + 48)]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_21D4DA518()
{
  result = qword_27CE5D0F8;
  if (!qword_27CE5D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5D0F8);
  }

  return result;
}

unint64_t sub_21D4DA59C()
{
  result = qword_27CE5D128;
  if (!qword_27CE5D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5D128);
  }

  return result;
}

void sub_21D4DA630(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t (*a7)(id, uint64_t), uint64_t a8, void (*a9)(uint64_t *__return_ptr), uint64_t a10)
{
  v716 = a8;
  v715 = a7;
  v714 = a6;
  v755 = a5;
  v766 = a3;
  v767 = a2;
  v690 = a1;
  v713 = a10;
  v712 = a9;
  v750 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v749 = *(v750 - 8);
  MEMORY[0x28223BE20](v750);
  v681 = &v674 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v677 = &v674 - v13;
  MEMORY[0x28223BE20](v14);
  v675 = &v674 - v15;
  MEMORY[0x28223BE20](v16);
  v720 = &v674 - v17;
  MEMORY[0x28223BE20](v18);
  v708 = &v674 - v19;
  MEMORY[0x28223BE20](v20);
  v719 = &v674 - v21;
  MEMORY[0x28223BE20](v22);
  v737 = &v674 - v23;
  MEMORY[0x28223BE20](v24);
  v694 = &v674 - v25;
  MEMORY[0x28223BE20](v26);
  v736 = &v674 - v27;
  MEMORY[0x28223BE20](v28);
  v735 = &v674 - v29;
  MEMORY[0x28223BE20](v30);
  v707 = &v674 - v31;
  MEMORY[0x28223BE20](v32);
  v706 = &v674 - v33;
  MEMORY[0x28223BE20](v34);
  v734 = &v674 - v35;
  MEMORY[0x28223BE20](v36);
  v733 = &v674 - v37;
  MEMORY[0x28223BE20](v38);
  v732 = &v674 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v40 - 8);
  v745 = &v674 - v41;
  v42 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v42 - 8);
  v725 = &v674 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v752 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v752);
  v711 = (&v674 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v45);
  v678 = (&v674 - v46);
  MEMORY[0x28223BE20](v47);
  v676 = (&v674 - v48);
  MEMORY[0x28223BE20](v49);
  v691 = (&v674 - v50);
  MEMORY[0x28223BE20](v51);
  v729 = (&v674 - v52);
  MEMORY[0x28223BE20](v53);
  v722 = &v674 - v54;
  MEMORY[0x28223BE20](v55);
  v728 = (&v674 - v56);
  MEMORY[0x28223BE20](v57);
  v698 = &v674 - v58;
  MEMORY[0x28223BE20](v59);
  v721 = &v674 - v60;
  MEMORY[0x28223BE20](v61);
  v743 = (&v674 - v62);
  MEMORY[0x28223BE20](v63);
  v742 = (&v674 - v64);
  MEMORY[0x28223BE20](v65);
  v741 = (&v674 - v66);
  MEMORY[0x28223BE20](v67);
  v740 = (&v674 - v68);
  MEMORY[0x28223BE20](v69);
  v739 = (&v674 - v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D130);
  MEMORY[0x28223BE20](v71 - 8);
  v710 = &v674 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v709 = &v674 - v74;
  v727 = sub_21DBF5C4C();
  v771 = *(v727 - 8);
  MEMORY[0x28223BE20](v727);
  v697 = &v674 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v693 = &v674 - v77;
  v726 = sub_21DBF563C();
  v770 = *(v726 - 8);
  MEMORY[0x28223BE20](v726);
  v696 = &v674 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v692 = &v674 - v80;
  v746 = sub_21DBF509C();
  v81 = *(v746 - 8);
  MEMORY[0x28223BE20](v746);
  v723 = &v674 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v738 = &v674 - v84;
  v751 = sub_21DBF7A0C();
  v781 = *(v751 - 8);
  MEMORY[0x28223BE20](v751);
  v783 = &v674 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v786 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  MEMORY[0x28223BE20](v786);
  v765 = (&v674 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  v774 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v774);
  v772 = (&v674 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v88);
  v785 = (&v674 - v89);
  v779 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E70);
  v763 = *(v779 - 8);
  MEMORY[0x28223BE20](v779);
  v731 = &v674 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v757 = &v674 - v92;
  MEMORY[0x28223BE20](v93);
  v756 = &v674 - v94;
  MEMORY[0x28223BE20](v95);
  v776 = &v674 - v96;
  MEMORY[0x28223BE20](v97);
  v782 = (&v674 - v98);
  MEMORY[0x28223BE20](v99);
  v784 = &v674 - v100;
  MEMORY[0x28223BE20](v101);
  v103 = &v674 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D138);
  v105 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v762 = (&v674 - v106);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D140);
  MEMORY[0x28223BE20](v107 - 8);
  v761 = &v674 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v760 = &v674 - v110;
  MEMORY[0x28223BE20](v111);
  v113 = &v674 - v112;
  v115 = MEMORY[0x28223BE20](v114);
  v117 = (&v674 - v116);
  v780 = 0;
  v718 = 0;
  v118 = 0;
  v764 = a4;
  v119 = *(a4 + 16);
  v777 = (v105 + 48);
  v778 = (v105 + 56);
  v769 = v81;
  v744 = (v81 + 8);
  v717 = -1;
  v773 = v104;
  v775 = v119;
  while (1)
  {
    if (v118 == v119)
    {
      v120 = 1;
      v118 = v119;
    }

    else
    {
      if (v118 >= v119)
      {
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        if (qword_27CE56C60 != -1)
        {
          swift_once();
        }

        v668 = sub_21DBF84BC();
        __swift_project_value_buffer(v668, qword_27CE60CF0);
        v669 = MEMORY[0x277D84F90];
        sub_21D17716C(MEMORY[0x277D84F90]);
        sub_21D17716C(v669);
        v670 = "unknown proximity";
        v671 = 17;
        goto LABEL_324;
      }

      if (__OFADD__(v118, 1))
      {
        goto LABEL_313;
      }

      v121 = v764 + ((*(v763 + 80) + 32) & ~*(v763 + 80)) + *(v763 + 72) * v118;
      v122 = *(v104 + 48);
      v123 = v762;
      *v762 = v118;
      sub_21D4E51D0(v121, v123 + v122);
      sub_21D0D523C(v123, v113, &qword_27CE5D138);
      v120 = 0;
      ++v118;
    }

    v124 = *v778;
    (*v778)(v113, v120, 1, v104, v115);
    sub_21D0D523C(v113, v117, &qword_27CE5D140);
    v125 = *v777;
    if ((*v777)(v117, 1, v104) == 1)
    {
      break;
    }

    v126 = v113;
    v127 = *v117;
    v128 = v117 + *(v104 + 48);
    v129 = v779;
    v130 = *(v128 + *(v779 + 48));
    v131 = v784;
    sub_21D4E59D0(v128, v784, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    v132 = *(v129 + 48);
    sub_21D4E59D0(v131, v103, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    *&v103[v132] = v130;
    v133 = v782;
    sub_21D4E51D0(v103, v782);

    sub_21D4E58A4(v133 + *(v786 + 20), v785, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    sub_21D4E590C(v133, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 1)
      {
        v104 = v773;
        v113 = v126;
        goto LABEL_2;
      }

      v104 = v773;
      v113 = v126;
      if (EnumCaseMultiPayload)
      {
        sub_21D0CF7E0(v103, &qword_27CE61E70);
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
        v138 = v785;
        sub_21D4E590C(v785 + *(v137 + 48), type metadata accessor for TTRRecurrenceRuleModel);
        (*v744)(v138, v746);
        v119 = v775;
      }

      else
      {
LABEL_2:
        sub_21D0CF7E0(v103, &qword_27CE61E70);
        sub_21D4E590C(v785, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
        v119 = v775;
      }
    }

    else if (EnumCaseMultiPayload > 7)
    {
      v104 = v773;
      v113 = v126;
      if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
      {
        goto LABEL_2;
      }

      if (__OFADD__(v780, 1))
      {
        goto LABEL_317;
      }

      ++v780;
      v717 = v127;
      v135 = *v785;
      if (v718)
      {
        sub_21D0CF7E0(v103, &qword_27CE61E70);

        v136 = 1;
        goto LABEL_33;
      }

      v139 = [*v785 notesAsString];
      if (v139)
      {
        v140 = v139;
        v141 = sub_21DBFA16C();
        v143 = v142;

        v144 = HIBYTE(v143) & 0xF;
        if ((v143 & 0x2000000000000000) == 0)
        {
          v144 = v141 & 0xFFFFFFFFFFFFLL;
        }

        v145 = v144 == 0;
      }

      else
      {
        v145 = 1;
      }

      v146 = [v135 attachmentContext];
      if (v146)
      {
        v147 = v146;
        v148 = [v146 imageAttachments];

        sub_21D0D8CF0(0, &qword_280D0C290);
        v149 = sub_21DBFA5EC();

        if (v149 >> 62)
        {
          v150 = sub_21DBFBD7C();
        }

        else
        {
          v150 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_21D0CF7E0(v103, &qword_27CE61E70);
        v718 = 1;
        v119 = v775;
        if (v145)
        {
          v718 = v150 > 0;
        }
      }

      else
      {
        sub_21D0CF7E0(v103, &qword_27CE61E70);

        v136 = !v145;
LABEL_33:
        v718 = v136;
        v119 = v775;
      }
    }

    else
    {
      v104 = v773;
      v113 = v126;
      if (EnumCaseMultiPayload == 5)
      {
        goto LABEL_2;
      }

      sub_21D0CF7E0(v103, &qword_27CE61E70);
      v119 = v775;
    }
  }

  v758 = v125;
  v759 = v124;
  v151 = 0;
  v792 = MEMORY[0x277D84FA0];
  v152 = HIBYTE(v766) & 0xF;
  v791 = MEMORY[0x277D84F90];
  if ((v766 & 0x2000000000000000) == 0)
  {
    v152 = v767;
  }

  v754 = (v152 << 16) | 7;
  v753 = *MEMORY[0x277D456F0];
  v153 = v781++;
  v782 = v153 + 13;
  v747 = *MEMORY[0x277D45700];
  v705 = v780 == 1;
  v748 = *MEMORY[0x277D45708];
  v689 = "n trigger menu item";
  v688 = 0x800000021DC4AB80;
  v687 = 0x800000021DC4ABC0;
  v686 = 0x800000021DC5EA30;
  v685 = 0x800000021DC5EA80;
  v730 = (v769 + 32);
  v700 = (v770 + 32);
  v699 = (v771 + 32);
  v684 = "reminder-due-date";
  v683 = 0x800000021DC44220;
  v695 = (v769 + 16);
  v704 = (v771 + 8);
  v703 = (v770 + 8);
  v682 = xmmword_21DC08D20;
  v702 = xmmword_21DC08D00;
  v701 = xmmword_21DC09CF0;
  v154 = v751;
  v155 = v765;
  v156 = v761;
  v157 = v760;
  while (1)
  {
LABEL_42:
    if (v151 == v775)
    {
      v158 = 1;
      v159 = v775;
      v160 = v766;
    }

    else
    {
      if (v151 >= v775)
      {
        goto LABEL_314;
      }

      v159 = v151 + 1;
      v160 = v766;
      if (__OFADD__(v151, 1))
      {
        goto LABEL_315;
      }

      v161 = v764 + ((*(v763 + 80) + 32) & ~*(v763 + 80)) + *(v763 + 72) * v151;
      v162 = *(v104 + 48);
      v163 = v762;
      *v762 = v151;
      sub_21D4E51D0(v161, v163 + v162);
      sub_21D0D523C(v163, v156, &qword_27CE5D138);
      v158 = 0;
    }

    (v759)(v156, v158, 1, v104);
    sub_21D0D523C(v156, v157, &qword_27CE5D140);
    if (v758(v157, 1, v104) == 1)
    {
      swift_beginAccess();
      v666 = v792;
      v667 = v690;
      *v690 = v767;
      v667[1] = v160;
      v667[2] = v666;
      swift_beginAccess();
      sub_21DBF8E0C();
      return;
    }

    v771 = v159;
    v164 = *v157;
    v165 = v157 + *(v104 + 48);
    v166 = v779;
    v167 = *(v165 + *(v779 + 48));
    v168 = v756;
    sub_21D4E59D0(v165, v756, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    v169 = *(v166 + 48);
    v170 = v168;
    v171 = v776;
    sub_21D4E59D0(v170, v776, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    *(v171 + v169) = v167;
    v172 = v757;
    sub_21D4E51D0(v171, v757);

    sub_21D4E59D0(v172, v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    v173 = *v155;
    v174 = v155[1];
    if ((v160 & 0x1000000000000000) != 0)
    {
      v175 = sub_21DBFA35C();
      v176 = v173 + v174;
      if (__OFADD__(v173, v174))
      {
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }
    }

    else
    {
      v175 = sub_21DBFA36C();
      v176 = v173 + v174;
      if (__OFADD__(v173, v174))
      {
        goto LABEL_311;
      }
    }

    v177 = v176 >= v175 ? v175 : v176;
    if (v173 < 0 || v173 >= v175)
    {
      v179 = 0;
      v180 = 1;
      if (v173 > 0)
      {
        v784 = 0;
        goto LABEL_62;
      }

      v784 = 0;
      if (v176 <= 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v178 = __OFSUB__(v177, v173);
      v177 -= v173;
      if (v178)
      {
        goto LABEL_316;
      }

      v179 = v173;
    }

    v180 = v177 < 1;
    if (v177 < 1)
    {
      v179 = 0;
    }

    v784 = (v177 & ~(v177 >> 63));
LABEL_62:
    v181 = *(v786 + 24);
    v182 = v783;
    v183 = *v782;
    (*v782)(v783, v753, v154);
    v785 = v181;
    LOBYTE(v181) = sub_21DBF79DC();
    v780 = *v781;
    (v780)(v182, v154);
    v184 = v755;
    if ((v181 & 1) == 0)
    {
      v185 = v783;
      v183(v783, v747, v154);
      v184 = sub_21DBF79DC();
      (v780)(v185, v154);
    }

    v186 = (v184 & 1) != 0 ? v179 : 0;
    v768 = v186;
    v187 = (v184 & 1) != 0 ? v784 : 0;
    sub_21D4E58A4(v155 + *(v786 + 20), v772, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    v188 = swift_getEnumCaseMultiPayload();
    v770 = v187;
    LODWORD(v769) = v184 ^ 1 | v180;
    if (v188 <= 4)
    {
      break;
    }

    if (v188 > 7)
    {
      if (v188 == 8)
      {
        v246 = *v772;
        *v743 = *v772;
        swift_storeEnumTagMultiPayload();
        v247 = v246;
        v248 = [v247 name];
        if (!v248)
        {
          sub_21DBFA16C();
          v248 = sub_21DBFA12C();
        }

        v724 = v247;
        v249 = sub_21DBFA16C();
        v251 = v250;
        if (!v180)
        {
          swift_beginAccess();
          sub_21D29C590(&v787, v179, v784);
          swift_endAccess();
        }

        v252 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

        v253 = v783;
        v183(v783, v748, v154);
        v254 = sub_21DBF79DC();
        (v780)(v253, v154);
        if (v254)
        {
          [v252 beginEditing];
          sub_21D4E3E9C(v252);
          v789 = v249;
          v790 = v251;
          v787 = v767;
          v788 = v766;
          v255 = sub_21DBF582C();
          v256 = v745;
          (*(*(v255 - 8) + 56))(v745, 1, 1, v255);
          sub_21D176F0C();
          v257 = sub_21DBFBBAC();
          v259 = v258;
          v261 = v260;
          sub_21D0CF7E0(v256, &unk_27CE65010);
          v104 = v773;
          if (v261)
          {
          }

          else
          {
            v789 = v257;
            v790 = v259;
            v787 = v249;
            v788 = v251;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
            sub_21D4E596C();
            v483 = sub_21DBFB9DC();
            sub_21D4E4130(v252, v483, v484);
          }

          v155 = v765;
          v156 = v761;
          v157 = v760;
          v151 = v771;
          [v252 endEditing];
          v154 = v751;
        }

        else
        {

          v155 = v765;
          v104 = v773;
          v156 = v761;
          v157 = v760;
          v151 = v771;
        }

        v485 = v734;
        sub_21D4E58A4(v743, v734, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v486 = v750;
        v487 = *(v750 + 20);
        v488 = sub_21DBF79FC();
        (*(*(v488 - 8) + 16))(v485 + v487, v785 + v155, v488);
        *(v485 + *(v486 + 24)) = v252;
        v489 = v485 + *(v486 + 28);
        v490 = v770;
        *v489 = v768;
        *(v489 + 8) = v490;
        *(v489 + 16) = v769 & 1;
        swift_beginAccess();
        v491 = v791;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v491 = sub_21D2137F0(0, v491[2] + 1, 1, v491);
        }

        v492 = v724;
        v494 = v491[2];
        v493 = v491[3];
        if (v494 >= v493 >> 1)
        {
          v491 = sub_21D2137F0(v493 > 1, v494 + 1, 1, v491);
        }

        v491[2] = v494 + 1;
        v495 = v491 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v494;
        v496 = v734;
        sub_21D4E58A4(v734, v495, type metadata accessor for TTRReminderSuggestedAttribute);
        v791 = v491;
        swift_endAccess();

        sub_21D4E590C(v496, type metadata accessor for TTRReminderSuggestedAttribute);
        v213 = &v775;
        goto LABEL_251;
      }

      if (v188 != 9)
      {
        v308 = *v772;
        v309 = [*v772 title];
        if (v309)
        {
          v310 = v309;
          v311 = [v309 string];

          v312 = sub_21DBFA16C();
          v314 = v313;
        }

        else
        {
          v312 = 0;
          v314 = 0xE000000000000000;
        }

        v404 = [v308 objectID];
        v405 = v404;
        v406 = v714;
        if (*(v714 + 16) && (v407 = sub_21D17E07C(v404), (v408 & 1) != 0))
        {
          v409 = *(*(v406 + 56) + 8 * v407);
          sub_21DBF8E0C();
        }

        else
        {
          v409 = MEMORY[0x277D84F90];
        }

        v410 = v718 && v164 != v717;
        v411 = v711;
        *v711 = v308;
        *(v411 + 8) = v409;
        *(v411 + 16) = v705;
        *(v411 + 17) = v410;
        swift_storeEnumTagMultiPayload();
        v412 = v769 & 1;
        v413 = v308;
        v155 = v765;
        sub_21D4E3914(v411, v312, v314, v179, v784, v180, &v792, v765, v767, v766, v768, v770, v412, &v791);

        sub_21D4E590C(v411, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        goto LABEL_40;
      }

      v218 = *v772;
      v219 = [objc_opt_self() stringFromContact:*v772 style:0];
      if (v219)
      {
        v220 = v219;
        v221 = sub_21DBFA16C();
        v223 = v222;
        *v729 = v218;
        swift_storeEnumTagMultiPayload();
        if (v180)
        {
          v224 = v221;
          v225 = v218;
        }

        else
        {
          v224 = v221;
          swift_beginAccess();
          v461 = v218;
          sub_21D29C590(&v787, v179, v784);
          swift_endAccess();
        }

        v462 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

        v463 = v783;
        v183(v783, v748, v154);
        v155 = v765;
        v464 = sub_21DBF79DC();
        (v780)(v463, v154);
        if (v464)
        {
          [v462 beginEditing];
          sub_21D4E3E9C(v462);
          v784 = v224;
          v789 = v224;
          v790 = v223;
          v787 = v767;
          v788 = v766;
          v465 = sub_21DBF582C();
          v466 = v745;
          (*(*(v465 - 8) + 56))(v745, 1, 1, v465);
          sub_21D176F0C();
          v467 = sub_21DBFBBAC();
          v469 = v468;
          v471 = v470;
          sub_21D0CF7E0(v466, &unk_27CE65010);
          if (v471)
          {
          }

          else
          {
            v789 = v467;
            v790 = v469;
            v787 = v784;
            v788 = v223;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
            sub_21D4E596C();
            v556 = sub_21DBFB9DC();
            sub_21D4E4130(v462, v556, v557);
          }

          v104 = v773;
          v156 = v761;
          v157 = v760;
          v151 = v771;
          [v462 endEditing];
        }

        else
        {

          v104 = v773;
          v156 = v761;
          v157 = v760;
          v151 = v771;
        }

        v558 = v720;
        sub_21D4E58A4(v729, v720, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v559 = v750;
        v560 = *(v750 + 20);
        v561 = sub_21DBF79FC();
        (*(*(v561 - 8) + 16))(v558 + v560, v785 + v155, v561);
        *(v558 + *(v559 + 24)) = v462;
        v562 = v558 + *(v559 + 28);
        v563 = v770;
        *v562 = v768;
        *(v562 + 8) = v563;
        *(v562 + 16) = v769 & 1;
        swift_beginAccess();
        v564 = v791;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v564 = sub_21D2137F0(0, v564[2] + 1, 1, v564);
        }

        v566 = v564[2];
        v565 = v564[3];
        v154 = v751;
        if (v566 >= v565 >> 1)
        {
          v564 = sub_21D2137F0(v565 > 1, v566 + 1, 1, v564);
        }

        v564[2] = v566 + 1;
        v567 = v564 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v566;
        v568 = v720;
        sub_21D4E58A4(v720, v567, type metadata accessor for TTRReminderSuggestedAttribute);
        v791 = v564;
        swift_endAccess();

        sub_21D4E590C(v568, type metadata accessor for TTRReminderSuggestedAttribute);
        v213 = &v761;
        goto LABEL_251;
      }

      sub_21D0D8CF0(0, &unk_27CE626A0);
      v236 = v218;
      v377 = sub_21DBFB4AC();
      if (v377)
      {
        v378 = v377;
        v379 = [v377 phones];
        v380 = sub_21DBFA5EC();

        v381 = v380[2];
        v724 = v378;
        if (!v381)
        {

          v581 = [v378 emails];
          v582 = sub_21DBFA5EC();

          if (v582[2])
          {
            v584 = v582[4];
            v583 = v582[5];
            sub_21DBF8E0C();

            *v678 = v236;
            swift_storeEnumTagMultiPayload();
            if (v180)
            {
              v585 = v236;
            }

            else
            {
              swift_beginAccess();
              v627 = v236;
              sub_21D29C590(&v787, v179, v784);
              swift_endAccess();
            }

            v628 = objc_allocWithZone(MEMORY[0x277CCAB48]);
            v629 = sub_21DBFA12C();
            v630 = [v628 initWithString_];

            v631 = v783;
            v183(v783, v748, v154);
            LOBYTE(v628) = sub_21DBF79DC();
            (v780)(v631, v154);
            if (v628)
            {
              [v630 beginEditing];
              sub_21D4E3E9C(v630);
              v789 = v584;
              v790 = v583;
              v787 = v767;
              v788 = v766;
              v632 = sub_21DBF582C();
              v633 = v745;
              (*(*(v632 - 8) + 56))(v745, 1, 1, v632);
              sub_21D176F0C();
              v634 = sub_21DBFBBAC();
              v636 = v635;
              v638 = v637;
              sub_21D0CF7E0(v633, &unk_27CE65010);
              if (v638)
              {
              }

              else
              {
                v789 = v634;
                v790 = v636;
                v787 = v584;
                v788 = v583;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
                sub_21D4E596C();
                v639 = sub_21DBFB9DC();
                sub_21D4E4130(v630, v639, v640);
              }

              v155 = v765;
              v104 = v773;
              v156 = v761;
              v157 = v760;
              v151 = v771;
              [v630 endEditing];
            }

            else
            {

              v155 = v765;
              v104 = v773;
              v156 = v761;
              v157 = v760;
              v151 = v771;
            }

            v641 = v677;
            sub_21D4E58A4(v678, v677, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
            v642 = v750;
            v643 = *(v750 + 20);
            v644 = sub_21DBF79FC();
            (*(*(v644 - 8) + 16))(v641 + v643, v785 + v155, v644);
            *(v641 + *(v642 + 24)) = v630;
            v645 = v641 + *(v642 + 28);
            v646 = v770;
            *v645 = v768;
            *(v645 + 8) = v646;
            *(v645 + 16) = v769 & 1;
            swift_beginAccess();
            v647 = v791;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v647 = sub_21D2137F0(0, v647[2] + 1, 1, v647);
            }

            v649 = v647[2];
            v648 = v647[3];
            v154 = v751;
            if (v649 >= v648 >> 1)
            {
              v647 = sub_21D2137F0(v648 > 1, v649 + 1, 1, v647);
            }

            v647[2] = v649 + 1;
            v650 = v647 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v649;
            v651 = v677;
            sub_21D4E58A4(v677, v650, type metadata accessor for TTRReminderSuggestedAttribute);
            v791 = v647;
            swift_endAccess();

            sub_21D4E590C(v651, type metadata accessor for TTRReminderSuggestedAttribute);
            v213 = &v706;
          }

          else
          {

            *v676 = v236;
            swift_storeEnumTagMultiPayload();
            v612 = v236;
            v613 = _REMGetLocalizedString();
            if (!v613)
            {
              sub_21DBFA16C();
              v613 = sub_21DBFA12C();
            }

            v680 = v612;
            v614 = sub_21DBFA16C();
            v616 = v615;
            if (!v180)
            {
              swift_beginAccess();
              sub_21D29C590(&v787, v179, v784);
              swift_endAccess();
            }

            v617 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

            v618 = v783;
            v183(v783, v748, v154);
            v619 = sub_21DBF79DC();
            (v780)(v618, v154);
            if (v619)
            {
              [v617 beginEditing];
              sub_21D4E3E9C(v617);
              v789 = v614;
              v790 = v616;
              v787 = v767;
              v788 = v766;
              v620 = sub_21DBF582C();
              v621 = v745;
              (*(*(v620 - 8) + 56))(v745, 1, 1, v620);
              sub_21D176F0C();
              v622 = sub_21DBFBBAC();
              v624 = v623;
              v626 = v625;
              sub_21D0CF7E0(v621, &unk_27CE65010);
              v104 = v773;
              if (v626)
              {
              }

              else
              {
                v789 = v622;
                v790 = v624;
                v787 = v614;
                v788 = v616;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
                sub_21D4E596C();
                v652 = sub_21DBFB9DC();
                sub_21D4E4130(v617, v652, v653);
              }

              v155 = v765;
              v156 = v761;
              v157 = v760;
              v151 = v771;
              [v617 endEditing];
              v154 = v751;
            }

            else
            {

              v155 = v765;
              v104 = v773;
              v156 = v761;
              v157 = v760;
              v151 = v771;
            }

            v654 = v675;
            sub_21D4E58A4(v676, v675, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
            v655 = v750;
            v656 = *(v750 + 20);
            v657 = sub_21DBF79FC();
            (*(*(v657 - 8) + 16))(v654 + v656, v785 + v155, v657);
            *(v654 + *(v655 + 24)) = v617;
            v658 = v654 + *(v655 + 28);
            v659 = v770;
            *v658 = v768;
            *(v658 + 8) = v659;
            *(v658 + 16) = v769 & 1;
            swift_beginAccess();
            v660 = v791;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v660 = sub_21D2137F0(0, v660[2] + 1, 1, v660);
            }

            v661 = v680;
            v663 = v660[2];
            v662 = v660[3];
            if (v663 >= v662 >> 1)
            {
              v660 = sub_21D2137F0(v662 > 1, v663 + 1, 1, v660);
            }

            v660[2] = v663 + 1;
            v664 = v660 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v663;
            v665 = v675;
            sub_21D4E58A4(v675, v664, type metadata accessor for TTRReminderSuggestedAttribute);
            v791 = v660;
            swift_endAccess();

            sub_21D4E590C(v665, type metadata accessor for TTRReminderSuggestedAttribute);
            v213 = &v704;
          }

          goto LABEL_251;
        }

        v383 = v380[4];
        v382 = v380[5];
        sub_21DBF8E0C();

        v384 = objc_allocWithZone(MEMORY[0x277CBDB70]);
        v385 = sub_21DBFA12C();
        v386 = [v384 initWithStringValue_];

        *v691 = v236;
        swift_storeEnumTagMultiPayload();
        v680 = v236;
        v387 = [v386 formattedStringValue];
        if (v387)
        {
          v388 = v387;
          v383 = sub_21DBFA16C();
          v390 = v389;

          v382 = v390;
        }

        v391 = v770;
        if (!v180)
        {
          swift_beginAccess();
          sub_21D29C590(&v787, v179, v784);
          swift_endAccess();
        }

        v392 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v393 = sub_21DBFA12C();
        v394 = [v392 initWithString_];

        v395 = v783;
        v396 = v751;
        v183(v783, v748, v751);
        LOBYTE(v392) = sub_21DBF79DC();
        (v780)(v395, v396);
        if (v392)
        {
          [v394 beginEditing];
          sub_21D4E3E9C(v394);
          v789 = v383;
          v790 = v382;
          v787 = v767;
          v788 = v766;
          v397 = sub_21DBF582C();
          v398 = v745;
          (*(*(v397 - 8) + 56))(v745, 1, 1, v397);
          sub_21D176F0C();
          v399 = sub_21DBFBBAC();
          v401 = v400;
          v403 = v402;
          sub_21D0CF7E0(v398, &unk_27CE65010);
          if (v403)
          {
          }

          else
          {
            v789 = v399;
            v790 = v401;
            v787 = v383;
            v788 = v382;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
            sub_21D4E596C();
            v599 = sub_21DBFB9DC();
            sub_21D4E4130(v394, v599, v600);
          }

          v155 = v765;
          v104 = v773;
          v156 = v761;
          v157 = v760;
          v391 = v770;
          [v394 endEditing];
        }

        else
        {

          v155 = v765;
          v104 = v773;
          v156 = v761;
          v157 = v760;
        }

        v601 = v681;
        sub_21D4E58A4(v691, v681, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v602 = v750;
        v603 = *(v750 + 20);
        v604 = sub_21DBF79FC();
        (*(*(v604 - 8) + 16))(v601 + v603, v785 + v155, v604);
        *(v601 + *(v602 + 24)) = v394;
        v605 = v601 + *(v602 + 28);
        *v605 = v768;
        *(v605 + 8) = v391;
        *(v605 + 16) = v769 & 1;
        swift_beginAccess();
        v606 = v791;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v606 = sub_21D2137F0(0, v606[2] + 1, 1, v606);
        }

        v151 = v771;
        v607 = v680;
        v609 = v606[2];
        v608 = v606[3];
        if (v609 >= v608 >> 1)
        {
          v606 = sub_21D2137F0(v608 > 1, v609 + 1, 1, v606);
        }

        v606[2] = v609 + 1;
        v610 = v606 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v609;
        v611 = v681;
        sub_21D4E58A4(v681, v610, type metadata accessor for TTRReminderSuggestedAttribute);
        v791 = v606;
        swift_endAccess();

        sub_21D4E590C(v611, type metadata accessor for TTRReminderSuggestedAttribute);
        v550 = &v720;
LABEL_242:
        sub_21D4E590C(*(v550 - 32), type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        sub_21D4E590C(v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        sub_21D0CF7E0(v776, &qword_27CE61E70);
        v154 = v751;
        continue;
      }

LABEL_38:

LABEL_39:
      v155 = v765;
LABEL_40:
      sub_21D4E590C(v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D0CF7E0(v776, &qword_27CE61E70);
LABEL_41:
      v104 = v773;
      v156 = v761;
      v157 = v760;
      v151 = v771;
      continue;
    }

    if (v188 == 5)
    {
      v236 = *v772;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v237 = swift_allocObject();
      *(v237 + 16) = v701;
      *(v237 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
      v238 = v715(v236, v237);
      v240 = v239;
      v242 = v241;

      if (!v238)
      {
        goto LABEL_38;
      }

      v243 = v728;
      *v728 = v236;
      v243[1] = v238;
      swift_storeEnumTagMultiPayload();
      if (v180)
      {
        v244 = v236;
        v245 = v238;
      }

      else
      {
        swift_beginAccess();
        v447 = v236;
        v448 = v238;
        sub_21D29C590(&v787, v179, v784);
        swift_endAccess();
      }

      v449 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v450 = sub_21DBFA12C();
      v451 = [v449 initWithString_];

      v452 = v783;
      v453 = v751;
      v183(v783, v748, v751);
      LOBYTE(v449) = sub_21DBF79DC();
      (v780)(v452, v453);
      if (v449)
      {
        [v451 beginEditing];
        sub_21D4E3E9C(v451);
        v789 = v240;
        v790 = v242;
        v787 = v767;
        v788 = v766;
        v454 = sub_21DBF582C();
        v455 = v745;
        (*(*(v454 - 8) + 56))(v745, 1, 1, v454);
        sub_21D176F0C();
        v456 = sub_21DBFBBAC();
        v458 = v457;
        v460 = v459;
        sub_21D0CF7E0(v455, &unk_27CE65010);
        if (v460)
        {
        }

        else
        {
          v789 = v456;
          v790 = v458;
          v787 = v240;
          v788 = v242;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
          sub_21D4E596C();
          v537 = sub_21DBFB9DC();
          sub_21D4E4130(v451, v537, v538);
        }

        v155 = v765;
        v104 = v773;
        v156 = v761;
        v157 = v760;
        [v451 endEditing];
      }

      else
      {

        v155 = v765;
        v104 = v773;
        v156 = v761;
        v157 = v760;
      }

      v539 = v719;
      sub_21D4E58A4(v728, v719, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v540 = v750;
      v541 = *(v750 + 20);
      v542 = sub_21DBF79FC();
      (*(*(v542 - 8) + 16))(v539 + v541, v785 + v155, v542);
      *(v539 + *(v540 + 24)) = v451;
      v543 = v539 + *(v540 + 28);
      v544 = v770;
      *v543 = v768;
      *(v543 + 8) = v544;
      *(v543 + 16) = v769 & 1;
      swift_beginAccess();
      v545 = v791;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v545 = sub_21D2137F0(0, v545[2] + 1, 1, v545);
      }

      v151 = v771;
      v547 = v545[2];
      v546 = v545[3];
      if (v547 >= v546 >> 1)
      {
        v545 = sub_21D2137F0(v546 > 1, v547 + 1, 1, v545);
      }

      v545[2] = v547 + 1;
      v548 = v545 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v547;
      v549 = v719;
      sub_21D4E58A4(v719, v548, type metadata accessor for TTRReminderSuggestedAttribute);
      v791 = v545;
      swift_endAccess();

      sub_21D4E590C(v549, type metadata accessor for TTRReminderSuggestedAttribute);
      v550 = &v760;
      goto LABEL_242;
    }

    if (v188 == 6)
    {
      if ((*v772 & 1) == 0)
      {
        goto LABEL_40;
      }

      *v722 = 1;
      swift_storeEnumTagMultiPayload();
      if (!v180)
      {
        swift_beginAccess();
        sub_21D29C590(&v787, v179, v784);
        swift_endAccess();
      }

      v189 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v190 = sub_21DBFA12C();
      v191 = [v189 initWithString_];

      v192 = v783;
      v183(v783, v748, v154);
      LOBYTE(v189) = sub_21DBF79DC();
      (v780)(v192, v154);
      v104 = v773;
      v156 = v761;
      v157 = v760;
      if (v189)
      {
        [v191 beginEditing];
        sub_21D4E3E9C(v191);
        v789 = 1734437958;
        v790 = 0xE400000000000000;
        v787 = v767;
        v788 = v160;
        v193 = sub_21DBF582C();
        v194 = v745;
        (*(*(v193 - 8) + 56))(v745, 1, 1, v193);
        sub_21D176F0C();
        v195 = sub_21DBFBBAC();
        v197 = v196;
        v199 = v198;
        sub_21D0CF7E0(v194, &unk_27CE65010);
        if ((v199 & 1) == 0)
        {
          v789 = v195;
          v790 = v197;
          v787 = 1734437958;
          v788 = 0xE400000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
          sub_21D4E596C();
          v200 = sub_21DBFB9DC();
          sub_21D4E4130(v191, v200, v201);
        }

        [v191 endEditing];
        v154 = v751;
      }

      v202 = v708;
      sub_21D4E58A4(v722, v708, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v203 = v750;
      v204 = *(v750 + 20);
      v205 = sub_21DBF79FC();
      (*(*(v205 - 8) + 16))(v202 + v204, v785 + v155, v205);
      *(v202 + *(v203 + 24)) = v191;
      v206 = v202 + *(v203 + 28);
      v207 = v770;
      *v206 = v768;
      *(v206 + 8) = v207;
      *(v206 + 16) = v769 & 1;
      swift_beginAccess();
      v208 = v791;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v208 = sub_21D2137F0(0, v208[2] + 1, 1, v208);
      }

      v151 = v771;
      v210 = v208[2];
      v209 = v208[3];
      if (v210 >= v209 >> 1)
      {
        v208 = sub_21D2137F0(v209 > 1, v210 + 1, 1, v208);
      }

      v208[2] = v210 + 1;
      v211 = v208 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v210;
      v212 = v708;
      sub_21D4E58A4(v708, v211, type metadata accessor for TTRReminderSuggestedAttribute);
      v791 = v208;
      swift_endAccess();
      sub_21D4E590C(v212, type metadata accessor for TTRReminderSuggestedAttribute);
      v213 = &v754;
      goto LABEL_251;
    }

    v288 = *v772;
    v289 = REMReminderPriorityLevelForPriority();
    v290 = v731;
    sub_21D4E51D0(v776, v731);
    v291 = *(v290 + *(v779 + 48));
    v292 = v742;
    *v742 = v288;
    v292[1] = v291;
    swift_storeEnumTagMultiPayload();
    REMReminderPriorityLevel.localizedString.getter(v289);
    v294 = v293;
    v296 = v295;
    if (!v180)
    {
      swift_beginAccess();
      sub_21D29C590(&v787, v179, v784);
      swift_endAccess();
    }

    v297 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v298 = sub_21DBFA12C();
    v299 = [v297 initWithString_];

    v300 = v783;
    v183(v783, v748, v154);
    LOBYTE(v297) = sub_21DBF79DC();
    (v780)(v300, v154);
    if (v297)
    {
      [v299 beginEditing];
      sub_21D4E3E9C(v299);
      v789 = v294;
      v790 = v296;
      v787 = v767;
      v788 = v766;
      v301 = sub_21DBF582C();
      v302 = v745;
      (*(*(v301 - 8) + 56))(v745, 1, 1, v301);
      sub_21D176F0C();
      v303 = sub_21DBFBBAC();
      v305 = v304;
      v307 = v306;
      sub_21D0CF7E0(v302, &unk_27CE65010);
      if (v307)
      {
      }

      else
      {
        v789 = v303;
        v790 = v305;
        v787 = v294;
        v788 = v296;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
        sub_21D4E596C();
        v524 = sub_21DBFB9DC();
        sub_21D4E4130(v299, v524, v525);
      }

      v104 = v773;
      v156 = v761;
      v157 = v760;
      v151 = v771;
      [v299 endEditing];
      v154 = v751;
    }

    else
    {

      v104 = v773;
      v156 = v761;
      v157 = v760;
      v151 = v771;
    }

    v526 = v733;
    sub_21D4E58A4(v742, v733, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v527 = v750;
    v528 = *(v750 + 20);
    v529 = sub_21DBF79FC();
    (*(*(v529 - 8) + 16))(v526 + v528, v785 + v155, v529);
    *(v526 + *(v527 + 24)) = v299;
    v530 = v526 + *(v527 + 28);
    v531 = v770;
    *v530 = v768;
    *(v530 + 8) = v531;
    *(v530 + 16) = v769 & 1;
    swift_beginAccess();
    v532 = v791;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v532 = sub_21D2137F0(0, v532[2] + 1, 1, v532);
    }

    v534 = v532[2];
    v533 = v532[3];
    if (v534 >= v533 >> 1)
    {
      v532 = sub_21D2137F0(v533 > 1, v534 + 1, 1, v532);
    }

    v532[2] = v534 + 1;
    v535 = v532 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v534;
    v536 = v733;
    sub_21D4E58A4(v733, v535, type metadata accessor for TTRReminderSuggestedAttribute);
    v791 = v532;
    swift_endAccess();
    sub_21D4E590C(v536, type metadata accessor for TTRReminderSuggestedAttribute);
    sub_21D4E590C(v742, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    sub_21D4E590C(v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    sub_21D0CF7E0(v776, &qword_27CE61E70);
    sub_21D4E590C(v731, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
  }

  if (v188 <= 1)
  {
    if (!v188)
    {
      v226 = v738;
      v227 = v746;
      (*v730)(v738, v772, v746);
      v228 = v709;
      sub_21D4E4A74(v709);
      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D148);
      if ((*(*(v229 - 8) + 48))(v228, 1, v229) != 1)
      {
        v315 = *(v229 + 48);
        v316 = v692;
        (*v700)(v692, v228, v726);
        v317 = v693;
        (*v699)(v693, v228 + v315, v727);
        v318 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v319 = sub_21DBF5C0C();
        [v318 setTimeZone_];

        [v318 setDoesRelativeDateFormatting_];
        [v318 setDateStyle_];
        v320 = sub_21DBF4EDC();
        v321 = [v320 rem_isAllDayDateComponents];

        [v318 setTimeStyle_];
        v322 = sub_21DBF55BC();
        v323 = [v318 stringFromDate_];

        v724 = sub_21DBFA16C();
        v325 = v324;

        (*v704)(v317, v727);
        (*v703)(v316, v726);
        (*v695)(v721, v738, v227);
        swift_storeEnumTagMultiPayload();
        if (!v180)
        {
          swift_beginAccess();
          sub_21D29C590(&v787, v179, v784);
          swift_endAccess();
        }

        v326 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v327 = v724;
        v328 = sub_21DBFA12C();
        v329 = v325;
        v330 = [v326 initWithString_];

        v331 = v783;
        v332 = v751;
        v183(v783, v748, v751);
        v155 = v765;
        LOBYTE(v326) = sub_21DBF79DC();
        (v780)(v331, v332);
        if (v326)
        {
          [v330 beginEditing];
          v784 = v330;
          sub_21D4E3E9C(v330);
          v789 = v327;
          v790 = v329;
          v787 = v767;
          v788 = v766;
          v333 = sub_21DBF582C();
          v334 = v745;
          (*(*(v333 - 8) + 56))(v745, 1, 1, v333);
          sub_21D176F0C();
          v335 = sub_21DBFBBAC();
          v337 = v336;
          v339 = v338;
          sub_21D0CF7E0(v334, &unk_27CE65010);
          if (v339)
          {

            v340 = v746;
            v104 = v773;
            v156 = v761;
            v157 = v760;
            v151 = v771;
            v341 = v784;
          }

          else
          {
            v789 = v335;
            v790 = v337;
            v787 = v327;
            v788 = v329;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
            sub_21D4E596C();
            v569 = sub_21DBFB9DC();
            v341 = v784;
            sub_21D4E4130(v784, v569, v570);
            v340 = v746;
            v104 = v773;
            v156 = v761;
            v157 = v760;
            v151 = v771;
          }

          [v341 endEditing];
        }

        else
        {

          v340 = v746;
          v341 = v330;
          v104 = v773;
          v156 = v761;
          v157 = v760;
          v151 = v771;
        }

        v571 = v706;
        sub_21D4E58A4(v721, v706, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v572 = v750;
        v573 = *(v750 + 20);
        v574 = sub_21DBF79FC();
        (*(*(v574 - 8) + 16))(v571 + v573, v785 + v155, v574);
        *(v571 + *(v572 + 24)) = v341;
        v575 = v571 + *(v572 + 28);
        v576 = v770;
        *v575 = v768;
        *(v575 + 8) = v576;
        *(v575 + 16) = v769 & 1;
        sub_21D4E58A4(v571, v707, type metadata accessor for TTRReminderSuggestedAttribute);
        swift_beginAccess();
        v577 = v791;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v791 = v577;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v577 = sub_21D2137F0(0, v577[2] + 1, 1, v577);
          v791 = v577;
        }

        v154 = v751;
        v580 = v577[2];
        v579 = v577[3];
        if (v580 >= v579 >> 1)
        {
          v577 = sub_21D2137F0(v579 > 1, v580 + 1, 1, v577);
          v791 = v577;
        }

        v577[2] = v580 + 1;
        sub_21D4E59D0(v707, v577 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v580, type metadata accessor for TTRReminderSuggestedAttribute);
        v791 = v577;
        swift_endAccess();
        sub_21D4E590C(v706, type metadata accessor for TTRReminderSuggestedAttribute);
        sub_21D4E590C(v721, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        (*v744)(v738, v340);
        goto LABEL_252;
      }

      sub_21D0CF7E0(v228, &qword_27CE5D130);
      (*v744)(v226, v227);
      goto LABEL_39;
    }

    v724 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
    v278 = v724[12];
    v279 = v723;
    v280 = v772;
    v281 = v746;
    (*v730)(v723, v772, v746);
    v282 = v280 + v278;
    v283 = v725;
    sub_21D4E59D0(v282, v725, type metadata accessor for TTRRecurrenceRuleModel);
    v284 = v710;
    sub_21D4E4A74(v710);
    v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D148);
    if ((*(*(v285 - 8) + 48))(v284, 1, v285) == 1)
    {
      sub_21D4E590C(v283, type metadata accessor for TTRRecurrenceRuleModel);
      (*v744)(v279, v281);
      sub_21D4E590C(v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D0CF7E0(v776, &qword_27CE61E70);
      v286 = v284;
      v287 = &qword_27CE5D130;
    }

    else
    {
      v342 = *(v285 + 48);
      v343 = v696;
      v344 = v726;
      (*v700)(v696, v284, v726);
      v345 = v284 + v342;
      v346 = v697;
      v347 = v727;
      (*v699)(v697, v345, v727);
      v348 = sub_21D4E4390();
      if (v349)
      {
        v350 = v349;
        v680 = v348;
        v351 = v346;
        v352 = v725;
        v679 = TTRRecurrenceRuleModel.shortNaturalLanguageDescription(date:timeZone:lowercase:)(v343, v351, 0);
        v354 = v353;
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
        v355 = swift_allocObject();
        *(v355 + 16) = v682;
        v356 = MEMORY[0x277D837D0];
        *(v355 + 56) = MEMORY[0x277D837D0];
        v357 = sub_21D17A884();
        *(v355 + 32) = v680;
        *(v355 + 40) = v350;
        *(v355 + 96) = v356;
        *(v355 + 104) = v357;
        v358 = v679;
        *(v355 + 64) = v357;
        *(v355 + 72) = v358;
        *(v355 + 80) = v354;
        v359 = sub_21DBFA17C();
        v361 = v360;

        v362 = v724[12];
        v363 = v698;
        (*v695)(v698, v723, v746);
        sub_21D4E58A4(v352, v363 + v362, type metadata accessor for TTRRecurrenceRuleModel);
        swift_storeEnumTagMultiPayload();
        v364 = v352;
        if (!v180)
        {
          swift_beginAccess();
          sub_21D29C590(&v787, v179, v784);
          swift_endAccess();
        }

        v365 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v366 = sub_21DBFA12C();
        v367 = [v365 initWithString_];

        v368 = v783;
        v369 = v751;
        v183(v783, v748, v751);
        LOBYTE(v365) = sub_21DBF79DC();
        (v780)(v368, v369);
        if (v365)
        {
          [v367 beginEditing];
          sub_21D4E3E9C(v367);
          v789 = v359;
          v790 = v361;
          v787 = v767;
          v788 = v766;
          v370 = sub_21DBF582C();
          v371 = v745;
          (*(*(v370 - 8) + 56))(v745, 1, 1, v370);
          sub_21D176F0C();
          v372 = sub_21DBFBBAC();
          v374 = v373;
          v376 = v375;
          sub_21D0CF7E0(v371, &unk_27CE65010);
          if (v376)
          {
          }

          else
          {
            v789 = v372;
            v790 = v374;
            v787 = v359;
            v788 = v361;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
            sub_21D4E596C();
            v586 = sub_21DBFB9DC();
            sub_21D4E4130(v367, v586, v587);
          }

          v551 = v727;
          v552 = v697;
          v553 = v726;
          v554 = v696;
          v555 = v746;
          [v367 endEditing];
          v364 = v725;
        }

        else
        {

          v551 = v727;
          v552 = v697;
          v553 = v726;
          v554 = v696;
          v555 = v746;
        }

        v588 = v694;
        sub_21D4E58A4(v698, v694, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v589 = v750;
        v590 = *(v750 + 20);
        v591 = sub_21DBF79FC();
        (*(*(v591 - 8) + 16))(v588 + v590, v785 + v765, v591);
        *(v588 + *(v589 + 24)) = v367;
        v592 = v588 + *(v589 + 28);
        v593 = v770;
        *v592 = v768;
        *(v592 + 8) = v593;
        *(v592 + 16) = v769 & 1;
        swift_beginAccess();
        sub_21D4E5274();
        v594 = v791;
        v596 = v791[2];
        v595 = v791[3];
        if (v596 >= v595 >> 1)
        {
          v594 = sub_21D2137F0(v595 > 1, v596 + 1, 1, v791);
          v791 = v594;
        }

        v154 = v751;
        v594[2] = v596 + 1;
        v597 = v594 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v596;
        v598 = v694;
        sub_21D4E58A4(v694, v597, type metadata accessor for TTRReminderSuggestedAttribute);
        v791 = v594;
        swift_endAccess();
        sub_21D4E590C(v598, type metadata accessor for TTRReminderSuggestedAttribute);
        sub_21D4E590C(v698, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        (*v704)(v552, v551);
        (*v703)(v554, v553);
        sub_21D4E590C(v364, type metadata accessor for TTRRecurrenceRuleModel);
        (*v744)(v723, v555);
        goto LABEL_39;
      }

      (*v704)(v346, v347);
      (*v703)(v343, v344);
      sub_21D4E590C(v725, type metadata accessor for TTRRecurrenceRuleModel);
      (*v744)(v279, v746);
      v155 = v765;
      sub_21D4E590C(v765, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      v286 = v776;
      v287 = &qword_27CE61E70;
    }

    sub_21D0CF7E0(v286, v287);
    v154 = v751;
    goto LABEL_41;
  }

  if (v188 == 2)
  {
    v230 = *v772;
    v231 = [*v772 structuredLocation];
    v712(&v789);

    v232 = v789;
    v233 = v739;
    *v739 = v230;
    *(v233 + 8) = v232;
    swift_storeEnumTagMultiPayload();
    v234 = v230;
    v235 = [v234 proximity];
    if (!v235)
    {
      goto LABEL_170;
    }

    if (v235 == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_169;
      }
    }

    else
    {
      if (v235 != 2)
      {
        goto LABEL_318;
      }

      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_169;
      }
    }

    swift_once();
LABEL_169:
    sub_21DBF516C();
LABEL_170:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v415 = swift_allocObject();
    *(v415 + 16) = v702;
    v724 = v234;
    v416 = [v234 structuredLocation];
    v417 = [v416 displayName];

    if (v417)
    {
      v418 = sub_21DBFA16C();
      v420 = v419;
    }

    else
    {
      v418 = 0;
      v420 = 0xE000000000000000;
    }

    *(v415 + 56) = MEMORY[0x277D837D0];
    *(v415 + 64) = sub_21D17A884();
    *(v415 + 32) = v418;
    *(v415 + 40) = v420;
    v421 = sub_21DBFA17C();
    v423 = v422;

    if (!v180)
    {
      swift_beginAccess();
      sub_21D29C590(&v787, v179, v784);
      swift_endAccess();
    }

    v424 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v425 = sub_21DBFA12C();
    v426 = [v424 initWithString_];

    v427 = v783;
    v183(v783, v748, v154);
    LOBYTE(v424) = sub_21DBF79DC();
    (v780)(v427, v154);
    if (v424)
    {
      [v426 beginEditing];
      sub_21D4E3E9C(v426);
      v789 = v421;
      v790 = v423;
      v787 = v767;
      v788 = v766;
      v428 = sub_21DBF582C();
      v429 = v745;
      (*(*(v428 - 8) + 56))(v745, 1, 1, v428);
      sub_21D176F0C();
      v430 = sub_21DBFBBAC();
      v432 = v431;
      v434 = v433;
      sub_21D0CF7E0(v429, &unk_27CE65010);
      v104 = v773;
      if (v434)
      {
      }

      else
      {
        v789 = v430;
        v790 = v432;
        v787 = v421;
        v788 = v423;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
        sub_21D4E596C();
        v472 = sub_21DBFB9DC();
        sub_21D4E4130(v426, v472, v473);
      }

      v155 = v765;
      v156 = v761;
      v157 = v760;
      v151 = v771;
      [v426 endEditing];
      v154 = v751;
    }

    else
    {

      v155 = v765;
      v104 = v773;
      v156 = v761;
      v157 = v760;
      v151 = v771;
    }

    v474 = v735;
    sub_21D4E58A4(v739, v735, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v475 = v750;
    v476 = *(v750 + 20);
    v477 = sub_21DBF79FC();
    (*(*(v477 - 8) + 16))(v474 + v476, v785 + v155, v477);
    *(v474 + *(v475 + 24)) = v426;
    v478 = v474 + *(v475 + 28);
    v479 = v770;
    *v478 = v768;
    *(v478 + 8) = v479;
    *(v478 + 16) = v769 & 1;
    sub_21D4E58A4(v474, v736, type metadata accessor for TTRReminderSuggestedAttribute);
    swift_beginAccess();
    v480 = v791;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v480 = sub_21D2137F0(0, v480[2] + 1, 1, v480);
    }

    v482 = v480[2];
    v481 = v480[3];
    if (v482 >= v481 >> 1)
    {
      v480 = sub_21D2137F0(v481 > 1, v482 + 1, 1, v480);
    }

    v480[2] = v482 + 1;
    sub_21D4E59D0(v736, v480 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v482, type metadata accessor for TTRReminderSuggestedAttribute);
    v791 = v480;
    swift_endAccess();

    sub_21D4E590C(v735, type metadata accessor for TTRReminderSuggestedAttribute);
    v213 = &v771;
    goto LABEL_251;
  }

  if (v188 != 3)
  {
    v262 = *v772;
    *v741 = *v772;
    swift_storeEnumTagMultiPayload();
    v263 = v262;
    v264 = [v263 displayName];
    if (!v264)
    {
      sub_21DBFA16C();
      v264 = sub_21DBFA12C();
    }

    v724 = v263;
    v265 = sub_21DBFA16C();
    v267 = v266;
    if (!v180)
    {
      swift_beginAccess();
      sub_21D29C590(&v787, v179, v784);
      swift_endAccess();
    }

    v268 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

    v269 = v783;
    v183(v783, v748, v154);
    v270 = sub_21DBF79DC();
    (v780)(v269, v154);
    if (v270)
    {
      [v268 beginEditing];
      sub_21D4E3E9C(v268);
      v789 = v265;
      v790 = v267;
      v787 = v767;
      v788 = v766;
      v271 = sub_21DBF582C();
      v272 = v745;
      (*(*(v271 - 8) + 56))(v745, 1, 1, v271);
      sub_21D176F0C();
      v273 = sub_21DBFBBAC();
      v275 = v274;
      v277 = v276;
      sub_21D0CF7E0(v272, &unk_27CE65010);
      v104 = v773;
      if (v277)
      {
      }

      else
      {
        v789 = v273;
        v790 = v275;
        v787 = v265;
        v788 = v267;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
        sub_21D4E596C();
        v497 = sub_21DBFB9DC();
        sub_21D4E4130(v268, v497, v498);
      }

      v155 = v765;
      v156 = v761;
      v157 = v760;
      v151 = v771;
      [v268 endEditing];
      v154 = v751;
    }

    else
    {

      v155 = v765;
      v104 = v773;
      v156 = v761;
      v157 = v760;
      v151 = v771;
    }

    v499 = v732;
    sub_21D4E58A4(v741, v732, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v500 = v750;
    v501 = *(v750 + 20);
    v502 = sub_21DBF79FC();
    (*(*(v502 - 8) + 16))(v499 + v501, v785 + v155, v502);
    *(v499 + *(v500 + 24)) = v268;
    v503 = v499 + *(v500 + 28);
    v504 = v770;
    *v503 = v768;
    *(v503 + 8) = v504;
    *(v503 + 16) = v769 & 1;
    swift_beginAccess();
    v505 = v791;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v505 = sub_21D2137F0(0, v505[2] + 1, 1, v505);
    }

    v506 = v724;
    v508 = v505[2];
    v507 = v505[3];
    if (v508 >= v507 >> 1)
    {
      v505 = sub_21D2137F0(v507 > 1, v508 + 1, 1, v505);
    }

    v505[2] = v508 + 1;
    v509 = v505 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v508;
    v510 = v732;
    sub_21D4E58A4(v732, v509, type metadata accessor for TTRReminderSuggestedAttribute);
    v791 = v505;
    swift_endAccess();

    sub_21D4E590C(v510, type metadata accessor for TTRReminderSuggestedAttribute);
    v213 = &v773;
    goto LABEL_251;
  }

  v214 = *v772;
  *v740 = *v772;
  swift_storeEnumTagMultiPayload();
  v215 = v214;
  v216 = [v215 event];
  v217 = v216;
  if (!v216)
  {
    v414 = 0xE000000000000000;
    if (!v180)
    {
      goto LABEL_182;
    }

    goto LABEL_183;
  }

  if (v216 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_181:
      v217 = sub_21DBF516C();
      v414 = v435;
      if (!v180)
      {
LABEL_182:
        swift_beginAccess();
        sub_21D29C590(&v787, v179, v784);
        swift_endAccess();
      }

LABEL_183:
      v436 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v437 = sub_21DBFA12C();
      v438 = [v436 initWithString_];

      v439 = v783;
      v183(v783, v748, v154);
      LOBYTE(v436) = sub_21DBF79DC();
      (v780)(v439, v154);
      if (v436)
      {
        [v438 beginEditing];
        sub_21D4E3E9C(v438);
        v789 = v217;
        v790 = v414;
        v787 = v767;
        v788 = v766;
        v440 = sub_21DBF582C();
        v441 = v745;
        (*(*(v440 - 8) + 56))(v745, 1, 1, v440);
        sub_21D176F0C();
        v442 = sub_21DBFBBAC();
        v444 = v443;
        v446 = v445;
        sub_21D0CF7E0(v441, &unk_27CE65010);
        if (v446)
        {
        }

        else
        {
          v789 = v442;
          v790 = v444;
          v787 = v217;
          v788 = v414;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
          sub_21D4E596C();
          v511 = sub_21DBFB9DC();
          sub_21D4E4130(v438, v511, v512);
        }

        v104 = v773;
        v156 = v761;
        v157 = v760;
        v151 = v771;
        [v438 endEditing];
        v155 = v765;
      }

      else
      {

        v155 = v765;
        v104 = v773;
        v156 = v761;
        v157 = v760;
        v151 = v771;
      }

      v513 = v737;
      sub_21D4E58A4(v740, v737, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v514 = v750;
      v515 = *(v750 + 20);
      v516 = sub_21DBF79FC();
      (*(*(v516 - 8) + 16))(v513 + v515, v785 + v155, v516);
      *(v513 + *(v514 + 24)) = v438;
      v517 = v513 + *(v514 + 28);
      v518 = v770;
      *v517 = v768;
      *(v517 + 8) = v518;
      *(v517 + 16) = v769 & 1;
      swift_beginAccess();
      v519 = v791;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v519 = sub_21D2137F0(0, v519[2] + 1, 1, v519);
      }

      v521 = v519[2];
      v520 = v519[3];
      v154 = v751;
      if (v521 >= v520 >> 1)
      {
        v519 = sub_21D2137F0(v520 > 1, v521 + 1, 1, v519);
      }

      v519[2] = v521 + 1;
      v522 = v519 + ((*(v749 + 80) + 32) & ~*(v749 + 80)) + *(v749 + 72) * v521;
      v523 = v737;
      sub_21D4E58A4(v737, v522, type metadata accessor for TTRReminderSuggestedAttribute);
      v791 = v519;
      swift_endAccess();

      sub_21D4E590C(v523, type metadata accessor for TTRReminderSuggestedAttribute);
      v213 = &v772;
LABEL_251:
      sub_21D4E590C(*(v213 - 32), type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
LABEL_252:
      sub_21D4E590C(v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D0CF7E0(v776, &qword_27CE61E70);
      goto LABEL_42;
    }

LABEL_307:
    swift_once();
    goto LABEL_181;
  }

  if (v216 == 2)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_181;
    }

    goto LABEL_307;
  }

  if (qword_27CE56E20 != -1)
  {
    swift_once();
  }

  v672 = sub_21DBF84BC();
  __swift_project_value_buffer(v672, qword_27CE63870);
  v673 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v673);
  v670 = "unknown event";
  v671 = 13;
LABEL_324:
  sub_21DAEAB00(v670, v671, 2);
  __break(1u);
}

void TTRReminderTitleAttributesStylerType.style(title:attributes:nlpAttributeRangeSupportsDeletion:imagesByReminderObjectID:contactAndName:matchedUserLocation:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t (*a7)(id, uint64_t), uint64_t a8, void (*a9)(uint64_t *__return_ptr), uint64_t a10, uint64_t a11, uint64_t a12)
{
  v356 = a8;
  v355 = a7;
  v354 = a6;
  v380 = a5;
  v397 = a2;
  v338 = a1;
  v386 = a12;
  v375 = a11;
  v353 = a10;
  v352 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D130);
  MEMORY[0x28223BE20](v14 - 8);
  v351 = &v324 - v15;
  v346 = sub_21DBF5C4C();
  v382 = *(v346 - 8);
  MEMORY[0x28223BE20](v346);
  v343 = &v324 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v345 = sub_21DBF563C();
  v369 = *(v345 - 8);
  MEMORY[0x28223BE20](v345);
  v344 = &v324 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v18 - 8);
  v362 = &v324 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v372);
  v327 = (&v324 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v365 = (&v324 - v22);
  MEMORY[0x28223BE20](v23);
  v364 = (&v324 - v24);
  MEMORY[0x28223BE20](v25);
  v371 = &v324 - v26;
  v367 = sub_21DBF509C();
  v27 = *(v367 - 8);
  MEMORY[0x28223BE20](v367);
  v359 = &v324 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v368 = &v324 - v30;
  v396 = sub_21DBF7A0C();
  v393 = *(v396 - 8);
  MEMORY[0x28223BE20](v396);
  v395 = &v324 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  MEMORY[0x28223BE20](v408);
  v392 = (&v324 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v400 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v400);
  v379 = (&v324 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v407 = &v324 - v35;
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E70);
  v388 = *(v405 - 8);
  MEMORY[0x28223BE20](v405);
  v390 = &v324 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v381 = &v324 - v38;
  MEMORY[0x28223BE20](v39);
  v402 = &v324 - v40;
  MEMORY[0x28223BE20](v41);
  v398 = &v324 - v42;
  MEMORY[0x28223BE20](v43);
  v406 = &v324 - v44;
  MEMORY[0x28223BE20](v45);
  v409 = &v324 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D138);
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v387 = (&v324 - v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D140);
  MEMORY[0x28223BE20](v50 - 8);
  v385 = &v324 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v384 = (&v324 - v53);
  MEMORY[0x28223BE20](v54);
  v56 = &v324 - v55;
  v58 = MEMORY[0x28223BE20](v57);
  v60 = (&v324 - v59);
  v391 = 0;
  v358 = 0;
  v61 = 0;
  v389 = a4;
  v62 = *(a4 + 16);
  v403 = (v48 + 48);
  v404 = (v48 + 56);
  v361 = v27;
  v366 = (v27 + 8);
  v357 = -1;
  v399 = v47;
  v401 = v62;
  while (1)
  {
    if (v61 == v62)
    {
      v63 = 1;
      v61 = v62;
    }

    else
    {
      if (v61 >= v62)
      {
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      if (__OFADD__(v61, 1))
      {
        goto LABEL_158;
      }

      v64 = v389 + ((*(v388 + 80) + 32) & ~*(v388 + 80)) + *(v388 + 72) * v61;
      v65 = *(v47 + 48);
      v66 = v387;
      *v387 = v61;
      sub_21D4E51D0(v64, v66 + v65);
      sub_21D0D523C(v66, v56, &qword_27CE5D138);
      v63 = 0;
      ++v61;
    }

    v67 = *v404;
    (*v404)(v56, v63, 1, v47, v58);
    sub_21D0D523C(v56, v60, &qword_27CE5D140);
    v68 = *v403;
    if ((*v403)(v60, 1, v47) == 1)
    {
      break;
    }

    v69 = v56;
    v70 = *v60;
    v71 = v60 + *(v47 + 48);
    v72 = v405;
    v73 = v406;
    v74 = *(v71 + *(v405 + 48));
    sub_21D4E59D0(v71, v406, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    v75 = *(v72 + 48);
    v76 = v73;
    v77 = v409;
    sub_21D4E59D0(v76, v409, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    *(v77 + v75) = v74;
    v78 = v398;
    sub_21D4E51D0(v77, v398);

    sub_21D4E58A4(v78 + *(v408 + 20), v407, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    sub_21D4E590C(v78, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 1)
      {
        v47 = v399;
        v62 = v401;
        v56 = v69;
        goto LABEL_2;
      }

      v47 = v399;
      v62 = v401;
      v56 = v69;
      if (EnumCaseMultiPayload)
      {
        sub_21D0CF7E0(v409, &qword_27CE61E70);
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
        v83 = v407;
        sub_21D4E590C(v407 + *(v82 + 48), type metadata accessor for TTRRecurrenceRuleModel);
        (*v366)(v83, v367);
      }

      else
      {
LABEL_2:
        sub_21D0CF7E0(v409, &qword_27CE61E70);
        sub_21D4E590C(v407, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      }
    }

    else if (EnumCaseMultiPayload > 7)
    {
      v47 = v399;
      v62 = v401;
      v56 = v69;
      if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
      {
        goto LABEL_2;
      }

      if (__OFADD__(v391, 1))
      {
        goto LABEL_162;
      }

      ++v391;
      v357 = v70;
      v80 = *v407;
      if (v358)
      {
        sub_21D0CF7E0(v409, &qword_27CE61E70);

        v81 = 1;
        goto LABEL_33;
      }

      v84 = [*v407 notesAsString];
      if (v84)
      {
        v85 = v84;
        v86 = sub_21DBFA16C();
        v88 = v87;

        v89 = HIBYTE(v88) & 0xF;
        if ((v88 & 0x2000000000000000) == 0)
        {
          v89 = v86 & 0xFFFFFFFFFFFFLL;
        }

        v90 = v89 == 0;
      }

      else
      {
        v90 = 1;
      }

      v91 = [v80 attachmentContext];
      if (v91)
      {
        v92 = v91;
        v93 = [v91 imageAttachments];

        sub_21D0D8CF0(0, &qword_280D0C290);
        v94 = sub_21DBFA5EC();

        if (v94 >> 62)
        {
          v95 = sub_21DBFBD7C();
        }

        else
        {
          v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_21D0CF7E0(v409, &qword_27CE61E70);
        v358 = 1;
        if (v90)
        {
          v358 = v95 > 0;
        }
      }

      else
      {
        sub_21D0CF7E0(v409, &qword_27CE61E70);

        v81 = !v90;
LABEL_33:
        v358 = v81;
      }
    }

    else
    {
      v47 = v399;
      v62 = v401;
      v56 = v69;
      if (EnumCaseMultiPayload == 5)
      {
        goto LABEL_2;
      }

      sub_21D0CF7E0(v409, &qword_27CE61E70);
    }
  }

  v383 = v68;
  v96 = swift_allocObject();
  v374 = v96;
  *(v96 + 16) = MEMORY[0x277D84FA0];
  v337 = v96 + 16;
  v97 = swift_allocObject();
  v98 = 0;
  v373 = v97;
  *(v97 + 16) = MEMORY[0x277D84F90];
  v336 = v97 + 16;
  v99 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v99 = v397;
  }

  v378 = (v99 << 16) | 7;
  v376 = *MEMORY[0x277D456F0];
  v394 = (v393 + 13);
  ++v393;
  v370 = *MEMORY[0x277D45700];
  v350 = v391 == 1;
  v349 = v386 + 24;
  v335 = "n trigger menu item";
  v334 = 0x800000021DC4AB80;
  v333 = 0x800000021DC4ABC0;
  v332 = 0x800000021DC5EA30;
  v331 = 0x800000021DC5EA80;
  v363 = (v361 + 32);
  v342 = (v369 + 32);
  v341 = (v382 + 32);
  v330 = "reminder-due-date";
  v329 = 0x800000021DC44220;
  v347 = (v361 + 16);
  v340 = (v382 + 8);
  v339 = (v369 + 8);
  v328 = xmmword_21DC08D20;
  v348 = xmmword_21DC08D00;
  v360 = a3;
  v100 = v392;
  v101 = v385;
  v377 = v67;
  v102 = v62 == 0;
  if (!v62)
  {
    goto LABEL_41;
  }

LABEL_38:
  while (2)
  {
    if (v102)
    {
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      if (qword_27CE56C60 != -1)
      {
        swift_once();
      }

      v315 = sub_21DBF84BC();
      __swift_project_value_buffer(v315, qword_27CE60CF0);
      v316 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v316);
      v317 = "unknown proximity";
      v318 = 17;
      goto LABEL_169;
    }

    v103 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      goto LABEL_160;
    }

    v104 = v389 + ((*(v388 + 80) + 32) & ~*(v388 + 80)) + *(v388 + 72) * v98;
    v105 = *(v47 + 48);
    v106 = v387;
    *v387 = v98;
    sub_21D4E51D0(v104, v106 + v105);
    sub_21D0D523C(v106, v101, &qword_27CE5D138);
    v107 = 0;
    v62 = v103;
    while (1)
    {
      (v67)(v101, v107, 1, v47);
      v108 = v384;
      sub_21D0D523C(v101, v384, &qword_27CE5D140);
      if (v383(v108, 1, v47) == 1)
      {
        swift_beginAccess();
        v313 = *(v374 + 16);
        v314 = v338;
        *v338 = v397;
        v314[1] = a3;
        v314[2] = v313;
        swift_beginAccess();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();

        return;
      }

      v398 = v62;
      v109 = *v108;
      v110 = v108 + *(v47 + 48);
      v111 = v405;
      v112 = *(v110 + *(v405 + 48));
      v113 = v381;
      sub_21D4E59D0(v110, v381, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      v114 = *(v111 + 48);
      v115 = v113;
      v116 = v402;
      sub_21D4E59D0(v115, v402, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      *(v116 + v114) = v112;
      v117 = v390;
      sub_21D4E51D0(v116, v390);

      sub_21D4E59D0(v117, v100, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      v118 = *v100;
      v119 = v100[1];
      if ((a3 & 0x1000000000000000) != 0)
      {
        v120 = sub_21DBFA35C();
        v121 = v118 + v119;
        if (__OFADD__(v118, v119))
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }
      }

      else
      {
        v120 = sub_21DBFA36C();
        v121 = v118 + v119;
        if (__OFADD__(v118, v119))
        {
          goto LABEL_156;
        }
      }

      if (v121 >= v120)
      {
        v122 = v120;
      }

      else
      {
        v122 = v121;
      }

      if ((v118 & 0x8000000000000000) == 0 && v118 < v120)
      {
        v123 = __OFSUB__(v122, v118);
        v122 -= v118;
        if (v123)
        {
          goto LABEL_161;
        }

        v409 = v118;
LABEL_54:
        LODWORD(v407) = v122 < 1;
        v124 = v409;
        if (v122 < 1)
        {
          v124 = 0;
        }

        v409 = v124;
        v125 = v122 & ~(v122 >> 63);
        goto LABEL_57;
      }

      v409 = 0;
      LODWORD(v407) = 1;
      if (v118 <= 0)
      {
        v406 = v409;
        if (v121 <= 0)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }

      v125 = v409;
LABEL_57:
      v406 = v125;
LABEL_58:
      v126 = *v394;
      v128 = v395;
      v127 = v396;
      (*v394)(v395, v376, v396);
      v129 = sub_21DBF79DC();
      v130 = *v393;
      (*v393)(v128, v127);
      v131 = v380;
      if ((v129 & 1) == 0)
      {
        v133 = v395;
        v132 = v396;
        v126(v395, v370, v396);
        v131 = sub_21DBF79DC();
        v134 = v133;
        v100 = v392;
        v130(v134, v132);
      }

      v135 = (v131 & 1) != 0 ? v409 : 0;
      v136 = (v131 & 1) != 0 ? v406 : 0;
      v137 = v131 ^ 1 | v407;
      v138 = v379;
      sub_21D4E58A4(v100 + *(v408 + 20), v379, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      v139 = swift_getEnumCaseMultiPayload();
      if (v139 <= 4)
      {
        break;
      }

      if (v139 <= 7)
      {
        v140 = v137;
        if (v139 != 5)
        {
          v141 = v386;
          if (v139 == 6)
          {
            v142 = v375;
            if (*v138 != 1)
            {
              goto LABEL_132;
            }

            v143 = v371;
            *v371 = 1;
            swift_storeEnumTagMultiPayload();
            sub_21D4E52C0(v143, 1734437958, 0xE400000000000000, v409, v406, v407, v374, v100, v397, a3, v135, v136, v140 & 1, v373, v142, v141);
            goto LABEL_130;
          }

          v217 = *v138;
          v218 = REMReminderPriorityLevelForPriority();
          v219 = v390;
          sub_21D4E51D0(v402, v390);
          v220 = *(v219 + *(v405 + 48));
          v221 = a3;
          v222 = v136;
          v223 = v371;
          *v371 = v217;
          *(v223 + 8) = v220;
          swift_storeEnumTagMultiPayload();
          REMReminderPriorityLevel.localizedString.getter(v218);
          v322 = v222;
          a3 = v221;
          sub_21D4E52C0(v223, v224, v225, v409, v406, v407, v374, v100, v397, v221, v135, v322, v140 & 1, v373, v375, v141);

          sub_21D4E590C(v223, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
          sub_21D4E590C(v100, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          sub_21D0CF7E0(v402, &qword_27CE61E70);
          sub_21D4E590C(v219, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
LABEL_134:
          v47 = v399;
          v101 = v385;
          goto LABEL_135;
        }

        v391 = v135;
        v179 = *v138;
        v180 = v386;
        v181 = v375;
        v182 = (*(v386 + 24))(v375, v386);
        v183 = v355(v179, v182);
        v185 = v184;
        v187 = v186;

        if (v183)
        {
          v188 = v371;
          *v371 = v179;
          *(v188 + 8) = v183;
          swift_storeEnumTagMultiPayload();
          v189 = v136;
          v190 = v140 & 1;
          v191 = v179;
          v192 = v183;
          v323 = v181;
          a3 = v360;
          sub_21D4E52C0(v188, v185, v187, v409, v406, v407, v374, v392, v397, v360, v391, v189, v190, v373, v323, v180);

          goto LABEL_94;
        }

LABEL_143:
        sub_21D4E590C(v100, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        sub_21D0CF7E0(v402, &qword_27CE61E70);
        a3 = v360;
        goto LABEL_134;
      }

      if (v139 == 8)
      {
        v194 = *v138;
        v195 = v136;
        v161 = v371;
        *v371 = *v138;
        swift_storeEnumTagMultiPayload();
        v162 = v194;
        v196 = [v162 name];
        v197 = v137;
        v198 = sub_21DBFA16C();
        v200 = v199;

        sub_21D4E52C0(v161, v198, v200, v409, v406, v407, v374, v100, v397, a3, v135, v195, v197 & 1, v373, v375, v386);
LABEL_96:

        goto LABEL_97;
      }

      if (v139 != 9)
      {
        LODWORD(v369) = v137;
        v382 = v136;
        v391 = v135;
        v226 = *v138;
        v227 = [*v138 title];
        if (v227)
        {
          v228 = v227;
          v229 = [v227 string];

          v230 = sub_21DBFA16C();
          v232 = v231;
        }

        else
        {
          v230 = 0;
          v232 = 0xE000000000000000;
        }

        v62 = v401;
        v280 = [v226 objectID];
        v281 = v280;
        v282 = v354;
        if (*(v354 + 16) && (v283 = sub_21D17E07C(v280), (v284 & 1) != 0))
        {
          v285 = *(*(v282 + 56) + 8 * v283);
          sub_21DBF8E0C();
        }

        else
        {
          v285 = MEMORY[0x277D84F90];
        }

        v286 = v358 && v109 != v357;
        v287 = v371;
        *v371 = v226;
        *(v287 + 8) = v285;
        *(v287 + 16) = v350;
        *(v287 + 17) = v286;
        swift_storeEnumTagMultiPayload();
        v288 = v369 & 1;
        v289 = v226;
        sub_21D4E52C0(v287, v230, v232, v409, v406, v407, v374, v100, v397, a3, v391, v382, v288, v373, v375, v386);

        sub_21D4E590C(v287, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        sub_21D4E590C(v100, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        sub_21D0CF7E0(v402, &qword_27CE61E70);
        v47 = v399;
        v101 = v385;
        goto LABEL_136;
      }

      v153 = *v138;
      v154 = [objc_opt_self() stringFromContact:*v138 style:0];
      if (v154)
      {
        v155 = v154;
        v156 = v137;
        v157 = sub_21DBFA16C();
        v159 = v158;

        v160 = v136;
        v161 = v371;
        *v371 = v153;
        swift_storeEnumTagMultiPayload();
        v162 = v153;
        sub_21D4E52C0(v161, v157, v159, v409, v406, v407, v374, v100, v397, a3, v135, v160, v156 & 1, v373, v375, v386);
        goto LABEL_96;
      }

      v391 = v135;
      sub_21D0D8CF0(0, &unk_27CE626A0);
      v262 = v153;
      v263 = sub_21DBFB4AC();
      v264 = v386;
      if (!v263)
      {

        goto LABEL_132;
      }

      v265 = v263;
      LODWORD(v369) = v137;
      v382 = v136;
      v266 = [v263 phones];
      v267 = sub_21DBFA5EC();

      v62 = v401;
      if (!v267[2])
      {

        v302 = [v265 emails];
        v303 = sub_21DBFA5EC();

        if (v303[2])
        {
          v304 = v303[4];
          v305 = v303[5];
          sub_21DBF8E0C();

          v188 = v371;
          *v371 = v262;
          swift_storeEnumTagMultiPayload();
          v306 = v369 & 1;
          v307 = v262;
          sub_21D4E52C0(v188, v304, v305, v409, v406, v407, v374, v392, v397, a3, v391, v382, v306, v373, v375, v264);

LABEL_94:
          v193 = v188;
          v100 = v392;
LABEL_131:
          sub_21D4E590C(v193, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
          goto LABEL_132;
        }

        v161 = v371;
        *v371 = v262;
        swift_storeEnumTagMultiPayload();
        v308 = v262;
        v309 = _REMGetLocalizedString();
        v310 = sub_21DBFA16C();
        v312 = v311;

        sub_21D4E52C0(v161, v310, v312, v409, v406, v407, v374, v100, v397, a3, v391, v382, v369 & 1, v373, v375, v264);

LABEL_97:
        v193 = v161;
        goto LABEL_131;
      }

      v269 = v267[4];
      v268 = v267[5];
      sub_21DBF8E0C();

      v270 = objc_allocWithZone(MEMORY[0x277CBDB70]);
      v271 = sub_21DBFA12C();
      v272 = [v270 initWithStringValue_];

      *v327 = v262;
      swift_storeEnumTagMultiPayload();
      v273 = v262;
      v274 = v272;
      v275 = [v272 formattedStringValue];
      if (v275)
      {
        v276 = v275;
        v269 = sub_21DBFA16C();
        v278 = v277;

        v268 = v278;
      }

      v67 = v377;
      v279 = v327;
      sub_21D4E52C0(v327, v269, v268, v409, v406, v407, v374, v100, v397, a3, v391, v382, v369 & 1, v373, v375, v386);

      sub_21D4E590C(v279, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      sub_21D4E590C(v100, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D0CF7E0(v402, &qword_27CE61E70);
      v98 = v398;
      v47 = v399;
      v101 = v385;
      v102 = v398 >= v62;
      if (v398 != v62)
      {
        goto LABEL_38;
      }

LABEL_41:
      v107 = 1;
    }

    v382 = v136;
    v391 = v135;
    v144 = v368;
    if (v139 <= 1)
    {
      v163 = v386;
      v164 = v375;
      if (v139)
      {
        LODWORD(v369) = v137;
        v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
        v210 = *(v209 + 48);
        v211 = v359;
        v212 = v367;
        (*v363)(v359, v138, v367);
        v213 = v138 + v210;
        v214 = v362;
        sub_21D4E59D0(v213, v362, type metadata accessor for TTRRecurrenceRuleModel);
        v215 = v351;
        sub_21D4E4E04(v164, v163, v351);
        v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D148);
        if ((*(*(v216 - 8) + 48))(v215, 1, v216) == 1)
        {
          sub_21D4E590C(v214, type metadata accessor for TTRRecurrenceRuleModel);
          (*v366)(v211, v212);
          v100 = v392;
          sub_21D4E590C(v392, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          sub_21D0CF7E0(v402, &qword_27CE61E70);
          sub_21D0CF7E0(v215, &qword_27CE5D130);
          goto LABEL_134;
        }

        v361 = v209;
        v233 = *(v216 + 48);
        v234 = v344;
        v235 = v345;
        (*v342)(v344, v215, v345);
        v236 = &v215[v233];
        v237 = v343;
        v238 = v346;
        (*v341)(v343, v236, v346);
        v239 = sub_21D4E46F4(v211, v164, v163);
        if (!v240)
        {
          (*v340)(v237, v238);
          (*v339)(v234, v235);
          sub_21D4E590C(v362, type metadata accessor for TTRRecurrenceRuleModel);
          (*v366)(v211, v367);
          v100 = v392;
          goto LABEL_143;
        }

        v241 = v239;
        v242 = v240;
        v326 = TTRRecurrenceRuleModel.shortNaturalLanguageDescription(date:timeZone:lowercase:)(v234, v237, 0);
        v325 = v243;
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
        v244 = swift_allocObject();
        *(v244 + 16) = v328;
        v245 = MEMORY[0x277D837D0];
        *(v244 + 56) = MEMORY[0x277D837D0];
        v246 = sub_21D17A884();
        *(v244 + 32) = v241;
        *(v244 + 40) = v242;
        *(v244 + 96) = v245;
        *(v244 + 104) = v246;
        v247 = v326;
        *(v244 + 64) = v246;
        *(v244 + 72) = v247;
        *(v244 + 80) = v325;
        v248 = sub_21DBFA17C();
        v250 = v249;

        v251 = *(v361 + 48);
        v252 = v371;
        v253 = v359;
        v254 = v367;
        (*v347)(v371, v359, v367);
        v255 = v362;
        sub_21D4E58A4(v362, v252 + v251, type metadata accessor for TTRRecurrenceRuleModel);
        swift_storeEnumTagMultiPayload();
        v256 = v360;
        v257 = v248;
        v258 = v392;
        sub_21D4E52C0(v252, v257, v250, v409, v406, v407, v374, v392, v397, v360, v391, v382, v369 & 1, v373, v164, v163);

        sub_21D4E590C(v252, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v259 = v237;
        a3 = v256;
        (*v340)(v259, v346);
        (*v339)(v344, v345);
        sub_21D4E590C(v255, type metadata accessor for TTRRecurrenceRuleModel);
        v260 = v253;
        v100 = v258;
        (*v366)(v260, v254);
        v261 = v258;
      }

      else
      {
        v165 = v138;
        v166 = v367;
        (*v363)(v368, v165, v367);
        v167 = sub_21D4E46F4(v144, v164, v163);
        if (v168)
        {
          v169 = v167;
          v170 = v168;
          v171 = v137;
          v172 = v371;
          (*v347)(v371, v144, v166);
          swift_storeEnumTagMultiPayload();
          sub_21D4E52C0(v172, v169, v170, v409, v406, v407, v374, v100, v397, a3, v391, v382, v171 & 1, v373, v164, v163);

          sub_21D4E590C(v172, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        }

        (*v366)(v144, v166);
LABEL_132:
        v261 = v100;
      }

      sub_21D4E590C(v261, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D0CF7E0(v402, &qword_27CE61E70);
      goto LABEL_134;
    }

    v145 = v386;
    v146 = v375;
    if (v139 == 2)
    {
      LODWORD(v369) = v137;
      v173 = *v138;
      v174 = [*v138 structuredLocation];
      v352(&v410);

      v175 = v410;
      v176 = v364;
      *v364 = v173;
      *(v176 + 8) = v175;
      swift_storeEnumTagMultiPayload();
      v177 = v173;
      v178 = [v177 proximity];
      if (!v178)
      {
        v361 = 16421;
LABEL_126:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
        v291 = swift_allocObject();
        *(v291 + 16) = v348;
        v292 = [v177 structuredLocation];
        v293 = [v292 displayName];

        if (v293)
        {
          v294 = sub_21DBFA16C();
          v296 = v295;
        }

        else
        {
          v294 = 0;
          v296 = 0xE000000000000000;
        }

        *(v291 + 56) = MEMORY[0x277D837D0];
        *(v291 + 64) = sub_21D17A884();
        *(v291 + 32) = v294;
        *(v291 + 40) = v296;
        v297 = sub_21DBFA17C();
        v299 = v298;

        v143 = v364;
        sub_21D4E52C0(v364, v297, v299, v409, v406, v407, v374, v100, v397, a3, v391, v382, v369 & 1, v373, v146, v145);

LABEL_130:
        v193 = v143;
        goto LABEL_131;
      }

      if (v178 == 2)
      {
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_125;
        }
      }

      else
      {
        if (v178 != 1)
        {
          goto LABEL_163;
        }

        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_125;
        }
      }

      swift_once();
LABEL_125:
      v361 = sub_21DBF516C();
      goto LABEL_126;
    }

    if (v139 != 3)
    {
      v201 = *v138;
      v202 = v371;
      *v371 = *v138;
      swift_storeEnumTagMultiPayload();
      v203 = v201;
      v204 = [v203 displayName];
      v205 = v137;
      v206 = sub_21DBFA16C();
      v208 = v207;

      sub_21D4E52C0(v202, v206, v208, v409, v406, v407, v374, v100, v397, a3, v391, v382, v205 & 1, v373, v146, v145);

      v193 = v202;
      goto LABEL_131;
    }

    v147 = *v138;
    *v365 = *v138;
    swift_storeEnumTagMultiPayload();
    v148 = v147;
    v149 = [v148 event];
    v150 = v149;
    if (!v149)
    {
      v151 = v137;
      v290 = 0xE000000000000000;
      v101 = v385;
      v152 = v391;
      goto LABEL_141;
    }

    if (v149 == 2)
    {
      v151 = v137;
      v101 = v385;
      v152 = v391;
      if (qword_280D1BAA8 == -1)
      {
LABEL_140:
        v150 = sub_21DBF516C();
        v290 = v300;
LABEL_141:
        v321 = v152;
        v301 = v365;
        sub_21D4E52C0(v365, v150, v290, v409, v406, v407, v374, v100, v397, a3, v321, v382, v151 & 1, v373, v146, v145);

        sub_21D4E590C(v301, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        sub_21D4E590C(v100, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        sub_21D0CF7E0(v402, &qword_27CE61E70);
        v47 = v399;
LABEL_135:
        v62 = v401;
LABEL_136:
        v67 = v377;
        v98 = v398;
        v102 = v398 >= v62;
        if (v398 != v62)
        {
          continue;
        }

        goto LABEL_41;
      }

LABEL_152:
      swift_once();
      goto LABEL_140;
    }

    break;
  }

  if (v149 == 1)
  {
    v151 = v137;
    v101 = v385;
    v152 = v391;
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_140;
    }

    goto LABEL_152;
  }

  if (qword_27CE56E20 != -1)
  {
    swift_once();
  }

  v319 = sub_21DBF84BC();
  __swift_project_value_buffer(v319, qword_27CE63870);
  v320 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v320);
  v317 = "unknown event";
  v318 = 13;
LABEL_169:
  sub_21DAEAB00(v317, v318, 2);
  __break(1u);
}