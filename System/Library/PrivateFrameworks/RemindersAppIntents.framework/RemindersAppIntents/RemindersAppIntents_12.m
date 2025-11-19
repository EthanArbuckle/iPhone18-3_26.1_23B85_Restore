unint64_t sub_261C21EA4()
{
  result = qword_27FEDCBB0;
  if (!qword_27FEDCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCBB0);
  }

  return result;
}

uint64_t SmartListEntityRepresentation.type.getter()
{
  v1 = *(v0 + qword_27FEDCBB8);
  sub_261CFCDA4();
  sub_261CFEBD4();
}

uint64_t SmartListEntityRepresentation.isHidden.getter()
{
  v1 = *(v0 + qword_27FEDCBC0);
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v3;
}

uint64_t sub_261C21FAC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + qword_27FEDCBB8);
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a2 = v5;
  return result;
}

uint64_t SmartListEntityRepresentation.type.setter(char *a1)
{
  v2 = *(v1 + qword_27FEDCBB8);
  v4 = *a1;
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*SmartListEntityRepresentation.type.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDCBB8);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

uint64_t sub_261C220EC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + qword_27FEDCBC0);
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a2 = v5;
  return result;
}

uint64_t sub_261C22144(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  v7 = *a1;
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t SmartListEntityRepresentation.isHidden.setter()
{
  v1 = *(v0 + qword_27FEDCBC0);
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*SmartListEntityRepresentation.isHidden.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDCBC0);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t SmartListEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = *(v1 + 48);
  v12 = *(v1 + 52);
  v13 = swift_allocObject();
  v14 = qword_27FEDCBB8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBC8, &unk_261D0BD40);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v13 + v14) = sub_261CFEBB4();
  v18 = qword_27FEDCBC0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBD0, &qword_261D0DBE0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v13 + v18) = sub_261CFEBB4();
  v22 = v4[2];
  v22(v10, a1, v3);
  v22(v8, v10, v3);
  v23 = sub_261CFEA94();
  v24 = v4[1];
  v24(a1, v3);
  v24(v10, v3);
  return v23;
}

uint64_t SmartListEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = qword_27FEDCBB8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBC8, &unk_261D0BD40);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + v11) = sub_261CFEBB4();
  v15 = qword_27FEDCBC0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBD0, &qword_261D0DBE0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v15) = sub_261CFEBB4();
  v19 = v4[2];
  v19(v10, a1, v3);
  v19(v8, v10, v3);
  v20 = sub_261CFEA94();
  v21 = v4[1];
  v21(a1, v3);
  v21(v10, v3);
  return v20;
}

uint64_t sub_261C22618()
{
  v1 = *(v0 + qword_27FEDCBB8);

  v2 = *(v0 + qword_27FEDCBC0);
}

uint64_t SmartListEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  v1 = *(v0 + qword_27FEDCBB8);

  v2 = *(v0 + qword_27FEDCBC0);

  return v0;
}

uint64_t SmartListEntityRepresentation.__deallocating_deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  v1 = *(v0 + qword_27FEDCBB8);
  sub_261CFCDA4();

  v2 = *(v0 + qword_27FEDCBC0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SmartListEntityRepresentation()
{
  result = qword_27FEDCBD8;
  if (!qword_27FEDCBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261C227B8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCBE8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCBE8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t GroupEntity.init(representation:)@<X0>(uint64_t a1@<X0>, unsigned int (**a2)(char *, uint64_t, uint64_t)@<X8>)
{
  v96 = sub_261CFEC94();
  v4 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v97 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD674();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v6);
  v95 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v91 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFD6A4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v90 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v82 - v20;
  v101 = type metadata accessor for ListEntity();
  v99 = *(v101 - 8);
  v22 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA00, &qword_261D035A8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v82 - v26);
  v28 = type metadata accessor for AppEntityID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v98 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v82 - v33;
  sub_261CFEA04();
  __swift_project_boxed_opaque_existential_1(&v102, v104);
  v35 = sub_261CFEAB4();
  AppEntityID.init(entityIdentifierString:)(v35, v36, v27);
  __swift_destroy_boxed_opaque_existential_0(&v102);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_261AE6A40(v27, &qword_27FEDAA00, &qword_261D035A8);
    goto LABEL_7;
  }

  sub_261C23488(v27, v34, type metadata accessor for AppEntityID);
  v37 = *(a1 + qword_27FEDCE40);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v38 = v103;
  if (!v103)
  {
    sub_261B7C200(v34);
LABEL_7:
    if (qword_27FED9B80 != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_8;
  }

  v39 = v102;
  v40 = *(a1 + qword_27FEDCE48);
  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v102 == 2)
  {
    sub_261B7C200(v34);

    goto LABEL_7;
  }

  v83 = v102;
  sub_261B7C0F0(v34, v98);
  v47 = *(a1 + qword_27FEDCE50);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v48 = v102;
  v87 = a1;
  v88 = a2;
  v86 = v34;
  v85 = v38;
  v84 = v39;
  if (!v102)
  {
    v52 = MEMORY[0x277D84F90];
LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1C8, &unk_261D10E30);
    sub_261C23538(&qword_280D227A0, type metadata accessor for ListEntity);
    v101 = sub_261CFCA64();
    v57 = v88;
    *v88 = v101;
    v58 = type metadata accessor for GroupEntity();
    v59 = *(v58 + 24);
    v60 = v58;
    v89 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
    v61 = sub_261CFCB24();
    *(v57 + v59) = v61;
    v99 = *(v60 + 28);
    v100 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D0, &unk_261D10E40);
    sub_261CFF9B4();
    sub_261CFD874();
    v82 = *MEMORY[0x277CC9110];
    v62 = v94;
    v93 = *(v93 + 104);
    v63 = v95;
    (v93)(v95);
    v64 = v90;
    sub_261CFD6B4();
    v65 = MEMORY[0x2667199E0](v64, &type metadata for UpdateGroupNameAppIntent);
    *(v57 + v99) = v65;
    v66 = v89;
    v99 = *(v89 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D8, &unk_261D05530);
    sub_261CFF9B4();
    sub_261CFD874();
    (v93)(v63, v82, v62);
    sub_261CFD6B4();
    v67 = MEMORY[0x2667199F0](v64, &type metadata for UpdateListShowsCompletedAppIntent);
    *(v57 + v99) = v67;
    v68 = *(v66 + 36);
    *(v57 + v68) = 0;
    v69 = v66;
    v70 = v57 + *(v66 + 20);
    v71 = v57;
    v72 = v98;
    sub_261B7C0F0(v98, v70);
    v73 = type metadata accessor for AnyListEntityLazyImage();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    v76 = swift_allocObject();
    v102 = MEMORY[0x277D84F90];
    sub_261C23538(&qword_280D22D90, MEMORY[0x277D44D10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
    sub_261B7C19C();
    sub_261D001D4();
    v77 = sub_261CFECB4();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    *(v76 + 128) = sub_261CFECA4();
    v80 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
    v81 = sub_261CFD074();
    (*(*(v81 - 8) + 56))(v76 + v80, 1, 1, v81);
    *(v76 + 105) = 0u;
    *(v76 + 80) = 0u;
    *(v76 + 96) = 0u;
    *(v76 + 48) = 0u;
    *(v76 + 64) = 0u;
    *(v76 + 16) = 0u;
    *(v76 + 32) = 0u;
    *(v76 + 121) = 3;
    *(v71 + *(v69 + 40)) = v76;
    LOBYTE(v102) = v83 & 1;
    sub_261CFD2E4();
    *(v71 + v68) = v52;
    v102 = v84;
    v103 = v85;
    sub_261CFD104();
    sub_261CFCA14();
    v102 = v52;
    sub_261CFCA14();

    sub_261B7C200(v72);
    sub_261B7C200(v86);
    return (*(*(v69 - 8) + 56))(v71, 0, 1, v69);
  }

  v49 = v102 & 0xFFFFFFFFFFFFFF8;
  if (v102 >> 62)
  {
    v50 = sub_261D00274();
    if (v50)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

  v50 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v50)
  {
LABEL_34:
    v52 = MEMORY[0x277D84F90];
LABEL_35:

    goto LABEL_36;
  }

LABEL_14:
  v51 = 0;
  a2 = (v99 + 48);
  v52 = MEMORY[0x277D84F90];
  v89 = v49;
  while ((v48 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26671CA10](v51, v48);
    v54 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_30;
    }

LABEL_20:
    ListEntity.init(representation:)();
    if ((*a2)(v21, 1, v101) == 1)
    {
      sub_261AE6A40(v21, &unk_27FEDE0C0, &unk_261D02500);
    }

    else
    {
      sub_261C23488(v21, v100, type metadata accessor for ListEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_261B419E8(0, v52[2] + 1, 1, v52);
      }

      v56 = v52[2];
      v55 = v52[3];
      if (v56 >= v55 >> 1)
      {
        v52 = sub_261B419E8(v55 > 1, v56 + 1, 1, v52);
      }

      v52[2] = v56 + 1;
      sub_261C23488(v100, v52 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v56, type metadata accessor for ListEntity);
      v49 = v89;
    }

    ++v51;
    if (v54 == v50)
    {
      goto LABEL_35;
    }
  }

  if (v51 >= *(v49 + 16))
  {
    goto LABEL_31;
  }

  v53 = *(v48 + 8 * v51 + 32);
  sub_261CFCDA4();
  v54 = v51 + 1;
  if (!__OFADD__(v51, 1))
  {
    goto LABEL_20;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_8:
  v41 = sub_261CFF7A4();
  __swift_project_value_buffer(v41, qword_27FEDCBE8);
  v42 = sub_261CFF784();
  v43 = sub_261CFFE64();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_261AE2000, v42, v43, "Unable to convert representation to GroupEntity", v44, 2u);
    MEMORY[0x26671D560](v44, -1, -1);
  }

  v45 = type metadata accessor for GroupEntity();
  return (*(*(v45 - 8) + 56))(a2, 1, 1, v45);
}

uint64_t sub_261C23488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C23538(unint64_t *a1, void (*a2)(uint64_t))
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

RemindersAppIntents::PrefetchStrategyRepresentation::Identifiers_optional __swiftcall PrefetchStrategyRepresentation.Identifiers.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PrefetchStrategyRepresentation.Identifiers.rawValue.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_261C2364C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "PrefetchStrategy.all";
  v4 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v2 == 1)
  {
    v6 = "PrefetchStrategy.all";
  }

  else
  {
    v6 = "PrefetchStrategy.initial";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "nder";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000020;
    v3 = "PrefetchStrategy.initial";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "nder";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261D00614();
  }

  return v11 & 1;
}

uint64_t sub_261C23724()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C237C0()
{
  *v0;
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261C23848()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261C238EC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "PrefetchStrategy.all";
  v4 = 0xD000000000000018;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000020;
    v3 = "PrefetchStrategy.initial";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "nder";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t PrefetchStrategyRepresentation.entitySpecification.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB398, &qword_261D05CE0);
    v5 = *(sub_261CFEBA4() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_261D03450;
    sub_261C23C04();
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB398, &qword_261D05CE0);
    v2 = *(sub_261CFEBA4() - 8);
    v3 = *(v2 + 72);
    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_261D03450;
    sub_261C23B5C();
LABEL_5:
    sub_261CFEB94();
    sub_261C23BB0();
    sub_261CFEB34();
  }

  sub_261C23BB0();
  return sub_261CFEB34();
}

unint64_t sub_261C23B5C()
{
  result = qword_27FEDCC08;
  if (!qword_27FEDCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC08);
  }

  return result;
}

unint64_t sub_261C23BB0()
{
  result = qword_27FEDCC10;
  if (!qword_27FEDCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC10);
  }

  return result;
}

unint64_t sub_261C23C04()
{
  result = qword_27FEDCC18;
  if (!qword_27FEDCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC18);
  }

  return result;
}

uint64_t static PrefetchStrategyRepresentation.from(_:context:)@<X0>(uint64_t a1@<X8>)
{
  sub_261CFEB44();
  __swift_project_boxed_opaque_existential_1(&v8, v10);
  sub_261CFEAA4();
  v2 = sub_261D00554();

  result = __swift_destroy_boxed_opaque_existential_0(&v8);
  if (v2 == 2)
  {
    result = sub_261CFEB54();
    if (v9)
    {
      v6 = 0;
    }

    else
    {
      v6 = v8;
    }

    if (v9)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    *a1 = v6;
    *(a1 + 8) = v7;
  }

  else
  {
    if (v2 == 1)
    {
      result = sub_261CFEB54();
      v4 = v9 << 31 >> 31;
      v5 = v8;
      if (v9)
      {
        v5 = 0;
      }

      *a1 = v5;
    }

    else
    {
      *a1 = 0;
      if (v2)
      {
        LOBYTE(v4) = -1;
      }

      else
      {
        LOBYTE(v4) = 2;
      }
    }

    *(a1 + 8) = v4;
  }

  return result;
}

unint64_t sub_261C23DA4()
{
  result = qword_27FEDCC20;
  if (!qword_27FEDCC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC20);
  }

  return result;
}

unint64_t sub_261C23DFC()
{
  result = qword_27FEDCC28;
  if (!qword_27FEDCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC28);
  }

  return result;
}

unint64_t sub_261C23E54()
{
  result = qword_27FEDCC30;
  if (!qword_27FEDCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC30);
  }

  return result;
}

unint64_t sub_261C23EB4()
{
  result = qword_27FEDCC38;
  if (!qword_27FEDCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC38);
  }

  return result;
}

uint64_t sub_261C23F08(uint64_t a1)
{
  v2 = sub_261C24184();

  return MEMORY[0x28213DA70](a1, v2);
}

uint64_t sub_261C23F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C24184();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_261C23F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C24184();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

unint64_t sub_261C23FF4()
{
  result = qword_27FEDCC40;
  if (!qword_27FEDCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC40);
  }

  return result;
}

uint64_t sub_261C24048(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C24184();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

unint64_t sub_261C240D8()
{
  result = qword_27FEDCC48;
  if (!qword_27FEDCC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC48);
  }

  return result;
}

unint64_t sub_261C24130()
{
  result = qword_27FEDCC50;
  if (!qword_27FEDCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC50);
  }

  return result;
}

unint64_t sub_261C24184()
{
  result = qword_27FEDCC58[0];
  if (!qword_27FEDCC58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEDCC58);
  }

  return result;
}

uint64_t static TypedAppIntentRepresentable.actionIdentifier.getter()
{
  swift_getAssociatedTypeWitness();
  v0 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_261CFD1C4();
}

uint64_t static TypedAppEnumRepresentable.enumIdentifier.getter()
{
  swift_getAssociatedTypeWitness();
  v0 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  return sub_261CFD1C4();
}

uint64_t TypedAppEntityRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_261CFEA34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_261CFEA94();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t static TypedAppEntityRepresentation.typeIdentifier.getter()
{
  v1 = *(*(*(v0 + class metadata base offset for TypedAppEntityRepresentation + 8) + 8) + 8);
  v2 = *(v0 + class metadata base offset for TypedAppEntityRepresentation);
  return sub_261CFD1C4();
}

uint64_t TypedAppEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return TypedAppEntityRepresentation.init(_:)(a1);
}

uint64_t TypedAppEntityRepresentation.__deallocating_deinit()
{
  _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_261C24568(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_261C245C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_261C24640(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_261C246A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFEA54();
  *a1 = result;
  return result;
}

uint64_t static TypedAppEntityRepresentation.proxy(appEntityID:)()
{
  v0 = AppEntityID.entityIdentifierString.getter();
  v2 = static TypedAppEntityRepresentation.proxy(entityIdentifierString:)(v0, v1);

  return v2;
}

uint64_t static TypedAppEntityRepresentation.proxy(entityIdentifierString:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + class metadata base offset for TypedAppEntityRepresentation);
  v6 = *(v2 + class metadata base offset for TypedAppEntityRepresentation + 8);
  type metadata accessor for TypedAppEntityRepresentation();
  sub_261CFD104();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213D928](a1, a2, v2, WitnessTable);
}

uint64_t static TypedTransientAppEntityRepresentable.typeIdentifier.getter()
{
  swift_getAssociatedTypeWitness();
  v0 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  return sub_261CFD1C4();
}

