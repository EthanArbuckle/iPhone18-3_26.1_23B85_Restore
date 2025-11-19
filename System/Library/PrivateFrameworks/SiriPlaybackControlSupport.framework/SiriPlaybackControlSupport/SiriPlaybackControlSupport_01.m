__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_268BC0D7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_268BC0DBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_268BC0E18()
{
  result = qword_2802CE028;
  if (!qword_2802CE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE028);
  }

  return result;
}

unint64_t sub_268BC0E70()
{
  result = qword_2802CE030;
  if (!qword_2802CE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE030);
  }

  return result;
}

unint64_t sub_268BC0EC8()
{
  result = qword_2802CE038;
  if (!qword_2802CE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE038);
  }

  return result;
}

unint64_t sub_268BC0F20()
{
  result = qword_2802CE040;
  if (!qword_2802CE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE040);
  }

  return result;
}

uint64_t sub_268BC0F74()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268BC0FD0()
{
  MEMORY[0x26D628060](v0 + 16);
  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268BC100C()
{
  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268BC1048()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_268BC1094(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }
}

uint64_t sub_268BC1104()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268BC1148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268BC1190(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_268BC11E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268C15BEC();

  [a3 setName_];
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_13_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return sub_268C1624C();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return sub_268C15C3C();
}

void OUTLINED_FUNCTION_23_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_27_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_268BC1428()
{
  sub_268BC157C();
  result = sub_268C15EFC();
  qword_2802D2EB8 = result;
  return result;
}

uint64_t sub_268BC1494()
{
  v0 = sub_268C15A1C();
  __swift_allocate_value_buffer(v0, qword_2802D2EC0);
  __swift_project_value_buffer(v0, qword_2802D2EC0);
  return sub_268C15A0C();
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

unint64_t sub_268BC157C()
{
  result = qword_2802CE090;
  if (!qword_2802CE090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE090);
  }

  return result;
}

uint64_t sub_268BC15C0()
{
  v0 = sub_268C15A1C();
  __swift_allocate_value_buffer(v0, qword_2802D2ED8);
  __swift_project_value_buffer(v0, qword_2802D2ED8);
  return sub_268C15A0C();
}

uint64_t MediaGroup.members.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MediaGroup.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MediaGroup.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaGroup() + 24);
  v4 = sub_268C1531C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MediaGroup()
{
  result = qword_2802CE0B0;
  if (!qword_2802CE0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MediaGroup.init(name:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = MEMORY[0x277D84F90];
  *(a4 + 1) = a1;
  *(a4 + 2) = a2;
  v6 = *(type metadata accessor for MediaGroup() + 24);
  v7 = sub_268C1531C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t MediaGroup.description.getter()
{
  v1 = v0;
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000013, 0x8000000268C1BDF0);
  v9 = v0[1];
  v10 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
  v2 = sub_268C15C0C();
  MEMORY[0x26D627230](v2);

  MEMORY[0x26D627230](0x69746E656469202CLL, 0xEE00203A72656966);
  v3 = *(type metadata accessor for MediaGroup() + 24);
  sub_268C1531C();
  sub_268BC19A4();
  v4 = sub_268C1616C();
  MEMORY[0x26D627230](v4);

  MEMORY[0x26D627230](0x7265626D656D202CLL, 0xEB00000000203A73);
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0A8, &qword_268C177C8);
  v7 = MEMORY[0x26D6272E0](v5, v6);
  MEMORY[0x26D627230](v7);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

unint64_t sub_268BC19A4()
{
  result = qword_2802CE0A0;
  if (!qword_2802CE0A0)
  {
    sub_268C1531C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE0A0);
  }

  return result;
}

uint64_t sub_268BC1A14(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_268C1531C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_268BC1AB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_268C1531C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_268BC1B30()
{
  sub_268BC1BCC();
  if (v0 <= 0x3F)
  {
    sub_268BC1C30();
    if (v1 <= 0x3F)
    {
      sub_268C1531C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268BC1BCC()
{
  if (!qword_2802CE0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802CE0A8, &qword_268C177C8);
    v0 = sub_268C15D7C();
    if (!v1)
    {
      atomic_store(v0, &qword_2802CE0C0);
    }
  }
}

void sub_268BC1C30()
{
  if (!qword_2802CE0C8)
  {
    v0 = sub_268C15F1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2802CE0C8);
    }
  }
}

SiriPlaybackControlSupport::Reference_optional __swiftcall ControlsUsoTask.reference()()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v77 = v2;
  v3 = sub_268C15A1C();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v75 = v5;
  v76 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_0();
  v74 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0D0, &qword_268C17840);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_17_2();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF50, &qword_268C172D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v74 - v20;
  v22 = sub_268C155DC();
  v23 = OUTLINED_FUNCTION_3_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_0();
  v30 = v29 - v28;
  sub_268BC230C(v1, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_268BC4CFC(v21, &qword_2802CDF50, &qword_268C172D0);
    goto LABEL_17;
  }

  (*(v25 + 32))(v30, v21, v22);
  v31 = sub_268C155CC();
  if (!v32)
  {
    goto LABEL_16;
  }

  if (v31 == 0xD000000000000014 && v32 == 0x8000000268C1BE10)
  {
  }

  else
  {
    v34 = sub_268C1618C();

    if ((v34 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (sub_268C155BC() == 6645876 && v35 == 0xE300000000000000)
  {
  }

  else
  {
    v37 = sub_268C1618C();

    if ((v37 & 1) == 0)
    {
LABEL_16:
      v38 = OUTLINED_FUNCTION_19_3();
      v39(v38);
      goto LABEL_17;
    }
  }

  if (sub_268C1552C() == 0xD00000000000001CLL && 0x8000000268C1BE30 == v66)
  {

    v71 = OUTLINED_FUNCTION_19_3();
    v72(v71);
LABEL_44:
    v65 = 1;
    goto LABEL_45;
  }

  v68 = sub_268C1618C();

  v69 = OUTLINED_FUNCTION_19_3();
  v70(v69);
  if (v68)
  {
    goto LABEL_44;
  }

LABEL_17:
  v40 = v1[5];
  v41 = OUTLINED_FUNCTION_8_3();
  if (!v42(v41) || (sub_268C156AC(), OUTLINED_FUNCTION_33_1(), , !v22))
  {
    v43 = v1[6];
    v44 = OUTLINED_FUNCTION_8_3();
    if (!v45(v44) || (sub_268C156AC(), OUTLINED_FUNCTION_33_1(), , !v22))
    {
      v46 = v1[4];
      v47 = OUTLINED_FUNCTION_8_3();
      if (!v48(v47) || (sub_268C156AC(), OUTLINED_FUNCTION_33_1(), , !v22))
      {
        v65 = 5;
LABEL_45:
        *v77 = v65;
        goto LABEL_46;
      }
    }
  }

  sub_268C157FC();
  v49 = sub_268C1580C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v49);
  v52 = v75;
  v51 = v76;
  if (EnumTagSinglePayload == 1)
  {
LABEL_24:
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v53 = __swift_project_value_buffer(v51, qword_2802D2F10);
    v54 = v74;
    (*(v52 + 16))(v74, v53, v51);

    v55 = sub_268C159FC();
    v56 = sub_268C15DEC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = OUTLINED_FUNCTION_25_2();
      v58 = OUTLINED_FUNCTION_24_2();
      v78 = v22;
      v79 = v58;
      *v57 = 136315138;
      sub_268C1581C();

      v59 = sub_268C15C0C();
      v61 = sub_268BB3D28(v59, v60, &v79);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_268BAD000, v55, v56, "MediaPlayerUsoTaskDefinition#reference unexpected value: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30();

      (*(v52 + 8))(v74, v51);
    }

    else
    {

      (*(v52 + 8))(v54, v51);
    }

    v64 = 5;
    goto LABEL_32;
  }

  sub_268BC4AB8(v17, v14);
  v62 = *(v49 - 8);
  v63 = (*(v62 + 88))(v14, v49);
  if (v63 == *MEMORY[0x277D5EE48])
  {

    v64 = 4;
  }

  else
  {
    if (v63 != *MEMORY[0x277D5EE50])
    {
      (*(v62 + 8))(v14, v49);
      goto LABEL_24;
    }

    v64 = 3;
  }

LABEL_32:
  *v77 = v64;
  sub_268BC4CFC(v17, &qword_2802CE0D0, &qword_268C17840);
LABEL_46:
  OUTLINED_FUNCTION_32_0();
  return result;
}

uint64_t sub_268BC230C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 40))() && (v3 = sub_268C156BC(), , v3))
  {
    sub_268BC3104(v3, a2);
  }

  else
  {
    v5 = sub_268C155DC();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v5);
  }
}

void ControlsUsoTask.listPosition.getter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268C15A1C();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_2();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  if (!(*(v2 + 40))(v4, v2) || (sub_268C1568C(), OUTLINED_FUNCTION_23_2(), !v0))
  {
    v19 = *(v2 + 48);
    v20 = OUTLINED_FUNCTION_8_3();
    if (!v21(v20) || (sub_268C1568C(), OUTLINED_FUNCTION_23_2(), !v0))
    {
      v22 = *(v2 + 32);
      v23 = OUTLINED_FUNCTION_8_3();
      if (!v24(v23) || (sub_268C1568C(), OUTLINED_FUNCTION_23_2(), !v0))
      {
        v26 = 0;
LABEL_21:
        v50 = -1;
        goto LABEL_22;
      }
    }
  }

  v25 = v10;
  sub_268C0D638(&v56);
  v26 = v56;
  v27 = v57;
  if (v57 == 255)
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v37 = __swift_project_value_buffer(v7, qword_2802D2F10);
    (*(v25 + 16))(v15, v37, v7);

    v38 = sub_268C159FC();
    v39 = sub_268C15DEC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_25_2();
      v53 = v25;
      v41 = v40;
      v42 = OUTLINED_FUNCTION_24_2();
      v55 = v0;
      v56 = v42;
      *v41 = 136315138;
      sub_268C157EC();
      v54 = v26;

      v43 = sub_268C15C0C();
      v45 = v6;
      v46 = sub_268BB3D28(v43, v44, &v56);
      v26 = v54;

      *(v41 + 4) = v46;
      v6 = v45;
      _os_log_impl(&dword_268BAD000, v38, v39, "Unable to get list position from: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_16_2();

      v47 = *(v53 + 8);
    }

    else
    {

      v51 = *(v25 + 8);
    }

    v48 = OUTLINED_FUNCTION_32_1();
    v49(v48);
    goto LABEL_21;
  }

  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v28 = __swift_project_value_buffer(v7, qword_2802D2F10);
  (*(v25 + 16))(v18, v28, v7);
  v29 = sub_268C159FC();
  v30 = sub_268C15DFC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_25_2();
    v53 = v25;
    v32 = v31;
    v33 = OUTLINED_FUNCTION_24_2();
    v54 = v26;
    v55 = v33;
    v34 = v33;
    *v32 = 136315138;
    v56 = v54;
    v57 = v27 & 1;
    v35 = ListPosition.description.getter();
    sub_268BB3D28(v35, v36, &v55);
    v52 = v7;
    OUTLINED_FUNCTION_33_1();

    *(v32 + 4) = v6;
    _os_log_impl(&dword_268BAD000, v29, v30, "List position: %s)", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v26 = v54;
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_16_2();

    (*(v53 + 8))(v18, v52);
  }

  else
  {

    (*(v25 + 8))(v18, v7);
  }

  v50 = v27 & 1;
LABEL_22:
  *v6 = v26;
  *(v6 + 8) = v50;
  OUTLINED_FUNCTION_32_0();
}

Swift::String_optional __swiftcall ControlsUsoTask.appBundleId(excluding:)(Swift::OpaquePointer excluding)
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_268C15A1C();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_2();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v41[-1] - v18;
  if (v3[5](v5, v3) && (sub_268C1569C(), OUTLINED_FUNCTION_23_2(), v1) || v3[6](v5, v3) && (sub_268C1569C(), OUTLINED_FUNCTION_23_2(), v1) || v3[4](v5, v3) && (sub_268C1569C(), OUTLINED_FUNCTION_23_2(), v1))
  {
    sub_268C13120();
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      v41[0] = v20;
      v41[1] = v21;
      MEMORY[0x28223BE20](v20);
      *(&v40 - 2) = v41;
      if (sub_268BC48EC(sub_268BC4C7C, (&v40 - 4), v7))
      {
      }

      else
      {
        if (qword_2802CDBE0 != -1)
        {
          OUTLINED_FUNCTION_18();
        }

        v32 = __swift_project_value_buffer(v8, qword_2802D2F10);
        (*(v11 + 16))(v19, v32, v8);

        v33 = sub_268C159FC();
        v34 = sub_268C15DFC();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_25_2();
          v36 = OUTLINED_FUNCTION_24_2();
          v41[0] = v36;
          *v35 = 136315138;
          *(v35 + 4) = sub_268BB3D28(v22, v23, v41);
          _os_log_impl(&dword_268BAD000, v33, v34, "ControlsUsoTask.appBundleId: %s)", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();
        }

        else
        {
        }

        (*(v11 + 8))(v19, v8);
      }
    }

    else
    {
      if (qword_2802CDBE0 != -1)
      {
        OUTLINED_FUNCTION_18();
      }

      v24 = __swift_project_value_buffer(v8, qword_2802D2F10);
      (*(v11 + 16))(v16, v24, v8);

      v25 = sub_268C159FC();
      v26 = sub_268C15DEC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_25_2();
        v28 = OUTLINED_FUNCTION_24_2();
        v41[0] = v28;
        *v27 = 136315138;
        v41[2] = v1;
        sub_268C1571C();

        v29 = sub_268C15C0C();
        v31 = sub_268BB3D28(v29, v30, v41);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_268BAD000, v25, v26, "Unable to get app bundle identifier from: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30();
      }

      else
      {
      }

      (*(v11 + 8))(v16, v8);
    }
  }

  OUTLINED_FUNCTION_32_0();
  result.value._object = v38;
  result.value._countAndFlagsBits = v37;
  return result;
}

uint64_t sub_268BC2D7C(uint64_t a1, uint64_t a2)
{
  v24 = sub_268C154AC();
  v20 = *(v24 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v24);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 56);
  v22 = a2;
  v23 = v2;
  v21 = a1;
  v9 = v8(a1, a2);
  v10 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  result = sub_268BC4A94(v9);
  v12 = result;
  v13 = 0;
  while (1)
  {
    if (v12 == v13)
    {

      v16 = v20;
      v17 = v24;
      (*(v20 + 104))(v7, *MEMORY[0x277D5E478], v24);
      v18 = sub_268BC38BC(v7, v21, v22);
      (*(v16 + 8))(v7, v17);
      v26 = v10;
      sub_268BB00A4(v18);
      return v26;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D627640](v13, v9);
    }

    else
    {
      if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v14 = *(v9 + 8 * v13 + 32);
    }

    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    sub_268C1563C();

    ++v13;
    if (v25)
    {
      MEMORY[0x26D6272B0](result);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268C15D2C();
      }

      result = sub_268C15D5C();
      v10 = v26;
      v13 = v15;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_268BC3104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_268C155DC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_268BC31AC(uint64_t a1)
{
  result = sub_268BC4E14(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_268BC4DC0(result, v3, 0, a1);
  }
}

double sub_268BC3228@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_268BB5B20(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_268BC3248(uint64_t a1)
{
  result = sub_268BC4E14(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_268BC4E54(&v5, result, v3, 0, a1);
  }
}

void ControlsUsoTask.haFromEntities()()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v2 = sub_268C154AC();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v10 = v9 - v8;
  (*(v5 + 104))(v9 - v8, *MEMORY[0x277D5E470], v2);
  v11 = OUTLINED_FUNCTION_32_1();
  v13 = sub_268BC38BC(v11, v12, v1);
  (*(v5 + 8))(v10, v2);
  v14 = sub_268BC4A94(v13);
  v15 = 0;
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v15)
    {

      OUTLINED_FUNCTION_32_0();
      return;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D627640](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    if (__OFADD__(v15, 1))
    {
      break;
    }

    v28[3] = &type metadata for HomeAutomationEntityQuery;
    v28[4] = &protocol witness table for HomeAutomationEntityQuery;
    v17 = swift_allocObject();
    v28[0] = v17;

    sub_268C00250(v17 + 16);
    FromEntity.init(haEntity:)(v28, v29);

    v18 = v30;
    if (v30)
    {
      v25 = v29[1];
      v26 = v29[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = *(v27 + 16);
        OUTLINED_FUNCTION_7();
        sub_268BB2E84();
        v27 = v23;
      }

      v20 = *(v27 + 16);
      v19 = *(v27 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_10_3(v19);
        sub_268BB2E84();
        v27 = v24;
      }

      *(v27 + 16) = v20 + 1;
      v21 = v27 + 24 * v20;
      *(v21 + 32) = v26;
      *(v21 + 40) = v25;
      *(v21 + 48) = v18;
      ++v15;
    }

    else
    {

      ++v15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

unint64_t sub_268BC38BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C154AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_268C15A1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = (*(a3 + 56))(a2, a3);
  v37 = a1;
  v17 = sub_268BE6660(sub_268BC4ED8, v36, v16);

  if (sub_268BC4A94(v17))
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v11, qword_2802D2F10);
    (*(v12 + 16))(v15, v18, v11);
    (*(v7 + 16))(v10, a1, v6);

    v19 = sub_268C159FC();
    v20 = sub_268C15DFC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38[0] = v34;
      *v21 = 136315394;
      v33 = v20;
      v22 = sub_268C1549C();
      v35 = v12;
      v24 = v23;
      (*(v7 + 8))(v10, v6);
      v25 = sub_268BB3D28(v22, v24, v38);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = sub_268C153EC();
      v27 = MEMORY[0x26D6272E0](v17, v26);
      v29 = sub_268BB3D28(v27, v28, v38);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_268BAD000, v19, v33, "Found entities with operator: %s, %s", v21, 0x16u);
      v30 = v34;
      swift_arrayDestroy();
      MEMORY[0x26D628010](v30, -1, -1);
      MEMORY[0x26D628010](v21, -1, -1);

      (*(v35 + 8))(v15, v11);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
      (*(v12 + 8))(v15, v11);
    }
  }

  return v17;
}

SiriPlaybackControlSupport::DeviceQuantifier_optional __swiftcall ControlsUsoTask.haDeviceQuantifier()()
{
  v2 = v1;
  v21 = v0;
  v3 = sub_268BC2D7C(v0, v1);
  v4 = sub_268BC4A94(v3);
  v5 = v4;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      LOBYTE(v4) = MEMORY[0x26D627640](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return v4;
    }

    if (sub_268C1567C())
    {
      sub_268BE22CC(&v24);

      v10 = v24;
      if (v24 == 5)
      {
        goto LABEL_15;
      }

      LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
      if ((v4 & 1) == 0)
      {
        OUTLINED_FUNCTION_1_2();
        sub_268BB2F78();
        v7 = v4;
      }

      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_10_3(v11);
        sub_268BB2F78();
        v7 = v4;
      }

      *(v7 + 16) = v12 + 1;
      *(v7 + v12 + 32) = v10;
      v6 = v9;
    }

    else
    {

LABEL_15:
      ++v6;
    }
  }

  v13 = (*(v2 + 24))(v21, v2);
  if (!v14)
  {
    goto LABEL_26;
  }

  if (v13 == 1886352499 && v14 == 0xE400000000000000)
  {
  }

  else
  {
    v16 = sub_268C1618C();

    if ((v16 & 1) == 0)
    {
LABEL_26:
      v17 = v22;
      goto LABEL_27;
    }
  }

  if (*(v7 + 16))
  {
    goto LABEL_26;
  }

  v17 = v22;
  if ((*(v2 + 40))(v21, v2))
  {
    if (sub_268C1567C())
    {
      sub_268BE22CC(&v23);

      v19 = v23;
      if (v23 != 5)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD98, &qword_268C17140);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_268C172B0;
        *(v7 + 32) = v19;
      }
    }
  }

LABEL_27:
  if (*(v7 + 16))
  {
    v18 = *(v7 + 32);
  }

  else
  {
    v18 = 5;
  }

  *v17 = v18;

  return v4;
}

