uint64_t sub_27403E414()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_27403E520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2740516B8();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2740516D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  result = v24;
  if (!v24)
  {
    if (!a2)
    {
      return result;
    }

LABEL_10:
    sub_274031704();
    v17 = sub_2740518F8();
    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    v27 = sub_274041488;
    v28 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_274029168;
    v26 = &block_descriptor_98;
    v19 = _Block_copy(&aBlock);
    v20 = v3;

    sub_2740516C8();
    aBlock = MEMORY[0x277D84F90];
    sub_274041424(&qword_2809354B0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
    sub_27403B180();
    sub_274051978();
    MEMORY[0x2743E3710](0, v14, v9, v19);
    _Block_release(v19);

    (*(v22 + 8))(v9, v6);
    return (*(v11 + 8))(v14, v10);
  }

  if (!a2)
  {

    goto LABEL_10;
  }

  if (aBlock == a1 && v24 == a2)
  {
  }

  v16 = sub_274051B08();

  if ((v16 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_27403E888()
{
  type metadata accessor for WFNetworkRowConfigModel();
  sub_274041424(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel);
  sub_274050E38();
  sub_274050E48();
}

double sub_27403E910@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_27403E990(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  sub_27403E520(v2, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_274050E78();
}

uint64_t sub_27403EA9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_27403EB84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2740516D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (aBlock[0] != a1)
  {
    sub_274031704();
    v14 = sub_2740518F8();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    aBlock[4] = sub_274041488;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274029168;
    aBlock[3] = &block_descriptor_92;
    v16 = _Block_copy(aBlock);
    v17 = v2;

    sub_2740516C8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_274041424(&qword_2809354B0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
    sub_27403B180();
    sub_274051978();
    MEMORY[0x2743E3710](0, v12, v7, v16);
    _Block_release(v16);

    (*(v19 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_27403EE90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v5;
  return result;
}

uint64_t sub_27403EF10(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_27403EB84(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_274050E78();
}

uint64_t sub_27403F008()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_27403F0F0(char a1)
{
  v2 = a1 & 1;
  v3 = sub_2740516B8();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2740516D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (LOBYTE(aBlock[0]) != v2)
  {
    sub_274031704();
    v13 = sub_2740518F8();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    aBlock[4] = sub_274041488;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274029168;
    aBlock[3] = &block_descriptor_86;
    v15 = _Block_copy(aBlock);
    v16 = v1;

    sub_2740516C8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_274041424(&qword_2809354B0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
    sub_27403B180();
    sub_274051978();
    MEMORY[0x2743E3710](0, v11, v6, v15);
    _Block_release(v15);

    (*(v18 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_27403F3FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v5;
  return result;
}

uint64_t sub_27403F47C(char *a1, void **a2)
{
  v2 = *a2;
  sub_27403F0F0(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_274050E78();
}

uint64_t sub_27403F574()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_27403F65C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2740516D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (aBlock[0] != a1)
  {
    sub_274031704();
    v14 = sub_2740518F8();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    aBlock[4] = sub_274041408;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274029168;
    aBlock[3] = &block_descriptor_80;
    v16 = _Block_copy(aBlock);
    v17 = v2;

    sub_2740516C8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_274041424(&qword_2809354B0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
    sub_27403B180();
    sub_274051978();
    MEMORY[0x2743E3710](0, v12, v7, v16);
    _Block_release(v16);

    (*(v19 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_27403F968@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v5;
  return result;
}

uint64_t sub_27403F9E8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_27403F65C(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_274050E78();
}

uint64_t sub_27403FAA8()
{
  v1 = OBJC_IVAR___WFNetworkRowConfig_context;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27403FB40(uint64_t a1)
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_context;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27403FC38()
{
  v1 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27403FCD0(char a1)
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27403FDC8()
{
  v1 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27403FE60(char a1)
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27403FF58()
{
  v1 = OBJC_IVAR___WFNetworkRowConfig_isEditable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27403FFF0(char a1)
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_isEditable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27404017C()
{
  v1 = (v0 + OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_273FBBB0C(v3);
  return v3;
}

uint64_t sub_274040298(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2740368EC(v6);
}

uint64_t sub_2740402F8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2740413E0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_274040398(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740413B8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_2740368EC(v8);
}

id WFNetworkRowConfigModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

_BYTE *sub_274040570(char a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  swift_beginAccess();
  v5[v6] = a1;
  v7 = OBJC_IVAR___WFNetworkRowConfig_context;
  swift_beginAccess();
  *&v5[v7] = a2;
  return v5;
}

id WFNetworkRowConfigModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935738, &unk_27405AF88);
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v1);
  v36 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935740, &qword_27405A970);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v31 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935748, &qword_27405AF98);
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809354E0, &unk_27405A470);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935508, &qword_27405A498);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = OBJC_IVAR___WFNetworkRowConfig__network;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
  sub_274050E58();
  (*(v17 + 32))(&v0[v21], v20, v16);
  v22 = OBJC_IVAR___WFNetworkRowConfig__subtitle;
  v40 = 0;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935578, &qword_27405A4B8);
  sub_274050E58();
  (*(v12 + 32))(&v0[v22], v15, v11);
  v23 = OBJC_IVAR___WFNetworkRowConfig__connectionState;
  v40 = 0;
  type metadata accessor for WFNetworkState(0);
  sub_274050E58();
  (*(v7 + 32))(&v0[v23], v10, v32);
  v24 = OBJC_IVAR___WFNetworkRowConfig__problematicConnection;
  LOBYTE(v40) = 0;
  v25 = v33;
  sub_274050E58();
  (*(v34 + 32))(&v0[v24], v25, v35);
  v26 = OBJC_IVAR___WFNetworkRowConfig__signalBars;
  v40 = 0;
  v27 = v36;
  sub_274050E58();
  (*(v37 + 32))(&v0[v26], v27, v38);
  *&v0[OBJC_IVAR___WFNetworkRowConfig_context] = 1;
  v0[OBJC_IVAR___WFNetworkRowConfig_hideConnectionState] = 0;
  v0[OBJC_IVAR___WFNetworkRowConfig_showInfoButton] = 0;
  v0[OBJC_IVAR___WFNetworkRowConfig_isEditable] = 1;
  v28 = &v0[OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler];
  v29 = type metadata accessor for WFNetworkRowConfigModel();
  *v28 = 0;
  v28[1] = 0;
  v39.receiver = v0;
  v39.super_class = v29;
  return objc_msgSendSuper2(&v39, sel_init);
}

id WFNetworkRowConfigModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFNetworkRowConfigModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274040CCC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WFNetworkRowConfigModel();
  result = sub_274050E38();
  *a1 = result;
  return result;
}

uint64_t sub_274040D0C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t type metadata accessor for WFNetworkRowConfigModel()
{
  result = qword_280935758;
  if (!qword_280935758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274040DBC()
{
  sub_2740364A4(319, &qword_280935598, &unk_280934FC0, &qword_27405A4A0);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_2740364A4(319, &unk_2809355C0, &unk_280935578, &qword_27405A4B8);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_274041348();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_274036458(319, &qword_280935770);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_274036458(319, &qword_280935778);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_274041348()
{
  if (!qword_280935768)
  {
    type metadata accessor for WFNetworkState(255);
    v0 = sub_274050E88();
    if (!v1)
    {
      atomic_store(v0, &qword_280935768);
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2740413B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2740413E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_274041424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27404149C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_274051A98())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x2743E3810](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_274051A38();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_274051A58();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_274051A68();
        sub_274051A48();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

void sub_274041648(float a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    v2 = ceilf(a1 * 3.0);
    if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v2 > -9.2234e18)
    {
      if (v2 < 9.2234e18)
      {
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }
}

void NetworkList.init(networkDataSource:configDataSource:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for NetworkList();
  v5 = *(v4 + 24);
  v6 = [objc_opt_self() defaultCenter];
  if (qword_280934D98 != -1)
  {
    swift_once();
  }

  v7 = qword_280937218;
  sub_274051938();
  v8 = (a2 + *(v4 + 28));
  *v8 = 0x4C20664F20706F54;
  v8[1] = 0xEB00000000747369;
  type metadata accessor for NetworkListDataSource();
  sub_27404E2E4(&unk_2809357B0, type metadata accessor for NetworkListDataSource);
  v9 = a1;
  *a2 = sub_274050F88();
  a2[1] = v10;
  type metadata accessor for NetworkListConfigDataSource();
  sub_27404E2E4(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource);
  v11 = sub_274050F88();
  v13 = v12;

  a2[2] = v11;
  a2[3] = v13;
}

uint64_t type metadata accessor for NetworkList()
{
  result = qword_2809357D0;
  if (!qword_2809357D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

WiFiKitUI::NetworkListMode_optional __swiftcall NetworkListMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_274051AD8();

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

unint64_t NetworkListMode.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x7473694C6E616373;
  }

  *v0;
  return result;
}

uint64_t sub_27404196C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x7473694C6E616373;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x8000000274066070;
  }

  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x7473694C6E616373;
  }

  if (*a2)
  {
    v7 = 0x8000000274066070;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_274051B08();
  }

  return v9 & 1;
}

uint64_t sub_274041A18()
{
  v1 = *v0;
  sub_274051B38();
  sub_2740517F8();

  return sub_274051B68();
}

uint64_t sub_274041AA0()
{
  *v0;
  sub_2740517F8();
}

uint64_t sub_274041B14()
{
  v1 = *v0;
  sub_274051B38();
  sub_2740517F8();

  return sub_274051B68();
}

uint64_t sub_274041B98@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_274051AD8();

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

void sub_274041BF8(unint64_t *a1@<X8>)
{
  v2 = 0x8000000274066070;
  v3 = 0x7473694C6E616373;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_274041C3C()
{
  result = sub_2740517C8();
  qword_280937200 = result;
  return result;
}

uint64_t sub_274041C74()
{
  result = sub_2740517C8();
  qword_280937208 = result;
  return result;
}

uint64_t sub_274041CAC()
{
  result = sub_2740517C8();
  qword_280937210 = result;
  return result;
}

uint64_t sub_274041CE4()
{
  result = sub_2740517C8();
  qword_280937218 = result;
  return result;
}

uint64_t NetworkList.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for NetworkList();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_27404DECC(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_27404DF34(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NetworkList);
  *a1 = sub_2740425A0;
  a1[1] = v7;
  return result;
}

uint64_t sub_274041E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v87 = a1;
  v84 = a3;
  v83 = type metadata accessor for NetworkList();
  v86 = *(v83 - 8);
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v83);
  v88 = v5;
  v89 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_274050FE8();
  v6 = *(v82 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935800, &qword_27405B1A0);
  v9 = *(*(v85 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v85);
  v90 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = &v71 - v12;
  v13 = *(a2 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v120 == 1)
  {
    sub_274042618(&v120);
    v14 = v120;
    v15 = v121;
    v77 = *(&v121 + 1);
    v78 = *(&v120 + 1);
    v76 = sub_274051348();
    sub_274050E98();
    v74 = v17;
    v75 = v16;
    v72 = v19;
    v73 = v18;
    LOBYTE(v105[0]) = v15;
    LOBYTE(v92) = 0;
    v20 = sub_274051368();
    sub_274050E98();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    LOBYTE(v107) = 0;
    v29 = sub_274051328();
    sub_274050E98();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    LOBYTE(v120) = 0;
    v38 = sub_274051338();
    sub_274050E98();
    *&v107 = v14;
    *(&v107 + 1) = v78;
    LOBYTE(v108) = v15;
    *(&v108 + 1) = v77;
    LOBYTE(v109) = v76;
    *(&v109 + 1) = v75;
    *&v110 = v74;
    *(&v110 + 1) = v73;
    *&v111 = v72;
    BYTE8(v111) = 0;
    LOBYTE(v112) = v20;
    *(&v112 + 1) = v22;
    *&v113 = v24;
    *(&v113 + 1) = v26;
    *&v114 = v28;
    BYTE8(v114) = 0;
    LOBYTE(v115) = v29;
    *(&v115 + 1) = v31;
    *&v116 = v33;
    *(&v116 + 1) = v35;
    *&v117 = v37;
    BYTE8(v117) = 0;
    HIDWORD(v117) = *(v105 + 3);
    *(&v117 + 9) = v105[0];
    LOBYTE(v118) = v38;
    DWORD1(v118) = *(&v92 + 3);
    *(&v118 + 1) = v92;
    *(&v118 + 1) = v39;
    *&v119[0] = v40;
    *(&v119[0] + 1) = v41;
    *&v119[1] = v42;
    BYTE8(v119[1]) = 0;
    v43 = nullsub_1(&v107);
    v130 = v117;
    v131 = v118;
    v132[0] = v119[0];
    *(v132 + 9) = *(v119 + 9);
    v126 = v113;
    v127 = v114;
    v128 = v115;
    v129 = v116;
    v122 = v109;
    v123 = v110;
    v124 = v111;
    v125 = v112;
    v120 = v107;
    v121 = v108;
  }

  else
  {
    sub_27404D8B4(&v120);
  }

  MEMORY[0x28223BE20](v43);
  v44 = a2;
  *(&v71 - 2) = a2;
  v79 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935808, &qword_27405B1F0);
  sub_27404DB48(&qword_280935810, &qword_280935808, &qword_27405B1F0, sub_27404D8E4);
  sub_274051408();
  v45 = v82;
  v83 = *(v83 + 24);
  v46 = v80;
  (*(v6 + 16))(v80, v87, v82);
  v47 = v89;
  sub_27404DECC(v44, v89, type metadata accessor for NetworkList);
  v48 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v49 = (v81 + *(v86 + 80) + v48) & ~*(v86 + 80);
  v50 = swift_allocObject();
  (*(v6 + 32))(v50 + v48, v46, v45);
  sub_27404DF34(v47, v50 + v49, type metadata accessor for NetworkList);
  v51 = v85;
  v52 = *(v85 + 52);
  v53 = sub_274051948();
  v54 = v91;
  (*(*(v53 - 8) + 16))(&v91[v52], v79 + v83, v53);
  v55 = (v54 + *(v51 + 56));
  *v55 = sub_27404D9C4;
  v55[1] = v50;
  v102 = v130;
  v103 = v131;
  v104[0] = v132[0];
  *(v104 + 9) = *(v132 + 9);
  v98 = v126;
  v99 = v127;
  v100 = v128;
  v101 = v129;
  v94 = v122;
  v95 = v123;
  v96 = v124;
  v97 = v125;
  v92 = v120;
  v93 = v121;
  v56 = v90;
  sub_274021180(v54, v90, &qword_280935800, &qword_27405B1A0);
  v57 = v101;
  v105[10] = v102;
  v105[11] = v103;
  v58 = v103;
  v106[0] = v104[0];
  *(v106 + 9) = *(v104 + 9);
  v59 = v98;
  v60 = v99;
  v105[6] = v98;
  v105[7] = v99;
  v105[8] = v100;
  v61 = v100;
  v105[9] = v101;
  v62 = v94;
  v63 = v95;
  v105[2] = v94;
  v105[3] = v95;
  v64 = v96;
  v65 = v97;
  v105[4] = v96;
  v105[5] = v97;
  v66 = v92;
  v67 = v93;
  v105[0] = v92;
  v105[1] = v93;
  v68 = v84;
  v84[10] = v102;
  v68[11] = v58;
  v68[12] = v104[0];
  *(v68 + 201) = *(v104 + 9);
  v68[6] = v59;
  v68[7] = v60;
  v68[8] = v61;
  v68[9] = v57;
  v68[2] = v62;
  v68[3] = v63;
  v68[4] = v64;
  v68[5] = v65;
  *v68 = v66;
  v68[1] = v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935848, &qword_27405B210);
  sub_274021180(v56, v68 + *(v69 + 48), &qword_280935800, &qword_27405B1A0);
  sub_274021180(v105, &v107, &unk_280935850, &qword_27405B218);
  sub_2740211E8(v54, &qword_280935800, &qword_27405B1A0);
  sub_2740211E8(v56, &qword_280935800, &qword_27405B1A0);
  v117 = v102;
  v118 = v103;
  v119[0] = v104[0];
  *(v119 + 9) = *(v104 + 9);
  v113 = v98;
  v114 = v99;
  v115 = v100;
  v116 = v101;
  v109 = v94;
  v110 = v95;
  v111 = v96;
  v112 = v97;
  v107 = v92;
  v108 = v93;
  return sub_2740211E8(&v107, &unk_280935850, &qword_27405B218);
}

unint64_t sub_2740425A8()
{
  result = qword_2809357C0;
  if (!qword_2809357C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809357C0);
  }

  return result;
}

uint64_t sub_274042618@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  swift_beginAccess();
  *(v3 + v4);
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  sub_274020248();
  v7 = sub_274051468();
  v9 = v8;
  v11 = v10;
  sub_2740513D8();
  v12 = sub_274051448();
  v14 = v13;
  v16 = v15;

  sub_27402029C(v7, v9, v11 & 1);

  sub_274051528();
  v17 = sub_274051428();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_27402029C(v12, v14, v16 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t sub_274042818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v292 = a2;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935840, &qword_27405B208);
  v3 = *(*(v291 - 8) + 64);
  MEMORY[0x28223BE20](v291);
  v5 = &v254 - v4;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935860, &qword_27405B220);
  v6 = *(*(v288 - 8) + 64);
  MEMORY[0x28223BE20](v288);
  v290 = &v254 - v7;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935830, &qword_27405B200);
  v8 = *(*(v289 - 8) + 64);
  MEMORY[0x28223BE20](v289);
  v283 = &v254 - v9;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935868, &qword_27405B228);
  v10 = *(*(v282 - 8) + 64);
  MEMORY[0x28223BE20](v282);
  v260 = &v254 - v11;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935870, &qword_27405B230);
  v12 = *(*(v279 - 8) + 64);
  MEMORY[0x28223BE20](v279);
  v281 = &v254 - v13;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935878, &qword_27405B238);
  v14 = *(*(v280 - 8) + 64);
  MEMORY[0x28223BE20](v280);
  v266 = &v254 - v15;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935880, &qword_27405B240);
  v312 = *(v303 - 8);
  v16 = v312[8];
  v17 = MEMORY[0x28223BE20](v303);
  v265 = &v254 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v275 = &v254 - v19;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935888, &qword_27405B248);
  v311 = *(v301 - 8);
  v20 = v311[8];
  v21 = MEMORY[0x28223BE20](v301);
  v273 = &v254 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v274 = &v254 - v23;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935890, &qword_27405B250);
  v271 = *(v272 - 8);
  v24 = *(v271 + 64);
  MEMORY[0x28223BE20](v272);
  v264 = &v254 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935898, &qword_27405B258);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v267 = &v254 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v304 = &v254 - v31;
  MEMORY[0x28223BE20](v30);
  v306 = &v254 - v32;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358A0, &qword_27405B260);
  v285 = *(v286 - 8);
  v33 = *(v285 + 64);
  MEMORY[0x28223BE20](v286);
  v263 = &v254 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358A8, &qword_27405B268);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v268 = &v254 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v302 = &v254 - v40;
  MEMORY[0x28223BE20](v39);
  v300 = &v254 - v41;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358B0, &qword_27405B270);
  v261 = *(v262 - 8);
  v42 = *(v261 + 64);
  MEMORY[0x28223BE20](v262);
  v257 = &v254 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358B8, &qword_27405B278);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v270 = &v254 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v299 = &v254 - v48;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358C0, &qword_27405B280);
  v49 = *(*(v259 - 8) + 64);
  MEMORY[0x28223BE20](v259);
  v258 = (&v254 - v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358C8, &qword_27405B288);
  v309 = *(v51 - 8);
  v310 = v51;
  v52 = v309[8];
  v53 = MEMORY[0x28223BE20](v51);
  v269 = &v254 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v298 = &v254 - v55;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358D0, &qword_27405B290);
  v293 = *(v305 - 1);
  v56 = *(v293 + 64);
  MEMORY[0x28223BE20](v305);
  v284 = &v254 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358D8, &qword_27405B298);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v58 - 8);
  v62 = &v254 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60);
  v65 = &v254 - v64;
  v66 = MEMORY[0x28223BE20](v63);
  v294 = &v254 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v307 = &v254 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v287 = &v254 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v295 = &v254 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v297 = &v254 - v75;
  MEMORY[0x28223BE20](v74);
  v296 = &v254 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358E0, &qword_27405B2A0);
  v78 = *(*(v77 - 8) + 64);
  v79 = MEMORY[0x28223BE20](v77 - 8);
  v277 = &v254 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v278 = &v254 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358E8, &qword_27405B2A8);
  v83 = *(*(v82 - 8) + 64);
  v84 = MEMORY[0x28223BE20](v82);
  v276 = &v254 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v313 = &v254 - v86;
  v87 = a1;
  v88 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v308 = v88;
  sub_274050E68();

  if (v314)
  {
    v89 = 0x8000000274066070;
  }

  else
  {
    v89 = 0xE800000000000000;
  }

  if ((v314 & 1) == 0 && v89 == 0xE800000000000000)
  {

LABEL_8:
    MEMORY[0x28223BE20](v90);
    sub_274046224(&v314);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935908, &qword_27405B398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935910, &qword_27405B3A0);
    sub_27402179C(&qword_280935918, &qword_280935908, &qword_27405B398);
    sub_27404DB48(&qword_280935920, &qword_280935910, &qword_27405B3A0, sub_27404DBC4);
    v92 = v313;
    sub_274051628();
    v93 = (v87 + *(type metadata accessor for NetworkList() + 28));
    v94 = *v93;
    v95 = v93[1];
    v96 = (v92 + *(v82 + 52));
    *v96 = v94;
    v96[1] = v95;
    v97 = *(v87 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_274050E68();

    if (v314 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v314 >> 62)
      {
        v98 = sub_274051A98();
      }

      else
      {
        v98 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v99 = v293;
      v268 = v97;

      if (v98 < 1)
      {
        v113 = 1;
        v110 = v296;
        v112 = v305;
      }

      else
      {
        v267 = &v254;
        MEMORY[0x28223BE20](v100);
        type metadata accessor for WFNetworkListViewController();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v102 = [objc_opt_self() bundleForClass_];
        v103 = sub_274050D68();
        v105 = v104;

        v314 = v103;
        v315 = v105;
        sub_274020248();
        v314 = sub_274051468();
        v315 = v106;
        LOBYTE(v316) = v107 & 1;
        v317 = v108;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
        sub_27404DABC();
        v109 = v284;
        sub_274051608();
        v110 = v296;
        v111 = v109;
        v112 = v305;
        (*(v99 + 32))(v296, v111, v305);
        v113 = 0;
      }

      v137 = *(v99 + 56);
      v137(v110, v113, 1, v112);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v314 >> 62)
      {
        v138 = sub_274051A98();
      }

      else
      {
        v138 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v138 < 1)
      {
        v150 = 1;
        v149 = v297;
      }

      else
      {
        MEMORY[0x28223BE20](v139);
        type metadata accessor for WFNetworkListViewController();
        v140 = swift_getObjCClassFromMetadata();
        v141 = [objc_opt_self() bundleForClass_];
        v142 = sub_274050D68();
        v144 = v143;

        v314 = v142;
        v315 = v144;
        v112 = v305;
        sub_274020248();
        v314 = sub_274051468();
        v315 = v145;
        LOBYTE(v316) = v146 & 1;
        v317 = v147;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
        sub_27404DABC();
        v148 = v284;
        sub_2740515F8();
        v149 = v297;
        (*(v293 + 32))(v297, v148, v112);
        v150 = 0;
      }

      v151 = (v137)(v149, v150, 1, v112);
      MEMORY[0x28223BE20](v151);
      v152 = sub_274051118();
      v153 = v258;
      *v258 = v152;
      v153[1] = 0;
      *(v153 + 16) = 1;
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935978, &qword_27405B540);
      sub_27404AFAC(v87, v153 + *(v154 + 44));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935980, &qword_27405B548);
      sub_27402179C(&qword_280935988, &qword_2809358C0, &qword_27405B280);
      sub_27402179C(&qword_280935990, &qword_280935980, &qword_27405B548);
      sub_2740515F8();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v314 >> 62)
      {
        v155 = sub_274051A98();
      }

      else
      {
        v155 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v156 = v271;

      if (v155 < 1)
      {
        v169 = 1;
        v167 = v295;
        v168 = v305;
      }

      else
      {
        MEMORY[0x28223BE20](v157);
        type metadata accessor for WFNetworkListViewController();
        v158 = swift_getObjCClassFromMetadata();
        v159 = [objc_opt_self() bundleForClass_];
        v160 = sub_274050D68();
        v162 = v161;

        v314 = v160;
        v315 = v162;
        sub_274020248();
        v314 = sub_274051468();
        v315 = v163;
        LOBYTE(v316) = v164 & 1;
        v317 = v165;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
        sub_27404DABC();
        v166 = v284;
        sub_2740515F8();
        v167 = v295;
        v168 = v305;
        (*(v293 + 32))(v295, v166, v305);
        v169 = 0;
      }

      v137(v167, v169, 1, v168);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v314 >> 62)
      {
        v170 = sub_274051A98();
      }

      else
      {
        v170 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v172 = v299;
      v171 = v300;

      if (v170 < 1)
      {
        v179 = 1;
        v180 = v262;
        v181 = v261;
      }

      else
      {
        MEMORY[0x28223BE20](v173);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        v174 = v315;
        if (v315)
        {
          sub_274020248();
          v175 = sub_274051468();
          v174 = v178 & 1;
        }

        else
        {
          v175 = 0;
          v176 = 0;
          v177 = 0;
        }

        v314 = v175;
        v315 = v176;
        v316 = v174;
        v317 = v177;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809359A0, &qword_27405B5E8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
        sub_27404DCD0();
        sub_27404DABC();
        v197 = v257;
        sub_2740515F8();
        v181 = v261;
        v180 = v262;
        (*(v261 + 32))(v172, v197, v262);
        v179 = 0;
      }

      v198 = *(v181 + 56);
      v199 = 1;
      v198(v172, v179, 1, v180);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if ((v314 & 1) == 0)
      {
        MEMORY[0x28223BE20](v200);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935938, &qword_27405B448);
        sub_27402179C(&qword_280935940, &qword_280935938, &qword_27405B448);
        v201 = v263;
        sub_274051618();
        (*(v285 + 32))(v171, v201, v286);
        v199 = 0;
      }

      v202 = 1;
      (*(v285 + 56))(v171, v199, 1, v286);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      v204 = v272;
      if ((v314 & 1) == 0)
      {
        MEMORY[0x28223BE20](v203);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935948, &qword_27405B498);
        sub_27402179C(&qword_280935950, &qword_280935948, &qword_27405B498);
        v205 = v264;
        sub_274051618();
        (*(v156 + 32))(v306, v205, v204);
        v202 = 0;
      }

      v206 = (*(v156 + 56))(v306, v202, 1, v204);
      MEMORY[0x28223BE20](v206);
      sub_2740476EC(&v314);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935998, &qword_27405B5E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809359A0, &qword_27405B5E8);
      sub_27402179C(&qword_2809359A8, &qword_280935998, &qword_27405B5E0);
      sub_27404DCD0();
      v207 = v274;
      v208 = sub_274051628();
      MEMORY[0x28223BE20](v208);
      sub_274047A6C(&v314);
      v209 = v275;
      sub_274051628();
      v210 = v287;
      sub_274021180(v296, v287, &qword_2809358D8, &qword_27405B298);
      sub_274021180(v297, v307, &qword_2809358D8, &qword_27405B298);
      v211 = v309[2];
      v212 = v269;
      v211(v269, v298, v310);
      sub_274021180(v295, v294, &qword_2809358D8, &qword_27405B298);
      sub_274021180(v299, v270, &qword_2809358B8, &qword_27405B278);
      sub_274021180(v300, v302, &qword_2809358A8, &qword_27405B268);
      sub_274021180(v306, v304, &qword_280935898, &qword_27405B258);
      v308 = v311[2];
      v308(v273, v207, v301);
      v305 = v312[2];
      v213 = v265;
      (v305)(v265, v209, v303);
      v214 = v266;
      sub_274021180(v210, v266, &qword_2809358D8, &qword_27405B298);
      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809359B8, &qword_27405B5F0);
      sub_274021180(v307, v214 + v215[12], &qword_2809358D8, &qword_27405B298);
      v211((v214 + v215[16]), v212, v310);
      sub_274021180(v294, v214 + v215[20], &qword_2809358D8, &qword_27405B298);
      v216 = v270;
      sub_274021180(v270, v214 + v215[24], &qword_2809358B8, &qword_27405B278);
      v217 = v302;
      sub_274021180(v302, v214 + v215[28], &qword_2809358A8, &qword_27405B268);
      v218 = v304;
      sub_274021180(v304, v214 + v215[32], &qword_280935898, &qword_27405B258);
      v219 = v273;
      v220 = v301;
      v308((v214 + v215[36]), v273, v301);
      v221 = v303;
      (v305)(v214 + v215[40], v213, v303);
      v222 = v312[1];
      ++v312;
      v308 = v222;
      (v222)(v213, v221);
      v223 = v311[1];
      ++v311;
      v223(v219, v220);
      sub_2740211E8(v218, &qword_280935898, &qword_27405B258);
      sub_2740211E8(v217, &qword_2809358A8, &qword_27405B268);
      sub_2740211E8(v216, &qword_2809358B8, &qword_27405B278);
      sub_2740211E8(v294, &qword_2809358D8, &qword_27405B298);
      v224 = v309[1];
      ++v309;
      v224(v269, v310);
      sub_2740211E8(v307, &qword_2809358D8, &qword_27405B298);
      sub_2740211E8(v287, &qword_2809358D8, &qword_27405B298);
      sub_274021180(v214, v281, &qword_280935878, &qword_27405B238);
      swift_storeEnumTagMultiPayload();
      sub_27402179C(&qword_280935960, &qword_280935878, &qword_27405B238);
      sub_27402179C(&qword_280935968, &qword_280935868, &qword_27405B228);
      v225 = v278;
      sub_2740512B8();
      sub_2740211E8(v214, &qword_280935878, &qword_27405B238);
      (v308)(v275, v303);
      v223(v274, v301);
      v133 = v225;
      sub_2740211E8(v306, &qword_280935898, &qword_27405B258);
      sub_2740211E8(v300, &qword_2809358A8, &qword_27405B268);
      sub_2740211E8(v299, &qword_2809358B8, &qword_27405B278);
      sub_2740211E8(v295, &qword_2809358D8, &qword_27405B298);
      v224(v298, v310);
      sub_2740211E8(v297, &qword_2809358D8, &qword_27405B298);
      v134 = v296;
      v135 = &qword_2809358D8;
      v136 = &qword_27405B298;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      v115 = v272;
      v116 = v271;
      if (v314)
      {
        v117 = 1;
        v118 = v286;
        v119 = v285;
        v120 = v268;
      }

      else
      {
        MEMORY[0x28223BE20](v114);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935938, &qword_27405B448);
        sub_27402179C(&qword_280935940, &qword_280935938, &qword_27405B448);
        v123 = v263;
        sub_274051618();
        v119 = v285;
        v120 = v268;
        v118 = v286;
        (*(v285 + 32))(v268, v123, v286);
        v117 = 0;
      }

      v124 = 1;
      (*(v119 + 56))(v120, v117, 1, v118);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if ((v314 & 1) == 0)
      {
        MEMORY[0x28223BE20](v125);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935948, &qword_27405B498);
        sub_27402179C(&qword_280935950, &qword_280935948, &qword_27405B498);
        v126 = v264;
        sub_274051618();
        (*(v116 + 32))(v267, v126, v115);
        v124 = 0;
      }

      v127 = v267;
      (*(v116 + 56))(v267, v124, 1, v115);
      v128 = v120;
      v129 = v302;
      sub_274021180(v128, v302, &qword_2809358A8, &qword_27405B268);
      v130 = v304;
      sub_274021180(v127, v304, &qword_280935898, &qword_27405B258);
      v131 = v260;
      sub_274021180(v129, v260, &qword_2809358A8, &qword_27405B268);
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935958, &qword_27405B4A0);
      sub_274021180(v130, v131 + *(v132 + 48), &qword_280935898, &qword_27405B258);
      sub_2740211E8(v130, &qword_280935898, &qword_27405B258);
      sub_2740211E8(v129, &qword_2809358A8, &qword_27405B268);
      sub_274021180(v131, v281, &qword_280935868, &qword_27405B228);
      swift_storeEnumTagMultiPayload();
      sub_27402179C(&qword_280935960, &qword_280935878, &qword_27405B238);
      sub_27402179C(&qword_280935968, &qword_280935868, &qword_27405B228);
      v133 = v278;
      sub_2740512B8();
      sub_2740211E8(v131, &qword_280935868, &qword_27405B228);
      sub_2740211E8(v127, &qword_280935898, &qword_27405B258);
      v134 = v268;
      v135 = &qword_2809358A8;
      v136 = &qword_27405B268;
    }

    sub_2740211E8(v134, v135, v136);
    v226 = v292;
    v227 = v313;
    v228 = v276;
    sub_274021180(v313, v276, &qword_2809358E8, &qword_27405B2A8);
    v229 = v277;
    sub_274021180(v133, v277, &qword_2809358E0, &qword_27405B2A0);
    v230 = v283;
    sub_274021180(v228, v283, &qword_2809358E8, &qword_27405B2A8);
    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935970, &qword_27405B4A8);
    sub_274021180(v229, v230 + *(v231 + 48), &qword_2809358E0, &qword_27405B2A0);
    sub_2740211E8(v229, &qword_2809358E0, &qword_27405B2A0);
    sub_2740211E8(v228, &qword_2809358E8, &qword_27405B2A8);
    sub_274021180(v230, v290, &qword_280935830, &qword_27405B200);
    swift_storeEnumTagMultiPayload();
    sub_27402179C(&qword_280935828, &qword_280935830, &qword_27405B200);
    sub_27402179C(&qword_280935838, &qword_280935840, &qword_27405B208);
    sub_2740512B8();
    sub_2740211E8(v230, &qword_280935830, &qword_27405B200);
    sub_2740211E8(v133, &qword_2809358E0, &qword_27405B2A0);
    sub_2740211E8(v227, &qword_2809358E8, &qword_27405B2A8);
    v232 = 0;
    v233 = v226;
    goto LABEL_55;
  }

  v255 = v62;
  v256 = v5;
  v91 = sub_274051B08();

  if (v91)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v314)
  {
    v121 = 0x8000000274066070;
  }

  else
  {
    v121 = 0xE800000000000000;
  }

  if (v314 == 1 && 0x8000000274066070 == v121)
  {

    v122 = v293;
  }

  else
  {
    v182 = sub_274051B08();

    v122 = v293;
    if ((v182 & 1) == 0)
    {
      v232 = 1;
      v233 = v292;
      goto LABEL_55;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v314 >> 62)
  {
    v183 = sub_274051A98();
  }

  else
  {
    v183 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v183 < 1)
  {
    v196 = 1;
    v195 = v305;
  }

  else
  {
    MEMORY[0x28223BE20](v184);
    type metadata accessor for WFNetworkListViewController();
    v185 = swift_getObjCClassFromMetadata();
    v186 = [objc_opt_self() bundleForClass_];
    v187 = sub_274050D68();
    v189 = v188;

    v314 = v187;
    v315 = v189;
    sub_274020248();
    v314 = sub_274051468();
    v315 = v190;
    LOBYTE(v316) = v191 & 1;
    v317 = v192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
    sub_27404DABC();
    v193 = v284;
    sub_2740515F8();
    v194 = v193;
    v195 = v305;
    (*(v122 + 32))(v65, v194, v305);
    v196 = 0;
  }

  v236 = *(v122 + 56);
  v236(v65, v196, 1, v195);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v314 >> 62)
  {
    v237 = sub_274051A98();
  }

  else
  {
    v237 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v237 < 1)
  {
    v249 = 1;
    v248 = v255;
  }

  else
  {
    MEMORY[0x28223BE20](v238);
    type metadata accessor for WFNetworkListViewController();
    v239 = swift_getObjCClassFromMetadata();
    v240 = [objc_opt_self() bundleForClass_];
    v241 = sub_274050D68();
    v243 = v242;

    v314 = v241;
    v315 = v243;
    v195 = v305;
    sub_274020248();
    v314 = sub_274051468();
    v315 = v244;
    LOBYTE(v316) = v245 & 1;
    v317 = v246;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F8, &qword_27405B390);
    sub_27404DABC();
    v247 = v284;
    sub_2740515F8();
    v248 = v255;
    (*(v122 + 32))(v255, v247, v195);
    v249 = 0;
  }

  v236(v248, v249, 1, v195);
  v250 = v287;
  sub_274021180(v65, v287, &qword_2809358D8, &qword_27405B298);
  v251 = v307;
  sub_274021180(v248, v307, &qword_2809358D8, &qword_27405B298);
  v252 = v256;
  sub_274021180(v250, v256, &qword_2809358D8, &qword_27405B298);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809358F0, &qword_27405B388);
  sub_274021180(v251, v252 + *(v253 + 48), &qword_2809358D8, &qword_27405B298);
  sub_2740211E8(v251, &qword_2809358D8, &qword_27405B298);
  sub_2740211E8(v250, &qword_2809358D8, &qword_27405B298);
  sub_274021180(v252, v290, &qword_280935840, &qword_27405B208);
  swift_storeEnumTagMultiPayload();
  sub_27402179C(&qword_280935828, &qword_280935830, &qword_27405B200);
  sub_27402179C(&qword_280935838, &qword_280935840, &qword_27405B208);
  v233 = v292;
  sub_2740512B8();
  sub_2740211E8(v252, &qword_280935840, &qword_27405B208);
  sub_2740211E8(v248, &qword_2809358D8, &qword_27405B298);
  sub_2740211E8(v65, &qword_2809358D8, &qword_27405B298);
  v232 = 0;
