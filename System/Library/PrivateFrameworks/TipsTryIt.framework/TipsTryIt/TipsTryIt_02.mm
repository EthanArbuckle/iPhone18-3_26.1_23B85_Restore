uint64_t sub_26F16FA90(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = *(a1 + 200);
  LOBYTE(v20) = *(a1 + 192);
  *&v21 = v6;
  LOBYTE(v17) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  sub_26F180424();
  v7 = *(a2 + 16);
  v8 = *(v5 + 208);
  if (v7)
  {
    v2 = 0;
    v16 = a2 + 32;
    do
    {
      if (v8 != v2)
      {
        v3 = *(v16 + 8 * v2);
        v9 = *(v5 + 40);
        v10 = *(v5 + 48);
        v11 = *(v5 + 56);
        v20 = v9;
        *&v21 = v10;
        *(&v21 + 1) = v11;

        a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
        MEMORY[0x27438A090](&v22);
        v12 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_26F1716A8(v12);
        }

        if (v2 >= *(v12 + 2))
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        *&v12[8 * v2 + 32] = v3;
        v17 = v9;
        v18 = v10;
        v19 = v11;
        sub_26F180484();
      }

      ++v2;
    }

    while (v7 != v2);
  }

  v20 = *(v5 + 16);
  v21 = *(v5 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  MEMORY[0x27438A090](&v17);
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (v8 >= *(v17 + 16))
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v14 = *(v17 + 8 * v8 + 32);

    v3 = sub_26F16FD3C(v14, 110.0);
    v7 = *(v5 + 40);
    v2 = *(v5 + 48);
    v5 = *(v5 + 56);
    v20 = v7;
    *&v21 = v2;
    *(&v21 + 1) = v5;

    MEMORY[0x27438A090](&v22, v13);
    a2 = v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_12;
    }
  }

  result = sub_26F1716A8(a2);
  a2 = result;
LABEL_12:
  if (v8 >= *(a2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8 * v8 + 32) = v3;
    v17 = v7;
    v18 = v2;
    v19 = v5;
    sub_26F180484();
  }

  return result;
}

double sub_26F16FD3C(double a1, double a2)
{
  sub_26F17F8E4();
  v6 = v5 + a1;
  v8 = *(v2 + 72);
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  v11 = *(v2 + 96);
  v12 = *(v2 + 104);
  v24 = *(v2 + 64);
  v7 = v24;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D51F8, &unk_26F183A98);
  MEMORY[0x27438A090](&v23);
  MinY = CGRectGetMinY(v23);
  v15 = a2 * 0.5;
  v24 = v7;
  v25 = v8;
  v16 = v15 + MinY + 2.0;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  MEMORY[0x27438A090](&v23, v13);
  v17 = CGRectGetMaxY(v23) - v15 + -2.0;
  v18 = v6 < v16;
  if (v6 > v16)
  {
    v19 = v6;
  }

  else
  {
    v19 = v16;
  }

  v20 = *(v2 + 168);
  LOBYTE(v24) = *(v2 + 160);
  if (v17 < v6)
  {
    v18 = 1;
  }

  v25 = v20;
  LOBYTE(v23.origin.x) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  if (v17 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  return v21 - a1;
}

uint64_t sub_26F16FE90(uint64_t a1, uint64_t a2)
{
  v3 = sub_26F17FF44();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DraggableLocationItem();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = v8;
  v50 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - v11;
  v13 = sub_26F180714();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v20 = *(a2 + 120);
  LOBYTE(v55) = *(a2 + 112);
  v56 = v20;
  LOBYTE(v54) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  v21 = *(a2 + 192);
  v22 = *(a2 + 200);
  LOBYTE(v55) = v21;
  v56 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  result = sub_26F180414();
  if (LOBYTE(v54) == 1)
  {
    LOBYTE(v55) = v21;
    v56 = v22;
    LOBYTE(v54) = 2;
    sub_26F180424();
    v24 = *(a2 + 128);
    v25 = *(a2 + 136);
    LOBYTE(v55) = v24;
    v56 = v25;
    sub_26F180414();
    if (LOBYTE(v54) == 1)
    {
      v26 = *(a2 + 184);
      v55 = *(a2 + 176);
      v56 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
      sub_26F180414();
      v27 = sub_26F16F63C(*(a2 + 208), v54);
      v28 = sub_26F180894();
      v28[2] = 3;
      v28[5] = 0;
      v28[6] = 0;
      v28[4] = 0;
      v29 = sub_26F15B090(v27, v28);

      if (v29)
      {
        LOBYTE(v55) = v24;
        v56 = v25;
        LOBYTE(v54) = 0;
        sub_26F180424();
        v30 = sub_26F16CBC8() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
        v31 = *(v30 + 56);
        *(v30 + 48) = 0;
        *(v30 + 56) = 0;

        sub_26F15D9C8();
        v32 = *(v30 + 56);
        *(v30 + 48) = 0;
        *(v30 + 56) = 0;

        sub_26F16CBC8();
        sub_26F180704();
        v33 = v47;
        (*(v47 + 56))(v12, 1, 1, v13);
        sub_26F15BCB8(v19, 0, v12);

        sub_26F13AB10(v12, &qword_2806D4360, &qword_26F181DC0);
        (*(v33 + 8))(v19, v13);
      }

      else
      {
        sub_26F16CBC8();
        sub_26F15B0EC(1, 1, 0);
      }
    }

    else
    {
      sub_26F16CBC8();
      v34 = *(a2 + 160);
      v35 = *(a2 + 168);
      LOBYTE(v55) = v34;
      v56 = v35;
      sub_26F180414();
      sub_26F180704();
      sub_26F180704();
      v36 = v47;
      (*(v47 + 56))(v12, 0, 1, v13);
      sub_26F15BCB8(v17, 1, v12);

      sub_26F13AB10(v12, &qword_2806D4360, &qword_26F181DC0);
      (*(v36 + 8))(v17, v13);
      LOBYTE(v55) = v34;
      v56 = v35;
      LOBYTE(v54) = 0;
      sub_26F180424();
    }

    result = sub_26F16CBC8();
    v37 = *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      __break(1u);
    }

    else
    {
      *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64) = v39;

      sub_26F1805D4();
      sub_26F1805A4();

      MEMORY[0x28223BE20](v40);
      *(&v46 - 2) = a2;
      v41 = v50;
      sub_26F170B90(a2, v50);
      v42 = (*(v48 + 80) + 16) & ~*(v48 + 80);
      v43 = swift_allocObject();
      sub_26F170BF8(v41, v43 + v42);
      v44 = v51;
      sub_26F17FF34();
      sub_26F17FA34();

      (*(v52 + 8))(v44, v53);
      v45 = *(a2 + 152);
      LOBYTE(v55) = *(a2 + 144);
      v56 = v45;
      LOBYTE(v54) = 1;
      return sub_26F180424();
    }
  }

  return result;
}

uint64_t sub_26F17059C(uint64_t a1)
{
  v3 = *(a1 + 176);
  v5 = *(a1 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  sub_26F180414();
  sub_26F16F63C(*(a1 + 208), v7);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  return sub_26F180484();
}

uint64_t sub_26F17064C(uint64_t a1)
{
  v2 = *(a1 + 192);
  v3 = *(a1 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  return sub_26F180424();
}

uint64_t sub_26F1706A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 192);
  v4 = *(a2 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  return sub_26F180424();
}

uint64_t sub_26F170708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14[-v4];
  v6 = sub_26F180714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 120);
  v15 = *(a1 + 112);
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  result = sub_26F180414();
  if (v14[15] == 1)
  {
    v13 = *(a1 + 152);
    v15 = *(a1 + 144);
    v16 = v13;
    sub_26F180414();
    sub_26F16CBC8();
    sub_26F180704();
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_26F15BCB8(v10, 0, v5);

    sub_26F13AB10(v5, &qword_2806D4360, &qword_26F181DC0);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_26F17091C(uint64_t a1)
{
  v2 = sub_26F16CBC8();
  swift_getKeyPath();
  sub_26F171CDC(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v3 = *(v2 + 51);

  if (v3 == 1)
  {
    v5 = *(a1 + 192);
    v7 = *(a1 + 200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
    sub_26F180424();
    v6 = *(a1 + 112);
    v8 = *(a1 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
    return sub_26F180424();
  }

  return result;
}

uint64_t sub_26F170A60()
{
  v1 = *v0;
  sub_26F180B94();
  MEMORY[0x27438A7C0](v1);
  return sub_26F180BB4();
}

uint64_t sub_26F170AD4()
{
  v1 = *v0;
  sub_26F180B94();
  MEMORY[0x27438A7C0](v1);
  return sub_26F180BB4();
}

uint64_t sub_26F170B34(uint64_t a1)
{
  v2 = type metadata accessor for LocationItemView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F170B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DraggableLocationItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F170BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DraggableLocationItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F170C5C(uint64_t *a1)
{
  v3 = *(type metadata accessor for DraggableLocationItem() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F16E474(a1, v4);
}

uint64_t sub_26F170CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DraggableLocationItem() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F16E4D0(a1, v6, a2);
}

uint64_t sub_26F170D64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F170D9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26F170E0C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DraggableLocationItem() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_26F170E90()
{
  result = qword_2806D5188;
  if (!qword_2806D5188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5110, &qword_26F1839C8);
    sub_26F170F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5188);
  }

  return result;
}

unint64_t sub_26F170F1C()
{
  result = qword_2806D5190;
  if (!qword_2806D5190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5108, &qword_26F1839C0);
    sub_26F170FD4();
    sub_26F13AC54(&qword_2806D4678, &qword_2806D4680, &qword_26F182188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5190);
  }

  return result;
}

unint64_t sub_26F170FD4()
{
  result = qword_2806D5198;
  if (!qword_2806D5198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5100, &qword_26F1839B8);
    sub_26F171060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5198);
  }

  return result;
}

unint64_t sub_26F171060()
{
  result = qword_2806D51A0;
  if (!qword_2806D51A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D50F8, &qword_26F1839B0);
    sub_26F171118();
    sub_26F13AC54(&qword_2806D51D0, &qword_2806D51D8, &unk_26F183A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51A0);
  }

  return result;
}

unint64_t sub_26F171118()
{
  result = qword_2806D51A8;
  if (!qword_2806D51A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5158, &qword_26F183A10);
    sub_26F1711D0();
    sub_26F13AC54(&qword_2806D51C0, &qword_2806D51C8, &qword_26F183A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51A8);
  }

  return result;
}

unint64_t sub_26F1711D0()
{
  result = qword_2806D51B0;
  if (!qword_2806D51B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5150, &qword_26F183A08);
    sub_26F171288();
    sub_26F13AC54(&qword_2806D4380, &qword_2806D4388, &qword_26F181E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51B0);
  }

  return result;
}

unint64_t sub_26F171288()
{
  result = qword_2806D51B8;
  if (!qword_2806D51B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5148, &unk_26F1839F8);
    type metadata accessor for LocationItemView();
    sub_26F171CDC(&qword_2806D5140, type metadata accessor for LocationItemView);
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51B8);
  }

  return result;
}

