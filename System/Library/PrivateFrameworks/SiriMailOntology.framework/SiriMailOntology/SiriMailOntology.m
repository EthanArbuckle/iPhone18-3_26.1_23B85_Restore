uint64_t sub_2676F7330()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E60, &qword_267A41F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E68, &qword_267A42188);
  sub_267A41C04();
  type metadata accessor for AppleContact.ContactAttribute(0);
  return sub_267A41914();
}

uint64_t static AppleContact.ContactAttribute.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D3F20 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E40, &qword_267A41E40);
  __swift_project_value_buffer(v2, qword_2801D3F28);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_2676F7758(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  __swift_project_value_buffer(v7, a4);
  return a5();
}

uint64_t sub_2676F77B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E50, &qword_267A41E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E58, &qword_267A41EF8);
  sub_267A41C04();
  type metadata accessor for AppleContact.ContactAttribute.NoVerb(0);
  return sub_267A41914();
}

uint64_t static AppleContact.ContactAttribute.NoVerb.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D3F40 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E48, &qword_267A41E48);
  __swift_project_value_buffer(v2, qword_2801D3F48);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 16);

  return v4(a1);
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

uint64_t sub_2676F7AB8@<X0>(_BYTE *a1@<X8>)
{
  result = AppleContact.ContactAttribute.definedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2676F7BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v15 = &v17 - v14;
  sub_2676F8AF4(a1, &v17 - v14, a5, a6);
  return a7(v15);
}

uint64_t sub_2676F7E30@<X0>(uint64_t *a1@<X8>)
{
  result = AppleContact.ContactAttribute.NoVerb.userEntities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2676F7E5C(uint64_t *a1)
{
  v1 = *a1;

  return AppleContact.ContactAttribute.NoVerb.userEntities.setter();
}

uint64_t Entity<A>.init(definedValue:usoAssociatedApp:usoListPosition:usoQuantifier:usoReferenceType:usoSearchQualifier:usoSameAs:usoSpatialPosition:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v53 = a7;
  v54 = a6;
  v55 = a5;
  v56 = a4;
  v57 = a3;
  v58 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v51 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E78, &qword_267A42198);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v50 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v26 = &v50 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v31 = &v50 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v36 = &v50 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v41 = &v50 - v40;
  v42 = *a1;
  if (qword_2801D3F20 != -1)
  {
    swift_once();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E40, &qword_267A41E40);
  __swift_project_value_buffer(v43, qword_2801D3F28);
  sub_267A41934();
  type metadata accessor for AppleContact.ContactAttribute(0);
  sub_267A419D4();
  swift_getKeyPath();
  v59 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA8, &qword_267A421F0);
  OUTLINED_FUNCTION_1();
  sub_2676F8AAC(v44, v45);
  OUTLINED_FUNCTION_0_0();
  sub_267A419F4();
  swift_getKeyPath();
  sub_2676F8AF4(v58, v41, &qword_2801D4EA0, &qword_267A421C0);
  sub_2676F8AAC(&qword_2801D4EB8, type metadata accessor for Common.App);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v57, v36, &qword_2801D4E98, &qword_267A421B8);
  sub_2676F8AAC(&qword_2801D4EC0, type metadata accessor for Common.ListPosition);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v56, v31, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8AAC(&qword_2801D4EC8, type metadata accessor for Common.Quantifier);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v55, v26, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8AAC(&qword_2801D4ED0, type metadata accessor for Common.ReferenceType);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  v46 = v54;
  sub_2676F8AF4(v54, v21, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8AAC(&qword_2801D4ED8, type metadata accessor for Common.SearchQualifier);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  v47 = v53;
  sub_2676F8AF4(v53, v50, &qword_2801D4E78, &qword_267A42198);
  sub_267A41A14();
  swift_getKeyPath();
  v48 = v52;
  sub_2676F8AF4(v52, v51, &qword_2801D4E70, &qword_267A42190);
  sub_2676F8AAC(&qword_2801D4EE0, type metadata accessor for Common.SpatialPosition);
  sub_267A41A14();
  sub_2676F8798(v48, &qword_2801D4E70, &qword_267A42190);
  sub_2676F8798(v47, &qword_2801D4E78, &qword_267A42198);
  sub_2676F8798(v46, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(v55, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v56, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v57, &qword_2801D4E98, &qword_267A421B8);
  return sub_2676F8798(v58, &qword_2801D4EA0, &qword_267A421C0);
}

{
  v52 = a8;
  v53 = a7;
  v54 = a6;
  v55 = a5;
  v56 = a4;
  v57 = a3;
  v58 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v51 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50D0, &qword_267A42978);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v50 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v26 = &v50 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v31 = &v50 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v36 = &v50 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v41 = &v50 - v40;
  v42 = *a1;
  if (qword_2801D3F60 != -1)
  {
    swift_once();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50A0, &qword_267A42628);
  __swift_project_value_buffer(v43, qword_2801D5070);
  sub_267A41934();
  type metadata accessor for AppleMessage.MessageAttribute(0);
  sub_267A419D4();
  swift_getKeyPath();
  v59 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50D8, &qword_267A429A8);
  OUTLINED_FUNCTION_1_1();
  sub_2676FE180(v44, v45);
  OUTLINED_FUNCTION_0_0();
  sub_267A419F4();
  swift_getKeyPath();
  sub_2676F8AF4(v58, v41, &qword_2801D4EA0, &qword_267A421C0);
  sub_2676FE180(&qword_2801D4EB8, type metadata accessor for Common.App);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v57, v36, &qword_2801D4E98, &qword_267A421B8);
  sub_2676FE180(&qword_2801D4EC0, type metadata accessor for Common.ListPosition);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v56, v31, &qword_2801D4E90, &qword_267A421B0);
  sub_2676FE180(&qword_2801D4EC8, type metadata accessor for Common.Quantifier);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v55, v26, &qword_2801D4E88, &qword_267A421A8);
  sub_2676FE180(&qword_2801D4ED0, type metadata accessor for Common.ReferenceType);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  v46 = v54;
  sub_2676F8AF4(v54, v21, &qword_2801D4E80, &qword_267A421A0);
  sub_2676FE180(&qword_2801D4ED8, type metadata accessor for Common.SearchQualifier);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  v47 = v53;
  sub_2676F8AF4(v53, v50, &qword_2801D50D0, &qword_267A42978);
  sub_267A41A14();
  swift_getKeyPath();
  v48 = v52;
  sub_2676F8AF4(v52, v51, &qword_2801D4E70, &qword_267A42190);
  sub_2676FE180(&qword_2801D4EE0, type metadata accessor for Common.SpatialPosition);
  sub_267A41A14();
  sub_2676F8798(v48, &qword_2801D4E70, &qword_267A42190);
  sub_2676F8798(v47, &qword_2801D50D0, &qword_267A42978);
  sub_2676F8798(v46, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(v55, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v56, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v57, &qword_2801D4E98, &qword_267A421B8);
  return sub_2676F8798(v58, &qword_2801D4EA0, &qword_267A421C0);
}

{
  v52 = a8;
  v53 = a7;
  v54 = a6;
  v55 = a5;
  v56 = a4;
  v57 = a3;
  v58 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v51 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEEE8, &qword_267A868B8);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v50 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v26 = &v50 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v31 = &v50 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v36 = &v50 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v41 = &v50 - v40;
  v42 = *a1;
  if (qword_2801D4B10 != -1)
  {
    swift_once();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEEB8, &qword_267A86568);
  __swift_project_value_buffer(v43, qword_2801DEE88);
  sub_267A41934();
  type metadata accessor for CommonContact.ContactAttribute(0);
  sub_267A419D4();
  swift_getKeyPath();
  v59 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEEF0, &qword_267A868E8);
  OUTLINED_FUNCTION_1_8();
  sub_2679BF71C(v44, v45);
  OUTLINED_FUNCTION_0_0();
  sub_267A419F4();
  swift_getKeyPath();
  sub_2676F8AF4(v58, v41, &qword_2801D4EA0, &qword_267A421C0);
  sub_2679BF71C(&qword_2801D4EB8, type metadata accessor for Common.App);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v57, v36, &qword_2801D4E98, &qword_267A421B8);
  sub_2679BF71C(&qword_2801D4EC0, type metadata accessor for Common.ListPosition);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v56, v31, &qword_2801D4E90, &qword_267A421B0);
  sub_2679BF71C(&qword_2801D4EC8, type metadata accessor for Common.Quantifier);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v55, v26, &qword_2801D4E88, &qword_267A421A8);
  sub_2679BF71C(&qword_2801D4ED0, type metadata accessor for Common.ReferenceType);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  v46 = v54;
  sub_2676F8AF4(v54, v21, &qword_2801D4E80, &qword_267A421A0);
  sub_2679BF71C(&qword_2801D4ED8, type metadata accessor for Common.SearchQualifier);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  v47 = v53;
  sub_2676F8AF4(v53, v50, &qword_2801DEEE8, &qword_267A868B8);
  sub_267A41A14();
  swift_getKeyPath();
  v48 = v52;
  sub_2676F8AF4(v52, v51, &qword_2801D4E70, &qword_267A42190);
  sub_2679BF71C(&qword_2801D4EE0, type metadata accessor for Common.SpatialPosition);
  sub_267A41A14();
  sub_2676F8798(v48, &qword_2801D4E70, &qword_267A42190);
  sub_2676F8798(v47, &qword_2801DEEE8, &qword_267A868B8);
  sub_2676F8798(v46, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(v55, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v56, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v57, &qword_2801D4E98, &qword_267A421B8);
  return sub_2676F8798(v58, &qword_2801D4EA0, &qword_267A421C0);
}

{
  v52 = a8;
  v53 = a7;
  v54 = a6;
  v55 = a5;
  v56 = a4;
  v57 = a3;
  v58 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v51 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEFE8, &qword_267A86FB0);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v50 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v26 = &v50 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v31 = &v50 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v36 = &v50 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v41 = &v50 - v40;
  v42 = *a1;
  if (qword_2801D4B20 != -1)
  {
    swift_once();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEFB8, &qword_267A86C60);
  __swift_project_value_buffer(v43, qword_2801DEF88);
  sub_267A41934();
  type metadata accessor for CommonEventTrigger.EventTriggerAttribute(0);
  sub_267A419D4();
  swift_getKeyPath();
  v59 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEFF0, &qword_267A86FE0);
  OUTLINED_FUNCTION_1_9();
  sub_2679C44A8(v44, v45);
  OUTLINED_FUNCTION_0_0();
  sub_267A419F4();
  swift_getKeyPath();
  sub_2676F8AF4(v58, v41, &qword_2801D4EA0, &qword_267A421C0);
  sub_2679C44A8(&qword_2801D4EB8, type metadata accessor for Common.App);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v57, v36, &qword_2801D4E98, &qword_267A421B8);
  sub_2679C44A8(&qword_2801D4EC0, type metadata accessor for Common.ListPosition);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v56, v31, &qword_2801D4E90, &qword_267A421B0);
  sub_2679C44A8(&qword_2801D4EC8, type metadata accessor for Common.Quantifier);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v55, v26, &qword_2801D4E88, &qword_267A421A8);
  sub_2679C44A8(&qword_2801D4ED0, type metadata accessor for Common.ReferenceType);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  v46 = v54;
  sub_2676F8AF4(v54, v21, &qword_2801D4E80, &qword_267A421A0);
  sub_2679C44A8(&qword_2801D4ED8, type metadata accessor for Common.SearchQualifier);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  v47 = v53;
  sub_2676F8AF4(v53, v50, &qword_2801DEFE8, &qword_267A86FB0);
  sub_267A41A14();
  swift_getKeyPath();
  v48 = v52;
  sub_2676F8AF4(v52, v51, &qword_2801D4E70, &qword_267A42190);
  sub_2679C44A8(&qword_2801D4EE0, type metadata accessor for Common.SpatialPosition);
  sub_267A41A14();
  sub_2676F8798(v48, &qword_2801D4E70, &qword_267A42190);
  sub_2676F8798(v47, &qword_2801DEFE8, &qword_267A86FB0);
  sub_2676F8798(v46, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(v55, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v56, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v57, &qword_2801D4E98, &qword_267A421B8);
  return sub_2676F8798(v58, &qword_2801D4EA0, &qword_267A421C0);
}

{
  v50 = a8;
  v51 = a7;
  v52 = a6;
  v53 = a5;
  v54 = a4;
  v55 = a3;
  v56 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v49 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5D8, &qword_267A89B48);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v48 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v26 = &v48 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v31 = &v48 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v36 = &v48 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v41 = &v48 - v40;
  v42 = *a1;
  if (qword_2801D4B90 != -1)
  {
    swift_once();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5C0, &qword_267A898B0);
  __swift_project_value_buffer(v43, qword_2801DF5A8);
  sub_267A41934();
  type metadata accessor for CommonUserEntity.UserEntityAttribute();
  sub_267A419D4();
  swift_getKeyPath();
  v57 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5E0, &qword_267A89B78);
  sub_2679E27C4(&qword_2801DA008, type metadata accessor for CommonUserEntity.UserEntityAttribute);
  OUTLINED_FUNCTION_0_0();
  sub_267A419F4();
  swift_getKeyPath();
  sub_2676F8AF4(v56, v41, &qword_2801D4EA0, &qword_267A421C0);
  sub_2679E27C4(&qword_2801D4EB8, type metadata accessor for Common.App);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v55, v36, &qword_2801D4E98, &qword_267A421B8);
  sub_2679E27C4(&qword_2801D4EC0, type metadata accessor for Common.ListPosition);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v54, v31, &qword_2801D4E90, &qword_267A421B0);
  sub_2679E27C4(&qword_2801D4EC8, type metadata accessor for Common.Quantifier);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v53, v26, &qword_2801D4E88, &qword_267A421A8);
  sub_2679E27C4(&qword_2801D4ED0, type metadata accessor for Common.ReferenceType);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  v44 = v52;
  sub_2676F8AF4(v52, v21, &qword_2801D4E80, &qword_267A421A0);
  sub_2679E27C4(&qword_2801D4ED8, type metadata accessor for Common.SearchQualifier);
  OUTLINED_FUNCTION_0_0();
  sub_267A41A14();
  swift_getKeyPath();
  v45 = v51;
  sub_2676F8AF4(v51, v48, &qword_2801DF5D8, &qword_267A89B48);
  sub_267A41A14();
  swift_getKeyPath();
  v46 = v50;
  sub_2676F8AF4(v50, v49, &qword_2801D4E70, &qword_267A42190);
  sub_2679E27C4(&qword_2801D4EE0, type metadata accessor for Common.SpatialPosition);
  sub_267A41A14();
  sub_2676F8798(v46, &qword_2801D4E70, &qword_267A42190);
  sub_2676F8798(v45, &qword_2801DF5D8, &qword_267A89B48);
  sub_2676F8798(v44, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(v53, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v54, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v55, &qword_2801D4E98, &qword_267A421B8);
  return sub_2676F8798(v56, &qword_2801D4EA0, &qword_267A421C0);
}