LABEL_55:
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935820, &qword_27405B1F8);
  return (*(*(v234 - 8) + 56))(v233, v232, 1, v234);
}

uint64_t sub_274045670()
{
  sub_274051688();
  sub_274050F78();
}

uint64_t sub_2740456DC(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for NetworkList() + 28));
  v4 = *v2;
  v5 = v2[1];

  sub_2740516A8();
  sub_274050FD8();
}

uint64_t sub_27404576C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AC0, &qword_27405B980);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AC8, &qword_27405B988);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AD0, &qword_27405B990);
  v11 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AD8, &qword_27405B998);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AE0, &qword_27405B9A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AE8, &qword_27405B9A8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v41 - v26;
  v28 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v51 == 1)
  {
    sub_274045DE8(&qword_280935B08, &qword_27405BA48, sub_27404BF88, v21);
    sub_274021180(v21, v17, &qword_280935AE0, &qword_27405B9A0);
    swift_storeEnumTagMultiPayload();
    sub_27402179C(&qword_280935AF0, &qword_280935AE0, &qword_27405B9A0);
    sub_27402179C(&qword_280935AF8, &qword_280935AD0, &qword_27405B990);
    sub_2740512B8();
    v29 = v21;
    v30 = &qword_280935AE0;
    v31 = &qword_27405B9A0;
  }

  else
  {
    sub_274045DE8(&qword_280935B68, &qword_27405BB50, sub_27404C96C, v13);
    sub_274021180(v13, v17, &qword_280935AD0, &qword_27405B990);
    swift_storeEnumTagMultiPayload();
    sub_27402179C(&qword_280935AF0, &qword_280935AE0, &qword_27405B9A0);
    sub_27402179C(&qword_280935AF8, &qword_280935AD0, &qword_27405B990);
    sub_2740512B8();
    v29 = v13;
    v30 = &qword_280935AD0;
    v31 = &qword_27405B990;
  }

  sub_2740211E8(v29, v30, v31);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v32 = v46;
  if (v50 == 1 && (v33 = *(a1 + 8), swift_getKeyPath(), swift_getKeyPath(), sub_274050E68(), , , v49))
  {

    v34 = v41;
    sub_274045F44(v41);
    sub_27404E36C(v34, v32);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  (*(v44 + 56))(v32, v35, 1, v45);
  v36 = v43;
  sub_274021180(v27, v43, &qword_280935AE8, &qword_27405B9A8);
  v37 = v47;
  sub_274021180(v32, v47, &qword_280935AC8, &qword_27405B988);
  v38 = v48;
  sub_274021180(v36, v48, &qword_280935AE8, &qword_27405B9A8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B00, &qword_27405B9F8);
  sub_274021180(v37, v38 + *(v39 + 48), &qword_280935AC8, &qword_27405B988);
  sub_2740211E8(v32, &qword_280935AC8, &qword_27405B988);
  sub_2740211E8(v27, &qword_280935AE8, &qword_27405B9A8);
  sub_2740211E8(v37, &qword_280935AC8, &qword_27405B988);
  return sub_2740211E8(v36, &qword_280935AE8, &qword_27405B9A8);
}

