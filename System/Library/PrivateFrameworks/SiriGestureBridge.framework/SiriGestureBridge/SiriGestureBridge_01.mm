void sub_266E3E68C(void *a1, uint64_t a2, void *a3)
{
  v29 = a1;
  v4 = sub_266E4642C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266E4646C();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = objc_opt_self();
  v15 = a3;
  v16 = [v14 currentQueue];
  v17 = [v16 underlyingQueue];

  if (v17 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v18 = v29, v19 = sub_266E4666C(), v18, v17, (v19 & 1) != 0))
  {
    v20 = *&v15[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager];
    if (v20)
    {
      v21 = v20;
      v29 = sub_266E45BBC();

      AFIsInternalInstall();
      sub_266E45B3C();

      v22 = v29;
    }

    else
    {
    }
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 16) = sub_266E4090C;
    *(v23 + 24) = v13;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_213;
    v24 = _Block_copy(aBlock);

    sub_266E4643C();
    v30 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    v27 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    v26 = v15;
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v12, v8, v24);
    _Block_release(v24);
    (*(v5 + 8))(v8, v4);
    (*(v28 + 8))(v12, v9);
  }
}

uint64_t sub_266E3EAD4(void *a1, uint64_t a2, void *a3)
{
  v28 = a1;
  v4 = sub_266E4642C();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266E4646C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = objc_opt_self();
  v27 = a3;
  v15 = [v14 currentQueue];
  v16 = [v15 underlyingQueue];

  if (v16 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v17 = v28, v18 = sub_266E4666C(), v17, v16, (v18 & 1) != 0))
  {
    v19 = v27;
    sub_266E3B058();
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = sub_266E40860;
    *(v21 + 24) = v13;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_155;
    v22 = _Block_copy(aBlock);

    v23 = v12;
    sub_266E4643C();
    v29 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    v24 = v26;
    v25[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    v25[1] = v13;
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v23, v7, v22);
    _Block_release(v22);
    (*(v24 + 8))(v7, v4);
    (*(v9 + 8))(v23, v25[0]);
  }
}

void sub_266E3EEBC(void *a1, uint64_t a2, void *a3, int a4)
{
  v29 = a1;
  v6 = sub_266E4642C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_266E4646C();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = objc_opt_self();
  v28 = a3;
  v17 = [v16 currentQueue];
  v18 = [v17 underlyingQueue];

  if (v18 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v19 = v29, v20 = sub_266E4666C(), v19, v18, (v20 & 1) != 0))
  {
    v21 = v28;
    v22 = sub_266E45BBC();
    v29 = sub_266E45B2C();

    sub_266E45B8C();

    v23 = v29;
  }

  else
  {
    v26[1] = v15;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_266E40854;
    *(v24 + 24) = v15;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_145;
    v25 = _Block_copy(aBlock);

    sub_266E4643C();
    v30 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v14, v10, v25);
    _Block_release(v25);
    (*(v7 + 8))(v10, v6);
    (*(v27 + 8))(v14, v11);
  }
}

uint64_t sub_266E3F2C8(void *a1, uint64_t a2, void *a3, char a4)
{
  v28 = a1;
  v6 = sub_266E4642C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_266E4646C();
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = objc_opt_self();
  v27 = a3;
  v17 = [v16 currentQueue];
  v18 = [v17 underlyingQueue];

  if (v18 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v19 = v28, v20 = sub_266E4666C(), v19, v18, (v20 & 1) != 0))
  {
    v21 = v27;
    sub_266E3A41C(v27, a4);
  }

  else
  {
    v25[1] = v15;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_266E40868;
    *(v23 + 24) = v15;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_165;
    v24 = _Block_copy(aBlock);

    sub_266E4643C();
    v29 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v14, v10, v24);
    _Block_release(v24);
    (*(v7 + 8))(v10, v6);
    (*(v26 + 8))(v14, v11);
  }
}

void sub_266E3F6B4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v32 = a1;
  v6 = sub_266E4642C();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266E4646C();
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = objc_opt_self();
  v31 = a3;
  v16 = a4;
  v17 = [v15 currentQueue];
  v18 = [v17 underlyingQueue];

  if (v18 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v19 = v32, v20 = sub_266E4666C(), v19, v18, (v20 & 1) != 0))
  {
    v21 = v31;
    sub_266E399DC(v31);
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = sub_266E4087C;
    *(v22 + 24) = v14;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_178;
    v23 = _Block_copy(aBlock);

    v24 = v13;
    sub_266E4643C();
    v33 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    v28 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    v25 = v29;
    v27 = v10;
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v24, v9, v23);
    _Block_release(v23);
    (*(v25 + 8))(v9, v6);
    (*(v30 + 8))(v24, v27);
  }
}

void sub_266E3FA88(void *a1, uint64_t a2, char a3, void *a4, void *a5)
{
  v34 = a1;
  v8 = sub_266E4642C();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_266E4646C();
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  v17 = objc_opt_self();
  v32 = a4;
  v33 = a5;
  v18 = [v17 currentQueue];
  v19 = [v18 underlyingQueue];

  if (v19 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v20 = v34, v21 = sub_266E4666C(), v20, v19, (v21 & 1) != 0))
  {
    v23 = v32;
    v22 = v33;
    sub_266E3D834(a3 & 1, v32, v33);
  }

  else
  {
    v24 = swift_allocObject();
    *(v24 + 16) = sub_266E406C8;
    *(v24 + 24) = v16;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_127;
    v25 = _Block_copy(aBlock);

    v26 = v15;
    sub_266E4643C();
    v35 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    v27 = v30;
    v29 = v12;
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v26, v11, v25);
    _Block_release(v25);
    (*(v27 + 8))(v11, v8);
    (*(v31 + 8))(v26, v29);

    v22 = v33;
  }
}