uint64_t sub_2676F8798(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DynamicTask<A>.init(entity:userEntities:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E78, &qword_267A42198);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  if (qword_2801D3F40 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E48, &qword_267A41E48);
  __swift_project_value_buffer(v7, qword_2801D3F48);
  sub_267A41934();
  type metadata accessor for AppleContact.ContactAttribute.NoVerb(0);
  sub_267A41944();
  swift_getKeyPath();
  sub_2676F8AF4(a1, v6, &qword_2801D4E78, &qword_267A42198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EE8, &qword_267A42338);
  sub_2676F8AAC(&qword_2801D4EF0, type metadata accessor for AppleContact.ContactAttribute.NoVerb);
  OUTLINED_FUNCTION_1();
  sub_2676F8AAC(v8, v9);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  sub_2676F8AAC(&qword_2801D4EF8, type metadata accessor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  return sub_2676F8798(a1, &qword_2801D4E78, &qword_267A42198);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50D0, &qword_267A42978);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  if (qword_2801D3F68 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50A8, &qword_267A42630);
  __swift_project_value_buffer(v7, qword_2801D5088);
  sub_267A41934();
  type metadata accessor for AppleMessage.MessageAttribute.NoVerb(0);
  sub_267A41944();
  swift_getKeyPath();
  sub_2676F8AF4(a1, v6, &qword_2801D50D0, &qword_267A42978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50E8, &qword_267A42AF0);
  sub_2676FE180(&qword_2801D50F0, type metadata accessor for AppleMessage.MessageAttribute.NoVerb);
  OUTLINED_FUNCTION_1_1();
  sub_2676FE180(v8, v9);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  sub_2676FE180(&qword_2801D4EF8, type metadata accessor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  return sub_2676F8798(a1, &qword_2801D50D0, &qword_267A42978);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEEE8, &qword_267A868B8);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  if (qword_2801D4B18 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEEC0, &qword_267A86570);
  __swift_project_value_buffer(v7, qword_2801DEEA0);
  sub_267A41934();
  type metadata accessor for CommonContact.ContactAttribute.NoVerb(0);
  sub_267A41944();
  swift_getKeyPath();
  sub_2676F8AF4(a1, v6, &qword_2801DEEE8, &qword_267A868B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEEF8, &qword_267A86A30);
  sub_2679BF71C(&qword_2801DEF00, type metadata accessor for CommonContact.ContactAttribute.NoVerb);
  OUTLINED_FUNCTION_1_8();
  sub_2679BF71C(v8, v9);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  sub_2679BF71C(&qword_2801D4EF8, type metadata accessor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  return sub_2676F8798(a1, &qword_2801DEEE8, &qword_267A868B8);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEFE8, &qword_267A86FB0);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  if (qword_2801D4B28 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEFC0, &qword_267A86C68);
  __swift_project_value_buffer(v7, qword_2801DEFA0);
  sub_267A41934();
  type metadata accessor for CommonEventTrigger.EventTriggerAttribute.NoVerb(0);
  sub_267A41944();
  swift_getKeyPath();
  sub_2676F8AF4(a1, v6, &qword_2801DEFE8, &qword_267A86FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DEFF8, &qword_267A87128);
  sub_2679C44A8(&qword_2801DF000, type metadata accessor for CommonEventTrigger.EventTriggerAttribute.NoVerb);
  OUTLINED_FUNCTION_1_9();
  sub_2679C44A8(v8, v9);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  sub_2679C44A8(&qword_2801D4EF8, type metadata accessor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  return sub_2676F8798(a1, &qword_2801DEFE8, &qword_267A86FB0);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0E8, &qword_267A87678);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  if (qword_2801D4B38 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0C0, &qword_267A87380);
  __swift_project_value_buffer(v7, qword_2801DF0A0);
  sub_267A41934();
  type metadata accessor for CommonFindMy.DeviceAttribute.NoVerb(0);
  sub_267A41944();
  swift_getKeyPath();
  sub_2676F8AF4(a1, v6, &qword_2801DF0E8, &qword_267A87678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0F8, &qword_267A877C8);
  sub_2679C9340(&qword_2801DF100, type metadata accessor for CommonFindMy.DeviceAttribute.NoVerb);
  OUTLINED_FUNCTION_1_10();
  sub_2679C9340(v8, v9);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  sub_2679C9340(&qword_2801D4EF8, type metadata accessor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  return sub_2676F8798(a1, &qword_2801DF0E8, &qword_267A87678);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1B8, &qword_267A87C08);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  if (qword_2801D4B48 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF190, &qword_267A87910);
  __swift_project_value_buffer(v7, qword_2801DF170);
  sub_267A41934();
  type metadata accessor for CommonMessage.MessageAttribute.NoVerb(0);
  sub_267A41944();
  swift_getKeyPath();
  sub_2676F8AF4(a1, v6, &qword_2801DF1B8, &qword_267A87C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1C8, &qword_267A87D58);
  sub_2679CD9A0(&qword_2801DF1D0, type metadata accessor for CommonMessage.MessageAttribute.NoVerb);
  OUTLINED_FUNCTION_1_11();
  sub_2679CD9A0(v8, v9);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  sub_2679CD9A0(&qword_2801D4EF8, type metadata accessor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  return sub_2676F8798(a1, &qword_2801DF1B8, &qword_267A87C08);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF288, &qword_267A88198);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  if (qword_2801D4B58 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF260, &qword_267A87EA0);
  __swift_project_value_buffer(v7, qword_2801DF240);
  sub_267A41934();
  type metadata accessor for CommonPayments.CurrencyAmountAttribute.NoVerb(0);
  sub_267A41944();
  swift_getKeyPath();
  sub_2676F8AF4(a1, v6, &qword_2801DF288, &qword_267A88198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF298, &qword_267A882E8);
  sub_2679D1FF8(&qword_2801DF2A0, type metadata accessor for CommonPayments.CurrencyAmountAttribute.NoVerb);
  OUTLINED_FUNCTION_1_12();
  sub_2679D1FF8(v8, v9);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  sub_2679D1FF8(&qword_2801D4EF8, type metadata accessor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  return sub_2676F8798(a1, &qword_2801DF288, &qword_267A88198);
}

uint64_t sub_2676F8A7C@<X0>(uint64_t *a1@<X8>)
{
  result = AppleContact.ContactAttribute.NoVerb.userEntities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2676F8AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2676F8AF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t AppleContact.ContactAttribute.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F38, &qword_267A42370);

  return sub_267A41984();
}

uint64_t AppleContact.ContactAttribute.definedValue.setter(char *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F38, &qword_267A42370);
  return sub_267A41994();
}

uint64_t AppleContact.ContactAttribute.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F38, &qword_267A42370);

  return sub_267A419A4();
}

uint64_t AppleContact.ContactAttribute.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F140);
}

uint64_t sub_2676F8EF8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = *(a1(0) + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(v8);
}

uint64_t AppleContact.ContactAttribute.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleContact.ContactAttribute.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423A0);
}

uint64_t sub_2676F9168()
{
  v1 = *(OUTLINED_FUNCTION_19() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleContact.ContactAttribute.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleContact.ContactAttribute.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F170);
}

uint64_t sub_2676F93B8()
{
  v1 = *(OUTLINED_FUNCTION_19() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleContact.ContactAttribute.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleContact.ContactAttribute.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423D0);
}

uint64_t sub_2676F9608()
{
  v1 = *(OUTLINED_FUNCTION_19() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleContact.ContactAttribute.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleContact.ContactAttribute.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1A0);
}

uint64_t sub_2676F9858()
{
  v1 = *(OUTLINED_FUNCTION_19() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleContact.ContactAttribute.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleContact.ContactAttribute.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A42400);
}

uint64_t sub_2676F9AA8()
{
  v1 = *(OUTLINED_FUNCTION_19() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleContact.ContactAttribute.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA0, &qword_267A42408);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleContact.ContactAttribute.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1D0);
}

uint64_t sub_2676F9CF8()
{
  v1 = *(OUTLINED_FUNCTION_19() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleContact.ContactAttribute.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleContact.ContactAttribute(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleContact.ContactAttribute.NoVerb.entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);

  return sub_267A41984();
}

uint64_t AppleContact.ContactAttribute.NoVerb.entity.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
  sub_267A41994();
  v4 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v4, v5, &qword_267A42400);
}

uint64_t AppleContact.ContactAttribute.NoVerb.$entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);

  return sub_267A419A4();
}

uint64_t sub_2676FA00C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  (*(v10 + 16))(&v15 - v13, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_267A419B4();
  return (*(v10 + 8))(a1, v8);
}

uint64_t AppleContact.ContactAttribute.NoVerb.userEntities.getter()
{
  v0 = *(type metadata accessor for AppleContact.ContactAttribute.NoVerb(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  sub_267A41984();
  return v2;
}

uint64_t sub_2676FA17C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleContact.ContactAttribute.NoVerb.userEntities.setter()
{
  v0 = *(type metadata accessor for AppleContact.ContactAttribute.NoVerb(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  return sub_267A41994();
}

uint64_t sub_2676FA294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  return a7(v13);
}

uint64_t AppleContact.ContactAttribute.NoVerb.$userEntities.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleContact.ContactAttribute.NoVerb(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

SiriMailOntology::AppleContact::ContactAttribute::DefinedValue_optional __swiftcall AppleContact.ContactAttribute.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267A41C44();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppleContact.ContactAttribute.DefinedValue.rawValue.getter()
{
  result = 0xD000000000000035;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000036;
      break;
    case 2:
      result = 0xD000000000000033;
      break;
    case 3:
    case 4:
    case 5:
      result = 0xD000000000000037;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2676FA540(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2679E53EC();
}

unint64_t sub_2676FA570@<X0>(unint64_t *a1@<X8>)
{
  result = AppleContact.ContactAttribute.DefinedValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*AppleContact.ContactAttribute.NoVerb.entity.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
  v2[4] = sub_267A41974();
  return sub_2676FC854;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t AppleContact.ContactAttribute.NoVerb.$entity.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA0, &qword_267A42408);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleContact.ContactAttribute.NoVerb.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute.NoVerb(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleContact.ContactAttribute.NoVerb.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleContact.ContactAttribute.NoVerb(v11) + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleContact.ContactAttribute.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F38, &qword_267A42370);
  v2[4] = sub_267A41974();
  return sub_2676FA8FC;
}

uint64_t AppleContact.ContactAttribute.$definedValue.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F40, &qword_267A42378);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F38, &qword_267A42370);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

void sub_2676FA9EC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[2] + 16);
  v4((*a1)[4], v3[5], v3[1]);
  v5 = v3[6];
  v34 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  v10 = *v3;
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_267A419B4();
    v11 = *(v9 + 8);
    v12 = v11(v6, v8);
    v20 = OUTLINED_FUNCTION_20(v12, v13, v14, v15, v16, v17, v18, v19, v33, v34);
    (v11)(v20);
  }

  else
  {
    v21 = v3[4];
    v22 = sub_267A419B4();
    v23 = *(v9 + 8);
    v31 = OUTLINED_FUNCTION_20(v22, v24, v25, v26, v27, v28, v29, v30, v33, v34);
    v32(v31);
  }

  free(v4);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t (*AppleContact.ContactAttribute.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleContact.ContactAttribute.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleContact.ContactAttribute(v11) + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleContact.ContactAttribute.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleContact.ContactAttribute.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleContact.ContactAttribute(v11) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleContact.ContactAttribute.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(v3) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleContact.ContactAttribute.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleContact.ContactAttribute(v11) + 28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleContact.ContactAttribute.usoReferenceType.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(v3) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleContact.ContactAttribute.$usoReferenceType.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleContact.ContactAttribute(v11) + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleContact.ContactAttribute.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(v3) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleContact.ContactAttribute.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleContact.ContactAttribute(v11) + 36);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleContact.ContactAttribute.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(v3) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleContact.ContactAttribute.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA0, &qword_267A42408);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleContact.ContactAttribute(v11) + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleContact.ContactAttribute.usoSpatialPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleContact.ContactAttribute(v3) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

void sub_2676FB3A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t AppleContact.ContactAttribute.$usoSpatialPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleContact.ContactAttribute(v11) + 44);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

void sub_2676FB4D8(void ***a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[2] + 2);
  v4((*a1)[4], v3[5], v3[1]);
  v5 = *(v3 + 14);
  v35 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  v10 = *v3;
  if (a2)
  {
    v34 = v3[6];
    v4(v3[3], v6, v8);
    sub_267A419B4();
    v11 = v9[1];
    v12 = v11(v6, v8);
    v20 = OUTLINED_FUNCTION_20(v12, v13, v14, v15, v16, v17, v18, v19, v34, v35);
    (v11)(v20);
  }

  else
  {
    v21 = v3[4];
    v22 = sub_267A419B4();
    v23 = v9[1];
    v31 = OUTLINED_FUNCTION_20(v22, v24, v25, v26, v27, v28, v29, v30, v33, v35);
    v32(v31);
  }

  free(v10);
  free(v6);
  free(v7);

  free(v3);
}