uint64_t sub_274045DE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 24);
  v10 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  swift_beginAccess();
  LODWORD(v10) = *(v9 + v10);
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_274050D68();
  v15 = v14;

  *a4 = sub_274051118();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v16 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) + 44);
  a3(v4, v13, v15);
}

uint64_t sub_274045F44@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for NetworkList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809359D0, qword_27405B678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v11 = v20;
  if (v20)
  {
    sub_27404DECC(v1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
    v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v13 = swift_allocObject();
    v14 = sub_27404DF34(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for NetworkList);
    MEMORY[0x28223BE20](v14);
    *(&v19 - 2) = v11;
    *(&v19 - 1) = v1;
    type metadata accessor for NetworkListRowView();
    sub_27404E2E4(&qword_2809350A0, type metadata accessor for NetworkListRowView);
    sub_2740515B8();

    v15 = v19;
    (*(v6 + 32))(v19, v9, v5);
    v16 = 0;
    v17 = v15;
  }

  else
  {
    v16 = 1;
    v17 = v19;
  }

  return (*(v6 + 56))(v17, v16, 1, v5);
}

uint64_t sub_274046224@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if ((v23 & 1) == 0)
  {
    sub_27404BC30();
    type metadata accessor for WFNetworkListViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_274050D68();
    v14 = v13;

    *&v23 = v12;
    *(&v23 + 1) = v14;
    sub_274020248();
    v8 = sub_274051468();
    v5 = v8;
    v6 = v9;
    v7 = v15 & 1;
LABEL_5:
    sub_274020AD4(v8, v9, v7);

    sub_2740512B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935080, &qword_2740599D0);
    sub_2740207F8();
    sub_2740512B8();
    sub_27402029C(v5, v6, v7);

    v17 = v23;
    v18 = v24;
    v19 = v25;
    if (v26)
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_8;
  }

  v4 = *(v1 + 8);
  if (sub_274025FFC())
  {
    sub_27404B888(&v23);
    v6 = *(&v23 + 1);
    v5 = v23;
    v7 = v24;
    v9 = *(&v23 + 1);
    v8 = v23;
    goto LABEL_5;
  }

  v22 = OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled;
  result = swift_beginAccess();
  if (*(v3 + v22))
  {
    v17 = 0uLL;
    v21 = -256;
    v18 = 0uLL;
    goto LABEL_9;
  }

  sub_27404BAE8(&v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935080, &qword_2740599D0);
  sub_2740207F8();
  result = sub_2740512B8();
  v17 = v23;
  v18 = v24;
  v19 = v25;
  if (v26)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

