uint64_t sub_2747CB5C0()
{
  sub_2749FDDF4();
  SmartShortcutPickerCollectionViewDataSource.SectionLayoutKind.hash(into:)();
  return sub_2749FDE44();
}

void static SmartShortcutPickerCollectionViewDataSource.Item.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SmartShortcutPickerEntry();
  v5 = OUTLINED_FUNCTION_34(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v49[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968E88);
  OUTLINED_FUNCTION_34(v16);
  OUTLINED_FUNCTION_4();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v49[-v19];
  v21 = &v49[*(v18 + 56) - v19];
  sub_2747D23B4(v3, &v49[-v19], type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
  sub_2747D23B4(v1, v21, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_10();
    sub_2747D23B4(v20, v12, v22);
    v23 = v12[1];
    v57[0] = *v12;
    v57[1] = v23;
    v57[2] = v12[2];
    *(&v57[2] + 9) = *(v12 + 41);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v21[1];
      v56[0] = *v21;
      v56[1] = v24;
      v26 = *v21;
      v25 = v21[1];
      v56[2] = v21[2];
      *(&v56[2] + 9) = *(v21 + 41);
      v27 = v12[1];
      v55[0] = *v12;
      v55[1] = v27;
      v55[2] = v12[2];
      *(&v55[2] + 9) = *(v12 + 41);
      v54[0] = v26;
      v54[1] = v25;
      v54[2] = v21[2];
      *(&v54[2] + 9) = *(v21 + 41);
      static SmartShortcutPickerSection.== infix(_:_:)(v55, v54);
      sub_2747D21CC(v56);
      sub_2747D21CC(v57);
LABEL_10:
      OUTLINED_FUNCTION_21_8();
      goto LABEL_11;
    }

    sub_2747D21CC(v57);
  }

  else
  {
    OUTLINED_FUNCTION_4_10();
    sub_2747D23B4(v20, v15, v28);
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968E90) + 48);
    v31 = *&v15[v29];
    v30 = *&v15[v29 + 8];
    v32 = v15[v29 + 16];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = v21 + v29;
      v37 = *(v21 + v29);
      v38 = *(v21 + v29 + 8);
      v50 = v36[16];
      OUTLINED_FUNCTION_1_20();
      sub_2747D2410(v21, v8, v39);
      memcpy(v54, v15, 0xB9uLL);
      memcpy(v53, v15, 0xB9uLL);
      memcpy(v55, v8, 0xB9uLL);
      memcpy(v52, v8, 0xB9uLL);
      sub_274772ADC(v54, v51);
      sub_274772ADC(v55, v51);
      v40 = static SmartShortcutPickerEntry.Identifier.== infix(_:_:)();
      memcpy(v56, v52, 0xB9uLL);
      sub_274772BE8(v56);
      memcpy(v57, v53, 0xB9uLL);
      sub_274772BE8(v57);
      OUTLINED_FUNCTION_0_16();
      sub_2747D2220(v15, v41);
      if ((v40 & 1) == 0)
      {
        OUTLINED_FUNCTION_0_16();
        sub_2747D2220(v8, v46);
        v47 = OUTLINED_FUNCTION_99();
        sub_27478C4DC(v47, v48, v32);
        sub_27478C4DC(v37, v38, v50);
        OUTLINED_FUNCTION_21_8();
        goto LABEL_11;
      }

      v53[0] = v31;
      v53[1] = v30;
      LOBYTE(v53[2]) = v32;
      v52[0] = v37;
      v52[1] = v38;
      v42 = v50;
      LOBYTE(v52[2]) = v50;
      static SmartShortcutPickerSection.ID.== infix(_:_:)(v53, v52);
      OUTLINED_FUNCTION_0_16();
      sub_2747D2220(v8, v43);
      sub_27478C4DC(v37, v38, v42);
      v44 = OUTLINED_FUNCTION_99();
      sub_27478C4DC(v44, v45, v32);
      goto LABEL_10;
    }

    v33 = OUTLINED_FUNCTION_99();
    sub_27478C4DC(v33, v34, v32);
    OUTLINED_FUNCTION_0_16();
    sub_2747D2220(v15, v35);
  }

  sub_27472ECBC(v20, &qword_280968E88);
LABEL_11:
  OUTLINED_FUNCTION_46();
}

void SmartShortcutPickerCollectionViewDataSource.Item.hash(into:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SmartShortcutPickerEntry();
  v5 = OUTLINED_FUNCTION_34(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_4_10();
  sub_2747D23B4(v1, v12, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    v15 = *(v12 + 8);
    v16 = *(v12 + 16);
    v17 = *(v12 + 40);
    MEMORY[0x277C5FB60](1);
    switch(v16)
    {
      case 1:
        v25 = 1;
        goto LABEL_13;
      case 2:
        v25 = 3;
LABEL_13:
        MEMORY[0x277C5FB60](v25);
        sub_2749FCE24();
        goto LABEL_18;
      case 3:
        if (v14 | v15)
        {
          v18 = 4;
        }

        else
        {
          v18 = 2;
        }

        goto LABEL_17;
      default:
        MEMORY[0x277C5FB60](0);
        v18 = 0;
LABEL_17:
        MEMORY[0x277C5FB60](v18);
LABEL_18:
        sub_2749FCE24();
        MEMORY[0x277C5FB60]([v17 hash]);
        sub_27478A29C();
        sub_27478C4DC(v14, v15, v16);

        break;
    }
  }

  else
  {
    v19 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968E90) + 48);
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    OUTLINED_FUNCTION_1_20();
    sub_2747D2410(v12, v8, v23);
    MEMORY[0x277C5FB60](0);
    memcpy(v30, v8, sizeof(v30));
    SmartShortcutPickerEntry.Identifier.hash(into:)(v3);
    switch(v22)
    {
      case 1:
        MEMORY[0x277C5FB60](1);
        sub_2749FCE24();
        v26 = OUTLINED_FUNCTION_29_1();
        v28 = 1;
        goto LABEL_15;
      case 2:
        MEMORY[0x277C5FB60](3);
        sub_2749FCE24();
        v26 = OUTLINED_FUNCTION_29_1();
        v28 = 2;
LABEL_15:
        sub_27478C4DC(v26, v27, v28);
        goto LABEL_21;
      case 3:
        if (v20 | v21)
        {
          v24 = 4;
        }

        else
        {
          v24 = 2;
        }

        goto LABEL_20;
      default:
        MEMORY[0x277C5FB60](0);
        v24 = 0;
LABEL_20:
        MEMORY[0x277C5FB60](v24);
LABEL_21:
        OUTLINED_FUNCTION_0_16();
        sub_2747D2220(v8, v29);
        break;
    }
  }

  OUTLINED_FUNCTION_46();
}

uint64_t SmartShortcutPickerCollectionViewDataSource.Item.hashValue.getter()
{
  sub_2749FDDF4();
  SmartShortcutPickerCollectionViewDataSource.Item.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_2747CBD28()
{
  sub_2749FDDF4();
  SmartShortcutPickerCollectionViewDataSource.Item.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_2747CBD94()
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
}

uint64_t sub_2747CBDC8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

id sub_2747CBE58()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 168);
  }

  else
  {
    v3 = sub_2747CBEB4(v0);
    v4 = *(v0 + 168);
    *(v0 + 168) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_2747CBEB4(id *a1)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EC8);
  v54 = *(v56 - 8);
  v55 = *(v54 + 64);
  v2 = MEMORY[0x28223BE20](v56);
  v53 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v60 = v45 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EE8);
  v50 = *(v52 - 8);
  v51 = *(v50 + 64);
  v5 = MEMORY[0x28223BE20](v52);
  v49 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968ED8);
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = v45 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EB8);
  v14 = *(v59 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v59);
  v17 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v45 - v18;
  v48 = v45 - v18;
  sub_2747D0294();
  v47 = v13;
  sub_2747D13C8();
  sub_2747D1B84();
  sub_2747D0AB8();
  v45[0] = a1[3];
  v45[1] = a1;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v59;
  (*(v14 + 16))(v17, v19, v59);
  v22 = v58;
  v23 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v13;
  v25 = v57;
  (*(v58 + 16))(v23, v24, v57);
  v26 = *(v14 + 80);
  v46 = v14;
  v27 = (v26 + 24) & ~v26;
  v28 = (v15 + *(v22 + 80) + v27) & ~*(v22 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  (*(v14 + 32))(v29 + v27, v17, v21);
  (*(v22 + 32))(v29 + v28, v23, v25);
  v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969048));
  v31 = v45[0];
  v45[0] = sub_2749FA6D4();
  v32 = swift_allocObject();
  swift_weakInit();
  v34 = v49;
  v33 = v50;
  v35 = v52;
  (*(v50 + 16))(v49, v61, v52);
  v36 = v53;
  v37 = v54;
  v38 = v56;
  (*(v54 + 16))(v53, v60, v56);
  v39 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v40 = v37;
  v41 = (v51 + *(v37 + 80) + v39) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v32;
  (*(v33 + 32))(v42 + v39, v34, v35);
  (*(v40 + 32))(v42 + v41, v36, v38);

  v43 = v45[0];
  sub_2749FA6E4();
  (*(v40 + 8))(v60, v38);
  (*(v33 + 8))(v61, v35);
  (*(v58 + 8))(v47, v57);
  (*(v46 + 8))(v48, v59);

  return v43;
}

id sub_2747CC49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969050);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  v7 = sub_2749F9274();
  sub_2747CF414(v7, v18);
  v8 = v18[1];
  v9 = v19;
  v17[1] = v20;
  if (v21 == 3)
  {
    v10 = v18[0];
    sub_2747D23B4(a3, v6, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
    v11 = type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
    type metadata accessor for ListCell();
    v12 = sub_2749FD344();

    v13 = v10;
LABEL_7:
    sub_2747CB3B0(v13, v8, v9);

    sub_27472ECBC(v6, &qword_280969050);
    return v12;
  }

  if (v21 != 4)
  {
    v14 = v18[0];
    sub_2747D23B4(a3, v6, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
    v15 = type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v15);
    sub_27471CF08(0, &qword_280968C40);
    v12 = sub_2749FD344();

    v13 = v14;
    goto LABEL_7;
  }

  result = sub_2749FDAE4();
  __break(1u);
  return result;
}

unint64_t sub_2747CC748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  *&v28 = *(Strong + 152);

  v7 = sub_2749175A4(v6);

  v8 = sub_2749F9274();
  v9 = *(sub_2748122C0(v8) + 16);

  if (v8 >= v9)
  {
    goto LABEL_16;
  }

  v11 = sub_2748122C0(v10);
  result = sub_2749F9274();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v11 + 16))
  {
    v13 = (v11 + (result << 6));
    v14 = v13[2];
    v15 = v13[3];
    v16 = v13[4];
    *&v30[9] = *(v13 + 73);
    v29 = v15;
    *v30 = v16;
    v28 = v14;
    sub_2747B24E0(&v28, v26);

    v26[0] = v28;
    v26[1] = v29;
    v27[0] = *v30;
    *(v27 + 9) = *&v30[9];
    (*(*v7 + 160))(&v25, v26);
    v17 = v25;
    if (_sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() == a2 && v18 == a3)
    {
    }

    else
    {
      v20 = sub_2749FDCC4();

      if ((v20 & 1) == 0)
      {
        sub_2749FA024();
        if (sub_2749FA004() == a2 && v21 == a3)
        {
        }

        else
        {
          v23 = sub_2749FDCC4();

          if ((v23 & 1) == 0)
          {
            sub_2747D21CC(&v28);
LABEL_16:

LABEL_20:

            return 0;
          }
        }

LABEL_25:
        v24 = sub_2749FD354();
        sub_2747D21CC(&v28);

        return v24;
      }
    }

    if (v17 - 2 < 3)
    {
      sub_2747D21CC(&v28);

      goto LABEL_20;
    }

    type metadata accessor for CollectionViewHeaderView();
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t SmartShortcutPickerCollectionViewDataSource.__allocating_init(collectionView:dataSource:style:layout:)()
{
  OUTLINED_FUNCTION_50_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_51_2();
  SmartShortcutPickerCollectionViewDataSource.init(collectionView:dataSource:style:layout:)();
  return v0;
}

void SmartShortcutPickerCollectionViewDataSource.init(collectionView:dataSource:style:layout:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v33 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968E98);
  OUTLINED_FUNCTION_34(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EA0);
  OUTLINED_FUNCTION_43();
  v34 = v13;
  v35 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EA8);
  v36 = *(v32 - 8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  v21 = *v3;
  v1[2] = MEMORY[0x277D84F90];
  v1[17] = 0;
  v1[18] = 0;
  v1[20] = MEMORY[0x277D84FA0];
  v1[21] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EB8);
  OUTLINED_FUNCTION_20_8(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EC8);
  OUTLINED_FUNCTION_20_8(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968ED8);
  OUTLINED_FUNCTION_20_8(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EE8);
  OUTLINED_FUNCTION_20_8(v25);
  v1[3] = v8;
  v1[4] = v6;
  memcpy(v1 + 5, v33, 0x59uLL);
  v1[19] = v21;
  OUTLINED_FUNCTION_10_3();
  v33 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EF0);
  v31 = v20;
  sub_2749FA8D4();
  swift_endAccess();
  OUTLINED_FUNCTION_86();
  swift_allocObject();
  swift_weakInit();
  sub_27472AB6C(&qword_280968EF8, &qword_280968EA8);

  sub_2749FA974();

  OUTLINED_FUNCTION_10_3();
  sub_2749FA834();
  swift_endAccess();

  type metadata accessor for SmartShortcutPickerDataSource();
  sub_2747D236C(&qword_280968F00, type metadata accessor for SmartShortcutPickerDataSource);
  v38 = sub_2749FA874();
  v26 = [objc_opt_self() mainRunLoop];
  v37 = v26;
  v27 = sub_2749FD6A4();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v27);
  sub_2749FA8A4();
  sub_27471CF08(0, &qword_280968F08);
  sub_2747D2280();
  OUTLINED_FUNCTION_46_3();
  sub_2749FA954();
  sub_27472ECBC(v12, &qword_280968E98);

  OUTLINED_FUNCTION_86();
  v28 = swift_allocObject();
  swift_weakInit();

  v29 = swift_allocObject();
  *(v29 + 16) = sub_2747D22E8;
  *(v29 + 24) = v28;
  sub_27472AB6C(&qword_280968F18, &qword_280968EA0);
  v30 = v34;
  sub_2749FA974();

  (*(v35 + 8))(v17, v30);
  OUTLINED_FUNCTION_10_3();
  sub_2749FA834();
  swift_endAccess();

  (*(v36 + 8))(v31, v32);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747CCFB4()
{
  v0 = sub_2749FCA74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FCAA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_27471CF08(0, &qword_28159E4E0);
    v15 = sub_2749FD404();
    aBlock[4] = sub_2747D3560;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274760264;
    aBlock[3] = &block_descriptor_11;
    v14 = _Block_copy(aBlock);

    sub_2749FCA94();
    v16 = MEMORY[0x277D84F90];
    sub_2747D236C(&qword_28159E580, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
    v13 = v4;
    sub_27472AB6C(&qword_28159E530, &unk_28096DB60);
    sub_2749FD7B4();
    v11 = v14;
    v10 = v15;
    MEMORY[0x277C5F170](0, v7, v3, v14);
    _Block_release(v11);

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v13);
  }

  return result;
}

uint64_t sub_2747CD2BC(uint64_t a1)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969050);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v48 - v2;
  v61 = type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  v57 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968F20);
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v7 = v48 - v6;
  v8 = sub_2749F9284();
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2749FA4E4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v52 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v48 - v15;
  v51 = *MEMORY[0x277D7A4C0];
  sub_2749FA3D4();
  v17 = sub_2749FA4D4();
  v18 = sub_2749FD2B4();
  v19 = os_log_type_enabled(v17, v18);
  v56 = v5;
  if (v19)
  {
    v20 = v12;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_274719000, v17, v18, "Selection Changed, reloading", v21, 2u);
    v22 = v21;
    v12 = v20;
    v5 = v56;
    MEMORY[0x277C61040](v22, -1, -1);
  }

  v23 = *(v12 + 8);
  v53 = v12 + 8;
  v54 = v11;
  v23(v16, v11);
  v24 = [*(v62 + 24) indexPathsForVisibleItems];
  v25 = sub_2749FCF84();

  v26 = *(v25 + 16);
  if (v26)
  {
    v49 = v23;
    v50 = v7;
    v59 = *(v58 + 16);
    v27 = *(v58 + 80);
    v48[1] = v25;
    v28 = v25 + ((v27 + 32) & ~v27);
    v29 = *(v58 + 72);
    v30 = (v58 + 8);
    v31 = MEMORY[0x277D84F90];
    v58 += 16;
    do
    {
      v59(v10, v28, v8);
      v32 = sub_2747CBE58();
      sub_2749FA6F4();

      (*v30)(v10, v8);
      if (__swift_getEnumTagSinglePayload(v3, 1, v61) == 1)
      {
        sub_27472ECBC(v3, &qword_280969050);
      }

      else
      {
        sub_2747D2410(v3, v60, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274763DFC(0, *(v31 + 16) + 1, 1, v31);
          v31 = v35;
        }

        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_274763DFC(v33 > 1, v34 + 1, 1, v31);
          v31 = v36;
        }

        *(v31 + 16) = v34 + 1;
        sub_2747D2410(v60, v31 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v34, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
      }

      v28 += v29;
      --v26;
    }

    while (v26);

    v37 = v55;
    v5 = v56;
    v23 = v49;
    v7 = v50;
  }

  else
  {

    v37 = v55;
  }

  v38 = v62;
  v39 = sub_2747CBE58();
  sub_2749FA744();

  sub_2749FA644();

  v40 = *(v38 + 168);
  sub_2749FA724();

  v41 = v52;
  sub_2749FA3D4();
  v42 = sub_2749FA4D4();
  v43 = sub_2749FD2B4();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v54;
  if (v44)
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_274719000, v42, v43, "Selection Changed, reloaded", v46, 2u);
    MEMORY[0x277C61040](v46, -1, -1);
  }

  v23(v41, v45);
  return (*(v5 + 8))(v7, v37);
}

uint64_t sub_2747CD900()
{
  v0 = sub_2749FA4E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2749FA3D4();
    v5 = sub_2749FA4D4();
    v6 = sub_2749FD2B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_274719000, v5, v6, "Data Source Changed, reloading", v7, 2u);
      MEMORY[0x277C61040](v7, -1, -1);
    }

    (*(v1 + 8))(v3, v0);

    sub_2747CE740();
  }

  return result;
}

uint64_t sub_2747CDA98()
{

  sub_2749175A4(v0);

  v2 = sub_2748122C0(v1);
  v3 = sub_2748121CC();
  sub_2747828F8(v3);

  return v2;
}