uint64_t sub_26F1713B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DraggableLocationItem() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_26F17143C()
{
  result = qword_2806D51E8;
  if (!qword_2806D51E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5128, &qword_26F1839E0);
    sub_26F1714C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51E8);
  }

  return result;
}

unint64_t sub_26F1714C8()
{
  result = qword_2806D51F0;
  if (!qword_2806D51F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5120, &qword_26F1839D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5110, &qword_26F1839C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D50F0, &qword_26F1839A8);
    sub_26F170E90();
    sub_26F13AC54(&qword_2806D51E0, &qword_2806D50F0, &qword_26F1839A8);
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D4658, &qword_2806D4660, &qword_26F182178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51F0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for DraggableLocationItem() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 48);

  v11 = *(v0 + v3 + 56);

  v12 = *(v0 + v3 + 64);

  v13 = *(v0 + v3 + 72);

  v14 = *(v0 + v3 + 120);

  v15 = *(v0 + v3 + 136);

  v16 = *(v0 + v3 + 152);

  v17 = *(v0 + v3 + 168);

  v18 = *(v0 + v3 + 184);

  v19 = *(v0 + v3 + 200);

  v20 = *(v0 + v3 + 224);

  v21 = v1[18];
  v22 = sub_26F180714();
  (*(*(v22 - 8) + 8))(v0 + v3 + v21, v22);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F171834(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DraggableLocationItem() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F1718C4()
{
  v1 = *(type metadata accessor for DraggableLocationItem() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26F17F9E4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26F16E848((v0 + v2));
}

uint64_t objectdestroy_44Tm()
{
  v1 = (type metadata accessor for DraggableLocationItem() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26F17F9E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = *(v11 + 2);

  v14 = *(v11 + 3);

  v15 = *(v11 + 4);

  v16 = *(v11 + 5);

  v17 = *(v11 + 6);

  v18 = *(v11 + 7);

  v19 = *(v11 + 8);

  v20 = *(v11 + 9);

  v21 = *(v11 + 15);

  v22 = *(v11 + 17);

  v23 = *(v11 + 19);

  v24 = *(v11 + 21);

  v25 = *(v11 + 23);

  v26 = *(v11 + 25);

  v27 = *(v11 + 28);

  v28 = v1[18];
  v29 = sub_26F180714();
  (*(*(v29 - 8) + 8))(&v11[v28], v29);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_26F171B74(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DraggableLocationItem() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_26F17F9E4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_26F16EA2C(a1, a2, (v2 + v6));
}

unint64_t sub_26F171C58()
{
  result = qword_2806D5208;
  if (!qword_2806D5208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5200, &qword_26F183AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5208);
  }

  return result;
}

uint64_t sub_26F171CDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F171D24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5138, &qword_26F1839F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5130, &qword_26F1839E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5128, &qword_26F1839E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D46A8, &qword_26F182228);
  sub_26F17143C();
  sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F171EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26F17229C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.contentMode.getter()
{
  sub_26F171F50();
  sub_26F17FC94();
  return v1;
}

unint64_t sub_26F171F50()
{
  result = qword_2806D5218;
  if (!qword_2806D5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5218);
  }

  return result;
}

uint64_t sub_26F171FA4@<X0>(_BYTE *a1@<X8>)
{
  sub_26F171F50();
  result = sub_26F17FC94();
  *a1 = v3;
  return result;
}

uint64_t sub_26F171FF4(char *a1)
{
  v2 = *a1;
  sub_26F171F50();
  return sub_26F17FCA4();
}

uint64_t (*EnvironmentValues.contentMode.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_26F171F50();
  sub_26F17FC94();
  *(a1 + 16) = *(a1 + 17);
  return sub_26F1720E8;
}

uint64_t sub_26F1720E8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_26F17FCA4();
}

uint64_t sub_26F172120@<X0>(_BYTE *a1@<X8>)
{
  sub_26F171F50();
  result = sub_26F17FC94();
  *a1 = v3;
  return result;
}

uint64_t sub_26F172170(char *a1)
{
  v2 = *a1;
  sub_26F171F50();
  return sub_26F17FCA4();
}

uint64_t getEnumTagSinglePayload for ContentModeKey(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContentModeKey(_WORD *result, int a2, int a3)
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

unint64_t sub_26F17229C()
{
  result = qword_2806D5220;
  if (!qword_2806D5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5220);
  }

  return result;
}