LABEL_8:
  v21 = v20 | v19;
LABEL_9:
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v21;
  return result;
}

uint64_t sub_274046540@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809359D0, qword_27405B678);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v70 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = v58 - v11;
  v12 = type metadata accessor for NetworkList();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v69 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v58 - v16;
  v18 = type metadata accessor for NetworkListRowView();
  v19 = *(*(v18 - 1) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v25 = v58 - v24;
  if (a1)
  {
    v62 = v23;
    v63 = v22;
    v64 = v21;
    v65 = v3;
    v66 = v7;
    v67 = v6;
    v68 = a2;
    sub_27404DECC(v3, v17, type metadata accessor for NetworkList);
    v26 = *(v13 + 80);
    v27 = (v26 + 16) & ~v26;
    v28 = swift_allocObject();
    sub_27404DF34(v17, v28 + v27, type metadata accessor for NetworkList);
    *(v28 + ((v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v73 = 0;
    v59 = a1;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
    sub_274051568();
    v60 = v72;
    LOBYTE(v73) = 0;
    sub_274051568();
    v29 = *(&v72 + 1);
    v25[72] = v72;
    *(v25 + 10) = v29;
    v30 = v18[10];
    v31 = objc_opt_self();
    v32 = [v31 defaultCenter];
    if (qword_280934D80 != -1)
    {
      swift_once();
    }

    v33 = qword_280937200;
    sub_274051938();
    v34 = v18[11];
    v35 = [v31 defaultCenter];
    if (qword_280934D88 != -1)
    {
      swift_once();
    }

    v58[0] = ~v26;
    v36 = qword_280937208;
    sub_274051938();
    v37 = v18[12];
    v38 = [v31 defaultCenter];
    v39 = v65;
    v58[1] = v18;
    if (qword_280934D90 != -1)
    {
      swift_once();
    }

    v40 = qword_280937210;
    sub_274051938();
    type metadata accessor for WFNetworkRowConfigModel();
    sub_27404E2E4(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel);
    v41 = v59;
    *v25 = sub_274050F88();
    *(v25 + 1) = v42;
    v73 = 0;
    sub_274051568();
    swift_unknownObjectRelease();

    *(v25 + 1) = v72;
    *(v25 + 4) = sub_27404DEC4;
    *(v25 + 5) = v28;
    v43 = OBJC_IVAR___WFNetworkRowConfig_context;
    swift_beginAccess();
    v44 = *&v41[v43];

    v45 = -4.0;
    if (!v44)
    {
      v45 = 0.0;
    }

    *(v25 + 6) = v45;
    *(v25 + 7) = 0;
    *(v25 + 8) = 0;
    v46 = v64;
    sub_27404DECC(v25, v64, type metadata accessor for NetworkListRowView);
    v47 = v69;
    sub_27404DECC(v39, v69, type metadata accessor for NetworkList);
    v48 = (*(v62 + 80) + 24) & ~*(v62 + 80);
    v49 = (v63 + v26 + v48) & v58[0];
    v50 = swift_allocObject();
    *(v50 + 16) = v41;
    sub_27404DF34(v46, v50 + v48, type metadata accessor for NetworkListRowView);
    v51 = sub_27404DF34(v47, v50 + v49, type metadata accessor for NetworkList);
    MEMORY[0x28223BE20](v51);
    v58[-2] = v25;
    sub_27404E2E4(&qword_2809350A0, type metadata accessor for NetworkListRowView);
    v52 = v41;
    v53 = v71;
    sub_2740515B8();
    v55 = v66;
    v54 = v67;
    (*(v66 + 16))(v70, v53, v67);
    sub_27402179C(&qword_2809359E0, &unk_2809359D0, qword_27405B678);
    v56 = sub_2740515D8();

    (*(v55 + 8))(v53, v54);
    *v68 = v56;
    return sub_27404E0A0(v25);
  }

  else
  {
    result = sub_2740515D8();
    *a2 = result;
  }

  return result;
}

uint64_t sub_274046CAC(uint64_t a1)
{
  v2 = type metadata accessor for NetworkList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  swift_getKeyPath();
  sub_27404DECC(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_27404DF34(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NetworkList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935540, &qword_27405A4B0);
  sub_27402179C(&qword_2809359C8, &qword_280935540, &qword_27405A4B0);
  return sub_2740515E8();
}

uint64_t sub_274046EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A78, &qword_27405B8D8);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v40 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = v36 - v7;
  v8 = type metadata accessor for NetworkList();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A80, &qword_27405B8E0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v38 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v44 = v36 - v16;
  v37 = a1;
  v17 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v36[1] = swift_getKeyPath();
  sub_27404DECC(a1, v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_27404DF34(v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for NetworkList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935540, &qword_27405A4B0);
  sub_27402179C(&qword_2809359C8, &qword_280935540, &qword_27405A4B0);
  v20 = v44;
  sub_2740515E8();
  v21 = sub_274051668();
  v22 = (v20 + *(v12 + 44));
  v23 = v20;
  *v22 = v21;
  v22[1] = 1;
  v24 = v37;
  sub_27404DECC(v37, v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v25 = swift_allocObject();
  sub_27404DF34(v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v18, type metadata accessor for NetworkList);
  v45 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A88, &qword_27405B930);
  sub_27402179C(&qword_280935A90, &qword_280935A88, &qword_27405B930);
  v26 = v39;
  sub_2740515B8();
  v27 = v38;
  sub_274021180(v23, v38, &qword_280935A80, &qword_27405B8E0);
  v29 = v40;
  v28 = v41;
  v30 = *(v41 + 16);
  v31 = v42;
  v30(v40, v26, v42);
  v32 = v43;
  sub_274021180(v27, v43, &qword_280935A80, &qword_27405B8E0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A98, &qword_27405B938);
  v30((v32 + *(v33 + 48)), v29, v31);
  v34 = *(v28 + 8);
  v34(v26, v31);
  sub_2740211E8(v44, &qword_280935A80, &qword_27405B8E0);
  v34(v29, v31);
  return sub_2740211E8(v27, &qword_280935A80, &qword_27405B8E0);
}

uint64_t sub_2740473B8(uint64_t a1)
{
  v2 = type metadata accessor for NetworkList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27404DECC(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NetworkList);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_27404DF34(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for NetworkList);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AA8, &qword_27405B970);
  sub_27402179C(&qword_280935AB0, &qword_280935AA8, &qword_27405B970);
  return sub_2740515B8();
}

uint64_t sub_274047550()
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  type metadata accessor for NetworkListConfigDataSource();
  sub_27404E2E4(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource);
  v5 = sub_274050F98();
  swift_getKeyPath();
  sub_274050FA8();

  sub_274020248();
  return sub_2740515C8();
}

uint64_t sub_2740476EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled;
  result = swift_beginAccess();
  if (*(v3 + v4) != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_274050E68(), , result = , v24 == -1))
  {
    v16 = 0;
    v18 = 0;
    v23 = 0;
    v22 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    sub_27404BDAC(v24);
    sub_274020248();
    v6 = sub_274051468();
    v8 = v7;
    v10 = v9;
    sub_274051528();
    v11 = sub_274051428();
    v13 = v12;
    v15 = v14;

    sub_27402029C(v6, v8, v10 & 1);

    sub_2740513D8();
    v16 = sub_274051448();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_27402029C(v11, v13, v15 & 1);

    v23 = v20 & 1;
  }

  *a1 = v16;
  a1[1] = v18;
  a1[2] = v23;
  a1[3] = v22;
  return result;
}