unint64_t sub_2676FB600()
{
  result = qword_2801D4FC8;
  if (!qword_2801D4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801D4FC8);
  }

  return result;
}

uint64_t sub_2676FB6E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2676FB730()
{
  result = qword_2801D4FE0;
  if (!qword_2801D4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801D4FE0);
  }

  return result;
}

unint64_t sub_2676FB788()
{
  result = qword_2801D4FE8;
  if (!qword_2801D4FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801D4FF0, &qword_267A863F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801D4FE8);
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

uint64_t getEnumTagSinglePayload for AppleContact(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AppleContact(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2676FBC9CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2676FBCF4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_36();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F38, &qword_267A42370);
  v7 = OUTLINED_FUNCTION_11_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    v12 = OUTLINED_FUNCTION_11_0(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      v16 = OUTLINED_FUNCTION_11_0(v15);
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        v19 = OUTLINED_FUNCTION_11_0(v18);
        if (*(v20 + 84) == v3)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          v22 = OUTLINED_FUNCTION_11_0(v21);
          if (*(v23 + 84) == v3)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            v25 = OUTLINED_FUNCTION_11_0(v24);
            if (*(v26 + 84) == v3)
            {
              v9 = v25;
              v14 = a3[9];
            }

            else
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
              v28 = OUTLINED_FUNCTION_11_0(v27);
              if (*(v29 + 84) == v3)
              {
                v9 = v28;
                v14 = a3[10];
              }

              else
              {
                v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v14 = a3[11];
              }
            }
          }
        }
      }
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_2676FBFA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_36();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F38, &qword_267A42370);
  v9 = OUTLINED_FUNCTION_11_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    v14 = OUTLINED_FUNCTION_11_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      v18 = OUTLINED_FUNCTION_11_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        v21 = OUTLINED_FUNCTION_11_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          v24 = OUTLINED_FUNCTION_11_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[8];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            v27 = OUTLINED_FUNCTION_11_0(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[9];
            }

            else
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
              v30 = OUTLINED_FUNCTION_11_0(v29);
              if (*(v31 + 84) == a3)
              {
                v11 = v30;
                v16 = a4[10];
              }

              else
              {
                v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v16 = a4[11];
              }
            }
          }
        }
      }
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

void sub_2676FC248()
{
  sub_2676FC800(319, &qword_2801D5008, &qword_2801D5010, &qword_267A425E8);
  if (v0 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
    if (v1 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
      if (v2 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
        if (v3 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
          if (v4 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
            if (v5 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801D5040, &qword_2801D4F00, &qword_267A42400);
              if (v6 <= 0x3F)
              {
                sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AppleContact.ContactAttribute.DefinedValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleContact.ContactAttribute.DefinedValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x2676FC57CLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2676FC5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_36();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
  v7 = OUTLINED_FUNCTION_11_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_2676FC698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F98, &qword_267A423F8);
  v9 = OUTLINED_FUNCTION_11_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v12 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

void sub_2676FC74C()
{
  sub_2676FC800(319, &qword_2801D5040, &qword_2801D4F00, &qword_267A42400);
  if (v0 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5060, &qword_2801D5068, &qword_267A42620);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2676FC800(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_267A419C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_2676F8AF4(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{
  *(v1 + 8) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void *OUTLINED_FUNCTION_5_0(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_267A419A4();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sub_267A41974();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return type metadata accessor for AppleContact.ContactAttribute(0);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t sub_2676FCB5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50C0, &qword_267A426E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50C8, &qword_267A42970);
  sub_267A41C04();
  type metadata accessor for AppleMessage.MessageAttribute(0);
  return sub_267A41914();
}

uint64_t static AppleMessage.MessageAttribute.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D3F60 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50A0, &qword_267A42628);
  __swift_project_value_buffer(v2, qword_2801D5070);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_2676FCF04(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  __swift_project_value_buffer(v7, a4);
  return a5();
}

uint64_t sub_2676FCF60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50B0, &qword_267A42638);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50B8, &qword_267A426E0);
  sub_267A41C04();
  type metadata accessor for AppleMessage.MessageAttribute.NoVerb(0);
  return sub_267A41914();
}

uint64_t static AppleMessage.MessageAttribute.NoVerb.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D3F68 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D50A8, &qword_267A42630);
  __swift_project_value_buffer(v2, qword_2801D5088);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_2676FD1EC@<X0>(_BYTE *a1@<X8>)
{
  result = AppleMessage.MessageAttribute.definedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2676FD2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v15 = &v17 - v14;
  sub_2676F8AF4(a1, &v17 - v14, a5, a6);
  return a7(v15);
}

uint64_t sub_2676FD564@<X0>(uint64_t *a1@<X8>)
{
  result = AppleMessage.MessageAttribute.NoVerb.userEntities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2676FD590(uint64_t *a1)
{
  v1 = *a1;

  return AppleMessage.MessageAttribute.NoVerb.userEntities.setter();
}

uint64_t sub_2676FE150@<X0>(uint64_t *a1@<X8>)
{
  result = AppleMessage.MessageAttribute.NoVerb.userEntities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2676FE180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppleMessage.MessageAttribute.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5100, &qword_267A42B20);

  return sub_267A41984();
}

uint64_t AppleMessage.MessageAttribute.definedValue.setter(char *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5100, &qword_267A42B20);
  return sub_267A41994();
}

uint64_t AppleMessage.MessageAttribute.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5100, &qword_267A42B20);

  return sub_267A419A4();
}

uint64_t AppleMessage.MessageAttribute.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F140);
}

uint64_t sub_2676FE524(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = *(a1(0) + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(v8);
}

uint64_t AppleMessage.MessageAttribute.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleMessage.MessageAttribute.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423A0);
}

uint64_t sub_2676FE794()
{
  v1 = *(OUTLINED_FUNCTION_19_0() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleMessage.MessageAttribute.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleMessage.MessageAttribute.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F170);
}

uint64_t sub_2676FE9E4()
{
  v1 = *(OUTLINED_FUNCTION_19_0() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleMessage.MessageAttribute.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleMessage.MessageAttribute.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423D0);
}

uint64_t sub_2676FEC34()
{
  v1 = *(OUTLINED_FUNCTION_19_0() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleMessage.MessageAttribute.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleMessage.MessageAttribute.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1A0);
}

uint64_t sub_2676FEE84()
{
  v1 = *(OUTLINED_FUNCTION_19_0() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleMessage.MessageAttribute.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleMessage.MessageAttribute.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A42B40);
}

uint64_t sub_2676FF0D4()
{
  v1 = *(OUTLINED_FUNCTION_19_0() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleMessage.MessageAttribute.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5118, &unk_267A42B48);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleMessage.MessageAttribute.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v8);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1D0);
}

uint64_t sub_2676FF324()
{
  v1 = *(OUTLINED_FUNCTION_19_0() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t AppleMessage.MessageAttribute.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleMessage.MessageAttribute(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t AppleMessage.MessageAttribute.NoVerb.entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);

  return sub_267A41984();
}

uint64_t AppleMessage.MessageAttribute.NoVerb.entity.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
  sub_267A41994();
  v4 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v4, v5, &qword_267A42B40);
}

uint64_t AppleMessage.MessageAttribute.NoVerb.$entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);

  return sub_267A419A4();
}

uint64_t sub_2676FF638(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  (*(v10 + 16))(&v15 - v13, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_267A419B4();
  return (*(v10 + 8))(a1, v8);
}

uint64_t AppleMessage.MessageAttribute.NoVerb.userEntities.getter()
{
  v0 = *(type metadata accessor for AppleMessage.MessageAttribute.NoVerb(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  sub_267A41984();
  return v2;
}

uint64_t AppleMessage.MessageAttribute.NoVerb.userEntities.setter()
{
  v0 = *(type metadata accessor for AppleMessage.MessageAttribute.NoVerb(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  return sub_267A41994();
}

uint64_t sub_2676FF888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  return a7(v13);
}

uint64_t AppleMessage.MessageAttribute.NoVerb.$userEntities.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for AppleMessage.MessageAttribute.NoVerb(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

SiriMailOntology::AppleMessage::MessageAttribute::DefinedValue_optional __swiftcall AppleMessage.MessageAttribute.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267A41C64();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AppleMessage.MessageAttribute.DefinedValue.rawValue.getter()
{
  result = 0xD000000000000037;
  switch(*v0)
  {
    case 2:
    case 6:
      result = 0xD00000000000003ALL;
      break;
    case 3:
    case 0xE:
      result = 0xD00000000000003DLL;
      break;
    case 4:
      result = 0xD000000000000036;
      break;
    case 5:
    case 8:
    case 0xD:
    case 0x10:
    case 0x11:
      result = 0xD000000000000035;
      break;
    case 7:
    case 0xF:
      result = 0xD000000000000039;
      break;
    case 0xA:
      result = 0xD00000000000003CLL;
      break;
    case 0x12:
    case 0x1A:
    case 0x20:
    case 0x21:
      result = 0xD000000000000032;
      break;
    case 0x13:
    case 0x22:
      result = 0xD000000000000033;
      break;
    case 0x14:
    case 0x15:
    case 0x17:
    case 0x1D:
    case 0x1F:
      result = 0xD000000000000031;
      break;
    case 0x18:
      result = 0xD000000000000034;
      break;
    case 0x19:
      result = 0xD000000000000030;
      break;
    case 0x1B:
    case 0x1C:
      result = 0xD00000000000002FLL;
      break;
    case 0x1E:
      result = 0xD00000000000002ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2676FFF4C@<X0>(unint64_t *a1@<X8>)
{
  result = AppleMessage.MessageAttribute.DefinedValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*AppleMessage.MessageAttribute.NoVerb.entity.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
  v2[4] = sub_267A41974();
  return sub_2676FC854;
}

uint64_t AppleMessage.MessageAttribute.NoVerb.$entity.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5118, &unk_267A42B48);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleMessage.MessageAttribute.NoVerb.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute.NoVerb(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleMessage.MessageAttribute.NoVerb.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleMessage.MessageAttribute.NoVerb(v11) + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleMessage.MessageAttribute.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5100, &qword_267A42B20);
  v2[4] = sub_267A41974();
  return sub_2676FA8FC;
}

uint64_t AppleMessage.MessageAttribute.$definedValue.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5108, &unk_267A42B28);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5100, &qword_267A42B20);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleMessage.MessageAttribute.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleMessage.MessageAttribute.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleMessage.MessageAttribute(v11) + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleMessage.MessageAttribute.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleMessage.MessageAttribute.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleMessage.MessageAttribute(v11) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleMessage.MessageAttribute.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(v3) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleMessage.MessageAttribute.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleMessage.MessageAttribute(v11) + 28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleMessage.MessageAttribute.usoReferenceType.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(v3) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleMessage.MessageAttribute.$usoReferenceType.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleMessage.MessageAttribute(v11) + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleMessage.MessageAttribute.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(v3) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleMessage.MessageAttribute.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleMessage.MessageAttribute(v11) + 36);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleMessage.MessageAttribute.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(v3) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleMessage.MessageAttribute.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5118, &unk_267A42B48);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleMessage.MessageAttribute(v11) + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*AppleMessage.MessageAttribute.usoSpatialPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v4 = *(type metadata accessor for AppleMessage.MessageAttribute(v3) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  *(v0 + 32) = OUTLINED_FUNCTION_14();
  return sub_2676FC854;
}

uint64_t AppleMessage.MessageAttribute.$usoSpatialPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for AppleMessage.MessageAttribute(v11) + 44);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

unint64_t sub_267700D14()
{
  result = qword_2801D5120;
  if (!qword_2801D5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801D5120);
  }

  return result;
}

uint64_t sub_267700DF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267700E44()
{
  result = qword_2801D5138;
  if (!qword_2801D5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801D5138);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppleMessage(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2677012A8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2677012F4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_36();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5100, &qword_267A42B20);
  v7 = OUTLINED_FUNCTION_11_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    v12 = OUTLINED_FUNCTION_11_0(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      v16 = OUTLINED_FUNCTION_11_0(v15);
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        v19 = OUTLINED_FUNCTION_11_0(v18);
        if (*(v20 + 84) == v3)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          v22 = OUTLINED_FUNCTION_11_0(v21);
          if (*(v23 + 84) == v3)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            v25 = OUTLINED_FUNCTION_11_0(v24);
            if (*(v26 + 84) == v3)
            {
              v9 = v25;
              v14 = a3[9];
            }

            else
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
              v28 = OUTLINED_FUNCTION_11_0(v27);
              if (*(v29 + 84) == v3)
              {
                v9 = v28;
                v14 = a3[10];
              }

              else
              {
                v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v14 = a3[11];
              }
            }
          }
        }
      }
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_26770157C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_36();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5100, &qword_267A42B20);
  v9 = OUTLINED_FUNCTION_11_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    v14 = OUTLINED_FUNCTION_11_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      v18 = OUTLINED_FUNCTION_11_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        v21 = OUTLINED_FUNCTION_11_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          v24 = OUTLINED_FUNCTION_11_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[8];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            v27 = OUTLINED_FUNCTION_11_0(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[9];
            }

            else
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
              v30 = OUTLINED_FUNCTION_11_0(v29);
              if (*(v31 + 84) == a3)
              {
                v11 = v30;
                v16 = a4[10];
              }

              else
              {
                v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v16 = a4[11];
              }
            }
          }
        }
      }
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

