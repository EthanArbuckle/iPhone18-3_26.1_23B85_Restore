uint64_t sub_2658E07A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26596A2AC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2658E07CC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2658E080C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2658E084C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C70, &qword_265974180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2658E08B8(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_26596A20C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26596A22C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 specifier];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 target];

    if (v20)
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v48 = [v21 navigationItem];
        v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        v23 = objc_opt_self();
        v46[1] = a3;
        v24 = v23;
        v25 = sub_26596A27C();
        v46[0] = a2;
        v26 = v25;
        v27 = [v24 preferredFontForTextStyle_];

        [v22 setFont_];
        v52 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029BB8, &qword_265973BD8);
        v51 = v13;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_265973B50;
        v49 = v20;
        v29 = *MEMORY[0x277D740C0];
        *(inited + 32) = *MEMORY[0x277D740C0];
        v30 = objc_opt_self();
        v50 = v9;
        v31 = v30;
        v32 = v29;
        v33 = [v31 labelColor];
        v34 = [v33 colorWithAlphaComponent_];
        v47 = v14;
        v35 = v34;

        *(inited + 64) = sub_2658E2188(0, &qword_280029BC0, 0x277D75348);
        *(inited + 40) = v35;
        sub_2658E1F94(inited, &qword_280029BD8, &qword_265973BE8, &qword_280029BC8, &qword_265973BE0);
        swift_setDeallocating();
        sub_2658E21D0(inited + 32);
        v36 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v37 = sub_26596A27C();
        type metadata accessor for Key(0);
        sub_2658E20F8(&qword_280029BD0, type metadata accessor for Key);
        v38 = sub_26596A24C();

        v39 = [v36 initWithString:v37 attributes:v38];

        v40 = v52;
        [v52 setAttributedText_];

        sub_2658E2188(0, &qword_280029B98, 0x277D85C78);
        v41 = sub_26596A2FC();
        v42 = swift_allocObject();
        v43 = v48;
        *(v42 + 16) = v48;
        *(v42 + 24) = v40;
        aBlock[4] = sub_2658E20D0;
        aBlock[5] = v42;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2658E0EE4;
        aBlock[3] = &block_descriptor;
        v44 = _Block_copy(aBlock);
        v45 = v43;

        sub_26596A21C();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_2658E20F8(&qword_280029BA0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029BA8, &qword_265973BD0);
        sub_2658E2140(&qword_280029BB0, &qword_280029BA8, &qword_265973BD0);
        sub_26596A33C();
        MEMORY[0x2667638E0](0, v17, v12, v44);

        _Block_release(v44);
        swift_unknownObjectRelease();

        (*(v50 + 8))(v12, v8);
        (*(v47 + 8))(v17, v51);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_2658E0EE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_2658E0F28()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_26596A00C();
  sub_2658E1F94(MEMORY[0x277D84F90], &qword_280029B88, &qword_265973BC0, &qword_280029B90, &qword_265973BC8);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2658E20F8(&qword_280029B80, type metadata accessor for OpenExternalURLOptionsKey);
  v2 = sub_26596A24C();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

id sub_2658E10B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_26596A27C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_2658E12E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2658E131C(uint64_t a1, id *a2)
{
  result = sub_26596A28C();
  *a2 = 0;
  return result;
}

uint64_t sub_2658E1394(uint64_t a1, id *a2)
{
  v3 = sub_26596A29C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2658E1414@<X0>(uint64_t *a1@<X8>)
{
  sub_26596A2AC();
  v2 = sub_26596A27C();

  *a1 = v2;
  return result;
}

uint64_t sub_2658E1458()
{
  v1 = *v0;
  v2 = sub_26596A2AC();
  v3 = MEMORY[0x2667638B0](v2);

  return v3;
}

uint64_t sub_2658E1494()
{
  v1 = *v0;
  sub_26596A2AC();
  sub_26596A2CC();
}

uint64_t sub_2658E14E8()
{
  v1 = *v0;
  sub_26596A2AC();
  sub_26596A37C();
  sub_26596A2CC();
  v2 = sub_26596A38C();

  return v2;
}

uint64_t sub_2658E155C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26596A2AC();
  v6 = v5;
  if (v4 == sub_26596A2AC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26596A36C();
  }

  return v9 & 1;
}

