__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25F56C4FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F56C51C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_25F56C558()
{
  v0 = sub_25F5E3FB4();
  __swift_allocate_value_buffer(v0, qword_27FD9EA20);
  __swift_project_value_buffer(v0, qword_27FD9EA20);
  return sub_25F5E3FA4();
}

uint64_t sub_25F56C5D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_25F56C678(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_25F56C6A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25F56C6D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_25F56C7DC(uint64_t a1, id *a2)
{
  result = sub_25F5E43D4();
  *a2 = 0;
  return result;
}

uint64_t sub_25F56C854(uint64_t a1, id *a2)
{
  v3 = sub_25F5E43E4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25F56C8D4@<X0>(uint64_t *a1@<X8>)
{
  sub_25F5E43F4();
  v2 = sub_25F5E43C4();

  *a1 = v2;
  return result;
}

uint64_t sub_25F56C918()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_25F5E38D4();
}

uint64_t sub_25F56C964()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_25F5E38C4();
}

uint64_t sub_25F56C9BC()
{
  sub_25F5E4C34();
  v1 = *v0;
  swift_getWitnessTable();
  sub_25F5E38C4();
  return sub_25F5E4C54();
}

uint64_t sub_25F56CA24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25F56D0A8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_25F56CA7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_25F5E38B4();
}

uint64_t sub_25F56CAEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25F5E43F4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25F56CB18(uint64_t a1)
{
  v2 = sub_25F56CC74(&qword_27FD9D9D0, type metadata accessor for ECMessageHeaderKey);
  v3 = sub_25F56CC74(&qword_27FD9D9D8, type metadata accessor for ECMessageHeaderKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void *sub_25F56CBD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25F56CC74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F56CD4C(uint64_t a1)
{
  v2 = sub_25F56CC74(&qword_27FD9D9F0, type metadata accessor for DocumentReadingOptionKey);
  v3 = sub_25F56CC74(&qword_27FD9D9F8, type metadata accessor for DocumentReadingOptionKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25F56CE08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F5E43C4();

  *a2 = v5;
  return result;
}

uint64_t sub_25F56CE50(uint64_t a1)
{
  v2 = sub_25F56CC74(&qword_27FD9D9E0, type metadata accessor for DocumentType);
  v3 = sub_25F56CC74(&qword_27FD9D9E8, type metadata accessor for DocumentType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25F56CF18()
{
  v1 = *v0;
  v2 = sub_25F5E43F4();
  v3 = MEMORY[0x25F8E2C30](v2);

  return v3;
}

uint64_t sub_25F56CF54()
{
  v1 = *v0;
  sub_25F5E43F4();
  sub_25F5E4334();
}

uint64_t sub_25F56CFA8()
{
  v1 = *v0;
  sub_25F5E43F4();
  sub_25F5E4C34();
  sub_25F5E4334();
  v2 = sub_25F5E4C54();

  return v2;
}

uint64_t sub_25F56D020(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25F5E43F4();
  v6 = v5;
  if (v4 == sub_25F5E43F4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F5E4B84();
  }

  return v9 & 1;
}

uint64_t sub_25F56D0A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_25F56D1E0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_25F56D580()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20481);
  return sub_25F5E4C54();
}

uint64_t sub_25F56D600()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20481);
  return sub_25F5E4C54();
}

uint64_t sub_25F56D648@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F571338(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25F56D68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F573984();
  v5 = sub_25F5739D8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_25F56D750(uint64_t a1)
{
  v2 = sub_25F5715DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56D78C(uint64_t a1)
{
  v2 = sub_25F5715DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F56D810()
{
  v1 = 7630441;
  v2 = 0x676E69727473;
  if (*v0 != 2)
  {
    v2 = 1819242338;
  }

  if (*v0)
  {
    v1 = 0x74616F6C66;
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

uint64_t sub_25F56D874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F57191C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F56D8A8(uint64_t a1)
{
  v2 = sub_25F571588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56D8E4(uint64_t a1)
{
  v2 = sub_25F571588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F56D920(uint64_t a1)
{
  v2 = sub_25F571684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56D95C(uint64_t a1)
{
  v2 = sub_25F571684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F56D998(uint64_t a1)
{
  v2 = sub_25F5716D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56D9D4(uint64_t a1)
{
  v2 = sub_25F5716D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F56DA10()
{
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](0);
  return sub_25F5E4C54();
}

uint64_t sub_25F56DA54()
{
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](0);
  return sub_25F5E4C54();
}

uint64_t sub_25F56DA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F5E4B84();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F56DB14(uint64_t a1)
{
  v2 = sub_25F571630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56DB50(uint64_t a1)
{
  v2 = sub_25F571630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetadataType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v66 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAC0, &qword_25F5E5F00);
  v65 = *(v63 - 8);
  v3 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v68 = &v55[-v4];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAC8, &qword_25F5E5F08);
  v64 = *(v62 - 8);
  v5 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v67 = &v55[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAD0, &qword_25F5E5F10);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v55[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAD8, &qword_25F5E5F18);
  v59 = *(v12 - 8);
  v13 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v55[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAE0, &qword_25F5E5F20);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v55[-v19];
  v21 = a1[3];
  v22 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v21);
  sub_25F571588();
  v23 = v69;
  sub_25F5E4C74();
  if (!v23)
  {
    v57 = v12;
    v58 = v20;
    v24 = v67;
    v25 = v68;
    v69 = v17;
    v26 = sub_25F5E4B04();
    v27 = *(v26 + 16);
    if (!v27 || ((v28 = *(v26 + 32), v27 == 1) ? (v29 = v28 == 4) : (v29 = 1), v29))
    {
      v30 = sub_25F5E4994();
      swift_allocError();
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAF0, &qword_25F5E5F28) + 48);
      *v32 = &type metadata for MetadataType;
      v34 = v58;
      sub_25F5E4A34();
      sub_25F5E4984();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v69 + 8))(v34, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v26 + 32) > 1u)
      {
        v56 = *(v26 + 32);
        v29 = v28 == 2;
        v37 = v69;
        if (v29)
        {
          v73 = 2;
          sub_25F571630();
          v38 = v24;
          v39 = v58;
          sub_25F5E4A24();
          v40 = v62;
          v48 = sub_25F5E4A94();
          v41 = v38;
          v47 = v52;
          (*(v64 + 8))(v41, v40);
          (*(v37 + 8))(v39, v16);
          swift_unknownObjectRelease();
        }

        else
        {
          v74 = 3;
          sub_25F5715DC();
          v43 = v58;
          sub_25F5E4A24();
          v44 = v63;
          v53 = sub_25F5E4AA4();
          (*(v65 + 8))(v25, v44);
          (*(v37 + 8))(v43, v16);
          swift_unknownObjectRelease();
          v47 = 0;
          v48 = v53 & 1;
        }
      }

      else if (*(v26 + 32))
      {
        v56 = *(v26 + 32);
        v72 = 1;
        sub_25F571684();
        v42 = v58;
        sub_25F5E4A24();
        v49 = v60;
        sub_25F5E4AB4();
        v51 = v50;
        (*(v61 + 8))(v11, v49);
        (*(v69 + 8))(v42, v16);
        swift_unknownObjectRelease();
        v47 = 0;
        v48 = v51;
      }

      else
      {
        v71 = 0;
        sub_25F5716D8();
        v35 = v15;
        v36 = v58;
        sub_25F5E4A24();
        v56 = 0;
        v46 = v57;
        LODWORD(v48) = sub_25F5E4AE4();
        (*(v59 + 8))(v35, v46);
        (*(v69 + 8))(v36, v16);
        swift_unknownObjectRelease();
        v47 = 0;
        v48 = v48;
      }

      v54 = v66;
      *v66 = v48;
      v54[1] = v47;
      *(v54 + 16) = v56;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v70);
}

uint64_t MetadataEncodingParameters.metadataMorpheusProgram.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MetadataEncodingParameters.metadataMorpheusProgram.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MetadataEncodingParameters.metadataMorpheusProgramName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MetadataEncodingParameters.metadataMorpheusProgramName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MetadataEncodingParameters.categoryNames.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t MetadataEncodingParameters.nearestNeighborDistanceName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MetadataEncodingParameters.nearestNeighborDistanceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MetadataEncodingParameters.getMorpeusProgram(task:)()
{
  v2 = *(*(sub_25F5E4444() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = *(sub_25F5E3554() - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20]();
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[1])
  {
    v8 = *v0;
    sub_25F5E4024();
    return sub_25F5E4014();
  }

  v10 = v0[3];
  if (!v10)
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v17 = sub_25F5E3FB4();
    __swift_project_value_buffer(v17, qword_27FD9EA20);
    v18 = sub_25F5E3F94();
    v19 = sub_25F5E47B4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25F56A000, v18, v19, "Cannot find metadataMorpheusProgram or metadataMorpheusProgramName in MetadataEncodingParameters.", v20, 2u);
      MEMORY[0x25F8E3B70](v20, -1, -1);
    }

    sub_25F57172C();
    swift_allocError();
    v22 = 1;
    goto LABEL_19;
  }

  v11 = v5;
  v12 = v0[2];
  v13 = v0[3];
  sub_25F5E3D14();
  if (!v14)
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v23 = sub_25F5E3FB4();
    __swift_project_value_buffer(v23, qword_27FD9EA20);

    v24 = sub_25F5E3F94();
    v25 = sub_25F5E47B4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v52 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_25F570AF8(v12, v10, &v52);
      _os_log_impl(&dword_25F56A000, v24, v25, "Morpheus Program attachment %s not found.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x25F8E3B70](v27, -1, -1);
      MEMORY[0x25F8E3B70](v26, -1, -1);
    }

    v28 = sub_25F5E3F94();
    v29 = sub_25F5E47A4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52 = v31;
      *v30 = 136315138;
      sub_25F5E3D04();
      v32 = MEMORY[0x25F8E2CF0]();
      v34 = v33;

      v35 = sub_25F570AF8(v32, v34, &v52);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_25F56A000, v28, v29, "Task attachments = %s.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x25F8E3B70](v31, -1, -1);
      MEMORY[0x25F8E3B70](v30, -1, -1);
    }

    sub_25F57172C();
    swift_allocError();
    v22 = 2;
LABEL_19:
    *v21 = v22;
    return swift_willThrow();
  }

  sub_25F5E3504();

  v15 = sub_25F5E3574();
  if (v1)
  {
    return (*(v3 + 8))(v7, v11);
  }

  v36 = v15;
  v37 = v16;
  (*(v3 + 8))(v7, v11);
  sub_25F5E4424();
  v38 = sub_25F5E4414();
  if (v39)
  {
    v51[4] = v38;
    v51[5] = v39;
    v51[2] = 10;
    v51[3] = 0xE100000000000000;
    v51[0] = 28252;
    v51[1] = 0xE200000000000000;
    sub_25F571874();
    sub_25F5718C8();
    sub_25F5E4714();

    sub_25F5E4024();
    v40 = sub_25F5E4014();

    sub_25F571820(v36, v37);
    return v40;
  }

  else
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v41 = sub_25F5E3FB4();
    __swift_project_value_buffer(v41, qword_27FD9EA20);
    sub_25F5717CC(v36, v37);
    v42 = sub_25F5E3F94();
    v43 = sub_25F5E47B4();
    sub_25F571820(v36, v37);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52 = v45;
      *v44 = 136315138;
      sub_25F5717CC(v36, v37);
      v46 = sub_25F5E3584();
      v48 = v47;
      sub_25F571820(v36, v37);
      v49 = sub_25F570AF8(v46, v48, &v52);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_25F56A000, v42, v43, "Morpheus Program decoding failed: %s.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x25F8E3B70](v45, -1, -1);
      MEMORY[0x25F8E3B70](v44, -1, -1);
    }

    sub_25F57172C();
    swift_allocError();
    *v50 = 3;
    swift_willThrow();
    return sub_25F571820(v36, v37);
  }
}