uint64_t sub_261C249DC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCCE0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCCE0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C24E74()
{
  v240 = v0;
  v239[6] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 144);

  v4 = *(v3 + 24);
  sub_261CFCBB4();
  v5 = sub_261B9A654(*(v0 + 104), 1);
  v7 = v6;

  v8 = sub_261B9C33C(3, v5, v7);

  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = *(v0 + 344);
    v12 = *(v0 + 312);
    v230 = *(v0 + 288);
    v234 = *(v0 + 336);
    v211 = *(v0 + 272);
    v13 = *(v0 + 200);
    v239[0] = MEMORY[0x277D84F90];
    sub_261B39FC4(0, v9, 0);
    v14 = v239[0];
    v15 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v220 = (v13 + 56);
    v225 = *(v12 + 72);
    v216 = v11;
    do
    {
      v17 = *(v0 + 320);
      v16 = *(v0 + 328);
      v18 = *(v0 + 304);
      sub_261C26488(v15, v16, _s20CategorizedRemindersV12EditableItemOMa);
      sub_261C26488(v16, v17, _s20CategorizedRemindersV12EditableItemOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v20 = *(v0 + 352);
      v22 = *(v0 + 320);
      v21 = *(v0 + 328);
      v23 = *(v0 + 192);
      if (EnumCaseMultiPayload == 1)
      {
        v24 = *(v0 + 280);
        sub_261C267C4(*(v0 + 320), v24, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        v25 = v14;
        v26 = *(v234 + 48);
        v27 = *(v24 + *(v230 + 20));
        *v20 = v27;
        v28 = *(v24 + *(v211 + 20));
        v29 = v27;
        v30 = [v28 date];
        sub_261CFD7C4();

        sub_261C2682C(v21, _s20CategorizedRemindersV12EditableItemOMa);
        sub_261C2682C(v24, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        v31 = &v20[v26];
        v14 = v25;
        v11 = v216;
        (*v220)(v31, 0, 1, v23);
      }

      else
      {
        v32 = *(v0 + 296);
        sub_261C2682C(*(v0 + 328), _s20CategorizedRemindersV12EditableItemOMa);
        sub_261C267C4(v22, v32, _s20CategorizedRemindersV15FetchedReminderVMa);
        v33 = *(v234 + 48);
        v34 = *(v32 + *(v230 + 20));
        sub_261C2682C(v32, _s20CategorizedRemindersV15FetchedReminderVMa);
        *v20 = v34;
        (*v220)(&v20[v33], 1, 1, v23);
      }

      v239[0] = v14;
      v36 = *(v14 + 16);
      v35 = *(v14 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_261B39FC4(v35 > 1, v36 + 1, 1);
        v14 = v239[0];
      }

      v37 = *(v0 + 352);
      *(v14 + 16) = v36 + 1;
      sub_261BB4448(v37, v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v36, &qword_27FEDA620, &qword_261D031E0);
      v15 += v225;
      --v9;
    }

    while (v9);

    v38 = v14;
    v10 = MEMORY[0x277D84F90];
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
  }

  v39 = *(v0 + 344);
  v193 = *(v0 + 336);
  v40 = *(v0 + 200);
  v189 = *(v0 + 168);
  v198 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v198 setSaveIsNoopIfNoChangedKeys_];
  v41 = 0;
  v186 = v39;
  v187 = v38;
  v42 = *(v38 + 16);
  v194 = (v39 + 48);
  v196 = (v39 + 56);
  v226 = (v40 + 48);
  v191 = (v40 + 16);
  v192 = (v40 + 32);
  v190 = (v40 + 8);
  v185 = v40;
  *(&v43 + 1) = 3;
  *&v43 = 136315138;
  v184 = v43;
  v44 = v10;
  v188 = v42;
  if (!v42)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v41 >= *(v187 + 16))
  {
    __break(1u);
LABEL_79:
    __break(1u);
  }

  sub_261AFB668(v187 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v41, *(v0 + 360), &qword_27FEDA620, &qword_261D031E0);
  v45 = 0;
  for (i = v41 + 1; ; i = v42)
  {
    v47 = *(v0 + 360);
    v48 = *(v0 + 368);
    v49 = *(v0 + 336);
    (*v196)(v47, v45, 1, v49);
    sub_261BB4448(v47, v48, &qword_27FEDCCF8, &qword_261D0C3D8);
    if ((*v194)(v48, 1, v49) == 1)
    {
      break;
    }

    v217 = v44;
    v50 = *(v0 + 368);
    v51 = *v50;
    sub_261BB4448(v50 + *(v193 + 48), *(v0 + 264), &qword_27FEDAB68, &unk_261D11C90);
    if (qword_27FED9B88 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 392);
    v52 = *(v0 + 400);
    v55 = *(v0 + 376);
    v54 = *(v0 + 384);
    v56 = sub_261CFF7A4();
    __swift_project_value_buffer(v56, qword_27FEDCCE0);
    v57 = v51;
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    v58 = sub_261CFF784();
    v59 = sub_261CFFE84();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 392);
    v62 = *(v0 + 400);
    v63 = *(v0 + 376);
    v64 = *(v0 + 384);
    v235 = v57;
    v201 = i;
    if (v60)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138543618;
      v67 = [v235 objectID];
      *(v65 + 4) = v67;
      *v66 = v67;
      *(v65 + 12) = 1026;
      sub_261CFCBB4();
      *(v65 + 14) = *(v0 + 419);

      _os_log_impl(&dword_261AE2000, v58, v59, "[CompleteReminderAppIntent] Complete reminder with id: %{public}@, completeSubtasks: %{BOOL,public}d", v65, 0x12u);
      sub_261AE6A40(v66, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v66, -1, -1);
      v68 = v65;
      v57 = v235;
      MEMORY[0x26671D560](v68, -1, -1);
    }

    else
    {
    }

    v69 = *(v0 + 256);
    v70 = *(v0 + 192);
    sub_261AFB668(*(v0 + 264), v69, &qword_27FEDAB68, &unk_261D11C90);
    v212 = *v226;
    if ((*v226)(v69, 1, v70) == 1)
    {
      sub_261AE6A40(*(v0 + 256), &qword_27FEDAB68, &unk_261D11C90);
    }

    else
    {
      v72 = *(v0 + 232);
      v71 = *(v0 + 240);
      v73 = *(v0 + 192);
      (*v192)(v71, *(v0 + 256), v73);
      (*v191)(v72, v71, v73);
      v74 = sub_261CFF784();
      v75 = sub_261CFFE84();
      v76 = os_log_type_enabled(v74, v75);
      v77 = *(v0 + 232);
      v78 = *(v0 + 240);
      v79 = *(v0 + 192);
      if (v76)
      {
        v80 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        v239[0] = v231;
        *v80 = v184;
        sub_261C2677C(&qword_27FEDA198, MEMORY[0x277CC9578]);
        v81 = sub_261D005F4();
        v83 = v82;
        v84 = *v190;
        (*v190)(v77, v79);
        v85 = sub_261B879C8(v81, v83, v239);

        *(v80 + 4) = v85;
        _os_log_impl(&dword_261AE2000, v74, v75, "[CompleteReminderAppIntent] afterDateForAdvancingForwardRecurrence: %s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v231);
        MEMORY[0x26671D560](v231, -1, -1);
        v86 = v80;
        v57 = v235;
        MEMORY[0x26671D560](v86, -1, -1);

        v84(v78, v79);
      }

      else
      {

        v87 = *v190;
        (*v190)(v77, v79);
        v87(v78, v79);
      }
    }

    v88 = MEMORY[0x277D84F90];
    v89 = *(v0 + 392);
    sub_261CFCBB4();
    if (*(v0 + 416) == 1)
    {
      v90 = [v57 subtaskContext];
      if (v90)
      {
        v91 = v90;
        v92 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
        *(v0 + 128) = 0;
        v93 = [v91 fetchRemindersWithFetchOptions:v92 error:v0 + 128];

        v94 = *(v0 + 128);
        if (!v93)
        {
          v182 = *(v0 + 264);
          v183 = v94;
          sub_261CFD654();

          swift_willThrow();
          sub_261AE6A40(v182, &qword_27FEDAB68, &unk_261D11C90);

LABEL_69:

LABEL_70:
          v160 = *(v0 + 360);
          v159 = *(v0 + 368);
          v161 = *(v0 + 352);
          v163 = *(v0 + 320);
          v162 = *(v0 + 328);
          v164 = *(v0 + 296);
          v165 = *(v0 + 280);
          v167 = *(v0 + 256);
          v166 = *(v0 + 264);
          v168 = *(v0 + 248);
          v205 = *(v0 + 240);
          v209 = *(v0 + 232);
          v214 = *(v0 + 224);
          v218 = *(v0 + 216);
          v223 = *(v0 + 184);
          v227 = *(v0 + 176);
          v232 = *(v0 + 160);
          v237 = *(v0 + 152);

          v169 = *(v0 + 8);
          v170 = *MEMORY[0x277D85DE8];
          goto LABEL_71;
        }

        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        sub_261CFFC64();
        v95 = v94;
      }
    }

    v96 = [v57 parentReminder];
    if (v96)
    {
      v97 = v96;
      v98 = v88;
      v99 = v198;
      v207 = [v198 updateReminder_];
    }

    else
    {
      v98 = v88;
      v207 = 0;
      v99 = v198;
    }

    v101 = *(v0 + 384);
    v100 = *(v0 + 392);
    v102 = sub_261CFDFF4();
    v103 = *(v102 + 48);
    v104 = *(v102 + 52);
    swift_allocObject();
    sub_261CFDFD4();
    sub_261CFE144();
    memset(v239, 0, 40);
    v105 = v235;
    v221 = v99;
    sub_261CFE134();
    sub_261CFCBB4();
    v106 = *(v0 + 417);
    v107 = v98;
    sub_261CFCDA4();
    sub_261CFE114();

    sub_261CFCBB4();
    v203 = v105;
    if (*(v0 + 418) == 1)
    {
      v108 = sub_261CFDFE4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_261D030F0;
      *(inited + 32) = [v105 objectID];
      if ((v108 & 0xC000000000000001) != 0)
      {
        if (v108 >= 0)
        {
          v108 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v110 = sub_261D00274();
        v108 = sub_261B558DC(v108, v110);
      }

      v111 = sub_261B55ABC(inited, v108);
      swift_setDeallocating();
      v112 = *(inited + 16);
      swift_arrayDestroy();
      v113 = v221;
      sub_261C26508(v111, v113);
      v115 = v114;
    }

    else
    {
      v115 = 0;
    }

    v116 = *(v0 + 248);
    v117 = *(v0 + 192);
    sub_261AFB668(*(v0 + 264), v116, &qword_27FEDAB68, &unk_261D11C90);
    v118 = v212(v116, 1, v117);
    v119 = *(v0 + 248);
    if (v118 == 1)
    {
      sub_261AE6A40(v119, &qword_27FEDAB68, &unk_261D11C90);
    }

    else
    {
      v121 = *(v0 + 216);
      v120 = *(v0 + 224);
      v122 = *(v0 + 208);
      v123 = *(v0 + 192);
      v124 = *(v185 + 32);
      v124(v120, v119, v123);
      (*(v185 + 16))(v121, v120, v123);
      v125 = (*(v185 + 80) + 16) & ~*(v185 + 80);
      v126 = swift_allocObject();
      v127 = v126 + v125;
      v128 = MEMORY[0x277D84F90];
      v124(v127, v121, v123);
      *(v0 + 48) = sub_261B5765C;
      *(v0 + 56) = v126;
      v107 = v128;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_261B556E0;
      *(v0 + 40) = &block_descriptor_1;
      v129 = _Block_copy((v0 + 16));
      v130 = *(v0 + 56);

      _Block_release(v129);
      (*(v185 + 8))(v120, v123);
    }

    v131 = *(v0 + 160);
    v132 = sub_261CFDF94();
    v133 = type metadata accessor for RecurrentInstanceSpecifier(0);
    (*(*(v133 - 8) + 56))(v131, 1, 1, v133);
    v236 = v207;
    v134 = [v132 listChangeItem];
    if (!v134 || (v135 = v134, v136 = [v134 storage], v135, !v136))
    {
      v156 = *(v0 + 264);
      v157 = *(v0 + 160);

      sub_261B01D70();
      swift_allocError();
      *v158 = 11;
      swift_willThrow();

      sub_261AE6A40(v157, &qword_27FEDA108, &unk_261D020C0);
      sub_261AE6A40(v156, &qword_27FEDAB68, &unk_261D11C90);
      goto LABEL_69;
    }

    v137 = [v132 storage];
    v138 = [v132 accountCapabilities];
    if (v207)
    {
      v199 = [v236 storage];
    }

    else
    {
      v199 = 0;
    }

    v213 = v136;
    v208 = v132;
    v222 = v138;
    if (!v115)
    {
      v146 = v137;
      v145 = 0;
      goto LABEL_62;
    }

    if (v115 >> 62)
    {
      v139 = sub_261D00274();
      if (v139)
      {
LABEL_51:
        v239[0] = v107;
        sub_261D003A4();
        if (v139 < 0)
        {
          goto LABEL_79;
        }

        v140 = 0;
        do
        {
          if ((v115 & 0xC000000000000001) != 0)
          {
            v141 = MEMORY[0x26671CA10](v140, v115);
          }

          else
          {
            v141 = *(v115 + 8 * v140 + 32);
          }

          v142 = v141;
          ++v140;
          v143 = [v141 storage];

          sub_261D00374();
          v144 = *(v239[0] + 16);
          sub_261D003B4();
          sub_261D003C4();
          sub_261D00384();
        }

        while (v139 != v140);

        v145 = v239[0];
        goto LABEL_61;
      }
    }

    else
    {
      v139 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v139)
      {
        goto LABEL_51;
      }
    }

    v145 = v107;
LABEL_61:
    v146 = v137;
LABEL_62:
    v44 = v217;
    v148 = *(v0 + 176);
    v147 = *(v0 + 184);
    v149 = *(v0 + 152);
    v150 = *(v0 + 160);
    sub_261AFB668(v150, v149, &qword_27FEDA108, &unk_261D020C0);
    sub_261C7EDC4(v146, v213, v222, v199, v145, v149, v147);

    sub_261AE6A40(v150, &qword_27FEDA108, &unk_261D020C0);
    sub_261C26488(v147, v148, type metadata accessor for ReminderEntity);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_261B41560(0, v217[2] + 1, 1, v217);
    }

    v42 = v188;
    v41 = v201;
    v152 = v44[2];
    v151 = v44[3];
    if (v152 >= v151 >> 1)
    {
      v44 = sub_261B41560(v151 > 1, v152 + 1, 1, v44);
    }

    v153 = *(v0 + 264);
    v155 = *(v0 + 176);
    v154 = *(v0 + 184);

    sub_261C2682C(v154, type metadata accessor for ReminderEntity);
    sub_261AE6A40(v153, &qword_27FEDAB68, &unk_261D11C90);
    v44[2] = v152 + 1;
    sub_261C267C4(v155, v44 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v152, type metadata accessor for ReminderEntity);
    if (v201 != v188)
    {
      goto LABEL_12;
    }

LABEL_14:
    v45 = 1;
  }

  *(v0 + 112) = 0;
  v172 = [v198 saveSynchronouslyWithError_];
  v173 = *(v0 + 112);
  if (!v172)
  {
    v181 = v173;

    sub_261CFD654();

    swift_willThrow();
    goto LABEL_70;
  }

  v174 = *(v0 + 360);
  v175 = *(v0 + 368);
  v176 = *(v0 + 352);
  v177 = *(v0 + 328);
  v195 = *(v0 + 320);
  v197 = *(v0 + 296);
  v200 = *(v0 + 280);
  v202 = *(v0 + 264);
  v204 = *(v0 + 256);
  v206 = *(v0 + 248);
  v210 = *(v0 + 240);
  v215 = *(v0 + 232);
  v219 = *(v0 + 224);
  v224 = *(v0 + 216);
  v228 = *(v0 + 184);
  v229 = *(v0 + 176);
  v233 = *(v0 + 160);
  v238 = *(v0 + 152);
  v178 = *(v0 + 136);
  *(v0 + 120) = v44;
  v179 = v173;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261CFC994();

  v169 = *(v0 + 8);
  v180 = *MEMORY[0x277D85DE8];
LABEL_71:

  return v169();
}

uint64_t sub_261C263DC(uint64_t a1, _OWORD *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261C26488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_261CFCDA4();
}

void sub_261C26508(uint64_t a1, void *a2)
{
  v2 = a1;
  v24 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_261D00234();
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    sub_261B3B918();
    sub_261CFFDA4();
    v2 = v19;
    v3 = v20;
    v5 = v21;
    v4 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    sub_261CFD104();
    v4 = 0;
  }

LABEL_7:
  v10 = v4;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_261D002A4() || (sub_261B05020(0, &qword_280D21DF0, 0x277D44700), swift_dynamicCast(), v14 = v18, v4 = v10, v6 = v11, !v18))
      {
LABEL_21:
        sub_261B57B30();
        return;
      }

      goto LABEL_17;
    }

    v12 = v10;
    v13 = v11;
    v4 = v10;
    if (!v11)
    {
      break;
    }

LABEL_13:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_17:
    v15 = [a2 _trackedReminderChangeItemForObjectID_];

    v10 = v4;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x26671C310]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_261CFFC84();
      }

      sub_261CFFCB4();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v13 = *(v3 + 8 * v4);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_261C2677C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261C267C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C2682C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MoveRemindersToListAppIntentRepresentation.reminders.getter()
{
  v1 = *v0;
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C268C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*MoveRemindersToListAppIntentRepresentation.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C26A28(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t MoveRemindersToListAppIntentRepresentation.position.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFEC34();
}

uint64_t (*MoveRemindersToListAppIntentRepresentation.position.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t MoveRemindersToListAppIntentRepresentation.targetList.getter()
{
  v1 = *(v0 + 16);
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C26BA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t MoveRemindersToListAppIntentRepresentation.targetList.setter()
{
  v1 = *(v0 + 16);
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*MoveRemindersToListAppIntentRepresentation.targetList.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t MoveRemindersToListAppIntentRepresentation.init(reminders:position:targetList:)@<X0>(char *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD00, &qword_261D0C400);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *a2 = sub_261CFEC04();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD08, &qword_261D0C408);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  a2[1] = sub_261CFEC04();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  a2[2] = sub_261CFEC04();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
}

unint64_t sub_261C26E30(uint64_t a1)
{
  result = sub_261C26E58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C26E58()
{
  result = qword_27FEDCD10;
  if (!qword_27FEDCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD10);
  }

  return result;
}

uint64_t MoveRemindersToParentReminderAppIntentRepresentation.reminders.getter()
{
  v1 = *v0;
  sub_261CFEC24();
  return v3;
}

uint64_t (*MoveRemindersToParentReminderAppIntentRepresentation.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t MoveRemindersToParentReminderAppIntentRepresentation.position.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFEC34();
}

uint64_t (*MoveRemindersToParentReminderAppIntentRepresentation.position.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t MoveRemindersToParentReminderAppIntentRepresentation.parentReminder.getter()
{
  v1 = *(v0 + 16);
  sub_261CFEC24();
  return v3;
}

uint64_t MoveRemindersToParentReminderAppIntentRepresentation.parentReminder.setter()
{
  v1 = *(v0 + 16);
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*MoveRemindersToParentReminderAppIntentRepresentation.parentReminder.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t MoveRemindersToParentReminderAppIntentRepresentation.init(reminders:position:parentReminder:)@<X0>(char *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD00, &qword_261D0C400);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *a2 = sub_261CFEC04();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD08, &qword_261D0C408);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  a2[1] = sub_261CFEC04();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD18, &qword_261D0C4B0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  a2[2] = sub_261CFEC04();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
}

unint64_t sub_261C27334(uint64_t a1)
{
  result = sub_261C2735C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C2735C()
{
  result = qword_27FEDCD20;
  if (!qword_27FEDCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD20);
  }

  return result;
}

unint64_t sub_261C273F4()
{
  result = qword_27FEDCD28;
  if (!qword_27FEDCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD28);
  }

  return result;
}

uint64_t sub_261C2744C()
{
  sub_261CFFB14();
}

uint64_t sub_261C275DC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCD30);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCD30);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::SortingStyleRepresentation_optional __swiftcall SortingStyleRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SortingStyleRepresentation.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x637341656C746974;
    if (v1 != 8)
    {
      v6 = 0x736544656C746974;
    }

    if (v1 == 7)
    {
      v6 = 0xD000000000000017;
    }

    v7 = 0xD000000000000014;
    if (v1 != 5)
    {
      v7 = 0xD000000000000017;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x746C7561666564;
    v3 = 0xD000000000000016;
    v4 = 0xD000000000000016;
    if (v1 != 3)
    {
      v4 = 0xD000000000000013;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6C61756E616DLL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_261C27868()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261C2744C();
  return sub_261D006F4();
}

uint64_t sub_261C278CC()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261C2744C();
  return sub_261D006F4();
}

