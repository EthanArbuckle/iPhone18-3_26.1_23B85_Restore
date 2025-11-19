id ThumbnailsBlastDoorInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ThumbnailsBlastDoorInterface.init()()
{
  v14 = sub_29EC29D8C();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x2A1C7C4A8]();
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_29EC29D7C() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v5 = *(*(sub_29EC29C3C() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v6 = sub_29EC29C7C();
  v13[1] = "P";
  v13[2] = v6;
  v7 = *MEMORY[0x29EDBFE08];
  sub_29EC28F28(0, &qword_2A188F190, 0x29EDCA548);
  v8 = v7;
  sub_29EC29C2C();
  v17 = MEMORY[0x29EDCA190];
  sub_29EC29818(&qword_2A188F198, MEMORY[0x29EDCA288]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1A0, &qword_29EC2A110);
  sub_29EC288DC();
  sub_29EC29DBC();
  (*(v0 + 104))(v3, *MEMORY[0x29EDCA2A8], v14);
  sub_29EC29D9C();
  v9 = sub_29EC29C4C();
  v10 = v15;
  *&v15[OBJC_IVAR___ThumbnailsBlastDoorInterfaceInternal_bd] = v9;
  v11 = type metadata accessor for ThumbnailsBlastDoorInterface();
  v16.receiver = v10;
  v16.super_class = v11;
  return objc_msgSendSuper2(&v16, sel_init);
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

unint64_t sub_29EC288DC()
{
  result = qword_2A188F1A8;
  if (!qword_2A188F1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A188F1A0, &qword_29EC2A110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F1A8);
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

uint64_t sub_29EC289D0(uint64_t a1, float a2, float a3)
{
  v39 = a1;
  v50 = a2;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1B8, &qword_29EC2A118) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v48 = &v36 - v6;
  v49 = sub_29EC29CBC();
  v37 = *(v49 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8]();
  v47 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_29EC29D5C() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29EC29D3C();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8]();
  v41 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29EC29C9C();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8]();
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EC29D6C();
  sub_29EC28F28(0, &qword_2A188F1C0, 0x29EDCA970);
  v18 = sub_29EC29DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1C8, &unk_29EC2A120);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29EC2A100;
  v53 = a2;
  v54 = 0;
  v20 = sub_29EC29D1C();
  v22 = v21;
  v23 = MEMORY[0x29EDC99B0];
  *(v19 + 56) = MEMORY[0x29EDC99B0];
  v24 = sub_29EC28F70();
  *(v19 + 64) = v24;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v51 = a3;
  v52 = 0;
  v25 = sub_29EC29D1C();
  *(v19 + 96) = v23;
  *(v19 + 104) = v24;
  *(v19 + 72) = v25;
  *(v19 + 80) = v26;
  sub_29EC29C1C();

  if ((LODWORD(v50) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2 >= 9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_29EC29C8C();
  sub_29EC29BDC();
  v27 = v40;
  sub_29EC29D4C();
  if (!v27)
  {
    v28 = v41;
    sub_29EC29D2C();
    v29 = *(v44 + OBJC_IVAR___ThumbnailsBlastDoorInterfaceInternal_bd);
    v30 = sub_29EC29D0C();
    v31 = v48;
    (*(*(v30 - 8) + 56))(v48, 1, 1, v30);
    sub_29EC29818(&qword_2A188F1D8, MEMORY[0x29EDBFDF0]);
    v32 = v47;
    v33 = v49;
    sub_29EC29C5C();
    sub_29EC28FC4(v31);
    v34 = sub_29EC29CAC();
    (*(v37 + 8))(v32, v33);
    (*(v45 + 8))(v28, v46);
    (*(v42 + 8))(v17, v43);
    return v34;
  }

LABEL_9:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_29EC28F28(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_29EC28F70()
{
  result = qword_2A188F1D0;
  if (!qword_2A188F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F1D0);
  }

  return result;
}

uint64_t sub_29EC28FC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1B8, &qword_29EC2A118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EC291AC(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v7 = sub_29EC29C0C();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8]();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1B8, &qword_29EC2A118) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v13 = &v28 - v12;
  v14 = *(*(sub_29EC29D5C() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v15 = sub_29EC29D3C();
  v31 = *(v15 - 8);
  v32 = v15;
  v16 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8]();
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(sub_29EC29CDC() - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x2A1C7C4A8]();
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.2234e18)
  {
    v28 = v21;
    v29 = v7;
    sub_29EC29CCC();
    sub_29EC29BDC();
    sub_29EC29D4C();
    sub_29EC29D2C();
    v24 = *(v30 + OBJC_IVAR___ThumbnailsBlastDoorInterfaceInternal_bd);
    sub_29EC29CFC();
    v25 = sub_29EC29D0C();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    sub_29EC29BFC();
    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = v33;
    sub_29EC29818(&qword_2A188F1E0, MEMORY[0x29EDBFE00]);

    sub_29EC29C6C();

    (*(v34 + 8))(v10, v29);
    sub_29EC28FC4(v13);
    (*(v31 + 8))(v18, v32);
    return (*(v19 + 8))(v23, v28);
  }

LABEL_7:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_29EC2961C(uint64_t a1, void (*a2)(void *, void *))
{
  v4 = sub_29EC29CFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1E8, &qword_29EC2A180) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v11 = (&v14 - v10);
  sub_29EC29B4C(a1, &v14 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    MEMORY[0x29EDAD3D0](*v11);
    a2(0, v12);
  }

  else
  {
    (*(v5 + 32))(v8, v11, v4);
    v13 = sub_29EC29CEC();
    a2(v13, 0);

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_29EC297D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EC29818(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29EC299C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_29EC29BBC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id ThumbnailsBlastDoorInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailsBlastDoorInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29EC29B0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EC29B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1E8, &qword_29EC2A180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}