void sub_266E3FE6C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v28 = v4;
  v5 = sub_266E4642C();
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v27 = sub_266E4646C();
  v14 = OUTLINED_FUNCTION_5(v27);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  v22 = [objc_opt_self() currentQueue];
  v23 = [v22 underlyingQueue];

  if (v23 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v24 = v28, OUTLINED_FUNCTION_75(), v25 = sub_266E4666C(), v24, v23, (v25 & 1) != 0))
  {
    v3();
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v3;
    *(v26 + 24) = v1;
    v29[4] = sub_266E405F4;
    v29[5] = v26;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 1107296256;
    v29[2] = sub_266E3A218;
    v29[3] = &block_descriptor;
    _Block_copy(v29);
    OUTLINED_FUNCTION_74();

    sub_266E4643C();
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v21, v13, v3);
    _Block_release(v3);
    (*(v8 + 8))(v13, v5);
    (*(v16 + 8))(v21, v27);
  }

  OUTLINED_FUNCTION_32();
}

id sub_266E401C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GestureController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GestureController()
{
  result = qword_281320ED8;
  if (!qword_281320ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E4038C()
{
  sub_266E405A4(319, qword_281320C88, type metadata accessor for GestureMapping);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = type metadata accessor for EventDeduper(319);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_266E405A4(319, &qword_281320F00, MEMORY[0x277D5CE58]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_266E405A4(319, &qword_281320F18, MEMORY[0x277CC95F0]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_266E405A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_72();
    v4 = sub_266E4668C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_266E405F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_266E40634(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_266E4650C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithName:v10 options:a3 queue:a4 delegate:a5];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_266E406F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureMapping(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E4075C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureMapping(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_266E407C0()
{
  v1 = *(type metadata accessor for GestureMapping(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + *(v1 + 64));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  sub_266E3B91C();
}

void sub_266E40854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_266E3B8BC();
}

uint64_t sub_266E40894(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_266E408BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_266E408CC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_266E4093C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_10(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266E40994(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_72();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266E409D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_33_0@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(result + 4) = a2;
  *(result + 8) = 1024;
  return result;
}

void OUTLINED_FUNCTION_48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_66@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(result + 10) = v2;
  *(result + 14) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_70()
{
  v2 = *(v0 - 200);
}

void OUTLINED_FUNCTION_86(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_87()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_88()
{
}

uint64_t OUTLINED_FUNCTION_89()
{
}

uint64_t OUTLINED_FUNCTION_90()
{

  return sub_266E4615C();
}

uint64_t OUTLINED_FUNCTION_91()
{

  return MEMORY[0x28211CB18](v0);
}

BOOL sub_266E40C5C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_266E40D10(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_266E45AEC();
  OUTLINED_FUNCTION_17_2(v6);
  v7 = (v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId);
  *v7 = 0;
  v7[1] = 0;
  v8 = sub_266E4629C();
  OUTLINED_FUNCTION_17_2(v8);
  v9 = type metadata accessor for GestureResponse(0);
  OUTLINED_FUNCTION_17_2(v9);
  v10 = (v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);
  *v10 = 0;
  v10[1] = 0;
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v11 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v11, qword_281320F28);
  v12 = sub_266E463FC();
  v13 = sub_266E465BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_26();
    *v14 = 0;
    _os_log_impl(&dword_266E28000, v12, v13, "Initializing gesture output submitter", v14, 2u);
    OUTLINED_FUNCTION_14_0();
  }

  sub_266E2CE9C(a1, v3 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher);
  *(v3 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_serviceHelper) = a2;
  return v3;
}

void sub_266E40E58()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for GestureResponse(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v9 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v9, qword_281320F28);
  sub_266E44528(v1, v8);
  v10 = sub_266E463FC();
  v11 = sub_266E465BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_21();
    v13 = OUTLINED_FUNCTION_23_0();
    v18 = v13;
    *v12 = 136315138;
    v14 = sub_266E3662C();
    v16 = v15;
    sub_266E442A0(v8);
    v17 = sub_266E2B0EC(v14, v16, &v18);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266E28000, v10, v11, "Gesture response received: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  else
  {

    sub_266E442A0(v8);
  }

  sub_266E410A0(v1);
  OUTLINED_FUNCTION_32();
}

void sub_266E40FE0()
{
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v1 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v1, qword_281320F28);
  oslog = sub_266E463FC();
  sub_266E465CC();
  OUTLINED_FUNCTION_35_1();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = OUTLINED_FUNCTION_26();
    *v3 = 0;
    _os_log_impl(&dword_266E28000, oslog, v0, "‼️ Gesture controller error", v3, 2u);
    OUTLINED_FUNCTION_14_0();
  }
}

void sub_266E410A0(uint64_t *a1)
{
  v1 = *a1;
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v2 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v2, qword_281320F28);
  v3 = sub_266E463FC();
  v4 = sub_266E465BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_21();
    v6 = OUTLINED_FUNCTION_23_0();
    v21 = v6;
    *v5 = 136315138;
    v7 = sub_266E352EC(v1);
    v9 = sub_266E2B0EC(v7, v8, &v21);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_266E28000, v3, v4, "🫡 Handling user intent: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  if ((v1 - 1) >= 2)
  {
    if (v1 == 4)
    {
      OUTLINED_FUNCTION_62();

      sub_266E412D0();
    }

    else
    {
      oslog = sub_266E463FC();
      v12 = sub_266E465CC();
      if (os_log_type_enabled(oslog, v12))
      {
        v13 = OUTLINED_FUNCTION_21();
        v14 = OUTLINED_FUNCTION_23_0();
        v21 = v14;
        *v13 = 136315138;
        v15 = sub_266E352EC(v1);
        v17 = sub_266E2B0EC(v15, v16, &v21);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_266E28000, oslog, v12, "‼️ Unsupported user intent: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();
      }

      OUTLINED_FUNCTION_62();
    }
  }

  else
  {
    OUTLINED_FUNCTION_62();

    sub_266E413DC();
  }
}

id sub_266E412D0()
{
  v1 = v0;
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v2 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v2, qword_281320F28);
  v3 = sub_266E463FC();
  v4 = sub_266E465BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_26();
    *v5 = 0;
    _os_log_impl(&dword_266E28000, v3, v4, "🙅‍♀️ Dismissing Siri", v5, 2u);
    OUTLINED_FUNCTION_14_0();
  }

  v6 = *(v1 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_serviceHelper);
  result = [v6 respondsToSelector_];
  if (result)
  {

    return [v6 deactivateCurrentAnnouncementRequestForReason_];
  }

  return result;
}

void sub_266E413DC()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for GestureResponse(0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83A8, &qword_266E479C8);
  OUTLINED_FUNCTION_12(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_2();
  v16 = *v4;
  if ((*v4 - 1) >= 2)
  {
    if (qword_281320A88 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v44 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v44, qword_281320F28);
    v56 = sub_266E463FC();
    sub_266E465CC();
    OUTLINED_FUNCTION_35_1();
    if (os_log_type_enabled(v56, v45))
    {
      v46 = OUTLINED_FUNCTION_21();
      v47 = OUTLINED_FUNCTION_23_0();
      v57[0] = v47;
      *v46 = 136315138;
      v48 = sub_266E352EC(v16);
      v50 = sub_266E2B0EC(v48, v49, v57);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_266E28000, v56, v11, "‼️ Can't produce payload for unsupported user intent: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_14_0();

LABEL_17:
      OUTLINED_FUNCTION_32();
      return;
    }

    OUTLINED_FUNCTION_32();
  }

  else
  {
    sub_266E45AFC();
    sub_266E44418();

    v17 = sub_266E41900();
    v18 = objc_opt_self();
    v19 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
    v55 = v17;
    v20 = [v18 runSiriKitExecutorCommandWithContext:v19 payload:v17];

    v54 = v20;
    v21 = [v18 wrapCommandInStartLocalRequest_];
    v22 = [objc_allocWithZone(MEMORY[0x277CEF378]) init];
    [v22 setActivationEvent_];
    [v22 setStartLocalRequest_];
    v23 = *(v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_serviceHelper);
    if ([v23 respondsToSelector_])
    {
      [v23 submitExternalActivationRequest:v22 completion:0];
    }

    v24 = v21;
    v25 = sub_266E444B8(v24);
    v26 = (v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);
    v27 = *(v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId + 8);
    *v26 = v25;
    v26[1] = v28;

    v53 = sub_266E444B8(v24);
    if (v29)
    {
      v30 = v29;

      sub_266E44528(v4, v1);
      OUTLINED_FUNCTION_13();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v5);
      v34 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse;
      swift_beginAccess();
      sub_266E441CC(v1, v2 + v34);
      swift_endAccess();
      if (qword_281320A88 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v35 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v35, qword_281320F28);
      sub_266E44528(v4, v11);

      v36 = sub_266E463FC();
      v37 = sub_266E465BC();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v57[0] = swift_slowAlloc();
        *v38 = 136315394;
        v39 = sub_266E2B0EC(v53, v30, v57);

        *(v38 + 4) = v39;
        *(v38 + 12) = 2080;
        v40 = sub_266E3662C();
        v42 = v41;
        sub_266E442A0(v11);
        v43 = sub_266E2B0EC(v40, v42, v57);

        *(v38 + 14) = v43;
        _os_log_impl(&dword_266E28000, v36, v37, "Pending: Gesture requestId: %s, Gesture response: %s", v38, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {

        sub_266E442A0(v11);
      }

      goto LABEL_17;
    }

    __break(1u);
  }
}

id sub_266E41900()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_266E4650C();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

void sub_266E41974()
{
  OUTLINED_FUNCTION_31();
  v134 = v3;
  v135 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B0, &unk_266E479D0);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_1();
  v136 = v9;
  OUTLINED_FUNCTION_55();
  v137 = sub_266E4621C();
  v10 = OUTLINED_FUNCTION_5(v137);
  v144 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v143 = v14;
  OUTLINED_FUNCTION_55();
  v141 = sub_266E4622C();
  v15 = OUTLINED_FUNCTION_5(v141);
  v147 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v133 = v19;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B8, &unk_266E47A70);
  OUTLINED_FUNCTION_10(v139);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_31_1();
  v140 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83C0, &unk_266E479E0);
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_1();
  v138 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_33_1();
  v31 = MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_30_1(v31, v32, v33, v34, v35, v36, v37, v38, v130);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_12(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  v43 = OUTLINED_FUNCTION_39_0();
  v44 = OUTLINED_FUNCTION_5(v43);
  v145 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_0();
  v142 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83A8, &qword_266E479C8);
  OUTLINED_FUNCTION_12(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_20_2();
  v53 = type metadata accessor for GestureResponse(0);
  v54 = OUTLINED_FUNCTION_10(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_8();
  v59 = v58 - v57;
  v60 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse;
  OUTLINED_FUNCTION_38();
  sub_266E4436C(v0 + v60, v2, &qword_2800E83A8, &qword_266E479C8);
  if (__swift_getEnumTagSinglePayload(v2, 1, v53) != 1)
  {
    v131 = v0;
    sub_266E4423C(v2, v59);
    sub_266E4436C(v59 + *(v53 + 28), v0, &qword_2800E81E8, &unk_266E474D0);
    v67 = OUTLINED_FUNCTION_29_0();
    v69 = v59;
    v132 = v43;
    if (__swift_getEnumTagSinglePayload(v67, v68, v43) == 1)
    {
      sub_266E2BE40(v0, &qword_2800E81E8, &unk_266E474D0);
      if (qword_281320A88 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v70 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v70, qword_281320F28);
      v71 = sub_266E463FC();
      v72 = sub_266E465CC();
      if (OUTLINED_FUNCTION_23(v72))
      {
        v73 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v73);
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v74, v75, "‼️ Unable to find promptInfo associated with the gesture input.");
        OUTLINED_FUNCTION_11_0();
      }

      goto LABEL_37;
    }

    v76 = v145;
    v77 = v142;
    (*(v145 + 32))(v142, v0, v132);
    sub_266E4613C();
    (*(v147 + 104))(v1, *MEMORY[0x277D5CFB0], v141);
    OUTLINED_FUNCTION_13();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v141);
    v81 = *(v139 + 48);
    sub_266E4436C(v146, v140, &qword_2800E83C0, &unk_266E479E0);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_7_1(v140);
    if (v84)
    {
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_21_2(v146);
      OUTLINED_FUNCTION_7_1(v140 + v81);
      v83 = v143;
      v82 = v144;
      if (v84)
      {
        sub_266E2BE40(v140, &qword_2800E83C0, &unk_266E479E0);
LABEL_30:
        if (qword_281320A88 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v120 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v120, qword_281320F28);
        v93 = sub_266E463FC();
        v121 = sub_266E465BC();
        if (!OUTLINED_FUNCTION_23(v121))
        {
          goto LABEL_35;
        }

        v122 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v122);
        v98 = "‼️ Gesture response is for IFGestureBasedCandidateMessage";
        goto LABEL_34;
      }
    }

    else
    {
      sub_266E4436C(v140, v138, &qword_2800E83C0, &unk_266E479E0);
      OUTLINED_FUNCTION_7_1(v140 + v81);
      v83 = v143;
      if (!v84)
      {
        OUTLINED_FUNCTION_28_1();
        v107(v133);
        sub_266E44314();
        HIDWORD(v130) = OUTLINED_FUNCTION_25_0();
        v139 = v69;
        v108 = off_2800E83C8;
        v109 = OUTLINED_FUNCTION_67();
        v108(v109);
        OUTLINED_FUNCTION_14_1();
        sub_266E2BE40(v110, v111, v112);
        OUTLINED_FUNCTION_14_1();
        sub_266E2BE40(v113, v114, v115);
        (v108)(v138, v141);
        v83 = v143;
        v77 = v142;
        OUTLINED_FUNCTION_14_1();
        v119 = sub_266E2BE40(v116, v117, v118);
        v82 = v144;
        if ((v130 & 0x100000000) != 0)
        {
          goto LABEL_30;
        }

LABEL_22:
        MEMORY[0x28223BE20](v119);
        *(&v130 - 2) = v69;
        v88 = v136;
        sub_266E461DC();
        v89 = OUTLINED_FUNCTION_29_0();
        v90 = v137;
        if (__swift_getEnumTagSinglePayload(v89, v91, v137) != 1)
        {
          v139 = v69;
          v99 = *(v82 + 32);
          OUTLINED_FUNCTION_14_1();
          v101 = v100();
          MEMORY[0x28223BE20](v101);
          v103 = v134;
          v102 = v135;
          *(&v130 - 6) = v131;
          *(&v130 - 5) = v103;
          *(&v130 - 4) = v102;
          *(&v130 - 3) = v83;
          *(&v130 - 2) = v77;
          objc_allocWithZone(sub_266E45FDC());
          v104 = sub_266E45F4C();
          if (v104)
          {
            v105 = v104;
            sub_266E4278C();

            (*(v82 + 8))(v83, v90);
            (*(v76 + 8))(v77, v132);
            v106 = v139;
LABEL_38:
            sub_266E442A0(v106);
            goto LABEL_39;
          }

          if (qword_281320AA0 != -1)
          {
            OUTLINED_FUNCTION_3_0();
          }

          v123 = sub_266E4640C();
          OUTLINED_FUNCTION_17_0(v123, qword_281320F58);
          v124 = sub_266E463FC();
          v125 = sub_266E465CC();
          v126 = OUTLINED_FUNCTION_23(v125);
          v69 = v139;
          if (v126)
          {
            v127 = OUTLINED_FUNCTION_26();
            OUTLINED_FUNCTION_30_0(v127);
            OUTLINED_FUNCTION_8_0(&dword_266E28000, v128, v129, "GestureBasedResultCandidateMessage could not be created.");
            OUTLINED_FUNCTION_11_0();
          }

          (*(v82 + 8))(v83, v90);
          goto LABEL_36;
        }

        sub_266E2BE40(v88, &qword_2800E83B0, &unk_266E479D0);
        if (qword_281320A88 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v92 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v92, qword_281320F28);
        v93 = sub_266E463FC();
        v94 = sub_266E465CC();
        if (!OUTLINED_FUNCTION_23(v94))
        {
LABEL_35:

LABEL_36:
          (*(v76 + 8))(v77, v132);
LABEL_37:
          v106 = v69;
          goto LABEL_38;
        }

        v95 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v95);
        v98 = "‼️ Unable to create gestureInput.";
LABEL_34:
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v96, v97, v98);
        OUTLINED_FUNCTION_11_0();
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_21_2(v146);
      v85 = *(v147 + 8);
      v86 = OUTLINED_FUNCTION_67();
      v87(v86);
      v82 = v144;
    }

    v119 = sub_266E2BE40(v140, &qword_2800E83B8, &unk_266E47A70);
    goto LABEL_22;
  }

  sub_266E2BE40(v2, &qword_2800E83A8, &qword_266E479C8);
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v61 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v61, qword_281320F28);
  v62 = sub_266E463FC();
  v63 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v63))
  {
    v64 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v64);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v65, v66, "No pending gesture response to create RC");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_39:
  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E422FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v42 = a5;
  v40[0] = a4;
  v40[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8098, &qword_266E479F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B0, &unk_266E479D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v40 - v15;
  v17 = sub_266E45AEC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v40 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E8398, &qword_266E479B8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v40 - v28;
  v30 = *MEMORY[0x277D5CDF8];
  v31 = sub_266E460CC();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v31);
  MEMORY[0x26D5F3C40](v29);
  v32 = *(a2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId);
  v33 = *(a2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId + 8);

  sub_266E45F7C();
  v34 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentSessionId;
  swift_beginAccess();
  sub_266E4436C(a2 + v34, v25, &qword_2800E8080, &qword_266E479C0);
  sub_266E45FCC();

  sub_266E45FBC();
  sub_266E45ADC();
  sub_266E45ABC();
  (*(v18 + 8))(v21, v17);
  sub_266E45F5C();
  v35 = sub_266E4621C();
  (*(*(v35 - 8) + 16))(v16, v42, v35);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v35);
  sub_266E45FAC();
  v36 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_sessionUserId;
  swift_beginAccess();
  sub_266E4436C(a2 + v36, v41, &qword_2800E8098, &qword_266E479F0);
  sub_266E45F9C();
  v37 = sub_266E4619C();
  v38 = v43;
  (*(*(v37 - 8) + 16))(v43, v44, v37);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v37);
  return sub_266E45F6C();
}