uint64_t sub_25F56EC88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F5E3D14();
  if (v6)
  {
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v7 = sub_25F5E3FB4();
    __swift_project_value_buffer(v7, qword_27FD9EA20);

    v8 = sub_25F5E3F94();
    v9 = sub_25F5E47B4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_25F570AF8(v4, v3, &v23);
      _os_log_impl(&dword_25F56A000, v8, v9, "Categories attachment %s not found.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x25F8E3B70](v11, -1, -1);
      MEMORY[0x25F8E3B70](v10, -1, -1);
    }

    v12 = sub_25F5E3F94();
    v13 = sub_25F5E47A4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = sub_25F5E3D04();
      v17 = sub_25F5E3554();
      v18 = MEMORY[0x25F8E2CF0](v16, v17);
      v20 = v19;

      v21 = sub_25F570AF8(v18, v20, &v23);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_25F56A000, v12, v13, "Task attachments = %s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x25F8E3B70](v15, -1, -1);
      MEMORY[0x25F8E3B70](v14, -1, -1);
    }

    sub_25F57172C();
    swift_allocError();
    *v22 = 4;
    return swift_willThrow();
  }

  return result;
}

unint64_t MetadataEncodingParameters.getMorpeusProgramKeywords(task:)()
{
  v2 = *(v0 + 32);
  result = sub_25F571A78(MEMORY[0x277D84F90]);
  if (v2)
  {
    v4 = result;

    v5 = sub_25F571BA8(v2);
    if (v1)
    {
    }

    else
    {
      v6 = v5;

      sub_25F5E3C24();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB30, &qword_25F5E5F30);
      *&v9 = v6;
      sub_25F571D88(&v9, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_25F5710A0(v8, 0x79726F6765746163, 0xEE0073687461705FLL, isUniquelyReferenced_nonNull_native);
      return v4;
    }
  }

  return result;
}

uint64_t sub_25F56F038()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1);
  return sub_25F5E4C54();
}

uint64_t sub_25F56F080()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1);
  return sub_25F5E4C54();
}

unint64_t sub_25F56F0C4()
{
  v1 = 0x79726F6765746163;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001BLL;
  }

  v2 = 0xD000000000000017;
  if (*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25F56F154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F572958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F56F17C(uint64_t a1)
{
  v2 = sub_25F571D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56F1B8(uint64_t a1)
{
  v2 = sub_25F571D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetadataEncodingParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB38, &qword_25F5E5F38);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F571D98();
  sub_25F5E4C74();
  if (!v2)
  {
    v35 = 0;
    v11 = sub_25F5E4A44();
    v14 = v13;
    v30 = v11;
    v34 = 1;
    v15 = sub_25F5E4A44();
    v17 = v16;
    v29 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB30, &qword_25F5E5F30);
    v33 = 2;
    sub_25F571DEC();
    sub_25F5E4A84();
    v28 = a2;
    v18 = v31;
    v32 = 3;
    v19 = sub_25F5E4A44();
    v21 = v20;
    v22 = *(v6 + 8);
    v27 = v19;
    v22(v9, v5);
    v23 = v28;
    v24 = v29;
    *v28 = v30;
    v23[1] = v14;
    v23[2] = v24;
    v23[3] = v17;
    v25 = v27;
    v23[4] = v18;
    v23[5] = v25;
    v23[6] = v21;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_25F56F51C(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  sub_25F573A4C(a1, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC80, &qword_25F5E68E0);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC88, &qword_25F5E68E8);
    if (swift_dynamicCast())
    {
      sub_25F573A2C(&v74, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_25F5E5EE0;
      v15 = v72;
      v16 = __swift_project_boxed_opaque_existential_1Tm(v71, v72);
      v17 = *(*(v15 - 8) + 64);
      MEMORY[0x28223BE20](v16, v16);
      (*(v19 + 16))(v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_25F573AEC();
      sub_25F5E42E4();
      *(v5 + 32) = v77;
      *(v5 + 40) = 0;
      *(v5 + 48) = 1;
      goto LABEL_45;
    }

    if (swift_dynamicCast())
    {
      v20 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_25F5E5EE0;
      *(v5 + 32) = v20;
      *(v5 + 40) = 0;
      *(v5 + 48) = 3;
      goto LABEL_46;
    }

    if (swift_dynamicCast())
    {
      v21 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_25F5E5EE0;
      *(v5 + 32) = v21;
      *(v5 + 48) = 2;
      goto LABEL_46;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC90, &qword_25F5E68F0);
    if (!swift_dynamicCast())
    {
      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      sub_25F5E49B4();
      v2 = 0;
      v5 = 0xE000000000000000;
      if (qword_27FD9D8B0 != -1)
      {
        goto LABEL_78;
      }

      goto LABEL_30;
    }

    v5 = v71[0];
    v26 = *(v71[0] + 16);
    if (v26)
    {
      v77 = MEMORY[0x277D84F90];
      sub_25F5711F0(0, v26, 0);
      v27 = 0;
      v4 = v77;
      v2 = v71[0] + 32;
      do
      {
        if (v27 >= *(v5 + 16))
        {
          goto LABEL_74;
        }

        sub_25F573A4C(v2, &v74);
        v28 = sub_25F56F51C(&v74);
        if (v1)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v74);

          goto LABEL_46;
        }

        v29 = v28;
        __swift_destroy_boxed_opaque_existential_1Tm(&v74);
        v77 = v4;
        v31 = *(v4 + 16);
        v30 = *(v4 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_25F5711F0((v30 > 1), v31 + 1, 1);
          v4 = v77;
        }

        ++v27;
        *(v4 + 16) = v31 + 1;
        *(v4 + 8 * v31 + 32) = v29;
        v2 += 32;
      }

      while (v26 != v27);
    }

    else
    {

      v4 = MEMORY[0x277D84F90];
    }

    v57 = *(v4 + 16);
    if (!v57)
    {
      v5 = MEMORY[0x277D84F90];
LABEL_70:

      goto LABEL_46;
    }

    v58 = 0;
    v70 = (v4 + 32);
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v58 >= *(v4 + 16))
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        swift_once();
LABEL_30:
        v32 = sub_25F5E3FB4();
        __swift_project_value_buffer(v32, qword_27FD9EA20);
        sub_25F573A4C(v4, &v74);

        v33 = sub_25F5E3F94();
        v34 = sub_25F5E47B4();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v71[0] = v36;
          *v35 = 136315394;
          v37 = sub_25F570AF8(v2, v5, v71);

          *(v35 + 4) = v37;
          *(v35 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1Tm(&v74, v75);
          swift_getDynamicType();
          v38 = sub_25F5E4D04();
          v40 = v39;
          __swift_destroy_boxed_opaque_existential_1Tm(&v74);
          v5 = sub_25F570AF8(v38, v40, v71);

          *(v35 + 14) = v5;
          _os_log_impl(&dword_25F56A000, v33, v34, "Cannot cast %s with type %s to MetadataType.", v35, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F8E3B70](v36, -1, -1);
          MEMORY[0x25F8E3B70](v35, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v74);
        }

        sub_25F57172C();
        swift_allocError();
        *v56 = 0;
        swift_willThrow();
        goto LABEL_46;
      }

      v59 = v70[v58];
      v2 = *(v59 + 16);
      v60 = *(v5 + 16);
      v61 = v60 + v2;
      if (__OFADD__(v60, v2))
      {
        goto LABEL_72;
      }

      v62 = v70[v58];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v61 <= *(v5 + 24) >> 1)
      {
        if (!*(v59 + 16))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v60 <= v61)
        {
          v64 = v60 + v2;
        }

        else
        {
          v64 = v60;
        }

        v5 = sub_25F5782CC(isUniquelyReferenced_nonNull_native, v64, 1, v5);
        if (!*(v59 + 16))
        {
LABEL_53:

          if (v2)
          {
            goto LABEL_73;
          }

          goto LABEL_54;
        }
      }

      if ((*(v5 + 24) >> 1) - *(v5 + 16) < v2)
      {
        goto LABEL_75;
      }

      swift_arrayInitWithCopy();

      if (v2)
      {
        v65 = *(v5 + 16);
        v66 = __OFADD__(v65, v2);
        v67 = v65 + v2;
        if (v66)
        {
          goto LABEL_76;
        }

        *(v5 + 16) = v67;
      }