void sub_2747CDB14()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v105 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  *(&v102 + 1) = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260);
  v8 = OUTLINED_FUNCTION_34(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x28223BE20](v9);
  v11 = &v92 - v10;
  v98 = type metadata accessor for SmartShortcutPickerEntry();
  OUTLINED_FUNCTION_43();
  v106 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39();
  v92 = v14 - v15;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v16);
  *(&v104 + 1) = &v92 - v17;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v92 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D0);
  v22 = OUTLINED_FUNCTION_34(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_39();
  v93 = v23 - v24;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v25);
  v100 = (&v92 - v26);
  KeyPath = *(v3 + 48);
  *&v131[0] = *(v0 + 152);

  v28 = sub_2749175A4(v0);

  OUTLINED_FUNCTION_27_4();
  v29 = sub_2747CF4A8(v131);
  v99 = v0;
  if (v29)
  {
    if (*(v0 + 128) >= 2u)
    {
      v30 = 6;
    }

    else
    {
      v30 = 4;
    }
  }

  else
  {
    v30 = KeyPath[2];
  }

  v95 = v30;
  v96 = sub_2747ACDA0(v30, KeyPath);
  *&v103 = v31;
  v101 = v33;
  *&v102 = v32;
  v34 = OUTLINED_FUNCTION_27_4();
  v35 = (*(*v28 + 152))(v131, v34);
  v94 = v35;
  if (v35)
  {
    sub_274811B0C(v35, v36, v37, v38, v39, v40, v41, v42, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107[0], v107[1], v107[2], v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
    v44 = v43;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v45 = v99;
  v46 = v44[2];
  v97 = v28;
  if (!v46)
  {

    v60 = v100;
LABEL_29:
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v98);
    LODWORD(v104) = 0;
    goto LABEL_32;
  }

  v47 = 0;
  *&v104 = v44 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
  v48 = v131;
  *(&v103 + 1) = v46 - 1;
  while (1)
  {
    if (v47 >= v46)
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    OUTLINED_FUNCTION_3_23();
    sub_2747D23B4(v49, v20, v50);
    memcpy(v136, v20, 0xB9uLL);
    KeyPath = swift_getKeyPath();
    v51 = swift_getKeyPath();
    sub_274772ADC(v136, v131);
    sub_2749FA904();

    if (__swift_getEnumTagSinglePayload(v11, 1, v105))
    {
      sub_27472ECBC(v11, &unk_280969260);
      sub_2747B9A5C(v135);
    }

    else
    {
      OUTLINED_FUNCTION_18_10();
      KeyPath = *(&v102 + 1);
      sub_2747D23B4(v11, *(&v102 + 1), v52);
      sub_27472ECBC(v11, &unk_280969260);
      memcpy(v130, KeyPath, 0xB9uLL);
      v53 = OUTLINED_FUNCTION_52_3();
      sub_274772ADC(v53, v54);
      sub_2747D2220(KeyPath, v51);
      memcpy(v131, v130, 0xB9uLL);
      CGSizeMake(v131);
      OUTLINED_FUNCTION_38_2(v135);
    }

    memcpy(v133, v136, 0xB9uLL);
    CGSizeMake(v133);
    OUTLINED_FUNCTION_55_0(v131);
    memcpy(v132, v135, sizeof(v132));
    OUTLINED_FUNCTION_55_0(v134);
    if (sub_2747B9744(v134) == 1)
    {
      OUTLINED_FUNCTION_37_3();
      OUTLINED_FUNCTION_56_4();
      if (v55)
      {

        OUTLINED_FUNCTION_36_4();
        sub_27472ECBC(v129, &qword_280968A58);
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_38_2(v128);
    OUTLINED_FUNCTION_37_3();
    OUTLINED_FUNCTION_56_4();
    if (v55)
    {
      OUTLINED_FUNCTION_35_2();
      sub_27473ADB8(v129, v126, &qword_280968A58);
      sub_274772BE8(v127);
LABEL_22:
      v56 = OUTLINED_FUNCTION_52_3();
      memcpy(v56, v57, 0x179uLL);
      sub_27472ECBC(v130, &qword_280968A98);
      goto LABEL_25;
    }

    memcpy(v124, v132, sizeof(v124));
    KeyPath = &qword_280968A58;
    sub_27473ADB8(v129, v107, &qword_280968A58);
    v58 = static SmartShortcutPickerEntry.Identifier.== infix(_:_:)();
    memcpy(v125, v124, 0xB9uLL);
    sub_274772BE8(v125);
    memcpy(v126, v128, 0xB9uLL);
    sub_274772BE8(v126);
    OUTLINED_FUNCTION_35_2();
    sub_27472ECBC(v127, &qword_280968A58);
    if (v58)
    {
      break;
    }

    v48 = v131;
LABEL_25:
    OUTLINED_FUNCTION_0_16();
    sub_2747D2220(v20, v59);
    if (*(&v103 + 1) == v47)
    {

      v45 = v99;
      v60 = v100;
      goto LABEL_29;
    }

    v46 = v44[2];
    ++v47;
  }

LABEL_31:
  OUTLINED_FUNCTION_1_20();
  v61 = v100;
  sub_2747D2410(v20, v100, v62);
  LODWORD(v104) = 1;
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v98);
  v45 = v99;
LABEL_32:
  v63 = v101 >> 1;
  if (v102 != v101 >> 1)
  {
    v11 = *(v45 + 32);
    v44 = &unk_274A14AC0;
    v48 = v131;
    v64 = v102;
    while (1)
    {
      if (v64 >= v63)
      {
        goto LABEL_73;
      }

      OUTLINED_FUNCTION_3_23();
      v65 = *(&v104 + 1);
      sub_2747D23B4(v66, *(&v104 + 1), v67);
      memcpy(v136, v65, 0xB9uLL);
      v68 = swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      sub_274772ADC(v136, v131);
      sub_2749FA904();

      if (__swift_getEnumTagSinglePayload(v1, 1, v105))
      {
        sub_27472ECBC(v1, &unk_280969260);
        sub_2747B9A5C(v135);
      }

      else
      {
        OUTLINED_FUNCTION_18_10();
        KeyPath = *(&v102 + 1);
        sub_2747D23B4(v1, *(&v102 + 1), v69);
        sub_27472ECBC(v1, &unk_280969260);
        memcpy(v130, KeyPath, 0xB9uLL);
        v70 = OUTLINED_FUNCTION_52_3();
        sub_274772ADC(v70, v71);
        sub_2747D2220(KeyPath, v68);
        memcpy(v131, v130, 0xB9uLL);
        CGSizeMake(v131);
        OUTLINED_FUNCTION_38_2(v135);
      }

      memcpy(v133, v136, 0xB9uLL);
      CGSizeMake(v133);
      OUTLINED_FUNCTION_55_0(v131);
      memcpy(v132, v135, sizeof(v132));
      OUTLINED_FUNCTION_55_0(v134);
      if (sub_2747B9744(v134) == 1)
      {
        break;
      }

      OUTLINED_FUNCTION_36_4();
      OUTLINED_FUNCTION_38_2(v128);
      OUTLINED_FUNCTION_37_3();
      OUTLINED_FUNCTION_56_4();
      if (v55)
      {
        sub_27473ADB8(v129, v127, &qword_280968A58);
        OUTLINED_FUNCTION_0_16();
        sub_2747D2220(*(&v104 + 1), v73);
        OUTLINED_FUNCTION_35_2();
        sub_274772BE8(v127);
LABEL_45:
        v74 = OUTLINED_FUNCTION_52_3();
        memcpy(v74, v75, 0x179uLL);
        sub_27472ECBC(v130, &qword_280968A98);
        goto LABEL_47;
      }

      memcpy(v127, v132, 0xB9uLL);
      KeyPath = &qword_280968A58;
      sub_27473ADB8(v129, v126, &qword_280968A58);
      v76 = static SmartShortcutPickerEntry.Identifier.== infix(_:_:)();
      memcpy(v125, v127, 0xB9uLL);
      sub_274772BE8(v125);
      OUTLINED_FUNCTION_0_16();
      sub_2747D2220(*(&v104 + 1), v77);
      memcpy(v126, v128, 0xB9uLL);
      sub_274772BE8(v126);
      OUTLINED_FUNCTION_35_2();
      v48 = v131;
      sub_27472ECBC(v127, &qword_280968A58);
      if (v76)
      {
        goto LABEL_53;
      }

LABEL_47:
      if (v63 == ++v64)
      {
        goto LABEL_48;
      }
    }

    OUTLINED_FUNCTION_0_16();
    sub_2747D2220(*(&v104 + 1), v72);
    OUTLINED_FUNCTION_37_3();
    OUTLINED_FUNCTION_56_4();
    if (v55)
    {
      OUTLINED_FUNCTION_36_4();
      sub_27472ECBC(v129, &qword_280968A58);
      goto LABEL_53;
    }

    goto LABEL_45;
  }

LABEL_48:
  if (v104)
  {
    KeyPath = v100;
    v78 = v93;
    sub_27473ADB8(v100, v93, &qword_2809681D0);
    if (__swift_getEnumTagSinglePayload(v78, 1, v98) == 1)
    {
      v79 = MEMORY[0x277D84F90];
    }

    else
    {
      v80 = v92;
      sub_2747D2410(v78, v92, type metadata accessor for SmartShortcutPickerEntry);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A48);
      v81 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_274A0EF10;
      sub_2747D2410(v80, v79 + v81, type metadata accessor for SmartShortcutPickerEntry);
    }

    *&v131[0] = v79;
    swift_unknownObjectRetain();
    sub_2747824B8();
    v82 = *&v131[0];
    goto LABEL_62;
  }

LABEL_53:
  KeyPath = v100;
  v83 = v96;
  if ((v101 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_55:
    sub_2747B0324(v83, v103, v102, v101);
    v82 = v84;
    swift_unknownObjectRelease();
    goto LABEL_62;
  }

  sub_2749FDD04();
  swift_unknownObjectRetain_n();
  v85 = swift_dynamicCastClass();
  if (!v85)
  {
    swift_unknownObjectRelease();
    v85 = MEMORY[0x277D84F90];
  }

  v86 = *(v85 + 16);

  if (__OFSUB__(v63, v102))
  {
    __break(1u);
    goto LABEL_77;
  }

  if (v86 != v63 - v102)
  {
LABEL_77:
    swift_unknownObjectRelease();
    goto LABEL_55;
  }

  v82 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v82)
  {
    swift_unknownObjectRelease();
    v82 = MEMORY[0x277D84F90];
  }

LABEL_62:
  v44 = sub_2747ACDA0(v95, v82);
  v1 = v87;
  v48 = v88;
  v11 = v89;
  if ((v89 & 1) == 0)
  {
LABEL_63:
    sub_2747B0324(v44, v1, v48, v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_27472ECBC(KeyPath, &qword_2809681D0);
    goto LABEL_71;
  }

  sub_2749FDD04();
  swift_unknownObjectRetain_n();
  v90 = swift_dynamicCastClass();
  if (!v90)
  {
    swift_unknownObjectRelease();
    v90 = MEMORY[0x277D84F90];
  }

  v91 = *(v90 + 16);

  if (__OFSUB__(v11 >> 1, v48))
  {
    goto LABEL_74;
  }

  if (v91 != (v11 >> 1) - v48)
  {
LABEL_75:
    swift_unknownObjectRelease();
    goto LABEL_63;
  }

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }

  sub_27472ECBC(KeyPath, &qword_2809681D0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_71:
  OUTLINED_FUNCTION_46();
}

void sub_2747CE740()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v138 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v141 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_39();
  v139 = (v4 - v5);
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v6);
  v135 = &v133 - v7;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v8);
  v134 = &v133 - v9;
  v10 = type metadata accessor for SmartShortcutPickerEntry();
  v11 = OUTLINED_FUNCTION_27(v10);
  v142 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v153 = (v14 - v13);
  v15 = type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  OUTLINED_FUNCTION_43();
  v154 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v133 - v22;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968F20);
  OUTLINED_FUNCTION_43();
  v136 = v24;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  v27 = &v133 - v26;
  sub_2747D2318();
  sub_2747D236C(&qword_280968F30, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
  v140 = v27;
  v151 = v15;
  sub_2749FA684();
  *&v160 = *(v1 + 152);

  v148 = v1;
  v28 = sub_2749175A4(v1);

  v143 = v28;
  v30 = sub_2748122C0(v29);
  v31 = *(v30 + 16);
  v32 = MEMORY[0x277D84F90];
  v147 = v20;
  if (v31)
  {
    v33 = 0;
    v144 = v30 + 32;
    v34 = v31;
    v35 = MEMORY[0x277D84F90];
    v146 = v30;
    v145 = v31;
    while (v33 < v34)
    {
      v152 = v33;
      v36 = (v144 + (v33 << 6));
      v38 = v36[1];
      v37 = v36[2];
      v39 = *(v36 + 41);
      v160 = *v36;
      v161 = v38;
      *&v162[9] = v39;
      *v162 = v37;
      *&v155 = *(&v160 + 1);
      v40 = v160;
      v41 = v38;
      v157 = *v36;
      v158 = v36[1];
      *v159 = v36[2];
      *&v159[9] = *(v36 + 41);
      sub_2747B24E0(&v160, v156);
      v28 = v148;
      sub_2747CDB14();
      v43 = v42;
      v44 = *(v42 + 16);
      if (v44)
      {
        v150 = v35;
        *&v157 = v32;
        sub_27476D6F8();
        v32 = v157;
        OUTLINED_FUNCTION_12_10();
        v149 = v43;
        v46 = v43 + v45;
        v48 = *(v47 + 72);
        v28 = v151;
        do
        {
          OUTLINED_FUNCTION_3_23();
          v49 = v153;
          sub_2747D23B4(v46, v153, v50);
          v51 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968E90) + 48)];
          OUTLINED_FUNCTION_1_20();
          sub_2747D2410(v49, v23, v52);
          v53 = v155;
          *v51 = v40;
          *(v51 + 1) = v53;
          v51[16] = v41;
          swift_storeEnumTagMultiPayload();
          sub_27477D408(v40, v53, v41);
          *&v157 = v32;
          v55 = *(v32 + 16);
          v54 = *(v32 + 24);
          if (v55 >= v54 >> 1)
          {
            OUTLINED_FUNCTION_8(v54);
            sub_27476D6F8();
            v28 = v151;
            v32 = v157;
          }

          *(v32 + 16) = v55 + 1;
          OUTLINED_FUNCTION_12_10();
          OUTLINED_FUNCTION_19_5();
          sub_2747D2410(v23, v56, v57);
          v46 += v48;
          --v44;
        }

        while (v44);

        v35 = v150;
      }

      else
      {
      }

      if (*(v32 + 16))
      {
        v157 = v160;
        v158 = v161;
        *v159 = *v162;
        *&v159[9] = *&v162[9];
        v58 = *(*v143 + 160);
        sub_27477D408(v40, v155, v41);
        v58(v156, &v157);
        v59 = v156[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274763E7C();
          v35 = v64;
        }

        v61 = *(v35 + 16);
        v60 = *(v35 + 24);
        v28 = v61 + 1;
        if (v61 >= v60 >> 1)
        {
          OUTLINED_FUNCTION_8(v60);
          sub_274763E7C();
          v35 = v65;
        }

        sub_2747D21CC(&v160);
        *(v35 + 16) = v28;
        v62 = v35 + 40 * v61;
        v63 = v155;
        *(v62 + 32) = v40;
        *(v62 + 40) = v63;
        *(v62 + 48) = v41;
        *(v62 + 56) = v32;
        *(v62 + 64) = v59;
      }

      else
      {

        sub_2747D21CC(&v160);
      }

      v33 = v152 + 1;
      v20 = v147;
      v32 = MEMORY[0x277D84F90];
      if (v152 + 1 == v145)
      {

        goto LABEL_22;
      }

      v34 = *(v146 + 16);
    }

    __break(1u);