uint64_t sub_2740478E4(uint64_t a1)
{
  v2 = type metadata accessor for NetworkList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27404DECC(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NetworkList);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_27404DF34(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for NetworkList);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809359E8, &qword_27405B728);
  sub_27402179C(&qword_2809359F0, &qword_2809359E8, &qword_27405B728);
  return sub_2740515B8();
}

uint64_t sub_274047A6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  swift_beginAccess();
  *(v3 + v4);
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  sub_274020248();
  v7 = sub_274051468();
  v9 = v8;
  v11 = v10;
  sub_274051528();
  v12 = sub_274051428();
  v14 = v13;
  v16 = v15;

  sub_27402029C(v7, v9, v11 & 1);

  sub_2740513D8();
  v17 = sub_274051448();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_27402029C(v12, v14, v16 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t sub_274047C6C(uint64_t a1)
{
  v2 = type metadata accessor for NetworkList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v10 = a1;
  v11 = sub_27404149C(sub_27404E528, v9, v11);
  swift_getKeyPath();
  sub_27404DECC(a1, &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NetworkList);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_27404DF34(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for NetworkList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935540, &qword_27405A4B0);
  sub_27402179C(&qword_2809359C8, &qword_280935540, &qword_27405A4B0);
  return sub_2740515E8();
}

uint64_t sub_274047E94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for NetworkList();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for NetworkListRowView();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B88, &qword_27405BB70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = MEMORY[0x28223BE20](v18);
  if (a1)
  {
    v52 = v21;
    v53 = &v48 - v20;
    v54 = v19;
    v55 = a2;
    v49 = v12;
    sub_27404DECC(v2, v11, type metadata accessor for NetworkList);
    v22 = *(v6 + 80);
    v23 = (v22 + 16) & ~v22;
    v48 = v15;
    v24 = swift_allocObject();
    sub_27404DF34(v11, v24 + v23, type metadata accessor for NetworkList);
    *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v25 = v24;
    sub_27404DECC(v2, v9, type metadata accessor for NetworkList);
    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    sub_27404DF34(v9, v26 + ((v22 + 24) & ~v22), type metadata accessor for NetworkList);
    v57 = 0;
    v50 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
    sub_274051568();
    v51 = v56;
    LOBYTE(v57) = 0;
    sub_274051568();
    v27 = *(&v56 + 1);
    v28 = v48;
    v29 = v49;
    v48[72] = v56;
    *(v28 + 80) = v27;
    v30 = v29[10];
    v31 = objc_opt_self();
    v32 = [v31 defaultCenter];
    if (qword_280934D80 != -1)
    {
      swift_once();
    }

    v33 = qword_280937200;
    sub_274051938();
    v34 = v29[11];
    v35 = [v31 defaultCenter];
    if (qword_280934D88 != -1)
    {
      swift_once();
    }

    v36 = qword_280937208;
    sub_274051938();
    v37 = v29[12];
    v38 = [v31 defaultCenter];
    a2 = v55;
    if (qword_280934D90 != -1)
    {
      swift_once();
    }

    v39 = qword_280937210;
    sub_274051938();
    type metadata accessor for WFNetworkRowConfigModel();
    sub_27404E2E4(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel);
    v40 = v50;
    *v28 = sub_274050F88();
    *(v28 + 8) = v41;
    v57 = 0;
    sub_274051568();
    swift_unknownObjectRelease();

    *(v28 + 16) = v56;
    *(v28 + 32) = sub_27404E674;
    *(v28 + 40) = v25;
    v42 = OBJC_IVAR___WFNetworkRowConfig_context;
    swift_beginAccess();
    v43 = *&v40[v42];

    v44 = -4.0;
    if (!v43)
    {
      v44 = 0.0;
    }

    *(v28 + 48) = v44;
    *(v28 + 56) = sub_27404E70C;
    *(v28 + 64) = v26;
    v45 = v53;
    sub_27404DECC(v28, v53, type metadata accessor for NetworkListRowView);
    *(v45 + *(v54 + 36)) = 0;
    sub_27404E0A0(v28);
    sub_274021180(v45, v52, &qword_280935B88, &qword_27405BB70);
    sub_27404E770();
    v46 = sub_2740515D8();

    result = sub_2740211E8(v45, &qword_280935B88, &qword_27405BB70);
  }

  else
  {
    result = sub_2740515D8();
    v46 = result;
  }

  *a2 = v46;
  return result;
}

uint64_t sub_27404845C(uint64_t a1)
{
  v2 = type metadata accessor for NetworkList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v10 = a1;
  v11 = sub_27404149C(sub_27404E9F0, v9, v11);
  swift_getKeyPath();
  sub_27404DECC(a1, &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NetworkList);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_27404DF34(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for NetworkList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935540, &qword_27405A4B0);
  sub_27402179C(&qword_2809359C8, &qword_280935540, &qword_27405A4B0);
  return sub_2740515E8();
}

uint64_t sub_274048684(uint64_t *a1, uint64_t a2)
{
  v21 = *a1;
  v2 = *(a2 + 8);
  v3 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
LABEL_35:
    v5 = sub_274051A98();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    v20 = v5;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2743E3810](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_29:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v7 = *(v4 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_29;
        }
      }

      v9 = [v7 ssid];
      if (v9)
      {
        v10 = v9;
        v11 = sub_2740517D8();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      v14 = v22;
      if (v22)
      {
        v15 = [v22 ssid];
        swift_unknownObjectRelease();
        if (v15)
        {
          v14 = sub_2740517D8();
          v17 = v16;

          if (!v13)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0;
          v17 = 0;
          if (!v13)
          {
LABEL_5:
            swift_unknownObjectRelease();
            if (!v17)
            {
              goto LABEL_31;
            }

            goto LABEL_6;
          }
        }
      }

      else
      {
        v17 = 0;
        if (!v13)
        {
          goto LABEL_5;
        }
      }

      if (!v17)
      {
        swift_unknownObjectRelease();
LABEL_6:

        goto LABEL_7;
      }

      if (v11 == v14 && v13 == v17)
      {

        swift_unknownObjectRelease();
        return 0;
      }

      v18 = sub_274051B08();

      swift_unknownObjectRelease();
      if (v18)
      {
LABEL_31:

        return 0;
      }

LABEL_7:
      ++v6;
    }

    while (v8 != v20);
  }

  return 1;
}

uint64_t sub_274048944(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v6 = sub_274050E28();
  __swift_project_value_buffer(v6, qword_280937140);
  v7 = a1;
  v8 = sub_274050E08();
  v9 = sub_2740518B8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_2740310C4(0xD000000000000020, 0x8000000274067220, v27);
    *(v10 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    if (v26 && (v12 = [v26 ssid], swift_unknownObjectRelease(), v12))
    {
      v13 = sub_2740517D8();
      v15 = v14;

      v16 = v13;
    }

    else
    {
      v16 = 0;
      v15 = 0xE000000000000000;
    }

    v17 = sub_2740310C4(v16, v15, v27);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_273FB9000, v8, v9, "%s: Tapped on %s!", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v11, -1, -1);
    MEMORY[0x2743E44F0](v10, -1, -1);
  }

  v18 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (!v27[0])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    if (v27[0])
    {
      v20 = [v27[0] isInstantHotspot];
      swift_unknownObjectRelease();
      if (v20)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        sub_274035324(v27[0]);
        swift_unknownObjectRelease();
      }
    }

    v21 = [objc_opt_self() defaultCenter];
    if (qword_280934D98 != -1)
    {
      swift_once();
    }

    [v21 postNotificationName:qword_280937218 object:0 userInfo:0];

    v22 = *(a3 + 8);
    sub_27402F910();
    v23 = v22 + OBJC_IVAR___WFNetworkListDataSource_associationHandler;
    result = swift_beginAccess();
    v24 = *v23;
    if (*v23)
    {
      v25 = *(v23 + 8);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_274050E68();

      v24();
      sub_273FBD2BC(v24);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_274048DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8) + OBJC_IVAR___WFNetworkListDataSource_infoButtonTapHandler;
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = *(v4 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_274050E68();

    v6(v8, a3);
    sub_273FBD2BC(v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_274048E94(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v5)
  {
    v4 = *(a2 + 8);
    sub_27402D6C4(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_274048F28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v5 = type metadata accessor for NetworkList();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_27404DECC(a2, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_27404DF34(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for NetworkList);
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
  sub_274051568();
  LOBYTE(v30) = 0;
  sub_274051568();
  v10 = *(&v29 + 1);
  *(a3 + 72) = v29;
  *(a3 + 80) = v10;
  v11 = type metadata accessor for NetworkListRowView();
  v12 = v11[10];
  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  if (qword_280934D80 != -1)
  {
    swift_once();
  }

  v15 = qword_280937200;
  sub_274051938();
  v16 = v11[11];
  v17 = [v13 defaultCenter];
  if (qword_280934D88 != -1)
  {
    swift_once();
  }

  v18 = qword_280937208;
  sub_274051938();
  v19 = v11[12];
  v20 = [v13 defaultCenter];
  if (qword_280934D90 != -1)
  {
    swift_once();
  }

  v21 = qword_280937210;
  sub_274051938();
  type metadata accessor for WFNetworkRowConfigModel();
  sub_27404E2E4(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel);
  v22 = v28;
  *a3 = sub_274050F88();
  *(a3 + 8) = v23;
  v30 = 0;
  sub_274051568();
  swift_unknownObjectRelease();

  *(a3 + 16) = v29;
  *(a3 + 32) = sub_27404E524;
  *(a3 + 40) = v9;
  v24 = OBJC_IVAR___WFNetworkRowConfig_context;
  result = swift_beginAccess();
  v26 = -4.0;
  if (!*&v22[v24])
  {
    v26 = 0.0;
  }

  *(a3 + 48) = v26;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

uint64_t sub_2740492D4(uint64_t a1)
{
  v1 = *(a1 + 8) + OBJC_IVAR___WFNetworkListDataSource_infoButtonTapHandler;
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_274050E68();

    v3(v5, 1);
    sub_273FBD2BC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2740493B4(uint64_t a1)
{
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v2 = sub_274050E28();
  __swift_project_value_buffer(v2, qword_280937140);
  v3 = sub_274050E08();
  v4 = sub_2740518B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2740310C4(0x6761735561746164, 0xEC000000776F5265, &v12);
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: Tapped on date usage row", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2743E44F0](v6, -1, -1);
    MEMORY[0x2743E44F0](v5, -1, -1);
  }

  v7 = *(a1 + 24) + OBJC_IVAR___WFNetworkListConfigDataSource_dataUsageTapHandler;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);

    v9(v11);
    return sub_273FBD2BC(v9);
  }

  return result;
}

double sub_27404954C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_274051118();
  v15 = 1;
  sub_274049694(&v9);
  v18 = v11;
  v19 = v12;
  v20[0] = v13[0];
  *(v20 + 9) = *(v13 + 9);
  v16 = v9;
  v17 = v10;
  *(v22 + 9) = *(v13 + 9);
  v21[2] = v11;
  v21[3] = v12;
  v22[0] = v13[0];
  v21[0] = v9;
  v21[1] = v10;
  sub_274021180(&v16, &v8, &qword_280935AB8, &qword_27405B978);
  sub_2740211E8(v21, &qword_280935AB8, &qword_27405B978);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20[0];
  *&v14[80] = *(v20 + 9);
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  v4 = *&v14[80];
  *(a1 + 81) = *&v14[64];
  *(a1 + 97) = v4;
  result = *&v14[16];
  v6 = *v14;
  *(a1 + 33) = *&v14[16];
  v7 = v15;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 17) = v6;
  return result;
}

uint64_t sub_274049694@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_274050D68();
  v6 = v5;

  v25 = v4;
  v26 = v6;
  sub_274020248();
  v7 = sub_274051468();
  v9 = v8;
  v11 = v10;
  sub_274051518();
  v24 = sub_274051428();
  v13 = v12;
  LOBYTE(v3) = v14;
  v16 = v15;

  sub_27402029C(v7, v9, v11 & 1);

  sub_2740498B4(&v25);
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  LOBYTE(v3) = v3 & 1;
  LOBYTE(v25) = v3;
  v22 = v30;
  *a1 = v24;
  *(a1 + 8) = v13;
  *(a1 + 16) = v3;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v17;
  *(a1 + 56) = v18;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  *(a1 + 80) = v21;
  *(a1 + 88) = v22;
  sub_274020AD4(v24, v13, v3);

  sub_27404E15C();
  sub_27404E1C4();
  sub_27402029C(v24, v13, v3);
}