uint64_t sub_261C2791C@<X0>(uint64_t *a1@<X8>)
{
  result = SortingStyleRepresentation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261C27988(uint64_t a1)
{
  v2 = sub_261C27F64();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C279C4(uint64_t a1)
{
  v2 = sub_261C27F64();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C27A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C27E38();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C27A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C27F64();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C27AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C27E38();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_261C27D88()
{
  result = qword_27FEDCD48;
  if (!qword_27FEDCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD48);
  }

  return result;
}

unint64_t sub_261C27DE0()
{
  result = qword_27FEDCD50;
  if (!qword_27FEDCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD50);
  }

  return result;
}

unint64_t sub_261C27E38()
{
  result = qword_27FEDCD58;
  if (!qword_27FEDCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD58);
  }

  return result;
}

unint64_t sub_261C27E90()
{
  result = qword_27FEDCD60;
  if (!qword_27FEDCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD60);
  }

  return result;
}

unint64_t sub_261C27EE8()
{
  result = qword_27FEDCD68;
  if (!qword_27FEDCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD68);
  }

  return result;
}

unint64_t sub_261C27F3C(uint64_t a1)
{
  result = sub_261C27F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C27F64()
{
  result = qword_27FEDCD70;
  if (!qword_27FEDCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD70);
  }

  return result;
}

unint64_t sub_261C27FBC()
{
  result = qword_27FEDCD78;
  if (!qword_27FEDCD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDCD80, &qword_261D0C670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD78);
  }

  return result;
}

unint64_t sub_261C28020()
{
  result = qword_27FEDCD88;
  if (!qword_27FEDCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD88);
  }

  return result;
}

unint64_t sub_261C28078()
{
  result = qword_27FEDCD90;
  if (!qword_27FEDCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD90);
  }

  return result;
}

unint64_t sub_261C280D0()
{
  result = qword_27FEDCD98;
  if (!qword_27FEDCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD98);
  }

  return result;
}

uint64_t sub_261C2813C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCDA0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCDA0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_261C283EC()
{
  result = qword_27FEDCDB8;
  if (!qword_27FEDCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDB8);
  }

  return result;
}

uint64_t sub_261C28440()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCDC0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCDC0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::AddOrRemoveTagsOperationRepresentation_optional __swiftcall AddOrRemoveTagsOperationRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AddOrRemoveTagsOperationRepresentation.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65766F6D6572;
  }

  else
  {
    result = 6579297;
  }

  *v0;
  return result;
}

uint64_t sub_261C285A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65766F6D6572;
  }

  else
  {
    v4 = 6579297;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x65766F6D6572;
  }

  else
  {
    v6 = 6579297;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261D00614();
  }

  return v9 & 1;
}

uint64_t sub_261C28644()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C286BC()
{
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261C28720()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C28794@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261D00554();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_261C287F4(uint64_t *a1@<X8>)
{
  v2 = 6579297;
  if (*v1)
  {
    v2 = 0x65766F6D6572;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261C2886C(uint64_t a1)
{
  v2 = sub_261C28D88();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C288A8(uint64_t a1)
{
  v2 = sub_261C28D88();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C288E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C28C08();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C28930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C28D88();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C28994(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C28C08();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_261C28B58()
{
  result = qword_27FEDCDD8;
  if (!qword_27FEDCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDD8);
  }

  return result;
}

unint64_t sub_261C28BB0()
{
  result = qword_27FEDCDE0;
  if (!qword_27FEDCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDE0);
  }

  return result;
}

unint64_t sub_261C28C08()
{
  result = qword_27FEDCDE8;
  if (!qword_27FEDCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDE8);
  }

  return result;
}

unint64_t sub_261C28C60()
{
  result = qword_27FEDCDF0;
  if (!qword_27FEDCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDF0);
  }

  return result;
}

unint64_t sub_261C28CB8()
{
  result = qword_27FEDCDF8;
  if (!qword_27FEDCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDF8);
  }

  return result;
}

unint64_t sub_261C28D0C()
{
  result = qword_27FEDCE00;
  if (!qword_27FEDCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE00);
  }

  return result;
}

unint64_t sub_261C28D60(uint64_t a1)
{
  result = sub_261C28D88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C28D88()
{
  result = qword_27FEDCE08;
  if (!qword_27FEDCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE08);
  }

  return result;
}

unint64_t sub_261C28DE0()
{
  result = qword_27FEDCE10;
  if (!qword_27FEDCE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDCE18, &qword_261D0C930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE10);
  }

  return result;
}

unint64_t sub_261C28E44()
{
  result = qword_27FEDCE20;
  if (!qword_27FEDCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE20);
  }

  return result;
}

unint64_t sub_261C28E9C()
{
  result = qword_27FEDCE28;
  if (!qword_27FEDCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE28);
  }

  return result;
}

unint64_t sub_261C28EF4()
{
  result = qword_27FEDCE30;
  if (!qword_27FEDCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE30);
  }

  return result;
}

unint64_t sub_261C28F58()
{
  result = qword_27FEDCE38;
  if (!qword_27FEDCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE38);
  }

  return result;
}

uint64_t GroupEntityRepresentation.name.getter()
{
  v1 = *(v0 + qword_27FEDCE40);
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v3;
}

uint64_t GroupEntityRepresentation.showsCompleted.getter()
{
  v1 = *(v0 + qword_27FEDCE48);
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v3;
}

double sub_261C29058@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + qword_27FEDCE40);
  sub_261CFCDA4();
  sub_261CFEBD4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261C290B0(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + qword_27FEDCE40);
  v4 = *a1;
  v5 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t GroupEntityRepresentation.name.setter()
{
  v1 = *(v0 + qword_27FEDCE40);
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*GroupEntityRepresentation.name.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDCE40);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C291EC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + qword_27FEDCE48);
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a2 = v5;
  return result;
}

uint64_t sub_261C29244(char *a1, void *a2)
{
  v2 = *(*a2 + qword_27FEDCE48);
  v4 = *a1;
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t GroupEntityRepresentation.showsCompleted.setter()
{
  v1 = *(v0 + qword_27FEDCE48);
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*GroupEntityRepresentation.showsCompleted.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDCE48);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C29388(void *a1)
{
  v2 = *(v1 + *a1);
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v4;
}

uint64_t (*GroupEntityRepresentation.childrenLists.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDCE58);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

uint64_t sub_261C29474@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = *(*a1 + *a2);
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a3 = v6;
  return result;
}

uint64_t sub_261C294C8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  v7 = *a1;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t sub_261C29528(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*GroupEntityRepresentation.lists.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDCE50);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t GroupEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return GroupEntityRepresentation.init(_:)(a1);
}

uint64_t GroupEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = qword_27FEDCE40;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA58, &qword_261D0B6D0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + v11) = sub_261CFEBB4();
  v15 = qword_27FEDCE48;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBD0, &qword_261D0DBE0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v15) = sub_261CFEBB4();
  v19 = qword_27FEDCE58;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCE60, &qword_261D0CAB0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v1 + v19) = sub_261CFEBB4();
  v23 = qword_27FEDCE50;
  v24 = *(v20 + 48);
  v25 = *(v20 + 52);
  swift_allocObject();
  *(v1 + v23) = sub_261CFEBB4();
  v26 = v4[2];
  v26(v10, a1, v3);
  v26(v8, v10, v3);
  v27 = sub_261CFEA94();
  v28 = v4[1];
  v28(a1, v3);
  v28(v10, v3);
  return v27;
}

uint64_t sub_261C29880()
{
  v1 = *(v0 + qword_27FEDCE40);

  v2 = *(v0 + qword_27FEDCE48);

  v3 = *(v0 + qword_27FEDCE58);

  v4 = *(v0 + qword_27FEDCE50);
}

uint64_t GroupEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  v1 = *(v0 + qword_27FEDCE40);

  v2 = *(v0 + qword_27FEDCE48);

  v3 = *(v0 + qword_27FEDCE58);

  v4 = *(v0 + qword_27FEDCE50);

  return v0;
}

uint64_t GroupEntityRepresentation.__deallocating_deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  v1 = *(v0 + qword_27FEDCE40);
  sub_261CFCDA4();

  v2 = *(v0 + qword_27FEDCE48);

  v3 = *(v0 + qword_27FEDCE58);

  v4 = *(v0 + qword_27FEDCE50);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GroupEntityRepresentation()
{
  result = qword_27FEDCE68;
  if (!qword_27FEDCE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261C29A88()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C29B90()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t SmartListTypeRepresentation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7961646F74;
  v3 = 0x64656767616C66;
  v4 = 0x64656E6769737361;
  if (v1 != 4)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C756465686373;
  if (v1 != 1)
  {
    v5 = 7105633;
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

RemindersAppIntents::SmartListTypeRepresentation_optional __swiftcall SmartListTypeRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_261C29E38(uint64_t a1)
{
  v2 = sub_261C283EC();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C29E74(uint64_t a1)
{
  v2 = sub_261C283EC();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C29EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C2A06C();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C29EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C283EC();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C29F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C2A06C();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_261C29FBC()
{
  result = qword_27FEDCE78;
  if (!qword_27FEDCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE78);
  }

  return result;
}

unint64_t sub_261C2A014()
{
  result = qword_27FEDCE80;
  if (!qword_27FEDCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE80);
  }

  return result;
}

unint64_t sub_261C2A06C()
{
  result = qword_27FEDCE88;
  if (!qword_27FEDCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE88);
  }

  return result;
}

unint64_t sub_261C2A0C4()
{
  result = qword_27FEDCE90;
  if (!qword_27FEDCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE90);
  }

  return result;
}

unint64_t sub_261C2A11C()
{
  result = qword_27FEDCE98;
  if (!qword_27FEDCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE98);
  }

  return result;
}

unint64_t sub_261C2A174(uint64_t a1)
{
  result = sub_261C283EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C2A1A0()
{
  result = qword_27FEDCEA0;
  if (!qword_27FEDCEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDCEA8, &qword_261D0CBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCEA0);
  }

  return result;
}

unint64_t sub_261C2A204()
{
  result = qword_27FEDCEB0;
  if (!qword_27FEDCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCEB0);
  }

  return result;
}

unint64_t sub_261C2A25C()
{
  result = qword_27FEDCEB8;
  if (!qword_27FEDCEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCEB8);
  }

  return result;
}

unint64_t sub_261C2A2B4()
{
  result = qword_27FEDCEC0;
  if (!qword_27FEDCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCEC0);
  }

  return result;
}