LABEL_55:
    sub_274763E7C();
    v150 = v131;
    goto LABEL_39;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_22:
  v150 = v35;
  v67 = sub_2748121CC(v66);
  v68 = *(v67 + 16);
  if (v68)
  {
    *&v160 = v32;
    sub_27476D750();
    v35 = v160;
    *&v155 = v67;
    v69 = (v67 + 48);
    do
    {
      v70 = *(v69 - 2);
      v71 = *(v69 - 1);
      v72 = *v69;
      sub_27477D408(v70, v71, *v69);
      *&v160 = v35;
      v74 = *(v35 + 16);
      v73 = *(v35 + 24);
      if (v74 >= v73 >> 1)
      {
        OUTLINED_FUNCTION_8(v73);
        sub_27476D750();
        v35 = v160;
      }

      v69 += 64;
      *(v35 + 16) = v74 + 1;
      v75 = v35 + 24 * v74;
      *(v75 + 32) = v70;
      *(v75 + 40) = v71;
      *(v75 + 48) = v72;
      --v68;
    }

    while (v68);

    v20 = v147;
    v32 = MEMORY[0x277D84F90];
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  v77 = sub_2748121CC(v76);
  v78 = *(v77 + 16);
  if (v78)
  {
    v156[0] = v32;
    sub_27476D6F8();
    v28 = v156[0];
    v79 = v78 - 1;
    for (i = 32; ; i += 64)
    {
      v81 = *(v77 + i);
      v82 = *(v77 + i + 16);
      v83 = *(v77 + i + 32);
      *&v162[9] = *(v77 + i + 41);
      v161 = v82;
      *v162 = v83;
      v160 = v81;
      memmove(v20, (v77 + i), 0x39uLL);
      swift_storeEnumTagMultiPayload();
      sub_2747B24E0(&v160, &v157);
      v156[0] = v28;
      v85 = *(v28 + 16);
      v84 = *(v28 + 24);
      if (v85 >= v84 >> 1)
      {
        OUTLINED_FUNCTION_8(v84);
        sub_27476D6F8();
        v28 = v156[0];
      }

      *(v28 + 16) = v85 + 1;
      OUTLINED_FUNCTION_12_10();
      OUTLINED_FUNCTION_19_5();
      sub_2747D2410(v20, v86, v87);
      if (!v79)
      {
        break;
      }

      --v79;
    }
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v23 = v138;
  if (!*(v28 + 16))
  {

    v90 = v150;
    goto LABEL_43;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_39:
  v89 = *(v150 + 16);
  v88 = *(v150 + 24);
  if (v89 >= v88 >> 1)
  {
    OUTLINED_FUNCTION_8(v88);
    sub_274763E7C();
    v150 = v132;
  }

  v90 = v150;
  *(v150 + 16) = v89 + 1;
  v91 = v90 + 40 * v89;
  *(v91 + 32) = v35;
  *(v91 + 40) = 0;
  *(v91 + 48) = 0x80;
  *(v91 + 56) = v28;
  *(v91 + 64) = 3;
LABEL_43:
  v92 = v148;
  swift_beginAccess();
  *(v92 + 16) = v90;

  v93 = *MEMORY[0x277D7A4C0];
  v94 = v134;
  sub_2749FA3D4();
  v95 = sub_2749FA4D4();
  v96 = sub_2749FD2B4();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    OUTLINED_FUNCTION_54_3(&dword_274719000, v98, v99, "Calculating new snapshot.");
    MEMORY[0x277C61040](v97, -1, -1);
  }

  v100 = *(v141 + 8);
  v141 += 8;
  v100(v94, v23);
  v101 = *(*(v148 + 16) + 16);
  if (v101)
  {
    v153 = v100;
    v154 = v93;

    v102 = v152 + 56;
    v155 = xmmword_274A0EF10;
    do
    {
      v103 = *(v102 - 24);
      v104 = *(v102 - 16);
      v105 = *(v102 - 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968F38);
      v106 = swift_allocObject();
      *(v106 + 16) = v155;
      *(v106 + 32) = v103;
      *(v106 + 40) = v104;
      *(v106 + 48) = v105;
      v107 = OUTLINED_FUNCTION_22_6();
      sub_2747CB3A4(v107, v108, v109);

      v110 = OUTLINED_FUNCTION_22_6();
      sub_2747CB3A4(v110, v111, v112);
      sub_2749FA654();

      *&v157 = v103;
      *(&v157 + 1) = v104;
      LOBYTE(v158) = v105;
      v113 = OUTLINED_FUNCTION_22_6();
      sub_2747CB3A4(v113, v114, v115);
      sub_2749FA634();
      v116 = OUTLINED_FUNCTION_22_6();
      sub_2747CB3B0(v116, v117, v118);

      sub_2747D246C(v157, *(&v157 + 1), v158);
      v102 += 40;
      --v101;
    }

    while (v101);

    v23 = v138;
    v100 = v153;
  }

  v119 = v135;
  sub_2749FA3D4();
  v120 = sub_2749FA4D4();
  v121 = sub_2749FD2B4();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    OUTLINED_FUNCTION_54_3(&dword_274719000, v123, v124, "Calculated new snapshot.");
    MEMORY[0x277C61040](v122, -1, -1);
  }

  v100(v119, v23);
  v125 = sub_2747CBE58();
  v126 = v140;
  OUTLINED_FUNCTION_24();
  sub_2749FA724();

  sub_2749FA3D4();
  v127 = sub_2749FA4D4();
  v128 = sub_2749FD2B4();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    *v129 = 0;
    _os_log_impl(&dword_274719000, v127, v128, "Applied new snapshot.", v129, 2u);
    v130 = v129;
    v126 = v140;
    MEMORY[0x277C61040](v130, -1, -1);
  }

  v100(v139, v23);
  (*(v136 + 8))(v126, v137);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747CF414@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_24();
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    if (*(v6 + 16) > a1)
    {
      v7 = v6 + 40 * a1;
      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
      v10 = *(v7 + 56);
      v11 = *(v7 + 64);
      *a2 = v8;
      *(a2 + 8) = v9;
      v12 = *(v7 + 48);
      *(a2 + 16) = v12;
      *(a2 + 24) = v10;
      *(a2 + 32) = v11;
      sub_2747CB3A4(v8, v9, v12);
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2747CF4A8(_OWORD *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v8 = *(v1 + 152);

  v3 = sub_2749175A4(v1);

  (*(*v3 + 160))(&v8, v6);

  return v8 - 5 < 0xFFFFFFFE && (BYTE1(v8) - 1) < 2u;
}

uint64_t sub_2747CF564(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  v5 = sub_2749175A4(v1);

  v7[0] = v2;
  v7[1] = v3;
  v8 = v4;
  (*(*v5 + 168))(v7);
}

uint64_t sub_2747CF614@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2747CDA98();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v11 = v3 != 1 || v2 != 0;
  if (v2 | v3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v4 == 3;
  }

  v90 = v12;
  v91 = v4 != 3 || v11;
  v13 = 32;
  while (2)
  {
    if (v9 == v8)
    {

      *(a2 + 41) = 0u;
      a2[1] = 0u;
      a2[2] = 0u;
      *a2 = 0u;
      return result;
    }

    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      return result;
    }

    v15 = *(v7 + v13 + 16);
    v14 = *(v7 + v13 + 32);
    v16 = *(v7 + v13 + 41);
    v92 = *(v7 + v13);
    v93 = v15;
    *&v94[9] = v16;
    *v94 = v14;
    switch(v15)
    {
      case 1:
        if (v4 != 1)
        {
          v50 = OUTLINED_FUNCTION_66();
          v52 = OUTLINED_FUNCTION_14_4(v50, v51, v4);
          v19 = OUTLINED_FUNCTION_14_4(v52, v53, 1u);
          v21 = 1;
          goto LABEL_37;
        }

        if (v92 != v3 || *(&v92 + 1) != v2)
        {
          OUTLINED_FUNCTION_99();
          v37 = sub_2749FDCC4();
          v24 = v37;
          OUTLINED_FUNCTION_48_1(v37, v38);
          v39 = OUTLINED_FUNCTION_11_0();
          v42 = OUTLINED_FUNCTION_14_4(v39, v40, v41);
          v44 = OUTLINED_FUNCTION_14_4(v42, v43, 1u);
          sub_27478C4DC(v44, v45, 1u);
          v33 = OUTLINED_FUNCTION_11_0();
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_48_1(result, v6);
        v77 = OUTLINED_FUNCTION_11_0();
        sub_27477D408(v77, v78, v79);
        v80 = OUTLINED_FUNCTION_11_0();
        sub_27477D408(v80, v81, v82);
        v83 = OUTLINED_FUNCTION_11_0();
        sub_27478C4DC(v83, v84, v85);
        v74 = OUTLINED_FUNCTION_11_0();
        goto LABEL_43;
      case 2:
        if (v4 != 2)
        {
          v46 = OUTLINED_FUNCTION_66();
          v48 = OUTLINED_FUNCTION_14_4(v46, v47, v4);
          v19 = OUTLINED_FUNCTION_14_4(v48, v49, 2u);
          v21 = 2;
          goto LABEL_37;
        }

        if (v92 != v3 || *(&v92 + 1) != v2)
        {
          OUTLINED_FUNCTION_99();
          v23 = sub_2749FDCC4();
          v24 = v23;
          OUTLINED_FUNCTION_48_1(v23, v25);
          v26 = OUTLINED_FUNCTION_12();
          v29 = OUTLINED_FUNCTION_14_4(v26, v27, v28);
          v31 = OUTLINED_FUNCTION_14_4(v29, v30, 2u);
          sub_27478C4DC(v31, v32, 2u);
          v33 = OUTLINED_FUNCTION_12();
LABEL_31:
          sub_27478C4DC(v33, v34, v35);
          if (v24)
          {
            goto LABEL_44;
          }

          result = sub_2747D21CC(&v92);
LABEL_38:
          v13 += 64;
          ++v8;
          continue;
        }

        OUTLINED_FUNCTION_48_1(result, v6);
        v65 = OUTLINED_FUNCTION_12();
        sub_27477D408(v65, v66, v67);
        v68 = OUTLINED_FUNCTION_12();
        sub_27477D408(v68, v69, v70);
        v71 = OUTLINED_FUNCTION_12();
        sub_27478C4DC(v71, v72, v73);
        v74 = OUTLINED_FUNCTION_12();
LABEL_43:
        sub_27478C4DC(v74, v75, v76);
LABEL_44:

LABEL_48:
        v88 = v93;
        *a2 = v92;
        a2[1] = v88;
        a2[2] = *v94;
        *(a2 + 41) = *&v94[9];
        return result;
      case 3:
        if (v92 == 0)
        {
          if (v90)
          {
            OUTLINED_FUNCTION_48_1(result, v6);

            v86 = OUTLINED_FUNCTION_99();
            sub_27478C4DC(v86, v87, 3u);
            v64 = 0;
            goto LABEL_46;
          }
        }

        else if (!v91)
        {
          OUTLINED_FUNCTION_48_1(result, v6);

          v62 = OUTLINED_FUNCTION_99();
          sub_27478C4DC(v62, v63, 3u);
          v64 = 1;
LABEL_46:
          v60 = 0;
          v61 = 3;
LABEL_47:
          result = sub_27478C4DC(v64, v60, v61);
          goto LABEL_48;
        }

        v54 = OUTLINED_FUNCTION_66();
        v19 = OUTLINED_FUNCTION_14_4(v54, v55, v4);
        v21 = 3;
        goto LABEL_37;
      default:
        if (v4)
        {
          v17 = OUTLINED_FUNCTION_66();
          v19 = OUTLINED_FUNCTION_14_4(v17, v18, v4);
          v21 = 0;
LABEL_37:
          sub_27478C4DC(v19, v20, v21);
          v56 = OUTLINED_FUNCTION_66();
          result = sub_27478C4DC(v56, v57, v4);
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_48_1(result, v6);

        v58 = OUTLINED_FUNCTION_99();
        sub_27478C4DC(v58, v59, 0);
        v64 = OUTLINED_FUNCTION_66();
        v61 = 0;
        goto LABEL_47;
    }
  }
}

void sub_2747CF944()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v27 = v6;
  v30 = v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968FD0);
  OUTLINED_FUNCTION_43();
  v28 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = sub_2749FA594();
  OUTLINED_FUNCTION_43();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968FC0);
  OUTLINED_FUNCTION_34(v19);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - v21;
  LOBYTE(v21) = *(v5 + 16);
  v32 = *v5;
  v33 = v21;
  v29 = v1;
  sub_2747CF614(&v32, v34);
  sub_27473ADB8(v3, v22, &qword_280968FC0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v12);
  if (EnumTagSinglePayload == 1)
  {
    v24 = 0;
  }

  else
  {
    (*(v14 + 32))(v18, v22, v12);
    if (sub_2749FA554() & 1) != 0 || (sub_2749FA544())
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_2749FA584();
    }

    EnumTagSinglePayload = (*(v14 + 8))(v18, v12);
  }

  MEMORY[0x28223BE20](EnumTagSinglePayload);
  *(&v26 - 4) = v27;
  *(&v26 - 24) = v24 & 1;
  *(&v26 - 2) = v29;
  *(&v26 - 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968FE0);
  sub_2747D2F98();
  sub_2749FB8F4();
  sub_2749FBC64();
  v25 = v31;
  sub_2749FB8E4();
  sub_27472ECBC(v34, &qword_280969280);
  (*(v28 + 8))(v11, v25);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747CFC3C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a4;
  v46 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v41 - v9;
  v42 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  MEMORY[0x28223BE20](v42);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969008);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968FF8);
  MEMORY[0x28223BE20](v43);
  v19 = &v41 - v18;
  sub_2747D23B4(a1, v17, type metadata accessor for SmartShortcutPickerEntry);
  KeyPath = swift_getKeyPath();
  v21 = type metadata accessor for SmartShortcutPickerSectionGridEntryView(0);
  *&v17[v21[7]] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  v17[v21[5]] = a2;
  v22 = &v17[v21[6]];
  v23 = swift_getKeyPath();
  v51[191] = 0;
  *v22 = v23;
  v22[89] = 0;
  v24 = &v17[v21[8]];
  v49[0] = 0x3FF0000000000000;
  sub_2749FC5B4();
  v25 = v50[1];
  *v24 = v50[0];
  *(v24 + 1) = v25;
  v26 = &v17[v21[9]];
  LOBYTE(v49[0]) = 0;
  sub_2749FC5B4();
  v27 = v50[1];
  *v26 = v50[0];
  *(v26 + 1) = v27;
  v28 = v21[10];
  v52[0] = swift_getKeyPath();
  sub_2747D31F0(v52);
  memcpy(&v17[v28], v52, 0xBAuLL);
  v29 = swift_getKeyPath();
  memcpy(v53, (a3 + 40), 0x59uLL);
  v54[0] = v29;
  memcpy(&v54[1], (a3 + 40), 0x59uLL);
  memcpy(&v17[*(v15 + 44)], v54, 0x61uLL);
  v55 = v29;
  memcpy(v56, (a3 + 40), sizeof(v56));
  sub_2747D2AC8(v53, v50);
  sub_27473ADB8(v54, v50, &qword_280969020);
  sub_27472ECBC(&v55, &qword_280969020);
  v30 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  if (__swift_getEnumTagSinglePayload(v13, 1, v42))
  {
    sub_27472ECBC(v13, &unk_280969260);
    sub_2747B9A5C(v51);
  }

  else
  {
    v31 = v41;
    sub_2747D23B4(v13, v41, type metadata accessor for SmartShortcutPickerSelectedEntry);
    sub_27472ECBC(v13, &unk_280969260);
    memcpy(v49, v31, 0xB9uLL);
    sub_274772ADC(v49, v50);
    sub_2747D2220(v31, type metadata accessor for SmartShortcutPickerSelectedEntry);
    memcpy(v50, v49, 0xB9uLL);
    CGSizeMake(v50);
    memcpy(v51, v50, 0xB9uLL);
  }

  memcpy(v48, v51, sizeof(v48));
  v49[0] = v30;
  memcpy(&v49[1], v51, 0xB9uLL);
  sub_2747D31F8(v17, v19, &qword_280969008);
  memcpy(&v19[*(v43 + 36)], v49, 0xC1uLL);
  v50[0] = v30;
  memcpy(&v50[1], v48, 0xB9uLL);
  sub_27473ADB8(v49, &v47, &qword_280969030);
  sub_27472ECBC(v50, &qword_280969030);
  v32 = swift_getKeyPath();
  if (*(v44 + 32))
  {
    v33 = v45;
    if (*(v44 + 16) == 1)
    {
      sub_2749FA0C4();
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    v34 = 1;
    v33 = v45;
  }

  v35 = sub_2749FA0F4();
  __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968FE0);
  v37 = v46;
  v38 = (v46 + *(v36 + 36));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969040);
  sub_2747D31F8(v33, v38 + *(v39 + 28), &qword_280968A30);
  *v38 = v32;
  return sub_2747D31F8(v19, v37, &qword_280968FF8);
}

void sub_2747D0294()
{
  OUTLINED_FUNCTION_48();
  v0 = OUTLINED_FUNCTION_29_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  v2 = OUTLINED_FUNCTION_34(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  OUTLINED_FUNCTION_34_3();
  sub_27473ADB8(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EB8);
  OUTLINED_FUNCTION_31_7(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_86();
    swift_allocObject();
    swift_weakInit();
    sub_27471CF08(0, &qword_280968C40);
    type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
    OUTLINED_FUNCTION_53_3();
    OUTLINED_FUNCTION_10_7();
    v9 = OUTLINED_FUNCTION_41_5();
    v10(v9);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_39_4();
    OUTLINED_FUNCTION_46_3();
    sub_2747D2B90(v11, v12, v13);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_34_3();
    v14();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747D0448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v34 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29[-v5];
  v7 = type metadata accessor for SmartShortcutPickerEntry();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-v12];
  v14 = type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = v8;
    sub_2747D23B4(a3, v16, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_2749FD934();

      v38 = 0xD000000000000029;
      v39 = 0x8000000274A2D460;
      sub_2749F9284();
      sub_2747D236C(&qword_280968FC8, MEMORY[0x277CC9AF8]);
      v28 = sub_2749FDC74();
      MEMORY[0x277C5EBC0](v28);

      result = sub_2749FDAE4();
      __break(1u);
    }

    else
    {
      v18 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968E90) + 48)];
      v19 = *v18;
      v31 = *(v18 + 1);
      v20 = v31;
      v32 = v19;
      v21 = v18[16];
      v30 = v21;
      sub_2747D2410(v16, v13, type metadata accessor for SmartShortcutPickerEntry);
      v35 = v19;
      v36 = v20;
      v37 = v21;
      v22 = sub_2749FA594();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v22);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968FD0);
      v41 = sub_27472AB6C(&qword_280968FD8, &qword_280968FD0);
      __swift_allocate_boxed_opaque_existential_1(&v38);
      sub_2747CF944();
      sub_27472ECBC(v6, &qword_280968FC0);
      MEMORY[0x277C5F210](&v38);
      v23 = swift_allocObject();
      swift_weakInit();
      sub_2747D23B4(v13, v11, type metadata accessor for SmartShortcutPickerEntry);
      v24 = (*(v33 + 80) + 24) & ~*(v33 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      sub_2747D2410(v11, v25 + v24, type metadata accessor for SmartShortcutPickerEntry);
      v26 = v25 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
      v27 = v31;
      *v26 = v32;
      *(v26 + 8) = v27;
      *(v26 + 16) = v30;

      sub_2749FD4D4();

      sub_2747D2220(v13, type metadata accessor for SmartShortcutPickerEntry);
    }
  }

  return result;
}

uint64_t sub_2747D08EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968FC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v16 - v12;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v16[0] = a5;
    v16[1] = a6;
    v17 = a7;
    v14 = sub_2749FA594();
    (*(*(v14 - 8) + 16))(v13, a2, v14);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968FD0);
    v20 = sub_27472AB6C(&qword_280968FD8, &qword_280968FD0);
    __swift_allocate_boxed_opaque_existential_1(&v18);
    sub_2747CF944();

    sub_27472ECBC(v13, &qword_280968FC0);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  return MEMORY[0x277C5F210](&v18);
}