uint64_t sub_26F172304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26F1723E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TouchHoldView()
{
  result = qword_2806D5228;
  if (!qword_2806D5228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F1724F8()
{
  sub_26F14BF64(319, &qword_2806D41F8, &qword_2806D4200, &qword_26F181B88, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26F13FED8();
    if (v1 <= 0x3F)
    {
      sub_26F13FF30(319, &qword_2806D4530);
      if (v2 <= 0x3F)
      {
        sub_26F13FF30(319, &qword_2806D4210);
        if (v3 <= 0x3F)
        {
          sub_26F13FF30(319, &qword_2806D5238);
          if (v4 <= 0x3F)
          {
            sub_26F13FF30(319, &unk_2806D4218);
            if (v5 <= 0x3F)
            {
              sub_26F14BF64(319, &qword_2806D4F28, &qword_2806D4F30, qword_26F183608, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
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

uint64_t sub_26F1726AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4BD8, &qword_26F182B50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26F13A854(a3, v27 - v11, &qword_2806D4BD8, &qword_26F182B50);
  v13 = sub_26F180914();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26F13AB10(v12, &qword_2806D4BD8, &qword_26F182B50);
  }

  else
  {
    sub_26F180904();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26F1808C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26F180794() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_26F13AB10(a3, &qword_2806D4BD8, &qword_26F182B50);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26F13AB10(a3, &qword_2806D4BD8, &qword_26F182B50);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_26F1729AC(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for TouchHoldView();
  v3 = a1 + v2[5];
  type metadata accessor for TrainingManager();
  sub_26F179160(&qword_2806D40F0, type metadata accessor for TrainingManager);
  *v3 = sub_26F17F914();
  v3[8] = v4 & 1;
  v5 = v2[6];
  sub_26F180404();
  *(a1 + v5) = v21;
  v6 = a1 + v2[7];
  sub_26F180404();
  *v6 = v21;
  *(v6 + 1) = *(&v21 + 1);
  v7 = a1 + v2[8];
  sub_26F180404();
  *v7 = v21;
  *(v7 + 1) = *(&v21 + 1);
  v8 = a1 + v2[9];
  sub_26F180404();
  *v8 = v21;
  *(v8 + 2) = v22;
  v9 = (a1 + v2[10]);
  sub_26F180404();
  *v9 = v21;
  v10 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F30, qword_26F183608);
  sub_26F180404();
  *(a1 + v10) = v21;
  v11 = v2[12];
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v23.origin.x = v14;
  v23.origin.y = v16;
  v23.size.width = v18;
  v23.size.height = v20;
  *(a1 + v11) = CGRectGetHeight(v23);
}

uint64_t sub_26F172C10()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for TouchHoldView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26F180944();
    v9 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_26F172D60(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  v8 = sub_26F172C10();
  swift_getKeyPath();
  v19 = v8;
  sub_26F179160(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v9 = *(v8 + 48);

  if ((v9 & 1) == 0)
  {
    v11 = (v2 + *(type metadata accessor for TouchHoldView() + 24));
    v13 = *v11;
    v12 = v11[1];
    v19 = *v11;
    v20 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
    result = sub_26F180414();
    if (__OFADD__(v21, 1))
    {
      __break(1u);
    }

    else
    {
      v18[1] = v13;
      v18[2] = v12;
      v18[0] = v21 + 1;
      sub_26F180424();

      result = sub_26F172C10();
      v14 = *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 72);
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (!v15)
      {
        *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 72) = v16;

        sub_26F172C10();
        v17 = sub_26F180714();
        (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
        sub_26F15BCB8(a1, 1, v7);

        return sub_26F13AB10(v7, &qword_2806D4360, &qword_26F181DC0);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26F172F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for TouchHoldView();
  v6 = v5 - 8;
  v33 = *(v5 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = v8;
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5240, &qword_26F183B60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5248, &qword_26F183B68);
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v32);
  v16 = &v31 - v15;
  v37 = a2;
  v38 = a1;
  sub_26F17FFF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5250, &qword_26F183B70);
  sub_26F13AC54(&qword_2806D5258, &qword_2806D5250, &qword_26F183B70);
  sub_26F17F8A4();
  v17 = (a2 + *(v6 + 48));
  v18 = *v17;
  v19 = v17[1];
  *&v40 = v18;
  *(&v40 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180414();
  v20 = v39;
  v21 = &v12[*(v9 + 36)];
  *v21 = 0;
  *(v21 + 1) = v20;
  v40 = *(a2 + *(v6 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180414();
  if (v39 >= 4)
  {
    v22 = sub_26F172C10();
    swift_getKeyPath();
    *&v40 = v22;
    sub_26F179160(&qword_2806D40F0, type metadata accessor for TrainingManager);
    sub_26F17F7C4();

    v23 = *(v22 + 48);
  }

  sub_26F177934();
  sub_26F180274();
  sub_26F13AB10(v12, &qword_2806D5240, &qword_26F183B60);
  v24 = a2;
  v25 = v35;
  sub_26F1777E0(v24, v35);
  v26 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v27 = swift_allocObject();
  sub_26F177848(v25, v27 + v26);
  v28 = v36;
  (*(v13 + 32))(v36, v16, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5278, &qword_26F183B80);
  v30 = (v28 + *(result + 36));
  *v30 = sub_26F1779EC;
  v30[1] = v27;
  v30[2] = 0;
  v30[3] = 0;
  return result;
}

uint64_t sub_26F17338C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_26F17FD74();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5280, &qword_26F183BB0);
  return sub_26F1733F4(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_26F1733F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v76 = a3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4580, &qword_26F182090);
  v72 = *(v74 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v65 = (&v65 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4588, &qword_26F182098);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v75 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v65 - v11;
  v12 = type metadata accessor for TouchHoldView();
  v66 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5288, &qword_26F183BB8);
  v67 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v65 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5290, &qword_26F183BC0);
  v70 = *(v19 - 8);
  v71 = v19;
  v20 = *(v70 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v65 - v23;
  *v18 = sub_26F180564();
  v18[1] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5298, &qword_26F183BC8);
  sub_26F173B18(a1, a2, v18 + *(v26 + 44));
  v27 = (v18 + *(v15 + 52));
  *v27 = 0x7267206F746F6870;
  v27[1] = 0xEA00000000006469;
  v28 = a1 + *(v12 + 32);
  v29 = a1;
  v30 = *v28;
  v31 = *(v28 + 8);
  LOBYTE(v78) = v30;
  v79 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180434();
  sub_26F1777E0(a1, &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = swift_allocObject();
  sub_26F177848(&v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52A0, &qword_26F183BD0);
  sub_26F13AC54(&qword_2806D52A8, &qword_2806D5288, &qword_26F183BB8);
  sub_26F177A7C();
  v34 = v29;
  v68 = v24;
  v35 = v66;
  sub_26F1802F4();

  sub_26F13AB10(v18, &qword_2806D5288, &qword_26F183BB8);
  v77 = *(v34 + *(v35 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180414();
  if (v78 < 4)
  {
    goto LABEL_3;
  }

  v36 = sub_26F172C10();
  swift_getKeyPath();
  *&v77 = v36;
  sub_26F179160(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v37 = *(v36 + 48);

  if (v37)
  {
LABEL_3:
    v38 = 1;
    v40 = v73;
    v39 = v74;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v42 = v65;
    *v65 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
    swift_storeEnumTagMultiPayload();
    v43 = v42 + *(type metadata accessor for HapticTouchButtonView() + 20);
    type metadata accessor for TrainingManager();
    *v43 = sub_26F17F914();
    *(v43 + 8) = v44 & 1;
    v45 = sub_26F180034();
    v46 = (v34 + *(v35 + 40));
    v47 = *v46;
    v48 = v46[1];
    *&v77 = v47;
    *(&v77 + 1) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
    sub_26F180414();
    sub_26F17F894();
    v40 = v73;
    v49 = v74;
    v50 = v42 + *(v74 + 36);
    *v50 = v45;
    *(v50 + 8) = v51;
    *(v50 + 16) = v52;
    *(v50 + 24) = v53;
    *(v50 + 32) = v54;
    *(v50 + 40) = 0;
    sub_26F177B5C(v42, v40);
    v39 = v49;
    v38 = 0;
  }

  (*(v72 + 56))(v40, v38, 1, v39);
  v56 = v69;
  v55 = v70;
  v57 = *(v70 + 16);
  v58 = v68;
  v59 = v71;
  v57(v69, v68, v71);
  v60 = v75;
  sub_26F13A854(v40, v75, &qword_2806D4588, &qword_26F182098);
  v61 = v76;
  v57(v76, v56, v59);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52B8, &qword_26F183BD8);
  sub_26F13A854(v60, &v61[*(v62 + 48)], &qword_2806D4588, &qword_26F182098);
  sub_26F13AB10(v40, &qword_2806D4588, &qword_26F182098);
  v63 = *(v55 + 8);
  v63(v58, v59);
  sub_26F13AB10(v60, &qword_2806D4588, &qword_26F182098);
  return (v63)(v56, v59);
}

uint64_t sub_26F173B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a2;
  v119 = a3;
  v115 = sub_26F17FE74();
  v4 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v112 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F1804F4();
  v7 = *(v6 - 8);
  v104 = v6;
  v105 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v102 = (&v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_26F180504();
  v108 = *(v10 - 8);
  v109 = v10 - 8;
  v106 = v10;
  v107 = v108;
  v11 = *(v108 + 64);
  MEMORY[0x28223BE20](v10);
  v103 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52C8, &qword_26F183C18);
  v14 = *(v13 - 8);
  v117 = v13 - 8;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v118 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v110 = &v90 - v18;
  v19 = sub_26F17FAE4();
  v20 = *(v19 - 8);
  v98 = v19;
  v99 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v90 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46A8, &qword_26F182228);
  v24 = *(v23 - 8);
  v100 = v23;
  v101 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v91 = &v90 - v26;
  v27 = type metadata accessor for TouchHoldView();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46B0, &qword_26F182230);
  v97 = *(v94 - 8);
  v30 = *(v97 + 64);
  MEMORY[0x28223BE20](v94);
  v121 = &v90 - v31;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46B8, &qword_26F182238);
  v113 = *(v116 - 8);
  v32 = *(v113 + 64);
  v33 = MEMORY[0x28223BE20](v116);
  v111 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v120 = &v90 - v35;
  v36 = sub_26F180354();
  sub_26F180564();
  sub_26F17FB44();
  *(&v125[6] + 5) = *&v125[21];
  *(&v125[8] + 5) = *&v125[23];
  *(&v125[10] + 5) = *&v125[25];
  *(&v125[12] + 5) = v126;
  *(v125 + 5) = *&v125[15];
  *(&v125[2] + 5) = *&v125[17];
  *(&v125[4] + 5) = *&v125[19];
  *(&v124[4] + 11) = *&v125[8];
  *(&v124[5] + 11) = *&v125[10];
  *(&v124[6] + 11) = *&v125[12];
  *(v124 + 11) = *v125;
  *(&v124[1] + 11) = *&v125[2];
  *(&v124[2] + 11) = *&v125[4];
  *&v124[0] = v36;
  WORD4(v124[0]) = 256;
  BYTE10(v124[0]) = 0;
  *(&v124[7] + 1) = *(&v126 + 1);
  *(&v124[3] + 11) = *&v125[6];
  sub_26F1777E0(a1, &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v95 = *(v28 + 80);
  v96 = v29;
  v38 = swift_allocObject();
  sub_26F177848(&v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46C0, &qword_26F182240);
  v40 = sub_26F14AAE8();
  sub_26F180254();

  v127[4] = v124[4];
  v127[5] = v124[5];
  v127[6] = v124[6];
  v127[7] = v124[7];
  v127[0] = v124[0];
  v127[1] = v124[1];
  v127[2] = v124[2];
  v127[3] = v124[3];
  sub_26F13AB10(v127, &qword_2806D46C0, &qword_26F182240);
  v41 = v90;
  sub_26F17FAD4();
  v92 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F1777E0(a1, v92);
  v93 = v37;
  v42 = swift_allocObject();
  sub_26F177848(&v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v37);
  sub_26F179160(&qword_2806D4700, MEMORY[0x277CDDAD8]);
  v43 = v91;
  v44 = v98;
  sub_26F1804C4();

  (*(v99 + 8))(v41, v44);
  sub_26F17F924();
  *&v124[0] = v39;
  *(&v124[0] + 1) = v40;
  swift_getOpaqueTypeConformance2();
  sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228);
  v45 = v43;
  v46 = v94;
  v47 = v100;
  v48 = v121;
  sub_26F1802C4();
  (*(v101 + 8))(v45, v47);
  (*(v97 + 8))(v48, v46);
  v49 = v102;
  *v102 = xmmword_26F181FE0;
  (*(v105 + 104))(v49, *MEMORY[0x277CDF108], v104);
  v50 = v103;
  sub_26F180514();
  v51 = v106;
  v52 = sub_26F180894();
  *(v52 + 16) = 3;
  v53 = v107;
  v54 = v52 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
  v55 = *(v107 + 16);
  v55(v54, v50, v51);
  v56 = *(v108 + 72);
  v55(v54 + v56, v50, v51);
  (*(v53 + 32))(v54 + 2 * v56, v50, v51);
  sub_26F17FD74();
  v122 = a1;
  v123 = v114;
  LODWORD(v124[0]) = 0;
  sub_26F179160(&qword_2806D4710, MEMORY[0x277CE0428]);
  sub_26F180BD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52D0, &qword_26F183C20);
  sub_26F177CE8();
  v57 = v110;
  sub_26F180614();
  sub_26F180564();
  sub_26F17FB44();
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5350, &qword_26F183C60) + 36));
  v59 = v124[5];
  v58[4] = v124[4];
  v58[5] = v59;
  v58[6] = v124[6];
  v60 = v124[1];
  *v58 = v124[0];
  v58[1] = v60;
  v61 = v124[3];
  v58[2] = v124[2];
  v58[3] = v61;
  LOBYTE(v54) = sub_26F180004();
  sub_26F17F894();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5358, &qword_26F183C68) + 36);
  *v70 = v54;
  *(v70 + 8) = v63;
  *(v70 + 16) = v65;
  *(v70 + 24) = v67;
  *(v70 + 32) = v69;
  *(v70 + 40) = 0;
  v71 = v92;
  sub_26F1777E0(a1, v92);
  v72 = v93;
  v73 = swift_allocObject();
  sub_26F177848(v71, v73 + v72);
  v74 = sub_26F180564();
  v76 = v75;
  v77 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5360, &qword_26F183C70) + 36));
  *v77 = sub_26F150C28;
  v77[1] = 0;
  v77[2] = v74;
  v77[3] = v76;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_26F1781D4;
  *(v78 + 24) = v73;
  v79 = v116;
  v80 = (v57 + *(v117 + 44));
  *v80 = sub_26F14B30C;
  v80[1] = v78;
  v81 = v113;
  v82 = *(v113 + 16);
  v83 = v111;
  v84 = v120;
  v82(v111);
  v85 = v118;
  sub_26F178284(v57, v118);
  v86 = v119;
  (v82)(v119, v83, v79);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5368, &unk_26F183C78);
  sub_26F178284(v85, v86 + *(v87 + 48));
  sub_26F13AB10(v57, &qword_2806D52C8, &qword_26F183C18);
  v88 = *(v81 + 8);
  v88(v84, v79);
  sub_26F13AB10(v85, &qword_2806D52C8, &qword_26F183C18);
  return (v88)(v83, v79);
}

uint64_t sub_26F1747AC()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F172D60(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26F174890()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F172D60(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26F174974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_26F17FAC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = type metadata accessor for TouchHoldView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v16 = xmmword_26F181FF0;
  swift_getKeyPath();
  sub_26F1777E0(a1, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_26F177848(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
  (*(v6 + 32))(v13 + v12, v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47D8, &qword_26F1822F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52E8, &qword_26F183C28);
  sub_26F14B3DC();
  sub_26F177D98(&qword_2806D52E0, &qword_2806D52E8, &qword_26F183C28, sub_26F177E4C);
  return sub_26F1804B4();
}

uint64_t sub_26F174C00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v61 = a2;
  v55 = a4;
  v5 = sub_26F17FCF4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F17F7A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26F180714();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v62 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TouchHoldView();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5300, &qword_26F183C38);
  v16 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v18 = &v53 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52F8, &qword_26F183C30);
  v19 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v21 = &v53 - v20;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52E8, &qword_26F183C28);
  v22 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v59 = &v53 - v23;
  v57 = *a1;
  strcpy(v68, "TapTouchGrid");
  BYTE13(v68[0]) = 0;
  HIWORD(v68[0]) = -5120;
  v66 = v57;
  v24 = sub_26F180B34();
  MEMORY[0x27438A3F0](v24);

  v25 = v68[0];
  KeyPath = swift_getKeyPath();

  sub_26F180564();
  sub_26F17FB44();
  LOBYTE(v66) = 0;
  v27 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5318, &qword_26F183C40) + 36)];
  v28 = *(sub_26F17FB14() + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_26F17FD14();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #18.0 }

  *v27 = _Q0;
  *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)] = 256;
  *v18 = KeyPath;
  v18[8] = 0;
  *(v18 + 1) = v25;
  v36 = v68[5];
  *(v18 + 6) = v68[4];
  *(v18 + 7) = v36;
  *(v18 + 8) = v68[6];
  v37 = v68[1];
  *(v18 + 2) = v68[0];
  *(v18 + 3) = v37;
  v38 = v68[3];
  *(v18 + 4) = v68[2];
  *(v18 + 5) = v38;
  *(v18 + 18) = 0x3FF0000000000000;
  *(v18 + 76) = 256;
  v39 = swift_getKeyPath();
  v40 = &v18[*(v56 + 36)];
  *v40 = v39;
  v40[8] = 1;
  v41 = v61;
  sub_26F1777E0(v61, &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v43 = swift_allocObject();
  sub_26F177848(&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42);
  sub_26F177F40();
  sub_26F180254();

  sub_26F13AB10(v18, &qword_2806D5300, &qword_26F183C38);
  v44 = &v21[*(v60 + 36)];
  v45 = v57;
  sub_26F17530C(v41, v25, *(&v25 + 1), v64, v57, v44);

  v46 = sub_26F180564();
  v48 = v47;
  v49 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5348, &qword_26F183C58) + 36));
  *v49 = v46;
  v49[1] = v48;
  v50 = v59;
  sub_26F180704();
  sub_26F17F794();
  v66 = sub_26F180764();
  v67 = v51;
  sub_26F177E4C();
  sub_26F140F5C();
  sub_26F180294();

  sub_26F13AB10(v21, &qword_2806D52F8, &qword_26F183C30);
  sub_26F17FCE4();
  result = sub_26F17FCD4();
  if (__OFADD__(v45, 1))
  {
    __break(1u);
  }

  else
  {
    v66 = v45 + 1;
    sub_26F17FCC4();
    sub_26F17FCD4();
    sub_26F17FD04();
    sub_26F17FA84();

    return sub_26F13AB10(v50, &qword_2806D52E8, &qword_26F183C28);
  }

  return result;
}