uint64_t CreateReminderAppIntentRepresentation.init(title:note:isAllDay:dueDate:earlyAlert:recurrence:spatialEventTrigger:flags:priorityLevel:targetList:targetSection:parentReminder:tags:urls:contactPerson:assignedPerson:subtasks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unsigned __int8 *a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v207 = a8;
  v208 = a7;
  v206 = a6;
  v209 = a5;
  v188 = a4;
  v210 = a3;
  v187 = a2;
  v186 = a1;
  v197 = a18;
  v198 = a19;
  v195 = a16;
  v196 = a17;
  v193 = a14;
  v194 = a15;
  v192 = a13;
  v191 = a12;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v180 = v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v205 = v156 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v204 = v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v203 = v156 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = v156 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = v156 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v41 = v156 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = v156 - v42;
  v189 = *a10;
  v190 = *a11;
  v211 = 0;
  v212 = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  *a9 = sub_261CFEC04();
  v211 = 0;
  v212 = 0;
  v47 = *(v44 + 48);
  v48 = *(v44 + 52);
  swift_allocObject();
  a9[1] = sub_261CFEC04();
  LOBYTE(v211) = 2;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  v49 = *(v184 + 48);
  v50 = *(v184 + 52);
  swift_allocObject();
  v185 = sub_261CFEC04();
  v163 = sub_261CFD4E4();
  v51 = *(v163 - 8);
  v162 = *(v51 + 56);
  v164 = v51 + 56;
  v162(v43, 1, 1, v163);
  v200 = v43;
  v201 = v41;
  sub_261AFB668(v43, v41, &qword_27FEDA160, &qword_261D02220);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED0, &qword_261D0CD60);
  v52 = *(v202 + 48);
  v53 = *(v202 + 52);
  swift_allocObject();
  v54 = sub_261CFEC04();
  sub_261AE6A40(v43, &qword_27FEDA160, &qword_261D02220);
  a9[3] = v54;
  v211 = 0;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED8, &qword_261D0CD68);
  v55 = *(v182 + 48);
  v56 = *(v182 + 52);
  swift_allocObject();
  v183 = sub_261CFEC04();
  v160 = sub_261CFDA54();
  v57 = *(v160 - 8);
  v159 = *(v57 + 56);
  v161 = v57 + 56;
  v159(v36, 1, 1, v160);
  v199 = v36;
  v157 = v34;
  sub_261AFB668(v36, v34, &qword_27FEDA9A0, &unk_261D034A0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE0, &qword_261D0CD70);
  v58 = *(v158 + 48);
  v59 = *(v158 + 52);
  swift_allocObject();
  v60 = sub_261CFEC04();
  sub_261AE6A40(v36, &qword_27FEDA9A0, &unk_261D034A0);
  a9[5] = v60;
  v211 = 0;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE8, &qword_261D0CD78);
  v61 = *(v174 + 48);
  v62 = *(v174 + 52);
  swift_allocObject();
  v181 = sub_261CFEC04();
  LOBYTE(v211) = 3;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF0, &unk_261D0CD80);
  v63 = *(v173 + 48);
  v64 = *(v173 + 52);
  swift_allocObject();
  v179 = sub_261CFEC04();
  LOBYTE(v211) = 4;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF8, &unk_261D0DDE0);
  v65 = *(v172 + 48);
  v66 = *(v172 + 52);
  swift_allocObject();
  v175 = sub_261CFEC04();
  v211 = 0;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  v67 = *(v169 + 48);
  v68 = *(v169 + 52);
  swift_allocObject();
  v176 = sub_261CFEC04();
  v211 = 0;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF00, &unk_261D0D230);
  v69 = *(v170 + 48);
  v70 = *(v170 + 52);
  swift_allocObject();
  v177 = sub_261CFEC04();
  v211 = 0;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD18, &qword_261D0C4B0);
  v71 = *(v171 + 48);
  v72 = *(v171 + 52);
  swift_allocObject();
  v178 = sub_261CFEC04();
  v211 = 0;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF08, &qword_261D0DD10);
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  v76 = sub_261CFEC04();
  v156[0] = a9;
  a9[12] = v76;
  v211 = 0;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF10, &unk_261D0CD90);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  v168 = sub_261CFEC04();
  a9[13] = v168;
  v80 = sub_261CFC954();
  v81 = *(*(v80 - 8) + 56);
  v82 = v203;
  v81(v203, 1, 1, v80);
  v83 = v204;
  sub_261AFB668(v82, v204, &unk_27FEDB0B0, &unk_261D035D0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF18, &unk_261D0DDD0);
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();
  v87 = sub_261CFEC04();
  v167 = v87;
  v88 = v82;
  sub_261AE6A40(v82, &unk_27FEDB0B0, &unk_261D035D0);
  v89 = v156[0];
  *(v156[0] + 112) = v87;
  v81(v88, 1, 1, v80);
  sub_261AFB668(v88, v83, &unk_27FEDB0B0, &unk_261D035D0);
  v90 = *(v84 + 48);
  v91 = *(v84 + 52);
  swift_allocObject();
  v92 = sub_261CFEC04();
  v166 = v92;
  sub_261AE6A40(v88, &unk_27FEDB0B0, &unk_261D035D0);
  v89[15] = v92;
  v211 = 0;
  v93 = *(v73 + 48);
  v94 = *(v73 + 52);
  swift_allocObject();
  v165 = sub_261CFEC04();
  v89[16] = v165;
  v95 = sub_261CFD524();
  v96 = v205;
  (*(*(v95 - 8) + 56))(v205, 1, 1, v95);
  v97 = v180;
  sub_261AFB668(v96, v180, &qword_27FEDA9A8, &qword_261D034B0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF20, &qword_261D0CDA0);
  v99 = *(v98 + 48);
  v100 = *(v98 + 52);
  swift_allocObject();
  v156[1] = sub_261CFEC04();
  sub_261AE6A40(v96, &qword_27FEDA9A8, &qword_261D034B0);
  v101 = v200;
  v162(v200, 1, 1, v163);
  sub_261AFB668(v101, v201, &qword_27FEDA160, &qword_261D02220);
  v102 = *(v202 + 48);
  v103 = *(v202 + 52);
  swift_allocObject();
  v163 = sub_261CFEC04();
  sub_261AE6A40(v101, &qword_27FEDA160, &qword_261D02220);
  v104 = v199;
  v159(v199, 1, 1, v160);
  v105 = v157;
  sub_261AFB668(v104, v157, &qword_27FEDA9A0, &unk_261D034A0);
  v106 = v158;
  v107 = *(v158 + 48);
  v108 = *(v158 + 52);
  swift_allocObject();
  v164 = sub_261CFEC04();
  sub_261AE6A40(v104, &qword_27FEDA9A0, &unk_261D034A0);
  v211 = v186;
  v212 = v187;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF28, &qword_261D0CDA8);
  v110 = *(v109 + 48);
  v111 = *(v109 + 52);
  swift_allocObject();
  v89[17] = sub_261CFEC04();
  v112 = v205;
  sub_261AFB668(v210, v205, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261AFB668(v112, v97, &qword_27FEDA9A8, &qword_261D034B0);
  v113 = *(v98 + 48);
  v114 = *(v98 + 52);
  swift_allocObject();
  v115 = sub_261CFEC04();
  sub_261AE6A40(v112, &qword_27FEDA9A8, &qword_261D034B0);

  v89[18] = v115;
  LOBYTE(v211) = v188;
  v116 = *(v184 + 48);
  v117 = *(v184 + 52);
  swift_allocObject();
  v118 = sub_261CFEC04();

  v89[2] = v118;
  v119 = v200;
  sub_261AFB668(v209, v200, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v119, v201, &qword_27FEDA160, &qword_261D02220);
  v120 = *(v202 + 48);
  v121 = *(v202 + 52);
  swift_allocObject();
  v122 = sub_261CFEC04();
  sub_261AE6A40(v119, &qword_27FEDA160, &qword_261D02220);

  v89[20] = v122;
  v211 = v206;
  v123 = *(v182 + 48);
  v124 = *(v182 + 52);
  swift_allocObject();
  sub_261CFCDA4();
  v125 = sub_261CFEC04();

  v89[4] = v125;
  v126 = v199;
  sub_261AFB668(v208, v199, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v126, v105, &qword_27FEDA9A0, &unk_261D034A0);
  v127 = *(v106 + 48);
  v128 = *(v106 + 52);
  swift_allocObject();
  v129 = sub_261CFEC04();
  sub_261AE6A40(v126, &qword_27FEDA9A0, &unk_261D034A0);

  v89[21] = v129;
  v211 = v207;
  v130 = *(v174 + 48);
  v131 = *(v174 + 52);
  swift_allocObject();
  sub_261CFCDA4();
  v132 = sub_261CFEC04();

  v89[6] = v132;
  LOBYTE(v211) = v189;
  v133 = *(v173 + 48);
  v134 = *(v173 + 52);
  swift_allocObject();
  v135 = sub_261CFEC04();

  v89[7] = v135;
  LOBYTE(v211) = v190;
  v136 = *(v172 + 48);
  v137 = *(v172 + 52);
  swift_allocObject();
  v138 = sub_261CFEC04();

  v89[8] = v138;
  v211 = v191;
  v139 = *(v169 + 48);
  v140 = *(v169 + 52);
  swift_allocObject();
  sub_261CFCDA4();
  v141 = sub_261CFEC04();

  v89[9] = v141;
  v211 = v192;
  v142 = *(v170 + 48);
  v143 = *(v170 + 52);
  swift_allocObject();
  sub_261CFCDA4();
  v144 = sub_261CFEC04();

  v89[10] = v144;
  v211 = v193;
  v145 = *(v171 + 48);
  v146 = *(v171 + 52);
  swift_allocObject();
  sub_261CFCDA4();
  v147 = sub_261CFEC04();

  v89[11] = v147;
  v211 = v194;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF30, &qword_261D0CDB0);
  v149 = *(v148 + 48);
  v150 = *(v148 + 52);
  swift_allocObject();
  v89[19] = sub_261CFEC04();
  v211 = v195;
  sub_261CFEC34();
  v151 = v196;
  v152 = v203;
  sub_261AFB668(v196, v203, &unk_27FEDB0B0, &unk_261D035D0);
  v153 = v204;
  sub_261AFB668(v152, v204, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFEC34();
  sub_261AE6A40(v152, &unk_27FEDB0B0, &unk_261D035D0);
  v154 = v197;
  sub_261AFB668(v197, v152, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v152, v153, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFEC34();
  sub_261AE6A40(v152, &unk_27FEDB0B0, &unk_261D035D0);
  v211 = v198;
  sub_261CFEC34();

  sub_261AE6A40(v154, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v151, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v208, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AE6A40(v209, &qword_27FEDA160, &qword_261D02220);
  return sub_261AE6A40(v210, &qword_27FEDA9A8, &qword_261D034B0);
}

uint64_t CreateReminderAppIntentRepresentation.init(name:notes:isAllDay:dueDateComponents:earlyAlert:recurrenceRule:spatialEventTrigger:flags:priorityLevel:targetList:targetSection:parentReminder:hashtags:urls:contactPerson:assignedPerson:subtasks:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)(char *, uint64_t, uint64_t, uint64_t)@<X8>, uint64_t a10, unsigned __int8 *a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v247 = a8;
  v243 = a7;
  v238 = a6;
  LODWORD(v221) = a5;
  v233 = a4;
  v229 = a3;
  v232 = a2;
  v234 = a1;
  v226 = a9;
  v245 = a19;
  v246 = a18;
  v244 = a15;
  v242 = a14;
  v225 = a20;
  v220 = a16;
  v224 = a17;
  v240 = a10;
  v241 = a13;
  v20 = sub_261CFD564();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v182 = v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v228 = v179 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v227 = v179 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v231 = v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v230 = v179 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = v179 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = v179 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = v179 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = v44;
  MEMORY[0x28223BE20](v42);
  v46 = v179 - v45;
  LODWORD(v222) = *a11;
  LODWORD(v223) = *a12;
  v249 = 0;
  v250 = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v216 = sub_261CFEC04();
  v249 = 0;
  v250 = 0;
  v189 = v47;
  v50 = *(v47 + 48);
  v51 = *(v47 + 52);
  swift_allocObject();
  v215 = sub_261CFEC04();
  LOBYTE(v249) = 2;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  v52 = *(v212 + 48);
  v53 = *(v212 + 52);
  swift_allocObject();
  v214 = sub_261CFEC04();
  v218 = sub_261CFD4E4();
  v54 = *(v218 - 8);
  v217 = *(v54 + 56);
  v219 = v54 + 56;
  v217(v46, 1, 1, v218);
  v236 = v46;
  sub_261AFB668(v46, v44, &qword_27FEDA160, &qword_261D02220);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED0, &qword_261D0CD60);
  v55 = *(v188 + 48);
  v56 = *(v188 + 52);
  swift_allocObject();
  v213 = sub_261CFEC04();
  sub_261AE6A40(v46, &qword_27FEDA160, &qword_261D02220);
  v249 = 0;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED8, &qword_261D0CD68);
  v57 = *(v208 + 48);
  v58 = *(v208 + 52);
  swift_allocObject();
  v211 = sub_261CFEC04();
  v185 = sub_261CFDA54();
  v59 = *(v185 - 8);
  v184 = *(v59 + 56);
  v186 = v59 + 56;
  v184(v39, 1, 1, v185);
  v235 = v39;
  v239 = v37;
  sub_261AFB668(v39, v37, &qword_27FEDA9A0, &unk_261D034A0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE0, &qword_261D0CD70);
  v60 = *(v183 + 48);
  v61 = *(v183 + 52);
  swift_allocObject();
  v210 = sub_261CFEC04();
  sub_261AE6A40(v39, &qword_27FEDA9A0, &unk_261D034A0);
  v249 = 0;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE8, &qword_261D0CD78);
  v62 = *(v198 + 48);
  v63 = *(v198 + 52);
  swift_allocObject();
  v209 = sub_261CFEC04();
  LOBYTE(v249) = 3;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF0, &unk_261D0CD80);
  v64 = *(v197 + 48);
  v65 = *(v197 + 52);
  swift_allocObject();
  v207 = sub_261CFEC04();
  LOBYTE(v249) = 4;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF8, &unk_261D0DDE0);
  v66 = *(v194 + 48);
  v67 = *(v194 + 52);
  swift_allocObject();
  v201 = sub_261CFEC04();
  v249 = 0;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  v68 = *(v191 + 48);
  v69 = *(v191 + 52);
  swift_allocObject();
  v203 = sub_261CFEC04();
  v249 = 0;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF00, &unk_261D0D230);
  v70 = *(v192 + 48);
  v71 = *(v192 + 52);
  swift_allocObject();
  v204 = sub_261CFEC04();
  v249 = 0;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD18, &qword_261D0C4B0);
  v72 = *(v193 + 48);
  v73 = *(v193 + 52);
  swift_allocObject();
  v205 = sub_261CFEC04();
  v249 = 0;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF08, &qword_261D0DD10);
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  v206 = sub_261CFEC04();
  v249 = 0;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF10, &unk_261D0CD90);
  v77 = *(v195 + 48);
  v78 = *(v195 + 52);
  swift_allocObject();
  v202 = sub_261CFEC04();
  v79 = sub_261CFC954();
  v80 = *(*(v79 - 8) + 56);
  v81 = v230;
  v80(v230, 1, 1, v79);
  v82 = v231;
  sub_261AFB668(v81, v231, &unk_27FEDB0B0, &unk_261D035D0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF18, &unk_261D0DDD0);
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  v196 = sub_261CFEC04();
  sub_261AE6A40(v81, &unk_27FEDB0B0, &unk_261D035D0);
  v80(v81, 1, 1, v79);
  sub_261AFB668(v81, v82, &unk_27FEDB0B0, &unk_261D035D0);
  v190 = v83;
  v86 = *(v83 + 48);
  v87 = *(v83 + 52);
  swift_allocObject();
  v200 = sub_261CFEC04();
  sub_261AE6A40(v81, &unk_27FEDB0B0, &unk_261D035D0);
  v249 = 0;
  v187 = v74;
  v88 = *(v74 + 48);
  v89 = *(v74 + 52);
  swift_allocObject();
  v199 = sub_261CFEC04();
  v90 = sub_261CFD524();
  v91 = *(v90 - 8);
  v92 = *(v91 + 56);
  v93 = v227;
  v181 = v90;
  v180 = v92;
  v179[1] = v91 + 56;
  (v92)(v227, 1, 1);
  sub_261AFB668(v93, v228, &qword_27FEDA9A8, &qword_261D034B0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF20, &qword_261D0CDA0);
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  v179[0] = v94;
  swift_allocObject();
  v248 = sub_261CFEC04();
  sub_261AE6A40(v93, &qword_27FEDA9A8, &qword_261D034B0);
  v97 = v236;
  v217(v236, 1, 1, v218);
  v98 = v237;
  sub_261AFB668(v97, v237, &qword_27FEDA160, &qword_261D02220);
  v99 = v188;
  v100 = *(v188 + 48);
  v101 = *(v188 + 52);
  swift_allocObject();
  v219 = sub_261CFEC04();
  sub_261AE6A40(v97, &qword_27FEDA160, &qword_261D02220);
  v102 = v235;
  v184(v235, 1, 1, v185);
  v103 = v239;
  sub_261AFB668(v102, v239, &qword_27FEDA9A0, &unk_261D034A0);
  v104 = v183;
  v105 = *(v183 + 48);
  v106 = *(v183 + 52);
  swift_allocObject();
  v218 = sub_261CFEC04();
  sub_261AE6A40(v102, &qword_27FEDA9A0, &unk_261D034A0);
  v249 = v234;
  v250 = v232;
  v107 = v189;
  v108 = *(v189 + 48);
  v109 = *(v189 + 52);
  swift_allocObject();
  sub_261CFD104();
  v217 = sub_261CFEC04();

  v249 = v229;
  v250 = v233;
  v110 = *(v107 + 48);
  v111 = *(v107 + 52);
  v112 = v220;
  swift_allocObject();
  sub_261CFD104();
  v216 = sub_261CFEC04();

  LOBYTE(v249) = v221;
  v113 = *(v212 + 48);
  v114 = *(v212 + 52);
  swift_allocObject();
  v221 = sub_261CFEC04();

  sub_261AFB668(v238, v97, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v97, v98, &qword_27FEDA160, &qword_261D02220);
  v115 = *(v99 + 48);
  v116 = *(v99 + 52);
  swift_allocObject();
  v215 = sub_261CFEC04();
  sub_261AE6A40(v97, &qword_27FEDA160, &qword_261D02220);

  v249 = v243;
  v117 = *(v208 + 48);
  v118 = *(v208 + 52);
  swift_allocObject();
  sub_261CFCDA4();
  v214 = sub_261CFEC04();

  sub_261AFB668(v247, v102, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v102, v103, &qword_27FEDA9A0, &unk_261D034A0);
  v119 = *(v104 + 48);
  v120 = *(v104 + 52);
  swift_allocObject();
  v213 = sub_261CFEC04();
  sub_261AE6A40(v102, &qword_27FEDA9A0, &unk_261D034A0);

  v249 = v240;
  v121 = *(v198 + 48);
  v122 = *(v198 + 52);
  swift_allocObject();
  sub_261CFCDA4();
  v212 = sub_261CFEC04();

  LOBYTE(v249) = v222;
  v123 = *(v197 + 48);
  v124 = *(v197 + 52);
  swift_allocObject();
  v222 = sub_261CFEC04();

  LOBYTE(v249) = v223;
  v125 = *(v194 + 48);
  v126 = *(v194 + 52);
  swift_allocObject();
  v223 = sub_261CFEC04();

  v249 = v241;
  v127 = *(v191 + 48);
  v128 = *(v191 + 52);
  swift_allocObject();
  sub_261CFCDA4();
  v211 = sub_261CFEC04();

  v249 = v242;
  v129 = *(v192 + 48);
  v130 = *(v192 + 52);
  swift_allocObject();
  sub_261CFCDA4();
  v210 = sub_261CFEC04();

  v249 = v244;
  v131 = *(v193 + 48);
  v132 = *(v193 + 52);
  swift_allocObject();
  sub_261CFCDA4();
  v209 = sub_261CFEC04();

  v249 = v112;
  v133 = v187;
  v134 = *(v187 + 48);
  v135 = *(v187 + 52);
  swift_allocObject();
  sub_261CFD104();
  v208 = sub_261CFEC04();

  v249 = v224;
  v136 = *(v195 + 48);
  v137 = *(v195 + 52);
  swift_allocObject();
  v224 = sub_261CFEC04();

  v138 = v230;
  sub_261AFB668(v246, v230, &unk_27FEDB0B0, &unk_261D035D0);
  v139 = v231;
  sub_261AFB668(v138, v231, &unk_27FEDB0B0, &unk_261D035D0);
  v140 = v190;
  v141 = *(v190 + 48);
  v142 = *(v190 + 52);
  swift_allocObject();
  v207 = sub_261CFEC04();
  sub_261AE6A40(v138, &unk_27FEDB0B0, &unk_261D035D0);

  sub_261AFB668(v245, v138, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v138, v139, &unk_27FEDB0B0, &unk_261D035D0);
  v143 = *(v140 + 48);
  v144 = *(v140 + 52);
  swift_allocObject();
  v231 = sub_261CFEC04();
  sub_261AE6A40(v138, &unk_27FEDB0B0, &unk_261D035D0);

  v249 = v225;
  v145 = *(v133 + 48);
  v146 = *(v133 + 52);
  swift_allocObject();
  v230 = sub_261CFEC04();

  v147 = v234;
  if (!v232)
  {
    v147 = 0;
  }

  v148 = 0xE000000000000000;
  if (v232)
  {
    v148 = v232;
  }

  v249 = v147;
  v250 = v148;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF28, &qword_261D0CDA8);
  v150 = *(v149 + 48);
  v151 = *(v149 + 52);
  swift_allocObject();
  v234 = sub_261CFEC04();
  if (v233)
  {
    sub_261CFD554();
    v152 = v227;
    sub_261CFD534();
    v180(v152, 0, 1, v181);
    sub_261AFB668(v152, v228, &qword_27FEDA9A8, &qword_261D034B0);
    v153 = *(v179[0] + 48);
    v154 = *(v179[0] + 52);
    swift_allocObject();
    v155 = sub_261CFEC04();
    sub_261AE6A40(v152, &qword_27FEDA9A8, &qword_261D034B0);

    v248 = v155;
  }

  if (v112)
  {
    v156 = v112;
  }

  else
  {
    v156 = MEMORY[0x277D84F90];
  }

  v157 = sub_261B49EB8(v156);

  v249 = v157;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF30, &qword_261D0CDB0);
  v159 = *(v158 + 48);
  v160 = *(v158 + 52);
  swift_allocObject();
  v233 = sub_261CFEC04();
  v161 = v238;
  v162 = v236;
  sub_261AFB668(v238, v236, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v162, v237, &qword_27FEDA160, &qword_261D02220);
  v163 = v219;
  sub_261CFEC34();
  sub_261AE6A40(v162, &qword_27FEDA160, &qword_261D02220);
  v164 = v247;
  v165 = v235;
  sub_261AFB668(v247, v235, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v165, v239, &qword_27FEDA9A0, &unk_261D034A0);
  v166 = v218;
  sub_261CFEC34();

  sub_261AE6A40(v245, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v246, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v164, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AE6A40(v161, &qword_27FEDA160, &qword_261D02220);
  result = sub_261AE6A40(v165, &qword_27FEDA9A0, &unk_261D034A0);
  v168 = v226;
  v169 = v216;
  *v226 = v217;
  v168[1] = v169;
  v170 = v215;
  v168[2] = v221;
  v168[3] = v170;
  v171 = v213;
  v168[4] = v214;
  v168[5] = v171;
  v172 = v222;
  v168[6] = v212;
  v168[7] = v172;
  v173 = v211;
  v168[8] = v223;
  v168[9] = v173;
  v174 = v209;
  v168[10] = v210;
  v168[11] = v174;
  v175 = v224;
  v168[12] = v208;
  v168[13] = v175;
  v176 = v230;
  v177 = v231;
  v168[14] = v207;
  v168[15] = v177;
  v168[16] = v176;
  v178 = v248;
  v168[17] = v234;
  v168[18] = v178;
  v168[19] = v233;
  v168[20] = v163;
  v168[21] = v166;
  return result;
}

unint64_t sub_261C2C6A4(uint64_t a1)
{
  result = sub_261C2C6CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C2C6CC()
{
  result = qword_27FEDCF38;
  if (!qword_27FEDCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF38);
  }

  return result;
}