void sub_2747D0AB8()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968F48);
  v5 = OUTLINED_FUNCTION_34(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_39();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = OBJC_IVAR____TtC10WorkflowUI43SmartShortcutPickerCollectionViewDataSource____lazy_storage___underglowRegistration;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  OUTLINED_FUNCTION_46_3();
  sub_27473ADB8(v13, v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EC8);
  if (__swift_getEnumTagSinglePayload(v11, 1, v16) == 1)
  {
    sub_27472ECBC(v11, &qword_280968F48);
    sub_2749FA024();
    sub_2749FA004();
    OUTLINED_FUNCTION_86();
    swift_allocObject();
    swift_weakInit();
    sub_2749FD334();
    v17 = OUTLINED_FUNCTION_66();
    v18(v17);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
    OUTLINED_FUNCTION_39_4();
    sub_2747D2B90(v8, v1 + v12, &qword_280968F48);
    swift_endAccess();
  }

  else
  {
    (*(*(v16 - 8) + 32))(v3, v11, v16);
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_2747D0CDC(void *a1)
{
  v2 = sub_2749FA0F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v50 = &v43 - v14;
  v47 = type metadata accessor for SmartShortcutPickerEntry();
  MEMORY[0x28223BE20](v47);
  v52 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v43 = a1;
  v44 = v7;
  v45 = v3;
  v46 = v2;
  v21 = result;
  v22 = sub_2749F9274();
  v51 = v21;
  sub_2747CF414(v22, v53);
  v24 = v53[0];
  v23 = v53[1];
  v25 = v54;
  v26 = v55;
  result = sub_2749F9244();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (result >= *(v26 + 16))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  sub_2747D23B4(v26 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * result, v19, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2747CB3B0(v24, v23, v25);

    return sub_2747D2220(v19, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968E90);
    sub_27478C4DC(*&v19[*(v27 + 48)], *&v19[*(v27 + 48) + 8], v19[*(v27 + 48) + 16]);
    sub_2747D2410(v19, v52, type metadata accessor for SmartShortcutPickerEntry);
    if (v25 < 0)
    {
      sub_2747CB3B0(v24, v23, v25);

      v29 = 1;
      v28 = v50;
    }

    else
    {
      sub_27477D408(v24, v23, v25);
      sub_2747CB3B0(v24, v23, v25);

      v28 = v50;
      if (v25 == 1)
      {
        sub_2749FA0C4();
        sub_2747CB3B0(v24, v23, 1u);
        v29 = 0;
      }

      else
      {
        sub_2747CB3B0(v24, v23, v25);
        v29 = 1;
      }
    }

    v30 = v46;
    __swift_storeEnumTagSinglePayload(v13, v29, 1, v46);
    sub_2747D31F8(v13, v28, &qword_280968A30);
    v31 = [v43 traitCollection];
    v32 = [v31 userInterfaceStyle];

    v33 = v48;
    sub_27473ADB8(v28, v48, &qword_280968A30);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v30);
    v36 = v44;
    v35 = v45;
    if (EnumTagSinglePayload == 1)
    {
      (*(v45 + 16))(v44, v52 + *(v47 + 20), v30);
      v37 = __swift_getEnumTagSinglePayload(v33, 1, v30);
      v38 = v49;
      if (v37 != 1)
      {
        sub_27472ECBC(v33, &qword_280968A30);
      }
    }

    else
    {
      (*(v45 + 32))(v44, v33, v30);
      v38 = v49;
    }

    (*(v35 + 16))(v38, v36, v30);
    if (v32 == 2)
    {
      v55 = sub_2749FA294();
      v56 = MEMORY[0x277D7D660];
    }

    else
    {
      v55 = sub_2749FA2B4();
      v56 = MEMORY[0x277D7D668];
    }

    __swift_allocate_boxed_opaque_existential_1(v53);
    sub_2749FA284();
    __swift_project_boxed_opaque_existential_1(v53, v55);
    v39 = sub_2749FA264();
    v40 = [v39 baseColor];

    v41 = [v40 platformColor];
    if (v32 == 2 && *(v51 + 128) == 1)
    {
      v42 = [v41 colorWithAlphaComponent_];
      sub_2749FA014();
    }

    else
    {
      sub_2749FA014();
    }

    (*(v35 + 8))(v36, v30);
    sub_27472ECBC(v28, &qword_280968A30);
    sub_2747D2220(v52, type metadata accessor for SmartShortcutPickerEntry);
    return __swift_destroy_boxed_opaque_existential_0(v53);
  }
}

void sub_2747D13C8()
{
  OUTLINED_FUNCTION_48();
  v0 = OUTLINED_FUNCTION_29_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  v2 = OUTLINED_FUNCTION_34(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  OUTLINED_FUNCTION_34_3();
  sub_27473ADB8(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968ED8);
  OUTLINED_FUNCTION_31_7(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_86();
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for ListCell();
    type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
    OUTLINED_FUNCTION_53_3();
    OUTLINED_FUNCTION_10_7();
    v9 = OUTLINED_FUNCTION_41_5();
    v10(v9);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_39_4();
    OUTLINED_FUNCTION_46_3();
    sub_2747D2B90(v11, v12, v13);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_34_3();
    v14();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747D156C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968FB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260);
  MEMORY[0x28223BE20](v9 - 8);
  v42 = &v35 - v10;
  v11 = type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v44 = &v35 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v18 = result;
  v36 = v8;
  v37 = v6;
  v38 = v5;
  v39 = a1;
  *&v51[0] = *(result + 152);

  v41 = sub_2749175A4(v18);

  v19 = sub_2749F9274();
  v40 = v18;
  sub_2747CF414(v19, v51);
  v20 = v51[0];
  v21 = v51[1];
  v22 = *(&v51[1] + 1);
  v23 = sub_2749F9244();
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v23 >= *(v22 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23;
  v25 = v44;
  sub_2747D23B4(v24, v44, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
  sub_2747D23B4(v25, v15, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_14:
    result = sub_2749FDAE4();
    __break(1u);
    return result;
  }

  sub_2747CB3B0(v20, *(&v20 + 1), v21);

  v26 = v15[1];
  v53 = *v15;
  v54 = v26;
  v28 = *v15;
  v27 = v15[1];
  v55[0] = v15[2];
  *(v55 + 9) = *(v15 + 41);
  v51[0] = v28;
  v51[1] = v27;
  v51[2] = v15[2];
  *(&v51[2] + 9) = *(v15 + 41);
  v29 = (*(*v41 + 152))(v51);
  if (v29)
  {
    v30 = v29;
    v49[0] = v53;
    v49[1] = v54;
    v50[0] = v55[0];
    *(v50 + 9) = *(v55 + 9);
    memcpy(v52, (v40 + 40), 0x59uLL);
    memcpy(v48, (v40 + 40), 0x59uLL);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2747D2AC8(v52, v51);
    v31 = v42;
    sub_2749FA904();

    if (__swift_getEnumTagSinglePayload(v31, 1, v37))
    {
      sub_27472ECBC(v31, &unk_280969260);
      sub_2747B9A5C(v51);
    }

    else
    {
      v32 = v36;
      sub_2747D23B4(v31, v36, type metadata accessor for SmartShortcutPickerSelectedEntry);
      sub_27472ECBC(v31, &unk_280969260);
      memcpy(v45, v32, 0xB9uLL);
      sub_274772ADC(v45, v51);
      sub_2747D2220(v32, type metadata accessor for SmartShortcutPickerSelectedEntry);
      memcpy(v46, v45, 0xB9uLL);
      CGSizeMake(v46);
      memcpy(v51, v46, 0xB9uLL);
    }

    v33 = v38;
    memcpy(v45, v51, 0xB9uLL);
    sub_27487D3D8(v49, v30, v48, v45);
    memcpy(v46, v45, 0xB9uLL);
    sub_27472ECBC(v46, &qword_280968A58);
    memcpy(v47, v48, 0x59uLL);
    sub_2747D2B24(v47);
    sub_2749FA5A4();
    v34 = sub_2749FA5D4();
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
    MEMORY[0x277C5F220](v33);
    sub_2747D21CC(&v53);

    return sub_2747D2220(v44, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
  }

  else
  {
    sub_2747D2220(v44, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
    sub_2747D21CC(&v53);
  }
}

void sub_2747D1B84()
{
  OUTLINED_FUNCTION_48();
  v0 = OUTLINED_FUNCTION_29_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  v2 = OUTLINED_FUNCTION_34(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  OUTLINED_FUNCTION_34_3();
  sub_27473ADB8(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EE8);
  OUTLINED_FUNCTION_31_7(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_49_3();
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_86();
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for CollectionViewHeaderView();
    sub_2749FD334();
    OUTLINED_FUNCTION_10_7();
    v9 = OUTLINED_FUNCTION_41_5();
    v10(v9);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_39_4();
    OUTLINED_FUNCTION_46_3();
    sub_2747D2B90(v11, v12, v13);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_34_3();
    v14();
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_2747D1D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    *&v22[0] = *(result + 152);

    v7 = sub_2749175A4(v6);

    v9 = sub_2748122C0(v8);
    result = sub_2749F9274();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v9 + 16))
    {
      v10 = (v9 + (result << 6));
      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      *(v25 + 9) = *(v10 + 73);
      v24 = v12;
      v25[0] = v13;
      v23 = v11;
      sub_2747B24E0(&v23, v22);

      v22[0] = v23;
      v22[1] = v24;
      v22[2] = v25[0];
      *(&v22[2] + 9) = *(v25 + 9);
      (*(*v7 + 160))(__dst, v22);
      if (LOBYTE(__dst[0]) - 3 < 2 || LOBYTE(__dst[0]) == 2)
      {
        sub_2747D21CC(&v23);
      }

      if (HIBYTE(LOWORD(__dst[0])) == 1)
      {
        v14 = 1;
        if (__dst[0])
        {
LABEL_9:
          v15 = *(&v25[0] + 1);
          v16 = *(&v25[0] + 1);
LABEL_12:
          v17 = *(&v24 + 1);
          v18 = *&v25[0];
          memcpy(__dst, (v6 + 40), 0x59uLL);
          memcpy(v20, (v6 + 40), 0x59uLL);
          v19 = swift_allocObject();
          swift_weakInit();
          sub_2747D2AC8(__dst, v22);

          sub_274869528(v17, v18, v15, a4, v14, v20, sub_2747D2AC0, v19);

          sub_2747D21CC(&v23);
          memcpy(v22, v20, 0x59uLL);
          sub_2747D2B24(v22);
        }
      }

      else
      {
        v14 = HIBYTE(LOWORD(__dst[0])) == 2;
        if (__dst[0])
        {
          goto LABEL_9;
        }
      }

      v15 = 0;
      goto LABEL_12;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2747D1FC4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 136);
    sub_27473A658(v3);

    if (v3)
    {
      v3(a1);
      return sub_27471F8A4(v3);
    }
  }

  return result;
}

uint64_t SmartShortcutPickerCollectionViewDataSource.deinit()
{

  sub_2747D2480(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
  sub_27471F8A4(*(v0 + 136));

  sub_27472ECBC(v0 + OBJC_IVAR____TtC10WorkflowUI43SmartShortcutPickerCollectionViewDataSource____lazy_storage___gridCellRegistration, &qword_280968F40);
  sub_27472ECBC(v0 + OBJC_IVAR____TtC10WorkflowUI43SmartShortcutPickerCollectionViewDataSource____lazy_storage___underglowRegistration, &qword_280968F48);
  sub_27472ECBC(v0 + OBJC_IVAR____TtC10WorkflowUI43SmartShortcutPickerCollectionViewDataSource____lazy_storage___listCellRegistration, &qword_280968F50);
  sub_27472ECBC(v0 + OBJC_IVAR____TtC10WorkflowUI43SmartShortcutPickerCollectionViewDataSource____lazy_storage___headerViewRegistration, &qword_280968F58);
  return v0;
}

uint64_t SmartShortcutPickerCollectionViewDataSource.__deallocating_deinit()
{
  SmartShortcutPickerCollectionViewDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2747D2220(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2747D2280()
{
  result = qword_280968F10;
  if (!qword_280968F10)
  {
    sub_27471CF08(255, &qword_280968F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968F10);
  }

  return result;
}

unint64_t sub_2747D2318()
{
  result = qword_280968F28;
  if (!qword_280968F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968F28);
  }

  return result;
}

uint64_t sub_2747D236C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2747D23B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_2747D2410(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_2747D246C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_2747CB3B0(a1, a2, a3);
  }

  return a1;
}

void sub_2747D2480(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
  }
}

unint64_t sub_2747D2498()
{
  result = qword_280968F60;
  if (!qword_280968F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968F60);
  }

  return result;
}

void sub_2747D255C()
{
  sub_2747D280C(319, &qword_280968F80, &qword_280968EB8);
  if (v0 <= 0x3F)
  {
    sub_2747D280C(319, &qword_280968F88, &qword_280968EC8);
    if (v1 <= 0x3F)
    {
      sub_2747D280C(319, &qword_280968F90, &qword_280968ED8);
      if (v2 <= 0x3F)
      {
        sub_2747D280C(319, &qword_280968F98, &qword_280968EE8);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2747D280C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_2749FD6C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
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

uint64_t sub_2747D2880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_2747D28C0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2747D2914(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3F && *(a1 + 17))
    {
      v2 = *a1 + 62;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
      if (v2 >= 0x3E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2747D2960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

void sub_2747D29E8()
{
  sub_2747D2A50();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_2747D2A50()
{
  if (!qword_280968FB0)
  {
    type metadata accessor for SmartShortcutPickerEntry();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280968FB0);
    }
  }
}

uint64_t sub_2747D2B90(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_47(a1, a2, a3);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return v3;
}

void sub_2747D2BDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24)
{
  switch(a24 >> 6)
  {
    case 1:
      return;
    case 2:

      break;
    case 3:
      sub_27477CABC(a1, a2, a3, a4, a5, a6, a7 & 1);

      sub_2747D2D7C(a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24 & 0x3F);
      break;
    default:

      break;
  }
}

void sub_2747D2D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 2)
  {

    sub_2747D2EB8(a5, a6, a7);
  }

  else
  {
    if (a17 == 1)
    {

      sub_274772C94(a9, a10);
    }

    else if (a17)
    {
      return;
    }
  }
}

void sub_2747D2EB8(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_2747D2ED8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SmartShortcutPickerEntry();
  OUTLINED_FUNCTION_27(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = *(v2 + 16);
  v12 = v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);

  return sub_2747D08EC(a1, a2, v11, v2 + v10, v13, v14, v15);
}

unint64_t sub_2747D2F98()
{
  result = qword_280968FE8;
  if (!qword_280968FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968FE0);
    sub_2747D3050();
    sub_27472AB6C(&qword_280969038, &qword_280969040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968FE8);
  }

  return result;
}

unint64_t sub_2747D3050()
{
  result = qword_280968FF0;
  if (!qword_280968FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968FF8);
    sub_2747D3108();
    sub_27472AB6C(&qword_280969028, &qword_280969030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968FF0);
  }

  return result;
}

unint64_t sub_2747D3108()
{
  result = qword_280969000;
  if (!qword_280969000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969008);
    sub_2747D236C(&qword_280969010, type metadata accessor for SmartShortcutPickerSectionGridEntryView);
    sub_27472AB6C(&qword_280969018, &qword_280969020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969000);
  }

  return result;
}

uint64_t sub_2747D31F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_47(a1, a2, a3);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return v3;
}

id sub_2747D3244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EB8);
  OUTLINED_FUNCTION_27(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968ED8);
  OUTLINED_FUNCTION_34(v5);
  v6 = OUTLINED_FUNCTION_66();

  return sub_2747CC49C(v6, v7, a3);
}

uint64_t objectdestroy_65Tm()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_43();
  v6 = v5;
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_43();
  v12 = v11;
  v13 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);

  (*(v6 + 8))(v0 + v7, v4);
  (*(v12 + 8))(v0 + v13, v10);
  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

unint64_t sub_2747D346C()
{
  OUTLINED_FUNCTION_50_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EE8);
  OUTLINED_FUNCTION_27(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EC8);
  OUTLINED_FUNCTION_34(v1);
  v2 = OUTLINED_FUNCTION_51_2();

  return sub_2747CC748(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void *OUTLINED_FUNCTION_38_2(void *a1)
{

  return memcpy(a1, (v1 + 1872), 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_49_3()
{

  return sub_27472ECBC(v1, v0);
}

uint64_t WorkflowImportRequest.init(creationOptions:database:shortcutSource:galleryIdentifier:trigger:triggerSource:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

void WorkflowImportRequest.init(workflow:database:shortcutSource:galleryIdentifier:trigger:triggerSource:)(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v16 = [a1 record];
  v17 = [objc_allocWithZone(MEMORY[0x277D7CA68]) initWithRecord_];

  *a8 = v17;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
}

void WorkflowImportRequest.importWorkflow(overwriteExisting:)(void *a1)
{
  v133 = a1;
  v140 = *MEMORY[0x277D85DE8];
  v2 = sub_2749FCA74();
  v3 = OUTLINED_FUNCTION_0_0(v2, &v142);
  v128 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_1();
  v127 = v5;
  v6 = sub_2749FCAA4();
  v7 = OUTLINED_FUNCTION_0_0(v6, &v141);
  v125 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_1();
  v124 = v9;
  v10 = sub_2749FCAC4();
  v11 = OUTLINED_FUNCTION_0_0(v10, &v143);
  v123 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v121 = &v116[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v122 = &v116[-v15];
  v16 = *v1;
  v134 = *(v1 + 8);
  v119 = *(v1 + 16);
  v17 = *(v1 + 32);
  v118 = *(v1 + 24);
  v120 = v17;
  v130 = *(v1 + 40);
  v117 = *(v1 + 48);
  v18 = [v16 record];
  [v18 addWatchWorkflowTypeIfEligible];

  v135 = v16;
  v19 = [v16 record];
  v20 = [v19 workflowTypes];
  type metadata accessor for WFWorkflowTypeName(0);
  *&v132 = v21;
  v22 = sub_2749FCF84();

  v23 = 0;
  aBlock = v22;
  v24 = v22[2];
  while (1)
  {
    v25 = v22[2];
    if (v24 == v23)
    {
      v23 = v22[2];
      goto LABEL_33;
    }

    if (v23 >= v25)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v26 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v28 = v27;
    if (v26 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v28 == v29)
    {
      break;
    }

    v31 = OUTLINED_FUNCTION_5_12();

    if (v31)
    {
      goto LABEL_12;
    }

    ++v23;
  }

LABEL_12:
  v32 = v22[2];
  if (v32 - 1 == v23)
  {
    v25 = v23 + 1;
    goto LABEL_33;
  }

  v33 = v23 + 5;
  do
  {
    v34 = v33 - 4;
    if (v33 - 4 >= v32)
    {
      goto LABEL_67;
    }

    v35 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v37 = v36;
    if (v35 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v37 == v38)
    {
    }

    else
    {
      v40 = OUTLINED_FUNCTION_5_12();

      if ((v40 & 1) == 0)
      {
        if (v34 != v23)
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          v41 = v22[2];
          if (v23 >= v41)
          {
            goto LABEL_69;
          }

          if (v34 >= v41)
          {
            goto LABEL_70;
          }

          v42 = v22[v33];
          v43 = v22[v23 + 4];
          v44 = v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2747D5770();
            v22 = v50;
          }

          v45 = &v22[v23];
          v46 = v45[4];
          v45[4] = v44;

          if (v34 >= v22[2])
          {
            goto LABEL_71;
          }

          v47 = v22[v33];
          v22[v33] = v43;

          aBlock = v22;
        }

        ++v23;
      }
    }

    v32 = v22[2];
    v48 = v33 + 1;
    v49 = v33 - 3;
    ++v33;
  }

  while (v49 != v32);
  v25 = v48 - 4;
  if ((v48 - 4) < v23)
  {
    goto LABEL_72;
  }

LABEL_33:
  sub_2747D54C8(v23, v25);
  v51 = sub_2749FCF74();

  [v19 setWorkflowTypes_];

  aBlock = 0;
  v52 = v135;
  v53 = [v134 createWorkflowWithOptions:v135 nameCollisionBehavior:v133 & 1 error:&aBlock];
  if (!v53)
  {
    v82 = aBlock;
    sub_2749F8FE4();

    swift_willThrow();
    return;
  }

  v54 = aBlock;
  v55 = [v52 record];
  v56 = v53;
  v57 = [v56 name];
  v58 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v60 = v59;

  sub_2747D57FC(v58, v60, v55);
  v61 = &unk_274A0F000;
  v62 = v56;
  v63 = v130;
  if (!v130)
  {
    goto LABEL_44;
  }

  v64 = objc_allocWithZone(MEMORY[0x277D7CA60]);
  v133 = v63;
  v65 = [v64 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BA8);
  inited = swift_initStackObject();
  v132 = xmmword_274A0EF10;
  *(inited + 16) = xmmword_274A0EF10;
  *(inited + 32) = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  *(inited + 40) = v67;
  v68 = [v56 name];
  if (!v68)
  {
    __break(1u);
    goto LABEL_75;
  }

  v69 = v68;

  v70 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];
  v71 = [v70 serializedRepresentation];

  if (!v71)
  {
LABEL_75:
    __break(1u);
    return;
  }

  *(inited + 72) = swift_getObjectType();
  *(inited + 48) = v71;
  v72 = MEMORY[0x277D837D0];
  v73 = sub_2749FCCB4();
  v74 = [objc_opt_self() sharedRegistry];
  v75 = sub_2749FCD64();
  v76 = sub_2747D44E8(v73);

  v77 = sub_2747D5870(v75, v76, v74);

  objc_opt_self();
  v78 = swift_dynamicCastObjCClass();
  if (!v78)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
    v83 = swift_allocObject();
    *(v83 + 16) = v132;
    *(v83 + 56) = v72;
    *(v83 + 32) = 0xD00000000000002ALL;
    *(v83 + 40) = 0x8000000274A2D510;
    sub_2749FDDD4();

    v84 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v86 = v85;
    v87 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_2747D5418(v84, v86, 5, 0);
    swift_willThrow();

    return;
  }

  *&v132 = v77;
  [v65 addAction_];
  v79 = [objc_allocWithZone(MEMORY[0x277D7C290]) &selRef_sessionIdentifier];
  sub_2747D58FC(v133);
  if (v80 >> 60 == 15)
  {
    v81 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    v81 = sub_2749F9074();
    v88 = OUTLINED_FUNCTION_98_0();
    sub_2747BD018(v88, v89);
  }

  [v79 setTriggerData_];

  [v79 setShouldPrompt_];
  [v79 setEnabled_];
  [v79 setSource_];
  v90 = objc_allocWithZone(MEMORY[0x277D7C988]);
  v91 = [v90 initWithDatabase_];
  v92 = v65;
  v62 = [v65 record];
  v93 = swift_allocObject();
  *(v93 + 16) = v56;
  OUTLINED_FUNCTION_1_21(v93);
  v137 = 1107296256;
  v138 = sub_2747D4930;
  v139 = &block_descriptor_6_0;
  v94 = _Block_copy(&aBlock);
  v95 = v56;

  [v91 saveNewConfiguredTrigger:v79 workflow:v62 notifyDaemon:1 completion:v94];
  _Block_release(v94);

  v61 = &unk_274A0F000;
LABEL_44:
  *&v132 = v53;

  sub_27471CF08(0, &qword_28159E4E0);
  v133 = sub_2749FD404();
  v96 = v121;
  sub_2749FCAB4();
  v97 = v122;
  sub_2749FCB14();
  v134 = *(v123 + 8);
  (v134)(v96, v131);
  v98 = swift_allocObject();
  *(v98 + 16) = v56;
  OUTLINED_FUNCTION_1_21(v98);
  v137 = v61[78];
  OUTLINED_FUNCTION_2_2();
  v138 = v99;
  v139 = &block_descriptor_12;
  v100 = _Block_copy(&aBlock);
  v101 = v56;

  v102 = v124;
  sub_2749FCA94();
  aBlock = MEMORY[0x277D84F90];
  sub_27473FC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27473FCD0();
  v103 = v127;
  v104 = v129;
  sub_2749FD7B4();
  v105 = v133;
  MEMORY[0x277C5F120](v97, v102, v103, v100);
  _Block_release(v100);

  (*(v128 + 8))(v103, v104);
  (*(v125 + 8))(v102, v126);
  (v134)(v97, v131);
  v106 = [objc_allocWithZone(MEMORY[0x277D7C0E8]) init];
  v107 = [v135 record];
  v108 = [v107 actions];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FD10);
  v109 = sub_2749FCF84();

  v110 = *(v109 + 16);

  if (HIDWORD(v110))
  {
LABEL_73:
    __break(1u);
  }

  [v106 setActionCount_];
  v111 = v120;
  switch(v119)
  {
    case -1:
      v112 = @"ShortcutSourceUnknown";
      goto LABEL_60;
    case 0:
      v112 = @"ShortcutSourceOnDevice";
      goto LABEL_60;
    case 1:
      v112 = @"ShortcutSourceGallery";
      goto LABEL_60;
    case 2:
      v112 = @"ShortcutSourceAddToSiri";
      goto LABEL_60;
    case 3:
      v112 = @"ShortcutSourceCloudLink";
      goto LABEL_60;
    case 4:
      v112 = @"ShortcutSourceDefaultShortcut";
      goto LABEL_60;
    case 5:
      v112 = @"ShortcutSourceSiriTopLevelShortcut";
      goto LABEL_60;
    case 6:
      v112 = @"ShortcutSourceAutomatorMigration";
      goto LABEL_60;
    case 7:
      v112 = @"ShortcutSourceFilePublic";
      goto LABEL_60;
    case 8:
      v112 = @"ShortcutSourceFileKnownContacts";
      goto LABEL_60;
    case 9:
      v112 = @"ShortcutSourceFilePersonal";
      goto LABEL_60;
    case 10:
      v112 = @"ShortcutSourceEditorDocumentMenu";
      goto LABEL_60;
    case 11:
      v112 = @"ShortcutSourceAppShortcut";
      goto LABEL_60;
    case 12:
      v112 = @"ShortcutSourceActiveStarterShortcut";
LABEL_60:
      v113 = v112;
      break;
    default:
      v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v119];
      v111 = v120;
      break;
  }

  v114 = v112;
  [v106 setShortcutSource_];

  if (v111)
  {
    v115 = sub_2749FCD64();
  }

  else
  {
    v115 = 0;
  }

  [v106 setGalleryIdentifier_];

  [v106 track];
}

uint64_t sub_2747D44E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969058);
    v2 = sub_2749FDB54();
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
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_274797FD4(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2747A42D8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2747A42D8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2747A42D8(v31, v32);
    result = sub_2749FD8B4();
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
    result = sub_2747A42D8(v32, (*(v2 + 56) + 32 * v18));
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

void sub_2747D47AC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_274A0EF10;
    v7 = a3;
    sub_2749FD934();
    MEMORY[0x277C5EBC0](0xD000000000000035, 0x8000000274A2D600);
    v8 = [a4 name];
    v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v11 = v10;

    MEMORY[0x277C5EBC0](v9, v11);

    MEMORY[0x277C5EBC0](2112041, 0xE300000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18);
    sub_2749FDA74();
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    sub_2749FDDD4();
  }
}