uint64_t sub_26F17530C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v96 = a5;
  v90 = a4;
  v88 = a3;
  v87 = a2;
  v95 = a6;
  v7 = sub_26F17FCF4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26F17F7A4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v94 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26F180714();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v92 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TouchHoldView();
  v18 = v17 - 8;
  v19 = *(v17 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v17);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5370, &qword_26F183CC8);
  v21 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v23 = &v76 - v22;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5378, &qword_26F183CD0);
  v84 = *(v86 - 8);
  v24 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v82 = &v76 - v25;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5380, &qword_26F183CD8);
  v26 = *(v91 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v91);
  v85 = &v76 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5388, &qword_26F183CE0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v93 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v81 = &v76 - v34;
  v35 = *(v18 + 36);
  v89 = a1;
  v36 = (a1 + v35);
  v37 = *v36;
  v38 = *(v36 + 1);
  LOBYTE(v105) = v37;
  *(&v105 + 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if (v97 != 1)
  {
    return (*(v30 + 56))(v95, 1, 1, v29);
  }

  v76 = v30;
  v77 = v29;
  v78 = v19;
  KeyPath = swift_getKeyPath();
  v79 = v26;
  v40 = v88;

  sub_26F180564();
  sub_26F17FB44();
  LOBYTE(v97) = 0;
  v41 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5390, &qword_26F183CE8) + 36)];
  v42 = sub_26F17FB14();
  v80 = v10;
  v43 = *(v42 + 20);
  v44 = *MEMORY[0x277CE0118];
  v45 = sub_26F17FD14();
  (*(*(v45 - 8) + 104))(&v41[v43], v44, v45);
  __asm { FMOV            V0.2D, #18.0 }

  *v41 = _Q0;
  *&v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)] = 256;
  *v23 = KeyPath;
  v23[8] = 0;
  *(v23 + 9) = *v112;
  *(v23 + 3) = *&v112[3];
  *(v23 + 2) = v87;
  *(v23 + 3) = v40;
  v51 = v110;
  *(v23 + 6) = v109;
  *(v23 + 7) = v51;
  *(v23 + 8) = v111;
  v52 = v106;
  *(v23 + 2) = v105;
  *(v23 + 3) = v52;
  v53 = v108;
  *(v23 + 4) = v107;
  *(v23 + 5) = v53;
  v54 = swift_getKeyPath();
  v55 = v83;
  v56 = &v23[*(v83 + 36)];
  *v56 = v54;
  v56[8] = 1;
  sub_26F1777E0(v89, &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v58 = swift_allocObject();
  sub_26F177848(&v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v58 + v57);
  v59 = sub_26F179568();
  v60 = v82;
  sub_26F180254();

  v61 = sub_26F13AB10(v23, &qword_2806D5370, &qword_26F183CC8);
  v78 = &v76;
  v62 = MEMORY[0x28223BE20](v61);
  MEMORY[0x28223BE20](v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53A8, &qword_26F183CF0);
  v97 = v55;
  v98 = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = sub_26F179714();
  v75 = sub_26F177D98(&qword_2806D53B8, &qword_2806D53A8, &qword_26F183CF0, sub_26F179768);
  v65 = v85;
  v66 = v86;
  sub_26F180234();
  (*(v84 + 8))(v60, v66);
  sub_26F180704();
  sub_26F17F794();
  v103 = sub_26F180764();
  v104 = v67;
  v97 = v66;
  v98 = &type metadata for ContextMenuView;
  v99 = v63;
  v100 = OpaqueTypeConformance2;
  v101 = v74;
  v102 = v75;
  swift_getOpaqueTypeConformance2();
  sub_26F140F5C();
  v68 = v93;
  v69 = v91;
  sub_26F180294();

  (*(v79 + 8))(v65, v69);
  sub_26F17FCE4();
  result = sub_26F17FCD4();
  if (__OFADD__(v96, 1))
  {
    __break(1u);
  }

  else
  {
    v97 = v96 + 1;
    sub_26F17FCC4();
    sub_26F17FCD4();
    sub_26F17FD04();
    v71 = v81;
    v72 = v77;
    sub_26F17FA84();

    sub_26F13AB10(v68, &qword_2806D5388, &qword_26F183CE0);
    v73 = v95;
    sub_26F179810(v71, v95);
    return (*(v76 + 56))(v73, 0, 1, v72);
  }

  return result;
}

uint64_t sub_26F175D70()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F172D60(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26F175E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TouchHoldView();
  v9 = (a1 + *(v8 + 32));
  v15 = *v9;
  v17 = *(v9 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180434();
  v10 = (a1 + *(v8 + 36));
  v16 = *v10;
  v18 = *(v10 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52C0, &qword_26F183C10);
  sub_26F180434();
  *a4 = v12;
  *(a4 + 16) = v13;
  *(a4 + 24) = v12;
  *(a4 + 40) = v13;
  *(a4 + 48) = v14;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
}

uint64_t sub_26F175F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v37 = a4;
  *(&v42 + 1) = a2;
  *&v42 = a1;
  v35[1] = a6;
  v8 = sub_26F17FCF4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26F17F7A4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v41 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26F180714();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v40 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TouchHoldView();
  v18 = *(v17 - 8);
  v39 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26F17FAC4();
  v36 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53A8, &qword_26F183CF0);
  v25 = *(*(v35[0] - 8) + 64);
  MEMORY[0x28223BE20](v35[0]);
  v27 = v35 - v26;
  KeyPath = swift_getKeyPath();
  (*(v22 + 16))(v24, a3, v21);
  sub_26F1777E0(a4, v20);
  v28 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v29 = *(v18 + 80);
  v30 = (v23 + v29 + v28) & ~v29;
  v31 = swift_allocObject();
  (*(v22 + 32))(v31 + v28, v24, v36);
  sub_26F177848(v20, v31 + v30);
  v53 = 0;
  sub_26F1777E0(v37, v20);
  v32 = swift_allocObject();
  sub_26F177848(v20, v32 + ((v29 + 16) & ~v29));
  *&v47 = KeyPath;
  BYTE8(v47) = v53;
  v48 = v42;
  *&v49 = sub_26F179AEC;
  *(&v49 + 1) = v31;
  v50 = 0u;
  v51 = 0u;
  *&v52 = sub_26F179DA0;
  *(&v52 + 1) = v32;

  sub_26F180704();
  sub_26F17F794();
  v45 = sub_26F180764();
  v46 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53C8, &qword_26F183CF8);
  sub_26F179768();
  sub_26F140F5C();
  sub_26F180294();

  v54[2] = v49;
  v54[3] = v50;
  v54[4] = v51;
  v54[5] = v52;
  v54[0] = v47;
  v54[1] = v48;
  sub_26F13AB10(v54, &qword_2806D53C8, &qword_26F183CF8);
  sub_26F17FCE4();
  result = sub_26F17FCD4();
  if (__OFADD__(v44, 1))
  {
    __break(1u);
  }

  else
  {
    *&v47 = v44 + 1;
    sub_26F17FCC4();
    sub_26F17FCD4();
    sub_26F17FD04();
    sub_26F17FA84();

    return sub_26F13AB10(v27, &qword_2806D53A8, &qword_26F183CF0);
  }

  return result;
}