uint64_t destroy for CreateReminderAppIntentRepresentation(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];

  v7 = a1[5];

  v8 = a1[6];

  v9 = a1[7];

  v10 = a1[8];

  v11 = a1[9];

  v12 = a1[10];

  v13 = a1[11];

  v14 = a1[12];

  v15 = a1[13];

  v16 = a1[14];

  v17 = a1[15];

  v18 = a1[16];

  v19 = a1[17];

  v20 = a1[18];

  v21 = a1[19];

  v22 = a1[20];

  v23 = a1[21];
}

void *initializeWithCopy for CreateReminderAppIntentRepresentation(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  v9 = a2[11];
  a1[10] = a2[10];
  a1[11] = v9;
  v10 = a2[13];
  a1[12] = a2[12];
  a1[13] = v10;
  v11 = a2[15];
  a1[14] = a2[14];
  a1[15] = v11;
  v12 = a2[17];
  a1[16] = a2[16];
  a1[17] = v12;
  v13 = a2[19];
  a1[18] = a2[18];
  a1[19] = v13;
  v14 = a2[21];
  a1[20] = a2[20];
  a1[21] = v14;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for CreateReminderAppIntentRepresentation(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v5 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v6 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v7 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v8 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  v9 = a1[5];
  a1[5] = a2[5];
  sub_261CFCDA4();

  v10 = a1[6];
  a1[6] = a2[6];
  sub_261CFCDA4();

  v11 = a1[7];
  a1[7] = a2[7];
  sub_261CFCDA4();

  v12 = a1[8];
  a1[8] = a2[8];
  sub_261CFCDA4();

  v13 = a1[9];
  a1[9] = a2[9];
  sub_261CFCDA4();

  v14 = a1[10];
  a1[10] = a2[10];
  sub_261CFCDA4();

  v15 = a1[11];
  a1[11] = a2[11];
  sub_261CFCDA4();

  v16 = a1[12];
  a1[12] = a2[12];
  sub_261CFCDA4();

  v17 = a1[13];
  a1[13] = a2[13];
  sub_261CFCDA4();

  v18 = a1[14];
  a1[14] = a2[14];
  sub_261CFCDA4();

  v19 = a1[15];
  a1[15] = a2[15];
  sub_261CFCDA4();

  v20 = a1[16];
  a1[16] = a2[16];
  sub_261CFCDA4();

  v21 = a1[17];
  a1[17] = a2[17];
  sub_261CFCDA4();

  v22 = a1[18];
  a1[18] = a2[18];
  sub_261CFCDA4();

  v23 = a1[19];
  a1[19] = a2[19];
  sub_261CFCDA4();

  v24 = a1[20];
  a1[20] = a2[20];
  sub_261CFCDA4();

  v25 = a2[21];
  v26 = a1[21];
  a1[21] = v25;
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

void *assignWithTake for CreateReminderAppIntentRepresentation(void *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = a2[1];

  v8 = a1[4];

  v9 = a1[5];
  *(a1 + 2) = a2[2];

  v10 = a1[6];

  v11 = a1[7];
  *(a1 + 3) = a2[3];

  v12 = a1[8];

  v13 = a1[9];
  *(a1 + 4) = a2[4];

  v14 = a1[10];

  v15 = a1[11];
  *(a1 + 5) = a2[5];

  v16 = a1[12];

  v17 = a1[13];
  *(a1 + 6) = a2[6];

  v18 = a1[14];

  v19 = a1[15];
  *(a1 + 7) = a2[7];

  v20 = a1[16];

  v21 = a1[17];
  *(a1 + 8) = a2[8];

  v22 = a1[18];

  v23 = a1[19];
  *(a1 + 9) = a2[9];

  v24 = a1[20];

  v25 = a1[21];
  *(a1 + 10) = a2[10];

  return a1;
}

uint64_t getEnumTagSinglePayload for CreateReminderAppIntentRepresentation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t storeEnumTagSinglePayload for CreateReminderAppIntentRepresentation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261C2CDCC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCF40);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCF40);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::ListTypeRepresentation_optional __swiftcall ListTypeRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ListTypeRepresentation.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65697265636F7267;
  }

  else
  {
    result = 0x647261646E617473;
  }

  *v0;
  return result;
}

uint64_t sub_261C2CF44@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261D00554();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_261C2CFE8(uint64_t a1)
{
  v2 = sub_261C2D4C0();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C2D024(uint64_t a1)
{
  v2 = sub_261C2D4C0();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C2D060(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C2D394();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C2D0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C2D4C0();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C2D110(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C2D394();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_261C2D2E4()
{
  result = qword_27FEDCF58;
  if (!qword_27FEDCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF58);
  }

  return result;
}

unint64_t sub_261C2D33C()
{
  result = qword_27FEDCF60;
  if (!qword_27FEDCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF60);
  }

  return result;
}

unint64_t sub_261C2D394()
{
  result = qword_27FEDCF68;
  if (!qword_27FEDCF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF68);
  }

  return result;
}

unint64_t sub_261C2D3EC()
{
  result = qword_27FEDCF70;
  if (!qword_27FEDCF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF70);
  }

  return result;
}

unint64_t sub_261C2D444()
{
  result = qword_27FEDCF78;
  if (!qword_27FEDCF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF78);
  }

  return result;
}

unint64_t sub_261C2D498(uint64_t a1)
{
  result = sub_261C2D4C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C2D4C0()
{
  result = qword_27FEDCF80;
  if (!qword_27FEDCF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF80);
  }

  return result;
}

unint64_t sub_261C2D518()
{
  result = qword_27FEDCF88;
  if (!qword_27FEDCF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDCF90, &qword_261D0CF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF88);
  }

  return result;
}

unint64_t sub_261C2D57C()
{
  result = qword_27FEDCF98;
  if (!qword_27FEDCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF98);
  }

  return result;
}

unint64_t sub_261C2D5D4()
{
  result = qword_27FEDCFA0;
  if (!qword_27FEDCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCFA0);
  }

  return result;
}

unint64_t sub_261C2D62C()
{
  result = qword_27FEDCFA8;
  if (!qword_27FEDCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCFA8);
  }

  return result;
}

uint64_t sub_261C2D698()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCFB0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCFB0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SectionEntity.init(representation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v114 = a2;
  v3 = sub_261CFD674();
  v4 = *(v3 - 8);
  v110 = v3;
  v111 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v106 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_261CFD884();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v103 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v99 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_261CFD6A4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v100 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v102 = &v83[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v101 = &v83[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v83[-v22];
  v24 = type metadata accessor for ListEntity();
  v112 = *(v24 - 8);
  v113 = v24;
  v25 = *(v112 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v104 = &v83[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v105 = &v83[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v109 = &v83[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v83[-v33];
  MEMORY[0x28223BE20](v32);
  v108 = &v83[-v35];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFC8, &qword_261D0D0D0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v83[-v38];
  v40 = type metadata accessor for SectionEntityID();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v40);
  v107 = &v83[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v43);
  v46 = &v83[-v45];
  sub_261CFEA04();
  __swift_project_boxed_opaque_existential_1(&v115, v117);
  v47 = sub_261CFEAB4();
  static SectionEntityID.entityIdentifier(for:)(v47, v48, v39);

  __swift_destroy_boxed_opaque_existential_0(&v115);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    sub_261AE6A40(v39, &qword_27FEDCFC8, &qword_261D0D0D0);
  }

  else
  {
    sub_261C2E4A0(v39, v46, type metadata accessor for SectionEntityID);
    v49 = *(a1 + qword_27FEDD580);
    sub_261CFCDA4();
    sub_261CFEBD4();

    v50 = v116;
    v51 = v46;
    if (v116)
    {
      v52 = v115;
      v53 = *(a1 + qword_27FEDD588);
      sub_261CFCDA4();
      sub_261CFEBD4();

      if (v115)
      {
        ListEntity.init(representation:)();
        if (!(*(v112 + 48))(v23, 1, v113))
        {
          sub_261C2E4A0(v23, v34, type metadata accessor for ListEntity);
          v60 = v108;
          v93 = type metadata accessor for ListEntity;
          sub_261C2E4A0(v34, v108, type metadata accessor for ListEntity);
          v94 = type metadata accessor for SectionEntityID;
          sub_261C2E508(v46, v107, type metadata accessor for SectionEntityID);
          sub_261C2E508(v60, v109, type metadata accessor for ListEntity);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
          v98 = sub_261CFCB24();
          v61 = v114;
          *v114 = v98;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
          v89 = sub_261C2E618(&qword_280D227A0, type metadata accessor for ListEntity);
          v97 = sub_261CFCA64();
          v61[1] = v97;
          v87 = type metadata accessor for SectionEntity();
          v88 = *(v87 + 28);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
          v92 = v50;
          sub_261CFF9B4();
          sub_261CFD874();
          v62 = *MEMORY[0x277CC9110];
          v95 = a1;
          v96 = v51;
          v63 = v111 + 104;
          v85 = *(v111 + 104);
          v64 = v106;
          v84 = v62;
          v65 = v110;
          v85(v106, v62, v110);
          v111 = v63;
          v91 = v52;
          v66 = v100;
          sub_261CFD6B4();
          v90 = MEMORY[0x2667199E0](v66, &type metadata for UpdateSectionDisplayNameAppIntent);
          *(v61 + v88) = v90;
          v67 = v87;
          v86 = *(v87 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
          sub_261CFF9B4();
          sub_261CFD874();
          v68 = v62;
          v69 = v65;
          v70 = v65;
          v71 = v85;
          v85(v64, v68, v69);
          sub_261CFD6B4();
          v88 = MEMORY[0x2667199F0](v66, &type metadata for UpdateSectionIsCollapsedAppIntent);
          *(v61 + v86) = v88;
          v86 = v67[9];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
          sub_261CFF9B4();
          sub_261CFD874();
          v72 = v84;
          v71(v64, v84, v70);
          sub_261CFD6C4();
          v89 = sub_261CFCA54();
          *(v61 + v86) = v89;
          v86 = v67[10];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
          sub_261CFF9B4();
          sub_261CFD874();
          v71(v64, v72, v110);
          sub_261CFD6C4();
          sub_261C2E618(&qword_280D22358, type metadata accessor for ReminderEntity);
          *(v61 + v86) = sub_261CFCA54();
          v73 = v67;
          v74 = v61;
          v75 = v107;
          v76 = v94;
          sub_261C2E508(v107, v61 + v67[6], v94);
          v77 = v109;
          v78 = v101;
          v79 = v93;
          sub_261C2E508(v109, v101, v93);
          (*(v112 + 56))(v78, 0, 1, v113);
          sub_261B425D4(v78, v102);
          sub_261CFCA14();
          sub_261AE6A40(v78, &unk_27FEDE0C0, &unk_261D02500);
          v80 = v91;
          v115 = v91;
          v116 = v92;
          v81 = v92;
          sub_261CFD104();
          sub_261CFD2E4();
          LOBYTE(v115) = 0;
          sub_261CFD2E4();
          v115 = v80;
          v116 = v81;
          sub_261CFCA14();
          v82 = v105;
          sub_261C2E508(v77, v105, v79);
          sub_261C2E508(v82, v104, v79);
          sub_261CFCA14();

          sub_261C2E570(v82, v79);
          sub_261C2E570(v77, v79);
          sub_261C2E570(v75, v76);
          sub_261C2E570(v108, v79);
          sub_261C2E570(v96, v76);
          return (*(*(v73 - 1) + 56))(v74, 0, 1, v73);
        }

        sub_261C2E570(v46, type metadata accessor for SectionEntityID);

        sub_261AE6A40(v23, &unk_27FEDE0C0, &unk_261D02500);
      }

      else
      {
        sub_261C2E570(v46, type metadata accessor for SectionEntityID);
      }
    }

    else
    {
      sub_261C2E570(v46, type metadata accessor for SectionEntityID);
    }
  }

  if (qword_27FED9BB0 != -1)
  {
    swift_once();
  }

  v54 = sub_261CFF7A4();
  __swift_project_value_buffer(v54, qword_27FEDCFB0);
  v55 = sub_261CFF784();
  v56 = sub_261CFFE64();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_261AE2000, v55, v56, "Unable to convert representation to SectionEntity", v57, 2u);
    MEMORY[0x26671D560](v57, -1, -1);
  }

  v58 = type metadata accessor for SectionEntity();
  return (*(*(v58 - 8) + 56))(v114, 1, 1, v58);
}

uint64_t sub_261C2E4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C2E508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C2E570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261C2E618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261C2E660()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCFE0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCFE0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C2E888()
{
  v76 = v0;
  v75[1] = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v2 = v0[18];

  sub_261CFCBB4();
  v4 = v0[5];
  v3 = v0[6];
  if (qword_27FED9BB8 != -1)
  {
    swift_once();
  }

  v5 = sub_261CFF7A4();
  __swift_project_value_buffer(v5, qword_27FEDCFE0);
  sub_261CFD104();
  v6 = sub_261CFF784();
  v7 = sub_261CFFE84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v75[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_261B879C8(v4, v3, v75);
    _os_log_impl(&dword_261AE2000, v6, v7, "[CreateGroupAppIntent] Create list with name: %s, privacy: .public)", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671D560](v9, -1, -1);
    MEMORY[0x26671D560](v8, -1, -1);
  }

  v10 = *(v0[13] + 16);
  v0[7] = 0;
  v11 = [v10 fetchDefaultAccountWithError_];
  v12 = v11;
  v13 = v0[7];
  if (v13)
  {
    v13;

    swift_willThrow();
  }

  else if (v11)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    v15 = [v14 updateAccount_];
    v16 = [v15 groupContext];
    if (v16)
    {
      v17 = v16;
      v18 = v0[19];
      v19 = sub_261CFFA54();

      v74 = [v14 addGroupWithName:v19 toAccountGroupContextChangeItem:v17];

      sub_261CFCBB4();
      v20 = *(v0[8] + 16);

      if (v20)
      {
        v21 = [v74 sublistContext];
        if (v21)
        {
          v22 = v21;
          v69 = v17;
          v70 = v12;
          v72 = v15;
          v23 = v14;
          v24 = v0[19];
          sub_261CFCBB4();
          v25 = v0[11];
          v26 = *(v25 + 16);
          if (v26)
          {
            v27 = 0;
            v28 = v0[16];
            do
            {
              if (v27 >= *(v25 + 16))
              {
                __break(1u);
              }

              v29 = v0[17];
              v30 = v0[13];
              sub_261B0A18C(v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27, v29);
              sub_261C2F048(v29, v30, v23, v22);
              ++v27;
              sub_261C2F57C(v0[17], type metadata accessor for ListEntity);
            }

            while (v26 != v27);
          }

          v14 = v23;
          v12 = v70;
          v15 = v72;
          v17 = v69;
        }
      }

      v0[9] = 0;
      v31 = [v14 saveSynchronouslyWithError_];
      v32 = v0[9];
      if (v31)
      {
        v33 = v0[15];
        v34 = v32;
        v35 = v74;
        sub_261B857C8(v35, 0, v33);
        v36 = v0[17];
        v38 = v0[14];
        v37 = v0[15];
        v39 = v0[12];
        sub_261BA4168();
        sub_261CFC994();

        sub_261C2F57C(v37, type metadata accessor for GroupEntity);

        v40 = v0[1];
        v41 = *MEMORY[0x277D85DE8];
        goto LABEL_29;
      }

      v50 = v32;
      v51 = sub_261CFD654();

      swift_willThrow();
      v52 = v51;
      v53 = sub_261CFF784();
      v54 = sub_261CFFE64();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v73 = v15;
        v75[0] = v71;
        *v55 = 136315138;
        swift_getErrorValue();
        v57 = v0[2];
        v56 = v0[3];
        v58 = v0[4];
        v59 = sub_261D00664();
        v61 = v14;
        v62 = v17;
        v63 = sub_261B879C8(v59, v60, v75);

        *(v55 + 4) = v63;
        v17 = v62;
        v14 = v61;
        _os_log_impl(&dword_261AE2000, v53, v54, "[CreateGroupAppIntent] Create group failed to save new group error: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        v15 = v73;
        MEMORY[0x26671D560](v71, -1, -1);
        MEMORY[0x26671D560](v55, -1, -1);
      }

      sub_261B01D70();
      swift_allocError();
      *v64 = 19;
      swift_willThrow();
    }

    else
    {

      v46 = sub_261CFF784();
      v47 = sub_261CFFE64();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_261AE2000, v46, v47, "[CreateGroupAppIntent] Failed to create account group context", v48, 2u);
        MEMORY[0x26671D560](v48, -1, -1);
      }

      sub_261B01D70();
      swift_allocError();
      *v49 = 2;
      swift_willThrow();
    }
  }

  else
  {

    v42 = sub_261CFF784();
    v43 = sub_261CFFE64();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_261AE2000, v42, v43, "[CreateGroupAppIntent] Unable to fetch default account", v44, 2u);
      MEMORY[0x26671D560](v44, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v45 = 13;
    swift_willThrow();
  }

  v65 = v0[17];
  v66 = v0[15];

  v40 = v0[1];
  v67 = *MEMORY[0x277D85DE8];
LABEL_29:

  return v40();
}