void sub_2747D4930(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

void sub_2747D49D8(void *a1)
{
  v2 = *MEMORY[0x277D76438];
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v3 = qword_28159E448;
  v4 = sub_2749FCD64();
  v5 = sub_2749FCD64();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_274A0EF10;
  v8 = [a1 name];
  v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v11 = v10;

  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_27475C4F4();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  sub_2749FCDB4();

  argument = sub_2749FCD64();

  UIAccessibilityPostNotification(v2, argument);
}

void sub_2747D4BAC(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v9 = *(v3 + 16);
  *v85 = *v3;
  v86 = v9;
  v87 = *(v3 + 32);
  v88 = *(v3 + 48);
  sub_2747D5A24([v85[0] record]);
  if (v10)
  {
    OUTLINED_FUNCTION_4_11();
    v11 = sub_2749FCD64();
    v12 = [v85[1] hasVisibleWorkflowsWithName_];

    if (v12)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CFC218]) init];
      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v14 = qword_28159E448;
      v15 = sub_2749FCD64();
      v16 = sub_2749FCD64();

      v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_274A0EF10;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 64) = sub_27475C4F4();
      *(v18 + 32) = v4;
      *(v18 + 40) = v5;
      v19 = sub_2749FCDB4();
      v21 = v20;

      sub_2748B8E2C(v19, v21, v13);
      sub_2749FCE14();
      v22 = sub_2749FCD64();
      v23 = sub_2749FCD64();

      v24 = [v14 localizedStringForKey:v22 value:v23 table:0];

      v25 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v27 = v26;

      sub_2748FE6A0(v25, v27, v13);
      v28 = objc_opt_self();
      v29 = swift_allocObject();
      *(v29 + 16) = a2;
      *(v29 + 24) = a3;
      v81 = sub_2747D5A94;
      v82 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v78 = 1107296256;
      OUTLINED_FUNCTION_2_2();
      v79 = v30;
      v80 = &block_descriptor_12_0;
      v31 = _Block_copy(&aBlock);

      v32 = [v28 cancelButtonWithHandler_];
      _Block_release(v31);
      [v13 addButton_];

      sub_27471CF08(0, &qword_28096D710);
      sub_2749FCE14();
      OUTLINED_FUNCTION_4_11();
      v33 = sub_2749FCD64();
      OUTLINED_FUNCTION_98_0();
      v34 = sub_2749FCD64();

      v35 = OUTLINED_FUNCTION_6_9();

      v36 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v38 = v37;

      v39 = swift_allocObject();
      OUTLINED_FUNCTION_3_24(v39, v40, v41, v42, v43, v44, v45, v46, v71, a1, aBlock, v78, v79, v80, v81, v82, v83, v84, *v85, v86, v87, v88);
      sub_2747D5AC0(v85, &aBlock);
      v47 = sub_2747D5238(v36, v38, 2, sub_2747D5A9C, v39);
      [v13 addButton_];

      sub_2749FCE14();
      OUTLINED_FUNCTION_4_11();
      v48 = sub_2749FCD64();
      OUTLINED_FUNCTION_98_0();
      v49 = sub_2749FCD64();

      v50 = OUTLINED_FUNCTION_6_9();

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_4_11();

      v51 = swift_allocObject();
      OUTLINED_FUNCTION_3_24(v51, v52, v53, v54, v55, v56, v57, v58, v72, v73, aBlock, v78, v79, v80, v81, v82, v83, v84, *v85, v86, v87, v88);
      sub_2747D5AC0(v85, &aBlock);
      v59 = OUTLINED_FUNCTION_98_0();
      v62 = sub_2747D5238(v59, v60, 0, v61, v51);
      [v13 addButton_];

      [v74 presentAlert_];
      OUTLINED_FUNCTION_9_7();
      return;
    }

    WorkflowImportRequest.importWorkflow(overwriteExisting:)(0);
    v68 = v67;
    v76 = v67;
    a2(v68, 0);
  }

  else
  {
    v63 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v65 = v64;
    v66 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v75 = sub_2747D5418(v63, v65, 0, 0);
    a2(v75, 1);
  }

  OUTLINED_FUNCTION_9_7();
}

void sub_2747D51C8(void (*a1)(void))
{
  v2 = [objc_opt_self() userCancelledError];
  a1();
}

id sub_2747D5238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2749FCD64();

  if (a4)
  {
    v12[4] = a4;
    v12[5] = a5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_274760264;
    v12[3] = &block_descriptor_21;
    v9 = _Block_copy(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() buttonWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_2747D5334(uint64_t a1, void (*a2)(void *, void), uint64_t a3, void *a4)
{
  WorkflowImportRequest.importWorkflow(overwriteExisting:)(a4);
  v6 = v5;
  v7 = v5;
  a2(v6, 0);
}

uint64_t WFShortcutFileContentType.shortcutSource.getter(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (a1 + 6);
  }
}

id sub_2747D5418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2749FCD64();

  if (a4)
  {
    v8 = sub_2749FCC94();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_2747D54C8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_274789F10(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 8 * v5);
  type metadata accessor for WFWorkflowTypeName(0);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_274754574((v9 + 8 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_2747D55A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v4 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v6, v10))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_274789F28(v6 + v10, 1);

  sub_2747D5654(a1, a2, 1, a3, a4);
}

void sub_2747D5654(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = a5;
  v10 = *v6;
  v11 = (v10 + 32 + 16 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967970);
  a1 = swift_arrayDestroy();
  v12 = __OFSUB__(a3, v7);
  v13 = a3 - v7;
  if (v12)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v10 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_15;
  }

  a1 = sub_274764C8C((v10 + 32 + 16 * a2), v14 - a2, &v11[2 * a3]);
  v15 = *(v10 + 16);
  v12 = __OFADD__(v15, v13);
  v16 = v15 + v13;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v10 + 16) = v16;
LABEL_7:
  if (a3 >= 1)
  {
    a1 = a4;
    *v11 = a4;
    v11[1] = v5;
    if (a3 == 1)
    {
      return;
    }

LABEL_17:
    v17 = a1;
    v18 = v5;
    __break(1u);
    return;
  }
}

uint64_t sub_2747D5784(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2749FD844();
  }

  return sub_2749FD984();
}

void sub_2747D57FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setName_];
}

id sub_2747D5870(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2749FCC94();

  v6 = [a3 createActionWithIdentifier:a1 serializedParameters:v5];

  return v6;
}

uint64_t sub_2747D58FC(void *a1)
{
  v1 = [a1 serializedData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2749F9094();

  return v3;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2747D5984(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 52))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2747D59C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2747D5A24(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

void sub_2747D5B8C(uint64_t a1, void *a2)
{
  v4 = sub_27472D918(a1);
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v33 = a1;
  v39 = a1 + 32;
  v37 = a2;
  v38 = MEMORY[0x277D84F90];
  v35 = a1 & 0xC000000000000001;
  v36 = v4;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v5 != v4)
  {
    if (v6)
    {
      v8 = MEMORY[0x277C5F6D0](v5, v33);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v39 + 8 * v5);
    }

    v9 = v8;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    v11 = [v8 status];
    v12 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v14 = v13;
    if (v12 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v14 == v15)
    {
    }

    else
    {
      v40 = v9;
      v17 = sub_2749FDCC4();

      if (v17)
      {
        goto LABEL_14;
      }

      v18 = *a2;

      v19 = [v9 contentDestination];
      v20 = v19;
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = v19;
        v22 = sub_2749FD884();

        if ((v22 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_14:
      }

      else
      {
        if (*(v18 + 16))
        {
          sub_27471CF08(0, &qword_2809679B0);
          v23 = sub_2749FD5F4();
          v24 = ~(-1 << *(v18 + 32));
          while (1)
          {
            v25 = v23 & v24;
            if (((*(v18 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
            {
              break;
            }

            v26 = *(*(v18 + 48) + 8 * v25);
            v27 = sub_2749FD604();

            v23 = v25 + 1;
            if (v27)
            {

              v4 = v36;
              a2 = v37;
              v7 = v34;
              v6 = v35;
              goto LABEL_2;
            }
          }

          v4 = v36;
          a2 = v37;
          v7 = v34;
          v6 = v35;
          v9 = v40;
        }

LABEL_23:
        sub_2747655C4(&v41, [v9 contentDestination]);

        v28 = [v9 contentDestination];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2747642B8();
          v38 = v31;
        }

        v29 = *(v38 + 16);
        if (v29 >= *(v38 + 24) >> 1)
        {
          sub_2747642B8();
          v38 = v32;
        }

        *(v38 + 16) = v29 + 1;
        v30 = v38 + 16 * v29;
        *(v30 + 32) = v28;
        *(v30 + 40) = v9;
      }
    }
  }
}

void *sub_2747D5EFC(int a1, id a2, uint64_t a3)
{
  v4 = [a2 identifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  sub_2749FCE24();

  v5 = sub_27472D918(a3);
  if (v5)
  {
    v6 = v5;
    v17 = MEMORY[0x277D84F90];
    result = sub_27476D1F8(0, v5 & ~(v5 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x277C5F6D0](v8, a3);
      }

      else
      {
        v9 = *(a3 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = sub_2747DDFD4(v9, &selRef_actionUUID);
      v13 = v12;

      v15 = *(v17 + 16);
      v14 = *(v17 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_27476D1F8((v14 > 1), v15 + 1, 1);
      }

      ++v8;
      *(v17 + 16) = v15 + 1;
      v16 = v17 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v6 != v8);
  }

  OUTLINED_FUNCTION_44();
  sub_27478C380();
}

uint64_t sub_2747D6088(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27471CF08(0, &qword_28159E390);
  if ((sub_2749FD604() & 1) == 0)
  {
    return 0;
  }

  return sub_274785250(a2, a4);
}

uint64_t sub_2747D6118(void *a1, uint64_t a2)
{
  sub_2749FDDF4();
  sub_2747D5EFC(&v5, a1, a2);
  return sub_2749FDE44();
}

uint64_t sub_2747D6178()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2749FDDF4();
  sub_2747D5EFC(&v4, v1, v2);
  return sub_2749FDE44();
}

void sub_2747D61D4()
{
  v1 = [*(v0 + 24) actions];
  sub_27471CF08(0, &qword_28096D540);
  v2 = sub_2749FCF84();

  v3 = sub_27472D918(v2);
  v4 = 0;
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v4)
    {

      v17 = sub_2747D7310(v20, &qword_280969148, &unk_274A14940, sub_2747DD110);
      v18 = OBJC_IVAR____TtC10WorkflowUI21SmartPromptsViewModel_actionsByActionUUID;
      swift_beginAccess();
      *(v19 + v18) = v17;

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C5F6D0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v8 = sub_2747DDFD4(v5, &selRef_UUID);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274764044();
        v20 = v15;
      }

      v12 = *(v20 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v20 + 24) >> 1)
      {
        sub_274764044();
        v13 = v12 + 1;
        v20 = v16;
      }

      *(v20 + 16) = v13;
      v14 = (v20 + 24 * v12);
      v14[4] = v10;
      v14[5] = v11;
      v14[6] = v6;
      v4 = v7;
    }

    else
    {

      ++v4;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_2747D63EC()
{
  v1 = [*(v0 + 24) actions];
  sub_27471CF08(0, &qword_28096D540);
  v2 = sub_2749FCF84();

  v3 = sub_2747D8010(v2);
  v4 = OBJC_IVAR____TtC10WorkflowUI21SmartPromptsViewModel_actionsByActionIdentifier;
  swift_beginAccess();
  *(v0 + v4) = v3;
}

uint64_t sub_2747D6498()
{
  v1 = *(v0 + 40);
  v115 = MEMORY[0x277D84F90];
  v2 = sub_27472D918(v1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      v1 = v115;
      v13 = sub_27472D918(v115);
      v14 = 0;
      v15 = OBJC_IVAR____TtC10WorkflowUI21SmartPromptsViewModel_actionsByActionUUID;
      v112 = MEMORY[0x277D84F90];
      v109 = 3;
      while (1)
      {
        while (1)
        {
          if (v13 == v14)
          {

            v1 = 0;
            v39 = sub_2747D7310(v112, &qword_280969138, &unk_274A14930, sub_2747DD2E8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969128);
            v40 = sub_2749FDB34();
            v41 = v40;
            v42 = 0;
            v43 = v39 + 64;
            v103 = v39;
            v44 = 1 << *(v39 + 32);
            v45 = -1;
            if (v44 < 64)
            {
              v45 = ~(-1 << v44);
            }

            v46 = v45 & *(v39 + 64);
            v47 = (v44 + 63) >> 6;
            v104 = v40 + 64;
            v105 = v40;
            if (v46)
            {
              do
              {
                v48 = __clz(__rbit64(v46));
                v106 = (v46 - 1) & v46;
LABEL_43:
                v51 = v48 | (v42 << 6);
                v52 = *(v103 + 48) + 16 * v51;
                v53 = *(v52 + 8);
                v107 = *v52;
                v54 = *(*(v103 + 56) + 8 * v51);
                v116 = MEMORY[0x277D84FA0];
                swift_bridgeObjectRetain_n();

                v55 = sub_2747DD4F8(v54, &v116);
                v56 = v55;
                if ((v55 & 0xC000000000000001) != 0)
                {
                  v57 = sub_2749FD844();
                }

                else
                {
                  v57 = *(v55 + 16);
                }

                v113 = v53;
                if (v57)
                {
                  if (v57 < 1)
                  {
                    v58 = MEMORY[0x277D84F90];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
                    v58 = swift_allocObject();
                    v59 = _swift_stdlib_malloc_size(v58);
                    v58[2] = v57;
                    v58[3] = (2 * ((v59 - 32) / 8)) | 1;
                  }

                  sub_2747B0888(&v115, (v58 + 4), v57, v56, v60, v61, v62, v63, v103, v104, v105, v106, v107, v109, v110, v111, v113, v115);
                  v65 = v64;
                  sub_274730F8C();
                  if (v65 != v57)
                  {
                    goto LABEL_97;
                  }

                  v41 = v105;
                }

                else
                {
                  v58 = MEMORY[0x277D84F90];
                }

                v115 = v58;
                sub_2747D9A34(&v115, sub_2747DAB58, sub_2747D9E9C);

                v66 = v115;

                *(v104 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
                v67 = (*(v41 + 48) + 16 * v51);
                *v67 = v107;
                v67[1] = v113;
                *(*(v41 + 56) + 8 * v51) = v66;
                v68 = *(v41 + 16);
                v69 = __OFADD__(v68, 1);
                v70 = v68 + 1;
                if (v69)
                {
                  goto LABEL_96;
                }

                *(v41 + 16) = v70;
                v46 = v106;
              }

              while (v106);
            }

            v49 = v42;
            while (1)
            {
              v42 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                goto LABEL_92;
              }

              if (v42 >= v47)
              {

                v71 = 1 << *(v41 + 32);
                v72 = -1;
                if (v71 < 64)
                {
                  v72 = ~(-1 << v71);
                }

                v73 = v72 & *(v41 + 64);
                v114 = OBJC_IVAR____TtC10WorkflowUI21SmartPromptsViewModel_actionsByActionIdentifier;
                v74 = (v71 + 63) >> 6;

                v75 = 0;
                v108 = MEMORY[0x277D84F90];
LABEL_59:
                if (!v73)
                {
                  goto LABEL_60;
                }

                do
                {
LABEL_64:
                  v77 = __clz(__rbit64(v73));
                  v73 &= v73 - 1;
                  v78 = v77 | (v75 << 6);
                  v79 = *(v41 + 56);
                  v80 = (*(v41 + 48) + 16 * v78);
                  v82 = *v80;
                  v81 = v80[1];
                  v83 = *(v79 + 8 * v78);
                  swift_beginAccess();
                  v84 = *(v111 + v114);
                  v85 = *(v84 + 16);

                  if (v85 && (v86 = sub_274797CC0(v82, v81), (v87 & 1) != 0))
                  {
                    v88 = *(*(v84 + 56) + 8 * v86);
                    swift_endAccess();
                    if (v88 >> 62)
                    {
                      v89 = sub_2749FD844();
                    }

                    else
                    {
                      v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    if (v89)
                    {
                      if ((v88 & 0xC000000000000001) != 0)
                      {

                        v90 = MEMORY[0x277C5F6D0](0, v88);
                      }

                      else
                      {
                        if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_98;
                        }

                        v90 = *(v88 + 32);
                      }

                      if (v83 >> 62)
                      {
                        v95 = sub_2749FD844();
                        if (v95)
                        {
                          v96 = v95;
                          v91 = sub_2748142C8(v95, 0);

                          sub_2747DE0B0(v91 + 32, v96, v83);
                          v98 = v97;

                          if (v98 != v96)
                          {
                            goto LABEL_99;
                          }
                        }

                        else
                        {
                          v91 = MEMORY[0x277D84F90];
                        }
                      }

                      else
                      {
                        v91 = v83 & 0xFFFFFFFFFFFFFF8;
                      }

                      v115 = v91;
                      sub_2747D9A34(&v115, sub_2747DA2F0, sub_2747D9C9C);

                      v92 = v115;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_27476411C();
                        v108 = v99;
                      }

                      v93 = *(v108 + 16);
                      if (v93 >= *(v108 + 24) >> 1)
                      {
                        sub_27476411C();
                        v108 = v100;
                      }

                      *(v108 + 16) = v93 + 1;
                      v94 = v108 + 16 * v93;
                      *(v94 + 32) = v90;
                      *(v94 + 40) = v92;
                      v41 = v105;
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    swift_endAccess();
                  }

                  v41 = v105;
                }

                while (v73);
LABEL_60:
                while (1)
                {
                  v76 = v75 + 1;
                  if (__OFADD__(v75, 1))
                  {
                    goto LABEL_95;
                  }

                  if (v76 >= v74)
                  {

                    v101 = swift_allocObject();
                    *(v101 + 16) = v111;
                    *(v101 + 24) = v108;

                    sub_2749F9F14();
                  }

                  v73 = *(v104 + 8 * v76);
                  ++v75;
                  if (v73)
                  {
                    v75 = v76;
                    goto LABEL_64;
                  }
                }
              }

              v50 = *(v43 + 8 * v42);
              ++v49;
              if (v50)
              {
                v48 = __clz(__rbit64(v50));
                v106 = (v50 - 1) & v50;
                goto LABEL_43;
              }
            }
          }

          if ((v1 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x277C5F6D0](v14, v1);
          }

          else
          {
            if (v14 >= *(v1 + 16))
            {
              goto LABEL_94;
            }

            v16 = *(v1 + 8 * v14 + 32);
          }

          v17 = v16;
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_93;
          }

          v19 = sub_2747DDFD4(v16, &selRef_actionUUID);
          if (v20)
          {
            break;
          }

LABEL_27:

          ++v14;
        }

        v21 = v19;
        v22 = v20;
        swift_beginAccess();
        v23 = *(v111 + v15);
        if (!*(v23 + 16) || (v24 = sub_274797CC0(v21, v22), (v25 & 1) == 0))
        {
          swift_endAccess();

          goto LABEL_27;
        }

        v26 = *(*(v23 + 56) + 8 * v24);
        swift_endAccess();
        v27 = v26;

        v28 = [v27 identifier];

        v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v31 = v30;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_274A11F70;
        *(inited + 32) = v17;
        sub_2747B0004(inited);
        v34 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2747641E0();
          v112 = v37;
        }

        v35 = *(v112 + 16);
        if (v35 >= *(v112 + 24) >> 1)
        {
          sub_2747641E0();
          v112 = v38;
        }

        *(v112 + 16) = v35 + 1;
        v36 = (v112 + 24 * v35);
        v36[4] = v29;
        v36[5] = v31;
        v36[6] = v34;
        v14 = v18;
      }
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x277C5F6D0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_91;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v6 = [v4 mode];
    v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v9 = v8;
    if (v7 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_2749FDCC4();

      if ((v12 & 1) == 0)
      {

        continue;
      }
    }

    sub_2749FD9E4();
    sub_2749FDA24();
    sub_2749FDA34();
    sub_2749FD9F4();
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2747D6E20()
{
  v21 = MEMORY[0x277D84FA0];
  v1 = *(v0 + 40);
  v20 = MEMORY[0x277D84F90];
  v2 = sub_27472D918(v1);

  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x277C5F6D0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = [v4 mode];
    v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v9 = v8;
    if (v7 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_2749FDCC4();

      if (v12)
      {
      }

      else
      {
        sub_2749FD9E4();
        sub_2749FDA24();
        sub_2749FDA34();
        sub_2749FD9F4();
      }
    }
  }

  sub_2747D5B8C(v20, &v21);
  v14 = v13;

  v15 = sub_274776E5C(v14);
  v20 = sub_2747B0430(v15);
  sub_2747D9A34(&v20, sub_2747DB2C4, sub_2747D9FF8);

  v16 = v20;
  v17 = swift_allocObject();
  *(v17 + 16) = v19;
  *(v17 + 24) = v16;

  sub_2749F9F14();
}

uint64_t sub_2747D70C0(uint64_t a1)
{
  *(v1 + 40) = a1;

  sub_2747D61D4();
  sub_2747D63EC();
  sub_2747D6498();

  return sub_2747D6E20();
}

void sub_2747D7128(unint64_t a1, void *a2, unint64_t *a3, uint64_t a4, unint64_t *a5, void (*a6)(id *))
{
  v8 = a1;
  v21[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2749FD804();
    sub_27471CF08(0, a3);
    sub_2747DE510(a5, a3);
    OUTLINED_FUNCTION_42();
    sub_2749FD174();
    v8 = v21[2];
    v10 = v21[3];
    v11 = v21[4];
    v12 = v21[5];
    v13 = v21[6];
  }

  else
  {
    v12 = 0;
    v10 = (a1 + 56);
    OUTLINED_FUNCTION_8_10();
    v13 = (v14 & v15);
  }

  v16 = (v11 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v17 = v12;
    v18 = v13;
    v19 = v12;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v20 = (v18 - 1) & v18;
    if (!*(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18))))))
    {
LABEL_15:
      OUTLINED_FUNCTION_42();
      sub_274730F8C();
      return;
    }

    while (1)
    {
      a6(v21);

      v12 = v19;
      v13 = v20;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (sub_2749FD874())
      {
        sub_27471CF08(0, a3);
        swift_dynamicCast();
        v19 = v12;
        v20 = v13;
        if (v21[0])
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  while (1)
  {
    v19 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_15;
    }

    v18 = v10[v19];
    ++v17;
    if (v18)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2747D7310(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_2749FDB54();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t sub_2747D73B0(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 sourceContentAttribution];
  if (v3 && (v4 = v3, v5 = [v3 origin], v4, v6 = sub_2747DE030(v5, &selRef_localizedTitle), v7))
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {

    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = [v2 sourceContentAttribution];
  if (v10 && (v11 = v10, v12 = [v10 origin], v11, v13 = sub_2747DE030(v12, &selRef_localizedTitle), v14))
  {
    v15 = v13;
    v16 = v14;
  }

  else
  {

    v15 = 0;
    v16 = 0xE000000000000000;
  }

  if (v8 == v15 && v9 == v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_2749FDCC4();
  }

  return v18 & 1;
}

uint64_t sub_2747D7550()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2747D75BC(id *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_2747DE030([*a1 contentDestination], &selRef_localizedTitle);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = sub_2747DE030([v2 contentDestination], &selRef_localizedTitle);
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_2749FDCC4();
  }

  return v12 & 1;
}

void sub_2747D76E0()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v47 = *v0;
  v48 = v2;
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v45 = v4;
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969168);
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969160);
  OUTLINED_FUNCTION_43();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v39 - v16;
  *(v1 + 4) = 0;
  v18 = OBJC_IVAR____TtC10WorkflowUI21SmartPromptsViewModel__statesByAction;
  v19 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED90);
  sub_2749FA8C4();
  v42 = v14;
  (*(v14 + 32))(&v1[v18], v17, v12);
  v20 = OBJC_IVAR____TtC10WorkflowUI21SmartPromptsViewModel__wildcardStates;
  v50 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969110);
  sub_2749FA8C4();
  v44 = v8;
  (*(v8 + 32))(&v1[v20], v11, v6);
  v21 = OBJC_IVAR____TtC10WorkflowUI21SmartPromptsViewModel_actionsByActionUUID;
  sub_27471CF08(0, &qword_28096D540);
  *&v1[v21] = sub_2749FCCB4();
  v22 = OBJC_IVAR____TtC10WorkflowUI21SmartPromptsViewModel_actionsByActionIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969170);
  *&v1[v22] = sub_2749FCCB4();
  v23 = v48;
  *(v1 + 3) = v48;
  v24 = v23;
  v25 = [v24 database];
  if (v25)
  {
    *(v1 + 2) = v25;
    v26 = v25;
    v27 = [v24 reference];
    v28 = *(v1 + 4);
    *(v1 + 4) = v27;

    *(v1 + 5) = v19;
    swift_beginAccess();
    v49 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BA50);
    sub_2749FA8C4();
    swift_endAccess();
    sub_2747D7BF4();
    [*(v1 + 2) addObjectObserver_];
  }

  else
  {
    v39[1] = v22;
    v39[2] = v21;
    v40 = v20;
    v41 = v18;
    v48 = v6;
    v30 = v42;
    v29 = v43;
    sub_2749FA3D4();
    v31 = v29;
    v32 = sub_2749FA4D4();
    v33 = sub_2749FD2D4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_12_2();
      *v34 = 0;
      _os_log_impl(&dword_274719000, v32, v33, "Could not init SmartPromptsViewModel because database or reference were nil", v34, 2u);
      OUTLINED_FUNCTION_31();
      v35 = v24;
    }

    else
    {
      v35 = v32;
      v32 = v24;
    }

    v36 = v46;
    v37 = v48;
    v38 = v45;

    (*(v38 + 8))(v31, v36);
    (*(v30 + 8))(&v1[v41], v12);
    (*(v44 + 8))(&v1[v40], v37);

    swift_deallocPartialClassInstance();
  }

  OUTLINED_FUNCTION_46();
}