uint64_t sub_2658E15E4(uint64_t a1)
{
  v2 = sub_2658E20F8(&qword_280029BD0, type metadata accessor for Key);
  v3 = sub_2658E20F8(&qword_280029C20, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2658E16A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26596A27C();

  *a2 = v5;
  return result;
}

uint64_t sub_2658E16E8(uint64_t a1)
{
  v2 = sub_2658E20F8(&qword_280029B80, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_2658E20F8(&qword_280029C28, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_2658E17A4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26596A2AC();
  sub_26596A37C();
  sub_26596A2CC();
  v4 = sub_26596A38C();

  return sub_2658E1834(a1, v4);
}

unint64_t sub_2658E1834(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26596A2AC();
      v9 = v8;
      if (v7 == sub_26596A2AC() && v9 == v10)
      {
        break;
      }

      v12 = sub_26596A36C();

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

uint64_t sub_2658E1938()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029B60, &qword_265973BB0);
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v21 - v4;
  v6 = *(*(sub_26596A05C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = *(*(sub_26596A26C() - 8) + 64);
  MEMORY[0x28223BE20]();
  [v1 setSelectionStyle_];
  v8 = [objc_opt_self() currentDevice];
  [v8 sf_isChinaRegionCellularDevice];

  sub_26596A25C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  sub_26596A04C();
  v12 = sub_26596A2BC();
  v14 = v13;
  sub_26596A25C();
  v15 = [v10 bundleForClass_];
  sub_26596A04C();
  v25[0] = sub_26596A2BC();
  v25[1] = v16;
  v17 = swift_allocObject();
  v17[2] = v1;
  v17[3] = v12;
  v17[4] = v14;
  v18 = MEMORY[0x28223BE20]();
  *(&v21 - 6) = v12;
  *(&v21 - 5) = v14;
  *(&v21 - 4) = v25;
  *(&v21 - 3) = sub_2658E1E28;
  *(&v21 - 2) = v18;
  v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029B68, &qword_265973BB8);
  sub_2658E2140(&qword_280029B70, &qword_280029B68, &qword_265973BB8);
  sub_26596A13C();

  sub_26596A16C();
  v19 = v23;
  v24[3] = v23;
  v24[4] = sub_2658E2140(&qword_280029B78, &qword_280029B60, &qword_265973BB0);
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_26596A12C();
  (*(v22 + 8))(v5, v19);
  MEMORY[0x2667638C0](v24);
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

uint64_t sub_2658E1E34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *v3;
  v7 = v3[1];

  return sub_26596A23C();
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_2658E1F94(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_26596A34C();
    v10 = a1 + 32;

    while (1)
    {
      sub_2658E2298(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_2658E17A4(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_2658E20C0(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

_OWORD *sub_2658E20C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2658E20F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2658E2140(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2658E2188(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2658E21D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029BC8, &qword_265973BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2658E224C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2658E2298(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2658E24D8(void *a1)
{
  v2 = v1;
  v4 = sub_26596A03C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [a1 identifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_26596A2AC();
    v13 = v12;
  }

  else
  {
    sub_26596A02C();
    v11 = sub_26596A01C();
    v13 = v14;
    (*(v5 + 8))(v8, v4);
  }

  (*(*v2 + 200))(v11, v13);
  v15 = [a1 name];
  if (v15)
  {
    v16 = v15;
    v17 = sub_26596A2AC();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  (*(*v2 + 248))(v17, v19);
  if ([a1 propertyForKey_])
  {
    sub_26596A32C();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    sub_2658E3CFC(v25);
    goto LABEL_14;
  }

  if (!swift_dynamicCast())
  {
LABEL_14:
    v20 = 1;
    return (*(*v2 + 296))(v20);
  }

  v20 = v22[15];
  return (*(*v2 + 296))(v20);
}

void (*sub_2658E2754(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_2658E27A0;
}

void sub_2658E27A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    sub_2658E24D8(v4);
    v6 = *(v3 + 16);
    *(v3 + 16) = v4;

    v5 = v6;
  }

  else
  {
    sub_2658E24D8(*a1);
    v5 = *(v3 + 16);
    *(v3 + 16) = v2;
  }
}

id sub_2658E2810()
{
  swift_getKeyPath();
  (*(*v0 + 320))();

  v1 = v0[2];

  return v1;
}

uint64_t sub_2658E2884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

void sub_2658E2924(void *a1)
{
  v2 = v1;
  v4 = v1[2];
  sub_2658E2A70();
  v5 = v4;
  v6 = sub_26596A31C();

  if (v6)
  {
    sub_2658E24D8(a1);
    v7 = v2[2];
    v2[2] = a1;
  }

  else
  {
    swift_getKeyPath();
    v8 = MEMORY[0x28223BE20]();
    v9 = v2;
    v10 = a1;
    (*(*v2 + 328))(v8, sub_2658E2ABC);
  }
}

unint64_t sub_2658E2A70()
{
  result = qword_280029C30;
  if (!qword_280029C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280029C30);
  }

  return result;
}

void sub_2658E2ABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2658E24D8(v2);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void (*sub_2658E2B08(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC18SettingsCellularUI33SettingsCellularButtonSpinnerCell22ButtonContentViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_2658E5470(&qword_280029C38, type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel);
  sub_26596A09C();

  v4[7] = sub_2658E2754(v4);
  return sub_2658E2C58;
}

uint64_t type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel()
{
  result = qword_28002AD50;
  if (!qword_28002AD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2658E2D00()
{
  swift_getKeyPath();
  (*(*v0 + 320))();

  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  return v1;
}

uint64_t sub_2658E2D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2658E2DDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 200);

  return v4(v2, v3);
}

uint64_t sub_2658E2E44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[3] == a1 && v2[4] == a2;
  if (v5 || (v6 = v2[4], (sub_26596A36C() & 1) != 0))
  {
    v2[3] = a1;
    v2[4] = a2;
  }

  else
  {
    swift_getKeyPath();
    v8 = MEMORY[0x28223BE20]();
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 328))(v8, sub_2658E2F78);
  }
}

uint64_t sub_2658E2F78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 32);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
}

void (*sub_2658E2FE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC18SettingsCellularUI33SettingsCellularButtonSpinnerCell22ButtonContentViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_2658E5470(&qword_280029C38, type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel);
  sub_26596A09C();

  v4[7] = sub_2658E2CB0();
  return sub_2658E3130;
}

uint64_t sub_2658E318C()
{
  swift_getKeyPath();
  (*(*v0 + 320))();

  swift_beginAccess();
  v1 = v0[5];
  v2 = v0[6];

  return v1;
}

uint64_t sub_2658E321C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2658E3268(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 248);

  return v4(v2, v3);
}

uint64_t sub_2658E32D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[6];
  if (v5)
  {
    if (a2)
    {
      if (v2[5] == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = v2[6];
      if (sub_26596A36C())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    v2[5] = a1;
    v2[6] = a2;
  }

  swift_getKeyPath();
  v9 = MEMORY[0x28223BE20]();
  v10 = v2;
  v11 = a1;
  v12 = a2;
  (*(*v2 + 328))(v9, sub_2658E3414);
}

uint64_t sub_2658E3414()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 48);
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
}

void (*sub_2658E347C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC18SettingsCellularUI33SettingsCellularButtonSpinnerCell22ButtonContentViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_2658E5470(&qword_280029C38, type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel);
  sub_26596A09C();

  v4[7] = sub_2658E313C();
  return sub_2658E35CC;
}

uint64_t sub_2658E362C()
{
  swift_getKeyPath();
  (*(*v0 + 320))();

  swift_beginAccess();
  return v0[56];
}

uint64_t sub_2658E36AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2658E3754(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[56] == v2)
  {
    v1[56] = v2;
  }

  else
  {
    swift_getKeyPath();
    v4 = MEMORY[0x28223BE20]();
    v5 = v1;
    v6 = v2;
    (*(*v1 + 328))(v4, sub_2658E3850);
  }

  return result;
}

uint64_t sub_2658E3850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

void (*sub_2658E38A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC18SettingsCellularUI33SettingsCellularButtonSpinnerCell22ButtonContentViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_2658E5470(&qword_280029C38, type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel);
  sub_26596A09C();

  v4[7] = sub_2658E35D8();
  return sub_2658E39F4;
}

void sub_2658E3A00(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_26596A08C();

  free(v1);
}

uint64_t sub_2658E3A94(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2658E3AD4(a1);
  return v5;
}

uint64_t sub_2658E3AD4(void *a1)
{
  v2 = v1;
  v4 = sub_26596A03C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  sub_26596A0AC();
  *(v2 + 16) = a1;
  v9 = a1;
  v10 = [v9 identifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_26596A2AC();
    v14 = v13;
  }

  else
  {
    sub_26596A02C();
    v12 = sub_26596A01C();
    v14 = v15;
    (*(v5 + 8))(v8, v4);
  }

  *(v2 + 24) = v12;
  *(v2 + 32) = v14;
  v16 = [v9 name];
  if (v16)
  {
    v17 = v16;
    v18 = sub_26596A2AC();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = *(v2 + 48);

  *(v2 + 40) = v18;
  *(v2 + 48) = v20;
  if ([v9 propertyForKey_])
  {
    sub_26596A32C();

    swift_unknownObjectRelease();
  }

  else
  {

    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (!*(&v26 + 1))
  {
    sub_2658E3CFC(v27);
    goto LABEL_14;
  }

  if (!swift_dynamicCast())
  {
LABEL_14:
    v22 = 1;
    goto LABEL_15;
  }

  v22 = v24[15];
LABEL_15:
  *(v2 + 56) = v22;
  return v2;
}

uint64_t sub_2658E3CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C40, &qword_265973FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2658E3EA4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtCC18SettingsCellularUI33SettingsCellularButtonSpinnerCell22ButtonContentViewModel___observationRegistrar;
  v4 = sub_26596A0BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_2658E3F58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v65 = sub_26596A11C();
  v63 = *(v65 - 8);
  v5 = *(v63 + 64);
  (MEMORY[0x28223BE20])();
  v62 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26596A15C();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  (MEMORY[0x28223BE20])();
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C68, &qword_265974178);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v54 = &v47 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C70, &qword_265974180);
  v13 = *(*(v61 - 8) + 64);
  v14 = (MEMORY[0x28223BE20])();
  v57 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v47 - v16;
  v17 = a1;
  v66 = a1;
  v67 = a2;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C78, &qword_265974188);
  v19 = sub_26596A1FC();
  v20 = (*(*v73 + 240))(v19);
  v22 = v21;

  if (v22)
  {
    v66 = v20;
    v67 = v22;
    sub_2658E5324();
    v23 = sub_26596A17C();
    v25 = v24;
    v52 = v26;
    v28 = v27 & 1;
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v28 = 0;
    v52 = 0;
  }

  v29 = sub_26596A1DC();
  v50 = v29;
  KeyPath = swift_getKeyPath();
  v51 = KeyPath;
  v49 = v17;
  v66 = v17;
  v67 = v18;
  v48 = v18;
  v31 = sub_26596A1FC();
  v32 = (*(*v73 + 288))(v31);

  v33 = 0.5;
  v66 = v23;
  v67 = v25;
  if (v32)
  {
    v33 = 1.0;
  }

  v34 = v52;
  v68 = v28;
  v69 = v52;
  v70 = KeyPath;
  v71 = v29;
  v72 = v33;
  v35 = v53;
  sub_26596A14C();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C80, &qword_2659741C0);
  v37 = sub_2658E5110();
  v38 = v54;
  sub_26596A1CC();
  (*(v55 + 8))(v35, v56);
  sub_2658E52D0(v23, v25, v28, v34);

  v66 = v49;
  v67 = v48;
  v39 = sub_26596A1FC();
  (*(*v73 + 192))(v39);

  v66 = v36;
  v67 = v37;
  swift_getOpaqueTypeConformance2();
  v40 = v57;
  v41 = v60;
  sub_26596A1AC();

  (*(v59 + 8))(v38, v41);
  v42 = v62;
  sub_26596A10C();
  v43 = v58;
  sub_26596A0CC();
  v44 = *(v63 + 8);
  v45 = v65;
  v44(v42, v65);
  sub_2658E084C(v40);
  sub_26596A0FC();
  sub_26596A0CC();
  v44(v42, v45);
  return sub_2658E084C(v43);
}

id sub_2658E4514()
{
  v1 = OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2658E458C(void *a1)
{
  v2 = v1;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  result = objc_msgSendSuper2(&v22, sel_refreshCellContentsWithSpecifier_, a1);
  if (!a1)
  {
    __break(1u);
    return result;
  }

  if ([a1 propertyForKey_])
  {
    sub_26596A32C();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v17 = v20;
  v18 = v21;
  if (!*(&v21 + 1))
  {
    sub_2658E3CFC(&v17);
LABEL_10:
    v7 = sub_2658E4514();
    [v7 stopAnimating];

    v6 = 0;
    goto LABEL_11;
  }

  if (!swift_dynamicCast() || (v16 & 1) != 0)
  {
    goto LABEL_10;
  }

  v5 = sub_2658E4514();
  [v5 startAnimating];

  v6 = *&v2[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator];
LABEL_11:
  [v2 setAccessoryView_];
  v8 = OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel;
  v9 = *&v2[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel];
  if (v9)
  {
    v10 = *(*v9 + 152);

    v10(a1);
  }

  else
  {
    v11 = type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    sub_2658E3AD4(a1);
    v15 = *&v2[v8];
    *&v2[v8] = v14;

    *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C50, &qword_265973FF8);
    v19 = sub_2658E2140(&qword_280029C58, &qword_280029C50, &qword_265973FF8);
    __swift_allocate_boxed_opaque_existential_1(&v17);
    sub_2658E487C();
    sub_26596A13C();
    MEMORY[0x2667638C0](&v17);
  }
}

uint64_t sub_2658E481C@<X0>(void *a1@<X8>)
{
  type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel();

  result = sub_26596A1EC();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_2658E487C()
{
  result = qword_28002ACC8[0];
  if (!qword_28002ACC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28002ACC8);
  }

  return result;
}

id SettingsCellularButtonSpinnerCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_26596A27C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id SettingsCellularButtonSpinnerCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel] = 0;
  *&v4[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator] = 0;
  if (a3)
  {
    v7 = sub_26596A27C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id SettingsCellularButtonSpinnerCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_26596A27C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id SettingsCellularButtonSpinnerCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel] = 0;
  *&v3[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator] = 0;
  if (a3)
  {
    v5 = sub_26596A27C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id SettingsCellularButtonSpinnerCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SettingsCellularButtonSpinnerCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel] = 0;
  *&v1[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SettingsCellularButtonSpinnerCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2658E4F40()
{
  result = sub_26596A0BC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2658E5008(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2658E5050(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2658E50B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26596A0DC();
  *a1 = result;
  return result;
}

uint64_t sub_2658E50E4(uint64_t *a1)
{
  v1 = *a1;

  return sub_26596A0EC();
}

unint64_t sub_2658E5110()
{
  result = qword_280029C88;
  if (!qword_280029C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280029C80, &qword_2659741C0);
    sub_2658E519C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280029C88);
  }

  return result;
}

unint64_t sub_2658E519C()
{
  result = qword_280029C90;
  if (!qword_280029C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280029C98, &qword_2659741C8);
    sub_2658E5254();
    sub_2658E2140(&qword_280029CB0, &qword_280029CB8, &qword_2659741D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280029C90);
  }

  return result;
}

unint64_t sub_2658E5254()
{
  result = qword_280029CA0;
  if (!qword_280029CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280029CA8, &qword_2659741D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280029CA0);
  }

  return result;
}