uint64_t sub_266E4278C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83A8, &qword_266E479C8);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_40_0();
  sub_266E43860();
  v6 = type metadata accessor for GestureResponse(0);
  OUTLINED_FUNCTION_41_0(v6);
  v7 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse;
  OUTLINED_FUNCTION_42_0();
  sub_266E441CC(v1, v0 + v7);
  swift_endAccess();
  OUTLINED_FUNCTION_34_1(OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);
  *v8 = 0;
  v8[1] = 0;
}

void sub_266E42844()
{
  OUTLINED_FUNCTION_31();
  v130 = v3;
  v131 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B0, &unk_266E479D0);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_1();
  v135 = v9;
  OUTLINED_FUNCTION_55();
  v136 = sub_266E4621C();
  v10 = OUTLINED_FUNCTION_5(v136);
  v132 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v142 = v14;
  OUTLINED_FUNCTION_55();
  v140 = sub_266E4622C();
  v15 = OUTLINED_FUNCTION_5(v140);
  v145 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v133 = v19;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B8, &unk_266E47A70);
  OUTLINED_FUNCTION_10(v138);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_31_1();
  v139 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83C0, &unk_266E479E0);
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_1();
  v137 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_33_1();
  v31 = MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_30_1(v31, v32, v33, v34, v35, v36, v37, v38, v128);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_12(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  v43 = OUTLINED_FUNCTION_39_0();
  v44 = OUTLINED_FUNCTION_5(v43);
  v143 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_0();
  v141 = v48;
  v49 = OUTLINED_FUNCTION_67();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
  OUTLINED_FUNCTION_12(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_20_2();
  v55 = type metadata accessor for GestureResponse(0);
  v56 = OUTLINED_FUNCTION_10(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_8();
  v61 = v60 - v59;
  v62 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse;
  OUTLINED_FUNCTION_38();
  sub_266E4436C(v0 + v62, v2, &qword_2800E83A8, &qword_266E479C8);
  if (__swift_getEnumTagSinglePayload(v2, 1, v55) != 1)
  {
    v129 = v0;
    sub_266E4423C(v2, v61);
    sub_266E4436C(v61 + *(v55 + 28), v0, &qword_2800E81E8, &unk_266E474D0);
    v69 = OUTLINED_FUNCTION_29_0();
    v134 = v61;
    if (__swift_getEnumTagSinglePayload(v69, v70, v43) == 1)
    {
      sub_266E2BE40(v0, &qword_2800E81E8, &unk_266E474D0);
      if (qword_281320A88 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v71 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v71, qword_281320F28);
      v72 = sub_266E463FC();
      v73 = sub_266E465CC();
      if (OUTLINED_FUNCTION_23(v73))
      {
        v74 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v74);
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v75, v76, "‼️ Unable to find promptInfo associated with the gesture input.");
        OUTLINED_FUNCTION_11_0();
      }

      goto LABEL_35;
    }

    v77 = v43;
    v78 = v143;
    v79 = v141;
    (*(v143 + 32))(v141, v0, v77);
    sub_266E4613C();
    (*(v145 + 104))(v1, *MEMORY[0x277D5CFB0], v140);
    OUTLINED_FUNCTION_13();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v140);
    v83 = *(v138 + 48);
    sub_266E4436C(v144, v139, &qword_2800E83C0, &unk_266E479E0);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_7_1(v139);
    if (v86)
    {
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_21_2(v144);
      OUTLINED_FUNCTION_7_1(v139 + v83);
      v84 = v142;
      if (v86)
      {
        v85 = sub_266E2BE40(v139, &qword_2800E83C0, &unk_266E479E0);
LABEL_27:
        MEMORY[0x28223BE20](v85);
        v109 = v135;
        *(&v128 - 2) = v134;
        sub_266E461DC();
        v110 = OUTLINED_FUNCTION_29_0();
        v111 = v136;
        if (__swift_getEnumTagSinglePayload(v110, v112, v136) != 1)
        {
          v116 = v132;
          v117 = *(v132 + 32);
          OUTLINED_FUNCTION_14_1();
          v119 = v118();
          MEMORY[0x28223BE20](v119);
          v120 = v130;
          *(&v128 - 6) = v129;
          *(&v128 - 5) = v120;
          *(&v128 - 4) = v131;
          *(&v128 - 3) = v84;
          *(&v128 - 2) = v79;
          objc_allocWithZone(sub_266E45F0C());
          v121 = sub_266E45E7C();
          if (v121)
          {
            v122 = v121;
            sub_266E437B4();
          }

          else
          {
            if (qword_281320AA0 != -1)
            {
              OUTLINED_FUNCTION_3_0();
            }

            v123 = sub_266E4640C();
            OUTLINED_FUNCTION_17_0(v123, qword_281320F58);
            v122 = sub_266E463FC();
            v124 = sub_266E465CC();
            if (OUTLINED_FUNCTION_23(v124))
            {
              v125 = OUTLINED_FUNCTION_26();
              OUTLINED_FUNCTION_30_0(v125);
              OUTLINED_FUNCTION_8_0(&dword_266E28000, v126, v127, "IFGestureBasedCandidateMessage could not be created.");
              OUTLINED_FUNCTION_11_0();
            }
          }

          (*(v116 + 8))(v84, v111);
          goto LABEL_34;
        }

        sub_266E2BE40(v109, &qword_2800E83B0, &unk_266E479D0);
        if (qword_281320A88 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v113 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v113, qword_281320F28);
        v91 = sub_266E463FC();
        v114 = sub_266E465CC();
        if (!OUTLINED_FUNCTION_23(v114))
        {
LABEL_33:

LABEL_34:
          (*(v78 + 8))(v79, v77);
LABEL_35:
          sub_266E442A0(v134);
          goto LABEL_36;
        }

        v115 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v115);
        v96 = "‼️ Unable to create gestureInput.";
LABEL_32:
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v94, v95, v96);
        OUTLINED_FUNCTION_11_0();
        goto LABEL_33;
      }
    }

    else
    {
      sub_266E4436C(v139, v137, &qword_2800E83C0, &unk_266E479E0);
      OUTLINED_FUNCTION_7_1(v139 + v83);
      if (!v86)
      {
        OUTLINED_FUNCTION_28_1();
        v97(v133);
        sub_266E44314();
        LODWORD(v138) = OUTLINED_FUNCTION_25_0();
        v98 = off_2800E83C8;
        v99 = OUTLINED_FUNCTION_67();
        v98(v99);
        OUTLINED_FUNCTION_14_1();
        sub_266E2BE40(v100, v101, v102);
        OUTLINED_FUNCTION_14_1();
        sub_266E2BE40(v103, v104, v105);
        (v98)(v137, v140);
        v84 = v142;
        v79 = v141;
        v78 = v143;
        OUTLINED_FUNCTION_14_1();
        v85 = sub_266E2BE40(v106, v107, v108);
        if (v138)
        {
          goto LABEL_27;
        }

LABEL_22:
        if (qword_281320A88 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v90 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v90, qword_281320F28);
        v91 = sub_266E463FC();
        v92 = sub_266E465BC();
        if (!OUTLINED_FUNCTION_23(v92))
        {
          goto LABEL_33;
        }

        v93 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v93);
        v96 = "‼️ Gesture response is not for IFGestureBasedCandidateMessage";
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_21_2(v144);
      v87 = *(v145 + 8);
      v88 = OUTLINED_FUNCTION_67();
      v89(v88);
    }

    sub_266E2BE40(v139, &qword_2800E83B8, &unk_266E47A70);
    goto LABEL_22;
  }

  sub_266E2BE40(v2, &qword_2800E83A8, &qword_266E479C8);
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v63 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v63, qword_281320F28);
  v64 = sub_266E463FC();
  v65 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v65))
  {
    v66 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v66);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v67, v68, "No pending gesture response to create RC");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_36:
  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E43180(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83E0, &qword_266E479F8);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83E8, &qword_266E47A00);
  OUTLINED_FUNCTION_12(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = *(type metadata accessor for GestureResponse(0) + 24);
  v16 = sub_266E461CC();
  OUTLINED_FUNCTION_10(v16);
  (*(v17 + 16))(v14, &a2[v15], v16);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  MEMORY[0x26D5F3EA0](v14);
  v21 = *a2;
  v22 = sub_266E4623C();
  OUTLINED_FUNCTION_10(v22);
  v24 = MEMORY[0x277D5CFC8];
  v25 = MEMORY[0x277D5CFD0];
  if (v21 != 2)
  {
    v25 = MEMORY[0x277D5CFD8];
  }

  if (v21 != 1)
  {
    v24 = v25;
  }

  (*(v23 + 104))(v8, *v24, v22);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  sub_266E461FC();
  sub_266E36D64();
  return sub_266E4620C();
}