LABEL_54:
      if (v57 == ++v58)
      {
        goto LABEL_70;
      }
    }
  }

  sub_25F573A2C(&v74, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25F5E5EE0;
  v6 = v72;
  v2 = v73;
  v7 = __swift_project_boxed_opaque_existential_1Tm(v71, v72);
  v8 = v68;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7, v7);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  if ((sub_25F5E48B4() & 1) != 0 && sub_25F5E48A4() > 32)
  {
    LODWORD(v77) = 0x80000000;
    if (sub_25F5E48B4())
    {
      v12 = sub_25F5E48A4();
      if (v12 >= 32)
      {
        v69 = v68;
        MEMORY[0x28223BE20](v12, v13);
        v70 = v1;
        sub_25F573B40();
        sub_25F5E4884();
        v14 = *(*(v2 + 32) + 8);
        v4 = sub_25F5E4374();
        v8 = v68;
        v3 = v70;
        (*(v9 + 8))(v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v4)
        {
          goto LABEL_77;
        }

        goto LABEL_34;
      }

      goto LABEL_28;
    }

    v70 = v68;
    v22 = sub_25F5E48B4();
    v23 = sub_25F5E48A4();
    if (v22)
    {
      if (v23 <= 32)
      {
        v69 = *(*(v2 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v68[3] = v68;
        v42 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness, v43);
        v68[1] = v68 - v44;
        swift_getAssociatedConformanceWitness();
        v45 = sub_25F5E4BA4();
        v68[2] = v68;
        MEMORY[0x28223BE20](v45, v46);
        sub_25F5E4B64();
        v47 = *(*(v2 + 32) + 8);
        v4 = sub_25F5E4374();
        (*(v9 + 8))(v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v4)
        {
          goto LABEL_77;
        }

        sub_25F5E4894();
        v8 = v70;
      }

      else
      {
        v69 = v68;
        MEMORY[0x28223BE20](v23, v24);
        sub_25F573B40();
        sub_25F5E4884();
        v25 = *(*(v2 + 32) + 8);
        v4 = sub_25F5E4374();
        (*(v9 + 8))(v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        v8 = v70;
        if (v4)
        {
          goto LABEL_77;
        }
      }

      goto LABEL_34;
    }

    v8 = v70;
    if (v23 < 32)
    {
LABEL_28:
      sub_25F5E4894();
    }
  }

LABEL_34:
  if (sub_25F5E48A4() <= 32)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v70 = v3;
    v48 = v8;
    LODWORD(v77) = 0x7FFFFFFF;
    v49 = sub_25F5E48B4();
    v50 = sub_25F5E48A4();
    if ((v49 & 1) == 0)
    {
      break;
    }

    if (v50 < 33)
    {
      goto LABEL_43;
    }

LABEL_37:
    MEMORY[0x28223BE20](v50, v51);
    v10 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25F573B40();
    sub_25F5E4884();
    v52 = *(*(v2 + 32) + 8);
    v53 = sub_25F5E4374();
    (*(v9 + 8))(v10, v6);
    v8 = v48;
    v3 = v70;
    if (v53)
    {
      __break(1u);
LABEL_39:
      if (sub_25F5E48A4() == 32 && (sub_25F5E48B4() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_44;
  }

  if (v50 >= 32)
  {
    goto LABEL_37;
  }

LABEL_43:
  sub_25F5E4894();
LABEL_44:
  v54 = sub_25F5E4894();
  (*(v9 + 8))(v11, v6);
  *(v5 + 32) = v54;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
LABEL_45:
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
LABEL_46:
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  return v5;
}

uint64_t sub_25F5701E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC10, &unk_25F5E6870);
  result = sub_25F5E49D4();
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v25 = result + 64;
  v28 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_25F573A4C(*(v26 + 56) + 32 * v15, v27);

      v19 = sub_25F56F51C(v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      if (v1)
      {
        break;
      }

      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v28;
      v20 = (*(v28 + 48) + 16 * v15);
      *v20 = v17;
      v20[1] = v18;
      *(*(result + 56) + 8 * v15) = v19;
      v21 = *(result + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_17;
      }

      *(result + 16) = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v24 = v28;

    return v24;
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return result;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ExtractedItem.addMetadata(_:override:)(Swift::OpaquePointer _, Swift::Bool override)
{
  v5 = sub_25F5701E8(_._rawValue);
  if (!v3)
  {
    v6 = v5;
    v7 = *(type metadata accessor for ExtractedItem(0) + 40);
    v8 = *(v2 + v7);
    if (override)
    {

      *(v2 + v7) = v6;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *(v2 + v7);
      sub_25F572AD0(v6, sub_25F5712F0, 0, isUniquelyReferenced_nonNull_native, &v10);

      *(v2 + v7) = v10;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ExtractedItem.addDefaultMetadata()()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F5E5EF0;
  *(inited + 32) = 0x7364726F576D756ELL;
  *(inited + 40) = 0xE800000000000000;
  v4 = type metadata accessor for ExtractedItem(0);
  v5 = (v0 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  v8 = sub_25F5D1470(0, 0, 0x7FFFFFFFFFFFFFFFLL, *v5, v7);
  v9 = MEMORY[0x277D83B88];
  *(inited + 48) = v8;
  *(inited + 72) = v9;
  strcpy((inited + 80), "numSentences");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = sub_25F5D1470(1, 0, 0x7FFFFFFFFFFFFFFFLL, v6, v7);
  *(inited + 120) = v9;
  strcpy((inited + 128), "numCharacters");
  *(inited + 142) = -4864;
  v10 = sub_25F5E44C4();
  *(inited + 168) = v9;
  *(inited + 144) = v10;
  v11 = sub_25F571A78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E6B0, &unk_25F5E85A0);
  swift_arrayDestroy();
  v12 = *(v2 + v4[6]);
  if (v12)
  {
    if (*(v12 + 16))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
      *&v22 = v12;
      sub_25F571D88(&v22, v21);

      goto LABEL_7;
    }

    v23 = MEMORY[0x277D837D0];
    v13 = 0x5D5954504D455BLL;
    v14 = 0xE700000000000000;
  }

  else
  {
    v23 = MEMORY[0x277D837D0];
    v13 = 0x5D4C494E5BLL;
    v14 = 0xE500000000000000;
  }

  *&v22 = v13;
  *(&v22 + 1) = v14;
  sub_25F571D88(&v22, v21);
LABEL_7:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v11;
  sub_25F5710A0(v21, 1936154996, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v16 = sub_25F5701E8(v24);
  if (v1)
  {
  }

  else
  {
    v17 = v4[10];
    v18 = *(v2 + v17);
    v19 = v16;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *&v22 = *(v2 + v17);
    sub_25F572AD0(v19, sub_25F5712F0, 0, v20, &v22);

    *(v2 + v17) = v22;
  }
}

uint64_t ExtractedItem.getMetadataAsAny()()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedItem(0) + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB60, &qword_25F5E5F58);
  result = sub_25F5E49D4();
  v3 = result;
  v4 = 0;
  v5 = v1 + 64;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 64);
  v9 = (v6 + 63) >> 6;
  v30 = result + 64;
  v31 = v1;
  v29 = result;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v33 = (v8 - 1) & v8;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v31 + 48) + 16 * v13);
      v15 = v14[1];
      v34 = *v14;
      v16 = *(*(v31 + 56) + 8 * v13);
      v17 = *(v16 + 16);
      if (v17)
      {
        v37 = MEMORY[0x277D84F90];
        v32 = v15;

        sub_25F571210(0, v17, 0);
        v18 = v37;
        v19 = (v16 + 48);
        do
        {
          v20 = *(v19 - 2);
          if (*v19 > 1u)
          {
            if (*v19 == 2)
            {
              v22 = *(v19 - 1);
              v36 = MEMORY[0x277D837D0];
              *&v35 = v20;
              *(&v35 + 1) = v22;
            }

            else
            {
              v36 = MEMORY[0x277D839B0];
              LOBYTE(v35) = v20 & 1;
            }
          }

          else
          {
            if (*v19)
            {
              v21 = MEMORY[0x277D83A90];
            }

            else
            {
              v21 = MEMORY[0x277D849A8];
            }

            v36 = v21;
            LODWORD(v35) = v20;
          }

          v37 = v18;
          v24 = *(v18 + 16);
          v23 = *(v18 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_25F571210((v23 > 1), v24 + 1, 1);
            v18 = v37;
          }

          v19 += 24;
          *(v18 + 16) = v24 + 1;
          sub_25F571D88(&v35, (v18 + 32 * v24 + 32));
          --v17;
        }

        while (v17);

        v3 = v29;
        result = v32;
      }

      else
      {

        v18 = MEMORY[0x277D84F90];
      }

      *(v30 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v25 = (v3[6] + 16 * v13);
      *v25 = v34;
      v25[1] = result;
      *(v3[7] + 8 * v13) = v18;
      v26 = v3[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v3[2] = v28;
      v8 = v33;
      if (!v33)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return v3;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v33 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_25F5709C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25F5E4C34();
  sub_25F5E4334();
  v6 = sub_25F5E4C54();

  return sub_25F570A40(a1, a2, v6);
}

unint64_t sub_25F570A40(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25F5E4B84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_25F570AF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F570BC4(v11, 0, 0, 1, a1, a2);
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
    sub_25F573A4C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25F570BC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25F570CD0(a5, a6);
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
    result = sub_25F5E49A4();
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

uint64_t sub_25F570CD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F570D1C(a1, a2);
  sub_25F570E4C(&unk_2871943F0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25F570D1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_25F570F38(v5, 0);
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

  result = sub_25F5E49A4();
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
        v10 = sub_25F5E4524();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F570F38(v10, 0);
        result = sub_25F5E4924();
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

uint64_t sub_25F570E4C(uint64_t result)
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

  result = sub_25F570FAC(result, v12, 1, v3);
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

void *sub_25F570F38(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCB0, &unk_25F5E71C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F570FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCB0, &unk_25F5E71C0);
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

_OWORD *sub_25F5710A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25F5709C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25F57AAC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25F579030(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25F5709C8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25F5E4BC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_25F571D88(a1, v23);
  }

  else
  {
    sub_25F57AA10(v11, a2, a3, a1, v22);
  }
}

void *sub_25F5711F0(void *a1, int64_t a2, char a3)
{
  result = sub_25F5C67C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F571210(char *a1, int64_t a2, char a3)
{
  result = sub_25F5C68F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F571230(char *a1, int64_t a2, char a3)
{
  result = sub_25F5C6A08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25F571250(size_t a1, int64_t a2, char a3)
{
  result = sub_25F5C6B14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F571270(char *a1, int64_t a2, char a3)
{
  result = sub_25F5C6B3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F571290(char *a1, int64_t a2, char a3)
{
  result = sub_25F5C6C40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25F5712B0(size_t a1, int64_t a2, char a3)
{
  result = sub_25F5C6D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25F5712D0(size_t a1, int64_t a2, char a3)
{
  result = sub_25F5C6F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25F5712F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_25F571338(uint64_t a1)
{
  if ((a1 - 20481) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 20481;
  }
}

uint64_t _s8PriMLETL12MetadataTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v7 == 1)
      {
        sub_25F573C18(*a1, v3, 1);
        sub_25F573C18(v5, v6, 1);
        v8 = *&v2 == *&v5;
        return v8 & 1;
      }
    }

    else if (!*(a2 + 16))
    {
      sub_25F573C18(*a1, v3, 0);
      sub_25F573C18(v5, v6, 0);
      v8 = v2 == v5;
      return v8 & 1;
    }

LABEL_17:
    sub_25F573C00(v5, v6, v7);
    sub_25F573C18(v2, v3, v4);
    sub_25F573C18(v5, v6, v7);
    v8 = 0;
    return v8 & 1;
  }

  if (v4 != 2)
  {
    if (v7 == 3)
    {
      sub_25F573C18(*a1, v3, 3);
      sub_25F573C18(v5, v6, 3);
      v8 = v5 ^ v2 ^ 1;
      return v8 & 1;
    }

    goto LABEL_17;
  }

  if (v7 != 2)
  {
    v13 = *(a1 + 8);

    goto LABEL_17;
  }

  v9 = *a1;
  if (v2 != v5 || v3 != v6)
  {
    v11 = sub_25F5E4B84();
    sub_25F573C00(v5, v6, 2);
    sub_25F573C00(v2, v3, 2);
    sub_25F573C18(v2, v3, 2);
    sub_25F573C18(v5, v6, 2);
    return v11 & 1;
  }

  sub_25F573C00(v9, v3, 2);
  sub_25F573C00(v2, v3, 2);
  sub_25F573C18(v2, v3, 2);
  sub_25F573C18(v2, v3, 2);
  v8 = 1;
  return v8 & 1;
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

unint64_t sub_25F571588()
{
  result = qword_27FD9DAE8;
  if (!qword_27FD9DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DAE8);
  }

  return result;
}

unint64_t sub_25F5715DC()
{
  result = qword_27FD9DAF8;
  if (!qword_27FD9DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DAF8);
  }

  return result;
}

unint64_t sub_25F571630()
{
  result = qword_27FD9DB00;
  if (!qword_27FD9DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB00);
  }

  return result;
}

unint64_t sub_25F571684()
{
  result = qword_27FD9DB08;
  if (!qword_27FD9DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB08);
  }

  return result;
}

unint64_t sub_25F5716D8()
{
  result = qword_27FD9DB10;
  if (!qword_27FD9DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB10);
  }

  return result;
}

unint64_t sub_25F57172C()
{
  result = qword_27FD9DB18;
  if (!qword_27FD9DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB18);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25F5717CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25F571820(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_25F571874()
{
  result = qword_27FD9DB20;
  if (!qword_27FD9DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB20);
  }

  return result;
}

unint64_t sub_25F5718C8()
{
  result = qword_27FD9DB28;
  if (!qword_27FD9DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB28);
  }

  return result;
}

uint64_t sub_25F57191C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v3 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

unint64_t sub_25F571A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCA8, &qword_25F5E6900);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F573B94(v4, &v13, &qword_27FD9E6B0, &unk_25F5E85A0);
      v5 = v13;
      v6 = v14;
      result = sub_25F5709C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F571D88(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_25F571BA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC78, &unk_25F5E71B0);
  result = sub_25F5E49D4();
  v4 = 0;
  v30 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v29 = result + 64;
  v31 = result;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = 16 * v15;
      v17 = (*(v30 + 48) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = (*(v30 + 56) + 16 * v15);
      v21 = v20[1];
      v33[0] = *v20;
      v33[1] = v21;

      sub_25F56EC88(v33, v32);

      if (v1)
      {
        break;
      }

      *(v29 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v31;
      v22 = v32[0];
      v23 = (v31[6] + v16);
      *v23 = v19;
      v23[1] = v18;
      v24 = (v31[7] + v16);
      v25 = v32[1];
      *v24 = v22;
      v24[1] = v25;
      v26 = v31[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_17;
      }

      v31[2] = v28;
      v10 = v34;
      if (!v34)
      {
        goto LABEL_5;
      }
    }

    return v31;
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return result;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v34 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

_OWORD *sub_25F571D88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25F571D98()
{
  result = qword_27FD9DB40;
  if (!qword_27FD9DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB40);
  }

  return result;
}

unint64_t sub_25F571DEC()
{
  result = qword_27FD9DB48;
  if (!qword_27FD9DB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DB30, &qword_25F5E5F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB48);
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

unint64_t sub_25F571EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC78, &unk_25F5E71B0);
    v3 = sub_25F5E49F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25F5709C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_25F571FDC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC10, &unk_25F5E6870);
    v5 = sub_25F5E49F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = a2(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v2)
      {

        return v5;
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

unint64_t sub_25F5720F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC40, &qword_25F5E68A0);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F573B94(v4, &v11, &qword_27FD9DC48, &qword_25F5E68A8);
      v5 = v11;
      result = sub_25F57A8B4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25F571D88(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_25F572218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC28, &qword_25F5E6888);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F573B94(v4, &v11, &qword_27FD9DC30, &qword_25F5E6890);
      v5 = v11;
      result = sub_25F57A948(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25F571D88(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_25F572340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC68, &qword_25F5E68C8);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F573B94(v4, &v13, &qword_27FD9DC70, &unk_25F5E68D0);
      v5 = v13;
      v6 = v14;
      result = sub_25F5709C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F573A2C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_25F572474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC58, &qword_25F5E7200);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F573B94(v4, &v13, &qword_27FD9DC60, &qword_25F5E68C0);
      v5 = v13;
      v6 = v14;
      result = sub_25F5709C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F573A2C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_25F5725A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC50, &unk_25F5E68B0);
    v3 = sub_25F5E49F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25F5709C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_25F5726A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC18, &qword_25F5E7180);
  v3 = sub_25F5E49F4();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27[0] = v5;
  *(v27 + 15) = *(a1 + 95);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_25F573B94(&v24, v23, &qword_27FD9DC20, &qword_25F5E6880);
  result = sub_25F5709C8(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 104);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = v3[7] + 56 * result;
    v13 = v25;
    v14 = v26;
    v15 = v27[0];
    *(v12 + 47) = *(v27 + 15);
    *(v12 + 16) = v14;
    *(v12 + 32) = v15;
    *v12 = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = (v10 + 72);
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27[0] = v21;
    *(v27 + 15) = *(v10 + 63);
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_25F573B94(&v24, v23, &qword_27FD9DC20, &qword_25F5E6880);
    result = sub_25F5709C8(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F572854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC38, &qword_25F5E6898);
    v3 = sub_25F5E49F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25F5709C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_25F572958(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000017 && 0x800000025F5EC140 == a2;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000025F5EC160 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xED000073656D614ELL || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000025F5EC180 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F572AD0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v40 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v6;
  while (v9)
  {
    v44 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v48[0] = *v17;
    v48[1] = v18;
    v48[2] = v19;

    a2(&v45, v48);

    v20 = v45;
    v21 = v46;
    v22 = v47;
    v23 = *v49;
    v25 = sub_25F5709C8(v45, v46);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((v44 & 1) == 0)
      {
        sub_25F57AC68();
      }
    }

    else
    {
      v30 = v49;
      sub_25F5792E8(v28, v44 & 1);
      v31 = *v30;
      v32 = sub_25F5709C8(v20, v21);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v25 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v49;
    if (v29)
    {

      v12 = v34[7];
      v13 = *(v12 + 8 * v25);
      *(v12 + 8 * v25) = v22;
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      v35 = (v34[6] + 16 * v25);
      *v35 = v20;
      v35[1] = v21;
      *(v34[7] + 8 * v25) = v22;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v14;
    v6 = v41;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_25F573A44();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v44 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_25F5E4BC4();
  __break(1u);
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F572D7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F572DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25F572E3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F572E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetadataEncodingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetadataEncodingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerSampleMorpheusStepConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PerSampleMorpheusStepConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Tag.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Tag.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_25F573300()
{
  result = qword_27FD9DB68;
  if (!qword_27FD9DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB68);
  }

  return result;
}

unint64_t sub_25F573358()
{
  result = qword_27FD9DB70;
  if (!qword_27FD9DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB70);
  }

  return result;
}

unint64_t sub_25F5733B0()
{
  result = qword_27FD9DB78;
  if (!qword_27FD9DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB78);
  }

  return result;
}