SiriPlaybackControlSupport::PlaceHint_optional __swiftcall ControlsUsoTask.haPlaceHint()()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v75 = v5;
  v73 = sub_268C15A1C();
  v6 = OUTLINED_FUNCTION_3_0(v73);
  v72 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_0();
  v71 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0D8, &qword_268C17848);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v71 - v14;
  v16 = sub_268C153DC();
  v17 = OUTLINED_FUNCTION_3_0(v16);
  v77 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_2();
  v85 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  v84 = &v71 - v24;
  v80 = v4;
  v81 = v2;
  v82 = v0;
  v25 = sub_268BC2D7C(v4, v2);
  v26 = sub_268BC4A94(v25);
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  while (v26 != v27)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D627640](v27, v25);
    }

    else
    {
      if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v29 = *(v25 + 8 * v27 + 32);
    }

    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      OUTLINED_FUNCTION_18();
LABEL_37:
      v54 = v73;
      v55 = __swift_project_value_buffer(v73, qword_2802D2F10);
      v56 = v72;
      v57 = v71;
      (*(v72 + 16))(v71, v55, v54);
      v58 = sub_268C159FC();
      v59 = sub_268C15DFC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_25_2();
        v61 = v56;
        v62 = OUTLINED_FUNCTION_24_2();
        v86[0] = v62;
        *v60 = 136315138;

        v64 = MEMORY[0x26D6272E0](v63, &type metadata for PlaceHint);
        v66 = v65;

        v67 = sub_268BB3D28(v64, v66, v86);

        *(v60 + 4) = v67;
        _os_log_impl(&dword_268BAD000, v58, v59, "Found place hints: %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*(v61 + 8))(v57, v54);
      }

      else
      {

        (*(v56 + 8))(v57, v54);
      }

      v69 = v75;
      if (*(v27 + 16))
      {
        v68 = *(v27 + 32);
      }

      else
      {
        v68 = 20;
      }

      goto LABEL_44;
    }

    sub_268C00250(v86);
    memcpy(v87, v86, 0x65uLL);
    sub_268BB5BF4(v87);
    v31 = BYTE3(v87[12]);
    if (BYTE3(v87[12]) == 20)
    {
      ++v27;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = *(v28 + 16);
        OUTLINED_FUNCTION_7();
        sub_268BB2FA0();
        v28 = v36;
      }

      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_10_3(v32);
        v79 = v37;
        sub_268BB2FA0();
        v34 = v79;
        v28 = v38;
      }

      *(v28 + 16) = v34;
      *(v28 + v33 + 32) = v31;
      v27 = v30;
    }
  }

  v87[0] = v28;
  v39 = sub_268BC2D7C(v80, v81);
  v40 = sub_268BC4A94(v39);
  v27 = 0;
  v41 = v39 & 0xC000000000000001;
  v42 = v39 & 0xFFFFFFFFFFFFFF8;
  v82 = (v77 + 4);
  v80 = (v77 + 11);
  LODWORD(v79) = *MEMORY[0x277D5E238];
  v78 = *MEMORY[0x277D5E230];
  ++v77;
  v76 = MEMORY[0x277D84F90];
  v83 = v15;
  v81 = v39 & 0xFFFFFFFFFFFFFF8;
  while (v40 != v27)
  {
    if (v41)
    {
      MEMORY[0x26D627640](v27, v39);
    }

    else
    {
      if (v27 >= *(v42 + 16))
      {
        goto LABEL_48;
      }

      v43 = *(v39 + 8 * v27 + 32);
    }

    if (__OFADD__(v27, 1))
    {
      goto LABEL_47;
    }

    sub_268C153CC();

    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_268BC4CFC(v15, &qword_2802CE0D8, &qword_268C17848);
      goto LABEL_26;
    }

    v42 = v39;
    v39 = v41;
    v41 = v40;
    v44 = *v82;
    v45 = v84;
    (*v82)(v84, v15, v16);
    v40 = v85;
    v44(v85, v45, v16);
    v46 = (*v80)(v40, v16);
    if (v46 == v79)
    {
      v47 = 1;
      goto LABEL_29;
    }

    if (v46 == v78)
    {
      v47 = 3;
LABEL_29:
      v74 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = *(v76 + 16);
        OUTLINED_FUNCTION_7();
        sub_268BB2FA0();
        v76 = v52;
      }

      OUTLINED_FUNCTION_20_1();
      v49 = *(v76 + 16);
      v48 = *(v76 + 24);
      v15 = v83;
      if (v49 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_10_3(v48);
        sub_268BB2FA0();
        v76 = v53;
      }

      v50 = v76;
      *(v76 + 16) = v49 + 1;
      *(v50 + v49 + 32) = v74;
      ++v27;
    }

    else
    {
      (*v77)(v85, v16);
      OUTLINED_FUNCTION_20_1();
      v15 = v83;
LABEL_26:
      ++v27;
    }
  }

  sub_268BB01BC(v76);
  v27 = v87[0];
  if (*(v87[0] + 16))
  {
    if (qword_2802CDBE0 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_49;
  }

  v68 = 20;
  v69 = v75;
LABEL_44:
  *v69 = v68;

  OUTLINED_FUNCTION_32_0();
  return result;
}

uint64_t sub_268BC47F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_268C1562C();
  if (!result)
  {
    goto LABEL_13;
  }

  v5 = sub_268C1565C();
  v7 = v6;
  v8 = sub_268C1549C();
  if (!v7)
  {

    goto LABEL_10;
  }

  if (v5 == v8 && v7 == v9)
  {

    goto LABEL_12;
  }

  v11 = sub_268C1618C();

  if ((v11 & 1) == 0)
  {
LABEL_10:

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

LABEL_12:
  sub_268C1566C();

  v12 = v13;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_14:
  *a2 = v12;
  return result;
}

BOOL sub_268BC48EC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_268BC499C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_268BC4A94(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_268C1613C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_268BC4AB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0D0, &qword_268C17840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_268BC4B38(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_268BC4B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_268C1618C() & 1;
  }
}

uint64_t sub_268BC4BA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_30_1();
  }

  else
  {
    OUTLINED_FUNCTION_31_1();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_21_1();
}

uint64_t sub_268BC4BF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_30_1();
  }

  else
  {
    OUTLINED_FUNCTION_31_1();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_21_1();
}

uint64_t sub_268BC4C9C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 117, 7);
}

uint64_t sub_268BC4CFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_268BC4DC0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_268BC4E14(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_268C15FDC();
  v4 = *(a1 + 36);
  return result;
}

void *sub_268BC4E54(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_268BC4B28(a3);

  return sub_268BC4B38(a2, v5, a3);
}

void OUTLINED_FUNCTION_7_2()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

void *OUTLINED_FUNCTION_11_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char __dst)
{

  return memcpy(&__dst, &__src, 0x65uLL);
}

void OUTLINED_FUNCTION_16_2()
{

  JUMPOUT(0x26D628010);
}