uint64_t sub_266E43324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v42 = a5;
  v40[0] = a4;
  v40[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8098, &qword_266E479F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B0, &unk_266E479D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v40 - v15;
  v17 = sub_266E45AEC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v40 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E8398, &qword_266E479B8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v40 - v28;
  v30 = *MEMORY[0x277D5CDF8];
  v31 = sub_266E460CC();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v31);
  sub_266E45EBC();
  v32 = *(a2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId);
  v33 = *(a2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId + 8);

  sub_266E45EAC();
  v34 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentSessionId;
  swift_beginAccess();
  sub_266E4436C(a2 + v34, v25, &qword_2800E8080, &qword_266E479C0);
  sub_266E45EFC();

  sub_266E45EEC();
  sub_266E45ADC();
  sub_266E45ABC();
  (*(v18 + 8))(v21, v17);
  sub_266E45E8C();
  v35 = sub_266E4621C();
  (*(*(v35 - 8) + 16))(v16, v42, v35);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v35);
  sub_266E45EDC();
  v36 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_sessionUserId;
  swift_beginAccess();
  sub_266E4436C(a2 + v36, v41, &qword_2800E8098, &qword_266E479F0);
  sub_266E45ECC();
  v37 = sub_266E4619C();
  v38 = v43;
  (*(*(v37 - 8) + 16))(v43, v44, v37);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v37);
  return sub_266E45E9C();
}