double sub_2740498B4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_274050D98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274050DB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274050D78();
  sub_274050DA8();
  (*(v8 + 8))(v11, v7);
  v12 = sub_274050D88();
  (*(v3 + 8))(v6, v2);
  if (v12 == 1)
  {
    v13 = sub_274051558();
    v14 = sub_274051528();
    KeyPath = swift_getKeyPath();
    v16 = sub_2740513D8();
    v17 = swift_getKeyPath();
    v27 = v13;
    v28 = KeyPath;
    v29 = v14;
    v30 = v17;
    v31 = v16;
    v32 = 0;
  }

  else
  {
    v18 = sub_274051558();
    v19 = sub_274051528();
    v20 = swift_getKeyPath();
    v21 = sub_2740513D8();
    v22 = swift_getKeyPath();
    v27 = v18;
    v28 = v20;
    v29 = v19;
    v30 = v22;
    v31 = v21;
    v32 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935A00, &unk_27405AD60);
  sub_27403C98C();
  sub_2740512B8();
  result = *&v33;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  *a1 = v33;
  *(a1 + 16) = v24;
  *(a1 + 32) = v25;
  *(a1 + 40) = v26;
  return result;
}

uint64_t sub_274049B4C(uint64_t a1)
{
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v2 = sub_274050E28();
  __swift_project_value_buffer(v2, qword_280937140);
  v3 = sub_274050E08();
  v4 = sub_2740518B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2740310C4(0x696F4A6F546B7361, 0xEC000000776F526ELL, &v11);
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: Tapped on ask to join row", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2743E44F0](v6, -1, -1);
    MEMORY[0x2743E44F0](v5, -1, -1);
  }

  v7 = *(a1 + 24) + OBJC_IVAR___WFNetworkListConfigDataSource_askToJoinModeTapHandler;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_274050E68();

    v9();
    return sub_273FBD2BC(v9);
  }

  return result;
}

uint64_t sub_274049D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_274050D68();
  v8 = v7;

  v42 = v6;
  v43 = v8;
  sub_274020248();
  v9 = sub_274051468();
  v11 = v10;
  LOBYTE(v8) = v12;
  sub_274051518();
  v13 = sub_274051428();
  v39 = v14;
  v40 = v13;
  v38 = v15;
  v41 = v16;

  sub_27402029C(v9, v11, v8 & 1);

  v17 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v42 = sub_27404A064(v42);
  v43 = v18;
  v19 = sub_274051468();
  v21 = v20;
  LOBYTE(v8) = v22;
  sub_274051528();
  v23 = sub_274051428();
  v36 = v24;
  v37 = v23;
  v26 = v25;
  v28 = v27;

  sub_27402029C(v19, v21, v8 & 1);

  sub_2740498B4(&v42);
  v29 = v42;
  v30 = v43;
  v32 = v44;
  v31 = v45;
  v33 = v46;
  LOBYTE(v42) = v38 & 1;
  v34 = v47;
  *a2 = v40;
  *(a2 + 8) = v39;
  *(a2 + 16) = v38 & 1;
  *(a2 + 24) = v41;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v37;
  *(a2 + 56) = v36;
  *(a2 + 64) = v26 & 1;
  *(a2 + 72) = v28;
  *(a2 + 80) = v29;
  *(a2 + 88) = v30;
  *(a2 + 96) = v32;
  *(a2 + 104) = v31;
  *(a2 + 112) = v33;
  *(a2 + 120) = v34;
  sub_274020AD4(v40, v39, v38 & 1);

  sub_274020AD4(v37, v36, v26 & 1);

  sub_27404E15C();
  sub_27404E1C4();
  sub_27402029C(v37, v36, v26 & 1);

  sub_27402029C(v40, v39, v42);
}

uint64_t sub_27404A064(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_274050D68();

  return v3;
}

uint64_t sub_27404A240(uint64_t a1)
{
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v2 = sub_274050E28();
  __swift_project_value_buffer(v2, qword_280937140);
  v3 = sub_274050E08();
  v4 = sub_2740518B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2740310C4(0xD000000000000015, 0x8000000274067410, &v11);
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: Tapped on auto instant hotspot row", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2743E44F0](v6, -1, -1);
    MEMORY[0x2743E44F0](v5, -1, -1);
  }

  v7 = *(a1 + 24) + OBJC_IVAR___WFNetworkListConfigDataSource_autoInstantHotspotTapHandler;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_274050E68();

    v9();
    return sub_273FBD2BC(v9);
  }

  return result;
}

double sub_27404A420@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_274051118();
  v22 = 1;
  a2(&v14, a1);
  v27 = v18;
  v28 = v19;
  v29[0] = v20[0];
  *(v29 + 9) = *(v20 + 9);
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v30[0] = v14;
  v30[1] = v15;
  v30[2] = v16;
  v30[3] = v17;
  v30[4] = v18;
  v30[5] = v19;
  v31[0] = v20[0];
  *(v31 + 9) = *(v20 + 9);
  sub_274021180(&v23, &v13, &qword_2809359F8, &qword_27405B730);
  sub_2740211E8(v30, &qword_2809359F8, &qword_27405B730);
  *(&v21[4] + 7) = v27;
  *(&v21[5] + 7) = v28;
  *(&v21[6] + 7) = v29[0];
  v21[7] = *(v29 + 9);
  *(v21 + 7) = v23;
  *(&v21[1] + 7) = v24;
  *(&v21[2] + 7) = v25;
  *(&v21[3] + 7) = v26;
  v7 = v21[5];
  *(a3 + 81) = v21[4];
  *(a3 + 97) = v7;
  v8 = v21[7];
  *(a3 + 113) = v21[6];
  *(a3 + 129) = v8;
  v9 = v21[1];
  *(a3 + 17) = v21[0];
  *(a3 + 33) = v9;
  result = *&v21[2];
  v11 = v21[3];
  *(a3 + 49) = v21[2];
  v12 = v22;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 65) = v11;
  return result;
}

uint64_t sub_27404A5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_274050D68();
  v8 = v7;

  v42 = v6;
  v43 = v8;
  sub_274020248();
  v9 = sub_274051468();
  v11 = v10;
  LOBYTE(v8) = v12;
  sub_274051518();
  v13 = sub_274051428();
  v39 = v14;
  v40 = v13;
  v38 = v15;
  v41 = v16;

  sub_27402029C(v9, v11, v8 & 1);

  v17 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v42 = sub_27404A8E0(v42);
  v43 = v18;
  v19 = sub_274051468();
  v21 = v20;
  LOBYTE(v8) = v22;
  sub_274051528();
  v23 = sub_274051428();
  v36 = v24;
  v37 = v23;
  v26 = v25;
  v28 = v27;

  sub_27402029C(v19, v21, v8 & 1);

  sub_2740498B4(&v42);
  v29 = v42;
  v30 = v43;
  v32 = v44;
  v31 = v45;
  v33 = v46;
  LOBYTE(v42) = v38 & 1;
  v34 = v47;
  *a2 = v40;
  *(a2 + 8) = v39;
  *(a2 + 16) = v38 & 1;
  *(a2 + 24) = v41;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v37;
  *(a2 + 56) = v36;
  *(a2 + 64) = v26 & 1;
  *(a2 + 72) = v28;
  *(a2 + 80) = v29;
  *(a2 + 88) = v30;
  *(a2 + 96) = v32;
  *(a2 + 104) = v31;
  *(a2 + 112) = v33;
  *(a2 + 120) = v34;
  sub_274020AD4(v40, v39, v38 & 1);

  sub_274020AD4(v37, v36, v26 & 1);

  sub_27404E15C();
  sub_27404E1C4();
  sub_27402029C(v37, v36, v26 & 1);

  sub_27402029C(v40, v39, v42);
}

uint64_t sub_27404A8E0(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_274050D68();

  return v3;
}

uint64_t sub_27404AAD0(uint64_t a1)
{
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v2 = sub_274050E28();
  __swift_project_value_buffer(v2, qword_280937140);
  v3 = sub_274050E08();
  v4 = sub_2740518B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2740310C4(0x74654E726568746FLL, 0xEF776F526B726F77, &v12);
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: Tapped on other network row", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2743E44F0](v6, -1, -1);
    MEMORY[0x2743E44F0](v5, -1, -1);
  }

  v7 = *(a1 + 8) + OBJC_IVAR___WFNetworkListDataSource_otherNetworkTapHandler;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);

    v9(v11);
    return sub_273FBD2BC(v9);
  }

  return result;
}

double sub_27404AC6C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  v4 = sub_274051118();
  v18 = 1;
  sub_27404AE70(&v11);
  v23 = v15;
  v24[0] = v16[0];
  *(v24 + 9) = *(v16 + 9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26[0] = v16[0];
  *(v26 + 9) = *(v16 + 9);
  sub_274021180(&v19, &v10, &qword_280935AA0, &qword_27405B940);
  sub_2740211E8(v25, &qword_280935AA0, &qword_27405B940);

  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24[0];
  *&v17[96] = *(v24 + 9);
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  v5 = *&v17[32];
  *(a1 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a1 + 81) = *&v17[64];
  *(a1 + 97) = v6;
  *(a1 + 113) = *&v17[96];
  result = *v17;
  v8 = *&v17[16];
  *(a1 + 17) = *v17;
  *(a1 + 33) = v8;
  v9 = v18;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 49) = v5;
  return result;
}

uint64_t sub_27404AE70@<X0>(uint64_t a1@<X8>)
{
  sub_274051638();
  sub_274050F38();
  sub_274020248();

  v2 = sub_274051468();
  v4 = v3;
  v5 = v2;
  v7 = v6 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  *(a1 + 56) = v15;
  *(a1 + 64) = v2;
  *(a1 + 72) = v3;
  *(a1 + 80) = v6 & 1;
  *(a1 + 88) = v8;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_274020AD4(v2, v3, v6 & 1);

  sub_27402029C(v5, v4, v7);
}