void sub_261C2F048(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for ListEntity();
  v7 = (a1 + *(v6 + 20));
  v8 = *(type metadata accessor for AppEntityID() + 20);
  v9 = *v7;
  v10 = v7[1];
  v11 = objc_allocWithZone(MEMORY[0x277D44700]);
  v12 = sub_261CFD814();
  v13 = sub_261CFFA54();
  v14 = [v11 initWithUUID:v12 entityName:v13];

  v15 = *(a2 + 16);
  if ((*(a1 + *(v6 + 84)) & 1) == 0)
  {
    v42[0] = 0;
    v21 = [v15 fetchListWithObjectID:v14 error:v42];
    v17 = v42[0];
    if (v21)
    {
      v18 = v21;
      v22 = v42[0];
      if ([v18 isGroup])
      {
        if (qword_27FED9BB8 != -1)
        {
          swift_once();
        }

        v23 = sub_261CFF7A4();
        __swift_project_value_buffer(v23, qword_27FEDCFE0);
        v24 = v14;
        v25 = sub_261CFF784();
        v26 = sub_261CFFE74();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138543362;
          *(v27 + 4) = v24;
          *v28 = v24;
          v29 = v24;
          _os_log_impl(&dword_261AE2000, v25, v26, "[CreateGroupAppIntent] Attempt to create a group with a group: %{public}@", v27, 0xCu);
          sub_261BD28E8(v28);
          MEMORY[0x26671D560](v28, -1, -1);
          MEMORY[0x26671D560](v27, -1, -1);
        }

        sub_261B01D70();
        swift_allocError();
        v31 = 20;
      }

      else
      {
        if (![v18 isShared])
        {
          v20 = [a3 updateList_];
          [a4 addListChangeItem_];
          goto LABEL_4;
        }

        if (qword_27FED9BB8 != -1)
        {
          swift_once();
        }

        v33 = sub_261CFF7A4();
        __swift_project_value_buffer(v33, qword_27FEDCFE0);
        v24 = v14;
        v34 = sub_261CFF784();
        v35 = sub_261CFFE74();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138543362;
          *(v36 + 4) = v24;
          *v37 = v24;
          v38 = v24;
          _os_log_impl(&dword_261AE2000, v34, v35, "[CreateGroupAppIntent] Attempt to create a group with a shared list: %{public}@", v36, 0xCu);
          sub_261BD28E8(v37);
          MEMORY[0x26671D560](v37, -1, -1);
          MEMORY[0x26671D560](v36, -1, -1);
        }

        sub_261B01D70();
        swift_allocError();
        v31 = 1;
      }

      *v30 = v31;
      swift_willThrow();

LABEL_20:
      goto LABEL_21;
    }

LABEL_12:
    v32 = v17;
    sub_261CFD654();

    swift_willThrow();
    v18 = v14;
    goto LABEL_20;
  }

  v42[0] = 0;
  v16 = [v15 fetchCustomSmartListWithObjectID:v14 error:v42];
  v17 = v42[0];
  if (!v16)
  {
    goto LABEL_12;
  }

  v18 = v16;
  v19 = v42[0];
  v20 = [a3 updateSmartList_];
  [a4 addSmartListChangeItem_];
LABEL_4:

LABEL_21:
  v39 = *MEMORY[0x277D85DE8];
}

uint64_t sub_261C2F4D0(uint64_t a1, _OWORD *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261C2F57C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EntityRepresentationMappable.init(representation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_261D00154();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v18 - v12;
  if (v11)
  {
    (*(a3 + 24))(v11, a2, a3);
    v14 = *(a2 - 8);
    v15 = v14;
    if (!(*(v14 + 48))(v13, 1, a2))
    {
      (*(v14 + 32))(a4, v13, a2);
      v16 = 0;
      return (*(v15 + 56))(a4, v16, 1, a2);
    }

    (*(v9 + 8))(v13, v8);
  }

  else
  {
    v14 = *(a2 - 8);
  }

  v15 = v14;
  v16 = 1;
  return (*(v15 + 56))(a4, v16, 1, a2);
}

uint64_t DeleteListsAppIntentRepresentation.entities.getter()
{
  v1 = *v0;
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C2F7F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEC34();
}

void (*DeleteListsAppIntentRepresentation.entities.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFEC14();
  return sub_261AFA3C4;
}

uint64_t DeleteListsAppIntentRepresentation.init(entities:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFF8, &qword_261D0D160);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_261CFEC04();
  *a1 = result;
  return result;
}

unint64_t sub_261C2F99C(uint64_t a1)
{
  result = sub_261C2F9C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C2F9C4()
{
  result = qword_27FEDD000;
  if (!qword_27FEDD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD000);
  }

  return result;
}

uint64_t ColorEntityRepresentation.name.getter()
{
  v1 = *(v0 + qword_27FEDD008);
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v3;
}

double sub_261C2FA74@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + qword_27FEDD008);
  sub_261CFCDA4();
  sub_261CFEBD4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261C2FACC(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + qword_27FEDD008);
  v4 = *a1;
  v5 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t ColorEntityRepresentation.name.setter()
{
  v1 = *(v0 + qword_27FEDD008);
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*ColorEntityRepresentation.name.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD008);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ColorEntityRepresentation.red.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD010);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

uint64_t (*ColorEntityRepresentation.green.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD018);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ColorEntityRepresentation.blue.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD020);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C2FE24(void *a1)
{
  v2 = *(v1 + *a1);
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v4;
}

uint64_t sub_261C2FE70@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(*a1 + *a2);
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_261C2FECC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  v7 = *a1;
  v8 = *(a1 + 8);
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t sub_261C2FF30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*ColorEntityRepresentation.alpha.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27FEDD028);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t ColorEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return ColorEntityRepresentation.init(_:)(a1);
}

uint64_t ColorEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = qword_27FEDD008;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA58, &qword_261D0B6D0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + v11) = sub_261CFEBB4();
  v15 = qword_27FEDD010;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD030, &qword_261D0D1F8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v15) = sub_261CFEBB4();
  v19 = qword_27FEDD018;
  v20 = *(v16 + 48);
  v21 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v19) = sub_261CFEBB4();
  v22 = qword_27FEDD020;
  v23 = *(v16 + 48);
  v24 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v22) = sub_261CFEBB4();
  v25 = qword_27FEDD028;
  v26 = *(v16 + 48);
  v27 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v25) = sub_261CFEBB4();
  v28 = v4[2];
  v28(v10, a1, v3);
  v28(v8, v10, v3);
  v29 = sub_261CFEA94();
  v30 = v4[1];
  v30(a1, v3);
  v30(v10, v3);
  return v29;
}

uint64_t sub_261C302AC()
{
  v1 = *(v0 + qword_27FEDD008);

  v2 = *(v0 + qword_27FEDD010);

  v3 = *(v0 + qword_27FEDD018);

  v4 = *(v0 + qword_27FEDD020);

  v5 = *(v0 + qword_27FEDD028);
}

uint64_t ColorEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  v1 = *(v0 + qword_27FEDD008);

  v2 = *(v0 + qword_27FEDD010);

  v3 = *(v0 + qword_27FEDD018);

  v4 = *(v0 + qword_27FEDD020);

  v5 = *(v0 + qword_27FEDD028);

  return v0;
}

uint64_t ColorEntityRepresentation.__deallocating_deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  v1 = *(v0 + qword_27FEDD008);
  sub_261CFCDA4();

  v2 = *(v0 + qword_27FEDD010);

  v3 = *(v0 + qword_27FEDD018);

  v4 = *(v0 + qword_27FEDD020);

  v5 = *(v0 + qword_27FEDD028);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ColorEntityRepresentation()
{
  result = qword_27FEDD038;
  if (!qword_27FEDD038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UpdateSectionAppIntentRepresentation.target.getter()
{
  v1 = *v0;
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C30518(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateSectionAppIntentRepresentation.target.setter()
{
  v1 = *v0;
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateSectionAppIntentRepresentation.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateSectionAppIntentRepresentation.displayName.getter()
{
  v1 = *(v0 + 8);
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C306A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateSectionAppIntentRepresentation.displayName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t UpdateSectionAppIntentRepresentation.title.getter()
{
  v1 = *(v0 + 16);
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C30818(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateSectionAppIntentRepresentation.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateSectionAppIntentRepresentation.init(target:displayName:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF00, &unk_261D0D230);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *a1 = sub_261CFEC04();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  a1[1] = sub_261CFEC04();
  v8 = *(v5 + 48);
  v9 = *(v5 + 52);
  swift_allocObject();
  a1[2] = sub_261CFEC04();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFD104();
  sub_261CFEC34();
  sub_261CFEC34();
}

uint64_t UpdateSectionAppIntentRepresentation.init(target:title:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF00, &unk_261D0D230);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *a1 = sub_261CFEC04();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  a1[1] = sub_261CFEC04();
  v8 = *(v5 + 48);
  v9 = *(v5 + 52);
  swift_allocObject();
  a1[2] = sub_261CFEC04();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFD104();
  sub_261CFEC34();
  sub_261CFEC34();
}

unint64_t sub_261C30BF4()
{
  result = qword_27FEDD048;
  if (!qword_27FEDD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD048);
  }

  return result;
}

unint64_t sub_261C30C48(uint64_t a1)
{
  result = sub_261C30C70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C30C70()
{
  result = qword_27FEDD050;
  if (!qword_27FEDD050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD050);
  }

  return result;
}

unint64_t sub_261C30CD4()
{
  result = qword_27FEDD058;
  if (!qword_27FEDD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD058);
  }

  return result;
}

uint64_t OpenGroupAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v1 = sub_261CFD184();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v1);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v38 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v37 = &v36 - v14;
  v15 = sub_261CFD674();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_261CFD884();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_261CFFA44();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_261CFD6A4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD70, &unk_261D06AA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v27 = *MEMORY[0x277CC9110];
  v28 = *(v16 + 104);
  v28(v19, v27, v15);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v19, v27, v15);
  v29 = v37;
  sub_261CFD6C4();
  (*(v25 + 56))(v29, 0, 1, v24);
  v30 = type metadata accessor for GroupEntity();
  (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
  v31 = sub_261CFC834();
  v32 = *(*(v31 - 8) + 56);
  v32(v39, 1, 1, v31);
  v32(v40, 1, 1, v31);
  (*(v42 + 104))(v41, *MEMORY[0x277CBA308], v43);
  sub_261C31CD0(&qword_280D22670);
  v33 = sub_261CFCC34();
  v34 = v44;
  *v44 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD078, &qword_261D0D2D0);
  v45 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v34[1] = result;
  return result;
}

uint64_t sub_261C3133C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GroupEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_261BAB184(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_261BAB184(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261BAB1E8(v10);
}

uint64_t OpenGroupAppIntent.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for GroupEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261BAB184(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261BAB1E8(a1);
}

uint64_t sub_261C314B4()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDD060);
  __swift_project_value_buffer(v9, qword_27FEDD060);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenGroupAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDD060);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenGroupAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*OpenGroupAppIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenGroupAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261C31B70, v4, v3);
}

uint64_t sub_261C31B70()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_261BB52D8;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return (sub_261C59328)(v6, "OpenGroupAppIntent", 18, 2, v4, v5);
}

unint64_t sub_261C31C48()
{
  result = qword_27FEDD080;
  if (!qword_27FEDD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD080);
  }

  return result;
}

uint64_t sub_261C31CD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GroupEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261C31D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_261CFFD24();
  v3[12] = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_261C31DB0, v5, v4);
}

uint64_t sub_261C31DB0()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_261B23D64(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v1;
  v0[8] = v2;
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_261BB5674;
  v8 = v0[9];

  return (v10)(v8, v0 + 7, v3, v4);
}

uint64_t sub_261C31F1C(uint64_t a1)
{
  v3 = type metadata accessor for GroupEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261BAB184(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261BAB1E8(a1);
}

uint64_t (*sub_261C31FAC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

unint64_t sub_261C32028()
{
  result = qword_27FEDD088;
  if (!qword_27FEDD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD088);
  }

  return result;
}

unint64_t sub_261C32080()
{
  result = qword_27FEDD090;
  if (!qword_27FEDD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD090);
  }

  return result;
}

uint64_t sub_261C32140@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDD060);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C321EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261C3228C, v4, v3);
}

uint64_t sub_261C3228C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_261BB5C4C;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return (sub_261C59328)(v6, "OpenGroupAppIntent", 18, 2, v4, v5);
}

uint64_t sub_261C32364(uint64_t a1)
{
  v2 = sub_261B315AC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of OpenGroupAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_261C324E4()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD098);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD098);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::ListLayoutRepresentation_optional __swiftcall ListLayoutRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ListLayoutRepresentation.rawValue.getter()
{
  if (*v0)
  {
    result = 0x736E6D756C6F63;
  }

  else
  {
    result = 1953720684;
  }

  *v0;
  return result;
}

uint64_t sub_261C32650@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261D00554();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_261C326F4(uint64_t a1)
{
  v2 = sub_261C32BC0();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C32730(uint64_t a1)
{
  v2 = sub_261C32BC0();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C3276C(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C32A94();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C327B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C32BC0();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C3281C(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C32A94();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_261C329E4()
{
  result = qword_27FEDD0B0;
  if (!qword_27FEDD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0B0);
  }

  return result;
}

unint64_t sub_261C32A3C()
{
  result = qword_27FEDD0B8;
  if (!qword_27FEDD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0B8);
  }

  return result;
}

unint64_t sub_261C32A94()
{
  result = qword_27FEDD0C0;
  if (!qword_27FEDD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0C0);
  }

  return result;
}

unint64_t sub_261C32AEC()
{
  result = qword_27FEDD0C8;
  if (!qword_27FEDD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0C8);
  }

  return result;
}

unint64_t sub_261C32B44()
{
  result = qword_27FEDD0D0;
  if (!qword_27FEDD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0D0);
  }

  return result;
}

unint64_t sub_261C32B98(uint64_t a1)
{
  result = sub_261C32BC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C32BC0()
{
  result = qword_27FEDD0D8;
  if (!qword_27FEDD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0D8);
  }

  return result;
}

unint64_t sub_261C32C18()
{
  result = qword_27FEDD0E0;
  if (!qword_27FEDD0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDD0E8, &qword_261D0D5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0E0);
  }

  return result;
}

unint64_t sub_261C32C7C()
{
  result = qword_27FEDD0F0;
  if (!qword_27FEDD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0F0);
  }

  return result;
}

unint64_t sub_261C32CD4()
{
  result = qword_27FEDD0F8;
  if (!qword_27FEDD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0F8);
  }

  return result;
}

unint64_t sub_261C32D2C()
{
  result = qword_27FEDD100;
  if (!qword_27FEDD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD100);
  }

  return result;
}

uint64_t LocationAlarmEntityRepresentation.SpatialEventRepresentation.rawValue.getter()
{
  v1 = 0x657669727261;
  if (*v0 != 1)
  {
    v1 = 0x747261706564;
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

uint64_t sub_261C32DEC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD108);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD108);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t LocationAlarmEntityRepresentation.SpatialEventRepresentation.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_261D00554();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_261C32F3C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return LocationAlarmEntityRepresentation.SpatialEventRepresentation.init(rawValue:)(a1);
}

uint64_t sub_261C32F78(uint64_t a1)
{
  v2 = sub_261C201E8();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C32FB4(uint64_t a1)
{
  v2 = sub_261C201E8();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C32FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C33324();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C3303C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C201E8();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C330A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C33324();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

void LocationAlarmEntityRepresentation.SpatialEventRepresentation.init(appEnum:)(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a1;
  v3 = sub_261D00554();

  if (v3 >= 3)
  {
    if (qword_27FED9BD0 != -1)
    {
      swift_once();
    }

    v4 = sub_261CFF7A4();
    __swift_project_value_buffer(v4, qword_27FEDD108);
    v3 = sub_261CFF784();
    v5 = sub_261CFFE64();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261AE2000, v3, v5, "Unable to convert PriorityLevelType to representation", v6, 2u);
      MEMORY[0x26671D560](v6, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a2 = v3;
}

unint64_t sub_261C33274()
{
  result = qword_27FEDD120;
  if (!qword_27FEDD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD120);
  }

  return result;
}

unint64_t sub_261C332CC()
{
  result = qword_27FEDD128;
  if (!qword_27FEDD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD128);
  }

  return result;
}

unint64_t sub_261C33324()
{
  result = qword_27FEDD130;
  if (!qword_27FEDD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD130);
  }

  return result;
}

unint64_t sub_261C3337C()
{
  result = qword_27FEDD138;
  if (!qword_27FEDD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD138);
  }

  return result;
}

unint64_t sub_261C333D4()
{
  result = qword_27FEDD140;
  if (!qword_27FEDD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD140);
  }

  return result;
}

unint64_t sub_261C3342C()
{
  result = qword_27FEDD148;
  if (!qword_27FEDD148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDD150, &qword_261D0D820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD148);
  }

  return result;
}

unint64_t sub_261C33490()
{
  result = qword_27FEDD158;
  if (!qword_27FEDD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD158);
  }

  return result;
}

unint64_t sub_261C334E8()
{
  result = qword_27FEDD160;
  if (!qword_27FEDD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD160);
  }

  return result;
}

unint64_t sub_261C33540()
{
  result = qword_27FEDD168;
  if (!qword_27FEDD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD168);
  }

  return result;
}