uint64_t sub_266E437B4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83A8, &qword_266E479C8);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_40_0();
  v6 = type metadata accessor for GestureResponse(0);
  OUTLINED_FUNCTION_41_0(v6);
  v7 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse;
  OUTLINED_FUNCTION_42_0();
  sub_266E441CC(v1, v0 + v7);
  swift_endAccess();
  OUTLINED_FUNCTION_34_1(OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);
  *v8 = 0;
  v8[1] = 0;
}

void sub_266E43860()
{
  v1 = v0;
  v2 = objc_allocWithZone(sub_266E45CEC());
  v3 = sub_266E45CDC();
  if (v3)
  {
    v4 = v3;
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_3_0();
    }

    v5 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v5, qword_281320F58);
    v6 = v4;
    v7 = sub_266E463FC();
    v8 = sub_266E465AC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v9 = 136315394;
      swift_getObjectType();
      v10 = sub_266E467BC();
      v12 = sub_266E2B0EC(v10, v11, &v26);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      v13 = [v6 debugDescription];
      v14 = sub_266E4651C();
      v16 = v15;

      v17 = sub_266E2B0EC(v14, v16, &v26);

      *(v9 + 14) = v17;
      OUTLINED_FUNCTION_37(&dword_266E28000, v18, v19, "Posting %s: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_14_0();
    }

    v20 = *(v1 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher), *(v1 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher + 24));
    sub_266E460AC();
  }

  else
  {
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_3_0();
    }

    v21 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v21, qword_281320F58);
    v6 = sub_266E463FC();
    v22 = sub_266E465CC();
    if (OUTLINED_FUNCTION_23(v22))
    {
      v23 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_30_0(v23);
      OUTLINED_FUNCTION_8_0(&dword_266E28000, v24, v25, "‼️ ResultSelectedMessage could not be created.");
      OUTLINED_FUNCTION_11_0();
    }
  }
}