unint64_t sub_25F573408()
{
  result = qword_27FD9DB80;
  if (!qword_27FD9DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB80);
  }

  return result;
}

unint64_t sub_25F573460()
{
  result = qword_27FD9DB88;
  if (!qword_27FD9DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB88);
  }

  return result;
}

unint64_t sub_25F5734B8()
{
  result = qword_27FD9DB90;
  if (!qword_27FD9DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB90);
  }

  return result;
}

unint64_t sub_25F573510()
{
  result = qword_27FD9DB98;
  if (!qword_27FD9DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB98);
  }

  return result;
}

unint64_t sub_25F573568()
{
  result = qword_27FD9DBA0;
  if (!qword_27FD9DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBA0);
  }

  return result;
}

unint64_t sub_25F5735C0()
{
  result = qword_27FD9DBA8;
  if (!qword_27FD9DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBA8);
  }

  return result;
}

unint64_t sub_25F573618()
{
  result = qword_27FD9DBB0;
  if (!qword_27FD9DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBB0);
  }

  return result;
}

unint64_t sub_25F573670()
{
  result = qword_27FD9DBB8;
  if (!qword_27FD9DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBB8);
  }

  return result;
}

unint64_t sub_25F5736C8()
{
  result = qword_27FD9DBC0;
  if (!qword_27FD9DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBC0);
  }

  return result;
}

unint64_t sub_25F573720()
{
  result = qword_27FD9DBC8;
  if (!qword_27FD9DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBC8);
  }

  return result;
}

unint64_t sub_25F573778()
{
  result = qword_27FD9DBD0;
  if (!qword_27FD9DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBD0);
  }

  return result;
}

unint64_t sub_25F5737D0()
{
  result = qword_27FD9DBD8;
  if (!qword_27FD9DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBD8);
  }

  return result;
}

unint64_t sub_25F573828()
{
  result = qword_27FD9DBE0;
  if (!qword_27FD9DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBE0);
  }

  return result;
}

unint64_t sub_25F573880()
{
  result = qword_27FD9DBE8;
  if (!qword_27FD9DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBE8);
  }

  return result;
}

unint64_t sub_25F5738D8()
{
  result = qword_27FD9DBF0;
  if (!qword_27FD9DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBF0);
  }

  return result;
}

unint64_t sub_25F573930()
{
  result = qword_27FD9DBF8;
  if (!qword_27FD9DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBF8);
  }

  return result;
}

unint64_t sub_25F573984()
{
  result = qword_27FD9DC00;
  if (!qword_27FD9DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DC00);
  }

  return result;
}

unint64_t sub_25F5739D8()
{
  result = qword_27FD9DC08;
  if (!qword_27FD9DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DC08);
  }

  return result;
}