uint64_t UpdateListAppIntentRepresentation.target.getter()
{
  v1 = *v0;
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C335E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v13 = a2[1];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v7 = a2[11];
  v12 = a2[10];
  v8 = a2[12];
  v14 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.target.setter()
{
  v1 = *v0;
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateListAppIntentRepresentation.name.getter()
{
  v1 = *(v0 + 8);
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C3385C(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v13 = *a2;
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v7 = a2[11];
  v12 = a2[10];
  v8 = a2[12];
  v14 = *a1;
  v15 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateListAppIntentRepresentation.color.getter()
{
  v1 = *(v0 + 16);
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C33AC0(uint64_t *a1, uint64_t *a2)
{
  v13 = a2[1];
  v14 = *a2;
  v2 = a2[2];
  v3 = a2[5];
  v12 = a2[3];
  v5 = a2[6];
  v4 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v6 = a2[11];
  v11 = a2[10];
  v7 = a2[12];
  v15 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.color.setter()
{
  v1 = *(v0 + 16);
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.color.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateListAppIntentRepresentation.badge.getter()
{
  v1 = *(v0 + 24);
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C33D38(uint64_t *a1, uint64_t *a2)
{
  v13 = a2[1];
  v14 = *a2;
  v2 = a2[3];
  v3 = a2[5];
  v12 = a2[2];
  v5 = a2[6];
  v4 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v6 = a2[11];
  v11 = a2[10];
  v7 = a2[12];
  v15 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.badge.setter()
{
  v1 = *(v0 + 24);
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.badge.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateListAppIntentRepresentation.parent.getter()
{
  v1 = *(v0 + 32);
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C33FB0(uint64_t *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v7 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v8 = a2[12];
  v16 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.parent.setter()
{
  v1 = *(v0 + 32);
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateListAppIntentRepresentation.isPinned.getter()
{
  v1 = *(v0 + 40);
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C3422C(char *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v4 = a2[4];
  v3 = a2[5];
  v5 = a2[6];
  v6 = a2[7];
  v7 = a2[8];
  v11 = a2[9];
  v8 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v9 = a2[12];
  v16 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.isPinned.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateListAppIntentRepresentation.showsCompleted.getter()
{
  v1 = *(v0 + 48);
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C3448C(char *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v4 = a2[4];
  v3 = a2[5];
  v5 = a2[6];
  v6 = a2[7];
  v7 = a2[8];
  v11 = a2[9];
  v8 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v9 = a2[12];
  v16 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.showsCompleted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateListAppIntentRepresentation.autoCategorize.getter()
{
  v1 = *(v0 + 56);
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C346EC(char *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v7 = a2[8];
  v11 = a2[9];
  v8 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v9 = a2[12];
  v16 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.autoCategorize.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C3493C(char *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v7 = a2[8];
  v11 = a2[9];
  v8 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v9 = a2[12];
  v16 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.listLayout.setter(char *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  return sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.listLayout.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t sub_261C34B90(char *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v7 = a2[9];
  v11 = a2[8];
  v8 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v9 = a2[12];
  v16 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.sortingStyle.setter(char *a1)
{
  v2 = *(v1 + 72);
  v4 = *a1;
  return sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.sortingStyle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 72);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C34DE4(char *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v11 = a2[8];
  v12 = a2[9];
  v13 = a2[2];
  v7 = a2[10];
  v8 = a2[11];
  v9 = a2[12];
  v16 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.listType.setter(char *a1)
{
  v2 = *(v1 + 80);
  v4 = *a1;
  return sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.listType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 80);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateListAppIntentRepresentation.title.getter()
{
  v1 = *(v0 + 88);
  sub_261CFEC24();
  return v3;
}

uint64_t sub_261C35048(uint64_t *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v4 = a2[4];
  v3 = a2[5];
  v5 = a2[6];
  v6 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v7 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v8 = a2[12];
  v16 = *a1;
  v17 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 88);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C352A4(char *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v7 = a2[8];
  v11 = a2[9];
  v8 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v9 = a2[12];
  v16 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.type.setter(char *a1)
{
  v2 = *(v1 + 96);
  v4 = *a1;
  return sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.type.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 96);
  *(v3 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C354F4@<X0>(uint64_t *a1@<X8>, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v42 = *a3;
  v43 = *a4;
  v44 = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *a1 = sub_261CFEC04();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  a1[1] = sub_261CFEC04();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD170, &qword_261D0D9A0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  a1[2] = sub_261CFEC04();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD178, &qword_261D0D9A8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  a1[3] = sub_261CFEC04();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD180, &unk_261D0D9B0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  a1[4] = sub_261CFEC04();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  a1[5] = sub_261CFEC04();
  v24 = *(v21 + 48);
  v25 = *(v21 + 52);
  swift_allocObject();
  a1[6] = sub_261CFEC04();
  v26 = *(v21 + 48);
  v27 = *(v21 + 52);
  swift_allocObject();
  a1[7] = sub_261CFEC04();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD188, &qword_261D0D9C0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  a1[8] = sub_261CFEC04();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD190, &unk_261D0D9C8);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  a1[9] = sub_261CFEC04();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB38, &qword_261D0BA10);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  a1[10] = sub_261CFEC04();
  v37 = *(v9 + 48);
  v38 = *(v9 + 52);
  swift_allocObject();
  a1[11] = sub_261CFEC04();
  v39 = *(v34 + 48);
  v40 = *(v34 + 52);
  swift_allocObject();
  a1[12] = sub_261CFEC04();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFD104();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.init(listRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + qword_27FEDD5C0);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v4 = *(a1 + qword_27FEDD5C8);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v5 = *(a1 + qword_27FEDD5D0);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v6 = *(a1 + qword_27FEDD5D8);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v7 = *(a1 + qword_27FEDD5E0);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v8 = *(a1 + qword_27FEDD5E8);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v9 = *(a1 + qword_27FEDD5F0);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v10 = *(a1 + qword_27FEDD5F8);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v11 = *(a1 + qword_27FEDD600);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v12 = *(a1 + qword_27FEDD608);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v51 = sub_261CFEC04();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v49 = sub_261CFEC04();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD170, &qword_261D0D9A0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v62 = sub_261CFEC04();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD178, &qword_261D0D9A8);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v61 = sub_261CFEC04();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD180, &unk_261D0D9B0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v59 = sub_261CFEC04();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v58 = sub_261CFEC04();
  v31 = *(v28 + 48);
  v32 = *(v28 + 52);
  swift_allocObject();
  v57 = sub_261CFEC04();
  v33 = *(v28 + 48);
  v34 = *(v28 + 52);
  swift_allocObject();
  v56 = sub_261CFEC04();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD188, &qword_261D0D9C0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v55 = sub_261CFEC04();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD190, &unk_261D0D9C8);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v54 = sub_261CFEC04();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB38, &qword_261D0BA10);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v53 = sub_261CFEC04();
  v44 = *(v16 + 48);
  v45 = *(v16 + 52);
  swift_allocObject();
  v52 = sub_261CFEC04();
  v46 = *(v41 + 48);
  v47 = *(v41 + 52);
  swift_allocObject();
  v50 = sub_261CFEC04();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFD104();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();

  *a2 = v51;
  a2[1] = v49;
  a2[2] = v62;
  a2[3] = v61;
  a2[4] = v59;
  a2[5] = v58;
  a2[6] = v57;
  a2[7] = v56;
  a2[8] = v55;
  a2[9] = v54;
  a2[10] = v53;
  a2[11] = v52;
  a2[12] = v50;
  return result;
}

unint64_t sub_261C35FA4(uint64_t a1)
{
  result = sub_261C35FCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C35FCC()
{
  result = qword_27FEDD198;
  if (!qword_27FEDD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD198);
  }

  return result;
}

uint64_t destroy for UpdateListAppIntentRepresentation(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];

  v7 = a1[5];

  v8 = a1[6];

  v9 = a1[7];

  v10 = a1[8];

  v11 = a1[9];

  v12 = a1[10];

  v13 = a1[11];

  v14 = a1[12];
}

void *initializeWithCopy for UpdateListAppIntentRepresentation(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  v9 = a2[11];
  a1[10] = a2[10];
  a1[11] = v9;
  a1[12] = a2[12];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateListAppIntentRepresentation(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v5 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v6 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v7 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v8 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  v9 = a1[5];
  a1[5] = a2[5];
  sub_261CFCDA4();

  v10 = a1[6];
  a1[6] = a2[6];
  sub_261CFCDA4();

  v11 = a1[7];
  a1[7] = a2[7];
  sub_261CFCDA4();

  v12 = a1[8];
  a1[8] = a2[8];
  sub_261CFCDA4();

  v13 = a1[9];
  a1[9] = a2[9];
  sub_261CFCDA4();

  v14 = a1[10];
  a1[10] = a2[10];
  sub_261CFCDA4();

  v15 = a1[11];
  a1[11] = a2[11];
  sub_261CFCDA4();

  v16 = a2[12];
  v17 = a1[12];
  a1[12] = v16;
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

void *assignWithTake for UpdateListAppIntentRepresentation(void *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = *(a2 + 16);

  v8 = a1[4];

  v9 = a1[5];
  *(a1 + 2) = *(a2 + 32);

  v10 = a1[6];

  v11 = a1[7];
  *(a1 + 3) = *(a2 + 48);

  v12 = a1[8];

  v13 = a1[9];
  *(a1 + 4) = *(a2 + 64);

  v14 = a1[10];

  v15 = a1[11];
  *(a1 + 5) = *(a2 + 80);

  v16 = a1[12];
  a1[12] = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateListAppIntentRepresentation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for UpdateListAppIntentRepresentation(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t EnumRepresentationMappable.init(representation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = sub_261D00154();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v34 = a3;
  v35 = &v32 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_261D00154();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  (*(v12 + 16))(v16, a1, v11);
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    v24 = *(v12 + 8);
    v24(a1, v11);
    v24(v16, v11);
    v25 = *(a2 - 8);
  }

  else
  {
    (*(v17 + 32))(v23, v16, AssociatedTypeWitness);
    (*(v17 + 16))(v21, v23, AssociatedTypeWitness);
    v26 = v35;
    (*(v34 + 24))(v21, a2);
    (*(v12 + 8))(a1, v11);
    (*(v17 + 8))(v23, AssociatedTypeWitness);
    v25 = *(a2 - 8);
    v27 = v25;
    if (!(*(v25 + 48))(v26, 1, a2))
    {
      v31 = v36;
      (*(v25 + 32))(v36, v26, a2);
      v29 = v31;
      v28 = 0;
      return (*(v27 + 56))(v29, v28, 1, a2);
    }

    (*(v32 + 8))(v26, v33);
  }

  v27 = v25;
  v28 = 1;
  v29 = v36;
  return (*(v27 + 56))(v29, v28, 1, a2);
}

uint64_t TransientAppEntityMappable.init(appEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = sub_261D00154();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v34 = a3;
  v35 = &v32 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_261D00154();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  (*(v12 + 16))(v16, a1, v11);
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    v24 = *(v12 + 8);
    v24(a1, v11);
    v24(v16, v11);
    v25 = *(a2 - 8);
  }

  else
  {
    (*(v17 + 32))(v23, v16, AssociatedTypeWitness);
    (*(v17 + 16))(v21, v23, AssociatedTypeWitness);
    v26 = v35;
    (*(v34 + 24))(v21, a2);
    (*(v12 + 8))(a1, v11);
    (*(v17 + 8))(v23, AssociatedTypeWitness);
    v25 = *(a2 - 8);
    v27 = v25;
    if (!(*(v25 + 48))(v26, 1, a2))
    {
      v31 = v36;
      (*(v25 + 32))(v36, v26, a2);
      v29 = v31;
      v28 = 0;
      return (*(v27 + 56))(v29, v28, 1, a2);
    }

    (*(v32 + 8))(v26, v33);
  }

  v27 = v25;
  v28 = 1;
  v29 = v36;
  return (*(v27 + 56))(v29, v28, 1, a2);
}

uint64_t sub_261C36CDC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD1A0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD1A0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double ColorEntity.init(representation:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFD674();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_261CFEA04();
  __swift_project_boxed_opaque_existential_1(&v53, v55);
  sub_261CFEAB4();
  v14 = sub_261CFF984();
  v16 = v15;

  __swift_destroy_boxed_opaque_existential_0(&v53);
  if (v16)
  {
    v17 = *(a1 + qword_27FEDD008);
    sub_261CFCDA4();
    sub_261CFEBD4();

    v50 = v54;
    v51 = v53;
    v18 = *(a1 + qword_27FEDD010);
    sub_261CFCDA4();
    sub_261CFEBD4();

    v49 = v53;
    v48 = v54;
    v19 = *(a1 + qword_27FEDD018);
    sub_261CFCDA4();
    sub_261CFEBD4();

    v47 = v53;
    v46 = v54;
    v20 = *(a1 + qword_27FEDD020);
    sub_261CFCDA4();
    sub_261CFEBD4();

    v45 = v53;
    v44 = v54;
    v21 = *(a1 + qword_27FEDD028);
    sub_261CFCDA4();
    sub_261CFEBD4();

    v43 = v53;
    v42 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
    sub_261CFF9B4();
    sub_261CFD874();
    v39 = a1;
    v40 = v14;
    v22 = a2;
    v23 = *MEMORY[0x277CC9110];
    v41 = v16;
    v24 = *(v52 + 104);
    v24(v7, v23, v4);
    sub_261CFD6C4();
    v52 = sub_261CFCB14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
    sub_261CFF9B4();
    sub_261CFD874();
    v24(v7, v23, v4);
    sub_261CFD6B4();
    v38 = sub_261CFCB44();
    sub_261CFF9B4();
    sub_261CFD874();
    v24(v7, v23, v4);
    sub_261CFD6B4();
    v37 = sub_261CFCB44();
    sub_261CFF9B4();
    sub_261CFD874();
    v24(v7, v23, v4);
    sub_261CFD6B4();
    v36 = sub_261CFCB44();
    sub_261CFF9B4();
    sub_261CFD874();
    v24(v7, v23, v4);
    sub_261CFD6C4();
    v25 = sub_261CFCB44();
    v53 = v51;
    v54 = v50;
    v26 = v52;
    sub_261CFCA14();
    v53 = v49;
    LOBYTE(v54) = v48;
    v27 = v38;
    sub_261CFCA14();
    v53 = v47;
    LOBYTE(v54) = v46;
    v28 = v37;
    sub_261CFCA14();
    v53 = v45;
    LOBYTE(v54) = v44;
    v29 = v36;
    sub_261CFCA14();
    v53 = v43;
    LOBYTE(v54) = v42;
    sub_261CFCA14();

    v31 = v41;
    *v22 = v40;
    v22[1] = v31;
    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v28;
    v22[5] = v29;
    v22[6] = v25;
  }

  else
  {
    if (qword_27FED9BD8 != -1)
    {
      swift_once();
    }

    v32 = sub_261CFF7A4();
    __swift_project_value_buffer(v32, qword_27FEDD1A0);
    v33 = sub_261CFF784();
    v34 = sub_261CFFE64();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_261AE2000, v33, v34, "Unable to convert representation to ListBadgeEntity", v35, 2u);
      MEMORY[0x26671D560](v35, -1, -1);
    }

    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

unint64_t sub_261C374EC()
{
  result = qword_27FEDD1B8;
  if (!qword_27FEDD1B8)
  {
    type metadata accessor for ColorEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD1B8);
  }

  return result;
}

id REMRecurrenceRule.init(fromRule:)(uint64_t a1)
{
  v102 = a1;
  v2 = sub_261CFD944();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_261CFD974();
  v90 = *(v104 - 8);
  v7 = *(v90 + 64);
  MEMORY[0x28223BE20](v104);
  v103 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFDA34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFDA44();
  v14 = (*(v10 + 88))(v13, v9);
  v15 = *MEMORY[0x277CC98D0];
  v100 = v3;
  v101 = v2;
  v98 = v6;
  v99 = v1;
  if (v14 == v15)
  {
    goto LABEL_2;
  }

  if (v14 != *MEMORY[0x277CC98B0])
  {
    if (v14 != *MEMORY[0x277CC98A8])
    {
      if (v14 == *MEMORY[0x277CC98B8])
      {
        v16 = 1;
        goto LABEL_5;
      }

      if (v14 == *MEMORY[0x277CC98C8])
      {
        v16 = 2;
        goto LABEL_5;
      }

      if (v14 == *MEMORY[0x277CC98C0])
      {
        v16 = 3;
        goto LABEL_5;
      }

      (*(v10 + 8))(v13, v9);
    }

LABEL_2:
    v97 = 0;
    goto LABEL_6;
  }

  v16 = 4;
LABEL_5:
  v97 = v16;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1C0, &qword_261D0DAF8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1C8, &qword_261D0DB00);
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_261D083A0;
  v21 = v20 + v19;
  v22 = *(v17 + 48);
  v23 = *MEMORY[0x277CC96E0];
  v24 = sub_261CFD864();
  v25 = *(*(v24 - 8) + 104);
  v25(v21, v23, v24);
  *(v21 + v22) = 1;
  v26 = *(v17 + 48);
  v25(v21 + v18, *MEMORY[0x277CC96D8], v24);
  *(v21 + v18 + v26) = 2;
  v27 = *(v17 + 48);
  v25(v21 + 2 * v18, *MEMORY[0x277CC96E8], v24);
  *(v21 + 2 * v18 + v27) = 3;
  v28 = *(v17 + 48);
  v25(v21 + 3 * v18, *MEMORY[0x277CC9700], v24);
  *(v21 + 3 * v18 + v28) = 4;
  v29 = *(v17 + 48);
  v25(v21 + 4 * v18, *MEMORY[0x277CC96F8], v24);
  *(v21 + 4 * v18 + v29) = 5;
  v30 = *(v17 + 48);
  v25(v21 + 5 * v18, *MEMORY[0x277CC96D0], v24);
  *(v21 + 5 * v18 + v30) = 6;
  v31 = v21 + 6 * v18;
  v32 = *(v17 + 48);
  v25(v31, *MEMORY[0x277CC96F0], v24);
  *(v31 + v32) = 7;
  v33 = sub_261C3A008(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v34 = sub_261CFDA24();
  if (*(v34 + 16))
  {
    v35 = v34;
    sub_261CFD104();
    v36 = sub_261C3B410(v35, v33);
  }

  else
  {

    v36 = 0;
  }

  v37 = objc_opt_self();
  v96 = [v37 newObjectID];
  v95 = [v37 newObjectID];
  v94 = [v37 newObjectID];
  v93 = sub_261CFDA14();
  if (v36)
  {
    sub_261B05020(0, &qword_27FEDD1D8, 0x277D44718);
    v92 = sub_261CFFC54();
  }

  else
  {
    v92 = 0;
  }

  v38 = sub_261CFD8E4();
  v39 = *(v38 + 16);
  v40 = MEMORY[0x277D84F90];
  v41 = 0x277CCA000uLL;
  v42 = &unk_279AFB000;
  if (v39)
  {
    v105 = MEMORY[0x277D84F90];
    v43 = 32;
    do
    {
      if ([objc_allocWithZone(MEMORY[0x277CCABB0]) v42[248]])
      {
        MEMORY[0x26671C310]();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = v42;
          v45 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_261CFFC84();
          v42 = v44;
        }

        sub_261CFFCB4();
      }

      v43 += 8;
      --v39;
    }

    while (v39);

    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v91 = sub_261CFFC54();
  }

  else
  {

    v91 = 0;
  }

  v46 = sub_261CFD9B4();
  v47 = *(v46 + 16);
  if (v47)
  {
    v105 = v40;
    v48 = v90 + 16;
    v49 = *(v90 + 16);
    v50 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v90 = v46;
    v51 = v46 + v50;
    v52 = *(v48 + 56);
    v53 = (v48 - 8);
    do
    {
      v55 = v103;
      v54 = v104;
      v49(v103, v51, v104);
      v56 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v57 = (*v53)(v55, v54);
      if (v56)
      {
        MEMORY[0x26671C310](v57);
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v58 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_261CFFC84();
        }

        sub_261CFFCB4();
      }

      v51 += v52;
      --v47;
    }

    while (v47);

    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v104 = sub_261CFFC54();

    v41 = 0x277CCA000;
    v42 = &unk_279AFB000;
    v40 = MEMORY[0x277D84F90];
  }

  else
  {

    v104 = 0;
  }

  v59 = sub_261CFD9A4();
  v60 = *(v59 + 16);
  if (v60)
  {
    v105 = v40;
    v61 = 32;
    do
    {
      if ([objc_allocWithZone(*(v41 + 2992)) v42[248]])
      {
        MEMORY[0x26671C310]();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v62 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_261CFFC84();
        }

        sub_261CFFCB4();
      }

      v61 += 8;
      --v60;
    }

    while (v60);

    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v103 = sub_261CFFC54();
  }

  else
  {

    v103 = 0;
  }

  v63 = sub_261CFD8D4();
  v64 = *(v63 + 16);
  if (v64)
  {
    v105 = v40;
    v65 = 32;
    do
    {
      if ([objc_allocWithZone(*(v41 + 2992)) v42[248]])
      {
        MEMORY[0x26671C310]();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v66 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_261CFFC84();
        }

        sub_261CFFCB4();
      }

      v65 += 8;
      --v64;
    }

    while (v64);

    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v67 = sub_261CFFC54();
  }

  else
  {

    v67 = 0;
  }

  v68 = sub_261CFD8C4();
  v69 = *(v68 + 16);
  if (v69)
  {
    v105 = v40;
    v70 = 32;
    do
    {
      if ([objc_allocWithZone(*(v41 + 2992)) v42[248]])
      {
        MEMORY[0x26671C310]();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v71 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_261CFFC84();
        }

        sub_261CFFCB4();
      }

      v70 += 8;
      --v69;
    }

    while (v69);

    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v69 = sub_261CFFC54();
  }

  v72 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v73 = v98;
  sub_261CFD954();
  v74 = sub_261C4D198();
  (*(v100 + 8))(v73, v101);
  v88 = v69;
  v87 = v67;
  v75 = v103;
  v76 = v67;
  v77 = v104;
  v78 = v91;
  v79 = v92;
  v80 = v72;
  v81 = v96;
  v82 = v69;
  v84 = v94;
  v83 = v95;
  v101 = [v80 initRecurrenceRuleWithObjectID:v96 accountID:v95 reminderID:v94 frequency:v97 interval:v93 firstDayOfTheWeek:0 daysOfTheWeek:v92 daysOfTheMonth:v91 monthsOfTheYear:v104 weeksOfTheYear:v103 daysOfTheYear:v87 setPositions:v88 end:v74];

  v85 = sub_261CFDA54();
  (*(*(v85 - 8) + 8))(v102, v85);
  return v101;
}

uint64_t REMRecurrenceRule.foundationTypeRecurrenceRule.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v144 = a1;
  v142 = sub_261CFDA64();
  v141 = *(v142 - 8);
  v3 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v143 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_261CFD8B4();
  v138 = *(v139 - 8);
  v5 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v140 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_261CFD864();
  v158 = *(v166 - 8);
  v7 = *(v158 + 64);
  MEMORY[0x28223BE20](v166);
  v165 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_261CFD9E4();
  v161 = *(v164 - 8);
  v9 = *(v161 + 64);
  v10 = MEMORY[0x28223BE20](v164);
  v160 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v163 = &v131 - v12;
  v162 = sub_261CFD974();
  v13 = *(v162 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v162);
  v167 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1E0, &qword_261D0DB08);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v131 - v18;
  v20 = sub_261CFD944();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v148 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_261CFDA34();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_261CFDA84();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v137 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFDA74();
  v32 = [v2 frequency];
  if (v32 >= 5)
  {
    goto LABEL_146;
  }

  v33 = **(&unk_279AFA310 + v32);
  v34 = *(v25 + 104);
  v154 = v28;
  v34(v28, v33, v24);
  v35 = [v2 interval];
  v36 = [v2 recurrenceEnd];
  if (v36)
  {
    v37 = v36;
    REMRecurrenceEnd.foundationtypeEnd.getter();

    (*(v21 + 56))(v19, 0, 1, v20);
    (*(v21 + 32))(v148, v19, v20);
  }

  else
  {
    (*(v21 + 56))(v19, 1, 1, v20);
    sub_261CFD924();
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      sub_261C3B8CC(v19);
    }
  }

  v38 = [v2 monthsOfTheYear];
  v152 = v2;
  v136 = v35;
  if (v38)
  {
    v39 = v38;
    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v40 = sub_261CFFC64();

    if (v40 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
    {
      v42 = 0;
      v43 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x26671CA10](v42, v40);
        }

        else
        {
          if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v44 = *(v40 + 8 * v42 + 32);
        }

        v45 = v44;
        v46 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        [v44 integerValue];
        sub_261CFD984();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_261B41824(0, v43[2] + 1, 1, v43);
        }

        v48 = v43[2];
        v47 = v43[3];
        v49 = v43;
        if (v48 >= v47 >> 1)
        {
          v49 = sub_261B41824(v47 > 1, v48 + 1, 1, v43);
        }

        *(v49 + 16) = v48 + 1;
        v43 = v49;
        (*(v13 + 32))(v49 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v48, v167, v162);
        ++v42;
        if (v46 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v43 = MEMORY[0x277D84F90];
LABEL_26:
    v135 = v43;

    v2 = v152;
  }

  else
  {
    v135 = MEMORY[0x277D84F90];
  }

  v50 = [v2 daysOfTheYear];
  if (v50)
  {
    v51 = v50;
    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v52 = sub_261CFFC64();

    if (v52 >> 62)
    {
      goto LABEL_45;
    }

    for (j = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_261D00274())
    {
      v54 = 0;
      v55 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v52 & 0xC000000000000001) != 0)
        {
          v56 = MEMORY[0x26671CA10](v54, v52);
        }

        else
        {
          if (v54 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v56 = *(v52 + 8 * v54 + 32);
        }

        v57 = v56;
        v58 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        v59 = [v56 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_261B41720(0, *(v55 + 2) + 1, 1, v55);
        }

        v61 = *(v55 + 2);
        v60 = *(v55 + 3);
        v62 = v55;
        if (v61 >= v60 >> 1)
        {
          v62 = sub_261B41720((v60 > 1), v61 + 1, 1, v55);
        }

        *(v62 + 2) = v61 + 1;
        v55 = v62;
        *&v62[8 * v61 + 32] = v59;
        ++v54;
        if (v58 == j)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      ;
    }

    v55 = MEMORY[0x277D84F90];
LABEL_47:
    v134 = v55;

    v2 = v152;
  }

  else
  {
    v134 = MEMORY[0x277D84F90];
  }

  v63 = [v2 daysOfTheMonth];
  if (v63)
  {
    v64 = v63;
    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v65 = sub_261CFFC64();

    if (v65 >> 62)
    {
      goto LABEL_66;
    }

    for (k = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_261D00274())
    {
      v67 = 0;
      v68 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v65 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x26671CA10](v67, v65);
        }

        else
        {
          if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v69 = *(v65 + 8 * v67 + 32);
        }

        v70 = v69;
        v71 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        v72 = [v69 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_261B41720(0, *(v68 + 2) + 1, 1, v68);
        }

        v74 = *(v68 + 2);
        v73 = *(v68 + 3);
        v75 = v68;
        if (v74 >= v73 >> 1)
        {
          v75 = sub_261B41720((v73 > 1), v74 + 1, 1, v68);
        }

        *(v75 + 2) = v74 + 1;
        v68 = v75;
        *&v75[8 * v74 + 32] = v72;
        ++v67;
        if (v71 == k)
        {
          goto LABEL_68;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      ;
    }

    v68 = MEMORY[0x277D84F90];
LABEL_68:
    v133 = v68;

    v2 = v152;
  }

  else
  {
    v133 = MEMORY[0x277D84F90];
  }

  v76 = [v2 weeksOfTheYear];
  if (v76)
  {
    v77 = v76;
    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v78 = sub_261CFFC64();

    if (v78 >> 62)
    {
      goto LABEL_87;
    }

    for (m = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10); m; m = sub_261D00274())
    {
      v80 = 0;
      v81 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v78 & 0xC000000000000001) != 0)
        {
          v82 = MEMORY[0x26671CA10](v80, v78);
        }

        else
        {
          if (v80 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          v82 = *(v78 + 8 * v80 + 32);
        }

        v83 = v82;
        v84 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          break;
        }

        v85 = [v82 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_261B41720(0, *(v81 + 2) + 1, 1, v81);
        }

        v87 = *(v81 + 2);
        v86 = *(v81 + 3);
        v88 = v81;
        if (v87 >= v86 >> 1)
        {
          v88 = sub_261B41720((v86 > 1), v87 + 1, 1, v81);
        }

        *(v88 + 2) = v87 + 1;
        v81 = v88;
        *&v88[8 * v87 + 32] = v85;
        ++v80;
        if (v84 == m)
        {
          goto LABEL_89;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      ;
    }

    v81 = MEMORY[0x277D84F90];
LABEL_89:
    v132 = v81;

    v2 = v152;
  }

  else
  {
    v132 = MEMORY[0x277D84F90];
  }

  v89 = [v2 daysOfTheWeek];
  if (v89)
  {
    v90 = v89;
    sub_261B05020(0, &qword_27FEDD1D8, 0x277D44718);
    v91 = sub_261CFFC64();

    if (v91 >> 62)
    {
      goto LABEL_121;
    }

    for (n = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10); n; n = sub_261D00274())
    {
      v93 = 0;
      v167 = (v91 & 0xC000000000000001);
      v162 = v91 & 0xFFFFFFFFFFFFFF8;
      v155 = *MEMORY[0x277CC96E0];
      v159 = (v158 + 104);
      v147 = *MEMORY[0x277CC96F0];
      v151 = *MEMORY[0x277CC96D0];
      v146 = *MEMORY[0x277CC96F8];
      v150 = *MEMORY[0x277CC9700];
      v145 = *MEMORY[0x277CC96E8];
      v157 = (v161 + 104);
      v158 += 32;
      v149 = *MEMORY[0x277CC96D8];
      v94 = (v161 + 32);
      v156 = *MEMORY[0x277CC9890];
      v95 = &unk_279AFB000;
      v153 = *MEMORY[0x277CC9898];
      v96 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v167)
        {
          v97 = MEMORY[0x26671CA10](v93, v91);
        }

        else
        {
          if (v93 >= *(v162 + 16))
          {
            goto LABEL_120;
          }

          v97 = *(v91 + 8 * v93 + 32);
        }

        v98 = v97;
        v99 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          break;
        }

        v100 = [v97 dayOfTheWeek];
        type metadata accessor for REMWeekday(0);
        if (v100 <= 3)
        {
          v101 = v155;
          if (v100 != 1)
          {
            v101 = v149;
            if (v100 != 2)
            {
              v101 = v145;
              if (v100 != 3)
              {
LABEL_144:
                for (ii = v100; ; ii = v130)
                {
                  v32 = sub_261D00634();
                  __break(1u);
LABEL_146:
                  v130 = v32;
                  type metadata accessor for REMRecurrenceFrequency(0);
                }
              }
            }
          }
        }

        else if (v100 > 5)
        {
          v101 = v151;
          if (v100 != 6)
          {
            v101 = v147;
            if (v100 != 7)
            {
              goto LABEL_144;
            }
          }
        }

        else
        {
          v101 = v150;
          if (v100 != 4)
          {
            v101 = v146;
          }
        }

        (*v159)(v165, v101, v166);
        if ([v98 v95[252]])
        {
          v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1E8, &qword_261D0DB10);
          v103 = v91;
          v104 = v160;
          v105 = &v160[*(v102 + 48)];
          v106 = [v98 v95[252]];

          v107 = v104;
          v91 = v103;
          *v107 = v106;
          v108 = v156;
        }

        else
        {

          v107 = v160;
          v105 = v160;
          v108 = v153;
        }

        (*v158)(v105, v165, v166);
        v109 = v164;
        (*v157)(v107, v108, v164);
        v110 = *v94;
        (*v94)(v163, v107, v109);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_261B416F8(0, *(v96 + 2) + 1, 1, v96);
        }

        v112 = *(v96 + 2);
        v111 = *(v96 + 3);
        if (v112 >= v111 >> 1)
        {
          v96 = sub_261B416F8(v111 > 1, v112 + 1, 1, v96);
        }

        *(v96 + 2) = v112 + 1;
        v110(&v96[((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v112], v163, v164);
        ++v93;
        v95 = &unk_279AFB000;
        if (v99 == n)
        {
          goto LABEL_122;
        }
      }

      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      ;
    }

LABEL_122:

    v2 = v152;
  }

  v113 = [v2 setPositions];
  if (v113)
  {
    v114 = v113;
    sub_261B05020(0, &qword_27FEDD1D0, 0x277CCABB0);
    v115 = sub_261CFFC64();

    if (v115 >> 62)
    {
      goto LABEL_141;
    }

    for (jj = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10); jj; jj = sub_261D00274())
    {
      v117 = 0;
      v167 = (v115 & 0xC000000000000001);
      v118 = v115 & 0xFFFFFFFFFFFFFF8;
      v119 = MEMORY[0x277D84F90];
      v120 = v115;
      while (1)
      {
        if (v167)
        {
          v121 = MEMORY[0x26671CA10](v117, v115);
        }

        else
        {
          if (v117 >= *(v118 + 16))
          {
            goto LABEL_140;
          }

          v121 = *(v115 + 8 * v117 + 32);
        }

        v122 = v121;
        v123 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
          break;
        }

        v124 = [v121 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_261B41720(0, *(v119 + 2) + 1, 1, v119);
        }

        v126 = *(v119 + 2);
        v125 = *(v119 + 3);
        if (v126 >= v125 >> 1)
        {
          v119 = sub_261B41720((v125 > 1), v126 + 1, 1, v119);
        }

        *(v119 + 2) = v126 + 1;
        *&v119[8 * v126 + 32] = v124;
        ++v117;
        v115 = v120;
        if (v123 == jj)
        {
          goto LABEL_142;
        }
      }

      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      ;
    }

LABEL_142:
  }

  (*(v138 + 104))(v140, *MEMORY[0x277CC9868], v139);
  (*(v141 + 104))(v143, *MEMORY[0x277CC9900], v142);
  v127 = v144;
  sub_261CFDA04();
  v128 = sub_261CFDA54();
  return (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
}

uint64_t REMRecurrenceFrequency.foundationTypeFrequency.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 5)
  {
    type metadata accessor for REMRecurrenceFrequency(0);
    result = sub_261D00634();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_279AFA310 + a1);
    v4 = sub_261CFDA34();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

uint64_t REMRecurrenceEnd.foundationtypeEnd.getter()
{
  v1 = v0;
  v2 = sub_261CFD7E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = [v1 endDate];
  if (v10)
  {
    v11 = v10;
    sub_261CFD7C4();

    (*(v3 + 32))(v9, v7, v2);
    sub_261CFD934();
    return (*(v3 + 8))(v9, v2);
  }

  v13 = [v1 occurrenceCount];
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return MEMORY[0x28211E0C8]();
  }

  if (v13)
  {

    return MEMORY[0x28211E0C8]();
  }

  return sub_261CFD924();
}

uint64_t REMRecurrenceDayOfWeek.foundationtypeWeekday.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261CFD864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 dayOfTheWeek];
  if ((v9 - 1) >= 7)
  {
    v15 = v9;
    type metadata accessor for REMWeekday(0);
    v16[1] = v15;
    result = sub_261D00634();
    __break(1u);
  }

  else
  {
    (*(v5 + 104))(v8, **(&unk_279AFA338 + (v9 - 1)), v4);
    if ([v2 weekNumber])
    {
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1E8, &qword_261D0DB10) + 48);
      *a1 = [v2 weekNumber];
      (*(v5 + 32))(&a1[v10], v8, v4);
      v11 = MEMORY[0x277CC9890];
    }

    else
    {
      (*(v5 + 32))(a1, v8, v4);
      v11 = MEMORY[0x277CC9898];
    }

    v12 = *v11;
    v13 = sub_261CFD9E4();
    return (*(*(v13 - 8) + 104))(a1, v12, v13);
  }

  return result;
}