uint64_t sub_26F176530(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TouchHoldView();
  v4 = v3 - 8;
  v27[0] = *(v3 - 8);
  v5 = *(v27[0] + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4BD8, &qword_26F182B50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v27 - v13;
  v15 = sub_26F180714();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = 0x7267206F746F6870;
  *(&v28 + 1) = 0xEA00000000006469;
  sub_26F17FAB4();
  sub_26F172C10();
  sub_26F180704();
  (*(v16 + 56))(v14, 1, 1, v15);
  sub_26F15BCB8(v19, 0, v14);

  sub_26F13AB10(v14, &qword_2806D4360, &qword_26F181DC0);
  (*(v16 + 8))(v19, v15);
  v20 = sub_26F180914();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_26F1777E0(a2, v6);
  sub_26F1808E4();
  v21 = sub_26F1808D4();
  v22 = (*(v27[0] + 80) + 32) & ~*(v27[0] + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v21;
  *(v23 + 24) = v24;
  sub_26F177848(v6, v23 + v22);
  v25 = sub_26F1726AC(0, 0, v10, &unk_26F183D08, v23);
  v28 = *(a2 + *(v4 + 52));
  v27[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5000, &qword_26F183760);
  return sub_26F180424();
}

uint64_t sub_26F1768C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_26F180AA4();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  sub_26F1808E4();
  v4[8] = sub_26F1808D4();
  v9 = sub_26F1808C4();
  v4[9] = v9;
  v4[10] = v8;

  return MEMORY[0x2822009F8](sub_26F1769B8, v9, v8);
}

uint64_t sub_26F1769B8()
{
  v1 = *(v0 + 56);
  sub_26F180B84();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_26F176A84;
  v3 = *(v0 + 56);

  return sub_26F14A55C(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_26F176A84()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 88);
  v5 = *v1;

  v6 = v2[7];
  v7 = v2[6];
  v8 = v2[5];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_26F17A6F8;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_26F176C18;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_26F176C18()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);

  v4 = (v3 + *(type metadata accessor for TouchHoldView() + 28));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26F176CD8(uint64_t a1)
{
  v3 = *(a1 + *(type metadata accessor for TouchHoldView() + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5000, &qword_26F183760);
  sub_26F180414();
  if (v2)
  {
    sub_26F180924();
  }

  sub_26F172C10();
  sub_26F15B0EC(1, 0, 1);
}

uint64_t sub_26F176D8C(uint64_t a1, double a2, double a3)
{
  v5 = sub_26F17FE84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v40 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  v41 = a1;
  sub_26F14E9B4(&v39 - v21);
  (*(v6 + 104))(v20, *MEMORY[0x277CE0558], v5);
  (*(v6 + 56))(v20, 0, 1, v5);
  v23 = *(v10 + 56);
  sub_26F13A854(v22, v13, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v20, &v13[v23], &qword_2806D4200, &qword_26F181B88);
  v24 = *(v6 + 48);
  if (v24(v13, 1, v5) == 1)
  {
    sub_26F13AB10(v20, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v22, &qword_2806D4200, &qword_26F181B88);
    if (v24(&v13[v23], 1, v5) == 1)
    {
      sub_26F13AB10(v13, &qword_2806D4200, &qword_26F181B88);
      v25 = v41;
LABEL_8:
      v26 = *(v25 + *(type metadata accessor for TouchHoldView() + 48)) * 0.5;
      goto LABEL_10;
    }
  }

  else
  {
    sub_26F13A854(v13, v40, &qword_2806D4200, &qword_26F181B88);
    if (v24(&v13[v23], 1, v5) != 1)
    {
      v27 = &v13[v23];
      v28 = v39;
      (*(v6 + 32))(v39, v27, v5);
      sub_26F179160(&qword_2806D4318, MEMORY[0x277CE0570]);
      v29 = v40;
      v30 = sub_26F1806F4();
      v31 = *(v6 + 8);
      v31(v28, v5);
      sub_26F13AB10(v20, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v22, &qword_2806D4200, &qword_26F181B88);
      v31(v29, v5);
      sub_26F13AB10(v13, &qword_2806D4200, &qword_26F181B88);
      v25 = v41;
      if ((v30 & 1) == 0)
      {
        v26 = 373.0;
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_26F13AB10(v20, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v22, &qword_2806D4200, &qword_26F181B88);
    (*(v6 + 8))(v40, v5);
  }

  sub_26F13AB10(v13, &qword_2806D4308, &qword_26F182E30);
  v26 = 373.0;
  v25 = v41;
LABEL_10:
  v32 = v26 + a3 * -0.5;
  v33 = (v25 + *(type metadata accessor for TouchHoldView() + 40));
  v34 = *v33;
  v35 = v33[1];
  v42 = v32;
  v43 = v34;
  v44 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180424();
  v36 = sub_26F172C10();
  v43 = v34;
  v44 = v35;
  sub_26F180414();
  *(v36 + 64) = v42;

  v37 = sub_26F172C10();
  v43 = v34;
  v44 = v35;
  sub_26F180414();
  *(v37 + 56) = v42;
}

void sub_26F1772E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TouchHoldView();
  v18[0] = *(v4 - 8);
  v5 = *(v18[0] + 64);
  v6 = (a1 + *(MEMORY[0x28223BE20](v4 - 8) + 44));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v20 = *v6;
  v21 = v8;
  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52C0, &qword_26F183C10);
  sub_26F180414();

  v10 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v10 = v18[1] & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v14 = 0;
LABEL_9:
    v17 = 0;
    v16 = 0;
    goto LABEL_10;
  }

  v20 = v7;
  v21 = v8;
  v22 = v9;
  sub_26F180414();
  sub_26F1427C4();
  v11 = sub_26F1809E4();
  if (!v11)
  {
    v11 = [objc_opt_self() mainBundle];
  }

  v12 = v11;
  v13 = sub_26F180724();

  v14 = [objc_opt_self() imageNamed:v13 inBundle:v12 withConfiguration:0];

  if (!v14)
  {
    goto LABEL_9;
  }

  sub_26F1777E0(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v18[0] + 80) + 16) & ~*(v18[0] + 80);
  v16 = swift_allocObject();
  sub_26F177848(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = sub_26F177BCC;
LABEL_10:
  *a2 = v14;
  a2[1] = v17;
  a2[2] = v16;
}

uint64_t sub_26F177514(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for TouchHoldView() + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  return sub_26F180424();
}

uint64_t sub_26F177584(uint64_t a1)
{
  v2 = sub_26F17FC84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for TouchHoldView() + 20));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_26F180944();
    v10 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v8 = v12[1];
  }

  *(v8 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 1;
}

uint64_t sub_26F1776F4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_26F1777E0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_26F177848(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_26F1778AC;
  a2[1] = v7;
  return result;
}

uint64_t sub_26F1777E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TouchHoldView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F177848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TouchHoldView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1778AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TouchHoldView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F172F94(a1, v6, a2);
}

unint64_t sub_26F177934()
{
  result = qword_2806D5260;
  if (!qword_2806D5260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5240, &qword_26F183B60);
    sub_26F13AC54(&qword_2806D5268, &qword_2806D5270, &qword_26F183B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5260);
  }

  return result;
}

void sub_26F177A0C(void *a1@<X8>)
{
  v3 = *(type metadata accessor for TouchHoldView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_26F1772E4(v4, a1);
}

unint64_t sub_26F177A7C()
{
  result = qword_2806D52B0;
  if (!qword_2806D52B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D52A0, &qword_26F183BD0);
    sub_26F177B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D52B0);
  }

  return result;
}

unint64_t sub_26F177B00()
{
  result = qword_2806D5520;
  if (!qword_2806D5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5520);
  }

  return result;
}

uint64_t sub_26F177B5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4580, &qword_26F182090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F177BE4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TouchHoldView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26F177C70()
{
  v0 = *(*(type metadata accessor for TouchHoldView() - 8) + 80);

  return sub_26F174890();
}

unint64_t sub_26F177CE8()
{
  result = qword_2806D52D8;
  if (!qword_2806D52D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D52D0, &qword_26F183C20);
    sub_26F177D98(&qword_2806D52E0, &qword_2806D52E8, &qword_26F183C28, sub_26F177E4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D52D8);
  }

  return result;
}

uint64_t sub_26F177D98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26F179160(&qword_2806D4798, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F177E4C()
{
  result = qword_2806D52F0;
  if (!qword_2806D52F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D52F8, &qword_26F183C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5300, &qword_26F183C38);
    sub_26F177F40();
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D5340, &qword_2806D5348, &qword_26F183C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D52F0);
  }

  return result;
}

unint64_t sub_26F177F40()
{
  result = qword_2806D5308;
  if (!qword_2806D5308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5300, &qword_26F183C38);
    sub_26F177FF8();
    sub_26F13AC54(&qword_2806D4668, &qword_2806D4670, &qword_26F182180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5308);
  }

  return result;
}

unint64_t sub_26F177FF8()
{
  result = qword_2806D5310;
  if (!qword_2806D5310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5318, &qword_26F183C40);
    sub_26F1780B0();
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5310);
  }

  return result;
}

unint64_t sub_26F1780B0()
{
  result = qword_2806D5320;
  if (!qword_2806D5320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5328, &qword_26F183C48);
    sub_26F17815C(&qword_2806D5330, &qword_2806D5338, &qword_26F183C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5320);
  }

  return result;
}

uint64_t sub_26F17815C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_26F14A508();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26F1781D4(double a1, double a2)
{
  v5 = *(type metadata accessor for TouchHoldView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F176D8C(v6, a1, a2);
}

uint64_t sub_26F17824C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F178284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52C8, &qword_26F183C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1782F4@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53E0, &qword_26F183DD8);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = swift_allocObject();
  v16 = *(v1 + 48);
  *(v15 + 48) = *(v1 + 32);
  *(v15 + 64) = v16;
  *(v15 + 80) = *(v1 + 64);
  v17 = *(v1 + 16);
  *(v15 + 16) = *v1;
  *(v15 + 32) = v17;
  sub_26F17A530(v1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53E8, &qword_26F183DE0);
  sub_26F13AC54(&qword_2806D53F0, &qword_2806D53E8, &qword_26F183DE0);
  sub_26F180464();
  v18 = swift_allocObject();
  v19 = *(v1 + 48);
  *(v18 + 48) = *(v1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(v1 + 64);
  v20 = *(v1 + 16);
  *(v18 + 16) = *v1;
  *(v18 + 32) = v20;
  sub_26F17A530(v1, v30);
  sub_26F180464();
  v21 = v3[2];
  v21(v9, v14, v2);
  v22 = v28;
  v21(v28, v12, v2);
  v23 = v29;
  v21(v29, v9, v2);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53F8, &qword_26F183DE8);
  v21(&v23[*(v24 + 48)], v22, v2);
  v25 = v3[1];
  v25(v12, v2);
  v25(v14, v2);
  v25(v22, v2);
  return (v25)(v9, v2);
}

void sub_26F178648(uint64_t a1)
{
  v2 = [objc_opt_self() generalPasteboard];
  sub_26F1427C4();
  v3 = sub_26F1809E4();
  if (!v3)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = v3;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = sub_26F180724();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v4 withConfiguration:0];

  [v2 setImage_];
}

uint64_t sub_26F178764@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v40 = sub_26F17F6C4();
  v38 = *(v40 - 8);
  v1 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v3 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F17F7A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v37 - v10;
  v12 = sub_26F180714();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  v20 = sub_26F17F6D4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v37[1] = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F1427C4();
  v23 = sub_26F1809E4();
  if (!v23)
  {
    v23 = [objc_opt_self() mainBundle];
  }

  v24 = v23;
  sub_26F17F794();
  (*(v13 + 16))(v17, v19, v12);
  (*(v5 + 16))(v9, v11, v4);
  v25 = [v24 bundleURL];
  v37[0] = v12;
  v26 = v4;
  v27 = v25;
  sub_26F17F714();

  (*(v38 + 104))(v3, *MEMORY[0x277CC9118], v40);
  sub_26F17F6E4();

  (*(v5 + 8))(v11, v26);
  (*(v13 + 8))(v19, v37[0]);
  v28 = sub_26F1801A4();
  v30 = v29;
  LOBYTE(v27) = v31;
  v33 = v32;
  v34 = sub_26F1803B4();
  v35 = v39;
  *v39 = v28;
  v35[1] = v30;
  LOBYTE(v27) = v27 & 1;
  *(v35 + 16) = v27;
  v35[3] = v33;
  v35[4] = v34;
  sub_26F160E18(v28, v30, v27);

  sub_26F142878(v28, v30, v27);
}

uint64_t sub_26F178B7C(uint64_t *a1)
{
  v3 = a1[7];
  v2 = a1[8];
  v4 = *(a1 + 5);
  v13 = *(a1 + 3);
  v14 = v4;
  v9 = v3;
  v10 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5400, &qword_26F183DF0);
  sub_26F180484();
  v5 = a1[1];
  v7 = *(a1 + 16);
  v15 = *a1;
  v6 = v15;
  *&v13 = v15;
  *(&v13 + 1) = v5;
  LOBYTE(v14) = v7;
  sub_26F17A5D0(&v15, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4320, &qword_26F181D60);
  MEMORY[0x27438A090](&v12);
  v9 = v6;
  v10 = v5;
  v11 = v7;
  sub_26F180484();
  sub_26F17A62C(&v15);
}