uint64_t sub_27404AFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935A30, &qword_27405B828);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = (&v62 - v7);
  v8 = sub_2740512F8();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v8);
  v74 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809356B8, &unk_27405B830);
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A40, &unk_27405ACC0);
  v15 = *(*(v70 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v70);
  v77 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v71 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A48, &qword_27405B840);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v81 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = &v62 - v23;
  v24 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v85 >> 62)
  {
    v25 = sub_274051A98();
  }

  else
  {
    v25 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25 <= 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    if (v85 >> 62)
    {
      sub_274051A98();
    }

    else
    {
      v26 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  v29 = sub_274050D68();
  v31 = v30;

  v85 = v29;
  v86 = v31;
  sub_274020248();
  v32 = sub_274051468();
  v34 = v33;
  v79 = v35;
  v37 = v36;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v85 == 1)
  {
    sub_274051638();
    sub_274050F38();
    v66 = v85;
    v65 = v87;
    v64 = v89;
    v63 = v90;
    v84 = 1;
    v83 = v86;
    v82 = v88;
    v67 = v34;
    v38 = v14;
    sub_274050EF8();
    v39 = v74;
    sub_2740512E8();
    sub_27402179C(&qword_2809356C0, &qword_2809356B8, &unk_27405B830);
    sub_27404E2E4(&qword_280935A60, MEMORY[0x277CDE330]);
    v68 = v32;
    v40 = v71;
    v41 = v73;
    v69 = v37;
    v42 = v76;
    sub_274051498();
    (*(v75 + 8))(v39, v42);
    (*(v72 + 8))(v38, v41);
    v43 = (v40 + *(v70 + 36));
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935270, &qword_274059CC0) + 28);
    v45 = *MEMORY[0x277CDF438];
    v46 = sub_274050ED8();
    (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
    *v43 = swift_getKeyPath();
    LOBYTE(v44) = v84;
    v76 = v4;
    v47 = v83;
    v48 = v5;
    v49 = a2;
    v50 = v82;
    v51 = v77;
    sub_274021180(v40, v77, &qword_280935A40, &unk_27405ACC0);
    v52 = v78;
    *v78 = 0;
    *(v52 + 8) = v44;
    v52[2] = v66;
    *(v52 + 24) = v47;
    v52[4] = v65;
    *(v52 + 40) = v50;
    a2 = v49;
    v53 = v63;
    v52[6] = v64;
    v52[7] = v53;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A70, &qword_27405B8D0);
    sub_274021180(v51, v52 + *(v54 + 48), &qword_280935A40, &unk_27405ACC0);
    v55 = v40;
    v32 = v68;
    sub_2740211E8(v55, &qword_280935A40, &unk_27405ACC0);
    sub_2740211E8(v51, &qword_280935A40, &unk_27405ACC0);
    v56 = v52;
    v37 = v69;
    v57 = v80;
    sub_273FBD094(v56, v80);
    (*(v48 + 56))(v57, 0, 1, v76);
    v34 = v67;
  }

  else
  {
    v57 = v80;
    (*(v5 + 56))(v80, 1, 1, v4);
  }

  v58 = v81;
  sub_274021180(v57, v81, &qword_280935A48, &qword_27405B840);
  *a2 = v32;
  *(a2 + 8) = v34;
  v59 = v79 & 1;
  *(a2 + 16) = v79 & 1;
  *(a2 + 24) = v37;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935A50, &unk_27405B890);
  sub_274021180(v58, a2 + *(v60 + 48), &qword_280935A48, &qword_27405B840);
  sub_274020AD4(v32, v34, v59);

  sub_2740211E8(v57, &qword_280935A48, &qword_27405B840);
  sub_2740211E8(v58, &qword_280935A48, &qword_27405B840);
  sub_27402029C(v32, v34, v59);
}

uint64_t sub_27404B888@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274051158();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  sub_274050D68();

  sub_274051148();
  sub_274051138();
  v7 = [v5 bundleForClass_];
  sub_274050D68();

  sub_274051128();

  sub_274051138();
  sub_274051128();

  sub_274051138();
  sub_274051178();
  result = sub_274051458();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_27404BAE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  swift_beginAccess();
  *(v3 + v4);
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  sub_274020248();
  result = sub_274051468();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

unint64_t sub_27404BC30()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR___WFNetworkListConfigDataSource_isCellularDevice;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR___WFNetworkListConfigDataSource_autoUnlockEnabled;
  swift_beginAccess();
  v7 = 0xD00000000000001DLL;
  if (v3)
  {
    v7 = 0xD00000000000001FLL;
  }

  v8 = 0xD000000000000025;
  if (v3)
  {
    v8 = 0xD000000000000027;
  }

  if (v5)
  {
    v7 = v8;
  }

  v9 = 0xD000000000000029;
  if (!v3)
  {
    v9 = 0xD000000000000027;
  }

  v10 = 0xD00000000000002FLL;
  if (v3)
  {
    v10 = 0xD000000000000031;
  }

  if (v5)
  {
    v9 = v10;
  }

  if (*(v1 + v6) == 1)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_27404BDAC(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_274050D68();

  return v3;
}

uint64_t sub_27404BF88@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v71 = a3;
  v70 = a2;
  v72 = a4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B10, &qword_27405BA50);
  v5 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v61 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B18, &qword_27405BA58);
  v7 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v80 = &v61 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B20, &qword_27405BA60);
  v9 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v11 = &v61 - v10;
  v65 = sub_2740512F8();
  v64 = *(v65 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809356B8, &unk_27405B830);
  v63 = *(v15 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B28, &qword_27405BA68);
  v66 = *(v67 - 8);
  v19 = *(v66 + 64);
  v20 = MEMORY[0x28223BE20](v67);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B30, &qword_27405BA70);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v77 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v81 = &v61 - v29;
  sub_274051638();
  sub_274050F38();
  v75 = v88;
  v76 = v86;
  v74 = v90;
  v73 = v91;
  v94 = 1;
  v93 = v87;
  v92 = v89;
  v30 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v82 == 2)
  {
    v82 = v70;
    v83 = v71;
    sub_274020248();

    v31 = sub_274051468();
    v33 = v32;
    LODWORD(v70) = v34;
    v71 = v35;
    sub_274050EF8();
    sub_2740512E8();
    sub_27402179C(&qword_2809356C0, &qword_2809356B8, &unk_27405B830);
    sub_27404E2E4(&qword_280935A60, MEMORY[0x277CDE330]);
    v36 = v22;
    v37 = v24;
    v62 = v24;
    v38 = v65;
    sub_274051498();
    (*(v64 + 8))(v14, v38);
    (*(v63 + 8))(v18, v15);
    v39 = v66;
    v40 = *(v66 + 16);
    v41 = v67;
    v40(v36, v37, v67);
    *v11 = v31;
    *(v11 + 1) = v33;
    v42 = v70 & 1;
    v11[16] = v70 & 1;
    *(v11 + 3) = v71;
    *(v11 + 4) = 0;
    v11[40] = 1;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B60, &qword_27405BB00);
    v40(&v11[*(v43 + 64)], v36, v41);
    sub_274020AD4(v31, v33, v42);

    sub_274020AD4(v31, v33, v42);
    v70 = *(v39 + 8);
    v44 = v70;

    v44(v36, v41);
    sub_27402029C(v31, v33, v42);

    sub_274021180(v11, v80, &qword_280935B20, &qword_27405BA60);
    swift_storeEnumTagMultiPayload();
    sub_27402179C(&qword_280935B38, &qword_280935B20, &qword_27405BA60);
    sub_27404E3E4();
    sub_2740512B8();
    sub_27402029C(v31, v33, v42);

    sub_2740211E8(v11, &qword_280935B20, &qword_27405BA60);
    v70(v62, v41);
  }

  else
  {
    v84 = v70;
    v85 = v71;
    v45 = *(a1 + 16);
    type metadata accessor for NetworkListConfigDataSource();
    sub_27404E2E4(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource);

    v46 = sub_274050F98();
    swift_getKeyPath();
    sub_274050FA8();

    sub_274020248();
    v47 = v68;
    sub_2740515C8();
    KeyPath = swift_getKeyPath();
    v49 = swift_allocObject();
    *(v49 + 16) = 1;
    v50 = (v47 + *(v69 + 36));
    *v50 = KeyPath;
    v50[1] = sub_27404E3DC;
    v50[2] = v49;
    sub_274021180(v47, v80, &qword_280935B10, &qword_27405BA50);
    swift_storeEnumTagMultiPayload();
    sub_27402179C(&qword_280935B38, &qword_280935B20, &qword_27405BA60);
    sub_27404E3E4();
    sub_2740512B8();
    sub_2740211E8(v47, &qword_280935B10, &qword_27405BA50);
  }

  v51 = v94;
  v52 = v93;
  v53 = v92;
  v54 = v81;
  v55 = v77;
  sub_274021180(v81, v77, &qword_280935B30, &qword_27405BA70);
  v56 = v72;
  *v72 = 0;
  *(v56 + 8) = v51;
  v57 = v75;
  v56[2] = v76;
  *(v56 + 24) = v52;
  v56[4] = v57;
  *(v56 + 40) = v53;
  v58 = v73;
  v56[6] = v74;
  v56[7] = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B58, &qword_27405BAF8);
  sub_274021180(v55, v56 + *(v59 + 48), &qword_280935B30, &qword_27405BA70);
  sub_2740211E8(v54, &qword_280935B30, &qword_27405BA70);
  return sub_2740211E8(v55, &qword_280935B30, &qword_27405BA70);
}

uint64_t sub_27404C96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v70 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935948, &qword_27405B498);
  v66 = *(v79 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v79);
  v68 = &v61 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B70, &qword_27405BB58);
  v8 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v78 = &v61 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B20, &qword_27405BA60);
  v10 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v12 = (&v61 - v11);
  v65 = sub_2740512F8();
  v63 = *(v65 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809356B8, &unk_27405B830);
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B28, &qword_27405BA68);
  v80 = *(v67 - 8);
  v20 = v80[8];
  v21 = MEMORY[0x28223BE20](v67);
  v64 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B78, &qword_27405BB60);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v76 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v81 = &v61 - v29;
  sub_274051638();
  sub_274050F38();
  v74 = v86;
  v73 = v88;
  v72 = v90;
  v71 = v91;
  v94 = 1;
  v93 = v87;
  v92 = v89;
  v30 = a1;
  v31 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v82 == 2)
  {
    v82 = v70;
    v83 = v69;
    sub_274020248();

    v32 = sub_274051468();
    v70 = v33;
    LODWORD(v68) = v34;
    v69 = v35;
    sub_274050EF8();
    sub_2740512E8();
    sub_27402179C(&qword_2809356C0, &qword_2809356B8, &unk_27405B830);
    sub_27404E2E4(&qword_280935A60, MEMORY[0x277CDE330]);
    v36 = v24;
    v61 = v24;
    v37 = v65;
    sub_274051498();
    (*(v63 + 8))(v15, v37);
    (*(v62 + 8))(v19, v16);
    v38 = v80[2];
    v39 = v64;
    v40 = v67;
    v38(v64, v36, v67);
    *v12 = v32;
    v41 = v12;
    v42 = a4;
    v43 = v70;
    *(v41 + 8) = v70;
    v44 = v68 & 1;
    *(v41 + 16) = v68 & 1;
    *(v41 + 24) = v69;
    *(v41 + 32) = 0;
    *(v41 + 40) = 1;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B60, &qword_27405BB00);
    v38((v41 + *(v45 + 64)), v39, v40);
    v46 = v43;
    a4 = v42;
    sub_274020AD4(v32, v46, v44);

    sub_274020AD4(v32, v46, v44);
    v47 = v80[1];
    ++v80;

    v47(v39, v40);
    sub_27402029C(v32, v46, v44);

    sub_274021180(v41, v78, &qword_280935B20, &qword_27405BA60);
    swift_storeEnumTagMultiPayload();
    sub_27402179C(&qword_280935B38, &qword_280935B20, &qword_27405BA60);
    sub_27402179C(&qword_280935950, &qword_280935948, &qword_27405B498);
    sub_2740512B8();
    sub_27402029C(v32, v70, v44);

    sub_2740211E8(v41, &qword_280935B20, &qword_27405BA60);
    v47(v61, v40);
  }

  else
  {
    v84 = v70;
    v85 = v69;
    v48 = *(v30 + 16);
    type metadata accessor for NetworkListConfigDataSource();
    v49 = v66;
    sub_27404E2E4(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource);

    v50 = sub_274050F98();
    swift_getKeyPath();
    sub_274050FA8();

    sub_274020248();
    v51 = v68;
    sub_2740515C8();
    v52 = v79;
    (*(v49 + 16))(v78, v51, v79);
    swift_storeEnumTagMultiPayload();
    sub_27402179C(&qword_280935B38, &qword_280935B20, &qword_27405BA60);
    sub_27402179C(&qword_280935950, &qword_280935948, &qword_27405B498);
    sub_2740512B8();
    (*(v49 + 8))(v51, v52);
  }

  v53 = v94;
  v54 = v93;
  v55 = v92;
  v56 = v81;
  v57 = v76;
  sub_274021180(v81, v76, &qword_280935B78, &qword_27405BB60);
  *a4 = 0;
  *(a4 + 8) = v53;
  *(a4 + 16) = v74;
  *(a4 + 24) = v54;
  *(a4 + 32) = v73;
  *(a4 + 40) = v55;
  v58 = v71;
  *(a4 + 48) = v72;
  *(a4 + 56) = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935B80, &qword_27405BB68);
  sub_274021180(v57, a4 + *(v59 + 48), &qword_280935B78, &qword_27405BB60);
  sub_2740211E8(v56, &qword_280935B78, &qword_27405BB60);
  return sub_2740211E8(v57, &qword_280935B78, &qword_27405BB60);
}