void sub_2677017F8()
{
  sub_2676FC800(319, &qword_2801D5150, &qword_2801D5158, &qword_267A42CF8);
  if (v0 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
    if (v1 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
      if (v2 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
        if (v3 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
          if (v4 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
            if (v5 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801D5160, &qword_2801D50F8, &qword_267A42B40);
              if (v6 <= 0x3F)
              {
                sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AppleMessage.MessageAttribute.DefinedValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleMessage.MessageAttribute.DefinedValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
        JUMPOUT(0x267701B20);
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_267701B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_36();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
  v7 = OUTLINED_FUNCTION_11_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_267701C2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D5110, &qword_267A42B38);
  v9 = OUTLINED_FUNCTION_11_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v12 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

void sub_267701CE0()
{
  sub_2676FC800(319, &qword_2801D5160, &qword_2801D50F8, &qword_267A42B40);
  if (v0 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5060, &qword_2801D5068, &qword_267A42620);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return type metadata accessor for AppleMessage.MessageAttribute(0);
}

uint64_t sub_267701EE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9668, &qword_267A66C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9670, &qword_267A66EC8);
  sub_267A41C04();
  type metadata accessor for Common.ActivationValue(0);
  return sub_267A41914();
}

uint64_t static Common.ActivationValue.definition.getter()
{
  if (qword_2801D3F70 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D73F8, &qword_267A42EC0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5178);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267702284()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9658, &qword_267A66A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DC0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x8000000267A97810;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x8000000267A97810;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x507473694C6F7375;
  *(inited + 96) = 0xEF6E6F697469736FLL;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x507473694C6F7375;
  *(inited + 120) = 0xEF6E6F697469736FLL;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "usoQuantifier");
  *(inited + 150) = -4864;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "usoQuantifier");
  *(inited + 174) = -4864;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97830;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97830;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000012;
  *(inited + 240) = 0x8000000267A97850;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000012;
  *(inited + 264) = 0x8000000267A97850;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x41656D61536F7375;
  *(inited + 288) = 0xE900000000000073;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x41656D61536F7375;
  *(inited + 312) = 0xE900000000000073;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97870;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9660, &qword_267A66C38);
  sub_267A41C04();
  type metadata accessor for Common.AdjustmentDirection(0);
  return sub_267A41924();
}

uint64_t static Common.AdjustmentDirection.definition.getter()
{
  if (qword_2801D3F78 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7400, &qword_267A42EC8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5190);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2677025E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9648, &qword_267A66770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9650, &qword_267A669F8);
  sub_267A41C04();
  type metadata accessor for Common.AdjustmentType(0);
  return sub_267A41914();
}

uint64_t static Common.AdjustmentType.definition.getter()
{
  if (qword_2801D3F80 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7408, &qword_267A42ED0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D51A8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267702988()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9638, &qword_267A663F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DD0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x8000000267A9A710;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x8000000267A9A710;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1953066613;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1953066613;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x65756C6176;
  *(inited + 192) = 0xE500000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x65756C6176;
  *(inited + 216) = 0xE500000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97810;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97810;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97830;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97830;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97850;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97850;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97870;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9640, &qword_267A66768);
  sub_267A41C04();
  type metadata accessor for Common.Age(0);
  return sub_267A41914();
}

uint64_t static Common.Age.definition.getter()
{
  if (qword_2801D3F88 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7410, &qword_267A42ED8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D51C0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267702DD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9628, &qword_267A66070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DD0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7475626972747461;
  *(inited + 96) = 0xEA00000000007365;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7475626972747461;
  *(inited + 120) = 0xEA00000000007365;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1701667182;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1701667182;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000018;
  *(inited + 192) = 0x8000000267A99CB0;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000018;
  *(inited + 216) = 0x8000000267A99CB0;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97810;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97810;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97830;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97830;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97850;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97850;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97870;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9630, &qword_267A663E8);
  sub_267A41C04();
  type metadata accessor for Common.Agent(0);
  return sub_267A41924();
}

uint64_t static Common.Agent.definition.getter()
{
  if (qword_2801D3F90 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7418, &qword_267A42EE0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D51D8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770322C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9618, &qword_267A65BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DE0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x697473694C707061;
  *(inited + 48) = 0xEA0000000000676ELL;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x697473694C707061;
  *(inited + 72) = 0xEA0000000000676ELL;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x8000000267A9A1B0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000012;
  *(inited + 120) = 0x8000000267A9A1B0;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x7475626972747461;
  *(inited + 144) = 0xEA00000000007365;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7475626972747461;
  *(inited + 168) = 0xEA00000000007365;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x65706F6C65766564;
  *(inited + 192) = 0xE900000000000072;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x65706F6C65766564;
  *(inited + 216) = 0xE900000000000072;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x65726E6567;
  *(inited + 240) = 0xE500000000000000;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x65726E6567;
  *(inited + 264) = 0xE500000000000000;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 1701667182;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 1701667182;
  *(inited + 312) = 0xE400000000000000;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x6E6F6974636573;
  *(inited + 336) = 0xE700000000000000;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x6E6F6974636573;
  *(inited + 360) = 0xE700000000000000;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x6574617473;
  *(inited + 384) = 0xE500000000000000;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x6574617473;
  *(inited + 408) = 0xE500000000000000;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000010;
  *(inited + 432) = 0x8000000267A97810;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000010;
  *(inited + 456) = 0x8000000267A97810;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x507473694C6F7375;
  *(inited + 480) = 0xEF6E6F697469736FLL;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x507473694C6F7375;
  *(inited + 504) = 0xEF6E6F697469736FLL;
  *(inited + 512) = swift_getKeyPath();
  strcpy((inited + 520), "usoQuantifier");
  *(inited + 534) = -4864;
  *(inited + 536) = swift_getKeyPath();
  strcpy((inited + 544), "usoQuantifier");
  *(inited + 558) = -4864;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000010;
  *(inited + 576) = 0x8000000267A97830;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000010;
  *(inited + 600) = 0x8000000267A97830;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000012;
  *(inited + 624) = 0x8000000267A97850;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000012;
  *(inited + 648) = 0x8000000267A97850;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0x41656D61536F7375;
  *(inited + 672) = 0xE900000000000073;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0x41656D61536F7375;
  *(inited + 696) = 0xE900000000000073;
  *(inited + 704) = swift_getKeyPath();
  *(inited + 712) = 0xD000000000000012;
  *(inited + 720) = 0x8000000267A97870;
  *(inited + 728) = swift_getKeyPath();
  *(inited + 736) = 0xD000000000000012;
  *(inited + 744) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9620, &qword_267A66068);
  sub_267A41C04();
  type metadata accessor for Common.App(0);
  return sub_267A41914();
}

uint64_t static Common.App.definition.getter()
{
  if (qword_2801D3F98 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7420, &qword_267A42EE8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D51F0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267703780()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9608, &qword_267A65880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x736E6961746E6F63;
  *(inited + 48) = 0xE800000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x736E6961746E6F63;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1701869940;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1701869940;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9610, &qword_267A65BA8);
  sub_267A41C04();
  type metadata accessor for Common.AppEntity(0);
  return sub_267A41914();
}

uint64_t static Common.AppEntity.definition.getter()
{
  if (qword_2801D3FA0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7428, &qword_267A42EF0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5208);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267703B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95F8, &qword_267A655F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9600, &qword_267A65878);
  sub_267A41C04();
  type metadata accessor for Common.AppEntityType(0);
  return sub_267A41914();
}

uint64_t static Common.AppEntityType.definition.getter()
{
  if (qword_2801D3FA8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7430, &qword_267A42EF8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5220);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267703F08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95E8, &qword_267A65360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95F0, &qword_267A655E8);
  sub_267A41C04();
  type metadata accessor for Common.AppGenre(0);
  return sub_267A41914();
}

uint64_t static Common.AppGenre.definition.getter()
{
  if (qword_2801D3FB0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7438, &qword_267A42F00);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5238);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267704298()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95D8, &qword_267A64F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E00;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x6E69746152656761;
  *(inited + 48) = 0xE900000000000067;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x6E69746152656761;
  *(inited + 72) = 0xE900000000000067;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 7368801;
  *(inited + 96) = 0xE300000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 7368801;
  *(inited + 120) = 0xE300000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x7475626972747461;
  *(inited + 144) = 0xEA00000000007365;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7475626972747461;
  *(inited + 168) = 0xEA00000000007365;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x7365726E6567;
  *(inited + 192) = 0xE600000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x7365726E6567;
  *(inited + 216) = 0xE600000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x7364726F7779656BLL;
  *(inited + 240) = 0xE800000000000000;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x7364726F7779656BLL;
  *(inited + 264) = 0xE800000000000000;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x6563697270;
  *(inited + 288) = 0xE500000000000000;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x6563697270;
  *(inited + 312) = 0xE500000000000000;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97810;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97810;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x507473694C6F7375;
  *(inited + 384) = 0xEF6E6F697469736FLL;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x507473694C6F7375;
  *(inited + 408) = 0xEF6E6F697469736FLL;
  *(inited + 416) = swift_getKeyPath();
  strcpy((inited + 424), "usoQuantifier");
  *(inited + 438) = -4864;
  *(inited + 440) = swift_getKeyPath();
  strcpy((inited + 448), "usoQuantifier");
  *(inited + 462) = -4864;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000010;
  *(inited + 480) = 0x8000000267A97830;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000010;
  *(inited + 504) = 0x8000000267A97830;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97850;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97850;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0x41656D61536F7375;
  *(inited + 576) = 0xE900000000000073;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0x41656D61536F7375;
  *(inited + 600) = 0xE900000000000073;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000012;
  *(inited + 624) = 0x8000000267A97870;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000012;
  *(inited + 648) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95E0, &qword_267A65358);
  sub_267A41C04();
  type metadata accessor for Common.AppListing(0);
  return sub_267A41914();
}

uint64_t static Common.AppListing.definition.getter()
{
  if (qword_2801D3FB8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7440, &qword_267A42F08);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5250);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267704764()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95C8, &qword_267A64CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95D0, &qword_267A64F38);
  sub_267A41C04();
  type metadata accessor for Common.AppSection(0);
  return sub_267A41914();
}

uint64_t static Common.AppSection.definition.getter()
{
  if (qword_2801D3FC0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7448, &qword_267A42F10);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5268);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267704AF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95B8, &qword_267A64A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95C0, &qword_267A64CA8);
  sub_267A41C04();
  type metadata accessor for Common.AppState(0);
  return sub_267A41914();
}

uint64_t static Common.AppState.definition.getter()
{
  if (qword_2801D3FC8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7450, &qword_267A42F18);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5280);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267704E90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95A8, &qword_267A646A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DD0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x8000000267A9A670;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x8000000267A9A670;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7041646572616873;
  *(inited + 96) = 0xE900000000000070;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7041646572616873;
  *(inited + 120) = 0xE900000000000070;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x7041646572616873;
  *(inited + 144) = 0xEF797469746E4570;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7041646572616873;
  *(inited + 168) = 0xEF797469746E4570;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 1701869940;
  *(inited + 192) = 0xE400000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 1701869940;
  *(inited + 216) = 0xE400000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97810;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97810;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97830;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97830;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97850;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97850;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97870;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95B0, &qword_267A64A18);
  sub_267A41C04();
  type metadata accessor for Common.Attachment(0);
  return sub_267A41914();
}

uint64_t static Common.Attachment.definition.getter()
{
  if (qword_2801D3FD0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7458, &qword_267A42F20);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5298);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2677052DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9598, &qword_267A643C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E10;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A97810;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A97810;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97830;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97830;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97850;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97850;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97870;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D95A0, &qword_267A64698);
  sub_267A41C04();
  type metadata accessor for Common.AttachmentType(0);
  return sub_267A41914();
}

uint64_t static Common.AttachmentType.definition.getter()
{
  if (qword_2801D3FD8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7460, &qword_267A42F28);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D52B0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2677056B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9588, &qword_267A64130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9590, &qword_267A643B8);
  sub_267A41C04();
  type metadata accessor for Common.CalendarEra(0);
  return sub_267A41914();
}

uint64_t static Common.CalendarEra.definition.getter()
{
  if (qword_2801D3FE0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7468, &qword_267A42F30);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D52C8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267705A40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9578, &qword_267A63EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9580, &qword_267A64128);
  sub_267A41C04();
  type metadata accessor for Common.CalendarSystem(0);
  return sub_267A41914();
}

uint64_t static Common.CalendarSystem.definition.getter()
{
  if (qword_2801D3FE8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7470, &qword_267A42F38);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D52E0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267705DD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9568, &qword_267A63990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x8000000267A99C70;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x8000000267A99C70;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x8000000267A99C90;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000016;
  *(inited + 120) = 0x8000000267A99C90;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x7475626972747461;
  *(inited + 144) = 0xEA00000000007365;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7475626972747461;
  *(inited + 168) = 0xEA00000000007365;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "deviceCategory");
  *(inited + 199) = -18;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "deviceCategory");
  *(inited + 223) = -18;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x6C65646F6DLL;
  *(inited + 240) = 0xE500000000000000;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x6C65646F6DLL;
  *(inited + 264) = 0xE500000000000000;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 1701667182;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 1701667182;
  *(inited + 312) = 0xE400000000000000;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000011;
  *(inited + 336) = 0x8000000267A9A4D0;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000011;
  *(inited + 360) = 0x8000000267A9A4D0;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x69747265706F7270;
  *(inited + 384) = 0xEA00000000007365;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x69747265706F7270;
  *(inited + 408) = 0xEA00000000007365;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x7365707974;
  *(inited + 432) = 0xE500000000000000;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x7365707974;
  *(inited + 456) = 0xE500000000000000;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000010;
  *(inited + 480) = 0x8000000267A97810;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000010;
  *(inited + 504) = 0x8000000267A97810;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0x507473694C6F7375;
  *(inited + 528) = 0xEF6E6F697469736FLL;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0x507473694C6F7375;
  *(inited + 552) = 0xEF6E6F697469736FLL;
  *(inited + 560) = swift_getKeyPath();
  strcpy((inited + 568), "usoQuantifier");
  *(inited + 582) = -4864;
  *(inited + 584) = swift_getKeyPath();
  strcpy((inited + 592), "usoQuantifier");
  *(inited + 606) = -4864;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000010;
  *(inited + 624) = 0x8000000267A97830;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000010;
  *(inited + 648) = 0x8000000267A97830;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0xD000000000000012;
  *(inited + 672) = 0x8000000267A97850;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0xD000000000000012;
  *(inited + 696) = 0x8000000267A97850;
  *(inited + 704) = swift_getKeyPath();
  *(inited + 712) = 0x41656D61536F7375;
  *(inited + 720) = 0xE900000000000073;
  *(inited + 728) = swift_getKeyPath();
  *(inited + 736) = 0x41656D61536F7375;
  *(inited + 744) = 0xE900000000000073;
  *(inited + 752) = swift_getKeyPath();
  *(inited + 760) = 0xD000000000000012;
  *(inited + 768) = 0x8000000267A97870;
  *(inited + 776) = swift_getKeyPath();
  *(inited + 784) = 0xD000000000000012;
  *(inited + 792) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9570, &qword_267A63E98);
  sub_267A41C04();
  type metadata accessor for Common.Car(0);
  return sub_267A41914();
}