uint64_t sub_25F573A2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25F573A4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25F573AEC()
{
  result = qword_27FD9DC98;
  if (!qword_27FD9DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DC98);
  }

  return result;
}

unint64_t sub_25F573B40()
{
  result = qword_27FD9DCA0;
  if (!qword_27FD9DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCA0);
  }

  return result;
}

uint64_t sub_25F573B94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F573C00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_25F573C18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_25F573C74()
{
  v1 = 0x79654B7475706E69;
  v2 = 0x7375656870726F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x614665726F6E6769;
  }

  if (*v0)
  {
    v1 = 0x654B74757074756FLL;
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

uint64_t sub_25F573D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F575CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F573D38(uint64_t a1)
{
  v2 = sub_25F574110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F573D74(uint64_t a1)
{
  v2 = sub_25F574110();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerSampleMorpheusStepConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCB8, &unk_25F5E6920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F574110();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  v23 = 0;
  sub_25F574164();
  sub_25F5E4AD4();
  v18 = v19;
  v23 = 1;
  sub_25F5E4AD4();
  v12 = v19;
  v23 = 2;
  sub_25F5741E8();
  sub_25F5E4AD4();
  v16 = v19;
  v17 = v20;
  v22 = v21;
  LOBYTE(v19) = 3;
  v14 = sub_25F5E4AA4();
  (*(v6 + 8))(v10, v5);
  v15 = v17;
  *a2 = v18;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v22;
  *(a2 + 33) = v14 & 1;

  sub_25F57423C();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_25F5741E0();
}

unint64_t sub_25F574110()
{
  result = qword_27FD9DCC0;
  if (!qword_27FD9DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCC0);
  }

  return result;
}

unint64_t sub_25F574164()
{
  result = qword_27FD9DCC8;
  if (!qword_27FD9DCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DB58, &qword_25F5E5F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCC8);
  }

  return result;
}

unint64_t sub_25F5741E8()
{
  result = qword_27FD9DCD0;
  if (!qword_27FD9DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCD0);
  }

  return result;
}

uint64_t sub_25F57425C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x466D6172676F7250;
  }

  else
  {
    v4 = 0x6D6172676F7250;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEF68746150656C69;
  }

  if (*a2)
  {
    v6 = 0x466D6172676F7250;
  }

  else
  {
    v6 = 0x6D6172676F7250;
  }

  if (*a2)
  {
    v7 = 0xEF68746150656C69;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F5E4B84();
  }

  return v9 & 1;
}

uint64_t sub_25F574310()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5743A0()
{
  *v0;
  sub_25F5E4334();
}

uint64_t sub_25F57441C()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5744A8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F5E4A14();

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

void sub_25F574508(uint64_t *a1@<X8>)
{
  v2 = 0x6D6172676F7250;
  if (*v1)
  {
    v2 = 0x466D6172676F7250;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEF68746150656C69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F574554()
{
  if (*v0)
  {
    result = 0x466D6172676F7250;
  }

  else
  {
    result = 0x6D6172676F7250;
  }

  *v0;
  return result;
}

uint64_t sub_25F57459C@<X0>(char *a1@<X8>)
{
  v2 = sub_25F5E4A14();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25F57460C(uint64_t a1)
{
  v2 = sub_25F574880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F574648(uint64_t a1)
{
  v2 = sub_25F574880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MorpheusProgramConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCD8, &qword_25F5E6930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F574880();
  sub_25F5E4C74();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_25F5E4A94();
    v14 = v13;
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_25F574880()
{
  result = qword_27FD9DCE0;
  if (!qword_27FD9DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCE0);
  }

  return result;
}

unint64_t sub_25F5748D4()
{
  result = qword_27FD9DCE8;
  if (!qword_27FD9DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCE8);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F574970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F5749B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for MorpheusProgramConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MorpheusProgramConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F574B88()
{
  result = qword_27FD9DCF0;
  if (!qword_27FD9DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCF0);
  }

  return result;
}

unint64_t sub_25F574BE0()
{
  result = qword_27FD9DCF8;
  if (!qword_27FD9DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCF8);
  }

  return result;
}

unint64_t sub_25F574C38()
{
  result = qword_27FD9DD00;
  if (!qword_27FD9DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD00);
  }

  return result;
}

unint64_t sub_25F574C90()
{
  result = qword_27FD9DD08;
  if (!qword_27FD9DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD08);
  }

  return result;
}

unint64_t sub_25F574CE8()
{
  result = qword_27FD9DD10;
  if (!qword_27FD9DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD10);
  }

  return result;
}

unint64_t sub_25F574D40()
{
  result = qword_27FD9DD18;
  if (!qword_27FD9DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD18);
  }

  return result;
}

uint64_t sub_25F574D94(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  return MEMORY[0x2822009F8](sub_25F574DC4, 0, 0);
}

uint64_t sub_25F574DC4()
{
  *(v0 + 136) = *(v0 + 49);
  if (*(v0 + 48))
  {
    sub_25F5748D4();
    swift_allocError();
    *v1 = 2;
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    sub_25F5E4024();
    v4 = sub_25F5E4014();
    *(v0 + 104) = v4;
    v7 = v4;
    v8 = *(v0 + 136);
    sub_25F575EFC(v0 + 16, v0 + 56);

    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_25F574F60;
    v10 = *(v0 + 96);

    return sub_25F5A186C(v10, v8, v0 + 16, v7);
  }
}

uint64_t sub_25F574F60(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = v1;

  v7 = v4[13];

  if (v1)
  {
    sub_25F575F34((v4 + 2));
    v8 = sub_25F57511C;
  }

  else
  {
    v4[16] = a1;
    sub_25F575F34((v4 + 2));
    v8 = sub_25F5750B4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25F5750B4()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[16];

  return v2(v3);
}

uint64_t sub_25F57511C()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[1];

  return v3();
}

uint64_t sub_25F575180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  return MEMORY[0x2822009F8](sub_25F5751A4, 0, 0);
}