uint64_t sub_2658E52D0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2658E5314(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2658E5314(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2658E5324()
{
  result = qword_280029CC0;
  if (!qword_280029CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280029CC0);
  }

  return result;
}

unint64_t sub_2658E5378()
{
  result = qword_280029CC8;
  if (!qword_280029CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280029C70, &qword_265974180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280029C80, &qword_2659741C0);
    sub_2658E5110();
    swift_getOpaqueTypeConformance2();
    sub_2658E5470(&qword_280029CD0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280029CC8);
  }

  return result;
}

uint64_t sub_2658E5470(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2658E6870(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2658EE638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2658EF5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2658F3218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2658F3D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!qword_28156A5D0)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BA9F88;
    v8 = 0;
    qword_28156A5D0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_28156A5D0;
    if (qword_28156A5D0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A5D0;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_1 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28156A5D0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2658F5E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!qword_28156A6D0)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreAnalyticsLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BA9FC0;
    v8 = 0;
    qword_28156A6D0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_28156A6D0;
    if (qword_28156A6D0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A6D0;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_28156A6C8 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28156A6D0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2658FB034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2658FFC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26590090C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2659011B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265901EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265903D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCLLocationManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass;
  v7 = getCLLocationManagerClass_softClass;
  if (!getCLLocationManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke;
    v3[3] = &unk_279BA9F68;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265903E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCLCopyAppsUsingLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "CLCopyAppsUsingLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLCopyAppsUsingLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreLocationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BAA030;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = CoreLocationLibraryCore_frameworkLibrary;
    if (CoreLocationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

CTUIListLoadingGroup *__getCLLocationManagerClass_block_invoke(uint64_t a1)
{
  CoreLocationLibrary();
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(CTUIListLoadingGroup *)v3 initWithHostController:v4 groupSpecifier:v5, v6];
  }

  return result;
}

uint64_t PSIsDataRoamingOptionAvailable()
{
  v0 = +[PSUICoreTelephonyDataCache sharedInstance];
  v1 = [v0 isCellularDataEnabled];

  return v1;
}

uint64_t PSIsCDMARoamingOptionAvailable()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = _CTServerConnectionCreate();
  if (v1)
  {
    v2 = v1;
    _CTServerConnectionIsCDMAInternationalRoamingSettingAllowed();
    CFRelease(v2);
  }

  return 0;
}

uint64_t PSIsVoiceRoamingOptionAvailable()
{
  v0 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v1 = [v0 shouldShowVoiceRoamingSwitchForDefaultVoicePlan];

  return v1;
}

uint64_t PSIsDataRoamingEnabled()
{
  v0 = +[PSUICoreTelephonyDataCache sharedInstance];
  v1 = [v0 getInternationalDataAccessStatus];

  return v1;
}

uint64_t PSIsVoiceRoamingEnabled()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = _CTServerConnectionCreate();
  if (v1)
  {
    v2 = v1;
    _CTServerConnectionGetEnableOnlyHomeNetwork();
    CFRelease(v2);
  }

  return 1;
}