__n128 sub_26F178C8C@<Q0>(void (*a1)(__n128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26F17FCB4();
  a1(&v8);
  v5 = v9;
  result = v8;
  v7 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_26F178D00@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v40 = sub_26F17F6C4();
  v38 = *(v40 - 8);
  v1 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v3 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F17F7A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v37 - v10;
  v12 = sub_26F180714();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  v20 = sub_26F17F6D4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v37[1] = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F1427C4();
  v23 = sub_26F1809E4();
  if (!v23)
  {
    v23 = [objc_opt_self() mainBundle];
  }

  v24 = v23;
  sub_26F17F794();
  (*(v13 + 16))(v17, v19, v12);
  (*(v5 + 16))(v9, v11, v4);
  v25 = [v24 bundleURL];
  v37[0] = v12;
  v26 = v4;
  v27 = v25;
  sub_26F17F714();

  (*(v38 + 104))(v3, *MEMORY[0x277CC9118], v40);
  sub_26F17F6E4();

  (*(v5 + 8))(v11, v26);
  (*(v13 + 8))(v19, v37[0]);
  v28 = sub_26F1801A4();
  v30 = v29;
  LOBYTE(v27) = v31;
  v33 = v32;
  v34 = sub_26F1803B4();
  v35 = v39;
  *v39 = v28;
  v35[1] = v30;
  LOBYTE(v27) = v27 & 1;
  *(v35 + 16) = v27;
  v35[3] = v33;
  v35[4] = v34;
  sub_26F160E18(v28, v30, v27);

  sub_26F142878(v28, v30, v27);
}

uint64_t sub_26F17911C@<X0>(char *a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_26F1782F4(a1);
}

uint64_t sub_26F179160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F1791A8()
{
  v1 = type metadata accessor for TouchHoldView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v26 = sub_26F17FAC4();
  v5 = *(v26 - 8);
  v6 = *(v5 + 80);
  v25 = *(v5 + 64);
  v7 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F17FE84();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  else
  {
    v10 = *v7;
  }

  v11 = v2 | v6;
  v12 = (v3 + v4 + v6) & ~v6;
  v13 = *(v7 + v1[5]);

  v14 = *(v7 + v1[6] + 8);

  v15 = *(v7 + v1[7] + 8);

  v16 = *(v7 + v1[8] + 8);

  v17 = v7 + v1[9];
  v18 = *(v17 + 1);

  v19 = *(v17 + 2);

  v20 = *(v7 + v1[10] + 8);

  v21 = (v7 + v1[11]);
  v22 = *v21;

  v23 = v21[1];

  (*(v5 + 8))(v0 + v12, v26);

  return MEMORY[0x2821FE8E8](v0, v12 + v25, v11 | 7);
}

uint64_t sub_26F179424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TouchHoldView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_26F17FAC4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_26F174C00(a1, v2 + v6, v9, a2);
}

unint64_t sub_26F179568()
{
  result = qword_2806D5398;
  if (!qword_2806D5398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5370, &qword_26F183CC8);
    sub_26F179620();
    sub_26F13AC54(&qword_2806D4668, &qword_2806D4670, &qword_26F182180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5398);
  }

  return result;
}

unint64_t sub_26F179620()
{
  result = qword_2806D53A0;
  if (!qword_2806D53A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5390, &qword_26F183CE8);
    sub_26F17815C(&qword_2806D5330, &qword_2806D5338, &qword_26F183C50);
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D53A0);
  }

  return result;
}

unint64_t sub_26F179714()
{
  result = qword_2806D53B0;
  if (!qword_2806D53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D53B0);
  }

  return result;
}

unint64_t sub_26F179768()
{
  result = qword_2806D53C0;
  if (!qword_2806D53C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D53C8, &qword_26F183CF8);
    sub_26F17815C(&qword_2806D4788, &qword_2806D4790, &qword_26F182298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D53C0);
  }

  return result;
}

uint64_t sub_26F179810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5388, &qword_26F183CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F179880()
{
  v1 = sub_26F17FAC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TouchHoldView();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = (v0 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26F17FE84();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v0 + v8, 1, v11))
    {
      (*(v12 + 8))(v0 + v8, v11);
    }
  }

  else
  {
    v13 = *v10;
  }

  v14 = v3 | v7;
  v15 = *(v10 + v6[5]);

  v16 = *(v10 + v6[6] + 8);

  v17 = *(v10 + v6[7] + 8);

  v18 = *(v10 + v6[8] + 8);

  v19 = v10 + v6[9];
  v20 = *(v19 + 1);

  v21 = *(v19 + 2);

  v22 = *(v10 + v6[10] + 8);

  v23 = (v10 + v6[11]);
  v24 = *v23;

  v25 = v23[1];

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v14 | 7);
}

uint64_t sub_26F179AEC()
{
  v1 = *(sub_26F17FAC4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for TouchHoldView() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26F176530(v0 + v2, v5);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for TouchHoldView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26F17FE84();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = *(v5 + v1[5]);

  v10 = *(v5 + v1[6] + 8);

  v11 = *(v5 + v1[7] + 8);

  v12 = *(v5 + v1[8] + 8);

  v13 = v5 + v1[9];
  v14 = *(v13 + 1);

  v15 = *(v13 + 2);

  v16 = *(v5 + v1[10] + 8);

  v17 = (v5 + v1[11]);
  v18 = *v17;

  v19 = v17[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F179DB8()
{
  v1 = type metadata accessor for TouchHoldView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26F17FE84();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 1, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }
  }

  else
  {
    v9 = *v6;
  }

  v10 = *(v6 + v1[5]);

  v11 = *(v6 + v1[6] + 8);

  v12 = *(v6 + v1[7] + 8);

  v13 = *(v6 + v1[8] + 8);

  v14 = v6 + v1[9];
  v15 = *(v14 + 1);

  v16 = *(v14 + 2);

  v17 = *(v6 + v1[10] + 8);

  v18 = (v6 + v1[11]);
  v19 = *v18;

  v20 = v18[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F179FA8(uint64_t a1)
{
  v4 = *(type metadata accessor for TouchHoldView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26F149E48;

  return sub_26F1768C4(a1, v6, v7, v1 + v5);
}

uint64_t sub_26F17A098(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F17A190;

  return v7(a1);
}

uint64_t sub_26F17A190()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26F17A288(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F15E4A8;

  return sub_26F17A098(a1, v5);
}

uint64_t sub_26F17A340(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F149E48;

  return sub_26F17A098(a1, v5);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26F17A41C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_26F17A464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_26F17A734()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_26F17A7B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6F6D7463656C6573;
  v5 = 0xEE00747865746572;
  if (a1 != 5)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = 0x7A6F7468636E6970;
  v7 = 0xEB000000006D6F6FLL;
  if (a1 != 3)
  {
    v6 = 0x65747463656C6573;
    v7 = 0xEA00000000007478;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x646E616863756F74;
  v9 = 0xEC000000646C6F68;
  if (a1 != 1)
  {
    v8 = 1734439524;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 7364980;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEC000000646C6F68;
        if (v10 != 0x646E616863756F74)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1734439524)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7364980)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEE00747865746572;
      if (v10 != 0x6F6D7463656C6573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE000000000000000;
      if (v10)
      {
LABEL_39:
        v13 = sub_26F180B44();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEB000000006D6F6FLL;
    if (v10 != 0x7A6F7468636E6970)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEA00000000007478;
    if (v10 != 0x65747463656C6573)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_26F17A9EC()
{
  sub_26F180B94();
  sub_26F1807B4();

  return sub_26F180BB4();
}

uint64_t TryItAttemptAnalyticsEvent.__allocating_init(tipId:correlationId:collectionId:lessonId:error:success:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  result = swift_allocObject();
  if (a10)
  {
    v18 = a9;
  }

  else
  {
    v18 = 0;
  }

  *(result + 96) = v18;
  *(result + 104) = a10;
  *(result + 112) = a11;
  *(result + 16) = 0xD00000000000001CLL;
  *(result + 24) = 0x800000026F184A70;
  *(result + 32) = a1;
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 56) = a4;
  *(result + 64) = a5;
  *(result + 72) = a6;
  *(result + 80) = a7;
  *(result + 88) = a8;
  return result;
}

uint64_t sub_26F17ABE0()
{
  *v0;
  *v0;
  *v0;
  sub_26F1807B4();
}

uint64_t sub_26F17ACF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F17B50C();
  *a2 = result;
  return result;
}

void sub_26F17AD28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7364980;
  v5 = 0xEE00747865746572;
  v6 = 0x6F6D7463656C6573;
  if (v2 != 5)
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = 0xEB000000006D6F6FLL;
  v8 = 0x7A6F7468636E6970;
  if (v2 != 3)
  {
    v8 = 0x65747463656C6573;
    v7 = 0xEA00000000007478;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC000000646C6F68;
  v10 = 0x646E616863756F74;
  if (v2 != 1)
  {
    v10 = 1734439524;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t TryItAttemptAnalyticsEvent.init(tipId:correlationId:collectionId:lessonId:error:success:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a10)
  {
    a9 = 0;
  }

  *(v11 + 96) = a9;
  *(v11 + 104) = a10;
  *(v11 + 112) = a11;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 16) = 0xD00000000000001CLL;
  *(v11 + 24) = 0x800000026F184A70;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  *(v11 + 56) = a4;
  *(v11 + 64) = a5;
  *(v11 + 72) = a6;

  v15 = *(v11 + 88);
  *(v11 + 80) = a7;
  *(v11 + 88) = a8;

  return v11;
}

unint64_t sub_26F17AE90()
{
  v1 = v0;
  v2 = sub_26F150D68();
  if (*(v1 + 104))
  {
    v3 = *(v1 + 96);
    v4 = *(v1 + 104);
  }

  v5 = sub_26F180724();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v5, 0x726F727265, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v7 = *(v1 + 112);
  v8 = sub_26F1808B4();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v8, 0x73736563637573, 0xE700000000000000, v9);
  sub_26F17AFBC();
  v10 = sub_26F1808B4();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v10, 0x72745F7473726966, 0xE900000000000079, v11);
  return v2;
}

uint64_t sub_26F17AFBC()
{
  if (!*(v0 + 88))
  {
    return 0;
  }

  v1 = *(v0 + 80);
  v2 = objc_opt_self();

  v3 = sub_26F180724();
  v4 = [v2 persistedObjectForKey_];

  if (v4)
  {

    sub_26F180A34();
    swift_unknownObjectRelease();
    sub_26F17B2FC(v8);
    return 0;
  }

  memset(v8, 0, sizeof(v8));
  sub_26F17B2FC(v8);
  v6 = sub_26F1808B4();
  v7 = sub_26F180724();

  [v2 persistObject:v6 forKey:v7];

  return 1;
}

void *TryItAttemptAnalyticsEvent.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return v0;
}

uint64_t TryItAttemptAnalyticsEvent.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_26F17B210(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F17B260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26F17B2B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26F17B2CC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_26F17B2FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5418, &unk_26F183E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for TryItLessonStepId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TryItLessonStepId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F17B4B8()
{
  result = qword_2806D5420;
  if (!qword_2806D5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5420);
  }

  return result;
}

uint64_t sub_26F17B50C()
{
  v0 = sub_26F180B14();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F17B574(uint64_t a1)
{
  v3 = sub_26F180644();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26F180684();
  v8 = *(v15 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v1 + 16);
  aBlock[4] = sub_26F17BA54;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_4;
  v12 = _Block_copy(aBlock);

  sub_26F180664();
  v16 = MEMORY[0x277D84F90];
  sub_26F17BF54(&qword_2806D40E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F17BF9C(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0);
  sub_26F180A44();
  MEMORY[0x27438A5B0](0, v11, v7, v12);
  _Block_release(v12);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v15);
}

void sub_26F17B818(void *a1)
{
  if (qword_2806D3FF0 != -1)
  {
    swift_once();
  }

  v2 = qword_2806D5450;
  sub_26F180A74();

  v14 = 0xD000000000000018;
  v15 = 0x800000026F185490;
  v3 = a1[2];
  v4 = a1[3];

  MEMORY[0x27438A3F0](v3, v4);

  v5 = MEMORY[0x27438A3F0](0x206874697720, 0xE600000000000000);
  (*(*a1 + 248))(v5);
  sub_26F13AA48(0, &qword_2806D5428, 0x277D82BB8);
  v6 = sub_26F1806E4();
  v8 = v7;

  MEMORY[0x27438A3F0](v6, v8);

  v9._countAndFlagsBits = 0xD000000000000018;
  v14 = v2;
  v9._object = 0x800000026F185490;
  TryItLog.debug(_:)(v9);

  v10 = a1[2];
  v11 = a1[3];

  v12 = sub_26F180724();

  v18 = sub_26F17BF30;
  v19 = a1;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_26F17BA74;
  v17 = &block_descriptor_5;
  v13 = _Block_copy(&v14);

  AnalyticsSendEventLazy();
  _Block_release(v13);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_26F17BA74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_26F13AA48(0, &qword_2806D5428, 0x277D82BB8);
    v5 = sub_26F1806C4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t TryItAnalyticsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy94_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 78) = *(a2 + 78);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26F17BBEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 94))
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

uint64_t sub_26F17BC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 94) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 94) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26F17BCC8()
{
  v12 = sub_26F180974();
  v0 = *(v12 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v12);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F180954();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_26F180684();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v11 = sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  sub_26F180674();
  v14 = MEMORY[0x277D84F90];
  sub_26F17BF54(&qword_2806D5430, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5438, "ʧ");
  sub_26F17BF9C(&qword_2806D5440, &qword_2806D5438, "ʧ");
  sub_26F180A44();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v12);
  v8 = sub_26F1809A4();
  v9 = v13;
  *(v13 + 16) = v8;
  return v9;
}