uint64_t sub_25F5751A4()
{
  v85 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *v1;
  v4 = v1[1];
  v5 = *(*v1 + 16);
  if (v5)
  {
    v84[0] = MEMORY[0x277D84F90];

    sub_25F571210(0, v5, 0);
    v6 = v84[0];
    v7 = (v3 + 40);
    while (1)
    {
      v8 = *v7;
      if (!*(v2 + 16))
      {
        break;
      }

      v9 = *(v7 - 1);
      v10 = *(v0 + 200);
      v11 = *v7;

      v12 = sub_25F5709C8(v9, v8);
      if ((v13 & 1) == 0)
      {
        goto LABEL_18;
      }

      sub_25F573A4C(*(v2 + 56) + 32 * v12, v0 + 64);

      sub_25F571D88((v0 + 64), (v0 + 16));
      v84[0] = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_25F571210((v14 > 1), v15 + 1, 1);
        v6 = v84[0];
      }

      *(v6 + 16) = v15 + 1;
      sub_25F571D88((v0 + 16), (v6 + 32 * v15 + 32));
      v7 += 2;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    v24 = *v7;

LABEL_18:
    v25 = *(v0 + 200);
    sub_25F5748D4();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();

    goto LABEL_19;
  }

  v16 = *(v0 + 200);

LABEL_10:
  v17 = *(v0 + 216);
  sub_25F571A78(MEMORY[0x277D84F90]);
  sub_25F5E4004();

  if (!*(v0 + 40))
  {
    v29 = *(v0 + 200);

    sub_25F575F64(v0 + 16);
    if (qword_27FD9D8B0 != -1)
    {
LABEL_65:
      swift_once();
    }

    v30 = sub_25F5E3FB4();
    __swift_project_value_buffer(v30, qword_27FD9EA20);
    v31 = sub_25F5E3F94();
    v32 = sub_25F5E47B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 192);
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v33;
      _os_log_impl(&dword_25F56A000, v31, v32, "Morpheus program returned nil, filter datapoint %ld", v34, 0xCu);
      MEMORY[0x25F8E3B70](v34, -1, -1);
    }

    goto LABEL_26;
  }

  sub_25F571D88((v0 + 16), (v0 + 64));
  sub_25F5E3FD4();
  if (sub_25F5E3FE4())
  {
    v18 = *(v0 + 200);

    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v19 = sub_25F5E3FB4();
    __swift_project_value_buffer(v19, qword_27FD9EA20);
    v20 = sub_25F5E3F94();
    v21 = sub_25F5E47B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 192);
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v22;
      _os_log_impl(&dword_25F56A000, v20, v21, "Morpheus program returned nil, filter datapoint %ld", v23, 0xCu);
      MEMORY[0x25F8E3B70](v23, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
LABEL_26:
    v35 = 0;
LABEL_27:
    v36 = *(v0 + 8);

    return v36(v35);
  }

  v37 = v4[2];
  if (v37 == 1)
  {
    v37 = v4[4];
    v38 = v4[5];
    v39 = qword_27FD9D8B0;

    if (v39 != -1)
    {
LABEL_67:
      swift_once();
    }

    v40 = sub_25F5E3FB4();
    __swift_project_value_buffer(v40, qword_27FD9EA20);

    v41 = sub_25F5E3F94();
    v42 = sub_25F5E4794();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 192);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v84[0] = v45;
      *v44 = 134218242;
      *(v44 + 4) = v43;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_25F570AF8(v37, v38, v84);
      _os_log_impl(&dword_25F56A000, v41, v42, "Processing of item %ld: key=%s", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x25F8E3B70](v45, -1, -1);
      MEMORY[0x25F8E3B70](v44, -1, -1);
    }

    v46 = *(v0 + 200);
    sub_25F573A4C(v0 + 96, v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v46;
    sub_25F5710A0((v0 + 16), v37, v38, isUniquelyReferenced_nonNull_native);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
    v35 = v84[0];
    goto LABEL_27;
  }

  sub_25F573A4C(v0 + 96, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC90, &qword_25F5E68F0);
  if (swift_dynamicCast())
  {
    v38 = *(v0 + 128);
    if (!v37)
    {
      v35 = *(v0 + 200);
LABEL_59:

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
      goto LABEL_27;
    }

    v48 = 0;
    v49 = v38 + 32;
    v35 = *(v0 + 200);
    v50 = v4 + 5;
    while (1)
    {
      v52 = *(v38 + 16);
      if (v48 == v52)
      {
        goto LABEL_59;
      }

      if (v48 >= v52)
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v53 = *(v50 - 1);
      v54 = *v50;
      v82 = v49;
      sub_25F573A4C(v49, v0 + 32);
      sub_25F571D88((v0 + 32), (v0 + 128));
      v55 = qword_27FD9D8B0;

      if (v55 != -1)
      {
        swift_once();
      }

      v56 = sub_25F5E3FB4();
      __swift_project_value_buffer(v56, qword_27FD9EA20);

      v57 = sub_25F5E3F94();
      v58 = sub_25F5E4794();

      v83 = v53;
      v81 = v50;
      if (os_log_type_enabled(v57, v58))
      {
        v80 = v48;
        v59 = v38;
        v60 = v37;
        v61 = *(v0 + 192);
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v84[0] = v63;
        *v62 = 134218242;
        *(v62 + 4) = v61;
        v37 = v60;
        v38 = v59;
        v48 = v80;
        *(v62 + 12) = 2080;
        *(v62 + 14) = sub_25F570AF8(v83, v54, v84);
        _os_log_impl(&dword_25F56A000, v57, v58, "Processing of item %ld: key=%s", v62, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        v64 = v63;
        v53 = v83;
        MEMORY[0x25F8E3B70](v64, -1, -1);
        MEMORY[0x25F8E3B70](v62, -1, -1);
      }

      sub_25F573A4C(v0 + 128, v0 + 160);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v35;
      v67 = sub_25F5709C8(v53, v54);
      v68 = v35[2];
      v69 = (v66 & 1) == 0;
      v70 = v68 + v69;
      if (__OFADD__(v68, v69))
      {
        goto LABEL_64;
      }

      v71 = v66;
      if (v35[3] >= v70)
      {
        if (v65)
        {
          if (v66)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_25F57AAC4();
          if (v71)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        sub_25F579030(v70, v65);
        v72 = sub_25F5709C8(v83, v54);
        if ((v71 & 1) != (v73 & 1))
        {

          return sub_25F5E4BC4();
        }

        v67 = v72;
        if (v71)
        {
LABEL_38:

          v35 = v84[0];
          v51 = (*(v84[0] + 56) + 32 * v67);
          __swift_destroy_boxed_opaque_existential_1Tm(v51);
          sub_25F571D88((v0 + 160), v51);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
          goto LABEL_39;
        }
      }

      v35 = v84[0];
      *(v84[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
      v74 = (v35[6] + 16 * v67);
      *v74 = v83;
      v74[1] = v54;
      sub_25F571D88((v0 + 160), (v35[7] + 32 * v67));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
      v75 = v35[2];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        __break(1u);
        goto LABEL_67;
      }

      v35[2] = v77;
LABEL_39:
      ++v48;
      v49 = v82 + 32;
      v50 = v81 + 2;
      if (v37 == v48)
      {
        goto LABEL_59;
      }
    }
  }

  v78 = *(v0 + 200);

  sub_25F5748D4();
  swift_allocError();
  *v79 = 6;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
LABEL_19:
  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_25F575B40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F574D94(a1);
}

uint64_t sub_25F575BD4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_25F575CD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B7475706E69 && a2 == 0xE900000000000073;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B74757074756FLL && a2 == 0xEA00000000007379 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7375656870726F6DLL && a2 == 0xEF6D6172676F7250 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614665726F6E6769 && a2 == 0xEE00736572756C69)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F575E5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_25F575EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F575F64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD20, &unk_25F5E6DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 TaggingStepConfig.init(inputKey:outputKey:inferenceConfig:allowListedTags:denyListedTags:maxNumTags:storeInBiome:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v11 = *(a5 + 80);
  *(a9 + 96) = *(a5 + 64);
  *(a9 + 112) = v11;
  *(a9 + 128) = *(a5 + 96);
  *(a9 + 144) = *(a5 + 112);
  v12 = *(a5 + 16);
  *(a9 + 32) = *a5;
  *(a9 + 48) = v12;
  result = *(a5 + 32);
  v14 = *(a5 + 48);
  *(a9 + 64) = result;
  *(a9 + 80) = v14;
  *(a9 + 152) = a6;
  *(a9 + 160) = a7;
  *(a9 + 168) = a8;
  *(a9 + 176) = a10 & 1;
  *(a9 + 177) = a11;
  return result;
}

uint64_t sub_25F576024()
{
  v1 = *v0;
  v2 = 0x79654B7475706E69;
  v3 = 0x61546D754E78616DLL;
  if (v1 != 5)
  {
    v3 = 0x426E4965726F7473;
  }

  v4 = 0x73694C776F6C6C61;
  if (v1 != 3)
  {
    v4 = 0x7473694C796E6564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x654B74757074756FLL;
  if (v1 != 1)
  {
    v5 = 0x636E657265666E69;
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

uint64_t sub_25F576134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F57BDBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F576168(uint64_t a1)
{
  v2 = sub_25F576778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5761A4(uint64_t a1)
{
  v2 = sub_25F576778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TaggingStepConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD28, &unk_25F5E6DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v33 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  sub_25F576778();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v85);
  }

  v13 = v6;
  LOBYTE(v52[0]) = 0;
  v14 = v5;
  v15 = sub_25F5E4A94();
  v40 = v16;
  LOBYTE(v52[0]) = 1;
  *&v39 = sub_25F5E4A94();
  *(&v39 + 1) = v17;
  v67 = 2;
  sub_25F576820();
  sub_25F5E4AD4();
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v77 = v68;
  v78 = v69;
  v79 = v70;
  v80 = v71;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD40, &qword_25F5E85F0);
  LOBYTE(v41[0]) = 3;
  v37 = sub_25F576874();
  v38 = v18;
  sub_25F5E4A84();
  v36 = v52[0];
  LOBYTE(v41[0]) = 4;
  v38 = 0;
  sub_25F5E4A84();
  v37 = v52[0];
  LOBYTE(v52[0]) = 5;
  v19 = sub_25F5E4A74();
  v76 = v20 & 1;
  v66 = 6;
  LOBYTE(v18) = sub_25F5E4AA4();
  (*(v13 + 8))(v10, v14);
  LODWORD(v38) = v18 & 1;
  v22 = *(&v39 + 1);
  v21 = v40;
  *&v41[0] = v15;
  *(&v41[0] + 1) = v40;
  v41[1] = v39;
  v46 = v81;
  v47 = v82;
  v48 = v83;
  LOBYTE(v49) = v84;
  v42 = v77;
  v43 = v78;
  v44 = v79;
  v45 = v80;
  v23 = v19;
  v35 = v19;
  v24 = v36;
  v25 = v37;
  *(&v49 + 1) = v36;
  *&v50 = v37;
  *(&v50 + 1) = v23;
  v34 = v76;
  LOBYTE(v51) = v76;
  HIBYTE(v51) = v38;
  v26 = v39;
  *a2 = v41[0];
  *(a2 + 16) = v26;
  v27 = v47;
  *(a2 + 96) = v46;
  *(a2 + 112) = v27;
  v28 = v45;
  *(a2 + 64) = v44;
  *(a2 + 80) = v28;
  v29 = v43;
  *(a2 + 32) = v42;
  *(a2 + 48) = v29;
  v30 = v50;
  v31 = v49;
  *(a2 + 128) = v48;
  *(a2 + 144) = v31;
  *(a2 + 160) = v30;
  *(a2 + 176) = v51;
  sub_25F5768F0(v41, v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v85);
  v52[0] = v15;
  v52[1] = v21;
  v52[2] = v39;
  v52[3] = v22;
  v57 = v81;
  v58 = v82;
  v59 = v83;
  v60 = v84;
  v53 = v77;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  v61 = v24;
  v62 = v25;
  v63 = v35;
  v64 = v34;
  v65 = v38;
  return sub_25F576928(v52);
}

unint64_t sub_25F576778()
{
  result = qword_27FD9DD30;
  if (!qword_27FD9DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD30);
  }

  return result;
}

unint64_t sub_25F576820()
{
  result = qword_27FD9DD38;
  if (!qword_27FD9DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD38);
  }

  return result;
}

unint64_t sub_25F576874()
{
  result = qword_27FD9DD48;
  if (!qword_27FD9DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DD40, &qword_25F5E85F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD48);
  }

  return result;
}

__n128 TaggingStep.init(config:chatPromptResponder:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v3;
  *(a3 + 160) = *(a1 + 160);
  v4 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v4;
  v5 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v5;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  result = *a2;
  v9 = *(a2 + 16);
  *(a3 + 184) = *a2;
  *(a3 + 176) = *(a1 + 176);
  *(a3 + 200) = v9;
  *(a3 + 216) = *(a2 + 32);
  return result;
}

uint64_t TaggingStep.process(_:)(uint64_t a1)
{
  v2[113] = v1;
  v2[112] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD50, &qword_25F5E6E08);
  v2[114] = v3;
  v4 = *(v3 - 8);
  v2[115] = v4;
  v5 = *(v4 + 64) + 15;
  v2[116] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD58, &qword_25F5E6E10) - 8) + 64) + 15;
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v7 = type metadata accessor for ExtractedItem(0);
  v2[119] = v7;
  v8 = *(v7 - 8);
  v2[120] = v8;
  v9 = *(v8 + 64) + 15;
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F576B3C, 0, 0);
}