uint64_t OUTLINED_FUNCTION_23_2()
{
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_28_1()
{

  JUMPOUT(0x26D627640);
}

uint64_t OUTLINED_FUNCTION_29_1()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t OUTLINED_FUNCTION_30_1()
{
  v3 = *(v0 + 8 * v1 + 32);
}

void OUTLINED_FUNCTION_31_1()
{

  JUMPOUT(0x26D627640);
}

void sub_268BC5144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_268BD5A48(a1, a2);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v12[4] = sub_268BD81E8;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_268BD8718;
  v12[3] = &block_descriptor_335;
  v10 = _Block_copy(v12);

  v11 = [v8 performWithCompletion_];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

void sub_268BC5260(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  sub_268BB9B44(0, &qword_2802CE1A0, 0x277D27958);

  v17 = sub_268BD5C70(a4, a5, &selRef_initWithBundleIdentifier_);
  sub_268BB9B44(0, &qword_2802CE1A8, 0x277D279E8);
  v18 = a3;
  v19 = v17;
  v20 = sub_268BD5384(a3, v17, 0);
  v21 = static MRCommandIDHelper.ensureMRCommandIDInOptions(options:)(a2);
  v22 = sub_268C15B4C();
  v23 = swift_allocObject();
  *(v23 + 16) = a8;
  *(v23 + 24) = a9;
  *(v23 + 32) = v10;
  *(v23 + 40) = a1;
  *(v23 + 48) = v21;
  aBlock[4] = sub_268BD82E4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268BB7C90;
  aBlock[3] = &block_descriptor_356;
  v24 = _Block_copy(aBlock);
  v25 = v20;

  MRMediaRemoteSendCommandToPlayerWithResult();
  _Block_release(v24);
}

void sub_268BC5458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268BB60C8();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_268BD7EE0;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_268BD8718;
  v9[3] = &block_descriptor_271;
  v8 = _Block_copy(v9);

  [v6 requestNowPlayingItemMetadataOnQueue:a1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_268BC5554(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_268BC55D4()
{
  v10 = sub_268C15E4C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268C15E1C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268C15AAC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_268BB9B44(0, &qword_2802CE068, 0x277D85C78);
  sub_268C15A7C();
  v11 = MEMORY[0x277D84F90];
  sub_268BD84E4(&qword_2802CE070, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE078, &unk_268C177B0);
  sub_268BC1190(&unk_2802CE080, &qword_2802CE078, &unk_268C177B0);
  sub_268C15FCC();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268C15E8C();
  qword_2802CE0E0 = result;
  return result;
}

id static PlaybackController.mediaRemoteCommandQueue.getter()
{
  if (qword_2802CDB78 != -1)
  {
    OUTLINED_FUNCTION_7_3();
  }

  v1 = qword_2802CE0E0;

  return v1;
}

void *PlaybackController.__allocating_init()()
{
  sub_268C1539C();
  v0 = type metadata accessor for PlaybackControlsCommandProvider();
  swift_allocObject();
  v1 = sub_268BB6134(&v11);
  v12 = v0;
  v13 = &off_287975C90;
  *&v11 = v1;
  type metadata accessor for PlaybackController();
  OUTLINED_FUNCTION_56();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(&v11, v0);
  v4 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v7 = (v6 - v5);
  (*(v8 + 16))(v6 - v5);
  v9 = *v7;
  v2[5] = v0;
  v2[6] = &off_287975C90;
  v2[2] = v9;
  __swift_destroy_boxed_opaque_existential_0(&v11);
  return v2;
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

uint64_t sub_268BC5A3C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_268BC5A70()
{
  OUTLINED_FUNCTION_31_0();
  v27 = v4;
  v28 = v1;
  v25 = v5;
  v26 = v6;
  v7 = sub_268C159EC();
  v8 = OUTLINED_FUNCTION_2_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_76();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_3();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_91(v10);
  OUTLINED_FUNCTION_55();
  v14();
  OUTLINED_FUNCTION_83();
  v15 = v2 + v12;
  v16 = (v2 + v12) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_17_4(v17, 31);
  v19(v18, v3, v0);
  *(v17 + v15) = 1;
  v20 = v17 + v16;
  *(v20 + 8) = v25;
  *(v20 + 16) = v26;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_268BD6B10;
  *(v21 + 24) = v17;

  sub_268BC5C5C(sub_268BD8720, v21, v27, v28);

  v22 = *(v10 + 8);
  v23 = OUTLINED_FUNCTION_73();
  v24(v23);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BC5C5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v38 = a4;
  v39 = a1;
  v40 = a2;
  v5 = sub_268C15A1C();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2802CDB70 != -1)
  {
LABEL_20:
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802D2ED8);
  (*(v6 + 16))(v9, v10, v5);

  v11 = sub_268C159FC();
  v12 = sub_268C15DFC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v41 = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x26D6272E0](a3, MEMORY[0x277D837D0]);
    v17 = sub_268BB3D28(v15, v16, &v41);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_268BAD000, v11, v12, "Executing remove devices: %s from a playback group", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D628010](v14, -1, -1);
    MEMORY[0x26D628010](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v6 = a3[2];
  if (v6)
  {
    a3 += 5;
    v18 = MEMORY[0x277D84F98];
    v5 = &unk_268C179A0;
    while (1)
    {
      v20 = *(a3 - 1);
      v19 = *a3;

      swift_isUniquelyReferenced_nonNull_native();
      v41 = v18;
      v9 = v18;
      v21 = sub_268BD99A0(v20, v19);
      if (__OFADD__(v18[2], (v22 & 1) == 0))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE1B0, &unk_268C179A0);
      v9 = &v41;
      if (sub_268C1610C())
      {
        v9 = v41;
        v25 = sub_268BD99A0(v20, v19);
        if ((v24 & 1) != (v26 & 1))
        {
          result = sub_268C161CC();
          __break(1u);
          return result;
        }

        v23 = v25;
      }

      if (v24)
      {

        v18 = v41;
        v27 = (v41[7] + 16 * v23);
        v28 = v27[1];
        *v27 = 0;
        v27[1] = 0xE000000000000000;
      }

      else
      {
        v18 = v41;
        v41[(v23 >> 6) + 8] |= 1 << v23;
        v29 = (v18[6] + 16 * v23);
        *v29 = v20;
        v29[1] = v19;
        v30 = (v18[7] + 16 * v23);
        *v30 = 0;
        v30[1] = 0xE000000000000000;
        v31 = v18[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_19;
        }

        v18[2] = v33;
      }

      a3 += 2;
      if (!--v6)
      {
        goto LABEL_17;
      }
    }
  }

  v18 = MEMORY[0x277D84F98];
LABEL_17:
  v34 = __swift_project_boxed_opaque_existential_1((v38 + 16), *(v38 + 40));
  v35 = swift_allocObject();
  *(v35 + 16) = v39;
  *(v35 + 24) = v40;
  v36 = *v34;

  sub_268BB787C(v18, 0, 0, 0, sub_268BD82F8, v35);
}

uint64_t sub_268BC6050(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  if (!a2)
  {
    goto LABEL_10;
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v13, v15, v6);

    v16 = sub_268C159FC();
    v17 = sub_268C15DEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_268BB3D28(a1, a2, &v29);
      _os_log_impl(&dword_268BAD000, v16, v17, "Error removing devices using Mediaremote %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x26D628010](v20, -1, -1);
      v21 = v19;
      a3 = v28;
      MEMORY[0x26D628010](v21, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    v29 = 0x8000000000000000;
    v30 = 1;
  }

  else
  {
LABEL_10:
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v11, v22, v6);
    v23 = sub_268C159FC();
    v24 = sub_268C15DFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_268BAD000, v23, v24, "Success removing devices from group", v25, 2u);
      MEMORY[0x26D628010](v25, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    v29 = 0;
    v30 = 0;
  }

  return a3(&v29);
}

void sub_268BC63D8()
{
  OUTLINED_FUNCTION_31_0();
  v17 = v1;
  v3 = v2;
  v18 = v4;
  v5 = sub_268C15A1C();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  __swift_project_value_buffer(v5, qword_2802D2ED8);
  v11 = OUTLINED_FUNCTION_8_4();
  v12(v11);
  v13 = sub_268C159FC();
  v14 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_78(v14))
  {
    v15 = OUTLINED_FUNCTION_23_0();
    *v15 = 0;
    _os_log_impl(&dword_268BAD000, v13, v14, v17, v15, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v8 + 8))(v0, v5);
  OUTLINED_FUNCTION_22_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v18;
  *(v16 + 24) = v3;

  sub_268C15B7C();
  sub_268BCF444();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC65D0()
{
  OUTLINED_FUNCTION_31_0();
  v27 = v2;
  v28 = v1;
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v6 = sub_268C159EC();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  (*(v9 + 16))(v13, v15, v0);
  v16 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v17 = v16 + v11;
  v18 = (v16 + v11) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "executeMediaRemoteResumeLocalAppCommand";
  *(v19 + 24) = 39;
  *(v19 + 32) = 2;
  (*(v9 + 32))(v19 + v16, v13, v0);
  *(v19 + v17) = 0;
  v20 = v19 + v18;
  v21 = v25;
  *(v20 + 8) = v24;
  *(v20 + 16) = v21;

  sub_268C15EAC();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_268BD870C;
  *(v22 + 24) = v19;

  sub_268BC6808(sub_268BD8720, v22, v26, v27, v28);

  (*(v9 + 8))(v15, v0);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BC6808(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v27 = a2;
  v9 = sub_268C15A1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_2802D2ED8);
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_268C159FC();
  v16 = sub_268C15DFC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_268BB3D28(a3, a4, &v28);
    _os_log_impl(&dword_268BAD000, v15, v16, "Sending a resume command to app: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D628010](v19, -1, -1);
    v20 = v18;
    a1 = v26;
    MEMORY[0x26D628010](v20, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v21 = __swift_project_boxed_opaque_existential_1((a5 + 16), *(a5 + 40));
  v22 = sub_268C15B7C();
  v23 = *v21;
  sub_268BC5260(0, v22, 0, a3, a4, 0, 0, a1, v27);
}

void sub_268BC6A94()
{
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_61();
  v0 = sub_268C15A1C();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  __swift_project_value_buffer(v0, qword_2802D2ED8);
  v4 = OUTLINED_FUNCTION_8_4();
  v5(v4);
  v6 = sub_268C159FC();
  v7 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_77(v7))
  {
    v8 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_22_3(v8);
    OUTLINED_FUNCTION_39_0(&dword_268BAD000, v9, v10, "Executing next playback control");
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_30();
  }

  v11 = OUTLINED_FUNCTION_40_0();
  v12(v11);
  OUTLINED_FUNCTION_56();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_25_3(v13);

  sub_268C15B7C();
  sub_268BCF444();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC6C50()
{
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_61();
  v0 = sub_268C15A1C();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  __swift_project_value_buffer(v0, qword_2802D2ED8);
  v4 = OUTLINED_FUNCTION_8_4();
  v5(v4);
  v6 = sub_268C159FC();
  v7 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_77(v7))
  {
    v8 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_22_3(v8);
    OUTLINED_FUNCTION_39_0(&dword_268BAD000, v9, v10, "Executing previous playback control");
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_30();
  }

  v11 = OUTLINED_FUNCTION_40_0();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0E8, &unk_268C178D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v14 = *MEMORY[0x277D27DD0];
  *(inited + 32) = *MEMORY[0x277D27DD0];
  *(inited + 40) = 1;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  OUTLINED_FUNCTION_57();
  v16 = sub_268C15B7C();
  sub_268BC6E54(v16);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_56();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_25_3(v17);

  OUTLINED_FUNCTION_68();

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BC6E54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE198, &qword_268C17998);
    v2 = sub_268C1614C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a1 + 56) + v11);
    *&v32[0] = *(*(a1 + 48) + 8 * v11);
    v13 = *&v32[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_268BD8290(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_268BD8290(v31, v32);
    v14 = *(v2 + 40);
    result = sub_268C15FFC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_268BD8290(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_268BC7110(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE198, &qword_268C17998);
    v2 = sub_268C1614C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a1 + 56) + v11);
    *&v32[0] = *(*(a1 + 48) + v11);
    v13 = *&v32[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_268BD8290(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_268BD8290(v31, v32);
    v14 = *(v2 + 40);
    result = sub_268C15FFC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_268BD8290(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_268BC73D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE198, &qword_268C17998);
    v2 = sub_268C1614C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a1 + 56) + 4 * v11);
    *&v32[0] = *(*(a1 + 48) + 8 * v11);
    v13 = *&v32[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_268BD8290(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_268BD8290(v31, v32);
    v14 = *(v2 + 40);
    result = sub_268C15FFC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_268BD8290(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_268BC7694()
{
  OUTLINED_FUNCTION_31_0();
  v28 = v0;
  v2 = v1;
  v29 = v3;
  v5 = v4;
  v6 = sub_268C15A1C();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  v14 = v13 - v12;
  v15 = *v5;
  if (*(v5 + 8))
  {
    sub_268BB99C0(*v5);
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    OUTLINED_FUNCTION_33_2(v6, qword_2802D2ED8);
    v16 = OUTLINED_FUNCTION_64(v9);
    v17(v16);
    sub_268BB99C0(v15);
    v18 = sub_268C159FC();
    v19 = sub_268C15DEC();
    sub_268BB99F0(v15, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_25_2();
      v30 = OUTLINED_FUNCTION_24_2();
      *v20 = 136446210;
      sub_268BD8218();
      v21 = sub_268C161DC();
      OUTLINED_FUNCTION_96(v21, v22);
      OUTLINED_FUNCTION_109();
      *(v20 + 4) = v2;
      OUTLINED_FUNCTION_70(&dword_268BAD000, v23, v19);
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_30();
    }

    (*(v9 + 8))(v14, v6);
    v24 = OUTLINED_FUNCTION_16_3();
    v28(v24);
    sub_268BB99F0(v15, 1);
    goto LABEL_12;
  }

  if ((v2 & 1) == 0)
  {
    v31 = *v5;
    v27 = OUTLINED_FUNCTION_90();
    v28(v27);
LABEL_12:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  OUTLINED_FUNCTION_22_0();
  v25 = swift_allocObject();
  *(v25 + 16) = v28;
  *(v25 + 24) = v29;

  sub_268BC63AC();
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BC792C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE108, &unk_268C19120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v8 = *MEMORY[0x277D27D60];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  sub_268C1601C();
  *(inited + 96) = MEMORY[0x277D839F8];
  *(inited + 72) = a1;
  sub_268C15B7C();
  OUTLINED_FUNCTION_22_0();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  sub_268BCF444();
}

void sub_268BC7A78()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_268C15A1C();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_0();
  v12 = v11 - v10;
  v13 = *v3;
  if (*(v3 + 8))
  {
    sub_268BB99C0(*v3);
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    __swift_project_value_buffer(v4, qword_2802D2ED8);
    OUTLINED_FUNCTION_30_2();
    v14(v12);
    sub_268BB99C0(v13);
    v15 = sub_268C159FC();
    v16 = sub_268C15DEC();
    OUTLINED_FUNCTION_107();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_25_2();
      v28 = OUTLINED_FUNCTION_24_2();
      *v17 = 136446210;
      sub_268BD8218();
      v18 = sub_268C161DC();
      v20 = v1;
      v21 = OUTLINED_FUNCTION_96(v18, v19);

      *(v17 + 4) = v21;
      v1 = v20;
      OUTLINED_FUNCTION_70(&dword_268BAD000, v22, v16);
      __swift_destroy_boxed_opaque_existential_0(v28);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    v23 = *(v7 + 8);
    v24 = OUTLINED_FUNCTION_62();
    v25(v24);
    v26 = OUTLINED_FUNCTION_16_3();
    v1(v26);
    OUTLINED_FUNCTION_107();
  }

  else
  {
    v29 = *v3;
    v27 = OUTLINED_FUNCTION_90();
    v1(v27);
  }

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BC7CD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE110, &qword_268C178F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v8 = *MEMORY[0x277D27DA0];
  *(inited + 32) = *MEMORY[0x277D27DA0];
  *(inited + 40) = a4;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  v10 = sub_268C15B7C();
  sub_268BC73D8(v10);

  OUTLINED_FUNCTION_22_0();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  sub_268BCF444();
}

uint64_t sub_268BC7DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2802CDB78 != -1)
  {
    OUTLINED_FUNCTION_7_3();
  }

  v7 = qword_2802CE0E0;
  OUTLINED_FUNCTION_54();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a3;
  v8[4] = a4;
  OUTLINED_FUNCTION_54();
  v9 = swift_allocObject();
  *(v9 + 16) = 19;
  *(v9 + 24) = sub_268BD6CF4;
  *(v9 + 32) = v8;

  v10 = OUTLINED_FUNCTION_67();
  sub_268BD58B8(v10, v11, v7, v12, v9);
}

uint64_t sub_268BC7F08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  sub_268BC7F68();
  a4(a1, v6);
}

void sub_268BC7F68()
{
  OUTLINED_FUNCTION_59();
  v4 = v3;
  v5 = sub_268C15A1C();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_87();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27_2();
  if (*MEMORY[0x277D27AC0])
  {
    v12 = sub_268C15BFC();
    sub_268C0F3F8(v12, v13, v4, &v43);

    if (v44)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE148, &qword_268C17980);
      if (swift_dynamicCast())
      {
        v14 = *(v42 + 16);
        if (v14)
        {
          *&v43 = MEMORY[0x277D84F90];
          sub_268BB4A40(0, v14, 0);
          v15 = 32;
          v16 = v43;
          do
          {
            v17 = *(v42 + v15) * 100.0;
            sub_268C15D8C();
            v19 = v18;
            *&v43 = v16;
            v21 = *(v16 + 16);
            v20 = *(v16 + 24);
            if (v21 >= v20 >> 1)
            {
              sub_268BB4A40((v20 > 1), v21 + 1, 1);
              v16 = v43;
            }

            *(v16 + 16) = v21 + 1;
            *(v16 + 8 * v21 + 32) = v19 / 100.0;
            v15 += 8;
            --v14;
          }

          while (v14);
        }

        else
        {

          v16 = MEMORY[0x277D84F90];
        }

        if (qword_2802CDB70 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        OUTLINED_FUNCTION_33_2(v0, qword_2802D2ED8);
        (*(v8 + 16))(v1);

        v33 = sub_268C159FC();
        v34 = sub_268C15DFC();

        if (os_log_type_enabled(v33, v34))
        {
          OUTLINED_FUNCTION_25_2();
          v35 = OUTLINED_FUNCTION_43_0();
          *&v43 = v35;
          MEMORY[0] = 136315138;
          v36 = MEMORY[0x26D6272E0](v16, MEMORY[0x277D839F8]);
          v38 = sub_268BB3D28(v36, v37, &v43);

          MEMORY[4] = v38;
          _os_log_impl(&dword_268BAD000, v33, v34, "Supported speeds: %s", 0, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_37_0();
        }

        v39 = *(v8 + 8);
        v40 = OUTLINED_FUNCTION_15();
        v41(v40);
LABEL_22:
        OUTLINED_FUNCTION_58();
        return;
      }
    }

    else
    {
      sub_268BD8138(&v43, &qword_2802CE140, &qword_268C17978);
    }

    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    OUTLINED_FUNCTION_33_2(v0, qword_2802D2ED8);
    v22 = OUTLINED_FUNCTION_24_3(v8);
    v23(v22);

    v24 = sub_268C159FC();
    v25 = sub_268C15DEC();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_25_2();
      v26 = OUTLINED_FUNCTION_43_0();
      *&v43 = v26;
      *v2 = 136315138;
      v27 = sub_268C15B6C();
      v29 = sub_268BB3D28(v27, v28, &v43);

      *(v2 + 4) = v29;
      _os_log_impl(&dword_268BAD000, v24, v25, "Didn't find any supported playback speeds in %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_37_0();
    }

    v30 = *(v8 + 8);
    v31 = OUTLINED_FUNCTION_67();
    v32(v31);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_268BC83C8()
{
  OUTLINED_FUNCTION_59();
  v23 = v1;
  v3 = v2;
  v24 = v4;
  v6 = v5;
  v7 = sub_268C15A1C();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  __swift_project_value_buffer(v7, qword_2802D2ED8);
  v13 = OUTLINED_FUNCTION_8_4();
  v14(v13);
  v15 = sub_268C159FC();
  v16 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_78(v16))
  {
    v17 = OUTLINED_FUNCTION_23_0();
    *v17 = 0;
    _os_log_impl(&dword_268BAD000, v15, v16, v23, v17, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v10 + 8))(v0, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE100, &unk_268C178E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v19 = *MEMORY[0x277D27DF8];
  *(inited + 32) = *MEMORY[0x277D27DF8];
  *(inited + 40) = v6;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  v21 = sub_268C15B7C();
  sub_268BC7110(v21);

  OUTLINED_FUNCTION_22_0();
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  *(v22 + 24) = v3;

  sub_268BCF444();

  OUTLINED_FUNCTION_58();
}

void sub_268BC8624()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  OUTLINED_FUNCTION_61();
  v2 = sub_268C15A1C();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  __swift_project_value_buffer(v2, qword_2802D2ED8);
  v6 = OUTLINED_FUNCTION_8_4();
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_77(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_22_3(v10);
    OUTLINED_FUNCTION_39_0(&dword_268BAD000, v11, v12, "Executing seek playback control");
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_30();
  }

  v13 = OUTLINED_FUNCTION_40_0();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE100, &unk_268C178E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v16 = *MEMORY[0x277D27D50];
  *(inited + 32) = *MEMORY[0x277D27D50];
  *(inited + 40) = v1;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  OUTLINED_FUNCTION_57();
  v18 = sub_268C15B7C();
  sub_268BC7110(v18);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_56();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_25_3(v19);

  OUTLINED_FUNCTION_68();

  OUTLINED_FUNCTION_58();
}

void sub_268BC8828()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268C15A1C();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v13 = *v6;
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_33_2(v7, qword_2802D2ED8);
  v14 = OUTLINED_FUNCTION_24_3(v10);
  v15(v14);
  v16 = sub_268C159FC();
  v17 = sub_268C15DFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_23_0();
    *v18 = 0;
    _os_log_impl(&dword_268BAD000, v16, v17, "Changing shuffle mode", v18, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v10 + 8))(v0, v7);
  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = 3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE110, &qword_268C178F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v21 = *MEMORY[0x277D27DE8];
  *(inited + 32) = *MEMORY[0x277D27DE8];
  *(inited + 40) = v19;
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  v23 = sub_268C15B7C();
  sub_268BC73D8(v23);

  OUTLINED_FUNCTION_22_0();
  v24 = swift_allocObject();
  *(v24 + 16) = v4;
  *(v24 + 24) = v2;

  sub_268BCF444();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC8AA8()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v2 = sub_268C15A1C();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_3();
  v20 = *v1;
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  __swift_project_value_buffer(v2, qword_2802D2ED8);
  v6 = OUTLINED_FUNCTION_8_4();
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_77(v9))
  {
    *OUTLINED_FUNCTION_23_0() = 0;
    OUTLINED_FUNCTION_39_0(&dword_268BAD000, v10, v11, "Changing repeat mode");
    OUTLINED_FUNCTION_30();
  }

  v12 = OUTLINED_FUNCTION_40_0();
  v13(v12);
  v14 = dword_268C179B4[v20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE110, &qword_268C178F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v16 = *MEMORY[0x277D27DC8];
  *(inited + 32) = *MEMORY[0x277D27DC8];
  *(inited + 40) = v14;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  OUTLINED_FUNCTION_57();
  v18 = sub_268C15B7C();
  sub_268BC73D8(v18);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_56();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_25_3(v19);

  OUTLINED_FUNCTION_68();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC8CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_31_0();
  v25 = v24;
  v60 = v27;
  v61 = v26;
  v29 = v28;
  v62 = v30;
  OUTLINED_FUNCTION_47_0();
  v31 = sub_268C15A1C();
  v32 = OUTLINED_FUNCTION_3_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_87();
  MEMORY[0x28223BE20](v37);
  v39 = &v60 - v38;
  v40 = *v22;
  if (*(v22 + 8))
  {
    sub_268BB99C0(*v22);
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    __swift_project_value_buffer(v31, qword_2802D2ED8);
    OUTLINED_FUNCTION_21_2();
    v41(v39);
    sub_268BB99C0(v40);
    v42 = sub_268C159FC();
    v43 = sub_268C15DEC();
    OUTLINED_FUNCTION_107();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_25_2();
      v45 = OUTLINED_FUNCTION_24_2();
      v63 = v40;
      v64 = v45;
      *v44 = 136446210;
      sub_268BD8218();
      v46 = sub_268C161DC();
      v48 = OUTLINED_FUNCTION_96(v46, v47);

      *(v44 + 4) = v48;
      OUTLINED_FUNCTION_70(&dword_268BAD000, v49, v43);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_30();
    }

    (*(v34 + 8))(v39, v31);
    v64 = v40;
    v50 = OUTLINED_FUNCTION_16_3();
    v61(v50);
    OUTLINED_FUNCTION_107();
  }

  else if (v29)
  {
    v60 = a22;
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    __swift_project_value_buffer(v31, qword_2802D2ED8);
    OUTLINED_FUNCTION_21_2();
    v51(v23);
    v52 = sub_268C159FC();
    v53 = sub_268C15DFC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_23_0();
      *v54 = 0;
      _os_log_impl(&dword_268BAD000, v52, v53, v25, v54, 2u);
      OUTLINED_FUNCTION_41_0();
    }

    v55 = *(v34 + 8);
    v56 = OUTLINED_FUNCTION_93();
    v57(v56);
    OUTLINED_FUNCTION_22_0();
    v58 = swift_allocObject();
    *(v58 + 16) = v61;
    *(v58 + 24) = v62;

    sub_268BC63AC();
  }

  else
  {
    v64 = *v22;
    v59 = OUTLINED_FUNCTION_90();
    v61(v59);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC9008()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  v34 = v6;
  v35 = v7;
  v8 = sub_268C159EC();
  v9 = OUTLINED_FUNCTION_2_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v15 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_22_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802CDB60;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v18 = qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_91(v11);
  OUTLINED_FUNCTION_55();
  v19();
  OUTLINED_FUNCTION_81();
  v20 = v1 + v13;
  v21 = (v1 + v13) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_15_3(v22, 24);
  v24 = OUTLINED_FUNCTION_85(v23);
  v25(v24, v15, v0);
  *(v22 + v20) = 1;
  v26 = v22 + v21;
  *(v26 + 8) = sub_268BD6E60;
  *(v26 + 16) = v16;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_268BD6E9C;
  *(v27 + 24) = v22;
  OUTLINED_FUNCTION_22_0();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_268BD6EBC;
  *(v28 + 24) = v27;
  OUTLINED_FUNCTION_22_0();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_268BD6EC4;
  *(v29 + 24) = v28;
  OUTLINED_FUNCTION_22_0();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_268BD6EFC;
  *(v30 + 24) = v29;

  sub_268BC5144(v34, v35, sub_268BD6F04, v30);

  v31 = *(v11 + 8);
  v32 = OUTLINED_FUNCTION_73();
  v33(v32);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BC92D4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 && (v14 = sub_268BC4EF4(a1)) != 0)
  {
    v15 = v14;
    v33 = v13;
    v34 = v14;
    v11 = 0;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = a1 & 0xC000000000000001;
    v38 = a2;
    v39 = a1 + 32;
    v36 = v6;
    v37 = a3;
    v35 = v7;
    while (1)
    {
LABEL_4:
      if (v11 == v15)
      {
        if (qword_2802CDB70 != -1)
        {
          swift_once();
        }

        v29 = __swift_project_value_buffer(v6, qword_2802D2ED8);
        (*(v7 + 16))(v33, v29, v6);
        v30 = sub_268C159FC();
        v31 = sub_268C15DEC();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_268BAD000, v30, v31, "Missing requested group type", v32, 2u);
          MEMORY[0x26D628010](v32, -1, -1);
        }

        (*(v7 + 8))(v33, v6);
        goto LABEL_26;
      }

      if (v41)
      {
        v16 = MEMORY[0x26D627640](v11, a1);
      }

      else
      {
        if (v11 >= *(v40 + 16))
        {
          goto LABEL_40;
        }

        v16 = *(v39 + 8 * v11);
      }

      if (__OFADD__(v11++, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v42 = v16;
      v18 = sub_268BD6978(v16);
      if (v18)
      {
        break;
      }
    }

    v19 = v18;
    v6 = sub_268BC4EF4(v18);
    v7 = 0;
    do
    {
      if (v6 == v7)
      {

        a2 = v38;
        v7 = v35;
        v6 = v36;
        v15 = v34;
        goto LABEL_4;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x26D627640](v7, v19);
      }

      else
      {
        if (v7 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v20 = *(v19 + 8 * v7 + 32);
      }

      v21 = v20;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      a2 = [v20 languageOptionType];

      ++v7;
    }

    while (a2 != 1);

    v26 = [v42 selectedOption];
    v27 = v26;
    if (v26)
    {
    }

    v38(v27 != 0);
    v28 = v42;
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
LABEL_41:
      swift_once();
    }

    v22 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v11, v22, v6);
    v23 = sub_268C159FC();
    v24 = sub_268C15DEC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_268BAD000, v23, v24, "Unable to get language groups", v25, 2u);
      MEMORY[0x26D628010](v25, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
LABEL_26:
    a2(0);
  }
}

void sub_268BC9748()
{
  OUTLINED_FUNCTION_31_0();
  v32 = v2;
  v33 = v3;
  v35 = v4;
  v36 = v5;
  v7 = v6;
  v8 = sub_268C159EC();
  v9 = OUTLINED_FUNCTION_2_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_2();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_3();
  v34 = *v7;
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  v18 = *(v11 + 16);
  OUTLINED_FUNCTION_55();
  v19();
  OUTLINED_FUNCTION_83();
  v20 = v1 + v13;
  v21 = (v1 + v13) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_17_4(v22, 18);
  v24(v23, v16, v0);
  *(v22 + v20) = 1;
  v25 = v22 + v21;
  *(v25 + 8) = v32;
  *(v25 + 16) = v33;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_268BD6B10;
  *(v26 + 24) = v22;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_268BD8720;
  *(v27 + 24) = v26;
  *(v27 + 32) = v34;
  OUTLINED_FUNCTION_22_0();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_268BD6F9C;
  *(v28 + 24) = v27;

  sub_268BC5144(v35, v36, sub_268BD8724, v28);

  v29 = *(v11 + 8);
  v30 = OUTLINED_FUNCTION_73();
  v31(v30);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BC99BC(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, char a4)
{
  v8 = sub_268C15A1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v70 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v70 - v18;
  MEMORY[0x28223BE20](v17);
  v80 = &v70 - v20;
  if (!a1 || (v82 = sub_268BC4EF4(a1)) == 0)
  {
    if (qword_2802CDB70 == -1)
    {
LABEL_23:
      v31 = __swift_project_value_buffer(v8, qword_2802D2ED8);
      (*(v9 + 16))(v13, v31, v8);
      v32 = sub_268C159FC();
      v33 = sub_268C15DEC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_268BAD000, v32, v33, "Unable to get language groups", v34, 2u);
        MEMORY[0x26D628010](v34, -1, -1);
      }

      (*(v9 + 8))(v13, v8);
      *&v90 = 0;
      BYTE8(v90) = 1;
      a2(&v90);
      return;
    }

LABEL_68:
    swift_once();
    goto LABEL_23;
  }

  v71 = v16;
  v72 = v19;
  v76 = a3;
  v77 = a2;
  v13 = 0;
  v21 = (a4 & 1) == 0;
  a2 = (a1 & 0xC000000000000001);
  v22 = a1 & 0xFFFFFFFFFFFFFF8;
  v81 = a1 + 32;
  v79 = v8;
  v78 = v9;
  v75 = a1;
  v74 = a1 & 0xC000000000000001;
  v73 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