uint64_t sub_26F17BF54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F17BF9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26F17C070(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  v7 = a3();
  result = os_log_type_enabled(v6, v7);
  if (result)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_26F17C2AC(a1, a2, &v11);
    _os_log_impl(&dword_26F137000, v6, v7, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x27438AD70](v10, -1, -1);
    return MEMORY[0x27438AD70](v9, -1, -1);
  }

  return result;
}

uint64_t sub_26F17C1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_26F17C940();
  result = sub_26F1809F4();
  *a4 = result;
  return result;
}

id sub_26F17C250@<X0>(void *a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

uint64_t sub_26F17C2AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26F17C378(v11, 0, 0, 1, a1, a2);
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
    sub_26F17C98C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26F17C378(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26F17C484(a5, a6);
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
    result = sub_26F180A84();
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

uint64_t sub_26F17C484(uint64_t a1, unint64_t a2)
{
  v4 = sub_26F17C4D0(a1, a2);
  sub_26F17C600(&unk_287F28610);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26F17C4D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_26F17C6EC(v5, 0);
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

  result = sub_26F180A84();
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
        v10 = sub_26F1807E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26F17C6EC(v10, 0);
        result = sub_26F180A64();
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

uint64_t sub_26F17C600(uint64_t result)
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

  result = sub_26F17C760(result, v12, 1, v3);
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

void *sub_26F17C6EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5460, &qword_26F184020);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26F17C760(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5460, &qword_26F184020);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26F17C8AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26F17C8F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F17C940()
{
  result = qword_2806D5458;
  if (!qword_2806D5458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806D5458);
  }

  return result;
}

uint64_t sub_26F17C98C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_26F17C9E8(void *a1, uint64_t a2)
{
  [a1 addSublayer_];

  return [a1 setNeedsDisplay];
}

char *sub_26F17CA88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5470, &qword_26F184050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26F17CB8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5488, &qword_26F184068);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unsigned __int8 *sub_26F17CC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_26F180844();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26F17D21C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26F180A84();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26F17D21C()
{
  v0 = sub_26F180854();
  v4 = sub_26F17D29C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26F17D29C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26F1807A4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_26F180A14();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26F17C6EC(v9, 0);
  v12 = sub_26F17D3F4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_26F1807A4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_26F180A84();
LABEL_4:

  return sub_26F1807A4();
}