void PSSetVoiceRoamingEnabled()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = _CTServerConnectionCreate();
  if (v1)
  {
    v2 = v1;
    _CTServerConnectionSetEnableOnlyHomeNetwork();
    CFRelease(v2);
  }
}

uint64_t PSIsDataRoamingEnabledForService(void *a1)
{
  v1 = a1;
  v2 = +[PSUICoreTelephonyDataCache sharedInstance];
  v3 = [v2 getInternationalDataAccessStatus:v1];

  return v3;
}

void PSSetDataRoamingEnabled(uint64_t a1)
{
  CFPreferencesSetAppValue(@"DeferredSMSMessageCount", 0, @"com.apple.springboard");
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v2 = +[PSUICoreTelephonyDataCache sharedInstance];
  [v2 setInternationalDataAccessStatus:a1];
}

void PSSetDataRoamingEnabledForService(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[PSUICoreTelephonyDataCache sharedInstance];
  [v4 setInternationalDataAccessStatus:v3 status:a2];
}

void PSSetCDMARoamingEnabled()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = _CTServerConnectionCreate();
  if (v1)
  {
    v2 = v1;
    _CTServerConnectionSetCDMAInternationalRoaming();
    CFRelease(v2);
  }
}

uint64_t PSShouldIncludeMMSFooterNote()
{
  v0 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v1 = [v0 isMMSOnWhileRoamingForActiveDataPlan];

  return (CPCanSendMMS() != 0) & (v1 ^ 1u);
}