LABEL_4:
    if (v13 == v82)
    {
      v65 = v77;
      if (qword_2802CDB70 != -1)
      {
        swift_once();
      }

      v66 = __swift_project_value_buffer(v8, qword_2802D2ED8);
      (*(v9 + 16))(v80, v66, v8);
      v67 = sub_268C159FC();
      v68 = sub_268C15DEC();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_268BAD000, v67, v68, "Missing requested group type", v69, 2u);
        MEMORY[0x26D628010](v69, -1, -1);
      }

      (*(v9 + 8))(v80, v8);
      *&v90 = 2;
      BYTE8(v90) = 1;
      v65(&v90);
      return;
    }

    if (a2)
    {
      v23 = MEMORY[0x26D627640](v13, a1);
    }

    else
    {
      if (v13 >= *(v22 + 16))
      {
        goto LABEL_67;
      }

      v23 = *(v81 + 8 * v13);
    }

    v24 = v23;
    if (__OFADD__(v13++, 1))
    {
      goto LABEL_66;
    }

    v26 = sub_268BD6978(v23);
    if (v26)
    {
      break;
    }
  }

  v27 = v26;
  v83 = v24;
  v9 = sub_268BC4EF4(v26);
  v28 = 0;
  v8 = v27 & 0xC000000000000001;
  do
  {
    if (v9 == v28)
    {

      v8 = v79;
      v9 = v78;
      a1 = v75;
      a2 = v74;
      v22 = v73;
      goto LABEL_4;
    }

    if (v8)
    {
      v29 = MEMORY[0x26D627640](v28, v27);
    }

    else
    {
      if (v28 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v29 = *(v27 + 8 * v28 + 32);
    }

    v30 = v29;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    a2 = [v29 languageOptionType];

    ++v28;
  }

  while (a2 != v21);

  v35 = v83;
  v36 = sub_268BD6978(v83);
  if (!v36)
  {
    goto LABEL_49;
  }

  v9 = v36;
  v37 = sub_268BC4EF4(v36);
  if (!v37)
  {

LABEL_49:
    *&v90 = 1;
    BYTE8(v90) = 1;
    v77(&v90);

    return;
  }

  v38 = v37;
  v39 = 0;
  a2 = (v9 & 0xFFFFFFFFFFFFFF8);
  v8 = MEMORY[0x277D84F90];
  while (v38 != v39)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x26D627640](v39, v9);
    }

    else
    {
      if (v39 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v40 = *(v9 + 8 * v39 + 32);
    }

    v13 = v40;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_64;
    }

    v93 = v40;
    sub_268BCA3A0(&v93, v35, &v90);

    if (*(&v90 + 1))
    {
      v87 = v90;
      v88 = v91;
      v89[0] = *v92;
      *(v89 + 9) = *&v92[9];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = *(v8 + 16);
        sub_268BB3244();
        v8 = v47;
      }

      v41 = *(v8 + 16);
      v13 = (v41 + 1);
      if (v41 >= *(v8 + 24) >> 1)
      {
        sub_268BB3244();
        v8 = v48;
      }

      v86[0] = v89[0];
      *(v86 + 9) = *(v89 + 9);
      v42 = v87;
      v85 = v88;
      v84 = v87;
      *(v8 + 16) = v13;
      v43 = (v8 + (v41 << 6));
      v44 = v85;
      v45 = v86[0];
      *(v43 + 73) = *(v86 + 9);
      v43[3] = v44;
      v43[4] = v45;
      v43[2] = v42;
      v35 = v83;
    }

    else
    {
      v87 = v90;
      v88 = v91;
      v89[0] = *v92;
      *(v89 + 9) = *&v92[9];
      sub_268BD8138(&v87, &qword_2802CE168, &qword_268C17990);
    }

    ++v39;
  }

  if (*(v8 + 16))
  {
    v49 = v77;
    v50 = v79;
    v51 = v78;
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v50, qword_2802D2ED8);
    (*(v51 + 16))(v72, v52, v50);

    v53 = sub_268C159FC();
    v54 = sub_268C15DCC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = *(v8 + 16);

      _os_log_impl(&dword_268BAD000, v53, v54, "Returning %ld language options", v55, 0xCu);
      MEMORY[0x26D628010](v55, -1, -1);
    }

    else
    {
    }

    (*(v51 + 8))(v72, v50);
    *&v90 = v8;
    BYTE8(v90) = 0;
    v49(&v90);

    sub_268BD818C(v90, SBYTE8(v90));
  }

  else
  {

    v56 = v77;
    v57 = v79;
    v58 = v78;
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v59 = __swift_project_value_buffer(v57, qword_2802D2ED8);
    v60 = v71;
    (*(v58 + 16))(v71, v59, v57);
    v61 = sub_268C159FC();
    v62 = sub_268C15DEC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_268BAD000, v61, v62, "No language options able to be returned", v63, 2u);
      v64 = v63;
      v60 = v71;
      MEMORY[0x26D628010](v64, -1, -1);
    }

    (*(v58 + 8))(v60, v57);
    *&v90 = 1;
    BYTE8(v90) = 1;
    v56(&v90);
  }
}

double sub_268BCA3A0@<D0>(id *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v54 = a2;
  v55 = a3;
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268C1533C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (([*a1 isAutomaticLegibleLanguageOption] & 1) != 0 || objc_msgSend(v14, sel_isAutomaticAudibleLanguageOption))
  {
    v15 = 1869903201;
    type metadata accessor for LocalizationProvider();
    swift_initStaticObject();
    sub_268C1539C();
    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    sub_268C1536C();
    __swift_destroy_boxed_opaque_existential_0(v56);
    LOBYTE(v56[0]) = 8;
    v16 = sub_268C056A8(v56);
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 1869903169;
    }

    v19 = 0xE400000000000000;
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    v52 = v20;
    v53 = v18;
    (*(v10 + 8))(v13, v9);
    v21 = MEMORY[0x277D84F90];
    v22 = 1869903201;
    v23 = 0xE400000000000000;
LABEL_10:
    v24 = sub_268BD69E8(v14, &selRef_identifier);
    v26 = v25;
    v27 = [v54 selectedOption];
    if (v27)
    {
      v29 = sub_268BD6AA0(v27);
      if (v26)
      {
        if (v30)
        {
          if (v24 == v29 && v26 == v30)
          {

            v32 = 1;
          }

          else
          {
            v32 = sub_268C1618C();
          }

          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (v30)
      {
        v32 = 0;
        goto LABEL_30;
      }
    }

    else if (v26)
    {
LABEL_19:
      v32 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v32 = 1;
LABEL_31:
    v40 = v55;
    *v55 = v15;
    *(v40 + 1) = v19;
    *(v40 + 2) = v22;
    *(v40 + 3) = v23;
    v41 = v52;
    *(v40 + 4) = v53;
    *(v40 + 5) = v41;
    *(v40 + 6) = v21;
    *(v40 + 56) = v32 & 1;
    return result;
  }

  v33 = sub_268BD69E8(v14, &selRef_identifier);
  if (v34)
  {
    v15 = v33;
    v19 = v34;
    v35 = sub_268BD69E8(v14, &selRef_languageTag);
    if (v36)
    {
      v22 = v35;
      v23 = v36;
      v37 = sub_268BD69E8(v14, &selRef_displayName);
      if (v38)
      {
        v52 = v38;
        v53 = v37;
        v39 = sub_268BD6A48(v14);
        if (v39)
        {
          v21 = v39;
        }

        else
        {
          v21 = MEMORY[0x277D84F90];
        }

        goto LABEL_10;
      }
    }
  }

  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v4, qword_2802D2ED8);
  v43 = v5;
  (*(v5 + 16))(v8, v42, v4);
  v44 = v14;
  v45 = sub_268C159FC();
  v46 = sub_268C15DEC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138543362;
    *(v47 + 4) = v44;
    *v48 = v44;
    v49 = v44;
    _os_log_impl(&dword_268BAD000, v45, v46, "Language option missingrequired fields: %{public}@", v47, 0xCu);
    sub_268BD8138(v48, &qword_2802CDF28, &unk_268C17900);
    MEMORY[0x26D628010](v48, -1, -1);
    MEMORY[0x26D628010](v47, -1, -1);
  }

  (*(v43 + 8))(v8, v4);
  result = 0.0;
  v50 = v55;
  *(v55 + 41) = 0u;
  v50[1] = 0u;
  v50[2] = 0u;
  *v50 = 0u;
  return result;
}

void sub_268BCA868()
{
  OUTLINED_FUNCTION_31_0();
  v29 = v3;
  v30 = v1;
  v5 = v4;
  v26 = v7;
  v27 = v6;
  v9 = v8;
  v10 = sub_268C159EC();
  v11 = OUTLINED_FUNCTION_2_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_44_0();
  v28 = v9;
  v25 = *(v9 + 16);
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_24_3(v13);
  OUTLINED_FUNCTION_75();
  v17();
  v18 = (*(v13 + 80) + 33) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = "mediaRemoteAddOutputDevicesToGroup";
  *(v19 + 24) = 34;
  *(v19 + 32) = 2;
  (*(v13 + 32))(v19 + v18, &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  v20 = (v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v26;
  v20[1] = v5;

  sub_268C15EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
  OUTLINED_FUNCTION_88();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D83B88];
  *(v21 + 16) = xmmword_268C172B0;
  v23 = MEMORY[0x277D83C10];
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  OUTLINED_FUNCTION_84(v21, v25);
  LOBYTE(v26) = 2;
  v25 = 70;
  sub_268C159BC();

  OUTLINED_FUNCTION_22_0();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_268BD6FA8;
  *(v24 + 24) = v19;

  sub_268BCAB18(sub_268BD8720, v24, v28, v27, v29, v30);

  (*(v13 + 8))(v2, v0);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BCAB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v33 = a6;
  v34 = a2;
  v32 = a1;
  v9 = sub_268C15A1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_2802D2ED8);
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_268C159FC();
  v16 = sub_268C15DFC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a4;
    v18 = v17;
    v30 = swift_slowAlloc();
    v35 = v30;
    *v18 = 136315394;
    v19 = MEMORY[0x26D6272E0](a3, MEMORY[0x277D837D0]);
    v21 = sub_268BB3D28(v19, v20, &v35);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_268BB3D28(v31, a5, &v35);
    _os_log_impl(&dword_268BAD000, v15, v16, "Adding output devices %s to group: %s", v18, 0x16u);
    v22 = v30;
    swift_arrayDestroy();
    MEMORY[0x26D628010](v22, -1, -1);
    v23 = v18;
    a4 = v31;
    MEMORY[0x26D628010](v23, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v24 = v33;
  v25 = __swift_project_boxed_opaque_existential_1((v33 + 16), *(v33 + 40));
  v26 = swift_allocObject();
  v27 = v32;
  v26[2] = v24;
  v26[3] = v27;
  v26[4] = v34;
  v28 = *v25;

  sub_268BB7BB0(a4, a5, a3, sub_268BD811C, v26);
}

void sub_268BCAE14()
{
  OUTLINED_FUNCTION_31_0();
  v63 = v0;
  v59 = v1;
  v60 = v2;
  v4 = v3;
  v5 = sub_268C159EC();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v64 = v7;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_92();
  v62 = v13;
  OUTLINED_FUNCTION_10_2();
  v14 = sub_268C15A1C();
  v15 = OUTLINED_FUNCTION_3_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_0();
  v22 = v21 - v20;
  v23 = OUTLINED_FUNCTION_67();
  v65 = sub_268BCE414(v23, v24);
  v26 = v25;
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  __swift_project_value_buffer(v14, qword_2802D2ED8);
  OUTLINED_FUNCTION_21_2();
  v27(v22);

  v28 = sub_268C159FC();
  v29 = sub_268C15DFC();

  v30 = os_log_type_enabled(v28, v29);
  v66 = v4;
  v61 = v26;
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_110();
    v32 = swift_slowAlloc();
    v57 = v5;
    v68 = v26;
    v69 = v32;
    *v31 = 136315394;
    v67 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
    v33 = sub_268C15F0C();
    v35 = sub_268BB3D28(v33, v34, &v69);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v36 = MEMORY[0x26D6272E0](v66, MEMORY[0x277D837D0]);
    v38 = sub_268BB3D28(v36, v37, &v69);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_268BAD000, v28, v29, "Moving audio from group: %s to output devices %s", v31, 0x16u);
    swift_arrayDestroy();
    v5 = v57;
    OUTLINED_FUNCTION_30();
    v4 = v66;
    OUTLINED_FUNCTION_30();
  }

  (*(v17 + 8))(v22, v14);
  v57 = *(v4 + 16);
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v39 = qword_2802D2EB8;
  v40 = v62;
  sub_268C159DC();
  v41 = v64;
  v42 = v5;
  (*(v64 + 16))(v12, v40, v5);
  v43 = (*(v41 + 80) + 33) & ~*(v41 + 80);
  v44 = (v58 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = "mediaRemoteMoveOutputDevicesToGroup";
  *(v45 + 24) = 35;
  *(v45 + 32) = 2;
  (*(v41 + 32))(v45 + v43, v12, v42);
  v46 = (v45 + v44);
  v47 = v60;
  *v46 = v59;
  v46[1] = v47;

  sub_268C15EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
  OUTLINED_FUNCTION_88();
  v48 = swift_allocObject();
  v49 = MEMORY[0x277D83B88];
  *(v48 + 16) = xmmword_268C172B0;
  v50 = MEMORY[0x277D83C10];
  *(v48 + 56) = v49;
  *(v48 + 64) = v50;
  OUTLINED_FUNCTION_84(v48, v57);
  LOBYTE(v57) = 2;
  v56 = 70;
  sub_268C159BC();

  OUTLINED_FUNCTION_22_0();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_268BD8710;
  *(v51 + 24) = v45;
  v52 = v63;
  v53 = __swift_project_boxed_opaque_existential_1((v63 + 16), *(v63 + 40));
  OUTLINED_FUNCTION_54();
  v54 = swift_allocObject();
  v54[2] = v52;
  v54[3] = sub_268BD8720;
  v54[4] = v51;
  v55 = *v53;

  sub_268BB7CFC(v65, v61, v66, sub_268BD872C, v54);

  (*(v41 + 8))(v40, v42);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BCB358()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v75 = v3;
  v5 = v4;
  v6 = sub_268C15A1C();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_2();
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v19 = &v63 - v18;
  if (!v5)
  {
    v77 = 0;
    v41 = OUTLINED_FUNCTION_90();
    v75(v41);
LABEL_28:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v74 = v17;
  v67 = v16;
  v68 = v15;
  v20 = v5;
  Code = CFErrorGetCode(v20);
  v21 = CFErrorGetDomain(v20);
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  __swift_project_value_buffer(v6, qword_2802D2ED8);
  OUTLINED_FUNCTION_30_2();
  v69 = v22;
  v70 = v23;
  v71 = v24;
  (v23)(v19);
  v25 = v20;
  v26 = v21;
  v27 = v9;
  v28 = sub_268C159FC();
  v29 = sub_268C15DEC();

  v30 = os_log_type_enabled(v28, v29);
  v73 = v27;
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_24_2();
    v65 = v6;
    v32 = v31;
    swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_43_0();
    v66 = v2;
    v34 = v33;
    v76 = v25;
    v77 = v33;
    *v32 = 136315650;
    type metadata accessor for CFError(0);
    v64 = v21;
    sub_268BD84E4(&qword_2802CE138, type metadata accessor for CFError);
    v35 = sub_268C161DC();
    v37 = OUTLINED_FUNCTION_96(v35, v36);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2112;
    *(v32 + 14) = v26;
    *v0 = v64;
    *(v32 + 22) = 2048;
    *(v32 + 24) = Code;
    v38 = v26;
    v39 = v26;
    _os_log_impl(&dword_268BAD000, v28, v29, "Error modifying device groups: %s, errorDomain: %@, errorCode: %ld", v32, 0x20u);
    sub_268BD8138(v0, &qword_2802CDF28, &unk_268C17900);
    OUTLINED_FUNCTION_37_0();
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_30();
    v6 = v65;
    OUTLINED_FUNCTION_30();

    v40 = *(v73 + 8);
  }

  else
  {
    v38 = v26;

    v40 = *(v27 + 8);
  }

  v40(v19, v6);
  IsInformational = MRMediaRemoteErrorIsInformational();

  v43 = v74;
  if (IsInformational)
  {
    v70(v74, v69, v6);
    v44 = sub_268C159FC();
    v45 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_12_0(v45))
    {
      v46 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v46);
      OUTLINED_FUNCTION_7_0(&dword_268BAD000, v47, v48, "PlaybackController#handleWHAGroupingResponse ignoring informational error, treating as success");
      OUTLINED_FUNCTION_45_0();
    }

    v40(v43, v6);
    v77 = 0;
    v78 = 0;
    goto LABEL_27;
  }

  v49 = *MEMORY[0x277D27AE0];
  if (v38)
  {
    if (!v49)
    {
      goto LABEL_25;
    }

    type metadata accessor for CFString(0);
    sub_268BD84E4(&qword_2802CE130, type metadata accessor for CFString);
    v50 = v49;
    OUTLINED_FUNCTION_89();
    v51 = sub_268C1594C();

    if ((v51 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v49)
  {
    goto LABEL_25;
  }

  if ((Code & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(Code))
  {
    if (Code == 26 || Code == 47)
    {
      v70(v68, v69, v6);
      v58 = sub_268C159FC();
      v59 = sub_268C15DEC();
      if (OUTLINED_FUNCTION_12_0(v59))
      {
        v60 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_53(v60);
        OUTLINED_FUNCTION_7_0(&dword_268BAD000, v61, v62, "Device(s) not on network or unplugged");
        OUTLINED_FUNCTION_30();
      }

      v40(v68, v6);
      v57 = 0x8000000000000040;
      goto LABEL_26;
    }

    if (Code == 33)
    {
      v70(v67, v69, v6);
      v52 = sub_268C159FC();
      v53 = sub_268C15DEC();
      if (OUTLINED_FUNCTION_12_0(v53))
      {
        v54 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_53(v54);
        OUTLINED_FUNCTION_7_0(&dword_268BAD000, v55, v56, "Devices are not groupable");
        OUTLINED_FUNCTION_30();
      }

      v40(v67, v6);
      v57 = 0x8000000000000030;
      goto LABEL_26;
    }

LABEL_25:
    v57 = 0x8000000000000000;
LABEL_26:
    v77 = v57;
    v78 = 1;
LABEL_27:
    v75(&v77);

    goto LABEL_28;
  }

  __break(1u);
}

void sub_268BCB938()
{
  OUTLINED_FUNCTION_31_0();
  v51 = v0;
  v52 = v1;
  v3 = v2;
  v53 = v4;
  v5 = sub_268C15A1C();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_2();
  v13 = (v11 - v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_28_2();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v18 = __swift_project_value_buffer(v5, qword_2802D2ED8);
  v19 = *(v8 + 16);
  v20 = OUTLINED_FUNCTION_93();
  v50 = v21;
  (v21)(v20);

  v22 = sub_268C159FC();
  v23 = sub_268C15DCC();

  v24 = os_log_type_enabled(v22, v23);
  v49 = v3;
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_25_2();
    v48 = v8;
    v26 = v25;
    v27 = OUTLINED_FUNCTION_24_2();
    v47 = v17;
    v28 = v13;
    v29 = v27;
    v54[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_268BB3D28(v53, v3, v54);
    _os_log_impl(&dword_268BAD000, v22, v23, "Executing diable subtitles on device: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v13 = v28;
    v17 = v47;
    OUTLINED_FUNCTION_30();
    v8 = v48;
    OUTLINED_FUNCTION_30();
  }

  v30 = *(v8 + 8);
  v31 = OUTLINED_FUNCTION_105();
  v30(v31);
  LOBYTE(v54[0]) = 0;
  if (sub_268BD1808(0, 0xE000000000000000, v54))
  {
    sub_268BD19C4();
    v50(v17, v18, v5);
    v32 = sub_268C159FC();
    v33 = sub_268C15DCC();
    if (OUTLINED_FUNCTION_12_0(v33))
    {
      v34 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v34);
      OUTLINED_FUNCTION_7_0(&dword_268BAD000, v35, v36, "Performing disable subtitle command");
      OUTLINED_FUNCTION_45_0();
    }

    (v30)(v17, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_268C172B0;
    v38 = v49;
    *(v37 + 32) = v53;
    *(v37 + 40) = v38;
    OUTLINED_FUNCTION_22_0();
    v39 = swift_allocObject();
    v40 = v52;
    *(v39 + 16) = v51;
    *(v39 + 24) = v40;

    sub_268BCF444();
  }

  else
  {
    v50(v13, v18, v5);
    v41 = sub_268C159FC();
    v42 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_12_0(v42))
    {
      v43 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v43);
      OUTLINED_FUNCTION_7_0(&dword_268BAD000, v44, v45, "Could not make language option");
      OUTLINED_FUNCTION_45_0();
    }

    (v30)(v13, v5);
    v54[0] = 0x8000000000000000;
    v46 = OUTLINED_FUNCTION_16_3();
    v51(v46);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BCBD0C()
{
  OUTLINED_FUNCTION_31_0();
  v50 = v0;
  v2 = v1;
  v54 = v4;
  v55 = v3;
  v6 = v5;
  v8 = v7;
  v52 = v9;
  v53 = v10;
  v11 = sub_268C15A1C();
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_2();
  v49 = v17 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v57 = &v48 - v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_28_2();
  v51 = *v8;
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v22 = __swift_project_value_buffer(v11, qword_2802D2ED8);
  v23 = *(v14 + 16);
  v23(v0, v22, v11);

  v24 = sub_268C159FC();
  v25 = sub_268C15DCC();
  v56 = v6;

  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_25_2();
    v48 = v2;
    v27 = v26;
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = sub_268C15BEC();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_268BAD000, v24, v25, "Executing set language option on device: %@", v27, 0xCu);
    sub_268BD8138(v28, &qword_2802CDF28, &unk_268C17900);
    OUTLINED_FUNCTION_30();
    v2 = v48;
    OUTLINED_FUNCTION_30();
  }

  v30 = *(v14 + 8);
  v31 = OUTLINED_FUNCTION_105();
  v30(v31);
  v59 = v51;
  if (sub_268BD1808(v52, v53, &v59))
  {
    sub_268BD19C4();
    v23(v57, v22, v11);
    v32 = sub_268C159FC();
    v33 = sub_268C15DCC();
    if (OUTLINED_FUNCTION_12_0(v33))
    {
      v34 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v34);
      OUTLINED_FUNCTION_7_0(&dword_268BAD000, v35, v36, "Performing set language option command");
      OUTLINED_FUNCTION_45_0();
    }

    (v30)(v57, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_268C172B0;
    v38 = v56;
    *(v37 + 32) = v55;
    *(v37 + 40) = v38;
    OUTLINED_FUNCTION_22_0();
    v39 = swift_allocObject();
    *(v39 + 16) = v54;
    *(v39 + 24) = v2;

    OUTLINED_FUNCTION_55();
    sub_268BCF444();
  }

  else
  {
    v40 = v49;
    v41 = OUTLINED_FUNCTION_89();
    (v23)(v41);
    v42 = sub_268C159FC();
    v43 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_12_0(v43))
    {
      v44 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v44);
      OUTLINED_FUNCTION_7_0(&dword_268BAD000, v45, v46, "Could not make language option");
      OUTLINED_FUNCTION_45_0();
    }

    (v30)(v40, v11);
    v58 = 0x8000000000000000;
    v47 = OUTLINED_FUNCTION_16_3();
    v54(v47);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BCC0E0()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  v24 = *v1;
  v6 = sub_268C159EC();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_22_0();
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  v12 = qword_2802CDB60;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  v13 = OUTLINED_FUNCTION_32_2();
  v14(v13);
  OUTLINED_FUNCTION_23_3();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_10_4(v15, 24);
  v17(v16);
  *(v1 + v15) = 0;
  v18 = v15 + v0;
  *(v18 + 8) = sub_268BD6FDC;
  *(v18 + 16) = v11;

  sub_268C15EAC();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_22_0();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_268BD7054;
  *(v19 + 24) = v15;

  v20 = OUTLINED_FUNCTION_82();
  sub_268BCC304(v20, v21);

  v22 = OUTLINED_FUNCTION_86();
  v23(v22);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BCC304(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = qword_2802CDB78;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = sub_268BD871C;
  *(v6 + 24) = v4;
  v8[4] = sub_268BD80C8;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_268BCC7AC;
  v8[3] = &block_descriptor_326;
  v7 = _Block_copy(v8);

  MRMediaRemoteGetNowPlayingClient();
  _Block_release(v7);
}

uint64_t sub_268BCC43C(uint64_t a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v8 = sub_268C15A1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v8, qword_2802D2ED8);
    (*(v9 + 16))(v12, v18, v8);
    v19 = a2;
    v20 = sub_268C159FC();
    v21 = sub_268C15DEC();

    if (os_log_type_enabled(v20, v21))
    {
      v30[1] = a4;
      v31 = a3;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136446210;
      if (a2)
      {
        v32 = v19;
        type metadata accessor for CFError(0);
        sub_268BD84E4(&qword_2802CE138, type metadata accessor for CFError);
        v24 = sub_268C161DC();
      }

      else
      {
        v25 = 0xED0000726F727265;
        v24 = 0x206E776F6E6B6E55;
      }

      v32 = v24;
      v33 = v25;
      v27 = sub_268C15C9C();
      v29 = sub_268BB3D28(v27, v28, &v34);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_268BAD000, v20, v21, "Received error attempting to look up NowPlaying appName: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x26D628010](v23, -1, -1);
      MEMORY[0x26D628010](v22, -1, -1);

      (*(v9 + 8))(v12, v8);
      a3 = v31;
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    return a3(0, 0);
  }

  else
  {
    v13 = MRNowPlayingClientGetDisplayName();
    if (v13)
    {
      v14 = v13;
      v15 = sub_268C15BFC();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    a3(v15, v17);
  }
}

void sub_268BCC7AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_268BCC824()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  v24 = *v1;
  v6 = sub_268C159EC();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_22_0();
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  v12 = qword_2802CDB60;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  v13 = OUTLINED_FUNCTION_32_2();
  v14(v13);
  OUTLINED_FUNCTION_23_3();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_10_4(v15, 21);
  v17(v16);
  *(v1 + v15) = 1;
  v18 = v15 + v0;
  *(v18 + 8) = sub_268BD8704;
  *(v18 + 16) = v11;

  sub_268C15EAC();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_22_0();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_268BD8714;
  *(v19 + 24) = v15;

  v20 = OUTLINED_FUNCTION_82();
  sub_268BCCA4C(v20, v21);

  v22 = OUTLINED_FUNCTION_86();
  v23(v22);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BCCA4C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = qword_2802CDB78;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = sub_268BD8084;
  *(v6 + 24) = v4;
  v8[4] = sub_268BD8088;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_268BCC7AC;
  v8[3] = &block_descriptor_316;
  v7 = _Block_copy(v8);

  MRMediaRemoteGetNowPlayingClient();
  _Block_release(v7);
}

uint64_t sub_268BCCB84(uint64_t a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v8 = sub_268C15A1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v8, qword_2802D2ED8);
    (*(v9 + 16))(v12, v18, v8);
    v19 = a2;
    v20 = sub_268C159FC();
    v21 = sub_268C15DEC();

    if (os_log_type_enabled(v20, v21))
    {
      v29 = a4;
      v30 = a3;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136446210;
      if (a2)
      {
        v31 = v19;
        type metadata accessor for CFError(0);
        sub_268BD84E4(&qword_2802CE138, type metadata accessor for CFError);
        v24 = sub_268C161DC();
        v26 = v25;
      }

      else
      {
        v26 = 0xED0000726F727265;
        v24 = 0x206E776F6E6B6E55;
      }

      v28 = sub_268BB3D28(v24, v26, &v32);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_268BAD000, v20, v21, "Received error attempting to look up NowPlaying bundleID: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x26D628010](v23, -1, -1);
      MEMORY[0x26D628010](v22, -1, -1);

      (*(v9 + 8))(v12, v8);
      a3 = v30;
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    return a3(0, 0);
  }

  else
  {
    v13 = MRNowPlayingClientGetBundleIdentifier();
    if (v13)
    {
      v14 = v13;
      v15 = sub_268C15BFC();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    a3(v15, v17);
  }
}

void sub_268BCCED4()
{
  OUTLINED_FUNCTION_31_0();
  v30 = v2;
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v6 = sub_268C159EC();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_2();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_3();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  v16 = *(v9 + 16);
  OUTLINED_FUNCTION_55();
  v17();
  OUTLINED_FUNCTION_83();
  v18 = v1 + v11;
  v19 = (v1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_17_4(v20, 12);
  v22(v21, v14, v0);
  *(v20 + v18) = 1;
  v23 = v20 + v19;
  *(v23 + 8) = v30;
  *(v23 + 16) = v31;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_268BD713C;
  *(v24 + 24) = v20;
  OUTLINED_FUNCTION_22_0();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_268BD71D0;
  *(v25 + 24) = v24;
  OUTLINED_FUNCTION_22_0();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_268BD71D8;
  *(v26 + 24) = v25;

  sub_268BC5144(v32, v33, sub_268BD71E0, v26);

  v27 = *(v9 + 8);
  v28 = OUTLINED_FUNCTION_73();
  v29(v28);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BCD130(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  if (*(a1 + 48) == 2)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v13, v14, v6);
    v15 = sub_268C159FC();
    v16 = sub_268C15DEC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_268BAD000, v15, v16, "Error getting duration info", v17, 2u);
      MEMORY[0x26D628010](v17, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    v33 = 0;
    v34 = 0;
    v35 = 1;
  }

  else
  {
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v11, v20, v6);
    v21 = sub_268C159FC();
    v22 = sub_268C15DCC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = a2;
      v24 = v23;
      v25 = swift_slowAlloc();
      v30 = a3;
      v26 = v25;
      v32 = v25;
      v33 = 0;
      *v24 = 136315138;
      v34 = 0xE000000000000000;
      sub_268C1606C();
      MEMORY[0x26D627230](0xD000000000000016, 0x8000000268C1C420);
      sub_268C15D9C();
      MEMORY[0x26D627230](0xD000000000000013, 0x8000000268C1C440);
      sub_268C15D9C();
      MEMORY[0x26D627230](32032, 0xE200000000000000);
      v27 = sub_268BB3D28(v33, v34, &v32);

      *(v24 + 4) = v27;
      _os_log_impl(&dword_268BAD000, v21, v22, "Sucessfully retrieved duration info: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x26D628010](v26, -1, -1);
      v28 = v24;
      a2 = v31;
      MEMORY[0x26D628010](v28, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    v33 = v18;
    v34 = v19;
    v35 = 0;
  }

  return a2(&v33);
}

void sub_268BCD51C()
{
  OUTLINED_FUNCTION_31_0();
  v23 = v3;
  v24 = v4;
  v25 = *v1;
  v5 = sub_268C159EC();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_80();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27_2();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  v12 = OUTLINED_FUNCTION_64(v8);
  v13(v12, v2, v0);
  OUTLINED_FUNCTION_81();
  v14 = v1 + v10;
  v15 = (v1 + v10) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "getNowPlayingApplicationState";
  *(v16 + 24) = 29;
  *(v16 + 32) = 2;
  OUTLINED_FUNCTION_85(v16);
  OUTLINED_FUNCTION_75();
  v17();
  v14[v16] = 1;
  v18 = v16 + v15;
  *(v18 + 8) = v23;
  *(v18 + 16) = v24;

  sub_268C15EAC();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_22_0();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_268BD6E9C;
  *(v19 + 24) = v16;

  sub_268BCD738(sub_268BD6EBC, v19);

  v20 = *(v8 + 8);
  v21 = OUTLINED_FUNCTION_15();
  v22(v21);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BCD738(uint64_t a1, uint64_t a2)
{
  if (qword_2802CDB78 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v6[4] = sub_268BD807C;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_268BCDA1C;
  v6[3] = &block_descriptor_307;
  v5 = _Block_copy(v6);

  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  _Block_release(v5);
}

uint64_t sub_268BCD848(unsigned int a1, uint64_t (*a2)(char *))
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2802D2ED8);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_268C159FC();
  v11 = sub_268C15DCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_268BAD000, v10, v11, "Playback state from MR = %u", v12, 8u);
    MEMORY[0x26D628010](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  if (a1 >= 6)
  {
    v13 = 0;
  }

  else
  {
    v13 = a1;
  }

  v16 = v13;
  return a2(&v16);
}

uint64_t sub_268BCDA1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_268BCDA70()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v24 = *v0;
  v25 = v0;
  v5 = sub_268C159EC();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_80();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_22_0();
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v2;
  v13 = qword_2802CDB60;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_64(v8);
  OUTLINED_FUNCTION_55();
  v14();
  v15 = ((*(v8 + 80) + 33) & ~*(v8 + 80)) + v10;
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_15_3(v16, 20);
  v17 = *(v8 + 32);
  OUTLINED_FUNCTION_75();
  v18();
  *(v16 + v15) = 1;
  v19 = v16 + (v15 & 0xFFFFFFFFFFFFFFF8);
  *(v19 + 8) = sub_268BD7278;
  *(v19 + 16) = v12;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_268BD72A0;
  *(v20 + 24) = v16;

  sub_268BCDD18(sub_268BD733C, v20, v25);

  v21 = *(v8 + 8);
  v22 = OUTLINED_FUNCTION_73();
  v23(v22);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BCDD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_2802CDB70;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_2802D2ED8);
  (*(v7 + 16))(v10, v13, v6);
  v14 = sub_268C159FC();
  v15 = sub_268C15DFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_268BAD000, v14, v15, "Getting local playback rate", v16, 2u);
    MEMORY[0x26D628010](v16, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v17 = *__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  v18 = sub_268BB60C8();
  if (qword_2802CDB78 != -1)
  {
    swift_once();
  }

  v19 = qword_2802CE0E0;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_268BD8028;
  *(v20 + 24) = v11;
  aBlock[4] = sub_268BD8074;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268BD8718;
  aBlock[3] = &block_descriptor_301;
  v21 = _Block_copy(aBlock);

  [v18 requestNowPlayingItemMetadataOnQueue:v19 completion:v21];
  _Block_release(v21);
}