uint64_t static Common.Car.definition.getter()
{
  if (qword_2801D3FF0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7478, &qword_267A42F40);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D52F8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267706368()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9558, &qword_267A63700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9560, &qword_267A63988);
  sub_267A41C04();
  type metadata accessor for Common.CarProfile(0);
  return sub_267A41914();
}

uint64_t static Common.CarProfile.definition.getter()
{
  if (qword_2801D3FF8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7480, &qword_267A42F48);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5310);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2677066F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9548, &qword_267A63380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DD0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x8000000267A99DD0;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x8000000267A99DD0;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x656369766564;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x656369766564;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1701667182;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1701667182;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x65756C6176;
  *(inited + 192) = 0xE500000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x65756C6176;
  *(inited + 216) = 0xE500000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97810;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97810;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97830;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97830;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97850;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97850;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97870;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9550, &qword_267A636F8);
  sub_267A41C04();
  type metadata accessor for Common.CarSetting(0);
  return sub_267A41914();
}

uint64_t static Common.CarSetting.definition.getter()
{
  if (qword_2801D4000 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7488, &qword_267A42F50);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5328);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267706B34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9538, &qword_267A630F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9540, &qword_267A63378);
  sub_267A41C04();
  type metadata accessor for Common.CollaborationMode(0);
  return sub_267A41914();
}

uint64_t static Common.CollaborationMode.definition.getter()
{
  if (qword_2801D4008 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7490, &qword_267A42F58);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5340);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267706ED0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9528, &qword_267A62E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9530, &qword_267A630E8);
  sub_267A41C04();
  type metadata accessor for Common.Color(0);
  return sub_267A41914();
}

uint64_t static Common.Color.definition.getter()
{
  if (qword_2801D4010 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7498, &qword_267A42F60);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5358);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770725C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9518, &qword_267A62BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9520, &qword_267A62E58);
  sub_267A41C04();
  type metadata accessor for Common.CommunicationTrigger(0);
  return sub_267A41914();
}

uint64_t static Common.CommunicationTrigger.definition.getter()
{
  if (qword_2801D4018 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74A0, &qword_267A42F68);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5370);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2677075FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9508, &qword_267A628F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E10;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x6C6562616CLL;
  *(inited + 48) = 0xE500000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x65756C6176;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x65756C6176;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A97810;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A97810;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97830;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97830;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97850;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97850;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97870;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9510, &qword_267A62BC8);
  sub_267A41C04();
  type metadata accessor for Common.ContactAddress(0);
  return sub_267A41924();
}

uint64_t static Common.ContactAddress.definition.getter()
{
  if (qword_2801D4020 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74A8, &qword_267A42F70);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5388);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2677079CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94F8, &qword_267A62660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9500, &qword_267A628E8);
  sub_267A41C04();
  type metadata accessor for Common.Currency(0);
  return sub_267A41914();
}

uint64_t static Common.Currency.definition.getter()
{
  if (qword_2801D4028 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74B0, &qword_267A42F78);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D53A0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267707D5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94E8, &qword_267A622E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DD0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x746E756F6D61;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x746E756F6D61;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x7475626972747461;
  *(inited + 144) = 0xEA00000000007365;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7475626972747461;
  *(inited + 168) = 0xEA00000000007365;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x79636E6572727563;
  *(inited + 192) = 0xE800000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x79636E6572727563;
  *(inited + 216) = 0xE800000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97810;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97810;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97830;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97830;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97850;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97850;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97870;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94F0, &qword_267A62658);
  sub_267A41C04();
  type metadata accessor for Common.CurrencyAmount(0);
  return sub_267A41914();
}

uint64_t static Common.CurrencyAmount.definition.getter()
{
  if (qword_2801D4030 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74B8, &qword_267A42F80);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D53B8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2677081B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94D8, &qword_267A61CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E30;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7261646E656C6163;
  *(inited + 96) = 0xEB00000000617245;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7261646E656C6163;
  *(inited + 120) = 0xEB00000000617245;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "calendarSystem");
  *(inited + 151) = -18;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "calendarSystem");
  *(inited + 175) = -18;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x6570795465746164;
  *(inited + 192) = 0xE800000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x6570795465746164;
  *(inited + 216) = 0xE800000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x6E6F4D664F796164;
  *(inited + 240) = 0xEA00000000006874;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x6E6F4D664F796164;
  *(inited + 264) = 0xEA00000000006874;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x656557664F796164;
  *(inited + 288) = 0xE90000000000006BLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x656557664F796164;
  *(inited + 312) = 0xE90000000000006BLL;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x59664F68746E6F6DLL;
  *(inited + 336) = 0xEB00000000726165;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x59664F68746E6F6DLL;
  *(inited + 360) = 0xEB00000000726165;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 1701667182;
  *(inited + 384) = 0xE400000000000000;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 1701667182;
  *(inited + 408) = 0xE400000000000000;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x6E6972727563636FLL;
  *(inited + 432) = 0xEB000000006E4967;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x6E6972727563636FLL;
  *(inited + 456) = 0xEB000000006E4967;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000017;
  *(inited + 480) = 0x8000000267A9A090;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000017;
  *(inited + 504) = 0x8000000267A9A090;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0x6559664F6B656577;
  *(inited + 528) = 0xEA00000000007261;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0x6559664F6B656577;
  *(inited + 552) = 0xEA00000000007261;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 1918985593;
  *(inited + 576) = 0xE400000000000000;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 1918985593;
  *(inited + 600) = 0xE400000000000000;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000010;
  *(inited + 624) = 0x8000000267A97810;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000010;
  *(inited + 648) = 0x8000000267A97810;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0x507473694C6F7375;
  *(inited + 672) = 0xEF6E6F697469736FLL;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0x507473694C6F7375;
  *(inited + 696) = 0xEF6E6F697469736FLL;
  *(inited + 704) = swift_getKeyPath();
  strcpy((inited + 712), "usoQuantifier");
  *(inited + 726) = -4864;
  *(inited + 728) = swift_getKeyPath();
  strcpy((inited + 736), "usoQuantifier");
  *(inited + 750) = -4864;
  *(inited + 752) = swift_getKeyPath();
  *(inited + 760) = 0xD000000000000010;
  *(inited + 768) = 0x8000000267A97830;
  *(inited + 776) = swift_getKeyPath();
  *(inited + 784) = 0xD000000000000010;
  *(inited + 792) = 0x8000000267A97830;
  *(inited + 800) = swift_getKeyPath();
  *(inited + 808) = 0xD000000000000012;
  *(inited + 816) = 0x8000000267A97850;
  *(inited + 824) = swift_getKeyPath();
  *(inited + 832) = 0xD000000000000012;
  *(inited + 840) = 0x8000000267A97850;
  *(inited + 848) = swift_getKeyPath();
  *(inited + 856) = 0x41656D61536F7375;
  *(inited + 864) = 0xE900000000000073;
  *(inited + 872) = swift_getKeyPath();
  *(inited + 880) = 0x41656D61536F7375;
  *(inited + 888) = 0xE900000000000073;
  *(inited + 896) = swift_getKeyPath();
  *(inited + 904) = 0xD000000000000012;
  *(inited + 912) = 0x8000000267A97870;
  *(inited + 920) = swift_getKeyPath();
  *(inited + 928) = 0xD000000000000012;
  *(inited + 936) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94E0, &qword_267A622D8);
  sub_267A41C04();
  type metadata accessor for Common.Date(0);
  return sub_267A41924();
}

uint64_t static Common.Date.definition.getter()
{
  if (qword_2801D4038 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74C0, &qword_267A42F88);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D53D0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770884C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94C8, &qword_267A61820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DE0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1702125924;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6F69746365726964;
  *(inited + 144) = 0xE90000000000006ELL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x6F69746365726964;
  *(inited + 168) = 0xE90000000000006ELL;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 1701667182;
  *(inited + 192) = 0xE400000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 1701667182;
  *(inited + 216) = 0xE400000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x6E6972727563636FLL;
  *(inited + 240) = 0xEB000000006E4967;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x6E6972727563636FLL;
  *(inited + 264) = 0xEB000000006E4967;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x655274657366666FLL;
  *(inited + 288) = 0xEF65636E65726566;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x655274657366666FLL;
  *(inited + 312) = 0xEF65636E65726566;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x615674657366666FLL;
  *(inited + 336) = 0xEB0000000065756CLL;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x615674657366666FLL;
  *(inited + 360) = 0xEB0000000065756CLL;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 1701669236;
  *(inited + 384) = 0xE400000000000000;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 1701669236;
  *(inited + 408) = 0xE400000000000000;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000010;
  *(inited + 432) = 0x8000000267A97810;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000010;
  *(inited + 456) = 0x8000000267A97810;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x507473694C6F7375;
  *(inited + 480) = 0xEF6E6F697469736FLL;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x507473694C6F7375;
  *(inited + 504) = 0xEF6E6F697469736FLL;
  *(inited + 512) = swift_getKeyPath();
  strcpy((inited + 520), "usoQuantifier");
  *(inited + 534) = -4864;
  *(inited + 536) = swift_getKeyPath();
  strcpy((inited + 544), "usoQuantifier");
  *(inited + 558) = -4864;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000010;
  *(inited + 576) = 0x8000000267A97830;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000010;
  *(inited + 600) = 0x8000000267A97830;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000012;
  *(inited + 624) = 0x8000000267A97850;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000012;
  *(inited + 648) = 0x8000000267A97850;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0x41656D61536F7375;
  *(inited + 672) = 0xE900000000000073;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0x41656D61536F7375;
  *(inited + 696) = 0xE900000000000073;
  *(inited + 704) = swift_getKeyPath();
  *(inited + 712) = 0xD000000000000012;
  *(inited + 720) = 0x8000000267A97870;
  *(inited + 728) = swift_getKeyPath();
  *(inited + 736) = 0xD000000000000012;
  *(inited + 744) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94D0, &qword_267A61CD8);
  sub_267A41C04();
  type metadata accessor for Common.DateTime(0);
  return sub_267A41924();
}

uint64_t static Common.DateTime.definition.getter()
{
  if (qword_2801D4040 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74C8, &qword_267A42F90);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D53E8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267708DC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94B8, &qword_267A613B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E40;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 29793;
  *(inited + 96) = 0xE200000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 29793;
  *(inited + 120) = 0xE200000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6E6F697461727564;
  *(inited + 144) = 0xE800000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x6E6F697461727564;
  *(inited + 168) = 0xE800000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 6581861;
  *(inited + 192) = 0xE300000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 6581861;
  *(inited + 216) = 0xE300000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 1701667182;
  *(inited + 240) = 0xE400000000000000;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 1701667182;
  *(inited + 264) = 0xE400000000000000;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x656966696C617571;
  *(inited + 288) = 0xE900000000000072;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x656966696C617571;
  *(inited + 312) = 0xE900000000000072;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x7472617473;
  *(inited + 336) = 0xE500000000000000;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x7472617473;
  *(inited + 360) = 0xE500000000000000;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97810;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97810;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x507473694C6F7375;
  *(inited + 432) = 0xEF6E6F697469736FLL;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x507473694C6F7375;
  *(inited + 456) = 0xEF6E6F697469736FLL;
  *(inited + 464) = swift_getKeyPath();
  strcpy((inited + 472), "usoQuantifier");
  *(inited + 486) = -4864;
  *(inited + 488) = swift_getKeyPath();
  strcpy((inited + 496), "usoQuantifier");
  *(inited + 510) = -4864;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000010;
  *(inited + 528) = 0x8000000267A97830;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000010;
  *(inited + 552) = 0x8000000267A97830;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000012;
  *(inited + 576) = 0x8000000267A97850;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000012;
  *(inited + 600) = 0x8000000267A97850;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0x41656D61536F7375;
  *(inited + 624) = 0xE900000000000073;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0x41656D61536F7375;
  *(inited + 648) = 0xE900000000000073;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0xD000000000000012;
  *(inited + 672) = 0x8000000267A97870;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0xD000000000000012;
  *(inited + 696) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94C0, &qword_267A61818);
  sub_267A41C04();
  type metadata accessor for Common.DateTimeRange(0);
  return sub_267A41924();
}

uint64_t static Common.DateTimeRange.definition.getter()
{
  if (qword_2801D4048 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74D0, &qword_267A42F98);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5400);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2677092CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94A8, &qword_267A61120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94B0, &qword_267A613A8);
  sub_267A41C04();
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  return sub_267A41914();
}

uint64_t static Common.DateTimeRangeQualifier.definition.getter()
{
  if (qword_2801D4050 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74D8, &qword_267A42FA0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5418);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770966C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9498, &qword_267A60E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E10;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x6E6F6967696C6572;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x6E6F6967696C6572;
  *(inited + 120) = 0xE800000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A97810;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A97810;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97830;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97830;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97850;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97850;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97870;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D94A0, &qword_267A61118);
  sub_267A41C04();
  type metadata accessor for Common.DateType(0);
  return sub_267A41914();
}

uint64_t static Common.DateType.definition.getter()
{
  if (qword_2801D4058 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74E0, &qword_267A42FA8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5430);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267709A48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9488, &qword_267A60BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9490, &qword_267A60E38);
  sub_267A41C04();
  type metadata accessor for Common.DayOfWeek(0);
  return sub_267A41914();
}