id PSDataRoamingSpecifiers(void *a1)
{
  v1 = MEMORY[0x277D3FAD8];
  v2 = MEMORY[0x277CCA8D8];
  v3 = a1;
  v4 = [v2 bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DATA_ROAMING_TOGGLE" value:&stru_287733598 table:@"Cellular"];
  v6 = [v1 preferenceSpecifierNamed:v5 target:v3 set:sel_setDataRoamingEnabled_specifier_ get:sel_getDataRoamingStatus_ detail:0 cell:6 edit:0];

  [v6 setIdentifier:@"DATA_ROAMING"];
  v7 = MEMORY[0x277CCABB0];
  v8 = +[PSUICoreTelephonyDataCache sharedInstance];
  v9 = +[SettingsCellularUtils singleSIMUIServiceDescriptor];
  v10 = [v7 numberWithInt:{objc_msgSend(v8, "hideDataRoaming:", v9) ^ 1}];
  [v6 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];

  v11 = [MEMORY[0x277CBEB18] arrayWithObjects:{v6, 0}];

  return v11;
}

id PSCDMARoamingSpecifiers(void *a1)
{
  v1 = MEMORY[0x277D3FAD8];
  v2 = a1;
  v3 = [v1 groupSpecifierWithName:0];
  [v3 setProperty:@"CDMA_ROAMING_GROUP" forKey:*MEMORY[0x277D3FFB8]];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CDMA_ROAMING_EXPLANATION" value:&stru_287733598 table:@"Cellular"];
  [v3 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 selectedPlanItem];
  LODWORD(v4) = [v7 isBackedByCellularPlan];

  v8 = MEMORY[0x277D3FAD8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CDMA_ROAMING_TOGGLE" value:&stru_287733598 table:@"Cellular"];
  v11 = [v8 preferenceSpecifierNamed:v10 target:v2 set:sel_setCDMARoamingEnabled_specifier_ get:sel_getCDMARoamingStatus_ detail:0 cell:6 edit:0];

  [v11 setIdentifier:@"CDMA_ROAMING"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v4 ^ 1];
  [v11 setProperty:v12 forKey:*MEMORY[0x277D3FF38]];

  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:{v3, v11, 0}];

  return v13;
}

id PSRoamingSubMenuSpecifiers(void *a1)
{
  v1 = MEMORY[0x277D3FAD8];
  v2 = a1;
  v3 = [v1 emptyGroupSpecifier];
  v4 = MEMORY[0x277D3FAD8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ROAMING_LINK" value:&stru_287733598 table:@"Cellular"];
  v7 = [v4 preferenceSpecifierNamed:v6 target:v2 set:0 get:sel_roamingSettingsDescription_ detail:objc_opt_class() cell:2 edit:0];

  [v7 setIdentifier:@"ROAMING_LINK"];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:{v3, v7, 0}];

  return v8;
}

void sub_2659097B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLockdownModeManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28156A6F0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __LockdownModeLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BAA070;
    v7 = 0;
    qword_28156A6F0 = _sl_dlopen();
    v2 = v5[0];
    if (qword_28156A6F0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LockdownModeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  _MergedGlobals_63 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __LockdownModeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28156A6F0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26590A800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getCLLocationManagerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass_0;
  v7 = getCLLocationManagerClass_softClass_0;
  if (!getCLLocationManagerClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke_0;
    v3[3] = &unk_279BA9F68;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26590C0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26590C5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getCLCopyAppsUsingLocationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreLocationLibrary_0();
  result = dlsym(v2, "CLCopyAppsUsingLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLCopyAppsUsingLocationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreLocationLibrary_0()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BAA0F0;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v1 = v4[0];
    v0 = CoreLocationLibraryCore_frameworkLibrary_0;
    if (CoreLocationLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary_0;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

PSUISubscriptionContextMenusGroup *__getCLLocationManagerClass_block_invoke_0(uint64_t a1)
{
  CoreLocationLibrary_0();
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(PSUISubscriptionContextMenusGroup *)v3 initWithFactory:v4, v5];
  }

  return result;
}

void sub_26590ECC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265913C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2659140CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2659148BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265915898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PSAnalyticsSendEvent(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = _MergedGlobals_65;
  v8 = _MergedGlobals_65;
  if (!_MergedGlobals_65)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getAnalyticsSendEventSymbolLoc_block_invoke_1;
    v4[3] = &unk_279BA9F68;
    v4[4] = &v5;
    __getAnalyticsSendEventSymbolLoc_block_invoke_1(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    dlerror();
    v3 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v2(v1, MEMORY[0x277CBEC10]);
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!qword_28156A710)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreAnalyticsLibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BAA250;
    v8 = 0;
    qword_28156A710 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_28156A710;
    if (qword_28156A710)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A710;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_65 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28156A710 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MobileStoreUILibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!MobileStoreUILibraryCore_frameworkLibrary)
  {
    MobileStoreUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = MobileStoreUILibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MobileStoreUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileStoreUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getSUUIMetricsLaunchApplicationWithIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileStoreUILibrary();
  result = dlsym(v2, "SUUIMetricsLaunchApplicationWithIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_28156A718 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileStoreUILibrary()
{
  v0 = MobileStoreUILibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getSUUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileStoreUILibrary();
  result = dlsym(v2, "SUUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_28156A720 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_265918E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26591D3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

Class __getRemoteUIControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28156A740)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __RemoteUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BAA368;
    v7 = 0;
    qword_28156A740 = _sl_dlopen();
    v2 = v5[0];
    if (qword_28156A740)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("RemoteUIController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  _MergedGlobals_67 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RemoteUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28156A740 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MobileStoreUILibraryCore_0()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!MobileStoreUILibraryCore_frameworkLibrary_0)
  {
    MobileStoreUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = MobileStoreUILibraryCore_frameworkLibrary_0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MobileStoreUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileStoreUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSUUIItemOfferButtonClass_block_invoke(uint64_t a1)
{
  if (!MobileStoreUILibraryCore_0())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("SUUIItemOfferButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSUUIItemOfferButtonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = abort_report_np();
    return +[(PSUIDeviceEthernetState *)v4];
  }

  return result;
}

Class __getAPGuardClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28002AE48)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AppProtectionLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BAA3D0;
    v7 = 0;
    qword_28002AE48 = _sl_dlopen();
    v2 = v5[0];
    if (qword_28002AE48)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("APGuard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  _MergedGlobals_2 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AppProtectionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28002AE48 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2659230E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getCLLocationManagerClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass_1;
  v7 = getCLLocationManagerClass_softClass_1;
  if (!getCLLocationManagerClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke_1;
    v3[3] = &unk_279BA9F68;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26592895C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26592AC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v28 - 144), 8);
  _Unwind_Resume(a1);
}

void *__getCLCopyAppsUsingLocationSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = CoreLocationLibrary_1();
  result = dlsym(v2, "CLCopyAppsUsingLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLCopyAppsUsingLocationSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreLocationLibrary_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BAA5E0;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v1 = v4[0];
    v0 = CoreLocationLibraryCore_frameworkLibrary_1;
    if (CoreLocationLibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary_1;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

PSUIPlanPendingTransferDetailController *__getCLLocationManagerClass_block_invoke_1(uint64_t a1)
{
  CoreLocationLibrary_1();
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(PSUIPlanPendingTransferDetailController *)v3 init];
  }

  return result;
}

void sub_26592EA54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_265936744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCTCarrierSpaceClientClass_block_invoke(uint64_t a1)
{
  CTCarrierSpaceLibrary();
  result = objc_getClass("CTCarrierSpaceClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCTCarrierSpaceClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return CTCarrierSpaceLibrary();
  }

  return result;
}

uint64_t CTCarrierSpaceLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CTCarrierSpaceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CTCarrierSpaceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BAA748;
    v6 = 0;
    CTCarrierSpaceLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = CTCarrierSpaceLibraryCore_frameworkLibrary;
    if (CTCarrierSpaceLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = CTCarrierSpaceLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CTCarrierSpaceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CTCarrierSpaceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getkCTCarrierSpaceConnectionAccountIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CTCarrierSpaceLibrary();
  result = dlsym(v2, "kCTCarrierSpaceConnectionAccountIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTCarrierSpaceConnectionAccountIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_26593A44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26593BA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getCLLocationManagerClass_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28156A790)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreLocationLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BAA790;
    v7 = 0;
    qword_28156A790 = _sl_dlopen();
    v2 = v5[0];
    if (qword_28156A790)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  _MergedGlobals_72 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28156A790 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void PSAnalyticsSendEvent_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v5 = _MergedGlobals_1_3;
  v11 = _MergedGlobals_1_3;
  if (!_MergedGlobals_1_3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getAnalyticsSendEventSymbolLoc_block_invoke_2;
    v7[3] = &unk_279BA9F68;
    v7[4] = &v8;
    __getAnalyticsSendEventSymbolLoc_block_invoke_2(v7);
    v5 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v5)
  {
    dlerror();
    v6 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  v5(v3, v4);
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!qword_28156A620)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreAnalyticsLibraryCore_block_invoke_2;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BAA818;
    v8 = 0;
    qword_28156A620 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_28156A620;
    if (qword_28156A620)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A620;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_1_3 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28156A620 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26593E5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26593E76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26593F5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCTCarrierSpaceClientClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28156A630)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CTCarrierSpaceLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BAA858;
    v7 = 0;
    qword_28156A630 = _sl_dlopen();
    v2 = v5[0];
    if (qword_28156A630)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CTCarrierSpaceClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  _MergedGlobals_1_4 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CTCarrierSpaceLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28156A630 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!qword_28156A640)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreAnalyticsLibraryCore_block_invoke_3;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BAA870;
    v8 = 0;
    qword_28156A640 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_28156A640;
    if (qword_28156A640)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A640;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_28156A638 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28156A640 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getRemoteUIControllerClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28156A650)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __RemoteUILibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BAA888;
    v7 = 0;
    qword_28156A650 = _sl_dlopen();
    v2 = v5[0];
    if (qword_28156A650)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("RemoteUIController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_28156A648 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RemoteUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28156A650 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_265940970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265942014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265945398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26595271C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!qword_28156A660)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreAnalyticsLibraryCore_block_invoke_4;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BAAB10;
    v8 = 0;
    qword_28156A660 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_28156A660;
    if (qword_28156A660)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A660;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_1_5 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_28156A660 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id PSUIGetPlanSubscriptionStatus(unsigned int a1)
{
  if (a1 > 9)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_279BAABB0[a1];
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:v1 value:&stru_287733598 table:@"Cellular"];
  }

  return v3;
}

id PSUIFormatDataUsage(double a1, double a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D4D830] loggerWithCategory:@"PlanManagerCache"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "DataUsage: data: %@ bytes left for %@ seconds", buf, 0x16u);
  }

  v7 = [MEMORY[0x277D4D878] usageSizeString:a1];
  if (a2 <= 86400.0)
  {
    if (a2 <= 3600.0)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (a2 <= 0.0)
      {
        v17 = @"CELLULAR_PLAN_DATA_USAGE_%@_LEFT";
        goto LABEL_14;
      }
    }

    else
    {
      v8 = (a2 / 3600.0);
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v8 >= 2)
      {
        v11 = @"CELLULAR_PLAN_DATA_USAGE_%@_LEFT_FOR_%@_HOURS";
        goto LABEL_9;
      }
    }

    v17 = @"CELLULAR_PLAN_DATA_USAGE_%@_LEFT_FOR_ONE_HOUR";
  }

  else
  {
    v8 = (a2 / 86400.0);
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v8 >= 2)
    {
      v11 = @"CELLULAR_PLAN_DATA_USAGE_%@_LEFT_FOR_%@_DAYS";
LABEL_9:
      v12 = [v10 localizedStringForKey:v11 value:&stru_287733598 table:@"Cellular"];
      v13 = MEMORY[0x277CCABB8];
      v14 = [MEMORY[0x277CCABB0] numberWithInt:v8];
      v15 = [v13 localizedStringFromNumber:v14 numberStyle:0];
      v16 = [v9 stringWithFormat:v12, v7, v15];

      goto LABEL_15;
    }

    v17 = @"CELLULAR_PLAN_DATA_USAGE_%@_LEFT_FOR_ONE_DAY";
  }