void sub_268BCDFE8(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_268C15A1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  if (a1)
  {
    v16 = a1;
    [v16 defaultPlaybackRate];
    if (v17 != 0.0 && a2 == 0)
    {
      if (qword_2802CDB70 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v8, qword_2802D2ED8);
      (*(v9 + 16))(v15, v27, v8);
      v28 = v16;
      v29 = sub_268C159FC();
      v30 = sub_268C15DCC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        [v28 defaultPlaybackRate];
        *(v31 + 4) = v32;
        _os_log_impl(&dword_268BAD000, v29, v30, "Playback rate from MR = %f", v31, 0xCu);
        MEMORY[0x26D628010](v31, -1, -1);
      }

      (*(v9 + 8))(v15, v8);
      [v28 defaultPlaybackRate];
      LOBYTE(v41) = 0;
      v34 = v33;
    }

    else
    {
      v40 = a4;
      if (qword_2802CDB70 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v8, qword_2802D2ED8);
      (*(v9 + 16))(v13, v19, v8);
      v20 = a2;
      v21 = sub_268C159FC();
      v22 = sub_268C15DEC();

      if (os_log_type_enabled(v21, v22))
      {
        v39 = a3;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v43 = v24;
        *v23 = 136446210;
        if (a2)
        {
          swift_getErrorValue();
          v25 = sub_268C161DC();
        }

        else
        {
          v25 = 0;
          v26 = 0;
        }

        v41 = v25;
        v42 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
        v35 = sub_268C15C0C();
        v37 = sub_268BB3D28(v35, v36, &v43);

        *(v23 + 4) = v37;
        _os_log_impl(&dword_268BAD000, v21, v22, "Unexpected 0.0 playbackRate or error: %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x26D628010](v24, -1, -1);
        MEMORY[0x26D628010](v23, -1, -1);

        (*(v9 + 8))(v13, v8);
        a3 = v39;
      }

      else
      {

        (*(v9 + 8))(v13, v8);
      }

      LOBYTE(v41) = 1;
      v34 = 0x100000000;
    }

    a3(v34);
  }
}

uint64_t sub_268BCE414(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61();
  v6 = sub_268C15A1C();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  if (a2 && (v4 == 0x45445F4C41434F4CLL ? (v12 = a2 == 0xEC00000045434956) : (v12 = 0), v12 || (sub_268C1618C() & 1) != 0))
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    __swift_project_value_buffer(v2, qword_2802D2ED8);
    OUTLINED_FUNCTION_21_2();
    v13(v3);
    v14 = sub_268C159FC();
    v15 = sub_268C15DFC();
    if (OUTLINED_FUNCTION_95(v15))
    {
      v16 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_97(v16);
      OUTLINED_FUNCTION_69(&dword_268BAD000, v17, v18, "moveOutputDevicesToGroup called with groupId=LOCAL_DEVICE, overwriting with nil since this is the value the API expects");
      OUTLINED_FUNCTION_30();
    }

    v19 = *(v9 + 8);
    v20 = OUTLINED_FUNCTION_67();
    v21(v20);
    return 0;
  }

  else
  {
  }

  return v4;
}

void sub_268BCE594()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_268C15A1C();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_33_2(v5, qword_2802D2ED8);
  v11 = OUTLINED_FUNCTION_24_3(v8);
  v12(v11);
  v13 = sub_268C159FC();
  v14 = sub_268C15DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_23_0();
    *v15 = 0;
    _os_log_impl(&dword_268BAD000, v13, v14, "Getting local NowPlayingMediaType", v15, 2u);
    OUTLINED_FUNCTION_30();
  }

  v16 = *(v8 + 8);
  v17 = OUTLINED_FUNCTION_105();
  v18(v17);
  OUTLINED_FUNCTION_54();
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = v2;
  v19[4] = v0;

  sub_268BCED98();

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BCE738(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  if (!a1)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v16, v22, v6);
    v23 = sub_268C159FC();
    v24 = sub_268C15DEC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_268BAD000, v23, v24, "Local NowPlayingMediaItem is undefined", v25, 2u);
      MEMORY[0x26D628010](v25, -1, -1);
    }

    (*(v7 + 8))(v16, v6);
    return a2(0, 0);
  }

  v17 = MRContentItemCopyNowPlayingInfo();
  if (!v17)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v14, v26, v6);
    v27 = sub_268C159FC();
    v28 = sub_268C15DEC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_268BAD000, v27, v28, "getLocalNowPlayingMediaItemInfo is undefined", v29, 2u);
      MEMORY[0x26D628010](v29, -1, -1);
    }

    (*(v7 + 8))(v14, v6);
    return a2(0, 0);
  }

  v18 = v17;
  result = *MEMORY[0x277D27C30];
  if (*MEMORY[0x277D27C30])
  {
    *&v54[0] = sub_268C15BFC();
    *(&v54[0] + 1) = v20;
    v21 = [v18 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v21)
    {
      sub_268C15FAC();
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    v54[0] = v52;
    v54[1] = v53;
    if (*(&v53 + 1))
    {
      v30 = swift_dynamicCast();
      if (v30)
      {
        v31 = v50;
      }

      else
      {
        v31 = 0;
      }

      if (v30)
      {
        v32 = v51;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      sub_268BD8138(v54, &qword_2802CE140, &qword_268C17978);
      v31 = 0;
      v32 = 0;
    }

    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v11, v33, v6);

    v34 = v6;
    v35 = sub_268C159FC();
    v36 = sub_268C15DFC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v49 = a3;
      v38 = v37;
      v39 = swift_slowAlloc();
      v48 = v18;
      v40 = v39;
      *&v54[0] = v39;
      *v38 = 136315138;
      v46 = v34;
      v47 = a2;
      if (v32)
      {
        v41 = v31;
      }

      else
      {
        v41 = 7104878;
      }

      v42 = v31;
      if (v32)
      {
        v43 = v32;
      }

      else
      {
        v43 = 0xE300000000000000;
      }

      v44 = sub_268BB3D28(v41, v43, v54);
      v31 = v42;

      *(v38 + 4) = v44;
      a2 = v47;
      _os_log_impl(&dword_268BAD000, v35, v36, "Local NowPlayingMediaType is %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v45 = v40;
      v18 = v48;
      MEMORY[0x26D628010](v45, -1, -1);
      MEMORY[0x26D628010](v38, -1, -1);

      (*(v7 + 8))(v11, v46);
    }

    else
    {

      (*(v7 + 8))(v11, v34);
    }

    a2(v31, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268BCECD4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  if (qword_2802CDB78 != -1)
  {
    OUTLINED_FUNCTION_7_3();
  }

  v6 = qword_2802CE0E0;
  OUTLINED_FUNCTION_22_0();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *v5;

  sub_268BC5458(v6, sub_268BD7354, v7);
}

void sub_268BCED98()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  v24 = *v1;
  v6 = sub_268C159EC();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_22_0();
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  v12 = qword_2802CDB60;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  v13 = OUTLINED_FUNCTION_32_2();
  v14(v13);
  OUTLINED_FUNCTION_23_3();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_10_4(v15, 30);
  v17(v16);
  *(v1 + v15) = 1;
  v18 = v15 + v0;
  *(v18 + 8) = sub_268BD7EE8;
  *(v18 + 16) = v11;

  sub_268C15EAC();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_22_0();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_268BD7F14;
  *(v19 + 24) = v15;

  v20 = OUTLINED_FUNCTION_82();
  sub_268BCEFC0(v20, v21);

  v22 = OUTLINED_FUNCTION_86();
  v23(v22);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BCEFC0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = qword_2802CDB78;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = swift_allocObject();
  v7[2] = sub_268BD7F98;
  v7[3] = v4;
  v7[4] = v5;
  v10[4] = sub_268BD801C;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_268BCC7AC;
  v10[3] = &block_descriptor_292;
  v8 = _Block_copy(v10);

  MRMediaRemoteRequestNowPlayingPlaybackQueueSync();
  _Block_release(v8);
}

uint64_t sub_268BCF130(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v10, qword_2802D2ED8);
    (*(v11 + 16))(v14, v16, v10);
    v17 = a2;
    v18 = sub_268C159FC();
    v19 = sub_268C15DEC();

    if (os_log_type_enabled(v18, v19))
    {
      v28 = a4;
      v29 = a3;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136446210;
      if (a2)
      {
        v30 = v17;
        type metadata accessor for CFError(0);
        sub_268BD84E4(&qword_2802CE138, type metadata accessor for CFError);
        v22 = sub_268C161DC();
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      v30 = v22;
      v31 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
      v24 = sub_268C15C0C();
      v26 = sub_268BB3D28(v24, v25, &v32);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_268BAD000, v18, v19, "Unexpected nil playbackQueue or error: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26D628010](v21, -1, -1);
      MEMORY[0x26D628010](v20, -1, -1);

      (*(v11 + 8))(v14, v10);
      ContentItemAtOffset = 0;
      a3 = v29;
    }

    else
    {

      (*(v11 + 8))(v14, v10);
      ContentItemAtOffset = 0;
    }
  }

  else
  {
    ContentItemAtOffset = MRPlaybackQueueGetContentItemAtOffset();
    swift_beginAccess();
    *(a5 + 16) = ContentItemAtOffset;
  }

  return a3(ContentItemAtOffset);
}