uint64_t static Common.DayOfWeek.definition.getter()
{
  if (qword_2801D4060 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74E8, &qword_267A42FB0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5448);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267709DE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9478, &qword_267A60880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x6163696E6F6E6163;
  *(inited + 96) = 0xEF676E697274536CLL;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x6163696E6F6E6163;
  *(inited + 120) = 0xEF676E697274536CLL;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1701667182;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1701667182;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9480, &qword_267A60BA8);
  sub_267A41C04();
  type metadata accessor for Common.Decimal(0);
  return sub_267A41914();
}

uint64_t static Common.Decimal.definition.getter()
{
  if (qword_2801D4068 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74F0, &qword_267A42FB8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5460);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770A204()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9468, &qword_267A60410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E40;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x8000000267A99C70;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x8000000267A99C70;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7475626972747461;
  *(inited + 96) = 0xEA00000000007365;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7475626972747461;
  *(inited + 120) = 0xEA00000000007365;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "deviceCategory");
  *(inited + 151) = -18;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "deviceCategory");
  *(inited + 175) = -18;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x6C65646F6DLL;
  *(inited + 192) = 0xE500000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x6C65646F6DLL;
  *(inited + 216) = 0xE500000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 1701667182;
  *(inited + 240) = 0xE400000000000000;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 1701667182;
  *(inited + 264) = 0xE400000000000000;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000011;
  *(inited + 288) = 0x8000000267A9A4D0;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000011;
  *(inited + 312) = 0x8000000267A9A4D0;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x69747265706F7270;
  *(inited + 336) = 0xEA00000000007365;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x69747265706F7270;
  *(inited + 360) = 0xEA00000000007365;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97810;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97810;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x507473694C6F7375;
  *(inited + 432) = 0xEF6E6F697469736FLL;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x507473694C6F7375;
  *(inited + 456) = 0xEF6E6F697469736FLL;
  *(inited + 464) = swift_getKeyPath();
  strcpy((inited + 472), "usoQuantifier");
  *(inited + 486) = -4864;
  *(inited + 488) = swift_getKeyPath();
  strcpy((inited + 496), "usoQuantifier");
  *(inited + 510) = -4864;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000010;
  *(inited + 528) = 0x8000000267A97830;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000010;
  *(inited + 552) = 0x8000000267A97830;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000012;
  *(inited + 576) = 0x8000000267A97850;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000012;
  *(inited + 600) = 0x8000000267A97850;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0x41656D61536F7375;
  *(inited + 624) = 0xE900000000000073;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0x41656D61536F7375;
  *(inited + 648) = 0xE900000000000073;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0xD000000000000012;
  *(inited + 672) = 0x8000000267A97870;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0xD000000000000012;
  *(inited + 696) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9470, &qword_267A60878);
  sub_267A41C04();
  type metadata accessor for Common.Device(0);
  return sub_267A41924();
}

uint64_t static Common.Device.definition.getter()
{
  if (qword_2801D4070 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D74F8, &qword_267A42FC0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5478);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770A730()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9458, &qword_267A60180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9460, &qword_267A60408);
  sub_267A41C04();
  type metadata accessor for Common.DeviceCategory(0);
  return sub_267A41914();
}

uint64_t static Common.DeviceCategory.definition.getter()
{
  if (qword_2801D4078 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7500, &qword_267A42FC8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5490);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770AAC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9448, &qword_267A5FE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x726F6C6F63;
  *(inited + 48) = 0xE500000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x726F6C6F63;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x6D6572757361656DLL;
  *(inited + 96) = 0xEB00000000746E65;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x6D6572757361656DLL;
  *(inited + 120) = 0xEB00000000746E65;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1702521203;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1702521203;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9450, &qword_267A60178);
  sub_267A41C04();
  type metadata accessor for Common.DeviceProperty(0);
  return sub_267A41914();
}

uint64_t static Common.DeviceProperty.definition.getter()
{
  if (qword_2801D4080 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7508, &qword_267A42FD0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D54A8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770AECC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9438, &qword_267A5FB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x6E656E6F706D6F63;
  *(inited + 96) = 0xEA00000000007374;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x6E656E6F706D6F63;
  *(inited + 120) = 0xEA00000000007374;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1852270963;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1852270963;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9440, &qword_267A5FE48);
  sub_267A41C04();
  type metadata accessor for Common.Duration(0);
  return sub_267A41914();
}

uint64_t static Common.Duration.definition.getter()
{
  if (qword_2801D4088 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7510, &qword_267A42FD8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D54C0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770B2E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9428, &qword_267A5F840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E10;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1953066613;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1953066613;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x65756C6176;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x65756C6176;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A97810;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A97810;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97830;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97830;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97850;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97850;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97870;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9430, &qword_267A5FB18);
  sub_267A41C04();
  type metadata accessor for Common.DurationComponent(0);
  return sub_267A41924();
}

uint64_t static Common.DurationComponent.definition.getter()
{
  if (qword_2801D4090 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7518, &qword_267A42FE0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D54D8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770B6AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9418, &qword_267A5F560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E10;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x6C6562616CLL;
  *(inited + 48) = 0xE500000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x65756C6176;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x65756C6176;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A97810;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A97810;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97830;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97830;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97850;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97850;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97870;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9420, &qword_267A5F838);
  sub_267A41C04();
  type metadata accessor for Common.EmailAddress(0);
  return sub_267A41914();
}

uint64_t static Common.EmailAddress.definition.getter()
{
  if (qword_2801D4098 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7520, &qword_267A42FE8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D54F0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770BA70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9408, &qword_267A5F2D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9410, &qword_267A5F558);
  sub_267A41C04();
  type metadata accessor for Common.EmailProvider(0);
  return sub_267A41914();
}

uint64_t static Common.EmailProvider.definition.getter()
{
  if (qword_2801D40A0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7528, &qword_267A42FF0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5508);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770BDFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93F8, &qword_267A5EC80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E50;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x8000000267A9A370;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000014;
  *(inited + 120) = 0x8000000267A9A370;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000015;
  *(inited + 144) = 0x8000000267A9A390;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000015;
  *(inited + 168) = 0x8000000267A9A390;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000014;
  *(inited + 192) = 0x8000000267A9A3B0;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000014;
  *(inited + 216) = 0x8000000267A9A3B0;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x656D695465746164;
  *(inited + 240) = 0xEF72656767697254;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x656D695465746164;
  *(inited + 264) = 0xEF72656767697254;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000015;
  *(inited + 288) = 0x8000000267A9A3D0;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000015;
  *(inited + 312) = 0x8000000267A9A3D0;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "journeyTrigger");
  *(inited + 343) = -18;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "journeyTrigger");
  *(inited + 367) = -18;
  *(inited + 368) = swift_getKeyPath();
  strcpy((inited + 376), "personTrigger");
  *(inited + 390) = -4864;
  *(inited + 392) = swift_getKeyPath();
  strcpy((inited + 400), "personTrigger");
  *(inited + 414) = -4864;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000016;
  *(inited + 432) = 0x8000000267A9A3F0;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000016;
  *(inited + 456) = 0x8000000267A9A3F0;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000018;
  *(inited + 480) = 0x8000000267A9A410;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000018;
  *(inited + 504) = 0x8000000267A9A410;
  *(inited + 512) = swift_getKeyPath();
  strcpy((inited + 520), "settingTrigger");
  *(inited + 535) = -18;
  *(inited + 536) = swift_getKeyPath();
  strcpy((inited + 544), "settingTrigger");
  *(inited + 559) = -18;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000018;
  *(inited + 576) = 0x8000000267A9A430;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000018;
  *(inited + 600) = 0x8000000267A9A430;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000011;
  *(inited + 624) = 0x8000000267A9A450;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000011;
  *(inited + 648) = 0x8000000267A9A450;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0xD000000000000010;
  *(inited + 672) = 0x8000000267A97810;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0xD000000000000010;
  *(inited + 696) = 0x8000000267A97810;
  *(inited + 704) = swift_getKeyPath();
  *(inited + 712) = 0x507473694C6F7375;
  *(inited + 720) = 0xEF6E6F697469736FLL;
  *(inited + 728) = swift_getKeyPath();
  *(inited + 736) = 0x507473694C6F7375;
  *(inited + 744) = 0xEF6E6F697469736FLL;
  *(inited + 752) = swift_getKeyPath();
  strcpy((inited + 760), "usoQuantifier");
  *(inited + 774) = -4864;
  *(inited + 776) = swift_getKeyPath();
  strcpy((inited + 784), "usoQuantifier");
  *(inited + 798) = -4864;
  *(inited + 800) = swift_getKeyPath();
  *(inited + 808) = 0xD000000000000010;
  *(inited + 816) = 0x8000000267A97830;
  *(inited + 824) = swift_getKeyPath();
  *(inited + 832) = 0xD000000000000010;
  *(inited + 840) = 0x8000000267A97830;
  *(inited + 848) = swift_getKeyPath();
  *(inited + 856) = 0xD000000000000012;
  *(inited + 864) = 0x8000000267A97850;
  *(inited + 872) = swift_getKeyPath();
  *(inited + 880) = 0xD000000000000012;
  *(inited + 888) = 0x8000000267A97850;
  *(inited + 896) = swift_getKeyPath();
  *(inited + 904) = 0x41656D61536F7375;
  *(inited + 912) = 0xE900000000000073;
  *(inited + 920) = swift_getKeyPath();
  *(inited + 928) = 0x41656D61536F7375;
  *(inited + 936) = 0xE900000000000073;
  *(inited + 944) = swift_getKeyPath();
  *(inited + 952) = 0xD000000000000012;
  *(inited + 960) = 0x8000000267A97870;
  *(inited + 968) = swift_getKeyPath();
  *(inited + 976) = 0xD000000000000012;
  *(inited + 984) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9400, &qword_267A5F2C8);
  sub_267A41C04();
  type metadata accessor for Common.EventTrigger(0);
  return sub_267A41914();
}

uint64_t static Common.EventTrigger.definition.getter()
{
  if (qword_2801D40A8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7530, &qword_267A42FF8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5520);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770C4CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93E8, &qword_267A5E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E40;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x6570795461657261;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x6570795461657261;
  *(inited + 120) = 0xE800000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A99C70;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A99C70;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x656E6961746E6F63;
  *(inited + 192) = 0xEB000000006E4964;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x656E6961746E6F63;
  *(inited + 216) = 0xEB000000006E4964;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x696E6961746E6F63;
  *(inited + 240) = 0xEA0000000000676ELL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x696E6961746E6F63;
  *(inited + 264) = 0xEA0000000000676ELL;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x736E6961746E6F63;
  *(inited + 288) = 0xE800000000000000;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x736E6961746E6F63;
  *(inited + 312) = 0xE800000000000000;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 1701667182;
  *(inited + 336) = 0xE400000000000000;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 1701667182;
  *(inited + 360) = 0xE400000000000000;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97810;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97810;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x507473694C6F7375;
  *(inited + 432) = 0xEF6E6F697469736FLL;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x507473694C6F7375;
  *(inited + 456) = 0xEF6E6F697469736FLL;
  *(inited + 464) = swift_getKeyPath();
  strcpy((inited + 472), "usoQuantifier");
  *(inited + 486) = -4864;
  *(inited + 488) = swift_getKeyPath();
  strcpy((inited + 496), "usoQuantifier");
  *(inited + 510) = -4864;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000010;
  *(inited + 528) = 0x8000000267A97830;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000010;
  *(inited + 552) = 0x8000000267A97830;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000012;
  *(inited + 576) = 0x8000000267A97850;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000012;
  *(inited + 600) = 0x8000000267A97850;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0x41656D61536F7375;
  *(inited + 624) = 0xE900000000000073;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0x41656D61536F7375;
  *(inited + 648) = 0xE900000000000073;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0xD000000000000012;
  *(inited + 672) = 0x8000000267A97870;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0xD000000000000012;
  *(inited + 696) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93F0, &qword_267A5EC78);
  sub_267A41C04();
  type metadata accessor for Common.GeographicArea(0);
  return sub_267A41924();
}

uint64_t static Common.GeographicArea.definition.getter()
{
  if (qword_2801D40B0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7538, &qword_267A43000);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5538);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770C9F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93D8, &qword_267A5E4E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x656E6961746E6F63;
  *(inited + 96) = 0xEB000000006E4964;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x656E6961746E6F63;
  *(inited + 120) = 0xEB000000006E4964;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1701667182;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1701667182;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93E0, &qword_267A5E808);
  sub_267A41C04();
  type metadata accessor for Common.Geolocation(0);
  return sub_267A41914();
}

uint64_t static Common.Geolocation.definition.getter()
{
  if (qword_2801D40B8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7540, &qword_267A43008);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5550);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770CE10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93C8, &qword_267A5E160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DD0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x737265626D656DLL;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x737265626D656DLL;
  *(inited + 120) = 0xE700000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1701667182;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1701667182;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000018;
  *(inited + 192) = 0x8000000267A99CB0;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000018;
  *(inited + 216) = 0x8000000267A99CB0;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97810;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97810;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97830;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97830;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97850;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97850;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97870;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93D0, &qword_267A5E4D8);
  sub_267A41C04();
  type metadata accessor for Common.Group(0);
  return sub_267A41924();
}

uint64_t static Common.Group.definition.getter()
{
  if (qword_2801D40C0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7548, &qword_267A43010);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5568);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770D264()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93B8, &qword_267A5DE80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E10;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "integerValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "integerValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A97810;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A97810;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97830;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97830;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97850;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97850;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97870;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93C0, &qword_267A5E158);
  sub_267A41C04();
  type metadata accessor for Common.Integer(0);
  return sub_267A41914();
}