LABEL_14:
  v12 = [v10 localizedStringForKey:v17 value:&stru_287733598 table:@"Cellular"];
  v16 = [v9 stringWithFormat:v12, v7];
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

id PSUIFormatPlanStatusForPlan(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 plan];

  if (v2)
  {
    v3 = [v1 plan];
    v4 = [v3 dataUsage];

    v5 = [v1 plan];
    if ([v5 status] || !v4)
    {
    }

    else
    {
      v6 = [v4 count];

      if (v6)
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v7 = v4;
        v8 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
        v9 = 0.0;
        v10 = 0.0;
        v11 = 0.0;
        if (v8)
        {
          v12 = v8;
          v13 = *v36;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v36 != v13)
              {
                objc_enumerationMutation(v7);
              }

              v15 = *(*(&v35 + 1) + 8 * i);
              [v15 dataCapacity];
              v11 = v11 + v16;
              [v15 dataUsed];
              v10 = v10 + v17;
            }

            v12 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v12);
        }

        if (v11 - v10 >= 0.0)
        {
          v9 = v11 - v10;
        }

        v18 = [v1 plan];
        [v18 timestamp];
        if (v19 > 0.0)
        {
          v20 = [v1 plan];
          [v20 billingEndDate];
          if (v21 <= 0.0)
          {
            v27 = PSUIFormatDataUsage(v9, 0.0);
          }

          else
          {
            v22 = [v1 plan];
            [v22 billingEndDate];
            v24 = v23;
            v25 = [v1 plan];
            [v25 timestamp];
            v27 = PSUIFormatDataUsage(v9, v24 - v26);
          }

          goto LABEL_21;
        }

        v28 = PSUIFormatDataUsage(v9, 0.0);