uint64_t sub_27404D3B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_27404DECC(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_27404DF34(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NetworkList);
  *a2 = sub_27404EA0C;
  a2[1] = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for NetworkListMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NetworkListMode(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_27404D668()
{
  sub_27404D70C();
  if (v0 <= 0x3F)
  {
    sub_27404D7A0();
    if (v1 <= 0x3F)
    {
      sub_274051948();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27404D70C()
{
  if (!qword_2809357E0)
  {
    type metadata accessor for NetworkListDataSource();
    sub_27404E2E4(&unk_2809357B0, type metadata accessor for NetworkListDataSource);
    v0 = sub_274050FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809357E0);
    }
  }
}

void sub_27404D7A0()
{
  if (!qword_2809357E8)
  {
    type metadata accessor for NetworkListConfigDataSource();
    sub_27404E2E4(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource);
    v0 = sub_274050FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809357E8);
    }
  }
}

uint64_t sub_27404D834@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for NetworkList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_274041E2C(a1, v6, a2);
}

double sub_27404D8B4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 201) = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_27404D8E4()
{
  result = qword_280935818;
  if (!qword_280935818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935820, &qword_27405B1F8);
    sub_27402179C(&qword_280935828, &qword_280935830, &qword_27405B200);
    sub_27402179C(&qword_280935838, &qword_280935840, &qword_27405B208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935818);
  }

  return result;
}

uint64_t sub_27404D9C4()
{
  v1 = *(sub_274050FE8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for NetworkList() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_274045670();
}

unint64_t sub_27404DABC()
{
  result = qword_280935900;
  if (!qword_280935900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809358F8, &qword_27405B390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935900);
  }

  return result;
}

uint64_t sub_27404DB48(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27404DBC4()
{
  result = qword_280935928;
  if (!qword_280935928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935930, &unk_27405B3A8);
    sub_2740207F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935928);
  }

  return result;
}

unint64_t sub_27404DCD0()
{
  result = qword_2809359B0;
  if (!qword_2809359B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809359A0, &qword_27405B5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809359B0);
  }

  return result;
}

uint64_t sub_27404DECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27404DF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27404DF9C()
{
  v1 = *(type metadata accessor for NetworkListRowView() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for NetworkList() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_274048944(v5, v0 + v2, v6);
}

uint64_t sub_27404E0A0(uint64_t a1)
{
  v2 = type metadata accessor for NetworkListRowView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27404E15C()
{
}

uint64_t sub_27404E1C4()
{
}

uint64_t sub_27404E240(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NetworkList() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_27404E2E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27404E36C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935AC0, &qword_27405B980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27404E3E4()
{
  result = qword_280935B40;
  if (!qword_280935B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935B10, &qword_27405BA50);
    sub_27402179C(&qword_280935950, &qword_280935948, &qword_27405B498);
    sub_27402179C(&qword_280935B48, &qword_280935B50, &qword_27405BAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935B40);
  }

  return result;
}

uint64_t objectdestroy_96Tm()
{
  v1 = (type metadata accessor for NetworkList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_274051948();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_27404E67C(uint64_t a1)
{
  v3 = *(type metadata accessor for NetworkList() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_274048DAC(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_27404E70C()
{
  v1 = *(type metadata accessor for NetworkList() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_274048E94(v2, v3);
}

unint64_t sub_27404E770()
{
  result = qword_280935B90;
  if (!qword_280935B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935B88, &qword_27405BB70);
    sub_27404E2E4(&qword_2809350A0, type metadata accessor for NetworkListRowView);
    sub_27402179C(&qword_280935B98, &unk_280935BA0, &unk_27405BB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935B90);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for NetworkList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_274051948();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void *sub_27404E960@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, void *a3@<X8>)
{
  v7 = *(type metadata accessor for NetworkList() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  result = a2(&v10, *a1);
  *a3 = v10;
  return result;
}

unint64_t sub_27404EA4C()
{
  result = qword_280935BB0;
  if (!qword_280935BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935BB0);
  }

  return result;
}

uint64_t sub_27404EAA0()
{
  v1 = *v0;
  sub_274051B38();
  MEMORY[0x2743E3950](v1);
  return sub_274051B68();
}

uint64_t sub_27404EB14()
{
  v1 = *v0;
  sub_274051B38();
  MEMORY[0x2743E3950](v1);
  return sub_274051B68();
}

uint64_t WFShouldUseInsetTableView()
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 bounds];
  if (v1 <= 320.0)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;

  if (v4 > 320.0)
  {
    v0 = [MEMORY[0x277D75128] sharedApplication];
    v6 = [v0 preferredContentSizeCategory];
    v5 = _WFIsSupportedContentSizeCategoryForInsetTableView(v6);

LABEL_6:
    return v5;
  }

  return 0;
}

uint64_t WFSecurityModeFromScanDictionary(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:5];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:12];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:13];
  v48 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v43 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v41 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v46 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v42 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v45 = [MEMORY[0x277CCABB0] numberWithInt:18];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
    v21 = 0;
    if (!a2)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  v7 = [v3 objectForKey:@"WEP"];

  if (v7)
  {
    v8 = [v3 objectForKey:@"WEP"];
    v9 = [v8 BOOLValue];

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v40 = a2;
  v11 = [v3 objectForKey:@"RSN_IE"];

  if (!v11)
  {
    v20 = 16;
    v21 = v10;
    goto LABEL_52;
  }

  v39 = v5;
  v12 = [v3 objectForKey:@"RSN_IE"];
  v13 = [v12 objectForKey:@"IE_KEY_RSN_AUTHSELS"];
  v14 = [v12 objectForKey:@"IE_KEY_RSN_CAPS"];
  v15 = [v14 objectForKey:@"MFP_REQUIRED"];
  v16 = [v14 objectForKey:@"MFP_CAPABLE"];
  if (v15)
  {
    v19 = v15 != *MEMORY[0x277CBED28] || v16 != *MEMORY[0x277CBED28] || v16 == 0;
  }

  else
  {
    v19 = 1;
  }

  v38 = v6;
  if (([v13 containsObject:v47] & 1) != 0 || objc_msgSend(v13, "containsObject:", v44))
  {
    v22 = 1;
    v23 = 1024;
    v10 = 1024;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  if (([v13 containsObject:v4] & 1) != 0 || (objc_msgSend(v13, "containsObject:", v39) & 1) != 0 || objc_msgSend(v13, "containsObject:", v38))
  {
    if ((v19 | [v13 containsObject:v4]))
    {
      v23 |= 0x20uLL;
      if (!v22)
      {
        v10 = 32;
      }

      v22 = 1;
    }

    else
    {
      if (!v22)
      {
        v10 = 1024;
      }

      v22 = 1;
      v23 = 1056;
    }
  }

  if (([v13 containsObject:v46] & 1) != 0 || objc_msgSend(v13, "containsObject:", v42))
  {
    if (!v22)
    {
      v10 = 512;
    }

    v23 |= 0x200uLL;
    v24 = [v13 containsObject:v45];
  }

  else
  {
    v24 = [v13 containsObject:v45];
    if (!v22)
    {
      v25 = 0;
      v26 = 2048;
      goto LABEL_39;
    }
  }

  v25 = 1;
  v26 = v10;
LABEL_39:
  v27 = v25 | v24;
  if (v24)
  {
    v28 = v23 | 0x800;
  }

  else
  {
    v28 = v23;
  }

  if (v24)
  {
    v20 = v26;
  }

  else
  {
    v20 = v10;
  }

  if (([v13 containsObject:v48] & 1) != 0 || (objc_msgSend(v13, "containsObject:", v43) & 1) != 0 || objc_msgSend(v13, "containsObject:", v41))
  {
    if (!v27)
    {
      v20 = 8;
    }

    v10 = v28 | 8;
  }

  else
  {
    if (v20 == 1)
    {
      v10 = 1075;
    }

    else
    {
      v10 = 32;
    }

    if (v27)
    {
      v10 = v28;
    }

    else
    {
      v20 = v10;
    }
  }

  v6 = v38;
  v5 = v39;

  v21 = v20;
LABEL_52:
  v29 = [v3 objectForKey:@"WPA_IE"];

  if (v29)
  {
    v30 = [v3 objectForKey:@"WPA_IE"];
    v31 = [v30 objectForKey:@"IE_KEY_WPA_AUTHSELS"];
    v32 = [v31 containsObject:v4];
    if (v11)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    if (v32)
    {
      v10 = v10 & 0xFEE | 0x10;
    }

    else
    {
      v10 &= 0xFFEu;
    }

    if (v32)
    {
      v21 = v20;
    }

    if ([v31 containsObject:v48])
    {
      if (!v33)
      {
        v21 = 4;
      }

      v10 |= 4uLL;
    }

    else
    {
      v34 = 16;
      if (v21 == 1)
      {
        v34 = 1075;
      }

      if (!v33)
      {
        v10 = v34;
        v21 = v34;
      }
    }

    a2 = v40;
  }

  else
  {
    a2 = v40;
  }

  v35 = [v3 objectForKey:@"WAPI"];
  if (v35)
  {
    v36 = v35;
    if (([v35 intValue] & 8) != 0)
    {
      v10 = 128;
    }

    else
    {
      v10 = 64;
    }

    v21 = v10;
  }

  if (a2)
  {
LABEL_77:
    *a2 = v10;
  }

LABEL_78:

  return v21;
}

id WFUserNameFromEnterpriseProfile(void *a1)
{
  v1 = [a1 objectForKey:@"EAPClientConfiguration"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:@"UserName"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id WFGetCarNameFromCarPlayNetworkUUID(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CF8A68]);
    v3 = v2;
    if (v2)
    {
      v4 = [v2 vehicleNameForWiFiUUID:v1];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v4;
}

uint64_t WFIsValidIPv4Address(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if ([v3 isValidIPv4Address] && objc_msgSend(v5, "isValidSubnetMask"))
    {
      if ([v3 hasPrefix:@"169.254."])
      {
        v6 = [v5 isEqualToString:@"255.255.0.0"] ^ 1;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t WFIsValidIPv6Address(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  v7[0] = 0;
  v8 = 0;
  v7[1] = 0;
  if (!v1 || (CFStringGetCString(v1, buffer, 46, 0x600u), inet_pton(30, buffer, v7) != 1) || LOBYTE(v7[0]) == 254 && (BYTE1(v7[0]) & 0xC0) == 0x80)
  {
    v4 = 0;
  }

  else
  {
    v3 = LOBYTE(v7[0]) != 255 || (BYTE1(v7[0]) & 0xF0) == 48;
    v4 = (BYTE1(v7[0]) & 0xF) != 2 || v3;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL WFScanRecordArchiveToEnterprisePath(void *a1)
{
  v1 = *MEMORY[0x277CBECE8];
  [a1 attributes];
  v2 = WiFiNetworkCreate();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = WiFiNetworkArchiveToPath() != 0;
  CFRelease(v3);
  return v4;
}