uint64_t static Common.Integer.definition.getter()
{
  if (qword_2801D40C8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7550, &qword_267A43018);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5580);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770D638()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93A8, &qword_267A5DB50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "dateTimeRange");
  *(inited + 54) = -4864;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "dateTimeRange");
  *(inited + 78) = -4864;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x8000000267A9A2D0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000012;
  *(inited + 120) = 0x8000000267A9A2D0;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000014;
  *(inited + 144) = 0x8000000267A9A2F0;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x8000000267A9A2F0;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93B0, &qword_267A5DE78);
  sub_267A41C04();
  type metadata accessor for Common.Journey(0);
  return sub_267A41914();
}

uint64_t static Common.Journey.definition.getter()
{
  if (qword_2801D40D0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7558, &qword_267A43020);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5598);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770DA58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9398, &qword_267A5D870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E10;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x8000000267A9A2B0;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000018;
  *(inited + 72) = 0x8000000267A9A2B0;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A97810;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A97810;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97830;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97830;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97850;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97850;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97870;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D93A0, &qword_267A5DB48);
  sub_267A41C04();
  type metadata accessor for Common.Language(0);
  return sub_267A41914();
}

uint64_t static Common.Language.definition.getter()
{
  if (qword_2801D40D8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7560, &qword_267A43028);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D55B0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770DE24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9388, &qword_267A5D4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DD0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x694474657366666FLL;
  *(inited + 96) = 0xEF6E6F6974636572;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x694474657366666FLL;
  *(inited + 120) = 0xEF6E6F6974636572;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000011;
  *(inited + 144) = 0x8000000267A9A270;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x8000000267A9A270;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000015;
  *(inited + 192) = 0x8000000267A9A290;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000015;
  *(inited + 216) = 0x8000000267A9A290;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97810;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97810;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97830;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97830;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97850;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97850;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97870;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9390, &qword_267A5D868);
  sub_267A41C04();
  type metadata accessor for Common.ListPosition(0);
  return sub_267A41914();
}

uint64_t static Common.ListPosition.definition.getter()
{
  if (qword_2801D40E0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7568, &qword_267A43030);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D55C8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770E28C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9378, &qword_267A5D0D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E00;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x73736572646461;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x73736572646461;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7475626972747461;
  *(inited + 96) = 0xEA00000000007365;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7475626972747461;
  *(inited + 120) = 0xEA00000000007365;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x69726F6765746163;
  *(inited + 144) = 0xEA00000000007365;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x69726F6765746163;
  *(inited + 168) = 0xEA00000000007365;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x656E6961746E6F63;
  *(inited + 192) = 0xEB000000006E4964;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x656E6961746E6F63;
  *(inited + 216) = 0xEB000000006E4964;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 1701667182;
  *(inited + 240) = 0xE400000000000000;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 1701667182;
  *(inited + 264) = 0xE400000000000000;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000018;
  *(inited + 288) = 0x8000000267A99CB0;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000018;
  *(inited + 312) = 0x8000000267A99CB0;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97810;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97810;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x507473694C6F7375;
  *(inited + 384) = 0xEF6E6F697469736FLL;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x507473694C6F7375;
  *(inited + 408) = 0xEF6E6F697469736FLL;
  *(inited + 416) = swift_getKeyPath();
  strcpy((inited + 424), "usoQuantifier");
  *(inited + 438) = -4864;
  *(inited + 440) = swift_getKeyPath();
  strcpy((inited + 448), "usoQuantifier");
  *(inited + 462) = -4864;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000010;
  *(inited + 480) = 0x8000000267A97830;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000010;
  *(inited + 504) = 0x8000000267A97830;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97850;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97850;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0x41656D61536F7375;
  *(inited + 576) = 0xE900000000000073;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0x41656D61536F7375;
  *(inited + 600) = 0xE900000000000073;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000012;
  *(inited + 624) = 0x8000000267A97870;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000012;
  *(inited + 648) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9380, &qword_267A5D4E8);
  sub_267A41C04();
  type metadata accessor for Common.LocalBusiness(0);
  return sub_267A41914();
}

uint64_t static Common.LocalBusiness.definition.getter()
{
  if (qword_2801D40E8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7570, &qword_267A43038);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D55E0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770E764()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9368, &qword_267A5CDF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E10;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x6E656E6F706D6F63;
  *(inited + 48) = 0xEA00000000007374;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x6E656E6F706D6F63;
  *(inited + 72) = 0xEA00000000007374;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1852270963;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1852270963;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A97810;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A97810;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97830;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97830;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97850;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97850;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97870;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9370, &qword_267A5D0C8);
  sub_267A41C04();
  type metadata accessor for Common.Measurement(0);
  return sub_267A41924();
}

uint64_t static Common.Measurement.definition.getter()
{
  if (qword_2801D40F0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7578, &qword_267A43040);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D55F8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770EB3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9358, &qword_267A5CB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E10;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1953066613;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1953066613;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x65756C6176;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x65756C6176;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A97810;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A97810;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97830;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97830;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97850;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97850;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97870;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9360, &qword_267A5CDE8);
  sub_267A41C04();
  type metadata accessor for Common.MeasurementComponent(0);
  return sub_267A41924();
}

uint64_t static Common.MeasurementComponent.definition.getter()
{
  if (qword_2801D40F8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7580, &qword_267A43048);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5610);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770EF0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9348, &qword_267A5C790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DD0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "secondaryUnit");
  *(inited + 150) = -4864;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "secondaryUnit");
  *(inited + 174) = -4864;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 1701869940;
  *(inited + 192) = 0xE400000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 1701869940;
  *(inited + 216) = 0xE400000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97810;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97810;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97830;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97830;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97850;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97850;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97870;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9350, &qword_267A5CB08);
  sub_267A41C04();
  type metadata accessor for Common.MeasurementUnit(0);
  return sub_267A41924();
}

uint64_t static Common.MeasurementUnit.definition.getter()
{
  if (qword_2801D4100 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7588, &qword_267A43050);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5628);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770F364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9338, &qword_267A5C500);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9340, &qword_267A5C788);
  sub_267A41C04();
  type metadata accessor for Common.MeasurementUnitType(0);
  return sub_267A41914();
}

uint64_t static Common.MeasurementUnitType.definition.getter()
{
  if (qword_2801D4108 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7590, &qword_267A43058);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5640);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770F704()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9328, &qword_267A5C270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9330, &qword_267A5C4F8);
  sub_267A41C04();
  type metadata accessor for Common.Meridiem(0);
  return sub_267A41914();
}

uint64_t static Common.Meridiem.definition.getter()
{
  if (qword_2801D4110 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D7598, &qword_267A43060);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5658);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_26770FAA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9318, &qword_267A5BB30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267A42E60;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x8000000267A9A1B0;
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = 0xD000000000000012;
  *(v0 + 72) = 0x8000000267A9A1B0;
  *(v0 + 80) = swift_getKeyPath();
  *(v0 + 88) = 0x656D686361747461;
  *(v0 + 96) = 0xEB0000000073746ELL;
  *(v0 + 104) = swift_getKeyPath();
  *(v0 + 112) = 0x656D686361747461;
  *(v0 + 120) = 0xEB0000000073746ELL;
  *(v0 + 128) = swift_getKeyPath();
  *(v0 + 136) = 0x7475626972747461;
  *(v0 + 144) = 0xEA00000000007365;
  *(v0 + 152) = swift_getKeyPath();
  *(v0 + 160) = 0x7475626972747461;
  *(v0 + 168) = 0xEA00000000007365;
  *(v0 + 176) = swift_getKeyPath();
  strcpy((v0 + 184), "bccRecipients");
  *(v0 + 198) = -4864;
  *(v0 + 200) = swift_getKeyPath();
  strcpy((v0 + 208), "bccRecipients");
  *(v0 + 222) = -4864;
  *(v0 + 224) = swift_getKeyPath();
  strcpy((v0 + 232), "ccRecipients");
  *(v0 + 245) = 0;
  *(v0 + 246) = -5120;
  *(v0 + 248) = swift_getKeyPath();
  strcpy((v0 + 256), "ccRecipients");
  *(v0 + 269) = 0;
  *(v0 + 270) = -5120;
  *(v0 + 272) = swift_getKeyPath();
  *(v0 + 280) = 0x7265646C6F66;
  *(v0 + 288) = 0xE600000000000000;
  *(v0 + 296) = swift_getKeyPath();
  *(v0 + 304) = 0x7265646C6F66;
  *(v0 + 312) = 0xE600000000000000;
  *(v0 + 320) = swift_getKeyPath();
  *(v0 + 328) = 0x736C6562616CLL;
  *(v0 + 336) = 0xE600000000000000;
  *(v0 + 344) = swift_getKeyPath();
  *(v0 + 352) = 0x736C6562616CLL;
  *(v0 + 360) = 0xE600000000000000;
  *(v0 + 368) = swift_getKeyPath();
  *(v0 + 376) = 0x4C6567617373656DLL;
  *(v0 + 384) = 0xEF65676175676E61;
  *(v0 + 392) = swift_getKeyPath();
  *(v0 + 400) = 0x4C6567617373656DLL;
  *(v0 + 408) = 0xEF65676175676E61;
  *(v0 + 416) = swift_getKeyPath();
  strcpy((v0 + 424), "messageState");
  *(v0 + 437) = 0;
  *(v0 + 438) = -5120;
  *(v0 + 440) = swift_getKeyPath();
  strcpy((v0 + 448), "messageState");
  *(v0 + 461) = 0;
  *(v0 + 462) = -5120;
  *(v0 + 464) = swift_getKeyPath();
  *(v0 + 472) = 1701080941;
  *(v0 + 480) = 0xE400000000000000;
  *(v0 + 488) = swift_getKeyPath();
  *(v0 + 496) = 1701080941;
  *(v0 + 504) = 0xE400000000000000;
  *(v0 + 512) = swift_getKeyPath();
  strcpy((v0 + 520), "participants");
  *(v0 + 533) = 0;
  *(v0 + 534) = -5120;
  *(v0 + 536) = swift_getKeyPath();
  strcpy((v0 + 544), "participants");
  *(v0 + 557) = 0;
  *(v0 + 558) = -5120;
  *(v0 + 560) = swift_getKeyPath();
  *(v0 + 568) = 0x6E65697069636572;
  *(v0 + 576) = 0xEA00000000007374;
  *(v0 + 584) = swift_getKeyPath();
  *(v0 + 592) = 0x6E65697069636572;
  *(v0 + 600) = 0xEA00000000007374;
  *(v0 + 608) = swift_getKeyPath();
  *(v0 + 616) = 0x7265646E6573;
  *(v0 + 624) = 0xE600000000000000;
  *(v0 + 632) = swift_getKeyPath();
  *(v0 + 640) = 0x7265646E6573;
  *(v0 + 648) = 0xE600000000000000;
  *(v0 + 656) = swift_getKeyPath();
  *(v0 + 664) = 0x73676E6974746573;
  *(v0 + 672) = 0xE800000000000000;
  *(v0 + 680) = swift_getKeyPath();
  *(v0 + 688) = 0x73676E6974746573;
  *(v0 + 696) = 0xE800000000000000;
  *(v0 + 704) = swift_getKeyPath();
  strcpy((v0 + 712), "stringContent");
  *(v0 + 726) = -4864;
  *(v0 + 728) = swift_getKeyPath();
  strcpy((v0 + 736), "stringContent");
  *(v0 + 750) = -4864;
  *(v0 + 752) = swift_getKeyPath();
  *(v0 + 760) = 0x7463656A627573;
  *(v0 + 768) = 0xE700000000000000;
  *(v0 + 776) = swift_getKeyPath();
  *(v0 + 784) = 0x7463656A627573;
  *(v0 + 792) = 0xE700000000000000;
  *(v0 + 800) = swift_getKeyPath();
  *(v0 + 808) = 0xD000000000000010;
  *(v0 + 816) = 0x8000000267A97810;
  *(v0 + 824) = swift_getKeyPath();
  *(v0 + 832) = 0xD000000000000010;
  *(v0 + 840) = 0x8000000267A97810;
  *(v0 + 848) = swift_getKeyPath();
  *(v0 + 856) = 0x507473694C6F7375;
  *(v0 + 864) = 0xEF6E6F697469736FLL;
  *(v0 + 872) = swift_getKeyPath();
  *(v0 + 880) = 0x507473694C6F7375;
  *(v0 + 888) = 0xEF6E6F697469736FLL;
  *(v0 + 896) = swift_getKeyPath();
  strcpy((v0 + 904), "usoQuantifier");
  *(v0 + 918) = -4864;
  *(v0 + 920) = swift_getKeyPath();
  strcpy((v0 + 928), "usoQuantifier");
  *(v0 + 942) = -4864;
  *(v0 + 944) = swift_getKeyPath();
  *(v0 + 952) = 0xD000000000000010;
  *(v0 + 960) = 0x8000000267A97830;
  *(v0 + 968) = swift_getKeyPath();
  *(v0 + 976) = 0xD000000000000010;
  *(v0 + 984) = 0x8000000267A97830;
  *(v0 + 992) = swift_getKeyPath();
  *(v0 + 1000) = 0xD000000000000012;
  *(v0 + 1008) = 0x8000000267A97850;
  *(v0 + 1016) = swift_getKeyPath();
  *(v0 + 1024) = 0xD000000000000012;
  *(v0 + 1032) = 0x8000000267A97850;
  *(v0 + 1040) = swift_getKeyPath();
  *(v0 + 1048) = 0x41656D61536F7375;
  *(v0 + 1056) = 0xE900000000000073;
  *(v0 + 1064) = swift_getKeyPath();
  *(v0 + 1072) = 0x41656D61536F7375;
  *(v0 + 1080) = 0xE900000000000073;
  *(v0 + 1088) = swift_getKeyPath();
  *(v0 + 1096) = 0xD000000000000012;
  *(v0 + 1104) = 0x8000000267A97870;
  *(v0 + 1112) = swift_getKeyPath();
  *(v0 + 1120) = 0xD000000000000012;
  *(v0 + 1128) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9320, &qword_267A5C268);
  sub_267A41C04();
  type metadata accessor for Common.Message(0);

  return sub_267A41914();
}