unint64_t sub_26F17D3F4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_26F17D614(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26F180814();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26F180A84();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_26F17D614(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_26F1807F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26F17D614(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26F180824();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x27438A420](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

char *sub_26F17D690(char *a1, int64_t a2, char a3)
{
  result = sub_26F17D7DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26F17D6B0(size_t a1, int64_t a2, char a3)
{
  result = sub_26F17D8E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26F17D6D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4938, &unk_26F1824E0);
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

char *sub_26F17D7DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5478, &qword_26F184058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_26F17D8E0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5480, &qword_26F184060);
  v10 = *(sub_26F17F664() - 8);
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
  v15 = *(sub_26F17F664() - 8);
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

char *sub_26F17DAB8(uint64_t a1)
{
  v2 = sub_26F17F664();
  v96 = *(v2 - 8);
  v3 = *(v96 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v98 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v99 = v87 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = v87 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5468, &qword_26F184048);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v87 - v12;
  v14 = sub_26F17F694();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F17F684();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26F17E570(v13);
    goto LABEL_100;
  }

  (*(v15 + 32))(v18, v13, v14);
  v19 = sub_26F17F674();
  if (!v19)
  {
    (*(v15 + 8))(v18, v14);
    goto LABEL_100;
  }

  v87[1] = a1;
  v88 = v9;
  v89 = v18;
  v90 = v15;
  v91 = v14;
  v20 = v19;
  v95 = *(v19 + 16);
  if (!v95)
  {
    countAndFlagsBits = MEMORY[0x277D84F90];
LABEL_20:

    if (*(countAndFlagsBits + 16))
    {
      v33 = v96;
      v34 = v88;
      (*(v96 + 16))(v88, countAndFlagsBits + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v2);

      v35 = sub_26F17F654();
      v37 = v36;
      (*(v33 + 8))(v34, v2);
      if (v37)
      {
        v102._countAndFlagsBits = v35;
        v102._object = v37;
        v100 = 44;
        v101 = 0xE100000000000000;
        sub_26F140F5C();
        v38 = sub_26F180A24();

        v39 = *(v38 + 16);
        if (!v39)
        {

          v41 = MEMORY[0x277D84F90];
LABEL_104:
          if (qword_2806D3FE8 != -1)
          {
LABEL_119:
            swift_once();
          }

          v76 = qword_2806D5448;
          v102._countAndFlagsBits = 0;
          v102._object = 0xE000000000000000;
          sub_26F180A74();

          v102._countAndFlagsBits = 0xD00000000000001DLL;
          v102._object = 0x800000026F185540;
          v77 = *(v41 + 2);
          v78 = MEMORY[0x277D84F90];
          if (v77)
          {
            v100 = MEMORY[0x277D84F90];

            sub_26F17D690(0, v77, 0);
            v78 = v100;
            v79 = *(v100 + 16);
            v80 = 32;
            do
            {
              v81 = *&v41[v80];
              v100 = v78;
              v82 = *(v78 + 24);
              if (v79 >= v82 >> 1)
              {
                sub_26F17D690((v82 > 1), v79 + 1, 1);
                v78 = v100;
              }

              *(v78 + 16) = v79 + 1;
              *(v78 + 8 * v79 + 32) = v81;
              v80 += 8;
              ++v79;
              --v77;
            }

            while (v77);
          }

          v83 = MEMORY[0x27438A4A0](v78, MEMORY[0x277D83B88]);
          v85 = v84;

          MEMORY[0x27438A3F0](v83, v85);

          v86 = v102;
          v102._countAndFlagsBits = v76;
          TryItLog.debug(_:)(v86);

          (*(v90 + 8))(v89, v91);
          return v41;
        }

        v40 = 0;
        v41 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v40 >= *(v38 + 16))
          {
            goto LABEL_113;
          }

          v42 = (v38 + 32 + 16 * v40);
          v44 = *v42;
          v43 = v42[1];
          v45 = HIBYTE(v43) & 0xF;
          v46 = v44 & 0xFFFFFFFFFFFFLL;
          if ((v43 & 0x2000000000000000) != 0)
          {
            v47 = HIBYTE(v43) & 0xF;
          }

          else
          {
            v47 = v44 & 0xFFFFFFFFFFFFLL;
          }

          if (!v47)
          {
            goto LABEL_25;
          }

          if ((v43 & 0x1000000000000000) == 0)
          {
            break;
          }

          v50 = sub_26F17CC90(v44, v43, 10);
          v71 = v70;

          if ((v71 & 1) == 0)
          {
LABEL_89:
            if (v50 <= 5)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v41 = sub_26F17CA88(0, *(v41 + 2) + 1, 1, v41);
              }

              v69 = *(v41 + 2);
              v68 = *(v41 + 3);
              if (v69 >= v68 >> 1)
              {
                v41 = sub_26F17CA88((v68 > 1), v69 + 1, 1, v41);
              }

              *(v41 + 2) = v69 + 1;
              *&v41[8 * v69 + 32] = v50;
            }
          }

LABEL_25:
          if (++v40 == v39)
          {

            goto LABEL_104;
          }
        }

        if ((v43 & 0x2000000000000000) != 0)
        {
          v102._countAndFlagsBits = v44;
          v102._object = (v43 & 0xFFFFFFFFFFFFFFLL);
          if (v44 == 43)
          {
            if (!v45)
            {
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
              goto LABEL_119;
            }

            if (--v45)
            {
              v50 = 0;
              v60 = &v102._countAndFlagsBits + 1;
              while (1)
              {
                v61 = *v60 - 48;
                if (v61 > 9)
                {
                  break;
                }

                v62 = 10 * v50;
                if ((v50 * 10) >> 64 != (10 * v50) >> 63)
                {
                  break;
                }

                v50 = v62 + v61;
                if (__OFADD__(v62, v61))
                {
                  break;
                }

                ++v60;
                if (!--v45)
                {
                  goto LABEL_88;
                }
              }
            }
          }

          else if (v44 == 45)
          {
            if (!v45)
            {
              goto LABEL_117;
            }

            if (--v45)
            {
              v50 = 0;
              v54 = &v102._countAndFlagsBits + 1;
              while (1)
              {
                v55 = *v54 - 48;
                if (v55 > 9)
                {
                  break;
                }

                v56 = 10 * v50;
                if ((v50 * 10) >> 64 != (10 * v50) >> 63)
                {
                  break;
                }

                v50 = v56 - v55;
                if (__OFSUB__(v56, v55))
                {
                  break;
                }

                ++v54;
                if (!--v45)
                {
                  goto LABEL_88;
                }
              }
            }
          }

          else if (v45)
          {
            v50 = 0;
            v65 = &v102;
            while (1)
            {
              v66 = LOBYTE(v65->_countAndFlagsBits) - 48;
              if (v66 > 9)
              {
                break;
              }

              v67 = 10 * v50;
              if ((v50 * 10) >> 64 != (10 * v50) >> 63)
              {
                break;
              }

              v50 = v67 + v66;
              if (__OFADD__(v67, v66))
              {
                break;
              }

              v65 = (v65 + 1);
              if (!--v45)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_87;
        }

        if ((v44 & 0x1000000000000000) != 0)
        {
          v48 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v48 = sub_26F180A84();
        }

        v49 = *v48;
        if (v49 == 43)
        {
          if (v46 < 1)
          {
            goto LABEL_118;
          }

          v45 = v46 - 1;
          if (v46 == 1)
          {
            goto LABEL_87;
          }

          v50 = 0;
          if (v48)
          {
            v57 = v48 + 1;
            while (1)
            {
              v58 = *v57 - 48;
              if (v58 > 9)
              {
                goto LABEL_87;
              }

              v59 = 10 * v50;
              if ((v50 * 10) >> 64 != (10 * v50) >> 63)
              {
                goto LABEL_87;
              }

              v50 = v59 + v58;
              if (__OFADD__(v59, v58))
              {
                goto LABEL_87;
              }

              ++v57;
              if (!--v45)
              {
                goto LABEL_88;
              }
            }
          }
        }

        else if (v49 == 45)
        {
          if (v46 < 1)
          {
            goto LABEL_116;
          }

          v45 = v46 - 1;
          if (v46 == 1)
          {
            goto LABEL_87;
          }

          v50 = 0;
          if (v48)
          {
            v51 = v48 + 1;
            while (1)
            {
              v52 = *v51 - 48;
              if (v52 > 9)
              {
                goto LABEL_87;
              }

              v53 = 10 * v50;
              if ((v50 * 10) >> 64 != (10 * v50) >> 63)
              {
                goto LABEL_87;
              }

              v50 = v53 - v52;
              if (__OFSUB__(v53, v52))
              {
                goto LABEL_87;
              }

              ++v51;
              if (!--v45)
              {
                goto LABEL_88;
              }
            }
          }
        }

        else
        {
          if (!v46)
          {
LABEL_87:
            v50 = 0;
            LOBYTE(v45) = 1;
LABEL_88:
            LOBYTE(v100) = v45;
            if ((v45 & 1) == 0)
            {
              goto LABEL_89;
            }

            goto LABEL_25;
          }

          v50 = 0;
          if (v48)
          {
            do
            {
              v63 = *v48 - 48;
              if (v63 > 9)
              {
                goto LABEL_87;
              }

              v64 = 10 * v50;
              if ((v50 * 10) >> 64 != (10 * v50) >> 63)
              {
                goto LABEL_87;
              }

              v50 = v64 + v63;
              if (__OFADD__(v64, v63))
              {
                goto LABEL_87;
              }

              ++v48;
            }

            while (--v46);
          }
        }

        LOBYTE(v45) = 0;
        goto LABEL_88;
      }

      (*(v90 + 8))(v89, v91);
    }

    else
    {
      (*(v90 + 8))(v89, v91);
    }

LABEL_100:
    if (qword_2806D3FE8 != -1)
    {
      goto LABEL_114;
    }

    goto LABEL_101;
  }

  v21 = 0;
  v94 = v96 + 16;
  v92 = (v96 + 8);
  v97 = (v96 + 32);
  countAndFlagsBits = MEMORY[0x277D84F90];
  v93 = v2;
  while (v21 < *(v20 + 16))
  {
    v23 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v24 = *(v96 + 72);
    (*(v96 + 16))(v99, v20 + v23 + v24 * v21, v2);
    if (sub_26F17F644() == 0x6E6F7373656CLL && v25 == 0xE600000000000000)
    {

LABEL_13:
      v27 = v20;
      v28 = *v97;
      (*v97)(v98, v99, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102._countAndFlagsBits = countAndFlagsBits;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26F17D6B0(0, *(countAndFlagsBits + 16) + 1, 1);
        countAndFlagsBits = v102._countAndFlagsBits;
      }

      v31 = *(countAndFlagsBits + 16);
      v30 = *(countAndFlagsBits + 24);
      if (v31 >= v30 >> 1)
      {
        sub_26F17D6B0(v30 > 1, v31 + 1, 1);
        countAndFlagsBits = v102._countAndFlagsBits;
      }

      *(countAndFlagsBits + 16) = v31 + 1;
      v32 = countAndFlagsBits + v23 + v31 * v24;
      v2 = v93;
      v28(v32, v98, v93);
      v20 = v27;
      goto LABEL_7;
    }

    v26 = sub_26F180B44();

    if (v26)
    {
      goto LABEL_13;
    }

    (*v92)(v99, v2);
LABEL_7:
    if (v95 == ++v21)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  swift_once();
LABEL_101:
  v72 = qword_2806D5448;
  v102._countAndFlagsBits = 0;
  v102._object = 0xE000000000000000;
  sub_26F180A74();

  v102._countAndFlagsBits = 0xD00000000000002DLL;
  v102._object = 0x800000026F185510;
  v73 = sub_26F17F6F4();
  MEMORY[0x27438A3F0](v73);

  v74 = v102;
  v102._countAndFlagsBits = v72;
  TryItLog.debug(_:)(v74);

  return MEMORY[0x277D84F90];
}

uint64_t sub_26F17E570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5468, &qword_26F184048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F17E7D0()
{
  result = qword_2806D54A0;
  if (!qword_2806D54A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5498, &unk_26F184080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D54A0);
  }

  return result;
}

uint64_t sub_26F17E90C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v7 = *a1;
  a6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5490, &qword_26F184078);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26F1826D0;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5498, &unk_26F184080);
  *(v8 + 64) = sub_26F17E7D0();
  *(v8 + 32) = a5;

  sub_26F17F884();
}

id sub_26F17E9F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UIImageActivityType();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC9TipsTryIt19UIImageActivityType_image] = a2;
  v21.receiver = v8;
  v21.super_class = v7;
  v9 = a2;
  v10 = objc_msgSendSuper2(&v21, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D5530, &qword_26F1841C8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26F1826D0;
  *(v11 + 56) = v7;
  *(v11 + 32) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v13 = v10;
  v14 = sub_26F180864();

  v15 = [v12 initWithActivityItems:v14 applicationActivities:0];

  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = a3;
  v16[4] = a4;
  v20[4] = sub_26F17F0A4;
  v20[5] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_26F17EBC8;
  v20[3] = &block_descriptor_5;
  v17 = _Block_copy(v20);
  v18 = v9;
  sub_26F17F0EC(a3);

  [v15 setCompletionWithItemsHandler_];
  _Block_release(v17);

  return v15;
}

uint64_t sub_26F17EBC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a4)
  {
    v10 = sub_26F180874();
  }

  else
  {
    v10 = 0;
  }

  v11 = a2;
  v12 = a5;
  v9(a2, a3, v10, a5);
}

uint64_t sub_26F17ECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F17F008();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26F17ED3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F17F008();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26F17EDA0()
{
  sub_26F17F008();
  sub_26F17FFB4();
  __break(1u);
}

id sub_26F17EED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIImageActivityType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26F17EF6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26F17EFB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F17F008()
{
  result = qword_2806D5528;
  if (!qword_2806D5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5528);
  }

  return result;
}

uint64_t sub_26F17F05C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26F17F0A4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    return v1();
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F17F0EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 TryItSessionAnalyticsEvent.__allocating_init(tipId:correlationId:collectionId:lessonId:attempts:secondLessonAttempts:timeSpent:finishedLesson:finishedSecondLesson:replayed:linkTapped:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, char a11, char a12, char a13, char a14)
{
  v18 = swift_allocObject();
  result = a9;
  *(v18 + 96) = a9;
  *(v18 + 112) = a10;
  *(v18 + 120) = a11;
  *(v18 + 121) = a12;
  *(v18 + 122) = a13;
  *(v18 + 123) = a14;
  *(v18 + 16) = 0xD00000000000001CLL;
  *(v18 + 24) = 0x800000026F184B60;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  *(v18 + 64) = a5;
  *(v18 + 72) = a6;
  *(v18 + 80) = a7;
  *(v18 + 88) = a8;
  return result;
}

uint64_t TryItSessionAnalyticsEvent.init(tipId:correlationId:collectionId:lessonId:attempts:secondLessonAttempts:timeSpent:finishedLesson:finishedSecondLesson:replayed:linkTapped:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char a11, char a12, char a13, char a14)
{
  *(v14 + 96) = a9;
  *(v14 + 112) = a10;
  *(v14 + 120) = a11;
  *(v14 + 121) = a12;
  *(v14 + 122) = a13;
  *(v14 + 123) = a14;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *(v14 + 16) = 0xD00000000000001CLL;
  *(v14 + 24) = 0x800000026F184B60;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  *(v14 + 64) = a5;
  *(v14 + 72) = a6;

  v17 = *(v14 + 88);
  *(v14 + 80) = a7;
  *(v14 + 88) = a8;

  return v14;
}

unint64_t sub_26F17F274()
{
  v1 = v0;
  v2 = sub_26F150D68();
  v3 = *(v1 + 96);
  v4 = sub_26F180934();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v4, 0x7374706D65747461, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v6 = *(v1 + 104);
  v7 = sub_26F180934();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v7, 0x7374706D65747461, 0xEB0000000032765FLL, v8);
  v9 = *(v1 + 112);
  v10 = sub_26F180934();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v10, 0x6570735F656D6974, 0xEA0000000000746ELL, v11);
  v12 = *(v1 + 120);
  v13 = sub_26F1808B4();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v13, 0x64656873696E6966, 0xEF6E6F7373656C5FLL, v14);
  v15 = *(v1 + 121);
  v16 = sub_26F1808B4();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v16, 0xD000000000000012, 0x800000026F185610, v17);
  v18 = *(v1 + 122);
  v19 = sub_26F1808B4();
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v19, 0x646579616C706572, 0xE800000000000000, v20);
  v21 = *(v1 + 123);
  v22 = sub_26F1808B4();
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v22, 0x7061745F6B6E696CLL, 0xEB00000000646570, v23);
  return v2;
}

void *TryItSessionAnalyticsEvent.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return v0;
}

uint64_t TryItSessionAnalyticsEvent.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocClassInstance();
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}