void sub_2747D7BF4()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + 16);
  v42 = v1;
  v3 = [v2 smartPromptStatesForReference_];
  sub_27471CF08(0, &qword_28096EE00);
  v4 = sub_2749FCF84();

  var58[0] = MEMORY[0x277D84F90];
  v5 = sub_27472D918(v4);
  for (i = 0; v5 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x277C5F6D0](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);

      __break(1u);
      return;
    }

    v9 = [v7 sourceContentAttribution];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 origin];

      if (v11)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }
      }
    }

    v11 = [v8 contentDestination];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
LABEL_13:

      continue;
    }

    sub_2749FD9E4();
    sub_2749FDA24();
    sub_2749FDA34();
    sub_2749FD9F4();
  }

  v12 = var58[0];
  v13 = v41;
  v14 = [*(v41 + 16) deletionAuthorizationStatesForReference_];
  sub_27471CF08(0, &unk_28096BA70);
  v4 = sub_2749FCF84();

  v15 = sub_27472D918(v4);
  if (v15)
  {
    v16 = v15;
    var58[0] = MEMORY[0x277D84F90];
    sub_27476D788(0, v15 & ~(v15 >> 63), 0);
    if (v16 < 0)
    {
      goto LABEL_34;
    }

    v40 = v12;
    v17 = 0;
    v18 = var58[0];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x277C5F6D0](v17, v4);
      }

      else
      {
        v19 = *(v4 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v19 actionUUID];
      v22 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v24 = v23;

      var58[0] = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_27476D788((v25 > 1), v26 + 1, 1);
        v18 = var58[0];
      }

      ++v17;
      *(v18 + 16) = v26 + 1;
      v27 = (v18 + 24 * v26);
      v27[4] = v22;
      v27[5] = v24;
      v27[6] = v20;
    }

    while (v16 != v17);

    v12 = v40;
    v13 = v41;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v28 = sub_274776E84(v18);
  sub_2747B04DC(v28, v29, v30, v31, v32, v33, v34, v35, v39, v40, v41, v42, v44, var58[0], var58[1], var58[2], var58[3], var58[4], var58[5], var58[6], var58[7], var58[8], var58[9], var58[10], var58[11], vars8);
  var58[0] = v36;
  sub_2747D9AD8(var58);

  v37 = var58[0];
  v38 = swift_allocObject();
  v38[2] = v13;
  v38[3] = v12;
  v38[4] = v37;

  sub_2749F9F14();
}

uint64_t sub_2747D8010(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v27 = MEMORY[0x277D84F98];
  v3 = sub_27472D918(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C5F6D0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v5 identifier];
    v8 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v10 = v9;

    v12 = sub_274797CC0(v8, v10);
    v13 = v2[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_22;
    }

    v16 = v11;
    if (v2[3] < v15)
    {
      sub_274934860(v15, 1);
      v2 = v27;
      v17 = sub_274797CC0(v8, v10);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_24;
      }

      v12 = v17;
    }

    if (v16)
    {

      v20 = (v2[7] + 8 * v12);
      MEMORY[0x277C5ECC0](v19);
      if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2749FCFB4();
      }

      sub_2749FCFF4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_274A11F70;
      *(v21 + 32) = v6;
      v2[(v12 >> 6) + 8] |= 1 << v12;
      v22 = (v2[6] + 16 * v12);
      *v22 = v8;
      v22[1] = v10;
      *(v2[7] + 8 * v12) = v21;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v2[2] = v25;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2749FDD54();
  __break(1u);
  return result;
}

uint64_t sub_2747D8264(uint64_t a1, uint64_t a2)
{

  sub_2747D70C0(a2);

  return sub_2747D7550();
}

void sub_2747D82C0()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v50[1] = *MEMORY[0x277D85DE8];
  v48 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = *(v1 + 32);
  if (v14)
  {
    v47 = v7;
    v15 = v14;
    sub_2747DDFD4(v3, &selRef_actionUUID);
    if (v16)
    {
      v17 = sub_2749FCD64();
    }

    else
    {
      v17 = 0;
    }

    v21 = [v3 stateWithStatus:v5 actionUUID:v17];

    sub_2747DDFD4(v21, &selRef_actionUUID);
    if (!v22)
    {
      goto LABEL_17;
    }

    v23 = *(v1 + 16);
    v50[0] = 0;
    v24 = v23;
    v25 = [v21 databaseDataWithError_];
    v26 = v50[0];
    if (v25)
    {
      v27 = sub_2749F9094();
      v28 = v15;
      v30 = v29;

      v31 = sub_2749F9074();
      sub_2747BD02C(v27, v30);
      v32 = sub_2749FCD64();

      v50[0] = 0;
      v33 = [v24 saveSmartPromptStateData:v31 actionUUID:v32 reference:v28 error:v50];

      v15 = v28;
      v34 = v50[0];
      if (v33)
      {
LABEL_17:
        sub_2747D7BF4();

        goto LABEL_18;
      }

      v35 = v34;
    }

    else
    {
      v35 = v26;
    }

    v36 = sub_2749F8FE4();

    swift_willThrow();
    sub_2749FA3D4();
    v37 = v36;
    v38 = sub_2749FA4D4();
    v39 = sub_2749FD2D4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v50[0] = v46;
      *v40 = 136446210;
      v49 = v36;
      v41 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18);
      v42 = sub_2749FCDC4();
      v44 = sub_2747AF460(v42, v43, v50);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_274719000, v38, v39, "Failed to set smart prompt state: %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();
    }

    else
    {
    }

    (*(v47 + 8))(v11, v48);
    goto LABEL_17;
  }

  sub_2749FA3D4();
  v18 = sub_2749FA4D4();
  v19 = sub_2749FD2C4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_12_2();
    *v20 = 0;
    _os_log_impl(&dword_274719000, v18, v19, "We shouldn't have any smart prompt status when there is no action in the shortcut", v20, 2u);
    OUTLINED_FUNCTION_31();
  }

  (*(v7 + 8))(v13, v48);
LABEL_18:
  OUTLINED_FUNCTION_46();
}

void sub_2747D8714(uint64_t a1, void *a2)
{
  v3 = v2;
  v49[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2749FA4E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  v13 = *(v3 + 32);
  if (v13)
  {
    v14 = v13;
    v15 = [a2 stateWithStatus:a1 count:{objc_msgSend(a2, sel_count)}];
    v16 = *(v3 + 16);
    v49[0] = 0;
    v17 = v16;
    v18 = [v15 databaseDataWithError_];
    v19 = v49[0];
    if (v18)
    {
      v20 = sub_2749F9094();
      v22 = v21;

      v23 = sub_2749F9074();
      sub_2747BD02C(v20, v22);
      v24 = [v15 actionUUID];
      if (!v24)
      {
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v24 = sub_2749FCD64();
      }

      v49[0] = 0;
      v25 = [v17 saveSmartPromptStateData:v23 actionUUID:v24 reference:v14 error:v49];

      v26 = v49[0];
      if (v25)
      {
        goto LABEL_14;
      }

      v27 = v26;
    }

    else
    {
      v27 = v19;
    }

    v31 = sub_2749F8FE4();

    swift_willThrow();
    sub_2749FA3D4();
    v32 = v31;
    v33 = sub_2749FA4D4();
    v34 = sub_2749FD2D4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v47 = v10;
      v36 = v35;
      v37 = swift_slowAlloc();
      v46 = v7;
      v38 = v37;
      v49[0] = v37;
      *v36 = 136446210;
      v48 = v31;
      v39 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18);
      v40 = sub_2749FCDC4();
      v42 = sub_2747AF460(v40, v41, v49);
      v45 = v6;
      v43 = v42;

      *(v36 + 4) = v43;
      _os_log_impl(&dword_274719000, v33, v34, "Failed to save deletion authorization state: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x277C61040](v38, -1, -1);
      MEMORY[0x277C61040](v36, -1, -1);

      (*(v46 + 8))(v47, v45);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

LABEL_14:
    sub_2747D7BF4();

    return;
  }

  sub_2749FA3D4();
  v28 = sub_2749FA4D4();
  v29 = sub_2749FD2C4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_274719000, v28, v29, "We shouldn't have any smart prompt status when there is no action in the shortcut", v30, 2u);
    MEMORY[0x277C61040](v30, -1, -1);
  }

  (*(v7 + 8))(v12, v6);
}

void sub_2747D8BA0()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v2 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = *(v1 + 32);
  if (v11)
  {
    v12 = v11;
    sub_2749FA3D4();

    v13 = sub_2749FA4D4();
    v14 = sub_2749FD2B4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = v2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136446210;
      v18 = sub_2747DE030(*(v1 + 24), &selRef_workflowID);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v18 = 7104878;
        v20 = 0xE300000000000000;
      }

      v21 = sub_2747AF460(v18, v20, &v26);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_274719000, v13, v14, "Performing privacy reset for workflow with ID %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();

      (*(v4 + 8))(v10, v25);
    }

    else
    {

      (*(v4 + 8))(v10, v2);
    }

    [*(v1 + 16) deleteAllSmartPromptStateDataForReference_];
  }

  else
  {
    sub_2749FA3D4();
    v22 = sub_2749FA4D4();
    v23 = sub_2749FD2C4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_12_2();
      *v24 = 0;
      _os_log_impl(&dword_274719000, v22, v23, "We shouldn't have any smart prompt status when there is no action in the shortcut", v24, 2u);
      OUTLINED_FUNCTION_31();
    }

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_46();
}

void sub_2747D8E4C()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 32);
  if (v9)
  {
    v46 = v9;

    sub_2747D7128(v10, v2, &qword_280967A00, 0x277D79EF0, &qword_280969120, sub_274765840);
    v12 = v11;

    sub_2747D7128(v13, v12, &qword_280967A00, 0x277D79EF0, &qword_280969120, sub_274765840);
    v42 = v0;
    v44 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2749FD804();
      sub_27471CF08(0, &qword_280967A00);
      sub_2747DE510(&qword_280969120, &qword_280967A00);
      sub_2749FD174();
      v16 = v49;
      v15 = v50;
      v17 = v51;
      v18 = v52;
      v19 = v53;
    }

    else
    {
      v15 = v14 + 56;
      v17 = ~(-1 << *(v14 + 32));
      OUTLINED_FUNCTION_8_10();
      v19 = v23 & v24;
      v18 = 0;
    }

    v43 = v17;
    v25 = (v17 + 64) >> 6;
    v45 = v15;
    while (1)
    {
      v26 = v19;
      v27 = v18;
      if (v16 < 0)
      {
        v31 = sub_2749FD874();
        if (!v31 || (v47 = v31, sub_27471CF08(0, &qword_280967A00), swift_dynamicCast(), (v30 = v48) == 0))
        {
LABEL_24:
          sub_274730F8C();

          goto LABEL_27;
        }
      }

      else
      {
        v28 = v18;
        v29 = v19;
        if (!v19)
        {
          while (1)
          {
            v18 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v18 >= v25)
            {
              goto LABEL_24;
            }

            v29 = *(v15 + 8 * v18);
            ++v28;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          return;
        }

LABEL_14:
        v19 = (v29 - 1) & v29;
        v30 = *(*(v16 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v30)
        {
          goto LABEL_24;
        }
      }

      v32 = [v30 identifier];
      v33 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v35 = v34;

      v36 = [v46 identifier];
      v37 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v39 = v38;

      if (v33 == v37 && v35 == v39)
      {

LABEL_26:
        sub_274730F8C();

        sub_2747D7BF4();

        goto LABEL_27;
      }

      v41 = sub_2749FDCC4();

      v15 = v45;
      if (v41)
      {
        goto LABEL_26;
      }
    }
  }

  sub_2749FA3D4();
  v20 = sub_2749FA4D4();
  v21 = sub_2749FD2C4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_12_2();
    *v22 = 0;
    _os_log_impl(&dword_274719000, v20, v21, "We shouldn't have any smart prompt status when there is no action in the shortcut", v22, 2u);
    OUTLINED_FUNCTION_31();
  }

  (*(v5 + 8))(v8, v3);
LABEL_27:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747D93B8()
{
  v0 = *(sub_2747D7114() + 16);

  v1 = sub_2747D753C();
  v2 = sub_27472D918(v1);

  v4 = __OFADD__(v0, v2);
  v5 = v0 + v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_2747D7100();
    v7 = sub_27472D918(v6);

    if (!__OFADD__(v5, v7))
    {
      return v5 + v7 > 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2747D94B0(void *a1)
{
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = a1;
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;
  v4[5] = a1;
  type metadata accessor for WFSmartPromptStatus(0);
  v5 = a1;

  sub_2749FC6F4();
  return v7;
}

id *sub_2747D9574()
{

  v1 = OBJC_IVAR____TtC10WorkflowUI21SmartPromptsViewModel__deletionAuthorizations;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969158);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC10WorkflowUI21SmartPromptsViewModel__statesByAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969160);
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC10WorkflowUI21SmartPromptsViewModel__wildcardStates;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969168);
  OUTLINED_FUNCTION_1_2();
  (*(v6 + 8))(v0 + v5);

  return v0;
}