uint64_t static Common.Message.definition.getter()
{
  if (qword_2801D4118 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D75A0, &qword_267A43068);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5670);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267710258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9308, &qword_267A5B800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x8000000267A99C70;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x8000000267A99C70;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x72656469766F7270;
  *(inited + 144) = 0xE800000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x72656469766F7270;
  *(inited + 168) = 0xE800000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9310, &qword_267A5BB28);
  sub_267A41C04();
  type metadata accessor for Common.MessageFolder(0);
  return sub_267A41914();
}

uint64_t static Common.MessageFolder.definition.getter()
{
  if (qword_2801D4120 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D75A8, &qword_267A43070);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5688);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267710658()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92F8, &qword_267A5B570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9300, &qword_267A5B7F8);
  sub_267A41C04();
  type metadata accessor for Common.MessageLabel(0);
  return sub_267A41914();
}

uint64_t static Common.MessageLabel.definition.getter()
{
  if (qword_2801D4128 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D75B0, &qword_267A43078);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D56A0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2677109E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92E8, &qword_267A5B2E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92F0, &qword_267A5B568);
  sub_267A41C04();
  type metadata accessor for Common.MessageMode(0);
  return sub_267A41914();
}

uint64_t static Common.MessageMode.definition.getter()
{
  if (qword_2801D4130 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D75B8, &qword_267A43080);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D56B8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267710D84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92D8, &qword_267A5B050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92E0, &qword_267A5B2D8);
  sub_267A41C04();
  type metadata accessor for Common.MessageState(0);
  return sub_267A41914();
}

uint64_t static Common.MessageState.definition.getter()
{
  if (qword_2801D4138 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D75C0, &qword_267A43088);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D56D0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267711120()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92C8, &qword_267A5AC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E00;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x6570795461657261;
  *(inited + 48) = 0xE800000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x6570795461657261;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A9A110;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A9A110;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A99C70;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A99C70;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x656E6961746E6F63;
  *(inited + 192) = 0xEB000000006E4964;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x656E6961746E6F63;
  *(inited + 216) = 0xEB000000006E4964;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x736E6961746E6F63;
  *(inited + 240) = 0xE800000000000000;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x736E6961746E6F63;
  *(inited + 264) = 0xE800000000000000;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 1701667182;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 1701667182;
  *(inited + 312) = 0xE400000000000000;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97810;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97810;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x507473694C6F7375;
  *(inited + 384) = 0xEF6E6F697469736FLL;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x507473694C6F7375;
  *(inited + 408) = 0xEF6E6F697469736FLL;
  *(inited + 416) = swift_getKeyPath();
  strcpy((inited + 424), "usoQuantifier");
  *(inited + 438) = -4864;
  *(inited + 440) = swift_getKeyPath();
  strcpy((inited + 448), "usoQuantifier");
  *(inited + 462) = -4864;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000010;
  *(inited + 480) = 0x8000000267A97830;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000010;
  *(inited + 504) = 0x8000000267A97830;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97850;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97850;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0x41656D61536F7375;
  *(inited + 576) = 0xE900000000000073;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0x41656D61536F7375;
  *(inited + 600) = 0xE900000000000073;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000012;
  *(inited + 624) = 0x8000000267A97870;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000012;
  *(inited + 648) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92D0, &qword_267A5B048);
  sub_267A41C04();
  type metadata accessor for Common.MicroGeographicArea(0);
  return sub_267A41914();
}

uint64_t static Common.MicroGeographicArea.definition.getter()
{
  if (qword_2801D4140 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D75C8, &qword_267A43090);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D56E8);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2677115F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92B8, &qword_267A5A860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E70;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x8000000267A9A0F0;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x8000000267A9A0F0;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "numeratorValue");
  *(inited + 151) = -18;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "numeratorValue");
  *(inited + 175) = -18;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 1852270963;
  *(inited + 192) = 0xE400000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 1852270963;
  *(inited + 216) = 0xE400000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x6C6156656C6F6877;
  *(inited + 240) = 0xEA00000000006575;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x6C6156656C6F6877;
  *(inited + 264) = 0xEA00000000006575;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97810;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97810;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x507473694C6F7375;
  *(inited + 336) = 0xEF6E6F697469736FLL;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x507473694C6F7375;
  *(inited + 360) = 0xEF6E6F697469736FLL;
  *(inited + 368) = swift_getKeyPath();
  strcpy((inited + 376), "usoQuantifier");
  *(inited + 390) = -4864;
  *(inited + 392) = swift_getKeyPath();
  strcpy((inited + 400), "usoQuantifier");
  *(inited + 414) = -4864;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000010;
  *(inited + 432) = 0x8000000267A97830;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000010;
  *(inited + 456) = 0x8000000267A97830;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97850;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97850;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0x41656D61536F7375;
  *(inited + 528) = 0xE900000000000073;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0x41656D61536F7375;
  *(inited + 552) = 0xE900000000000073;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000012;
  *(inited + 576) = 0x8000000267A97870;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000012;
  *(inited + 600) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92C0, &qword_267A5AC28);
  sub_267A41C04();
  type metadata accessor for Common.MixedFraction(0);
  return sub_267A41914();
}

uint64_t static Common.MixedFraction.definition.getter()
{
  if (qword_2801D4148 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D75D0, &qword_267A43098);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5700);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267711A7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92A8, &qword_267A5A580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E10;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "integerValue");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "integerValue");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A97810;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A97810;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97830;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97830;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97850;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97850;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97870;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92B0, &qword_267A5A858);
  sub_267A41C04();
  type metadata accessor for Common.MonthOfYear(0);
  return sub_267A41914();
}

uint64_t static Common.MonthOfYear.definition.getter()
{
  if (qword_2801D4150 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D75D8, &qword_267A430A0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5718);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267711E54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9298, &qword_267A5A250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x696C7069746C756DLL;
  *(inited + 48) = 0xEA00000000007265;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x696C7069746C756DLL;
  *(inited + 72) = 0xEA00000000007265;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x65756C6176;
  *(inited + 144) = 0xE500000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x65756C6176;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D92A0, &qword_267A5A578);
  sub_267A41C04();
  type metadata accessor for Common.MultipliedNumber(0);
  return sub_267A41914();
}

uint64_t static Common.MultipliedNumber.definition.getter()
{
  if (qword_2801D4158 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D75E0, &qword_267A430A8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5730);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267712258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9288, &qword_267A59F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E10;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000267A97810;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000267A97810;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x8000000267A97830;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000267A97830;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97850;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97850;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97870;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9290, &qword_267A5A248);
  sub_267A41C04();
  type metadata accessor for Common.Number(0);
  return sub_267A41924();
}

uint64_t static Common.Number.definition.getter()
{
  if (qword_2801D4160 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D75E8, &qword_267A430B0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5748);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_267712634()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9278, &qword_267A59CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9280, &qword_267A59F68);
  sub_267A41C04();
  type metadata accessor for Common.NumberSign(0);
  return sub_267A41914();
}

uint64_t static Common.NumberSign.definition.getter()
{
  if (qword_2801D4168 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D75F0, &qword_267A430B8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801D5760);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_1_2();

  return v4(v3);
}

uint64_t sub_2677129D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9268, &qword_267A59640);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267A42E80;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = 0x7261646E656C6163;
  *(v0 + 48) = 0xEB00000000617245;
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = 0x7261646E656C6163;
  *(v0 + 72) = 0xEB00000000617245;
  *(v0 + 80) = swift_getKeyPath();
  strcpy((v0 + 88), "calendarSystem");
  *(v0 + 103) = -18;
  *(v0 + 104) = swift_getKeyPath();
  strcpy((v0 + 112), "calendarSystem");
  *(v0 + 127) = -18;
  *(v0 + 128) = swift_getKeyPath();
  *(v0 + 136) = 0x6570795465746164;
  *(v0 + 144) = 0xE800000000000000;
  *(v0 + 152) = swift_getKeyPath();
  *(v0 + 160) = 0x6570795465746164;
  *(v0 + 168) = 0xE800000000000000;
  *(v0 + 176) = swift_getKeyPath();
  *(v0 + 184) = 0x6E6F4D664F796164;
  *(v0 + 192) = 0xEA00000000006874;
  *(v0 + 200) = swift_getKeyPath();
  *(v0 + 208) = 0x6E6F4D664F796164;
  *(v0 + 216) = 0xEA00000000006874;
  *(v0 + 224) = swift_getKeyPath();
  *(v0 + 232) = 0x656557664F796164;
  *(v0 + 240) = 0xE90000000000006BLL;
  *(v0 + 248) = swift_getKeyPath();
  *(v0 + 256) = 0x656557664F796164;
  *(v0 + 264) = 0xE90000000000006BLL;
  *(v0 + 272) = swift_getKeyPath();
  *(v0 + 280) = 0x6F69746365726964;
  *(v0 + 288) = 0xE90000000000006ELL;
  *(v0 + 296) = swift_getKeyPath();
  *(v0 + 304) = 0x6F69746365726964;
  *(v0 + 312) = 0xE90000000000006ELL;
  *(v0 + 320) = swift_getKeyPath();
  *(v0 + 328) = 0x59664F68746E6F6DLL;
  *(v0 + 336) = 0xEB00000000726165;
  *(v0 + 344) = swift_getKeyPath();
  *(v0 + 352) = 0x59664F68746E6F6DLL;
  *(v0 + 360) = 0xEB00000000726165;
  *(v0 + 368) = swift_getKeyPath();
  *(v0 + 376) = 1701667182;
  *(v0 + 384) = 0xE400000000000000;
  *(v0 + 392) = swift_getKeyPath();
  *(v0 + 400) = 1701667182;
  *(v0 + 408) = 0xE400000000000000;
  *(v0 + 416) = swift_getKeyPath();
  *(v0 + 424) = 0x6E6972727563636FLL;
  *(v0 + 432) = 0xEB000000006E4967;
  *(v0 + 440) = swift_getKeyPath();
  *(v0 + 448) = 0x6E6972727563636FLL;
  *(v0 + 456) = 0xEB000000006E4967;
  *(v0 + 464) = swift_getKeyPath();
  *(v0 + 472) = 0x655274657366666FLL;
  *(v0 + 480) = 0xEF65636E65726566;
  *(v0 + 488) = swift_getKeyPath();
  *(v0 + 496) = 0x655274657366666FLL;
  *(v0 + 504) = 0xEF65636E65726566;
  *(v0 + 512) = swift_getKeyPath();
  *(v0 + 520) = 0x615674657366666FLL;
  *(v0 + 528) = 0xEB0000000065756CLL;
  *(v0 + 536) = swift_getKeyPath();
  *(v0 + 544) = 0x615674657366666FLL;
  *(v0 + 552) = 0xEB0000000065756CLL;
  *(v0 + 560) = swift_getKeyPath();
  *(v0 + 568) = 0xD000000000000017;
  *(v0 + 576) = 0x8000000267A9A090;
  *(v0 + 584) = swift_getKeyPath();
  *(v0 + 592) = 0xD000000000000017;
  *(v0 + 600) = 0x8000000267A9A090;
  *(v0 + 608) = swift_getKeyPath();
  *(v0 + 616) = 0x6559664F6B656577;
  *(v0 + 624) = 0xEA00000000007261;
  *(v0 + 632) = swift_getKeyPath();
  *(v0 + 640) = 0x6559664F6B656577;
  *(v0 + 648) = 0xEA00000000007261;
  *(v0 + 656) = swift_getKeyPath();
  *(v0 + 664) = 1918985593;
  *(v0 + 672) = 0xE400000000000000;
  *(v0 + 680) = swift_getKeyPath();
  *(v0 + 688) = 1918985593;
  *(v0 + 696) = 0xE400000000000000;
  *(v0 + 704) = swift_getKeyPath();
  *(v0 + 712) = 0xD000000000000010;
  *(v0 + 720) = 0x8000000267A97810;
  *(v0 + 728) = swift_getKeyPath();
  *(v0 + 736) = 0xD000000000000010;
  *(v0 + 744) = 0x8000000267A97810;
  *(v0 + 752) = swift_getKeyPath();
  *(v0 + 760) = 0x507473694C6F7375;
  *(v0 + 768) = 0xEF6E6F697469736FLL;
  *(v0 + 776) = swift_getKeyPath();
  *(v0 + 784) = 0x507473694C6F7375;
  *(v0 + 792) = 0xEF6E6F697469736FLL;
  *(v0 + 800) = swift_getKeyPath();
  strcpy((v0 + 808), "usoQuantifier");
  *(v0 + 822) = -4864;
  *(v0 + 824) = swift_getKeyPath();
  strcpy((v0 + 832), "usoQuantifier");
  *(v0 + 846) = -4864;
  *(v0 + 848) = swift_getKeyPath();
  *(v0 + 856) = 0xD000000000000010;
  *(v0 + 864) = 0x8000000267A97830;
  *(v0 + 872) = swift_getKeyPath();
  *(v0 + 880) = 0xD000000000000010;
  *(v0 + 888) = 0x8000000267A97830;
  *(v0 + 896) = swift_getKeyPath();
  *(v0 + 904) = 0xD000000000000012;
  *(v0 + 912) = 0x8000000267A97850;
  *(v0 + 920) = swift_getKeyPath();
  *(v0 + 928) = 0xD000000000000012;
  *(v0 + 936) = 0x8000000267A97850;
  *(v0 + 944) = swift_getKeyPath();
  *(v0 + 952) = 0x41656D61536F7375;
  *(v0 + 960) = 0xE900000000000073;
  *(v0 + 968) = swift_getKeyPath();
  *(v0 + 976) = 0x41656D61536F7375;
  *(v0 + 984) = 0xE900000000000073;
  *(v0 + 992) = swift_getKeyPath();
  *(v0 + 1000) = 0xD000000000000012;
  *(v0 + 1008) = 0x8000000267A97870;
  *(v0 + 1016) = swift_getKeyPath();
  *(v0 + 1024) = 0xD000000000000012;
  *(v0 + 1032) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9270, &qword_267A59CD8);
  sub_267A41C04();
  type metadata accessor for Common.OffsetDate(0);

  return sub_267A41914();
}