void sub_268BCF444()
{
  OUTLINED_FUNCTION_31_0();
  v26 = v2;
  v27 = v3;
  v30 = v4;
  v31 = v5;
  v29 = v6;
  v32 = v1;
  v28 = *v1;
  v7 = sub_268C159EC();
  v8 = OUTLINED_FUNCTION_2_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v17 = qword_2802D2EB8;
  sub_268C159DC();
  (*(v10 + 16))(v14, v16, v0);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = v18 + v12;
  v20 = (v18 + v12) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "executeMediaRemoteCommand";
  *(v21 + 24) = 25;
  *(v21 + 32) = 2;
  (*(v10 + 32))(v21 + v18, v14, v0);
  *(v21 + v19) = 0;
  v22 = v21 + v20;
  v23 = v27;
  *(v22 + 8) = v26;
  *(v22 + 16) = v23;

  sub_268C15EAC();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_268BD870C;
  *(v24 + 24) = v21;

  sub_268BCF6B0(sub_268BD8720, v24, v29, v30, v31, v32);

  (*(v10 + 8))(v16, v0);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BCF6B0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a1;
  v11 = sub_268C15A1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3;
  v38 = sub_268BCFA5C(a3);
  v17 = v16;
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, qword_2802D2ED8);
  (*(v12 + 16))(v15, v18, v11);

  v19 = sub_268C159FC();
  v20 = sub_268C15DCC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = a4;
    v22 = v21;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v22 = 136446722;
    v23 = sub_268BB3D28(v38, v17, &v42);
    v38 = a2;
    v24 = a6;
    v25 = v23;

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    v26 = sub_268C15B6C();
    v28 = sub_268BB3D28(v26, v27, &v42);
    a6 = v24;
    a2 = v38;

    *(v22 + 14) = v28;
    *(v22 + 22) = 2112;
    v29 = sub_268C15CFC();
    *(v22 + 24) = v29;
    v30 = v36;
    *v36 = v29;
    _os_log_impl(&dword_268BAD000, v19, v20, "Sending command: %{public}s with options: %{public}s, to device IDs: %@", v22, 0x20u);
    sub_268BD8138(v30, &qword_2802CDF28, &unk_268C17900);
    MEMORY[0x26D628010](v30, -1, -1);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x26D628010](v31, -1, -1);
    v32 = v22;
    a4 = v39;
    MEMORY[0x26D628010](v32, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v15, v11);
  v33 = swift_allocObject();
  *(v33 + 16) = v40;
  *(v33 + 24) = a2;
  *(v33 + 32) = a5;
  *(v33 + 40) = a6;
  *(v33 + 48) = v41;
  *(v33 + 56) = a4;

  sub_268BCFE28();
}

uint64_t sub_268BCFA5C(unsigned int a1)
{
  v2 = sub_268C15B7C();
  v3 = sub_268C0F45C(a1, v2);
  v5 = v4;

  if (v5)
  {
    return v3;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

void sub_268BCFAE8(void *a1, char a2, void (*a3)(unint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v38 = a6;
  v15 = sub_268C15A1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v39 = 0x8000000000000000;
    v40 = 1;
    a3(&v39);
  }

  else
  {
    v35 = a3;
    v36 = a7;
    v37 = a8;
    v20 = *(a5 + 16);
    v21 = a1;
    v22 = (a5 + 40);
    v23 = v20 + 1;
    do
    {
      if (!--v23)
      {
        break;
      }

      if (*(v22 - 1) == 0x45445F4C41434F4CLL && *v22 == 0xEC00000045434956)
      {
        break;
      }

      v22 += 2;
    }

    while ((sub_268C1618C() & 1) == 0);
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v15, qword_2802D2ED8);
    (*(v16 + 16))(v19, v25, v15);
    sub_268BD8488(a1);
    v26 = sub_268C159FC();
    v27 = sub_268C15DCC();
    sub_268BD8494(a1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = a4;
      v30 = v21;
      v31 = v29;
      *v28 = 138412290;
      *(v28 + 4) = v30;
      *v29 = a1;
      sub_268BD8488(a1);
      _os_log_impl(&dword_268BAD000, v26, v27, "Sending command with destination: %@", v28, 0xCu);
      sub_268BD8138(v31, &qword_2802CDF28, &unk_268C17900);
      a4 = v34;
      MEMORY[0x26D628010](v31, -1, -1);
      MEMORY[0x26D628010](v28, -1, -1);
    }

    (*(v16 + 8))(v19, v15);
    v32 = swift_allocObject();
    *(v32 + 16) = v35;
    *(v32 + 24) = a4;

    sub_268BD0760();

    sub_268BD8494(a1);
  }
}

void sub_268BCFE28()
{
  OUTLINED_FUNCTION_31_0();
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_268C159EC();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_80();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_22_0();
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v3;
  v14 = qword_2802CDB60;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_64(v9);
  OUTLINED_FUNCTION_55();
  v15();
  OUTLINED_FUNCTION_81();
  v16 = v0 + v11;
  v17 = (v0 + v11) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_15_3(v18, 25);
  OUTLINED_FUNCTION_85(v19);
  OUTLINED_FUNCTION_75();
  v20();
  *(v18 + v16) = 1;
  v21 = v18 + v17;
  *(v21 + 8) = sub_268BD7BBC;
  *(v21 + 16) = v13;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_268BD6B10;
  *(v22 + 24) = v18;

  sub_268BD0058(sub_268BD8720, v22, v26, v0);

  v23 = *(v9 + 8);
  v24 = OUTLINED_FUNCTION_73();
  v25(v24);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BD0058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v7 = sub_268C15A1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v40 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v42 = v16;
  v17 = qword_2802CDB70;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v7, qword_2802D2ED8);
  v41 = v8;
  v19 = *(v8 + 16);
  v19(v15, v18, v7);

  v20 = sub_268C159FC();
  v21 = sub_268C15DFC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = sub_268C15CFC();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&dword_268BAD000, v20, v21, "Resolving MR destination based on devices: %@", v22, 0xCu);
    sub_268BD8138(v23, &qword_2802CDF28, &unk_268C17900);
    MEMORY[0x26D628010](v23, -1, -1);
    MEMORY[0x26D628010](v22, -1, -1);
  }

  v25 = *(v41 + 8);
  v26 = v25(v15, v7);
  if (*(a3 + 16) && (strcpy(v44, "LOCAL_DEVICE"), HIBYTE(v44[6]) = 0, v44[7] = -5120, MEMORY[0x28223BE20](v26), *(&v39 - 2) = v44, !sub_268BC48EC(sub_268BC4C7C, (&v39 - 4), a3)))
  {
    v19(v39, v18, v7);
    v31 = sub_268C159FC();
    v32 = sub_268C15DCC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_268BAD000, v31, v32, "Sending command to remote device(s) based on input", v33, 2u);
      MEMORY[0x26D628010](v33, -1, -1);
    }

    v25(v39, v7);
  }

  else
  {
    v27 = v40;
    v19(v40, v18, v7);
    v28 = sub_268C159FC();
    v29 = sub_268C15DCC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_268BAD000, v28, v29, "Sending command to local device based on input", v30, 2u);
      MEMORY[0x26D628010](v30, -1, -1);
    }

    v25(v27, v7);
    a3 = MEMORY[0x277D84F90];
  }

  v34 = __swift_project_boxed_opaque_existential_1((v43 + 16), *(v43 + 40));
  v35 = swift_allocObject();
  v36 = v42;
  *(v35 + 16) = sub_268BD7BF0;
  *(v35 + 24) = v36;
  v37 = *(*v34 + 64);
  sub_268C07AE4(a3, sub_268BD7C30, v35);
}

void sub_268BD052C(void *a1, void (*a2)(void *, uint64_t))
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = a1;
    a2(a1, 0);
    v9 = v17;
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_2802D2ED8);
    (*(v5 + 16))(v8, v10, v4);
    v11 = sub_268C159FC();
    v12 = sub_268C15DEC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_268BAD000, v11, v12, "Unexpected nil MPCAssistantRemoteControlDestination from media remote", v13, 2u);
      MEMORY[0x26D628010](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    sub_268BD7C38();
    v14 = swift_allocError();
    *v15 = -99;
    a2(v14, 1);
  }
}

void sub_268BD0760()
{
  OUTLINED_FUNCTION_31_0();
  v34 = v3;
  v35 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268C159EC();
  v11 = OUTLINED_FUNCTION_2_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_44_0();
  v17 = sub_268BCFA5C(v9);
  v32 = v18;
  v33 = v17;
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v19 = qword_2802D2EB8;
  sub_268C159DC();
  v20 = *(v13 + 16);
  OUTLINED_FUNCTION_75();
  v21();
  v22 = (v15 + ((*(v13 + 80) + 33) & ~*(v13 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = "mediaRemoteSendCommand";
  *(v23 + 24) = 22;
  *(v23 + 32) = 2;
  v24 = *(v13 + 32);
  OUTLINED_FUNCTION_55();
  v25();
  v26 = (v23 + v22);
  *v26 = v34;
  v26[1] = v5;

  sub_268C15EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_268C172C0;
  *(v27 + 56) = MEMORY[0x277D837D0];
  v28 = sub_268BD7430();
  *(v27 + 32) = v33;
  *(v27 + 40) = v32;
  v29 = MEMORY[0x277D83C10];
  *(v27 + 96) = MEMORY[0x277D83B88];
  *(v27 + 104) = v29;
  *(v27 + 64) = v28;
  *(v27 + 72) = v7 & 1;
  sub_268C159BC();

  OUTLINED_FUNCTION_22_0();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_268BD6FA8;
  *(v30 + 24) = v23;
  v31 = *__swift_project_boxed_opaque_existential_1((v35 + 16), *(v35 + 40));

  sub_268BB61B4();

  (*(v13 + 8))(v2, v0);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BD0A50()
{
  OUTLINED_FUNCTION_31_0();
  v34 = v3;
  v35 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v33 = v10;
  v11 = sub_268C159EC();
  v12 = OUTLINED_FUNCTION_2_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v18 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_22_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v5;
  v20 = qword_2802CDB60;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v32 = v9 & 1;
  qword_2802D2EB8;
  sub_268C159DC();
  v21 = *(v14 + 16);
  OUTLINED_FUNCTION_75();
  v22();
  v23 = (*(v14 + 80) + 33) & ~*(v14 + 80);
  v24 = (v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "mediaRemoteDiscoverEndpoint";
  *(v25 + 24) = 27;
  v31 = v9;
  *(v25 + 32) = 2;
  (*(v14 + 32))(v25 + v23, v18, v0);
  v26 = (v25 + v24);
  *v26 = sub_268BD7CDC;
  v26[1] = v19;

  sub_268C15EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
  OUTLINED_FUNCTION_88();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D83B88];
  *(v27 + 16) = xmmword_268C172B0;
  v29 = MEMORY[0x277D83C10];
  *(v27 + 56) = v28;
  *(v27 + 64) = v29;
  OUTLINED_FUNCTION_84(v27, v32);
  LOBYTE(v31) = 2;
  v30 = 67;
  sub_268C159BC();
  OUTLINED_FUNCTION_111();

  sub_268BD0D48(v31 & 1, v35, v33, v34, sub_268BD7CE4, v25);

  (*(v14 + 8))(v2, v0);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BD0D48(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v12 = sub_268C15A1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v34 = a5;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268BD7D60;
  *(v18 + 24) = v17;
  if (a1)
  {

    v19 = [objc_opt_self() sharedLocalEndpoint];
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v12, qword_2802D2ED8);
    (*(v13 + 16))(v16, v20, v12);
    v21 = sub_268C159FC();
    v22 = sub_268C15DFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v19;
      v24 = a3;
      v25 = v23;
      *v23 = 0;
      _os_log_impl(&dword_268BAD000, v21, v22, "Got endpoint for local device", v23, 2u);
      v26 = v25;
      a3 = v24;
      v19 = v33;
      MEMORY[0x26D628010](v26, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    v35[0] = v19;
    v35[1] = a3;
    v35[2] = a4;
    v36 = 0;

    v27 = v19;
    v34(v35);
  }

  else
  {
    v29 = __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_268C172B0;
    *(v30 + 32) = a3;
    *(v30 + 40) = a4;
    v31 = swift_allocObject();
    v31[2] = a3;
    v31[3] = a4;
    v31[4] = sub_268BD7D68;
    v31[5] = v18;
    v32 = *v29;
    swift_bridgeObjectRetain_n();

    sub_268BB7A30(v30, sub_268BD7DB0, v31);
  }
}

void sub_268BD10EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, uint64_t, unint64_t, uint64_t), uint64_t a6)
{
  v48[1] = a6;
  v49 = a5;
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v48 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v48 - v19;
  v21 = sub_268BD16FC(a1);
  if (v21)
  {
    v22 = v21;
    if (sub_268BC4EF4(v21))
    {
      sub_268BC4F00(0, (v22 & 0xC000000000000001) == 0, v22);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x26D627640](0, v22);
      }

      else
      {
        v23 = *(v22 + 32);
      }

      v24 = v23;

      sub_268BC3228(a2, &v51);
      if (v52)
      {
        sub_268BB9B44(0, &qword_2802CE158, 0x277D27948);
        if (swift_dynamicCast())
        {
          v25 = v50;
          v26 = [v50 uid];
          if (v26)
          {
            v27 = v26;
            a3 = sub_268C15BFC();
            a4 = v28;

LABEL_22:
            if (qword_2802CDB70 != -1)
            {
              swift_once();
            }

            v43 = __swift_project_value_buffer(v10, qword_2802D2ED8);
            (*(v11 + 16))(v18, v43, v10);
            v44 = sub_268C159FC();
            v45 = sub_268C15DFC();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              *v46 = 0;
              _os_log_impl(&dword_268BAD000, v44, v45, "Got endpoint from UID", v46, 2u);
              MEMORY[0x26D628010](v46, -1, -1);
            }

            (*(v11 + 8))(v18, v10);
            v47 = v24;
            v49(v24, a3, a4, 0);

            return;
          }
        }
      }

      else
      {
        sub_268BD8138(&v51, &qword_2802CE140, &qword_268C17978);
      }

      if (qword_2802CDB70 != -1)
      {
        swift_once();
      }

      v36 = __swift_project_value_buffer(v10, qword_2802D2ED8);
      (*(v11 + 16))(v20, v36, v10);

      v37 = sub_268C159FC();
      v38 = sub_268C15DEC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v48[0] = v24;
        v40 = v39;
        v41 = swift_slowAlloc();
        *&v51 = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_268BB3D28(a3, a4, &v51);
        _os_log_impl(&dword_268BAD000, v37, v38, "Call to get RemoteMRAVEndpoints returned invalid MRAVOutputDevice for: %s, using the default device id instead", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x26D628010](v41, -1, -1);
        v42 = v40;
        v24 = v48[0];
        MEMORY[0x26D628010](v42, -1, -1);
      }

      (*(v11 + 8))(v20, v10);

      goto LABEL_22;
    }
  }

  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v10, qword_2802D2ED8);
  (*(v11 + 16))(v15, v29, v10);

  v30 = sub_268C159FC();
  v31 = sub_268C15DEC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v51 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_268BB3D28(a3, a4, &v51);
    _os_log_impl(&dword_268BAD000, v30, v31, "Error getting MRAVEndpoints for: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D628010](v33, -1, -1);
    MEMORY[0x26D628010](v32, -1, -1);
  }

  (*(v11 + 8))(v15, v10);
  sub_268BD7C38();
  v34 = swift_allocError();
  *v35 = -98;
  v49(v34, 0, 0, 1);
}

uint64_t sub_268BD16FC(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_268C160CC();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_268BB5B20(v3, v6);
    sub_268BB9B44(0, &qword_2802CE160, 0x277D27938);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_268C160AC();
    v4 = *(v7 + 16);
    sub_268C160DC();
    sub_268C160EC();
    sub_268C160BC();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_268BD1808(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v8 = sub_268C15A1C();
  v9 = OUTLINED_FUNCTION_2_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_3();
  v14 = *a3;
  if (a1 == 1869903201 && a2 == 0xE400000000000000)
  {
    return MRLanguageOptionCreateAutomaticLanguageOptionForType();
  }

  OUTLINED_FUNCTION_89();
  if (sub_268C1618C())
  {
    return MRLanguageOptionCreateAutomaticLanguageOptionForType();
  }

  OUTLINED_FUNCTION_89();
  v18 = sub_268C15BEC();
  v16 = MRLanguageOptionCreate();

  if (!v16)
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    __swift_project_value_buffer(v3, qword_2802D2ED8);
    OUTLINED_FUNCTION_21_2();
    v19(v4);
    v20 = sub_268C159FC();
    v21 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_95(v21))
    {
      v22 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_97(v22);
      OUTLINED_FUNCTION_69(&dword_268BAD000, v23, v24, "Could not make language option");
      OUTLINED_FUNCTION_30();
    }

    v25 = *(v11 + 8);
    v26 = OUTLINED_FUNCTION_67();
    v27(v26);
    return 0;
  }

  return v16;
}

uint64_t sub_268BD19C4()
{
  OUTLINED_FUNCTION_61();
  v2 = sub_268C15A1C();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_3();
  ExternalRepresentation = MRLanguageOptionCreateExternalRepresentation();
  if (ExternalRepresentation)
  {
    v9 = ExternalRepresentation;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE108, &unk_268C19120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268C172B0;
    v11 = *MEMORY[0x277D27D48];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
    sub_268BD6B58();
    sub_268C1601C();
    type metadata accessor for CFData(0);
    *(inited + 96) = v12;
    *(inited + 72) = v9;
    v13 = v9;
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    __swift_project_value_buffer(v0, qword_2802D2ED8);
    OUTLINED_FUNCTION_21_2();
    v14(v1);
    v15 = sub_268C159FC();
    v16 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_95(v16))
    {
      v17 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_97(v17);
      OUTLINED_FUNCTION_69(&dword_268BAD000, v18, v19, "Error creating external representation");
      OUTLINED_FUNCTION_30();
    }

    v20 = *(v5 + 8);
    v21 = OUTLINED_FUNCTION_67();
    v22(v21);
  }

  return sub_268C15B7C();
}