unint64_t sub_261C39864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2C0, &unk_261D021F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2C8, &unk_261D0DBA8);
    v8 = sub_261D00544();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v10, v6, &qword_27FEDD2C0, &unk_261D021F0);
      result = sub_261B37AEC(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_261CFD0B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_261C39A4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2B0, &qword_261D021E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2B8, &qword_261D0DBA0);
    v8 = sub_261D00544();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v10, v6, &qword_27FEDD2B0, &qword_261D021E0);
      result = sub_261B37B8C(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_261CFD0B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_261C39C34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2A0, &qword_261D021C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2A8, &qword_261D0DB98);
    v8 = sub_261D00544();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v10, v6, &qword_27FEDD2A0, &qword_261D021C8);
      result = sub_261B37C38(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_261CFD0B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_261C39E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD230, &qword_261D0F9D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD238, &qword_261D0DB60);
    v8 = sub_261D00544();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v10, v6, &qword_27FEDD230, &qword_261D0F9D0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_261B37CE8(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_261CFD6A4();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_261C3A008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1C8, &qword_261D0DB00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD298, &qword_261D0DB90);
    v8 = sub_261D00544();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v10, v6, &qword_27FEDD1C8, &qword_261D0DB00);
      result = sub_261B37D60(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_261CFD864();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_261C3A1F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB530, &qword_261D06A58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD290, &qword_261D0DB88);
    v8 = sub_261D00544();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_261CFCDA4();
    while (1)
    {
      sub_261AFB668(v10, v6, &qword_27FEDB530, &qword_261D06A58);
      result = sub_261B37E0C(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_261CFD0B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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