uint64_t sub_25F576B3C()
{
  v58 = v0;
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v3 = *(v1 + 8);
  v54 = *v1;
  v4 = *(v2 + 16);
  *(v0 + 984) = v4;
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = *(v0 + 960);
    v55 = MEMORY[0x277D84F90];
    sub_25F571250(0, v4, 0);
    v5 = v55;
    v7 = (v2 + 32);
    do
    {
      v8 = *(v0 + 976);
      v56[0] = *v7;

      sub_25F5777FC(v56, v54, v3, (v0 + 888), v8);

      v10 = *(v55 + 16);
      v9 = *(v55 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_25F571250(v9 > 1, v10 + 1, 1);
      }

      v11 = *(v0 + 976);
      *(v55 + 16) = v10 + 1;
      sub_25F57B6DC(v11, v55 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10);
      ++v7;
      --v4;
    }

    while (v4);
    v1 = *(v0 + 904);
  }

  *(v0 + 992) = v5;
  v12 = *(v1 + 32);
  v13 = *(v1 + 48);
  v14 = *(v1 + 80);
  *(v0 + 352) = *(v1 + 64);
  *(v0 + 368) = v14;
  *(v0 + 320) = v12;
  *(v0 + 336) = v13;
  v15 = *(v1 + 96);
  v16 = *(v1 + 112);
  v17 = *(v1 + 128);
  *(v0 + 432) = *(v1 + 144);
  *(v0 + 400) = v16;
  *(v0 + 416) = v17;
  *(v0 + 384) = v15;
  v18 = *(v1 + 152);
  v19 = *(v1 + 176);
  v20 = *(v1 + 177);
  v21 = *(v1 + 160);
  v22 = *(v1 + 32);
  v23 = *(v1 + 48);
  v24 = *(v1 + 80);
  *(v0 + 48) = *(v1 + 64);
  *(v0 + 64) = v24;
  *(v0 + 16) = v22;
  *(v0 + 32) = v23;
  v25 = *(v1 + 96);
  v26 = *(v1 + 112);
  v27 = *(v1 + 128);
  *(v0 + 128) = *(v1 + 144);
  *(v0 + 96) = v26;
  *(v0 + 112) = v27;
  *(v0 + 80) = v25;
  LOBYTE(v56[0]) = v19;
  *(v0 + 136) = v18;
  *(v0 + 144) = v21;
  *(v0 + 160) = v19;
  *(v0 + 161) = v20;
  sub_25F573B94(v1 + 184, v0 + 720, &qword_27FD9DD60, &unk_25F5E6E18);
  if (*(v0 + 744))
  {
    sub_25F573A2C((v0 + 720), v0 + 680);
    sub_25F57B740(v0 + 320, v0 + 560);
  }

  else
  {
    v34 = *(v0 + 904);
    v35 = *(v0 + 328);
    v36 = *(v0 + 344);
    v52 = *(v0 + 336);
    v53 = *(v0 + 320);
    v51 = *(v0 + 376);
    v50 = *(v0 + 384);
    v49 = *(v0 + 392);
    v48 = *(v0 + 400);
    v47 = *(v0 + 408);
    v46 = *(v0 + 416);
    v45 = *(v0 + 424);
    v44 = *(v0 + 432);
    v38 = *(v34 + 72);
    v39 = *(v34 + 80);
    v56[0] = *(v34 + 64);
    v37 = v56[0];
    v56[1] = v38;
    v57 = v39;
    v40 = type metadata accessor for LLMInference();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    sub_25F57B740(v0 + 320, v0 + 440);

    sub_25F57B79C(v37, v38, v39);
    v43 = LLMInference.init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(v53, v35, v52, v36, v56, v51, v50, v49, v48, v47, v46, v45, v44);
    *(v0 + 704) = v40;
    *(v0 + 712) = &protocol witness table for LLMInference;
    *(v0 + 680) = v43;
    if (*(v0 + 744))
    {
      sub_25F57C148(v0 + 720, &qword_27FD9DD60, &unk_25F5E6E18);
    }
  }

  v28 = *(v0 + 128);
  *(v0 + 264) = *(v0 + 112);
  *(v0 + 280) = v28;
  *(v0 + 296) = *(v0 + 144);
  v29 = *(v0 + 64);
  *(v0 + 200) = *(v0 + 48);
  *(v0 + 216) = v29;
  v30 = *(v0 + 96);
  *(v0 + 232) = *(v0 + 80);
  *(v0 + 248) = v30;
  v31 = *(v0 + 32);
  *(v0 + 168) = *(v0 + 16);
  *(v0 + 312) = *(v0 + 160);
  *(v0 + 184) = v31;
  v32 = swift_task_alloc();
  *(v0 + 1000) = v32;
  *v32 = v0;
  v32[1] = sub_25F576FFC;

  return getTags(for:taggingArgs:chatPromptResponder:)(v5, (v0 + 168), v0 + 680);
}

uint64_t sub_25F576FFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1000);
  v8 = *v2;
  v3[126] = a1;
  v3[127] = v1;

  v5 = v3[124];

  if (v1)
  {
    v6 = sub_25F577748;
  }

  else
  {
    sub_25F57B7B4((v3 + 2));
    v6 = sub_25F57712C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_25F57712C()
{
  v1 = 0;
  v64 = *(v0 + 960);
  v65 = *(v0 + 1008);
  v2 = *(v0 + 920);
  v71 = *(v0 + 912);
  v67 = *(v0 + 904);
  v68 = *(v0 + 952);
  v3 = *(v65 + 16);
  v69 = (v2 + 48);
  v70 = (v2 + 56);
  v66 = *(v0 + 896) + 32;
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    goto LABEL_3;
  }

LABEL_2:
  v5 = 1;
  v6 = v3;
  while (1)
  {
    v11 = *(v0 + 944);
    v12 = *(v0 + 936);
    v13 = *(v0 + 912);
    (*v70)(v12, v5, 1, v13);
    sub_25F57B86C(v12, v11, &qword_27FD9DD58, &qword_25F5E6E10);
    if ((*v69)(v11, 1, v13) == 1)
    {
      break;
    }

    v14 = *(v0 + 984);
    v15 = *(v0 + 944);
    v16 = *v15;
    sub_25F57B6DC(v15 + *(v71 + 48), *(v0 + 968));
    if (v16 >= v14)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return;
    }

    v72 = v4;
    v17 = *(v66 + 8 * v16);
    v18 = *(v68 + 24);
    if (*(*(v0 + 968) + v18))
    {
      v19 = *(*(v0 + 968) + v18);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v21 = *(v67 + 16);
    v20 = *(v67 + 24);
    *(v0 + 784) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    *(v0 + 760) = v19;
    sub_25F571D88((v0 + 760), (v0 + 792));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_25F5709C8(v21, v20);
    v25 = v17[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_44;
    }

    v28 = v23;
    if (v17[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v23)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_25F57AAC4();
        if (v28)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_25F579030(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_25F5709C8(v21, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_40;
      }

      v24 = v29;
      if (v28)
      {
LABEL_17:
        v31 = (v17[7] + 32 * v24);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        sub_25F571D88((v0 + 792), v31);
        goto LABEL_21;
      }
    }

    v17[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v17[6] + 16 * v24);
    *v32 = v21;
    v32[1] = v20;
    sub_25F571D88((v0 + 792), (v17[7] + 32 * v24));
    v33 = v17[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_47;
    }

    v17[2] = v35;

LABEL_21:

    MEMORY[0x25F8E2BC0](0x65566C65646F6D5FLL, 0xED00006E6F697372);
    v36 = *(v0 + 704);
    v37 = *(v0 + 712);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 680), v36);
    v38 = (*(v37 + 8))(v36, v37);
    *(v0 + 848) = MEMORY[0x277D837D0];
    *(v0 + 824) = v38;
    *(v0 + 832) = v39;
    sub_25F571D88((v0 + 824), (v0 + 856));
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v41 = sub_25F5709C8(v21, v20);
    v43 = v17[2];
    v44 = (v42 & 1) == 0;
    v34 = __OFADD__(v43, v44);
    v45 = v43 + v44;
    if (v34)
    {
      goto LABEL_45;
    }

    v46 = v42;
    if (v17[3] < v45)
    {
      sub_25F579030(v45, v40);
      v41 = sub_25F5709C8(v21, v20);
      if ((v46 & 1) != (v47 & 1))
      {
LABEL_40:

        sub_25F5E4BC4();
        return;
      }

LABEL_26:
      if (v46)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (v40)
    {
      goto LABEL_26;
    }

    v51 = v41;
    sub_25F57AAC4();
    v41 = v51;
    if (v46)
    {
LABEL_27:
      v48 = v41;

      v49 = v17;
      v50 = (v17[7] + 32 * v48);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      sub_25F571D88((v0 + 856), v50);
      goto LABEL_31;
    }

LABEL_29:
    v49 = v17;
    v17[(v41 >> 6) + 8] |= 1 << v41;
    v52 = (v17[6] + 16 * v41);
    *v52 = v21;
    v52[1] = v20;
    sub_25F571D88((v0 + 856), (v17[7] + 32 * v41));
    v53 = v17[2];
    v34 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v34)
    {
      goto LABEL_48;
    }

    v17[2] = v54;
LABEL_31:
    v4 = v72;
    v1 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_25F5783E8(0, v72[2] + 1, 1, v72);
    }

    v56 = v4[2];
    v55 = v4[3];
    if (v56 >= v55 >> 1)
    {
      v4 = sub_25F5783E8((v55 > 1), v56 + 1, 1, v4);
    }

    sub_25F57B8D4(*(v0 + 968));
    v4[2] = v56 + 1;
    v4[v56 + 4] = v49;
    if (v6 == v3)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v1 >= *(v65 + 16))
    {
      goto LABEL_46;
    }

    v7 = *(v0 + 936);
    v8 = *(v0 + 928);
    v6 = v1 + 1;
    v9 = *(v0 + 1008) + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v1;
    v10 = *(v71 + 48);
    *v8 = v1;
    sub_25F57B808(v9, v8 + v10);
    sub_25F57B86C(v8, v7, &qword_27FD9DD50, &qword_25F5E6E08);
    v5 = 0;
  }

  v57 = *(v0 + 1008);
  v58 = *(v0 + 976);
  v59 = *(v0 + 968);
  v60 = *(v0 + 944);
  v61 = *(v0 + 936);
  v62 = *(v0 + 928);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));

  v63 = *(v0 + 8);

  v63(v4);
}