void sub_268BD1BC8()
{
  OUTLINED_FUNCTION_59();
  v89 = v0;
  v86 = v2;
  v87 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_61();
  v8 = sub_268C159EC();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v91 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_65(v13, v14, v15, v16, v17, v18, v19, v20, v83);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_92();
  v90 = v22;
  OUTLINED_FUNCTION_10_2();
  v23 = sub_268C15A1C();
  v24 = OUTLINED_FUNCTION_3_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17_2();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_28_2();
  v88 = *(v1 + 16);
  if (v7)
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    OUTLINED_FUNCTION_33_2(v23, qword_2802D2ED8);
    v33 = OUTLINED_FUNCTION_24_3(v26);
    v34(v33);

    v35 = sub_268C159FC();
    v36 = sub_268C15DFC();

    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_110();
      v84 = OUTLINED_FUNCTION_43_0();
      v92 = v84;
      v37 = OUTLINED_FUNCTION_29_2(3.8521e-34);
      v38 = MEMORY[0x26D6272E0](v1, MEMORY[0x277D837D0], v37);
      v1 = v39;
      sub_268BB3D28(v38, v39, &v92);
      OUTLINED_FUNCTION_106();
      *(v5 + 14) = v8;
      v8 = v12;
      _os_log_impl(&dword_268BAD000, v35, v36, "Increasing volume by: %f for routeIds: %s", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v84);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_37_0();
    }

    (*(v26 + 8))(v0, v23);
    v40 = v91;
    v41 = v90;
    if (qword_2802CDB60 != -1)
    {
      OUTLINED_FUNCTION_12_2();
    }

    v42 = qword_2802D2EB8;
    sub_268C159DC();
    v43 = OUTLINED_FUNCTION_74();
    v44(v43);
    v45 = *(v91 + 80);
    OUTLINED_FUNCTION_26_2();
    v46 = swift_allocObject();
    v47 = OUTLINED_FUNCTION_49(v46);
    v48(v47);
    v49 = (v46 + v1);
    *v49 = v86;
    v49[1] = v87;

    sub_268C15EAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_268C178C0;
    *(v50 + 56) = MEMORY[0x277D837D0];
    v51 = sub_268BD7430();
    *(v50 + 32) = 0xD000000000000011;
    *(v50 + 40) = 0x8000000268C1C140;
    OUTLINED_FUNCTION_35_0(v51, MEMORY[0x277D83B88]);
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_22_0();
    v52 = swift_allocObject();
    *(v52 + 16) = sub_268BD8710;
    *(v52 + 24) = v46;
    OUTLINED_FUNCTION_72(v89);
    OUTLINED_FUNCTION_22_0();
    v53 = swift_allocObject();
    *(v53 + 16) = sub_268BD8720;
    *(v53 + 24) = v52;
    v54 = *v42;

    v55 = OUTLINED_FUNCTION_102();
    sub_268BB7DE4(v55, v56, v57, v58);
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    OUTLINED_FUNCTION_33_2(v23, qword_2802D2ED8);
    v59 = OUTLINED_FUNCTION_91(v26);
    v60(v59);

    v61 = sub_268C159FC();
    v62 = sub_268C15DFC();

    if (os_log_type_enabled(v61, v62))
    {
      OUTLINED_FUNCTION_110();
      v85 = OUTLINED_FUNCTION_43_0();
      v92 = v85;
      v63 = OUTLINED_FUNCTION_29_2(3.8521e-34);
      v64 = MEMORY[0x26D6272E0](v1, MEMORY[0x277D837D0], v63);
      v1 = v65;
      sub_268BB3D28(v64, v65, &v92);
      OUTLINED_FUNCTION_106();
      *(v5 + 14) = v8;
      v8 = v12;
      _os_log_impl(&dword_268BAD000, v61, v62, "Decreasing volume by: %f for routeIds: %s", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v85);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_37_0();
    }

    (*(v26 + 8))(v31, v23);
    v40 = v91;
    v41 = v90;
    if (qword_2802CDB60 != -1)
    {
      OUTLINED_FUNCTION_12_2();
    }

    v66 = qword_2802D2EB8;
    sub_268C159DC();
    v67 = OUTLINED_FUNCTION_74();
    v68(v67);
    v69 = *(v91 + 80);
    OUTLINED_FUNCTION_26_2();
    v70 = swift_allocObject();
    v71 = OUTLINED_FUNCTION_49(v70);
    v72(v71);
    v73 = (v70 + v1);
    *v73 = v86;
    v73[1] = v87;

    sub_268C15EAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_268C178C0;
    *(v74 + 56) = MEMORY[0x277D837D0];
    v75 = sub_268BD7430();
    *(v74 + 32) = 0xD000000000000011;
    *(v74 + 40) = 0x8000000268C1C140;
    OUTLINED_FUNCTION_35_0(v75, MEMORY[0x277D83B88]);
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_22_0();
    v76 = swift_allocObject();
    *(v76 + 16) = sub_268BD6FA8;
    *(v76 + 24) = v70;
    OUTLINED_FUNCTION_72(v89);
    OUTLINED_FUNCTION_22_0();
    v77 = swift_allocObject();
    *(v77 + 16) = sub_268BD7484;
    *(v77 + 24) = v76;
    v78 = *v66;

    v79 = OUTLINED_FUNCTION_102();
    sub_268BB7DF8(v79, v80, v81, v82);
  }

  (*(v40 + 8))(v41, v8);
  OUTLINED_FUNCTION_58();
}

void sub_268BD22C0()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_268C15A1C();
  v13 = OUTLINED_FUNCTION_3_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_28_2();
  if (v11)
  {
    v19 = v11;
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    OUTLINED_FUNCTION_33_2(v12, qword_2802D2ED8);
    v20 = OUTLINED_FUNCTION_64(v15);
    v21(v20);
    v22 = v11;
    v23 = sub_268C159FC();
    v24 = v5();

    if (os_log_type_enabled(v23, v24))
    {
      v42 = v9;
      v25 = OUTLINED_FUNCTION_25_2();
      v43 = OUTLINED_FUNCTION_24_2();
      *v25 = 136315138;
      swift_getErrorValue();
      v26 = sub_268C161DC();
      v28 = OUTLINED_FUNCTION_96(v26, v27);

      *(v25 + 4) = v28;
      _os_log_impl(&dword_268BAD000, v23, v24, v3, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_41_0();
      v9 = v42;
      OUTLINED_FUNCTION_30();
    }

    v29 = *(v15 + 8);
    v30 = OUTLINED_FUNCTION_62();
    v31(v30);
    v32 = OUTLINED_FUNCTION_16_3();
    v9(v32);
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    OUTLINED_FUNCTION_33_2(v12, qword_2802D2ED8);
    v33 = OUTLINED_FUNCTION_24_3(v15);
    v34(v33);
    v35 = sub_268C159FC();
    v36 = sub_268C15DFC();
    if (OUTLINED_FUNCTION_78(v36))
    {
      v37 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v37);
      _os_log_impl(&dword_268BAD000, v35, v36, v1, v7, 2u);
      OUTLINED_FUNCTION_30();
    }

    v38 = *(v15 + 8);
    v39 = OUTLINED_FUNCTION_93();
    v40(v39);
    v41 = OUTLINED_FUNCTION_90();
    v9(v41);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BD25B8()
{
  OUTLINED_FUNCTION_59();
  v61 = v3;
  v62 = v0;
  v60 = v4;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_61();
  v9 = sub_268C159EC();
  v10 = OUTLINED_FUNCTION_3_0(v9);
  v65 = v11;
  v66 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_65(v14, v15, v16, v17, v18, v19, v20, v21, v56);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_92();
  v63 = v23;
  OUTLINED_FUNCTION_10_2();
  v24 = sub_268C15A1C();
  v25 = OUTLINED_FUNCTION_3_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_3();
  v59 = *(v1 + 16);
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_33_2(v24, qword_2802D2ED8);
  v30 = OUTLINED_FUNCTION_24_3(v27);
  v31(v30);

  v32 = sub_268C159FC();
  v33 = sub_268C15DFC();

  v64 = v1;
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_110();
    v57 = v6;
    v34 = OUTLINED_FUNCTION_43_0();
    v67 = v34;
    v35 = OUTLINED_FUNCTION_29_2(3.8521e-34);
    v36 = MEMORY[0x26D6272E0](v1, MEMORY[0x277D837D0], v35);
    v1 = v37;
    v38 = sub_268BB3D28(v36, v37, &v67);

    *(v2 + 14) = v38;
    _os_log_impl(&dword_268BAD000, v32, v33, "Setting volume to: %f for routeIds: %s", v2, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v6 = v57;
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_37_0();
  }

  v39 = *(v27 + 8);
  v40 = OUTLINED_FUNCTION_57();
  v41(v40);
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  v42 = qword_2802D2EB8;
  sub_268C159DC();
  v43 = *(v65 + 16);
  v44 = OUTLINED_FUNCTION_62();
  v45(v44);
  v46 = *(v65 + 80);
  OUTLINED_FUNCTION_26_2();
  v47 = swift_allocObject();
  *(v47 + 16) = "mediaRemoteVolumeControlCommands";
  *(v47 + 24) = 32;
  *(v47 + 32) = 2;
  (*(v65 + 32))(v47 + v6, v58, v66);
  v48 = (v47 + v1);
  *v48 = v60;
  v48[1] = v61;

  sub_268C15EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_268C178C0;
  *(v49 + 56) = MEMORY[0x277D837D0];
  v50 = sub_268BD7430();
  *(v49 + 32) = 0xD000000000000011;
  *(v49 + 40) = 0x8000000268C1C160;
  v51 = MEMORY[0x277D83B88];
  v52 = MEMORY[0x277D83C10];
  *(v49 + 96) = MEMORY[0x277D83B88];
  *(v49 + 104) = v52;
  *(v49 + 64) = v50;
  *(v49 + 72) = v6 & 1;
  *(v49 + 136) = v51;
  *(v49 + 144) = v52;
  *(v49 + 112) = v59;
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_63();
  sub_268C159BC();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_22_0();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_268BD8710;
  *(v53 + 24) = v47;
  OUTLINED_FUNCTION_72(v62);
  OUTLINED_FUNCTION_22_0();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_268BD8720;
  *(v54 + 24) = v53;
  v55 = *v42;

  sub_268BB7E0C(v64, sub_268BD74E4, v54, v8);

  (*(v65 + 8))(v63, v66);
  OUTLINED_FUNCTION_58();
}

uint64_t sub_268BD2A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v11 = *v5;
  if (a1 == 0x45445F4C41434F4CLL && a2 == 0xEC00000045434956)
  {
    v13 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_15();
    v13 = sub_268C1618C();
  }

  OUTLINED_FUNCTION_88();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13 & 1;
  *(v14 + 36) = a5;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;
  *(v14 + 56) = v5;
  *(v14 + 64) = v11;

  OUTLINED_FUNCTION_15();
  sub_268BD0A50();
}

uint64_t sub_268BD2B6C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t **), uint64_t (*a6)(uint64_t **), int a7, uint64_t a8, float a9, unint64_t a10, uint64_t a11)
{
  v79 = a8;
  v81 = a7;
  v84 = a3;
  v85 = a5;
  v83 = a2;
  v86 = a1;
  v14 = sub_268C159EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - v19;
  v21 = sub_268C15A1C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v24);
  v27 = &v73 - v26;
  if (a4)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v21, qword_2802D2ED8);
    (*(v22 + 16))(v27, v28, v21);
    v29 = v86;
    v30 = v86;
    v31 = sub_268C159FC();
    v32 = sub_268C15DEC();
    sub_268BD7C8C(v29, v83, v84, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v21;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v87 = v35;
      *v34 = 136446210;
      swift_getErrorValue();
      v36 = sub_268C161DC();
      v38 = sub_268BB3D28(v36, v37, &v87);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_268BAD000, v31, v32, "SetVolume: Error trying to access endpoints: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x26D628010](v35, -1, -1);
      MEMORY[0x26D628010](v34, -1, -1);

      (*(v22 + 8))(v27, v33);
    }

    else
    {

      (*(v22 + 8))(v27, v21);
    }

    v87 = 0x8000000000000000;
    v88 = 1;
    return v85(&v87);
  }

  else
  {
    v76 = v25;
    v80 = v21;
    v74 = a10;
    if (qword_2802CDB60 != -1)
    {
      swift_once();
    }

    v75 = a11;
    v39 = qword_2802D2EB8;
    sub_268C159DC();
    (*(v15 + 16))(v18, v20, v14);
    v40 = (*(v15 + 80) + 33) & ~*(v15 + 80);
    v82 = v20;
    v41 = swift_allocObject();
    *(v41 + 16) = "mediaRemoteVolumeControlCommands";
    *(v41 + 24) = 32;
    *(v41 + 32) = 2;
    v77 = v15;
    v78 = v14;
    (*(v15 + 32))(v41 + v40, v18);
    v42 = (v41 + ((v16 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v42 = v85;
    v42[1] = a6;

    sub_268C15EAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_268C172C0;
    *(v43 + 56) = MEMORY[0x277D837D0];
    v44 = sub_268BD7430();
    v45 = MEMORY[0x277D83B88];
    v46 = MEMORY[0x277D83C10];
    *(v43 + 32) = 0x6D756C6F56746553;
    *(v43 + 40) = 0xE900000000000065;
    *(v43 + 96) = v45;
    *(v43 + 104) = v46;
    *(v43 + 64) = v44;
    *(v43 + 72) = 1;
    sub_268C159BC();

    v47 = swift_allocObject();
    *(v47 + 16) = sub_268BD8710;
    *(v47 + 24) = v41;
    v48 = v83;
    if (v81)
    {
      v48 = 0;
    }

    v85 = v48;
    if (v81)
    {
      v49 = 0;
    }

    else
    {
      v49 = v84;
    }

    v50 = qword_2802CDB70;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = v80;
    v52 = __swift_project_value_buffer(v80, qword_2802D2ED8);
    v53 = v76;
    (*(v22 + 16))(v76, v52, v51);
    v54 = v86;
    v55 = v74;

    v56 = v55;
    v57 = sub_268C159FC();
    v58 = sub_268C15DFC();

    LODWORD(v84) = v58;
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v87 = v83;
      *v59 = 134218754;
      *(v59 + 4) = a9;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_268BB3D28(v79, v56, &v87);
      *(v59 + 22) = 2080;
      if (v49)
      {
        v60 = v85;
      }

      else
      {
        v60 = 0x3E6C696E3CLL;
      }

      if (v49)
      {
        v61 = v49;
      }

      else
      {
        v61 = 0xE500000000000000;
      }

      v62 = sub_268BB3D28(v60, v61, &v87);

      *(v59 + 24) = v62;
      *(v59 + 32) = 2080;
      v89 = v86;
      v63 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE150, &qword_268C17988);
      v64 = sub_268C15C0C();
      v66 = sub_268BB3D28(v64, v65, &v87);

      *(v59 + 34) = v66;
      _os_log_impl(&dword_268BAD000, v57, v84, "Setting volume to: %f for device: %s, outputUID: %s, endpoint: %s", v59, 0x2Au);
      v67 = v83;
      swift_arrayDestroy();
      MEMORY[0x26D628010](v67, -1, -1);
      v68 = v82;
      MEMORY[0x26D628010](v59, -1, -1);

      (*(v22 + 8))(v53, v80);
      v69 = v77;
    }

    else
    {

      (*(v22 + 8))(v53, v51);
      v69 = v77;
      v68 = v82;
    }

    v71 = __swift_project_boxed_opaque_existential_1((v75 + 16), *(v75 + 40));
    if (qword_2802CDB78 != -1)
    {
      swift_once();
    }

    v72 = *v71;

    sub_268BB7F08();

    return (*(v69 + 8))(v68, v78);
  }
}

void sub_268BD3424()
{
  OUTLINED_FUNCTION_31_0();
  v49 = v2;
  v50 = v3;
  v5 = v4;
  v7 = v6;
  v51 = v0;
  v46 = *v0;
  v8 = sub_268C159EC();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v47 = v10;
  v48 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_76();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_92();
  v15 = v14;
  OUTLINED_FUNCTION_10_2();
  v16 = sub_268C15A1C();
  v17 = OUTLINED_FUNCTION_3_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_3();
  v22 = v7 == 0x45445F4C41434F4CLL && v5 == 0xEC00000045434956;
  if (v22 || (sub_268C1618C() & 1) != 0)
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    OUTLINED_FUNCTION_33_2(v16, qword_2802D2ED8);
    v23 = OUTLINED_FUNCTION_24_3(v19);
    v24(v23);
    v25 = sub_268C159FC();
    v26 = sub_268C15DFC();
    if (OUTLINED_FUNCTION_78(v26))
    {
      v27 = OUTLINED_FUNCTION_23_0();
      *v27 = 0;
      _os_log_impl(&dword_268BAD000, v25, v26, "Getting local volume based on input", v27, 2u);
      OUTLINED_FUNCTION_37_0();
    }

    (*(v19 + 8))(v0, v16);
    if (qword_2802CDB60 != -1)
    {
      OUTLINED_FUNCTION_12_2();
    }

    v28 = qword_2802D2EB8;
    sub_268C159DC();
    v29 = OUTLINED_FUNCTION_91(v47);
    v30(v29, v15, v48);
    v31 = (*(v47 + 80) + 33) & ~*(v47 + 80);
    v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = "mediaRemoteVolumeControlCommands";
    *(v33 + 24) = 32;
    *(v33 + 32) = 2;
    (*(v47 + 32))(v33 + v31, v1, v48);
    v34 = (v33 + v32);
    *v34 = v49;
    v34[1] = v50;

    sub_268C15EAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_268C172C0;
    *(v35 + 56) = MEMORY[0x277D837D0];
    v36 = sub_268BD7430();
    v37 = MEMORY[0x277D83B88];
    v38 = MEMORY[0x277D83C10];
    *(v35 + 32) = 0x6D756C6F56746547;
    *(v35 + 40) = 0xE900000000000065;
    *(v35 + 96) = v37;
    *(v35 + 104) = v38;
    *(v35 + 64) = v36;
    *(v35 + 72) = 1;
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_94();

    OUTLINED_FUNCTION_22_0();
    v39 = swift_allocObject();
    *(v39 + 16) = sub_268BD6FA8;
    *(v39 + 24) = v33;
    OUTLINED_FUNCTION_72(v51);
    v40 = qword_2802CDB78;

    if (v40 != -1)
    {
      OUTLINED_FUNCTION_7_3();
    }

    v41 = qword_2802CE0E0;
    OUTLINED_FUNCTION_22_0();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_268BD8720;
    *(v42 + 24) = v39;
    v43 = *v28;
    sub_268BB84C4(v41, sub_268BD7620, v42);

    (*(v47 + 8))(v15, v48);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v44 = swift_allocObject();
    *(v44 + 16) = v49;
    *(v44 + 24) = v50;
    *(v44 + 32) = 0;
    *(v44 + 40) = 0;
    *(v44 + 48) = v7;
    *(v44 + 56) = v5;
    *(v44 + 64) = v0;
    *(v44 + 72) = v46;

    sub_268BD0A50();
    OUTLINED_FUNCTION_32_0();
  }
}

uint64_t sub_268BD3958(uint64_t (*a1)(unint64_t *), float a2)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2802D2ED8);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_268C159FC();
  v11 = sub_268C15DFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a2;
    _os_log_impl(&dword_268BAD000, v10, v11, "GetVolume: local volumeLevel: %f", v12, 0xCu);
    MEMORY[0x26D628010](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  if (a2 == -3.0)
  {
    v14 = 0x8000000000000000;
    v15 = 1;
  }

  else
  {
    v14 = LODWORD(a2);
    v15 = 0;
  }

  return a1(&v14);
}