uint64_t sub_2747D9694()
{
  sub_2747D9574();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SmartPromptsViewModel()
{
  result = qword_2809690E8;
  if (!qword_2809690E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2747D9740()
{
  sub_27472CBCC(319, &qword_2809690F8, &qword_28096BA50);
  if (v0 <= 0x3F)
  {
    sub_27472CBCC(319, &qword_280969100, &qword_28096ED90);
    if (v1 <= 0x3F)
    {
      sub_27472CBCC(319, &qword_280969108, &qword_280969110);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_2747D98D0()
{
  result = qword_280969118;
  if (!qword_280969118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969118);
  }

  return result;
}

uint64_t sub_2747D99D8(uint64_t result, unint64_t *a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      sub_27471CF08(0, a2);
      result = sub_2749FCFE4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_2747D9A34(uint64_t *a1, uint64_t (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2747440CC(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_2747D9B8C(v10, &qword_28096EE00, 0x277D7C8F8, a2, a3);
  return sub_2749FD9F4();
}

uint64_t sub_2747D9AD8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2747440CC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2747D9B8C(v6, &unk_28096BA70, 0x277D7C348, sub_2747DBA2C, sub_2747DA178);
  return sub_2749FD9F4();
}

uint64_t sub_2747D9B8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a5)
{
  v10 = *(a1 + 8);
  result = sub_2749FDC64();
  if (result < v10)
  {
    v12 = result;
    a5 = sub_2747D99D8(v10 / 2, a2);
    v14[0] = v13;
    v14[1] = v10 / 2;
    result = a4(v14, v15, a1, v12);
    if (v5)
    {
      if (v10 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v10 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10)
  {
    return (a5)(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_2747D9C9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v34 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    v6 = &selRef_createFolderWithName_icon_error_;
    while (2)
    {
      v32 = v4;
      v33 = a3;
      v7 = *(v34 + 8 * a3);
      v31 = v5;
      while (1)
      {
        v8 = *v4;
        v9 = v7;
        v10 = v8;
        v11 = [v9 v6[151]];
        if (v11 && (v12 = v11, v13 = [v11 origin], v12, v14 = sub_2747DE030(v13, &selRef_localizedTitle), v15))
        {
          v16 = v14;
          v17 = v15;
        }

        else
        {

          v16 = 0;
          v17 = 0xE000000000000000;
        }

        v18 = v6;
        v19 = [v10 v6[151]];
        if (v19 && (v20 = v19, v21 = [v19 origin], v20, v22 = sub_2747DE030(v21, &selRef_localizedTitle), v23))
        {
          v24 = v22;
          v25 = v23;
        }

        else
        {

          v24 = 0;
          v25 = 0xE000000000000000;
        }

        if (v16 == v24 && v17 == v25)
        {
          break;
        }

        v27 = sub_2749FDCC4();

        v6 = v18;
        if (v27)
        {
          if (!v34)
          {
            __break(1u);
            return result;
          }

          v28 = *v4;
          v7 = *(v4 + 8);
          *v4 = v7;
          *(v4 + 8) = v28;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_22;
      }

      v6 = v18;
LABEL_22:
      a3 = v33 + 1;
      v4 = v32 + 8;
      v5 = v31 - 1;
      if (v33 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2747D9E9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v24 = v4;
      v25 = a3;
      v6 = *(v26 + 8 * a3);
      v23 = v5;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = sub_2747DDFD4(v8, &selRef_actionUUID);
        v12 = v11 ? v10 : 0;
        v13 = v11 ? v11 : 0xE000000000000000;
        v14 = sub_2747DDFD4(v9, &selRef_actionUUID);
        v16 = v15 ? v14 : 0;
        v17 = v15 ? v15 : 0xE000000000000000;
        if (v12 == v16 && v13 == v17)
        {
          break;
        }

        v19 = sub_2749FDCC4();

        if (v19)
        {
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_26;
      }

LABEL_26:
      a3 = v25 + 1;
      v4 = v24 + 8;
      v5 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2747D9FF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v24 = v4;
      v25 = a3;
      v6 = *(v26 + 8 * a3);
      v23 = v5;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = sub_2747DE030([v8 contentDestination], &selRef_localizedTitle);
        v12 = v11 ? v10 : 0;
        v13 = v11 ? v11 : 0xE000000000000000;
        v14 = sub_2747DE030([v9 contentDestination], &selRef_localizedTitle);
        v16 = v15 ? v14 : 0;
        v17 = v15 ? v15 : 0xE000000000000000;
        if (v12 == v16 && v13 == v17)
        {
          break;
        }

        v19 = sub_2749FDCC4();

        if (v19)
        {
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_26;
      }

LABEL_26:
      a3 = v25 + 1;
      v4 = v24 + 8;
      v5 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2747DA178(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v24 = v4;
      v25 = a3;
      v6 = *(v26 + 8 * a3);
      v23 = v5;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 actionUUID];
        v11 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v13 = v12;

        v14 = [v9 actionUUID];
        v15 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v17 = v16;

        if (v11 == v15 && v13 == v17)
        {
          break;
        }

        v19 = sub_2749FDCC4();

        if (v19)
        {
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      a3 = v25 + 1;
      v4 = v24 + 8;
      v5 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2747DA2F0(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_120:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_162;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_122:
      v111 = v7 + 16;
      v112 = *(v7 + 2);
      while (v112 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_159;
        }

        v113 = v7;
        v114 = &v7[16 * v112];
        v115 = *v114;
        v7 = &v111[2 * v112];
        v116 = *(v7 + 1);
        sub_2747DC1F8((*a3 + 8 * *v114), (*a3 + 8 * *v7), (*a3 + 8 * v116), v4);
        if (v129)
        {
          break;
        }

        if (v116 < v115)
        {
          goto LABEL_147;
        }

        if (v112 - 2 >= *v111)
        {
          goto LABEL_148;
        }

        *v114 = v115;
        *(v114 + 1) = v116;
        v117 = *v111 - v112;
        if (*v111 < v112)
        {
          goto LABEL_149;
        }

        v112 = *v111 - 1;
        memmove(v7, v7 + 16, 16 * v117);
        *v111 = v112;
        v7 = v113;
      }

LABEL_130:

      return;
    }

LABEL_156:
    v7 = sub_2747DCFFC(v7);
    goto LABEL_122;
  }

  v118 = a4;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v126 = v5;
      v10 = *a3;
      v11 = v6 + 1;
      v137 = *(*a3 + 8 * v9);
      v136 = *(v10 + 8 * v6);
      v12 = v136;
      v4 = v137;
      v13 = v12;
      v133 = sub_2747D73B0(&v137, &v136);
      if (v129)
      {

        return;
      }

      v119 = v7;

      v14 = 8 * v8;
      v15 = v8;
      v16 = (v10 + 8 * v8 + 16);
      v121 = v15;
      v17 = v15 + 2;
      v9 = v11;
      v18 = v126;
      while (1)
      {
        v19 = v17;
        if (v9 + 1 >= v18)
        {
          break;
        }

        v130 = v9;
        v20 = *(v16 - 1);
        v21 = *v16;
        v22 = v20;
        v23 = [v21 sourceContentAttribution];
        if (v23 && (v24 = v23, v25 = [v23 origin], v24, v26 = sub_2747DE030(v25, &selRef_localizedTitle), v27))
        {
          v28 = v26;
          v7 = v27;
        }

        else
        {

          v28 = 0;
          v7 = 0xE000000000000000;
        }

        v29 = [v22 sourceContentAttribution];
        if (v29 && (v30 = v29, v31 = [v29 origin], v30, v32 = v31, v18 = v126, v33 = sub_2747DE030(v32, &selRef_localizedTitle), v34))
        {
          v35 = v33;
          v36 = v34;
        }

        else
        {

          v35 = 0;
          v36 = 0xE000000000000000;
        }

        if (v28 == v35 && v7 == v36)
        {
          v4 = 0;
        }

        else
        {
          v4 = sub_2749FDCC4();
        }

        ++v16;
        v9 = v130 + 1;
        v17 = v19 + 1;
        if ((v133 ^ v4))
        {
          goto LABEL_24;
        }
      }

      v9 = v18;
LABEL_24:
      if (v133)
      {
        v8 = v121;
        if (v9 < v121)
        {
          goto LABEL_155;
        }

        v7 = v119;
        if (v121 < v9)
        {
          if (v18 >= v19)
          {
            v38 = v19;
          }

          else
          {
            v38 = v18;
          }

          v39 = 8 * v38 - 8;
          v40 = v9;
          v41 = v121;
          do
          {
            if (v41 != --v40)
            {
              v42 = *a3;
              if (!*a3)
              {
                goto LABEL_160;
              }

              v43 = *(v42 + v14);
              *(v42 + v14) = *(v42 + v39);
              *(v42 + v39) = v43;
            }

            ++v41;
            v39 -= 8;
            v14 += 8;
          }

          while (v41 < v40);
        }
      }

      else
      {
        v7 = v119;
        v8 = v121;
      }
    }

    v44 = a3[1];
    if (v9 < v44)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_152;
      }

      if (v9 - v8 < v118)
      {
        break;
      }
    }

LABEL_67:
    if (v9 < v8)
    {
      goto LABEL_151;
    }

    v132 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274763780();
      v7 = v109;
    }

    v69 = *(v7 + 2);
    v70 = v69 + 1;
    if (v69 >= *(v7 + 3) >> 1)
    {
      sub_274763780();
      v7 = v110;
    }

    *(v7 + 2) = v70;
    v71 = v7 + 32;
    v72 = &v7[16 * v69 + 32];
    *v72 = v8;
    *(v72 + 1) = v132;
    v135 = *a1;
    if (!*a1)
    {
      goto LABEL_161;
    }

    if (v69)
    {
      while (1)
      {
        v73 = v70 - 1;
        v74 = &v71[16 * v70 - 16];
        v75 = &v7[16 * v70];
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v76 = *(v7 + 4);
          v77 = *(v7 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_87:
          if (v79)
          {
            goto LABEL_138;
          }

          v91 = *v75;
          v90 = *(v75 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_141;
          }

          v95 = *(v74 + 1);
          v96 = v95 - *v74;
          if (__OFSUB__(v95, *v74))
          {
            goto LABEL_144;
          }

          if (__OFADD__(v93, v96))
          {
            goto LABEL_146;
          }

          if (v93 + v96 >= v78)
          {
            if (v78 < v96)
            {
              v73 = v70 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        if (v70 < 2)
        {
          goto LABEL_140;
        }

        v98 = *v75;
        v97 = *(v75 + 1);
        v86 = __OFSUB__(v97, v98);
        v93 = v97 - v98;
        v94 = v86;
LABEL_102:
        if (v94)
        {
          goto LABEL_143;
        }

        v100 = *v74;
        v99 = *(v74 + 1);
        v86 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v86)
        {
          goto LABEL_145;
        }

        if (v101 < v93)
        {
          goto LABEL_116;
        }

LABEL_109:
        if (v73 - 1 >= v70)
        {
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*a3)
        {
          goto LABEL_158;
        }

        v105 = v7;
        v106 = &v71[16 * v73 - 16];
        v7 = *v106;
        v4 = &v71[16 * v73];
        v107 = v4[1];
        sub_2747DC1F8((*a3 + 8 * *v106), (*a3 + 8 * *v4), (*a3 + 8 * v107), v135);
        if (v129)
        {
          goto LABEL_130;
        }

        if (v107 < v7)
        {
          goto LABEL_133;
        }

        v108 = *(v105 + 2);
        if (v73 > v108)
        {
          goto LABEL_134;
        }

        *v106 = v7;
        *(v106 + 1) = v107;
        if (v73 >= v108)
        {
          goto LABEL_135;
        }

        v70 = v108 - 1;
        memmove(&v71[16 * v73], v4 + 2, 16 * (v108 - 1 - v73));
        v7 = v105;
        *(v105 + 2) = v108 - 1;
        if (v108 <= 2)
        {
          goto LABEL_116;
        }
      }

      v80 = &v71[16 * v70];
      v81 = *(v80 - 8);
      v82 = *(v80 - 7);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_136;
      }

      v85 = *(v80 - 6);
      v84 = *(v80 - 5);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_137;
      }

      v87 = *(v75 + 1);
      v88 = v87 - *v75;
      if (__OFSUB__(v87, *v75))
      {
        goto LABEL_139;
      }

      v86 = __OFADD__(v78, v88);
      v89 = v78 + v88;
      if (v86)
      {
        goto LABEL_142;
      }

      if (v89 >= v83)
      {
        v103 = *v74;
        v102 = *(v74 + 1);
        v86 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v86)
        {
          goto LABEL_150;
        }

        if (v78 < v104)
        {
          v73 = v70 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_87;
    }

LABEL_116:
    v5 = a3[1];
    v6 = v132;
    if (v132 >= v5)
    {
      goto LABEL_120;
    }
  }

  v45 = v8 + v118;
  if (__OFADD__(v8, v118))
  {
    goto LABEL_153;
  }

  if (v45 >= v44)
  {
    v45 = a3[1];
  }

  if (v45 < v8)
  {
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v9 == v45)
  {
    goto LABEL_67;
  }

  v120 = v7;
  v122 = v8;
  v134 = *a3;
  v46 = *a3 + 8 * v9 - 8;
  v47 = v8 - v9;
  v124 = v45;
LABEL_46:
  v131 = v9;
  v48 = *(v134 + 8 * v9);
  v125 = v47;
  v127 = v46;
  while (1)
  {
    v49 = *v46;
    v50 = v48;
    v51 = v49;
    v52 = [v50 sourceContentAttribution];
    if (v52 && (v53 = v52, v54 = [v52 origin], v53, v55 = sub_2747DE030(v54, &selRef_localizedTitle), v56))
    {
      v57 = v55;
      v58 = v56;
    }

    else
    {

      v57 = 0;
      v58 = 0xE000000000000000;
    }

    v59 = [v51 sourceContentAttribution];
    if (v59 && (v60 = v59, v61 = [v59 origin], v60, v62 = sub_2747DE030(v61, &selRef_localizedTitle), v63))
    {
      v64 = v62;
      v4 = v63;
    }

    else
    {

      v64 = 0;
      v4 = 0xE000000000000000;
    }

    if (v57 == v64 && v58 == v4)
    {

LABEL_65:
      v9 = v131 + 1;
      v46 = v127 + 8;
      v47 = v125 - 1;
      if (v131 + 1 == v124)
      {
        v9 = v124;
        v7 = v120;
        v8 = v122;
        goto LABEL_67;
      }

      goto LABEL_46;
    }

    v66 = sub_2749FDCC4();

    if ((v66 & 1) == 0)
    {
      goto LABEL_65;
    }

    if (!v134)
    {
      break;
    }

    v67 = *v46;
    v48 = *(v46 + 8);
    *v46 = v48;
    *(v46 + 8) = v67;
    v46 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}

void sub_2747DAB58(void ***a1, uint64_t a2, int64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_139:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_180;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_141:
      v108 = (v7 + 16);
      v109 = *(v7 + 16);
      while (v109 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_177;
        }

        v110 = v7;
        v7 += 16 * v109;
        v111 = *v7;
        v112 = &v108[2 * v109];
        v113 = v112[1];
        sub_2747DC684((*a3 + 8 * *v7), (*a3 + 8 * *v112), (*a3 + 8 * v113), v4);
        if (v127)
        {
          break;
        }

        if (v113 < v111)
        {
          goto LABEL_165;
        }

        if (v109 - 2 >= *v108)
        {
          goto LABEL_166;
        }

        *v7 = v111;
        *(v7 + 8) = v113;
        v114 = *v108 - v109;
        if (*v108 < v109)
        {
          goto LABEL_167;
        }

        v127 = 0;
        v109 = *v108 - 1;
        memmove(v112, v112 + 2, 16 * v114);
        *v108 = v109;
        v7 = v110;
      }

LABEL_149:

      return;
    }

LABEL_174:
    v7 = sub_2747DCFFC(v7);
    goto LABEL_141;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    v119 = v6;
    if (v6 + 1 >= v5)
    {
      goto LABEL_52;
    }

    v10 = *a3;
    v128 = v6 + 1;
    v11 = *(*a3 + 8 * v6);
    v12 = *(*a3 + 8 * v9);
    v13 = v11;
    v14 = sub_2747DDFD4(v12, &selRef_actionUUID);
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    v18 = sub_2747DDFD4(v13, &selRef_actionUUID);
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v4 = v19;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    v21 = v16 == v20 && v17 == v4;
    v116 = v7;
    if (v21)
    {
      v123 = 0;
    }

    else
    {
      v123 = sub_2749FDCC4();
    }

    v22 = (v10 + 8 * v119 + 16);
    v121 = v5;
    v23 = 8 * v119 + 8;
    do
    {
      v24 = v128;
      v25 = v23;
      if (++v128 >= v5)
      {
        break;
      }

      v26 = *(v22 - 1);
      v27 = *v22;
      v28 = v26;
      v29 = sub_2747DDFD4(v27, &selRef_actionUUID);
      if (v30)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }

      v4 = 0xE000000000000000;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE000000000000000;
      }

      v33 = sub_2747DDFD4(v28, &selRef_actionUUID);
      if (v34)
      {
        v35 = v33;
      }

      else
      {
        v35 = 0;
      }

      if (v34)
      {
        v4 = v34;
      }

      v36 = v31 == v35 && v32 == v4;
      v37 = v36 ? 0 : sub_2749FDCC4();

      ++v22;
      v23 = v25 + 8;
      v5 = v121;
    }

    while (((v123 ^ v37) & 1) == 0);
    v7 = v116;
    if ((v123 & 1) == 0)
    {
      goto LABEL_50;
    }

    v9 = v128;
    v38 = v119;
    if (v128 < v119)
    {
      goto LABEL_171;
    }

    if (v119 < v128)
    {
      v39 = 8 * v119;
      do
      {
        if (v38 != v24)
        {
          v40 = *a3;
          if (!*a3)
          {
            goto LABEL_178;
          }

          v41 = *(v40 + v39);
          *(v40 + v39) = *(v40 + v25);
          *(v40 + v25) = v41;
        }

        ++v38;
        v25 -= 8;
        v39 += 8;
      }

      while (v38 < v24--);
LABEL_50:
      v9 = v128;
      v8 = v119;
      goto LABEL_52;
    }

    v8 = v119;
LABEL_52:
    v43 = a3[1];
    if (v9 >= v43)
    {
      goto LABEL_87;
    }

    v44 = v9;
    v82 = __OFSUB__(v9, v8);
    v45 = v9 - v8;
    if (v82)
    {
      goto LABEL_170;
    }

    if (v45 < a4)
    {
      break;
    }

    v9 = v44;
LABEL_87:
    if (v9 < v8)
    {
      goto LABEL_169;
    }

    v130 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274763780();
      v7 = v106;
    }

    v65 = *(v7 + 16);
    v66 = v65 + 1;
    v67 = v130;
    if (v65 >= *(v7 + 24) >> 1)
    {
      sub_274763780();
      v67 = v130;
      v7 = v107;
    }

    *(v7 + 16) = v66;
    v68 = v7 + 32;
    v69 = (v7 + 32 + 16 * v65);
    *v69 = v119;
    v69[1] = v67;
    v125 = *a1;
    if (!*a1)
    {
      goto LABEL_179;
    }

    if (v65)
    {
      while (1)
      {
        v4 = v66 - 1;
        v70 = (v68 + 16 * (v66 - 1));
        v71 = (v7 + 16 * v66);
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v72 = *(v7 + 32);
          v73 = *(v7 + 40);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_107:
          if (v75)
          {
            goto LABEL_156;
          }

          v87 = *v71;
          v86 = v71[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_159;
          }

          v91 = v70[1];
          v92 = v91 - *v70;
          if (__OFSUB__(v91, *v70))
          {
            goto LABEL_162;
          }

          if (__OFADD__(v89, v92))
          {
            goto LABEL_164;
          }

          if (v89 + v92 >= v74)
          {
            if (v74 < v92)
            {
              v4 = v66 - 2;
            }

            goto LABEL_129;
          }

          goto LABEL_122;
        }

        if (v66 < 2)
        {
          goto LABEL_158;
        }

        v94 = *v71;
        v93 = v71[1];
        v82 = __OFSUB__(v93, v94);
        v89 = v93 - v94;
        v90 = v82;
LABEL_122:
        if (v90)
        {
          goto LABEL_161;
        }

        v96 = *v70;
        v95 = v70[1];
        v82 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v82)
        {
          goto LABEL_163;
        }

        if (v97 < v89)
        {
          goto LABEL_136;
        }

LABEL_129:
        if (v4 - 1 >= v66)
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (!*a3)
        {
          goto LABEL_176;
        }

        v101 = v7;
        v102 = (v68 + 16 * (v4 - 1));
        v103 = *v102;
        v104 = (v68 + 16 * v4);
        v7 = v104[1];
        sub_2747DC684((*a3 + 8 * *v102), (*a3 + 8 * *v104), (*a3 + 8 * v7), v125);
        if (v127)
        {
          goto LABEL_149;
        }

        if (v7 < v103)
        {
          goto LABEL_151;
        }

        v105 = *(v101 + 16);
        if (v4 > v105)
        {
          goto LABEL_152;
        }

        *v102 = v103;
        v102[1] = v7;
        if (v4 >= v105)
        {
          goto LABEL_153;
        }

        v127 = 0;
        v66 = v105 - 1;
        memmove((v68 + 16 * v4), v104 + 2, 16 * (v105 - 1 - v4));
        v7 = v101;
        *(v101 + 16) = v105 - 1;
        if (v105 <= 2)
        {
          goto LABEL_136;
        }
      }

      v76 = v68 + 16 * v66;
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_154;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_155;
      }

      v83 = v71[1];
      v84 = v83 - *v71;
      if (__OFSUB__(v83, *v71))
      {
        goto LABEL_157;
      }

      v82 = __OFADD__(v74, v84);
      v85 = v74 + v84;
      if (v82)
      {
        goto LABEL_160;
      }

      if (v85 >= v79)
      {
        v99 = *v70;
        v98 = v70[1];
        v82 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v82)
        {
          goto LABEL_168;
        }

        if (v74 < v100)
        {
          v4 = v66 - 2;
        }

        goto LABEL_129;
      }

      goto LABEL_107;
    }

LABEL_136:
    v5 = a3[1];
    v6 = v130;
    if (v130 >= v5)
    {
      goto LABEL_139;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_172;
  }

  if (v8 + a4 >= v43)
  {
    v46 = a3[1];
  }

  else
  {
    v46 = v8 + a4;
  }

  if (v46 < v8)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v9 = v44;
  if (v44 == v46)
  {
    goto LABEL_87;
  }

  v117 = v7;
  v4 = *a3;
  v47 = *a3 + 8 * v44 - 8;
  v48 = v8 - v44;
  v120 = v46;
LABEL_62:
  v129 = v9;
  v49 = *(v4 + 8 * v9);
  v122 = v48;
  v124 = v47;
  while (1)
  {
    v50 = *v47;
    v51 = v49;
    v52 = v50;
    v53 = sub_2747DDFD4(v51, &selRef_actionUUID);
    if (v54)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0;
    }

    v56 = 0xE000000000000000;
    if (v54)
    {
      v57 = v54;
    }

    else
    {
      v57 = 0xE000000000000000;
    }

    v58 = sub_2747DDFD4(v52, &selRef_actionUUID);
    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v56 = v59;
    }

    if (v55 == v60 && v57 == v56)
    {

LABEL_84:
      v9 = v129 + 1;
      v47 = v124 + 8;
      v48 = v122 - 1;
      if (v129 + 1 == v120)
      {
        v9 = v120;
        v7 = v117;
        v8 = v119;
        goto LABEL_87;
      }

      goto LABEL_62;
    }

    v62 = sub_2749FDCC4();

    if ((v62 & 1) == 0)
    {
      goto LABEL_84;
    }

    if (!v4)
    {
      break;
    }

    v63 = *v47;
    v49 = *(v47 + 8);
    *v47 = v49;
    *(v47 + 8) = v63;
    v47 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
}