uint64_t sub_25F577748()
{
  sub_25F57B7B4((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 85);
  v1 = v0[127];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[118];
  v5 = v0[117];
  v6 = v0[116];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F5777FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v101 = v93 - v12;
  v13 = sub_25F5E3774();
  v99 = *(v13 - 8);
  v100 = v13;
  v14 = *(v99 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = v93 - v21;
  v23 = sub_25F5E3794();
  v102 = *(v23 - 8);
  v103 = v23;
  v24 = *(v102 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v105 = v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for ExtractedItem(0);
  v27 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110, v28);
  v30 = v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v35 = v93 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8, v38);
  v40 = v93 - v39;
  v41 = *a1;
  if (!*(v41 + 16))
  {
    goto LABEL_8;
  }

  v42 = sub_25F5709C8(a2, a3);
  if ((v43 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_25F573A4C(*(v41 + 56) + 32 * v42, v108);
  sub_25F571D88(v108, v109);
  sub_25F573A4C(v109, v108);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
LABEL_8:
    sub_25F5748D4();
    v48 = swift_allocError();
    *v49 = 0;
    result = swift_willThrow();
    *a4 = v48;
    return result;
  }

  v96 = v106;
  v95 = v107;
  if (*(v41 + 16) && (v44 = sub_25F5709C8(0x64496D657469, 0xE600000000000000), (v45 & 1) != 0))
  {
    sub_25F573A4C(*(v41 + 56) + 32 * v44, v108);
    v46 = sub_25F5E36D4();
    v47 = swift_dynamicCast();
    (*(*(v46 - 8) + 56))(v40, v47 ^ 1u, 1, v46);
  }

  else
  {
    v51 = sub_25F5E36D4();
    (*(*(v51 - 8) + 56))(v40, 1, 1, v51);
  }

  v52 = v110;
  if (*(v41 + 16) && (v53 = sub_25F5709C8(1702125924, 0xE400000000000000), (v54 & 1) != 0))
  {
    sub_25F573A4C(*(v41 + 56) + 32 * v53, v108);
    v55 = sub_25F5E3694();
    v56 = swift_dynamicCast();
    (*(*(v55 - 8) + 56))(v35, v56 ^ 1u, 1, v55);
  }

  else
  {
    v57 = sub_25F5E3694();
    (*(*(v57 - 8) + 56))(v35, 1, 1, v57);
  }

  if (*(v41 + 16) && (v58 = sub_25F5709C8(0xD000000000000015, 0x800000025F5EC1A0), (v59 & 1) != 0))
  {
    sub_25F573A4C(*(v41 + 56) + 32 * v58, v108);
    v60 = swift_dynamicCast();
    v61 = v106;
    if (!v60)
    {
      v61 = 0;
    }

    v97 = v61;
    if (v60)
    {
      v62 = v107;
    }

    else
    {
      v62 = 0;
    }

    if (!*(v41 + 16))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v97 = 0;
    v62 = 0;
    if (!*(v41 + 16))
    {
      goto LABEL_31;
    }
  }

  v63 = sub_25F5709C8(0xD000000000000013, 0x800000025F5EC1C0);
  if (v64)
  {
    sub_25F573A4C(*(v41 + 56) + 32 * v63, v108);
    v65 = swift_dynamicCast();
    v66 = v106;
    if (!v65)
    {
      v66 = 0;
    }

    v93[0] = v66;
    if (v65)
    {
      v67 = v107;
    }

    else
    {
      v67 = 0;
    }

    v98 = v67;
    goto LABEL_32;
  }

LABEL_31:
  v93[0] = 0;
  v98 = 0;
LABEL_32:
  v68 = MEMORY[0x277D84F90];
  v94 = sub_25F571FC4(MEMORY[0x277D84F90]);
  *&v30[v52[6]] = 0;
  v93[1] = sub_25F571FC4(v68);
  v69 = v105;
  sub_25F5E3754();
  sub_25F573B94(v40, v30, &qword_27FD9DE10, &unk_25F5E7240);
  v70 = &v30[v52[5]];
  v71 = v95;
  *v70 = v96;
  *(v70 + 1) = v71;
  sub_25F573B94(v35, &v30[v52[7]], &unk_27FD9E500, &unk_25F5EA410);
  if (!v62)
  {
    sub_25F5E3784();
    sub_25F5E3764();
    (*(v99 + 8))(v17, v100);
    v72 = sub_25F5E3704();
    v73 = *(v72 - 8);
    if ((*(v73 + 48))(v22, 1, v72) == 1)
    {
      sub_25F57C148(v22, &qword_27FD9DE08, &unk_25F5E7230);
      v97 = 0;
      v62 = 0;
    }

    else
    {
      v97 = sub_25F5E36F4();
      v62 = v74;
      (*(v73 + 8))(v22, v72);
    }

    v52 = v110;
    v69 = v105;
  }

  v75 = &v30[v52[8]];
  *v75 = v97;
  v75[1] = v62;
  v76 = v98;
  if (v98)
  {
    (*(v102 + 8))(v69, v103);
    sub_25F57C148(v35, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F57C148(v40, &qword_27FD9DE10, &unk_25F5E7240);

    v77 = v93[0];
  }

  else
  {
    v78 = v101;
    v79 = v69;
    sub_25F5E3744();
    v80 = v78;
    v81 = sub_25F5E3734();
    v82 = *(v81 - 8);
    if ((*(v82 + 48))(v80, 1, v81) == 1)
    {
      (*(v102 + 8))(v79, v103);
      sub_25F57C148(v35, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v40, &qword_27FD9DE10, &unk_25F5E7240);
      sub_25F57C148(v80, &qword_27FD9DE00, &unk_25F5E9D40);

      v77 = 0;
      v76 = 0;
    }

    else
    {
      v77 = sub_25F5E36F4();
      v98 = v83;
      (*(v102 + 8))(v79, v103);
      sub_25F57C148(v35, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v40, &qword_27FD9DE10, &unk_25F5E7240);
      v84 = v81;
      v76 = v98;
      (*(v82 + 8))(v101, v84);
    }
  }

  v85 = v52[10];
  v86 = &v30[v52[9]];
  *v86 = v77;
  v86[1] = v76;
  *&v30[v85] = v94;
  v87 = v104;
  sub_25F57B6DC(v30, v104);
  if (!*(v41 + 16))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v109);
  }

  v88 = sub_25F5709C8(1936154996, 0xE400000000000000);
  if ((v89 & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v109);
  }

  sub_25F573A4C(*(v41 + 56) + 32 * v88, v108);
  __swift_destroy_boxed_opaque_existential_1Tm(v109);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  result = swift_dynamicCast();
  if (result)
  {
    v90 = v106;
    v91 = v52[6];
    v92 = *(v87 + v91);

    *(v87 + v91) = v90;
  }

  return result;
}

uint64_t sub_25F578238(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return TaggingStep.process(_:)(a1);
}

char *sub_25F5782CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F5783E8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDF0, &qword_25F5E7218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDF8, &unk_25F5E7220);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F578544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDE0, &qword_25F5E71F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F578650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDC0, &qword_25F5E71D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F57875C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDD8, &qword_25F5E71F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F5788CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDD0, &unk_25F5E71E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_25F5789F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_25F578BD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD90, &qword_25F5E7188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_25F578CF8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD98, &unk_25F5E7190);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10) - 8);
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

void *sub_25F578EE8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDB0, &qword_25F5E71A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDB8, &qword_25F5E71A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25F579030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCA8, &qword_25F5E6900);
  v36 = a2;
  result = sub_25F5E49E4();
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
        sub_25F571D88(v25, v37);
      }

      else
      {
        sub_25F573A4C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
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
      result = sub_25F571D88(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_25F5792E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC10, &unk_25F5E6870);
  v38 = a2;
  result = sub_25F5E49E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25F579590(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC78, &unk_25F5E71B0);
  v40 = a2;
  result = sub_25F5E49E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25F579850(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC58, &qword_25F5E7200);
  v36 = a2;
  result = sub_25F5E49E4();
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_25F573A2C(v25, v37);
      }

      else
      {
        sub_25F57C0E4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
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
      result = sub_25F573A2C(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_25F579B14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDC8, &qword_25F5E71D8);
  result = sub_25F5E49E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_25F5E4C24();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25F579D84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC50, &unk_25F5E68B0);
  v38 = a2;
  result = sub_25F5E49E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25F57A024(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC18, &qword_25F5E7180);
  v42 = a2;
  result = sub_25F5E49E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 56 * v22;
      if (v42)
      {
        v44 = *v26;
        v43 = *(v26 + 8);
        v46 = *(v26 + 24);
        v27 = *(v26 + 32);
        v48 = *(v26 + 40);
        v45 = *(v26 + 48);
        v47 = *(v26 + 49);
        v49 = *(v26 + 50);
      }

      else
      {
        v28 = *v26;
        v29 = *(v26 + 16);
        v30 = *(v26 + 32);
        *&v51[15] = *(v26 + 47);
        *&v50[16] = v29;
        *v51 = v30;
        *v50 = v28;
        v49 = v51[18];
        v47 = v51[17];
        v48 = *(&v30 + 1);
        v45 = v51[16];
        v46 = *(&v29 + 1);
        v27 = v30;
        v44 = v28;
        v43 = *&v50[8];

        sub_25F57C030(v50, v52);
      }

      v31 = *(v8 + 40);
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v50[0] = v27;
      v52[0] = v45;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 56 * v16;
      *v18 = v44;
      *(v18 + 8) = v43;
      *(v18 + 24) = v46;
      *(v18 + 32) = v27;
      *(v18 + 40) = v48;
      *(v18 + 48) = v45;
      *(v18 + 49) = v47;
      *(v18 + 50) = v49;
      ++*(v8 + 16);
      v5 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25F57A3C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC38, &qword_25F5E6898);
  v39 = a2;
  result = sub_25F5E49E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_25F57A668(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25F5E43F4();
      v9 = v8;
      if (v7 == sub_25F5E43F4() && v9 == v10)
      {
        break;
      }

      v12 = sub_25F5E4B84();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25F57A76C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_25F57C08C();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25F5E38B4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25F57A848(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25F57A8B4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25F5E43F4();
  sub_25F5E4C34();
  sub_25F5E4334();
  v4 = sub_25F5E4C54();

  return sub_25F57A668(a1, v4);
}

unint64_t sub_25F57A948(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25F5E4C34();
  type metadata accessor for CFString(0);
  sub_25F57C08C();
  sub_25F5E38C4();
  v4 = sub_25F5E4C54();

  return sub_25F57A76C(a1, v4);
}

unint64_t sub_25F57A9CC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_25F5E4C24();

  return sub_25F57A848(a1, v4);
}

_OWORD *sub_25F57AA10(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25F571D88(a4, (a5[7] + 32 * a1));
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

unint64_t sub_25F57AA7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_25F57AAC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCA8, &qword_25F5E6900);
  v2 = *v0;
  v3 = sub_25F5E49D4();
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
        sub_25F573A4C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25F571D88(v25, (*(v4 + 56) + v22));
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

void *sub_25F57AC68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC10, &unk_25F5E6870);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25F57ADD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC78, &unk_25F5E71B0);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25F57AF50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC58, &qword_25F5E7200);
  v2 = *v0;
  v3 = sub_25F5E49D4();
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
        v22 = 40 * v17;
        sub_25F57C0E4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25F573A2C(v25, *(v4 + 56) + v22);
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

void *sub_25F57B0F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDC8, &qword_25F5E71D8);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25F57B254()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC50, &unk_25F5E68B0);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25F57B3BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC18, &qword_25F5E7180);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 56;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[15] = *(v19 + v17 + 47);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 47) = *&v34[15];
        *(v27 + 16) = v29;
        *(v27 + 32) = v30;
        *v27 = v28;

        result = sub_25F57C030(&v32, v31);
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_25F57B570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC38, &qword_25F5E6898);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25F57B6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F57B79C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_25F57B808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F57B86C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F57B8D4(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_25F57B978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
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

uint64_t sub_25F57B9C0(uint64_t result, int a2, int a3)
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8PriMLETL20ChatPromptResponding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}