uint64_t sub_268BD3B50(void *a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v86 = a8;
  v85 = a7;
  v90 = a5;
  v91 = a6;
  v88 = a2;
  v89 = a3;
  v13 = sub_268C159EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - v18;
  v20 = sub_268C15A1C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v23);
  v26 = &v78 - v25;
  if (a4)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v20, qword_2802D2ED8);
    (*(v21 + 16))(v26, v27, v20);
    v28 = a1;
    v29 = sub_268C159FC();
    v30 = sub_268C15DEC();
    sub_268BD7C8C(a1, v88, v89, 1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v92 = v32;
      *v31 = 136446210;
      swift_getErrorValue();
      v33 = sub_268C161DC();
      v35 = v21;
      v36 = sub_268BB3D28(v33, v34, &v92);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_268BAD000, v29, v30, "GetVolume: Error trying to access endpoints: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x26D628010](v32, -1, -1);
      MEMORY[0x26D628010](v31, -1, -1);

      (*(v35 + 8))(v26, v20);
    }

    else
    {

      (*(v21 + 8))(v26, v20);
    }

    v92 = 0x8000000000000000;
    v93 = 1;
    return (v90)(&v92);
  }

  else
  {
    v83 = v21;
    v84 = v24;
    v87 = a1;
    v79 = a10;
    if (qword_2802CDB60 != -1)
    {
      swift_once();
    }

    v80 = a11;
    v37 = qword_2802D2EB8;
    sub_268C159DC();
    (*(v14 + 16))(v17, v19, v13);
    v38 = (*(v14 + 80) + 33) & ~*(v14 + 80);
    v39 = v15 + v38 + 7;
    v40 = v19;
    v41 = v39 & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    *(v42 + 16) = "mediaRemoteVolumeControlCommands";
    *(v42 + 24) = 32;
    *(v42 + 32) = 2;
    v81 = v14;
    v82 = v13;
    (*(v14 + 32))(v42 + v38, v17, v13);
    v43 = (v42 + v41);
    v44 = v91;
    *v43 = v90;
    v43[1] = v44;

    sub_268C15EAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_268C172C0;
    *(v45 + 56) = MEMORY[0x277D837D0];
    v46 = sub_268BD7430();
    *(v45 + 32) = 0x6D756C6F56746547;
    *(v45 + 40) = 0xE900000000000065;
    v47 = MEMORY[0x277D83C10];
    *(v45 + 96) = MEMORY[0x277D83B88];
    *(v45 + 104) = v47;
    v48 = v85;
    *(v45 + 64) = v46;
    *(v45 + 72) = v48;
    v90 = v40;
    sub_268C159BC();

    v49 = swift_allocObject();
    *(v49 + 16) = sub_268BD8710;
    *(v49 + 24) = v42;
    v85 = v49;
    v50 = v88;
    if (v86)
    {
      v50 = 0;
    }

    v91 = v50;
    if (v86)
    {
      v51 = 0;
    }

    else
    {
      v51 = v89;
    }

    v52 = qword_2802CDB70;

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v20, qword_2802D2ED8);
    v55 = v83;
    v54 = v84;
    (*(v83 + 16))(v84, v53, v20);
    v56 = v87;
    v57 = v87;
    v58 = v79;

    v59 = v20;
    v60 = v58;
    v61 = sub_268C159FC();
    v62 = sub_268C15DFC();

    LODWORD(v89) = v62;
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v88 = v59;
      v64 = v63;
      v65 = swift_slowAlloc();
      v92 = v65;
      *v64 = 136315650;
      *(v64 + 4) = sub_268BB3D28(a9, v60, &v92);
      *(v64 + 12) = 2080;
      if (v51)
      {
        v66 = v91;
      }

      else
      {
        v66 = 0x3E6C696E3CLL;
      }

      v67 = v56;
      if (v51)
      {
        v68 = v51;
      }

      else
      {
        v68 = 0xE500000000000000;
      }

      v69 = sub_268BB3D28(v66, v68, &v92);

      *(v64 + 14) = v69;
      *(v64 + 22) = 2080;
      v94 = v67;
      v70 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE150, &qword_268C17988);
      v71 = sub_268C15C0C();
      v73 = sub_268BB3D28(v71, v72, &v92);

      *(v64 + 24) = v73;
      _os_log_impl(&dword_268BAD000, v61, v89, "Getting device volume for device: %s, outputUID: %s, endpoint: %s", v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D628010](v65, -1, -1);
      MEMORY[0x26D628010](v64, -1, -1);

      (*(v55 + 8))(v84, v88);
    }

    else
    {

      (*(v55 + 8))(v54, v59);
    }

    v75 = __swift_project_boxed_opaque_existential_1((v80 + 16), *(v80 + 40));
    v76 = v82;
    if (qword_2802CDB78 != -1)
    {
      swift_once();
    }

    v77 = *v75;

    sub_268BB81BC();

    return (*(v81 + 8))(v90, v76);
  }
}

void sub_268BD43B8()
{
  OUTLINED_FUNCTION_59();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268C15A1C();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_87();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_44_0();
  if (v4)
  {
    v14 = v4;
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    __swift_project_value_buffer(v7, qword_2802D2ED8);
    OUTLINED_FUNCTION_30_2();
    v15(v0);
    v16 = v4;
    v17 = sub_268C159FC();
    v18 = sub_268C15DFC();

    if (os_log_type_enabled(v17, v18))
    {
      v35 = v2;
      v19 = OUTLINED_FUNCTION_25_2();
      v20 = OUTLINED_FUNCTION_24_2();
      v36 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = sub_268C161DC();
      v23 = sub_268BB3D28(v21, v22, &v36);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_268BAD000, v17, v18, "Error in getting the volume: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_30();
      v2 = v35;
      OUTLINED_FUNCTION_30();
    }

    v24 = *(v10 + 8);
    v25 = OUTLINED_FUNCTION_62();
    v26(v25);
    v36 = 0x8000000000000000;
    v37 = 1;
    v2(&v36);
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    OUTLINED_FUNCTION_33_2(v7, qword_2802D2ED8);
    v27 = OUTLINED_FUNCTION_24_3(v10);
    v28(v27);
    v29 = sub_268C159FC();
    v30 = sub_268C15DFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_25_2();
      *v31 = 134217984;
      *(v31 + 4) = v6;
      _os_log_impl(&dword_268BAD000, v29, v30, "GetVolume: volumeLevel: %f", v31, 0xCu);
      OUTLINED_FUNCTION_41_0();
    }

    v32 = *(v10 + 8);
    v33 = OUTLINED_FUNCTION_93();
    v34(v33);
    v36 = LODWORD(v6);
    v37 = 0;
    v2(&v36);
  }

  OUTLINED_FUNCTION_58();
}

void sub_268BD4720()
{
  OUTLINED_FUNCTION_31_0();
  v63 = v0;
  v2 = sub_268C15A5C();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v59 = v4;
  v60 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v57 = v8 - v7;
  OUTLINED_FUNCTION_10_2();
  v58 = sub_268C15AAC();
  v9 = OUTLINED_FUNCTION_3_0(v58);
  v56 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  v55 = v14 - v13;
  OUTLINED_FUNCTION_10_2();
  v64 = sub_268C15ADC();
  v15 = OUTLINED_FUNCTION_3_0(v64);
  v53 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_2();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_92();
  v52 = v23;
  OUTLINED_FUNCTION_10_2();
  v24 = sub_268C15A1C();
  v25 = OUTLINED_FUNCTION_3_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_2();
  v61 = v30 - v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_28_2();
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v24, qword_2802D2F10);
  v33 = *(v27 + 16);
  v34 = OUTLINED_FUNCTION_93();
  v33(v34);
  v35 = sub_268C159FC();
  v36 = sub_268C15DDC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_97(v37);
    _os_log_impl(&dword_268BAD000, v35, v36, "PlaybackController#acquireAndReleaseSnippetAssertionWithFixedTime acquire Media Remote assertion.", v1, 2u);
    OUTLINED_FUNCTION_30();
  }

  v38 = *(v27 + 8);
  v38(v0, v24);
  v39 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v40 = sub_268BB884C();
  v42 = v41;
  if (v41)
  {
    v62 = v40;
    sub_268BB9B44(0, &qword_2802CE068, 0x277D85C78);

    v51 = sub_268C15E5C();
    sub_268C15ABC();
    sub_268C15B3C();
    v54 = *(v53 + 8);
    v54(v21, v64);
    OUTLINED_FUNCTION_54();
    v43 = swift_allocObject();
    v43[2] = v63;
    v43[3] = v62;
    v43[4] = v42;
    v65[4] = sub_268BD7640;
    v65[5] = v43;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 1107296256;
    v65[2] = sub_268BC5554;
    v65[3] = &block_descriptor_1;
    v44 = _Block_copy(v65);

    sub_268C15A6C();
    v65[0] = MEMORY[0x277D84F90];
    sub_268BD84E4(&qword_2802CE048, MEMORY[0x277D85198]);
    v45 = OUTLINED_FUNCTION_105();
    __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
    sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
    sub_268C15FCC();
    MEMORY[0x26D6273F0](v52, v55, v57, v44);
    _Block_release(v44);

    (*(v59 + 8))(v57, v60);
    (*(v56 + 8))(v55, v58);
    v54(v52, v64);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_62();
    v33(v47);
    v48 = sub_268C159FC();
    v49 = sub_268C15DEC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_23_0();
      *v50 = 0;
      _os_log_impl(&dword_268BAD000, v48, v49, "PlaybackController#acquireAndReleaseSnippetAssertionWithFixedTime No UI sessionID has been provided", v50, 2u);
      OUTLINED_FUNCTION_30();
    }

    v38(v61, v24);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BD4CC8(uint64_t a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2802D2F10);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_268C159FC();
  v9 = sub_268C15DDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_268BAD000, v8, v9, "PlaybackController#acquireAndReleaseSnippetAssertionWithFixedTime release Media Remote assertion.", v10, 2u);
    MEMORY[0x26D628010](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *__swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_268BB8A94();
}

uint64_t PlaybackController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_56();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

id sub_268BD5384(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithOrigin:a1 client:a2 player:a3];

  return v6;
}

void sub_268BD53EC(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = sub_268C15A1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  if (a1)
  {
    v50 = a5;
    v51 = a6;
    v49 = a1;
    v19 = a1;
    v20 = [v19 error];
    v48 = v19;
    v21 = [v19 handlerReturnStatuses];
    v47 = sub_268BB9B44(0, &qword_2802CDF30, 0x277CCABB0);
    v22 = sub_268C15D0C();

    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v11, qword_2802D2ED8);
    (*(v12 + 16))(v16, v23, v11);
    v24 = v20;

    v25 = sub_268C159FC();
    v26 = sub_268C15DFC();

    if (os_log_type_enabled(v25, v26))
    {
      v45 = a3;
      v46 = v24;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52 = v43;
      *v27 = 138412546;
      v44 = a2;
      if (v20)
      {
        v29 = v46;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v27 + 4) = v30;
      *v28 = v31;
      *(v27 + 12) = 2080;
      v36 = MEMORY[0x26D6272E0](v22, v47);
      v38 = v37;

      v39 = sub_268BB3D28(v36, v38, &v52);

      *(v27 + 14) = v39;
      _os_log_impl(&dword_268BAD000, v25, v26, "PlaybackControlsCommandProviding#sendCommandToApp returned with error: %@ and statuses: %s", v27, 0x16u);
      sub_268BD8138(v28, &qword_2802CDF28, &unk_268C17900);
      MEMORY[0x26D628010](v28, -1, -1);
      v40 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x26D628010](v40, -1, -1);
      MEMORY[0x26D628010](v27, -1, -1);

      (*(v12 + 8))(v16, v11);
      v24 = v46;
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    v41 = v48;
    sub_268BB676C();
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v11, qword_2802D2ED8);
    (*(v12 + 16))(v18, v32, v11);
    v33 = sub_268C159FC();
    v34 = sub_268C15DFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_268BAD000, v33, v34, "PlaybackControlsCommandProviding#sendCommandToApp failed, no result returned", v35, 2u);
      MEMORY[0x26D628010](v35, -1, -1);
    }

    (*(v12 + 8))(v18, v11);
    v52 = 0x8000000000000000;
    v53 = 1;
    a2(&v52);
  }
}

void sub_268BD58B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1 == 0x45445F4C41434F4CLL && a2 == 0xEC00000045434956;
  if (v8 || (sub_268C1618C() & 1) != 0)
  {
    v11 = [objc_opt_self() localDestination];
  }

  else
  {
    sub_268BB9B44(0, &qword_2802CE188, 0x277D27988);

    v11 = sub_268BD5C70(a1, a2, &selRef_initWithOutputDeviceUID_);
  }

  v12 = v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D279C8]) initWithDestination_];
  v15[4] = a4;
  v15[5] = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_268BD5CE0;
  v15[3] = &block_descriptor_344;
  v14 = _Block_copy(v15);

  [v13 requestSupportedCommandsOnQueue:a3 completion:v14];

  _Block_release(v14);
}

id sub_268BD5A48(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0x45445F4C41434F4CLL && a2 == 0xEC00000045434956;
  if (v2 || (sub_268C1618C() & 1) != 0)
  {
    v5 = [objc_opt_self() deviceActivePlayerPath];
  }

  else
  {
    sub_268BB9B44(0, &qword_2802CE178, 0x277D278E0);

    v5 = sub_268BD5D84(a1, a2, 0, 0, 0, 0, 0);
  }

  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x277D278F0]);
  v8 = v6;
  v9 = [v7 init];
  v10 = [objc_opt_self() emptyPropertySet];
  [v9 setPlayingItemProperties_];

  [v9 setPlayerPath_];
  v11 = v9;
  v12 = sub_268C15BEC();
  [v11 setLabel_];

  return v11;
}

void sub_268BD5BE8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v9 = a2;
  v7 = a3;
  v8 = OUTLINED_FUNCTION_67();
  v6(v8);
}

id sub_268BD5C70(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_89();
  v5 = sub_268C15BEC();

  v6 = [v4 *a3];

  return v6;
}

uint64_t sub_268BD5CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_268BB9B44(0, &qword_2802CE190, 0x277D27960);
    v4 = sub_268C15D0C();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_268BD5D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_268C15BEC();

  if (!a4)
  {
    v11 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_268C15BEC();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_268C15BEC();

LABEL_6:
  v13 = [swift_getObjCClassFromMetadata() pathWithDeviceUID:v10 bundleID:v11 pid:a5 playerID:v12];

  return v13;
}

uint64_t sub_268BD5E6C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = a1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  sub_268C159BC();
  return a7(&v9);
}

uint64_t sub_268BD5F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *))
{
  v10[0] = a1;
  v10[1] = a2;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  sub_268C159BC();
  return a8(v10);
}

uint64_t sub_268BD606C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *))
{
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3 & 1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  sub_268C159BC();
  return a9(v10);
}

uint64_t sub_268BD6170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *))
{
  v9 = a1;
  v10 = BYTE4(a1) & 1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  sub_268C159BC();
  return a7(&v9);
}

uint64_t sub_268BD6278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *))
{
  v9 = a1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  sub_268C159BC();
  return a7(&v9);
}

uint64_t sub_268BD6384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t *))
{
  OUTLINED_FUNCTION_104();
  v12 = v9;
  v13 = v10 & 1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_50();
  sub_268C159BC();
  return a8(&v12);
}

uint64_t sub_268BD645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *))
{
  v9 = a1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_50();
  sub_268C159BC();
  return a7(&v9);
}

uint64_t sub_268BD656C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_268BD65AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_268BD65E4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return a4(v5);
}

uint64_t sub_268BD6624(uint64_t a1, uint64_t (*a2)(int *))
{
  v3 = a1;
  v4 = BYTE4(a1) & 1;
  return a2(&v3);
}

uint64_t sub_268BD669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *))
{
  OUTLINED_FUNCTION_104();
  v11 = v8;
  v12 = v9 & 1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2();
  }

  OUTLINED_FUNCTION_50();
  sub_268C159CC();
  return a7(&v11);
}

uint64_t sub_268BD6740(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *))
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v11 = a4 & 1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  sub_268C159CC();
  return a9(v10);
}

uint64_t sub_268BD680C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *))
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7 = a4 & 1;
  return a5(v6);
}

void sub_268BD6878(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

void sub_268BD6914(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_268BD6978(void *a1)
{
  v1 = [a1 options];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_268BB9B44(0, &qword_2802CE170, 0x277CD5FF0);
  v3 = sub_268C15D0C();

  return v3;
}

uint64_t sub_268BD69E8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_268C15BFC();

  return v4;
}

uint64_t sub_268BD6A48(void *a1)
{
  v1 = [a1 languageOptionCharacteristics];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268C15D0C();

  return v3;
}

uint64_t sub_268BD6AA0(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268C15BFC();

  return v3;
}

unint64_t sub_268BD6B58()
{
  result = qword_2802CE0F8;
  if (!qword_2802CE0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802CE0F0, qword_268C1A660);
    sub_268BD84E4(&qword_2802CDC80, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE0F8);
  }

  return result;
}

void sub_268BD6C34()
{
  OUTLINED_FUNCTION_100();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_268BC7694();
}

void sub_268BD6C64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268BC7A78();
}

void sub_268BD6C88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268BC7A78();
}

void sub_268BD6CAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268BC7A78();
}

void sub_268BD6CD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268BC7A78();
}

uint64_t sub_268BD6D00()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_268BD6D40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268BC7A78();
}

void sub_268BD6D94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268BC7A78();
}

uint64_t objectdestroy_19Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  OUTLINED_FUNCTION_56();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_268BD6E60(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_268BD6EC4(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_268BD6F64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_268BD6FDC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_268BD7074()
{
  OUTLINED_FUNCTION_47_0();
  v0 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_5_1(v5);

  return sub_268BD700C(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_268BD713C()
{
  OUTLINED_FUNCTION_47_0();
  v0 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_5_1(v5);

  return sub_268BD70F0(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_268BD71E8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_47_0();
  v2 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = *(v6 + 64);
  v9 = OUTLINED_FUNCTION_5_1((v7 + 33) & ~v7);

  return a2(v9);
}

uint64_t sub_268BD72A0()
{
  OUTLINED_FUNCTION_47_0();
  v0 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_5_1(v5);

  return sub_268BD7280(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_268BD7354(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 != 0);
}

unint64_t sub_268BD7430()
{
  result = qword_2802CE120;
  if (!qword_2802CE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE120);
  }

  return result;
}

void sub_268BD748C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_11_4();
}

void sub_268BD74B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_11_4();
}

void sub_268BD74E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_11_4();
}

uint64_t sub_268BD7510()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  OUTLINED_FUNCTION_88();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_268BD7598()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void sub_268BD7640()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_268BD4CC8(v0[2]);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268BD7BBC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_268BD7BF0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

unint64_t sub_268BD7C38()
{
  result = qword_2802CE128;
  if (!qword_2802CE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE128);
  }

  return result;
}

void sub_268BD7C8C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    v5 = a1;

    a1 = v5;
  }
}

uint64_t sub_268BD7CE4()
{
  OUTLINED_FUNCTION_47_0();
  v0 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_42_0(v5);

  return sub_268BD73C4(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_268BD7D68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = a4 & 1;
  return v5(v8);
}

uint64_t objectdestroy_86Tm()
{
  v1 = sub_268C159EC();
  OUTLINED_FUNCTION_46_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_268BD7E50(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_47_0();
  v2 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = *(v6 + 64);
  v9 = OUTLINED_FUNCTION_42_0((v7 + 33) & ~v7);

  return a2(v9);
}

uint64_t sub_268BD7EE8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_268BD7F14()
{
  OUTLINED_FUNCTION_47_0();
  v0 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_5_1(v5);

  return sub_268BD7384(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_268BD7F98(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t objectdestroy_157Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_268BD8028(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  v6 = BYTE4(a1) & 1;
  return v2(&v5);
}

uint64_t sub_268BD8090(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t objectdestroy_37Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

void sub_268BD811C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_268BCB358();
}

uint64_t sub_268BD8138(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_46_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_268BD818C(id a1, char a2)
{
  if (a2)
  {
    sub_268BD8198(a1);
  }

  else
  {
  }
}

void sub_268BD8198(id a1)
{
  if (a1 >= 5)
  {
  }
}

uint64_t objectdestroy_256Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_268BD81F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268BC7A78();
}

unint64_t sub_268BD8218()
{
  result = qword_2802CE180;
  if (!qword_2802CE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE180);
  }

  return result;
}

void sub_268BD826C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268BC7A78();
}

_OWORD *sub_268BD8290(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_268BD82A0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  OUTLINED_FUNCTION_56();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_268C159EC();
  OUTLINED_FUNCTION_46_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_268BD8390(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_47_0();
  v2 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = *(v6 + 64);
  v9 = OUTLINED_FUNCTION_5_1((v7 + 33) & ~v7);

  return a2(v9);
}

uint64_t sub_268BD8420()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_268BD84A0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  return v2(&v6);
}

uint64_t sub_268BD84E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_1@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + v1;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + v4);
  v8 = v3 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v3 + 32);
  return v2;
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;
  *(a1 + 32) = 2;
  v5 = *(v3 + 32);
  return a1 + v4;
}

void OUTLINED_FUNCTION_11_4()
{

  sub_268BD22C0();
}

uint64_t OUTLINED_FUNCTION_15_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = v2;
  *(result + 24) = a2;
  *(result + 32) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v4;
  *(a1 + 24) = a2;
  *(a1 + 32) = 2;
  v5 = *(v2 + 32);
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1)
{
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v1;
  *(a1 + 48) = v2;
}

double OUTLINED_FUNCTION_29_2(float a1)
{
  *v1 = a1;
  result = v2;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[12] = a2;
  v3[13] = v2;
  v5 = *(v4 - 152);
  v3[8] = result;
  v3[9] = v5;
  v3[17] = a2;
  v3[18] = v2;
  v3[14] = *(v4 - 144);
  return result;
}

void OUTLINED_FUNCTION_37_0()
{

  JUMPOUT(0x26D628010);
}

void OUTLINED_FUNCTION_39_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_41_0()
{

  JUMPOUT(0x26D628010);
}

uint64_t OUTLINED_FUNCTION_42_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = (v3 + ((v1 + a1 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v3 + 32);
  return v2;
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_slowAlloc();
}