uint64_t sub_266E43ACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E8398, &qword_266E479B8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_266E45E3C();
  sub_266E45D1C();
  sub_266E460BC();
  sub_266E45CFC();
  sub_266E4609C();
  v8 = sub_266E45AEC();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_266E45D4C();
  sub_266E4608C();
  sub_266E45D3C();
  sub_266E45D0C();
  v9 = *MEMORY[0x277D5CDF8];
  v10 = sub_266E460CC();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
  return sub_266E45D2C();
}

void sub_266E43C74(void *a1)
{
  v2 = v1;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v4 = sub_266E4640C();
  __swift_project_value_buffer(v4, qword_281320F58);
  v5 = a1;
  v6 = sub_266E463FC();
  v7 = sub_266E465AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    swift_getObjectType();
    v9 = sub_266E467BC();
    v11 = sub_266E2B0EC(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = [v5 debugDescription];
    v13 = sub_266E4651C();
    v15 = v14;

    v16 = sub_266E2B0EC(v13, v15, &v20);

    *(v8 + 14) = v16;
    OUTLINED_FUNCTION_37(&dword_266E28000, v17, v18, "Posting %s: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  v19 = *(v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher), *(v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher + 24));
  sub_266E460AC();
  OUTLINED_FUNCTION_62();
}

uint64_t sub_266E43E38()
{
  sub_266E2BE40(v0 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentSessionId, &qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_34_1(OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId);

  sub_266E2BE40(v0 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_sessionUserId, &qword_2800E8098, &qword_266E479F0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher));
  v1 = *(v0 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_serviceHelper);
  swift_unknownObjectRelease();
  sub_266E2BE40(v0 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse, &qword_2800E83A8, &qword_266E479C8);
  OUTLINED_FUNCTION_34_1(OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);

  return v0;
}

uint64_t sub_266E43EF0()
{
  sub_266E43E38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for GestureOutputSubmitter()
{
  result = qword_281320EC8;
  if (!qword_281320EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E43F9C()
{
  sub_266E44110(319, &qword_281320F18, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_266E44110(319, &qword_281320EF0, MEMORY[0x277D5D298]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_266E44110(319, qword_281320BE8, type metadata accessor for GestureResponse);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_266E44110(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_266E4668C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_266E44164()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E8400, &unk_266E47A10);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266E441CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83A8, &qword_266E479C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E4423C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E442A0(uint64_t a1)
{
  v2 = type metadata accessor for GestureResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266E44314()
{
  result = qword_2800E83D0;
  if (!qword_2800E83D0)
  {
    sub_266E4622C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E83D0);
  }

  return result;
}

uint64_t sub_266E4436C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_266E44418()
{
  result = qword_2800E83F0;
  if (!qword_2800E83F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E83F0);
  }

  return result;
}

uint64_t sub_266E4445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 != a3 || a2 != a4)
    {
      return sub_266E4673C() & 1;
    }

    return 1;
  }

  return v4;
}

uint64_t sub_266E444B8(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266E4651C();

  return v3;
}

uint64_t sub_266E44528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return sub_266E464FC();
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return sub_266E42840(v0);
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return sub_266E4436C(v2, v4 + v3, v0, v1);
}

void sub_266E446DC(void *a1)
{
  v2 = v1;
  v4 = sub_266E4626C();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_2();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v16 = sub_266E4640C();
  __swift_project_value_buffer(v16, qword_281320F58);
  v17 = a1;
  v18 = sub_266E463FC();
  v19 = sub_266E465BC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_21();
    v34 = v4;
    v21 = v20;
    v33[0] = OUTLINED_FUNCTION_23_0();
    v35 = v33[0];
    *v21 = 136315138;
    v22 = [v17 debugDescription];
    v23 = sub_266E4651C();
    v33[1] = v17;
    v24 = v23;
    v25 = v15;
    v26 = v12;
    v27 = v2;
    v29 = v28;

    v30 = sub_266E2B0EC(v24, v29, &v35);
    v2 = v27;
    v12 = v26;
    v15 = v25;

    *(v21 + 4) = v30;
    _os_log_impl(&dword_266E28000, v18, v19, "Handling StoppedListeningForSpeechContinuationMessage: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33[0]);
    OUTLINED_FUNCTION_15_1();
    v4 = v34;
    OUTLINED_FUNCTION_14_0();
  }

  sub_266E4603C();
  (*(v7 + 104))(v12, *MEMORY[0x277D5D280], v4);
  v31 = sub_266E35708(v15, v12);
  v32 = *(v7 + 8);
  v32(v12, v4);
  v32(v15, v4);
  if (v31)
  {
    if (*(v2 + qword_281320D00))
    {
      sub_266E2D4E8(2);
    }
  }
}

void sub_266E44974(void *a1)
{
  v2 = v1;
  if (qword_281320AA0 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_3_0();
  }

  v4 = sub_266E4640C();
  __swift_project_value_buffer(v4, qword_281320F58);
  v5 = a1;
  v6 = sub_266E463FC();
  v7 = sub_266E465BC();

  v27 = v2;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_21();
    v9 = OUTLINED_FUNCTION_23_0();
    v29 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = sub_266E4651C();
    v13 = v12;

    v14 = sub_266E2B0EC(v11, v13, &v29);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_266E28000, v6, v7, "Handling TRPCandidateRequestMessage: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_15_1();
  }

  a1 = sub_266E45DEC();
  v15 = 0;
  v16 = a1[2];
  v17 = (a1 + 4);
  v2 = &v29;
  while (1)
  {
    if (v16 == v15)
    {

      return;
    }

    if (v15 >= a1[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_266E4436C(v17, &v29, &qword_2800E8410, &unk_266E47A50);
    v18 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    if ([v18 speechEvent])
    {
      break;
    }

    ++v15;
    v17 += 48;
  }

  v19 = v18;
  v20 = sub_266E463FC();
  v21 = sub_266E465BC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_21();
    v23 = OUTLINED_FUNCTION_23_0();
    v28 = v23;
    *v22 = 136315138;
    [v19 speechEvent];
    type metadata accessor for AFSpeechEvent(0);
    v24 = sub_266E4652C();
    v26 = sub_266E2B0EC(v24, v25, &v28);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_266E28000, v20, v21, "TCUPackage with speech event %s received, assuming that user replied with speech", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_14_0();
  }

  if (*(v27 + qword_281320D00))
  {
    sub_266E2D4E8(2);
  }
}

void sub_266E44C68(void *a1)
{
  v2 = v1;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v4 = sub_266E4640C();
  __swift_project_value_buffer(v4, qword_281320F58);
  v5 = a1;
  v6 = sub_266E463FC();
  v7 = sub_266E465BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_21();
    v9 = OUTLINED_FUNCTION_23_0();
    v18 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = sub_266E4651C();
    v13 = v12;

    v14 = sub_266E2B0EC(v11, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_266E28000, v6, v7, "Handling NLResultCandidateMessage: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_14_0();
  }

  if ((AFDeviceSupportsMedoc() & 1) == 0)
  {
    v15 = sub_266E463FC();
    v16 = sub_266E465BC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_266E28000, v15, v16, "Device doesn't support Medoc, assuming the NLResultCandidateMessage is for an LAS speech request", v17, 2u);
      OUTLINED_FUNCTION_14_0();
    }

    if (*(v2 + qword_281320D00))
    {
      sub_266E2D4E8(2);
    }
  }
}

uint64_t sub_266E44FA0()
{
  v1 = v0 + qword_281320FC0;

  return sub_266E31EC0(v1);
}

uint64_t sub_266E44FE0()
{
  result = type metadata accessor for EventDeduper(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_266E450A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266E45164()
{
  v0 = sub_266E4640C();
  __swift_allocate_value_buffer(v0, qword_281320F58);
  OUTLINED_FUNCTION_0_2();
  sub_266E4667C();
  return sub_266E4641C();
}

uint64_t sub_266E451E8()
{
  v0 = sub_266E4640C();
  __swift_allocate_value_buffer(v0, qword_281320F28);
  OUTLINED_FUNCTION_0_2();
  sub_266E4667C();
  return sub_266E4641C();
}

uint64_t sub_266E45268()
{
  v0 = sub_266E4640C();
  __swift_allocate_value_buffer(v0, qword_281320F40);
  OUTLINED_FUNCTION_0_2();
  sub_266E4667C();
  return sub_266E4641C();
}

void static SignpostLogger.begin(_:enableTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    sub_266E45760(a1, a2, a3, a5, a6);
  }

  else
  {
    (*(a6 + 24))(a1, a2, a3, 0, 0, 256, 0, 0, a5, a6);
  }
}

void static SignpostLogger.begin(name:parameterOverrideOptions:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8);
  v12(a9, a10);
  sub_266E463CC();
  if ((a6 & 0x100) != 0 || !a8)
  {
    sub_266E4663C();
    v16 = (v12)(a9, a10);
    OUTLINED_FUNCTION_1_1();
    sub_266E463BC();
  }

  else
  {

    sub_266E4663C();
    v13 = (v12)(a9, a10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8428, qword_266E47A90);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_266E47A80;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_266E4585C();
    *(v14 + 32) = a7;
    *(v14 + 40) = a8;
    OUTLINED_FUNCTION_1_1();
    sub_266E463AC();
  }
}

void static SignpostLogger.end(_:_:)()
{
  sub_266E4662C();
  v0 = OUTLINED_FUNCTION_2_2();
  v2 = v1(v0);
  OUTLINED_FUNCTION_1_1();
  sub_266E463BC();
}

uint64_t static SignpostLogger.event(_:)()
{
  v0 = sub_266E463EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266E4664C();
  v5 = OUTLINED_FUNCTION_2_2();
  v7 = v6(v5);
  sub_266E463DC();
  OUTLINED_FUNCTION_1_1();
  sub_266E463BC();

  return (*(v1 + 8))(v4, v0);
}

void sub_266E45760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  v7(a4, a5);
  sub_266E463CC();
  sub_266E4663C();
  v8 = (v7)(a4, a5);
  sub_266E463AC();
}

unint64_t sub_266E4585C()
{
  result = qword_2800E8430;
  if (!qword_2800E8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8430);
  }

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

unint64_t sub_266E45988()
{
  result = qword_281320A38;
  if (!qword_281320A38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281320A38);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_0_2()
{
  __swift_project_value_buffer(v0, v1);

  return sub_266E45988();
}