LABEL_20:
        v27 = v28;
LABEL_21:

        goto LABEL_22;
      }
    }

    v18 = [v1 plan];
    v28 = PSUIGetPlanSubscriptionStatus([v18 status]);
    goto LABEL_20;
  }

  v27 = 0;
LABEL_22:
  if ([v1 type] == 2 || objc_msgSend(v1, "type") == 3)
  {
    v29 = v27;
  }

  else
  {
    v30 = MEMORY[0x277CCACA8];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"CELLULAR_PLAN_STATUS_SIM_CARD_AND_STATUS" value:&stru_287733598 table:@"Cellular"];
    v29 = [v30 stringWithFormat:v32, v27];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v29;
}

void sub_265956284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26595676C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265956ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26595A5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getCLLocationManagerClass_2()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass_2;
  v7 = getCLLocationManagerClass_softClass_2;
  if (!getCLLocationManagerClass_softClass_2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke_3;
    v3[3] = &unk_279BA9F68;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke_3(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26595B570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationManagerClass_block_invoke_3(uint64_t a1)
{
  CoreLocationLibrary_2();
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return CoreLocationLibrary_2();
  }

  return result;
}

uint64_t CoreLocationLibrary_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BAAC88;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v1 = v4[0];
    v0 = CoreLocationLibraryCore_frameworkLibrary_2;
    if (CoreLocationLibraryCore_frameworkLibrary_2)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary_2;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getCLCopyAppsUsingLocationSymbolLoc_block_invoke_2(uint64_t a1)
{
  v2 = CoreLocationLibrary_2();
  result = dlsym(v2, "CLCopyAppsUsingLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLCopyAppsUsingLocationSymbolLoc_ptr_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_26596230C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265963F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}