void sub_2747DB2C4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_126:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_168;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_128:
      v98 = v7 + 16;
      v99 = *(v7 + 2);
      while (v99 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_165;
        }

        v100 = v7;
        v101 = &v7[16 * v99];
        v7 = *v101;
        v102 = &v98[2 * v99];
        v103 = v102[1];
        sub_2747DC978((*a3 + 8 * *v101), (*a3 + 8 * *v102), (*a3 + 8 * v103), v4);
        if (v117)
        {
          break;
        }

        if (v103 < v7)
        {
          goto LABEL_153;
        }

        if (v99 - 2 >= *v98)
        {
          goto LABEL_154;
        }

        *v101 = v7;
        *(v101 + 1) = v103;
        v104 = *v98 - v99;
        if (*v98 < v99)
        {
          goto LABEL_155;
        }

        v99 = *v98 - 1;
        memmove(v102, v102 + 2, 16 * v104);
        *v98 = v99;
        v7 = v100;
      }

LABEL_136:

      return;
    }

LABEL_162:
    v7 = sub_2747DCFFC(v7);
    goto LABEL_128;
  }

  v105 = a4;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v108 = v7;
      v10 = *a3;
      v11 = v6 + 1;
      v125 = *(*a3 + 8 * v9);
      v124 = *(v10 + 8 * v6);
      v12 = v124;
      v13 = v125;
      v4 = v12;
      v121 = sub_2747D75BC(&v125, &v124);
      if (v117)
      {

        return;
      }

      v112 = 8 * v8;
      v114 = v5;
      v14 = v8;
      v15 = (v10 + 8 * v8 + 16);
      v106 = v14;
      v16 = v14 + 2;
      v9 = v11;
      while (1)
      {
        v17 = v16;
        if (v9 + 1 >= v5)
        {
          break;
        }

        v118 = v9;
        v18 = *(v15 - 1);
        v19 = *v15;
        v20 = v18;
        v7 = &selRef_localizedTitle;
        v21 = sub_2747DE030([v19 contentDestination], &selRef_localizedTitle);
        if (v22)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        v25 = sub_2747DE030([v20 contentDestination], &selRef_localizedTitle);
        if (v26)
        {
          v27 = v25;
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = 0xE000000000000000;
        }

        if (v23 == v27 && v24 == v28)
        {
          v4 = 0;
        }

        else
        {
          v4 = sub_2749FDCC4();
        }

        ++v15;
        v9 = v118 + 1;
        v16 = v17 + 1;
        v5 = v114;
        if ((v121 ^ v4))
        {
          goto LABEL_28;
        }
      }

      v9 = v5;
LABEL_28:
      if (v121)
      {
        v8 = v106;
        if (v9 < v106)
        {
          goto LABEL_161;
        }

        v7 = v108;
        if (v106 < v9)
        {
          if (v5 >= v17)
          {
            v30 = v17;
          }

          else
          {
            v30 = v5;
          }

          v31 = 8 * v30 - 8;
          v32 = v9;
          v33 = v106;
          v34 = v112;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_166;
              }

              v36 = *(v35 + v34);
              *(v35 + v34) = *(v35 + v31);
              *(v35 + v31) = v36;
            }

            ++v33;
            v31 -= 8;
            v34 += 8;
          }

          while (v33 < v32);
        }
      }

      else
      {
        v8 = v106;
        v7 = v108;
      }
    }

    v37 = a3[1];
    if (v9 < v37)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_158;
      }

      if (v9 - v8 < v105)
      {
        break;
      }
    }

LABEL_74:
    if (v9 < v8)
    {
      goto LABEL_157;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274763780();
      v7 = v96;
    }

    v56 = *(v7 + 2);
    v57 = v56 + 1;
    v120 = v9;
    if (v56 >= *(v7 + 3) >> 1)
    {
      sub_274763780();
      v7 = v97;
    }

    *(v7 + 2) = v57;
    v58 = v7 + 32;
    v59 = &v7[16 * v56 + 32];
    *v59 = v8;
    *(v59 + 1) = v120;
    v123 = *a1;
    if (!*a1)
    {
      goto LABEL_167;
    }

    if (v56)
    {
      while (1)
      {
        v4 = v57 - 1;
        v60 = &v58[16 * v57 - 16];
        v61 = &v7[16 * v57];
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v62 = *(v7 + 4);
          v63 = *(v7 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_94:
          if (v65)
          {
            goto LABEL_144;
          }

          v77 = *v61;
          v76 = *(v61 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_147;
          }

          v81 = *(v60 + 1);
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_150;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_152;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v4 = v57 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        if (v57 < 2)
        {
          goto LABEL_146;
        }

        v84 = *v61;
        v83 = *(v61 + 1);
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_109:
        if (v80)
        {
          goto LABEL_149;
        }

        v86 = *v60;
        v85 = *(v60 + 1);
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_151;
        }

        if (v87 < v79)
        {
          goto LABEL_123;
        }

LABEL_116:
        if (v4 - 1 >= v57)
        {
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (!*a3)
        {
          goto LABEL_164;
        }

        v91 = &v58[16 * v4 - 16];
        v92 = *v91;
        v93 = &v58[16 * v4];
        v94 = *(v93 + 1);
        sub_2747DC978((*a3 + 8 * *v91), (*a3 + 8 * *v93), (*a3 + 8 * v94), v123);
        if (v117)
        {
          goto LABEL_136;
        }

        if (v94 < v92)
        {
          goto LABEL_139;
        }

        v95 = *(v7 + 2);
        if (v4 > v95)
        {
          goto LABEL_140;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        if (v4 >= v95)
        {
          goto LABEL_141;
        }

        v57 = v95 - 1;
        memmove(&v58[16 * v4], v93 + 16, 16 * (v95 - 1 - v4));
        *(v7 + 2) = v95 - 1;
        if (v95 <= 2)
        {
          goto LABEL_123;
        }
      }

      v66 = &v58[16 * v57];
      v67 = *(v66 - 8);
      v68 = *(v66 - 7);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_142;
      }

      v71 = *(v66 - 6);
      v70 = *(v66 - 5);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_143;
      }

      v73 = *(v61 + 1);
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_145;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_148;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = *(v60 + 1);
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_156;
        }

        if (v64 < v90)
        {
          v4 = v57 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_94;
    }

LABEL_123:
    v5 = a3[1];
    v6 = v120;
    if (v120 >= v5)
    {
      goto LABEL_126;
    }
  }

  v38 = v8 + v105;
  if (__OFADD__(v8, v105))
  {
    goto LABEL_159;
  }

  if (v38 >= v37)
  {
    v38 = a3[1];
  }

  if (v38 < v8)
  {
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  if (v9 == v38)
  {
    goto LABEL_74;
  }

  v107 = v8;
  v109 = v7;
  v122 = *a3;
  v39 = *a3 + 8 * v9 - 8;
  v40 = v8 - v9;
  v111 = v38;
LABEL_50:
  v119 = v9;
  v41 = *(v122 + 8 * v9);
  v113 = v40;
  v115 = v39;
  while (1)
  {
    v42 = *v39;
    v43 = v41;
    v44 = v42;
    v45 = sub_2747DE030([v43 contentDestination], &selRef_localizedTitle);
    if (v46)
    {
      v4 = v45;
    }

    else
    {
      v4 = 0;
    }

    v47 = 0xE000000000000000;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

    v49 = sub_2747DE030([v44 contentDestination], &selRef_localizedTitle);
    if (v50)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v47 = v50;
    }

    if (v4 == v51 && v48 == v47)
    {

LABEL_72:
      v9 = v119 + 1;
      v39 = v115 + 8;
      v40 = v113 - 1;
      if (v119 + 1 == v111)
      {
        v9 = v111;
        v8 = v107;
        v7 = v109;
        goto LABEL_74;
      }

      goto LABEL_50;
    }

    v53 = sub_2749FDCC4();

    if ((v53 & 1) == 0)
    {
      goto LABEL_72;
    }

    if (!v122)
    {
      break;
    }

    v54 = *v39;
    v41 = *(v39 + 8);
    *v39 = v41;
    *(v39 + 8) = v54;
    v39 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
}

void sub_2747DBA2C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_106:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v126 = v6;
      v106 = *(v6 + 2);
      v6 += 16;
      for (i = v106; i >= 2; *v6 = i)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v107 = &v126[16 * i];
        v108 = *v107;
        v109 = &v6[16 * i];
        v110 = *(v109 + 1);
        sub_2747DCCC4((*a3 + 8 * *v107), (*a3 + 8 * *v109), (*a3 + 8 * v110), v7);
        if (v122)
        {
          break;
        }

        if (v110 < v108)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v6)
        {
          goto LABEL_133;
        }

        *v107 = v108;
        *(v107 + 1) = v110;
        v111 = *v6 - i;
        if (*v6 < i)
        {
          goto LABEL_134;
        }

        v122 = 0;
        i = *v6 - 1;
        memmove(v109, v109 + 16, 16 * v111);
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_2747DCFFC(v6);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v117 = v4;
      v123 = v6;
      v9 = *a3;
      v114 = v5;
      v10 = *(*a3 + 8 * v5);
      v11 = *(*a3 + 8 * v8);
      v12 = v10;
      v13 = [v11 actionUUID];
      v14 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v16 = v15;

      v17 = [v12 actionUUID];
      v18 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v7 = v19;

      if (v14 == v18 && v16 == v7)
      {
        v119 = 0;
      }

      else
      {
        v119 = sub_2749FDCC4();
      }

      v21 = (v9 + 8 * v114 + 16);
      v22 = 8 * v114 + 8;
      do
      {
        v23 = v8;
        v6 = v22;
        if (++v8 >= v117)
        {
          break;
        }

        v127 = v8;
        v24 = *(v21 - 1);
        v25 = *v21;
        v26 = v24;
        v130 = v25;
        v27 = [v25 actionUUID];
        v28 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v30 = v29;

        v31 = [v26 actionUUID];
        v32 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v34 = v33;

        v35 = v28 == v32 && v30 == v34;
        v7 = v35 ? 0 : sub_2749FDCC4();

        ++v21;
        v22 = (v6 + 8);
        v8 = v127;
      }

      while (((v119 ^ v7) & 1) == 0);
      if (v119)
      {
        v36 = v114;
        if (v8 < v114)
        {
          goto LABEL_138;
        }

        if (v114 >= v8)
        {
          v6 = v123;
          v7 = v114;
          goto LABEL_29;
        }

        v37 = 8 * v114;
        do
        {
          if (v36 != v23)
          {
            v38 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v39 = *(v38 + v37);
            *(v38 + v37) = *&v6[v38];
            *&v6[v38] = v39;
          }

          v36 = (v36 + 1);
          v6 -= 8;
          v37 += 8;
        }

        while (v36 < v23--);
      }

      v6 = v123;
      v7 = v114;
    }

LABEL_29:
    v41 = a3[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274763780();
      v6 = v103;
    }

    v62 = v6;
    v63 = *(v6 + 2);
    v125 = v62;
    v64 = v63 + 1;
    if (v63 >= *(v62 + 3) >> 1)
    {
      sub_274763780();
      v125 = v104;
    }

    *(v125 + 2) = v64;
    v65 = v125 + 32;
    v66 = &v125[16 * v63 + 32];
    *v66 = v7;
    v66[1] = v8;
    v67 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v129 = v8;
    if (v63)
    {
      v6 = v125;
      while (1)
      {
        v68 = v64 - 1;
        v69 = &v65[16 * v64 - 16];
        v70 = &v6[16 * v64];
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v71 = *(v6 + 4);
          v72 = *(v6 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_72:
          if (v74)
          {
            goto LABEL_123;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_126;
          }

          v90 = *(v69 + 1);
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_131;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v64 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v64 < 2)
        {
          goto LABEL_125;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_87:
        if (v89)
        {
          goto LABEL_128;
        }

        v95 = *v69;
        v94 = *(v69 + 1);
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_130;
        }

        if (v96 < v88)
        {
          goto LABEL_103;
        }

LABEL_94:
        if (v68 - 1 >= v64)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v6 = &v65[16 * v68 - 16];
        v7 = *v6;
        v100 = &v65[16 * v68];
        v101 = *(v100 + 1);
        sub_2747DCCC4((*a3 + 8 * *v6), (*a3 + 8 * *v100), (*a3 + 8 * v101), v67);
        if (v122)
        {
          goto LABEL_116;
        }

        if (v101 < v7)
        {
          goto LABEL_118;
        }

        v102 = *(v125 + 2);
        if (v68 > v102)
        {
          goto LABEL_119;
        }

        *v6 = v7;
        *(v6 + 1) = v101;
        if (v68 >= v102)
        {
          goto LABEL_120;
        }

        v122 = 0;
        v64 = v102 - 1;
        memmove(&v65[16 * v68], v100 + 16, 16 * (v102 - 1 - v68));
        v6 = v125;
        *(v125 + 2) = v102 - 1;
        if (v102 <= 2)
        {
          goto LABEL_103;
        }
      }

      v75 = &v65[16 * v64];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_121;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_122;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_124;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_127;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = *(v69 + 1);
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v99)
        {
          v68 = v64 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    v6 = v125;
LABEL_103:
    v4 = a3[1];
    v5 = v129;
    if (v129 >= v4)
    {
      goto LABEL_106;
    }
  }

  v42 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v42)
  {
    goto LABEL_51;
  }

  v124 = v6;
  v131 = *a3;
  v43 = *a3 + 8 * v8 - 8;
  v115 = v7;
  v116 = v42;
  v44 = v7 - v8;
LABEL_38:
  v128 = v8;
  v45 = *(v131 + 8 * v8);
  v118 = v44;
  v120 = v43;
  v46 = v43;
  while (1)
  {
    v47 = *v46;
    v48 = v45;
    v49 = v47;
    v50 = [v48 actionUUID];
    v51 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v53 = v52;

    v54 = [v49 actionUUID];
    v55 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v57 = v56;

    if (v51 == v55 && v53 == v57)
    {

LABEL_49:
      v8 = v128 + 1;
      v43 = v120 + 8;
      v44 = v118 - 1;
      if ((v128 + 1) == v116)
      {
        v8 = v116;
        v6 = v124;
        v7 = v115;
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v59 = sub_2749FDCC4();

    if ((v59 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v131)
    {
      break;
    }

    v60 = *v46;
    v45 = *(v46 + 8);
    *v46 = v45;
    *(v46 + 8) = v60;
    v46 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_2747DC1F8(void **a1, id *a2, id *a3, void **a4)
{
  v75 = a3;
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v7 = a2 - a1;
  v8 = a3 - a2;
  if (v7 < v8)
  {
    sub_274772FC4(a1, a2 - a1, a4);
    v9 = &v4[v7];
    v10 = &selRef_createFolderWithName_icon_error_;
    while (1)
    {
      if (v4 >= v9 || v5 >= v75)
      {
        v5 = v6;
        goto LABEL_55;
      }

      v12 = *v4;
      v13 = *v5;
      v14 = v12;
      v73 = v13;
      v15 = [v13 v10[151]];
      if (v15 && (v16 = v15, v17 = [v15 origin], v16, v18 = sub_2747DE030(v17, &selRef_localizedTitle), v19))
      {
        v20 = v18;
        v21 = v19;
      }

      else
      {

        v20 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = [v14 v10[151]];
      if (v22 && (v23 = v22, v71 = v21, v24 = v20, v25 = v5, v26 = v10, v27 = v9, v28 = v4, v29 = v14, v30 = v6, v31 = [v22 origin], v23, v32 = v31, v6 = v30, v14 = v29, v4 = v28, v9 = v27, v10 = v26, v5 = v25, v20 = v24, v21 = v71, v33 = sub_2747DE030(v32, &selRef_localizedTitle), v34))
      {
        v35 = v33;
        v36 = v34;
      }

      else
      {

        v35 = 0;
        v36 = 0xE000000000000000;
      }

      v37 = v20 == v35 && v21 == v36;
      if (v37)
      {
        break;
      }

      v38 = sub_2749FDCC4();

      if ((v38 & 1) == 0)
      {
        goto LABEL_24;
      }

      v39 = v5;
      v37 = v6 == v5++;
      if (!v37)
      {
        goto LABEL_25;
      }

LABEL_26:
      ++v6;
    }

LABEL_24:
    v39 = v4;
    v37 = v6 == v4++;
    if (v37)
    {
      goto LABEL_26;
    }

LABEL_25:
    *v6 = *v39;
    goto LABEL_26;
  }

  sub_274772FC4(a2, a3 - a2, a4);
  v9 = &v4[v8];
  v40 = &selRef_createFolderWithName_icon_error_;
  v72 = v6;
LABEL_28:
  v41 = v5 - 1;
  --v75;
  v69 = v5 - 1;
  for (i = v5; v9 > v4 && v5 > v6; v5 = i)
  {
    v74 = v9;
    v43 = v9 - 1;
    v44 = *v41;
    v45 = *(v9 - 1);
    v46 = v44;
    v47 = [v45 v40[151]];
    if (v47 && (v48 = v47, v49 = [v47 origin], v48, v50 = v49, v6 = v72, v51 = sub_2747DE030(v50, &selRef_localizedTitle), v52))
    {
      v53 = v51;
      v54 = v52;
    }

    else
    {

      v53 = 0;
      v54 = 0xE000000000000000;
    }

    v55 = v40;
    v56 = [v46 v40[151]];
    if (v56 && (v57 = v56, v58 = [v56 origin], v57, v59 = v58, v6 = v72, v60 = sub_2747DE030(v59, &selRef_localizedTitle), v61))
    {
      v62 = v60;
      v63 = v61;
    }

    else
    {

      v62 = 0;
      v63 = 0xE000000000000000;
    }

    if (v53 == v62 && v54 == v63)
    {
      v65 = 0;
    }

    else
    {
      v65 = sub_2749FDCC4();
    }

    if (v65)
    {
      v5 = v69;
      v9 = v74;
      v40 = v55;
      if (v75 + 1 != i)
      {
        *v75 = *v69;
        v5 = v69;
      }

      goto LABEL_28;
    }

    v40 = v55;
    v41 = v69;
    if (v74 != v75 + 1)
    {
      *v75 = *v43;
    }

    --v75;
    v9 = v43;
  }

LABEL_55:
  v66 = v9 - v4;
  if (v5 != v4 || v5 >= &v4[v66])
  {
    memmove(v5, v4, 8 * v66);
  }

  return 1;
}

uint64_t sub_2747DC684(void **a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_274772FC4(a1, a2 - a1, a4);
    v10 = &v4[v8];
    v51 = v5;
    v53 = v10;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_60;
      }

      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      v15 = sub_2747DDFD4(v13, &selRef_actionUUID);
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      v18 = 0xE000000000000000;
      if (v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      v20 = sub_2747DDFD4(v14, &selRef_actionUUID);
      if (v21)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }

      if (v21)
      {
        v18 = v21;
      }

      if (v17 == v22 && v19 == v18)
      {
      }

      else
      {
        v24 = sub_2749FDCC4();

        if (v24)
        {
          v25 = v6;
          v26 = v7 == v6++;
          goto LABEL_26;
        }
      }

      v25 = v4;
      v26 = v7 == v4++;
LABEL_26:
      v5 = v51;
      v10 = v53;
      if (!v26)
      {
        *v7 = *v25;
      }

      ++v7;
    }
  }

  sub_274772FC4(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v49 = v4;
  v50 = v7;
LABEL_30:
  v27 = v6 - 1;
  --v5;
  v52 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v54 = v10;
    v29 = v10 - 1;
    v30 = v27;
    v31 = *v27;
    v32 = *(v10 - 1);
    v33 = v31;
    v34 = sub_2747DDFD4(v32, &selRef_actionUUID);
    if (v35)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = 0xE000000000000000;
    if (v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    v39 = sub_2747DDFD4(v33, &selRef_actionUUID);
    if (v40)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    if (v40)
    {
      v37 = v40;
    }

    if (v36 == v41 && v38 == v37)
    {
      v43 = 0;
    }

    else
    {
      v43 = sub_2749FDCC4();
    }

    v44 = v5 + 1;
    if (v43)
    {
      v7 = v50;
      v45 = v30;
      v6 = v30;
      v10 = v54;
      v4 = v49;
      if (v44 != v52)
      {
        *v5 = *v45;
        v6 = v45;
      }

      goto LABEL_30;
    }

    v27 = v30;
    if (v54 != v44)
    {
      *v5 = *v29;
    }

    --v5;
    v10 = v29;
    v7 = v50;
    v6 = v52;
    v4 = v49;
  }

LABEL_60:
  v46 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v46])
  {
    memmove(v6, v4, 8 * v46);
  }

  return 1;
}