id TTRIActionCellContent.init(state:)(_OWORD *a1)
{
  v1 = a1[5];
  v5[4] = a1[4];
  v6[0] = v1;
  *(v6 + 9) = *(a1 + 89);
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = a1[3];
  v5[2] = a1[2];
  v5[3] = v3;
  return sub_21DA884EC(0, 0x65436E6F69746341, 0xEA00000000006C6CLL, 0, v5);
}

id TTRIActionCellContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s15RemindersUICore26TTRIActionCellStateAdaptorV0E0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 7);
  v10 = *(a1 + 11);
  v60 = *(a1 + 9);
  v61 = v10;
  v62 = *(a1 + 104);
  v58 = *(a1 + 5);
  v59 = v9;
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v15 = a2[3];
  v14 = a2[4];
  v16 = *(a2 + 5);
  v67 = *(a2 + 104);
  v17 = *(a2 + 11);
  v65 = *(a2 + 9);
  v66 = v17;
  v18 = *(a2 + 7);
  v63 = v16;
  v64 = v18;
  if (v4 == v11 && v5 == v12)
  {
    if (v6 != v13)
    {
      goto LABEL_25;
    }

LABEL_7:
    if (v8)
    {
      if (!v14 || (v7 != v15 || v8 != v14) && (sub_21DBFC64C() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v14)
    {
      goto LABEL_25;
    }

    v20 = *(&v59 + 1);
    v21 = v62;
    *&v57[7] = *(a2 + 5);
    *&v57[23] = a2[7];
    v22 = *(&v64 + 1);
    v23 = v67;
    if (*(&v59 + 1) >> 1 == 0xFFFFFFFFLL && v62 < 2u)
    {
      if (*(&v64 + 1) >> 1 == 0xFFFFFFFFLL && v67 < 2u)
      {
        v47 = *(a1 + 5);
        *&v48 = a1[7];
        *(&v48 + 1) = *(&v59 + 1);
        v24 = *(a1 + 11);
        v49 = *(a1 + 9);
        v50 = v24;
        v51 = v62;
        sub_21D0D3954(&v58, &v42, &unk_27CE5EA00);
        sub_21D0D3954(&v63, &v42, &unk_27CE5EA00);
        sub_21D0CF7E0(&v47, &unk_27CE5EA00);
        v19 = 1;
        return v19 & 1;
      }

      sub_21D0D3954(&v58, &v47, &unk_27CE5EA00);
      sub_21D0D3954(&v63, &v47, &unk_27CE5EA00);
    }

    else
    {
      v25 = a1[7];
      v47 = *(a1 + 5);
      *&v48 = v25;
      *(&v48 + 1) = *(&v59 + 1);
      v26 = *(a1 + 11);
      v49 = *(a1 + 9);
      v50 = v26;
      v51 = v62;
      v46 = v62;
      v44 = v49;
      v45 = v26;
      v42 = v47;
      v43 = v48;
      if (*(&v64 + 1) >> 1 != 0xFFFFFFFFLL || v67 >= 2u)
      {
        v37 = *(a2 + 5);
        v27 = a2[7];
        v28 = *(a2 + 11);
        v39 = *(a2 + 9);
        v40 = v28;
        *&v38 = v27;
        *(&v38 + 1) = *(&v64 + 1);
        v41 = v67;
        sub_21D0D3954(&v58, v35, &unk_27CE5EA00);
        sub_21D0D3954(&v63, v35, &unk_27CE5EA00);
        sub_21D0D3954(&v47, v35, &unk_27CE5EA00);
        v19 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v42, &v37);
        v33[2] = v39;
        v33[3] = v40;
        v34 = v41;
        v33[0] = v37;
        v33[1] = v38;
        sub_21D35D940(v33);
        v35[2] = v44;
        v35[3] = v45;
        v36 = v46;
        v35[0] = v42;
        v35[1] = v43;
        sub_21D35D940(v35);
        v37 = *(a1 + 5);
        *&v38 = a1[7];
        *(&v38 + 1) = v20;
        v29 = *(a1 + 11);
        v39 = *(a1 + 9);
        v40 = v29;
        v41 = v21;
        sub_21D0CF7E0(&v37, &unk_27CE5EA00);
        return v19 & 1;
      }

      v39 = v49;
      v40 = v50;
      v41 = v51;
      v37 = v47;
      v38 = v48;
      sub_21D0D3954(&v58, v35, &unk_27CE5EA00);
      sub_21D0D3954(&v63, v35, &unk_27CE5EA00);
      sub_21D0D3954(&v47, v35, &unk_27CE5EA00);
      sub_21D35D940(&v37);
    }

    v47 = *(a1 + 5);
    *&v48 = a1[7];
    *(&v48 + 1) = v20;
    v30 = *(a1 + 11);
    v49 = *(a1 + 9);
    v50 = v30;
    v51 = v21;
    *v52 = *v57;
    *&v52[15] = *&v57[15];
    v53 = v22;
    v31 = *(a2 + 9);
    v55 = *(a2 + 11);
    v54 = v31;
    v56 = v23;
    sub_21D0CF7E0(&v47, qword_27CE5ABE0);
LABEL_25:
    v19 = 0;
    return v19 & 1;
  }

  v19 = 0;
  if ((sub_21DBFC64C() & 1) != 0 && ((v6 ^ v13) & 1) == 0)
  {
    goto LABEL_7;
  }

  return v19 & 1;
}

unint64_t sub_21DA785BC()
{
  result = qword_27CE65520;
  if (!qword_27CE65520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65520);
  }

  return result;
}

void destroy for TTRIActionCellStateAdaptor.State(uint64_t a1)
{

  v2 = *(a1 + 64);
  if (v2 >> 1 != 0xFFFFFFFF || *(a1 + 104) >= 2u)
  {
    sub_21D362050(*(a1 + 40), *(a1 + 48), *(a1 + 56), v2, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  }
}

uint64_t initializeWithCopy for TTRIActionCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = *(a2 + 64);
  v7 = *(a2 + 104);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v6 >> 1 == 0xFFFFFFFF && v7 < 2)
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    v14 = *(a2 + 88);
    v13 = *(a2 + 96);
    sub_21D361F04(v8, v9, v10, v6, v11, v12, v14, v13, v7);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = v6;
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    *(a1 + 88) = v14;
    *(a1 + 96) = v13;
    *(a1 + 104) = v7;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIActionCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v4 = *(a2 + 64);
  v5 = *(a2 + 104);
  v7 = v4 >> 1 == 0xFFFFFFFF && v5 < 2;
  if (*(a1 + 64) >> 1 == 0xFFFFFFFFLL && *(a1 + 104) < 2u)
  {
    if (v7)
    {
      *(a1 + 40) = *(a2 + 40);
      v8 = *(a2 + 56);
      v9 = *(a2 + 72);
      v10 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v10;
      *(a1 + 72) = v9;
      *(a1 + 56) = v8;
    }

    else
    {
      v30 = *(a2 + 40);
      v31 = *(a2 + 48);
      v32 = *(a2 + 56);
      v33 = *(a2 + 72);
      v34 = *(a2 + 80);
      v36 = *(a2 + 88);
      v35 = *(a2 + 96);
      sub_21D361F04(v30, v31, v32, v4, v33, v34, v36, v35, v5);
      *(a1 + 40) = v30;
      *(a1 + 48) = v31;
      *(a1 + 56) = v32;
      *(a1 + 64) = v4;
      *(a1 + 72) = v33;
      *(a1 + 80) = v34;
      *(a1 + 88) = v36;
      *(a1 + 96) = v35;
      *(a1 + 104) = v5;
    }
  }

  else if (v7)
  {
    sub_21D35D940(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    v11 = *(a2 + 72);
    v12 = *(a2 + 88);
    v13 = *(a2 + 104);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 104) = v13;
    *(a1 + 88) = v12;
    *(a1 + 72) = v11;
  }

  else
  {
    v14 = *(a2 + 40);
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    v18 = *(a2 + 80);
    v20 = *(a2 + 88);
    v19 = *(a2 + 96);
    sub_21D361F04(v14, v15, v16, v4, v17, v18, v20, v19, v5);
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    v25 = *(a1 + 72);
    v26 = *(a1 + 80);
    v27 = *(a1 + 88);
    v28 = *(a1 + 96);
    v29 = *(a1 + 104);
    *(a1 + 40) = v14;
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    *(a1 + 64) = v4;
    *(a1 + 72) = v17;
    *(a1 + 80) = v18;
    *(a1 + 88) = v20;
    *(a1 + 96) = v19;
    *(a1 + 104) = v5;
    sub_21D362050(v21, v22, v23, v24, v25, v26, v27, v28, v29);
  }

  return a1;
}

uint64_t assignWithTake for TTRIActionCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  v6 = *(a1 + 64);
  v7 = *(a1 + 104);
  v8 = *(a2 + 64);
  v9 = *(a2 + 104);
  if (v6 >> 1 != 0xFFFFFFFF || v7 >= 2)
  {
    if (v8 >> 1 != 0xFFFFFFFF || v9 >= 2)
    {
      v10 = *(a2 + 56);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = *(a1 + 72);
      v15 = *(a1 + 80);
      v16 = *(a1 + 88);
      v17 = *(a1 + 96);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v10;
      *(a1 + 64) = v8;
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = v9;
      sub_21D362050(v11, v12, v13, v6, v14, v15, v16, v17, v7);
      return a1;
    }

    sub_21D35D940(a1 + 40);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIActionCellStateAdaptor.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t storeEnumTagSinglePayload for TTRIActionCellStateAdaptor.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRIActionCellContent()
{
  result = qword_27CE65528;
  if (!qword_27CE65528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 TTRIMenuCellContentState.init(icon:title:titleIsTinted:menu:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0x1FFFFFFFELL;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0;
  v17 = 0;
  v12 = *(a6 + 48);
  v16[2] = *(a6 + 32);
  v16[3] = v12;
  v13 = *(a6 + 16);
  v16[0] = *a6;
  v16[1] = v13;
  sub_21D0CF7E0(v16, &unk_27CE5EA00);
  v14 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v14;
  *(a6 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = result;
  *(a6 + 72) = a2;
  *(a6 + 80) = a3;
  *(a6 + 88) = a4;
  *(a6 + 96) = a5;
  return result;
}

id TTRIMenuCellContent.__allocating_init(state:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x277D85000];
  *(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x68)) = 0;
  *(v3 + *((*v4 & *v3) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v4 & *v3) + 0x90)) = 0;
  v5 = v3 + *((*v4 & *v3) + 0x78);
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 12) = *(a1 + 96);
  v7 = *(a1 + 80);
  *(v5 + 4) = *(a1 + 64);
  *(v5 + 5) = v7;
  v8 = *(a1 + 48);
  *(v5 + 2) = *(a1 + 32);
  *(v5 + 3) = v8;
  *(v3 + *((*v4 & *v3) + 0x80)) = 0;
  v9 = (v3 + *((*v4 & *v3) + 0x88));
  *v9 = 0x6C6C6543756E654DLL;
  v9[1] = 0xE800000000000000;
  v11.receiver = v3;
  v11.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62330);
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t TTRIMenuCellContentState.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_21D1ADB0C(v8, v7);
}

__n128 TTRIMenuCellContentState.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_21D0CF7E0(v7, &unk_27CE5EA00);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t TTRIMenuCellContentState.title.getter()
{
  v1 = *(v0 + 72);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIMenuCellContentState.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

void *TTRIMenuCellContentState.menu.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

id TTRIMenuCellContent.init(state:)(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v3 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v3 & *v1) + 0x90)) = 0;
  v4 = v1 + *((*v3 & *v1) + 0x78);
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 12) = *(a1 + 96);
  v6 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  *(v1 + *((*v3 & *v1) + 0x80)) = 0;
  v8 = (v1 + *((*v3 & *v1) + 0x88));
  *v8 = 0x6C6C6543756E654DLL;
  v8[1] = 0xE800000000000000;
  v10.receiver = v1;
  v10.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62330);
  return objc_msgSendSuper2(&v10, sel_init);
}

Swift::Void __swiftcall TTRIMenuCellContent.cellDidBecomeSelected()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [*(v2 + qword_27CE65538) performPrimaryAction];
  }
}

uint64_t TTRIMenuCellContent.updateCell(_:)(uint64_t a1)
{
  v5[2] = a1;
  v1 = *(a1 + qword_27CE5AF20);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21DA7A3F8;
  *(v2 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_135;
  v3 = _Block_copy(aBlock);

  [v1 performBatchUpdates_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

id sub_21DA79328(uint64_t a1, void *a2)
{
  v3 = a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78);
  swift_beginAccess();
  v4 = *(v3 + 3);
  v22 = *(v3 + 2);
  v23 = v4;
  v24 = v3[64];
  v5 = *(v3 + 1);
  v20 = *v3;
  v21 = v5;
  v6 = (a1 + qword_27CE655A0);
  swift_beginAccess();
  v7 = v6[3];
  v27 = v6[2];
  v28 = v7;
  v29 = *(v6 + 64);
  v8 = v6[1];
  v25 = *v6;
  v26 = v8;
  v30[2] = v27;
  v30[3] = v7;
  v31 = v29;
  v30[0] = v25;
  v30[1] = v8;
  v9 = v20;
  v10 = v21;
  v11 = v22;
  v12 = v23;
  *(v6 + 64) = v24;
  v6[2] = v11;
  v6[3] = v12;
  *v6 = v9;
  v6[1] = v10;
  sub_21D1ADB0C(&v20, v18);
  sub_21D1ADB0C(&v25, v18);
  sub_21D0CF7E0(v30, &unk_27CE5EA00);
  v18[2] = v27;
  v18[3] = v28;
  v19 = v29;
  v18[0] = v25;
  v18[1] = v26;
  sub_21DA7EF48(v18);
  sub_21D0CF7E0(&v25, &unk_27CE5EA00);
  v13 = *(a1 + qword_27CE65590);
  sub_21DBF8E0C();
  v14 = v13;
  v15 = sub_21DBFA12C();

  [v14 setText_];

  v16 = 0;
  if ((v3[88] & 1) == 0)
  {
    v16 = [objc_opt_self() labelColor];
  }

  *&v18[0] = v16;
  sub_21DA7B9D0(v18);
  return [*(a1 + qword_27CE65538) setMenu_];
}

id TTRIMenuTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRIMenuTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v40 = a1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_21DBFB83C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBFB95C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  sub_21DBFB90C();
  (*(v10 + 104))(v12, *MEMORY[0x277D75000], v9);
  sub_21DBFB85C();
  sub_21DBFB82C();
  sub_21DBFB80C();
  sub_21DBF8D6C();
  v20 = sub_21DBF8D5C();
  (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  sub_21DBFB8CC();
  type metadata accessor for TTRIOptionMenuTitlelessPopupButton();
  v41 = v14;
  v42 = v13;
  (*(v14 + 16))(v16, v19, v13);
  v21 = sub_21DBFB96C();
  v22 = [v21 titleLabel];
  if (v22)
  {
    v23 = v22;
    [v22 setAdjustsFontForContentSizeCategory_];
  }

  [v21 setIsAccessibilityElement_];
  [v21 setShowsMenuAsPrimaryAction_];
  *&v4[qword_27CE65538] = v21;
  v24 = v21;
  if (a3)
  {
    v25 = sub_21DBFA12C();
  }

  else
  {
    v25 = 0;
  }

  v45.receiver = v4;
  v45.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v45, sel_initWithStyle_reuseIdentifier_, v40, v25);

  v27 = &v26[qword_27CE65610];
  swift_beginAccess();
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = *(v27 + 2);
  v31 = *(v27 + 3);
  v32 = *(v27 + 4);
  *v27 = v21;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v33 = v27[40];
  v27[40] = 1;
  v34 = v26;
  v35 = v21;
  v36 = v34;
  sub_21D361B20(v28, v29, v30, v31, v32, v33);
  sub_21D361BB4(v28, v29, v30, v31, v32, v33);
  v43[0] = v28;
  v43[1] = v29;
  v43[2] = v30;
  v43[3] = v31;
  v43[4] = v32;
  v44 = v33;
  sub_21DA7F6B4(v43);

  (*(v41 + 8))(v19, v42);
  sub_21D361BB4(v28, v29, v30, v31, v32, v33);
  return v36;
}

char *sub_21DA79A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIMenuTableCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id sub_21DA79B7C(char *a1)
{
  v1 = *&a1[qword_27CE65590];
  v2 = a1;
  v3 = [v1 text];
  if (v3)
  {
    v4 = v3;
    sub_21DBFA16C();

    v5 = sub_21DBFA12C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

uint64_t TTRIMenuTableCell.accessibilityLabel.getter()
{
  v1 = [*(v0 + qword_27CE65590) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t (*TTRIMenuTableCell.accessibilityLabel.modify(uint64_t *a1))()
{
  v3 = [*(v1 + qword_27CE65590) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

id sub_21DA79D20(char *a1)
{
  v2 = qword_27CE65538;
  v3 = *&a1[qword_27CE65538];
  v4 = a1;
  if (([v3 isHidden] & 1) != 0 || (v5 = objc_msgSend(*&a1[v2], sel_menu)) == 0)
  {

    v6 = 0;
  }

  else
  {

    if (qword_27CE571A0 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBFA12C();
  }

  return v6;
}

id TTRIMenuTableCell.accessibilityHint.getter()
{
  v1 = *(v0 + qword_27CE65538);
  if ([v1 isHidden])
  {
    return 0;
  }

  result = [v1 menu];
  if (result)
  {

    if (qword_27CE571A0 != -1)
    {
      swift_once();
    }

    v3 = qword_27CE66B00;
    sub_21DBF8E0C();
    return v3;
  }

  return result;
}

uint64_t (*TTRIMenuTableCell.accessibilityHint.modify(uint64_t *a1))()
{
  v3 = *(v1 + qword_27CE65538);
  if ([v3 isHidden])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = [v3 menu];
    if (v5)
    {

      if (qword_27CE571A0 != -1)
      {
        swift_once();
      }

      v4 = qword_27CE66B00;
      v5 = sub_21DBF8E0C();
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  a1[1] = v5;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

uint64_t (*TTRIMenuTableCell.accessibilityActivationPoint.modify(void *a1))(void, void, void)
{
  [*(v1 + qword_27CE65538) accessibilityActivationPoint];
  *a1 = v3;
  a1[1] = v4;
  return nullsub_1;
}

uint64_t _s15RemindersUICore24TTRIMenuCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v67 = *(a1 + 32);
  v68 = v4;
  v69 = *(a1 + 64);
  v5 = *(a1 + 16);
  v65 = *a1;
  v66 = v5;
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v71 = *(a2 + 64);
  v70[2] = v10;
  v70[3] = v11;
  v12 = *(a2 + 16);
  v70[0] = *a2;
  v70[1] = v12;
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(&v5 + 1);
  v18 = v69;
  *&v64[7] = v70[0];
  *&v64[23] = *(a2 + 16);
  v19 = *(&v12 + 1);
  v20 = v71;
  if (*(&v5 + 1) >> 1 == 0xFFFFFFFFLL && v69 < 2u)
  {
    if (*(&v12 + 1) >> 1 == 0xFFFFFFFFLL && v71 < 2u)
    {
      v38 = v15;
      v39 = v8;
      v21 = v6;
      v36 = v16;
      v37 = v9;
      v54 = *a1;
      *&v55 = *(a1 + 16);
      *(&v55 + 1) = *(&v66 + 1);
      v22 = *(a1 + 48);
      v56 = *(a1 + 32);
      v57 = v22;
      v58 = v69;
      sub_21D1ADB0C(&v65, &v49);
      sub_21D1ADB0C(v70, &v49);
      sub_21D0CF7E0(&v54, &unk_27CE5EA00);
      goto LABEL_10;
    }

    sub_21D1ADB0C(&v65, &v54);
    sub_21D1ADB0C(v70, &v54);
LABEL_15:
    v54 = *a1;
    *&v55 = *(a1 + 16);
    *(&v55 + 1) = v17;
    v29 = *(a1 + 48);
    v56 = *(a1 + 32);
    v57 = v29;
    v58 = v18;
    *v59 = *v64;
    *&v59[15] = *&v64[15];
    v60 = v19;
    v30 = *(a2 + 32);
    v62 = *(a2 + 48);
    v61 = v30;
    v63 = v20;
    sub_21D0CF7E0(&v54, qword_27CE5ABE0);
    return 0;
  }

  v23 = *(a1 + 16);
  v54 = *a1;
  *&v55 = v23;
  *(&v55 + 1) = *(&v66 + 1);
  v24 = *(a1 + 48);
  v56 = *(a1 + 32);
  v57 = v24;
  v58 = v69;
  v53 = v69;
  v51 = v56;
  v52 = v24;
  v49 = v54;
  v50 = v55;
  if (*(&v12 + 1) >> 1 == 0xFFFFFFFFLL && v71 < 2u)
  {
    v46 = v56;
    v47 = v57;
    v48 = v58;
    v44 = v54;
    v45 = v55;
    sub_21D1ADB0C(&v65, v42);
    sub_21D1ADB0C(v70, v42);
    sub_21D1ADB0C(&v54, v42);
    sub_21D35D940(&v44);
    goto LABEL_15;
  }

  v38 = v15;
  v39 = v8;
  v21 = v6;
  v36 = v16;
  v37 = v9;
  v44 = *a2;
  v25 = *(a2 + 16);
  v26 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v26;
  *&v45 = v25;
  *(&v45 + 1) = v19;
  v48 = v71;
  sub_21D1ADB0C(&v65, v42);
  sub_21D1ADB0C(v70, v42);
  sub_21D1ADB0C(&v54, v42);
  v27 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v49, &v44);
  v40[2] = v46;
  v40[3] = v47;
  v41 = v48;
  v40[0] = v44;
  v40[1] = v45;
  sub_21D35D940(v40);
  v42[2] = v51;
  v42[3] = v52;
  v43 = v53;
  v42[0] = v49;
  v42[1] = v50;
  sub_21D35D940(v42);
  v44 = *a1;
  *&v45 = *(a1 + 16);
  *(&v45 + 1) = v17;
  v28 = *(a1 + 48);
  v46 = *(a1 + 32);
  v47 = v28;
  v48 = v18;
  sub_21D0CF7E0(&v44, &unk_27CE5EA00);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (v7 == v13 && v21 == v14)
  {
    if (v39 == v38)
    {
      goto LABEL_20;
    }

    return 0;
  }

  v32 = sub_21DBFC64C();
  result = 0;
  if ((v32 & 1) != 0 && ((v39 ^ v38) & 1) == 0)
  {
LABEL_20:
    if (v37)
    {
      if (v36)
      {
        sub_21D1DE990();
        v33 = v36;
        v34 = v37;
        v35 = sub_21DBFB63C();

        if (v35)
        {
          return 1;
        }
      }
    }

    else if (!v36)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void destroy for TTRIMenuCellContentState(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 64);
  if (v2 >> 1 != 0xFFFFFFFF || v3 >= 2)
  {
    sub_21D362050(*a1, *(a1 + 8), *(a1 + 16), v2, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), v3);
  }

  v5 = *(a1 + 96);
}

uint64_t initializeWithCopy for TTRIMenuCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 64);
  if (v4 >> 1 != 0xFFFFFFFF || v5 >= 2)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 40);
    v19 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 56);
    sub_21D361F04(*a2, v8, v9, v4, v19, v10, v11, v12, v5);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v4;
    *(a1 + 32) = v19;
    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v12;
    *(a1 + 64) = v5;
  }

  else
  {
    v13 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v13;
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
  }

  v15 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v15;
  *(a1 + 88) = *(a2 + 88);
  v16 = *(a2 + 96);
  *(a1 + 96) = v16;
  sub_21DBF8E0C();
  v17 = v16;
  return a1;
}

uint64_t assignWithCopy for TTRIMenuCellContentState(uint64_t a1, uint64_t *a2)
{
  v4 = a2[3];
  v5 = *(a2 + 64);
  v7 = v4 >> 1 == 0xFFFFFFFF && v5 < 2;
  if (*(a1 + 24) >> 1 != 0xFFFFFFFFLL || *(a1 + 64) >= 2u)
  {
    if (v7)
    {
      sub_21D35D940(a1);
      *a1 = *a2;
      v10 = *(a2 + 2);
      v9 = *(a2 + 3);
      v11 = *(a2 + 1);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v10;
      *(a1 + 48) = v9;
      *(a1 + 16) = v11;
    }

    else
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      v18 = a2[5];
      v40 = a2[4];
      v19 = a2[6];
      v20 = a2[7];
      sub_21D361F04(*a2, v16, v17, v4, v40, v18, v19, v20, v5);
      v21 = *a1;
      v22 = *(a1 + 8);
      v23 = *(a1 + 16);
      v24 = *(a1 + 24);
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = *(a1 + 56);
      v29 = *(a1 + 64);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      *(a1 + 24) = v4;
      *(a1 + 32) = v40;
      *(a1 + 40) = v18;
      *(a1 + 48) = v19;
      *(a1 + 56) = v20;
      *(a1 + 64) = v5;
      sub_21D362050(v21, v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else if (v7)
  {
    *a1 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    v14 = *(a2 + 3);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v13;
    *(a1 + 48) = v14;
    *(a1 + 16) = v12;
  }

  else
  {
    v30 = *a2;
    v31 = a2[1];
    v32 = a2[2];
    v33 = a2[5];
    v41 = a2[4];
    v34 = a2[6];
    v35 = a2[7];
    sub_21D361F04(*a2, v31, v32, v4, v41, v33, v34, v35, v5);
    *a1 = v30;
    *(a1 + 8) = v31;
    *(a1 + 16) = v32;
    *(a1 + 24) = v4;
    *(a1 + 32) = v41;
    *(a1 + 40) = v33;
    *(a1 + 48) = v34;
    *(a1 + 56) = v35;
    *(a1 + 64) = v5;
  }

  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  sub_21DBF8E0C();

  *(a1 + 88) = *(a2 + 88);
  v36 = *(a1 + 96);
  v37 = a2[12];
  *(a1 + 96) = v37;
  v38 = v37;

  return a1;
}

uint64_t assignWithTake for TTRIMenuCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 64);
  if (v4 >> 1 == 0xFFFFFFFF && v5 < 2)
  {
    goto LABEL_12;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 64);
  if (v7 >> 1 == 0xFFFFFFFF && v8 < 2)
  {
    sub_21D35D940(a1);
LABEL_12:
    v19 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v19;
    *(a1 + 64) = *(a2 + 64);
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    goto LABEL_13;
  }

  v10 = *(a2 + 16);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  *(a1 + 64) = v8;
  sub_21D362050(v11, v12, v13, v4, v14, v15, v16, v17, v5);
LABEL_13:
  v21 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v21;

  *(a1 + 88) = *(a2 + 88);
  v22 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIMenuCellContentState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIMenuCellContentState(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

void __swiftcall TTRIStaticTableViewStandardCell.CustomViewOptions.init(size:rectInsets:)(RemindersUICore::TTRIStaticTableViewStandardCell::CustomViewOptions *__return_ptr retstr, CGSize_optional size, UIEdgeInsets_optional *rectInsets)
{
  *&v5[7] = *v4;
  *&v5[23] = *(v4 + 16);
  *retstr->gap11 = *v5;
  v5[39] = *(v4 + 32);
  retstr->size.value.width = *&size.is_nil;
  *&retstr->size.value.height = rectInsets;
  retstr->size.is_nil = v3 & 1;
  *(&retstr->rectInsets.value.left + 1) = *&v5[16];
  *(&retstr->rectInsets.value.right + 1) = *&v5[32];
}

id sub_21DA7A9D8@<X0>(void *a1@<X8>)
{
  v3 = qword_27CE65580;
  swift_beginAccess();
  result = 0;
  if (v1[v3])
  {
    goto LABEL_16;
  }

  if ((v1[qword_27CE65588] & 1) == 0)
  {
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    LOBYTE(v5) = sub_21DBFB42C();
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v7 = [*&v1[qword_27CE5AF20] arrangedSubviewRows];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
  v9 = sub_21DBFA5EC();

  if (!*(v9 + 16))
  {
    goto LABEL_14;
  }

  v10 = *(v9 + 32);
  sub_21DBF8E0C();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
LABEL_14:

LABEL_15:
    result = *&v1[qword_27CE65590];
    goto LABEL_16;
  }

LABEL_8:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x223D44740](0, v10);
    goto LABEL_11;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
LABEL_11:
    v12 = v11;

    result = v12;
LABEL_16:
    *a1 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DA7AB8C@<X0>(char *a1@<X8>)
{
  v3 = v1 + qword_27CE655A0;
  result = swift_beginAccess();
  if (*(v3 + 64) < 2u && *(v3 + 24) >> 1 == 0xFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *a1 = v6;
  return result;
}

void sub_21DA7ABF8(uint64_t a1)
{
  if (*(v1 + qword_27CE5AF20) == a1)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x68))(&v2);
    UITableViewCell.setSeparatorInsetType(_:)(&v2);
    sub_21D22BF80(v2);
  }

  sub_21DA7E4FC();
}

uint64_t sub_21DA7AC84()
{
  v1 = qword_27CE655A8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DA7ACC8(char a1)
{
  v3 = a1 & 1;
  v4 = qword_27CE655A8;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    [*(v1 + qword_27CE65590) setEnabled_];
    v6 = *(v1 + qword_27CE655B0);
    if (v6)
    {
      [v6 setEnabled_];
    }

    v7 = *(v1 + qword_27CE655B8);
    if (v7)
    {
      if (*(v1 + v4))
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.4;
      }

      v9 = v7;
      [v9 setAlpha_];
    }
  }
}

void (*sub_21DA7ADB0(uint64_t *a1))(uint64_t a1)
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
  v5 = qword_27CE655A8;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21DA7AE44;
}

void sub_21DA7AE44(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_21DA7ECAC(v5);

  free(v1);
}

uint64_t sub_21DA7AE8C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_27CE655A0;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_21D1ADB0C(v10, &v9);
}

uint64_t sub_21DA7AF04(__int128 *a1)
{
  v3 = (v1 + qword_27CE655A0);
  swift_beginAccess();
  v4 = v3[3];
  v15 = v3[2];
  v16 = v4;
  v17 = *(v3 + 64);
  v5 = v3[1];
  v13 = *v3;
  v14 = v5;
  v18[2] = v15;
  v18[3] = v4;
  v19 = v17;
  v18[0] = v13;
  v18[1] = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  *(v3 + 64) = *(a1 + 64);
  v3[2] = v8;
  v3[3] = v9;
  *v3 = v6;
  v3[1] = v7;
  sub_21D1ADB0C(&v13, v11);
  sub_21D0CF7E0(v18, &unk_27CE5EA00);
  v11[2] = v15;
  v11[3] = v16;
  v12 = v17;
  v11[0] = v13;
  v11[1] = v14;
  sub_21DA7EF48(v11);
  return sub_21D0CF7E0(&v13, &unk_27CE5EA00);
}

void (*sub_21DA7AFEC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x220uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 528) = v1;
  v5 = qword_27CE655A0;
  *(v3 + 536) = qword_27CE655A0;
  v6 = v1 + v5;
  swift_beginAccess();
  *v4 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 48);
  *(v4 + 64) = *(v6 + 64);
  *(v4 + 32) = v8;
  *(v4 + 48) = v9;
  *(v4 + 16) = v7;
  v11 = *(v6 + 32);
  v10 = *(v6 + 48);
  v12 = *(v6 + 64);
  *(v4 + 88) = *(v6 + 16);
  *(v4 + 136) = v12;
  *(v4 + 120) = v10;
  *(v4 + 104) = v11;
  *(v4 + 72) = *v6;
  sub_21D1ADB0C(v4, v4 + 144);
  return sub_21DA7B0D0;
}

void sub_21DA7B0D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 216;
  v4 = *(v2 + 528) + *(v2 + 536);
  if (a2)
  {
    v5 = *(v2 + 88);
    v6 = *(v2 + 120);
    *(v2 + 392) = *(v2 + 104);
    *(v2 + 408) = v6;
    *(v2 + 424) = *(v2 + 136);
    *(v2 + 360) = *(v2 + 72);
    *(v2 + 376) = v5;
    v8 = *(v4 + 32);
    v7 = *(v4 + 48);
    v9 = *(v4 + 16);
    *(v2 + 352) = *(v4 + 64);
    *(v2 + 320) = v8;
    *(v2 + 336) = v7;
    *(v2 + 304) = v9;
    *(v2 + 288) = *v4;
    *v3 = *v4;
    v11 = *(v4 + 32);
    v10 = *(v4 + 48);
    v12 = *(v4 + 16);
    *(v3 + 64) = *(v4 + 64);
    *(v3 + 32) = v11;
    *(v3 + 48) = v10;
    *(v3 + 16) = v12;
    *v4 = *(v2 + 72);
    v13 = *(v2 + 88);
    v14 = *(v2 + 104);
    v15 = *(v2 + 120);
    *(v4 + 64) = *(v2 + 136);
    *(v4 + 32) = v14;
    *(v4 + 48) = v15;
    *(v4 + 16) = v13;
    sub_21D1ADB0C(v2 + 360, v2 + 432);
    sub_21D1ADB0C(v2 + 288, v2 + 432);
    sub_21D0CF7E0(v3, &unk_27CE5EA00);
    v16 = *(v2 + 336);
    v34 = *(v2 + 320);
    v35 = v16;
    v36 = *(v2 + 352);
    v17 = *(v2 + 304);
    v32 = *(v2 + 288);
    v33 = v17;
    sub_21DA7EF48(&v32);
    sub_21D0CF7E0(v2 + 288, &unk_27CE5EA00);
    v18 = *(v2 + 88);
    v19 = *(v2 + 120);
    *(v2 + 176) = *(v2 + 104);
    *(v2 + 192) = v19;
    *(v2 + 208) = *(v2 + 136);
    *(v2 + 144) = *(v2 + 72);
    *(v2 + 160) = v18;
    v20 = v2 + 144;
  }

  else
  {
    *v3 = *v4;
    v22 = *(v4 + 32);
    v21 = *(v4 + 48);
    v23 = *(v4 + 16);
    *(v3 + 64) = *(v4 + 64);
    *(v3 + 32) = v22;
    *(v3 + 48) = v21;
    *(v3 + 16) = v23;
    v25 = *(v4 + 32);
    v24 = *(v4 + 48);
    v26 = *(v4 + 16);
    *(v2 + 208) = *(v4 + 64);
    *(v2 + 176) = v25;
    *(v2 + 192) = v24;
    *(v2 + 160) = v26;
    *(v2 + 144) = *v4;
    *v4 = *(v2 + 72);
    v27 = *(v2 + 88);
    v28 = *(v2 + 104);
    v29 = *(v2 + 120);
    *(v4 + 64) = *(v2 + 136);
    *(v4 + 32) = v28;
    *(v4 + 48) = v29;
    *(v4 + 16) = v27;
    sub_21D1ADB0C(v3, v2 + 288);
    sub_21D0CF7E0(v2 + 144, &unk_27CE5EA00);
    v30 = *(v3 + 48);
    v34 = *(v3 + 32);
    v35 = v30;
    v36 = *(v3 + 64);
    v31 = *(v3 + 16);
    v32 = *v3;
    v33 = v31;
    sub_21DA7EF48(&v32);
    v20 = v3;
  }

  sub_21D0CF7E0(v20, &unk_27CE5EA00);

  free(v2);
}

uint64_t sub_21DA7B310()
{
  v1 = [*(v0 + qword_27CE65590) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

void sub_21DA7B380(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + qword_27CE65590);
  if (a2)
  {
    v4 = v3;
    v6 = sub_21DBFA12C();
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  [v3 setText_];
}

void (*sub_21DA7B418(uint64_t *a1))(void *a1, char a2)
{
  v3 = qword_27CE65590;
  a1[2] = v1;
  a1[3] = v3;
  v4 = [*(v1 + v3) text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_21DA7B4A8;
}

void sub_21DA7B4A8(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(a1[2] + a1[3]);
  v7 = v3;
  if (a2)
  {
    v4 = v3;
    if (v2)
    {
      sub_21DBF8E0C();
      v5 = sub_21DBFA12C();
    }

    else
    {
      v5 = 0;
    }

    [v7 setText_];
  }

  else
  {
    v6 = v3;
    if (v2)
    {
      v5 = sub_21DBFA12C();
    }

    else
    {
      v5 = 0;
    }

    [v7 setText_];
  }
}

uint64_t sub_21DA7B5A0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[qword_27CE655C8];
  result = swift_beginAccess();
  v8 = *v6;
  v9 = *(v6 + 1);
  *v6 = a1;
  *(v6 + 1) = a2;
  if (a2)
  {
    if (v9)
    {
      v10 = v8 == a1 && v9 == a2;
      if (v10 || (sub_21DBFC64C() & 1) != 0)
      {
      }
    }
  }

  else if (!v9)
  {
    return result;
  }

  v11 = *&v2[qword_27CE5AF20];
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = ObjectType;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21DA816D0;
  *(v13 + 24) = v12;
  aBlock[4] = sub_21D0E6078;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_136;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  [v11 performBatchUpdates_];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_21DA7B788(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = (v1 + qword_27CE655C8);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;
  sub_21DBF8E0C();
  return sub_21DA7B828;
}

void sub_21DA7B828(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21DA7B5A0(v3, v4);
  }

  else
  {
    sub_21DA7B5A0(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t sub_21DA7B8AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CE655D0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_21DA7B96C@<X0>(void *a1@<X8>)
{
  v3 = qword_27CE655D8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void (*sub_21DA7B9DC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = qword_27CE655D8;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21DA7BA78;
}

id sub_21DA7BA90@<X0>(void *a1@<X8>)
{
  v3 = qword_27CE655E8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_21DA7BB00(void **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = v3;
  if (v3)
  {
    if (v5)
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      v6 = v3;
      v7 = v5;
      v8 = v6;
      v9 = sub_21DBFB63C();

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  sub_21DA7E934();
LABEL_9:
  v7 = v5;
LABEL_10:
}

void (*sub_21DA7BBD8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = qword_27CE655E8;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21DA7BC74;
}

void sub_21DA7BC8C(void **a1, char a2, void (*a3)(id *))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  v8 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(&v8);
  }

  else
  {
    a3(&v8);
  }

  free(v4);
}

id sub_21DA7BD14()
{
  v1 = [*(v0 + qword_27CE65590) font];

  return v1;
}

void sub_21DA7BD54(void *a1)
{
  [*(v1 + qword_27CE65590) setFont_];
}

void (*sub_21DA7BDA4(void *a1))(uint64_t a1)
{
  v2 = qword_27CE65590;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) font];
  return sub_21DA7BE08;
}

void sub_21DA7BE08(uint64_t a1)
{
  v1 = *a1;
  [*(*(a1 + 8) + *(a1 + 16)) setFont_];
}

void *sub_21DA7BE54()
{
  v1 = qword_27CE655F0;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21DA7BEA0(void *a1)
{
  v3 = qword_27CE655F0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + qword_27CE655B0);
  if (v6)
  {
    v7 = *(v1 + v3);
    v8 = v6;
    [v8 setFont_];
  }
}

void (*sub_21DA7BF44(uint64_t *a1))(void **a1, char a2)
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
  v4 = qword_27CE655F0;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21DA7BFCC;
}

void sub_21DA7BFCC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + qword_27CE655B0);
    if (v5)
    {
      [v5 setFont_];
    }
  }

  free(v3);
}

void *sub_21DA7C038()
{
  v1 = qword_27CE655F8;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21DA7C084(id a1)
{
  v3 = qword_27CE655F8;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v1;
      sub_21D0D8CF0(0, &qword_280D177E0);
      a1 = a1;
      v6 = v4;
      v7 = sub_21DBFB63C();

      if (v7)
      {

        return;
      }

      v1 = v5;
    }

    else
    {
      a1 = a1;
    }
  }

  else if (!v4)
  {
    return;
  }

  v8 = *&v1[qword_27CE5AF20];
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21DA816D8;
  *(v10 + 24) = v9;
  aBlock[4] = sub_21D11DA28;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_17_6;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  [v8 performBatchUpdates_];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void (*sub_21DA7C290(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = qword_27CE655F8;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21DA7C32C;
}

void *sub_21DA7C344()
{
  v1 = qword_27CE65608;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21DA7C390(id a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = qword_27CE65608;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  if (a1)
  {
    if (v6)
    {
      sub_21D0D8CF0(0, &qword_280D177E0);
      a1 = a1;
      v7 = v6;
      v8 = sub_21DBFB63C();

      if (v8)
      {

        return;
      }
    }

    else
    {
      a1 = a1;
    }
  }

  else if (!v6)
  {
    return;
  }

  v9 = *&v2[qword_27CE5AF20];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = ObjectType;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21DA85014;
  *(v11 + 24) = v10;
  aBlock[4] = sub_21D11DA28;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_28_2;
  v12 = _Block_copy(aBlock);
  v13 = v2;

  [v9 performBatchUpdates_];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void (*sub_21DA7C5A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = qword_27CE65608;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21DA7C63C;
}

void sub_21DA7C654(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

id sub_21DA7C6D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_27CE65610;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;
  return sub_21D361B20(v4, v5, v6, v7, v8, v9);
}

void sub_21DA7C740(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + qword_27CE65610;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = v2[1];
  *v5 = *v2;
  *(v5 + 16) = v11;
  *(v5 + 32) = v3;
  LOBYTE(v2) = *(v5 + 40);
  *(v5 + 40) = v4;
  sub_21D361B20(v6, v7, v8, v9, v10, v2);
  sub_21D361BB4(v6, v7, v8, v9, v10, v2);
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v13 = v2;
  sub_21DA7F6B4(v12);
  sub_21D361BB4(v6, v7, v8, v9, v10, v2);
}

void (*sub_21DA7C83C(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27CE65610;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  v12 = *(v6 + 40);
  *v4 = *v6;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;
  *(v4 + 40) = v12;
  sub_21D361B20(v7, v8, v9, v10, v11, v12);
  return sub_21DA7C8F0;
}

void sub_21DA7C8F0(void ***a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[10] + (*a1)[9];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = *(v3 + 40);
  v12 = *v4;
  v11 = *(v4 + 1);
  v14 = *(v4 + 2);
  v13 = *(v4 + 3);
  v15 = *(v4 + 4);
  v16 = v4[40];
  *v4 = v5;
  *(v4 + 1) = v6;
  *(v4 + 2) = v7;
  *(v4 + 3) = v8;
  *(v4 + 4) = v9;
  v4[40] = v10;
  if (a2)
  {
    sub_21D361B20(v5, v6, v7, v8, v9, v10);
    sub_21D361B20(v12, v11, v14, v13, v15, v16);
    sub_21D361BB4(v12, v11, v14, v13, v15, v16);
    v23 = v12;
    v24 = v11;
    v25 = v14;
    v26 = v13;
    v27 = v15;
    v28 = v16;
    sub_21DA7F6B4(&v23);
    sub_21D361BB4(v12, v11, v14, v13, v15, v16);
    v17 = *v3;
    v18 = v3[1];
    v19 = v3[2];
    v20 = v3[3];
    v21 = v3[4];
    v22 = *(v3 + 40);
  }

  else
  {
    sub_21D361B20(v12, v11, v14, v13, v15, v16);
    sub_21D361BB4(v12, v11, v14, v13, v15, v16);
    v23 = v12;
    v24 = v11;
    v25 = v14;
    v26 = v13;
    v27 = v15;
    v28 = v16;
    sub_21DA7F6B4(&v23);
    v17 = v12;
    v18 = v11;
    v19 = v14;
    v20 = v13;
    v21 = v15;
    v22 = v16;
  }

  sub_21D361BB4(v17, v18, v19, v20, v21, v22);

  free(v3);
}

void *sub_21DA7CA78()
{
  v1 = (v0 + qword_27CE65618);
  swift_beginAccess();
  v2 = *v1;
  sub_21D639460(*v1);
  return v2;
}

uint64_t sub_21DA7CAF4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_21DBF8E0C();
  return v3;
}

uint64_t sub_21DA7CB48(uint64_t a1, uint64_t a2)
{
  v5 = &v2[qword_27CE65620];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  v6 = *&v2[qword_27CE5AF20];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21DA82084;
  *(v8 + 24) = v7;
  aBlock[4] = sub_21D11DA28;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_39_0;
  v9 = _Block_copy(aBlock);
  v10 = v2;

  [v6 performBatchUpdates_];
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_21DA7CCDC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_21DA7CD64;
}

void sub_21DA7CD64(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) == 0 && (v4 = v3[6], v5 = *&v4[qword_27CE5AF20], v6 = swift_allocObject(), *(v6 + 16) = v4, v7 = swift_allocObject(), *(v7 + 16) = sub_21DA85028, *(v7 + 24) = v6, v3[4] = sub_21D11DA28, v3[5] = v7, *v3 = MEMORY[0x277D85DD0], v3[1] = 1107296256, v3[2] = sub_21D0E6204, v3[3] = &block_descriptor_51_2, v8 = _Block_copy(v3), v9 = v4, , , [v5 performBatchUpdates_], _Block_release(v8), LOBYTE(v5) = swift_isEscapingClosureAtFileLocation(), , , (v5))
  {
    __break(1u);
  }

  else
  {

    free(v3);
  }
}

uint64_t sub_21DA7CEEC()
{
  v1 = qword_27CE65580;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21DA7CF30(char a1)
{
  v3 = a1 & 1;
  v4 = qword_27CE65580;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return [*(v1 + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }

  return result;
}

void (*sub_21DA7CFAC(uint64_t *a1))(uint64_t a1)
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
  v5 = qword_27CE65580;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21DA7D040;
}

void sub_21DA7D040(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    [*(v1[3] + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }

  free(v1);
}

uint64_t sub_21DA7D0AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_27CE5AF20);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_21D11DA28;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D0E6204;
  v9[3] = &block_descriptor_59_1;
  v7 = _Block_copy(v9);

  [v5 performBatchUpdates_];
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

double sub_21DA7D1D4@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

__n128 sub_21DA7D1E8@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + qword_27CE65588) & 1) != 0 || (v3 = [v1 traitCollection], v4 = objc_msgSend(v3, sel_preferredContentSizeCategory), v3, LOBYTE(v3) = sub_21DBFB42C(), v4, (v3))
  {
    if (((*((*MEMORY[0x277D85000] & *v1) + 0x2D8))() & 1) == 0)
    {
      *a1 = 1;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 1;
      return result;
    }

    *a1 = 2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(&v7);
    if ((v10 & 1) == 0)
    {
      v6 = v8 & 1;
      result = v9;
      *a1 = v7;
      *(a1 + 8) = v6;
      *(a1 + 16) = result;
      *(a1 + 32) = 0;
      return result;
    }

    result.n128_u64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_21DA7D34C()
{
  sub_21DA7D1E8(&v20);
  if (v22 == 1 && v21 | *(&v21 + 1) | v20 | *(&v20 + 1))
  {
    sub_21DA7D5C8(&v20);
  }

  else
  {
    sub_21DA7DC5C(&v20);
  }

  v1 = v20;
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  v2 = *&v0[qword_27CE5AF20];
  v3 = [v2 arrangedSubviewRows];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    v5 = sub_21DBFA5EC();

    sub_21DBF8E0C();
    LOBYTE(v4) = sub_21D1D7AB4(v5, v1);

    if (v4)
    {
      return sub_21DA84AD0(&v15);
    }
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v8 = v15;
  *(v7 + 40) = v16;
  v9 = v18;
  *(v7 + 56) = v17;
  *(v7 + 72) = v9;
  *(v7 + 88) = v19;
  *(v7 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21DA84AC4;
  *(v10 + 24) = v7;
  aBlock[4] = sub_21D11DA28;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_151_0;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  [v2 performBatchUpdates_];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21DA7D5C8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D8))();
  v5 = qword_27CE655B8;
  v6 = *(v1 + qword_27CE655B8);
  v7 = MEMORY[0x277D84F90];
  if (v4)
  {
    if (v6)
    {
      v8 = v6;
    }

    v9 = *(v2 + qword_27CE65590);
    v58[4] = v6;
    v58[5] = v9;
    v10 = (v2 + qword_27CE65618);
    swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {
      v12 = v9;
      sub_21D639460(v11);
      v13 = v11;
      sub_21D5C5F74(v11);
    }

    else
    {
      v38 = v9;
    }

    v39 = 0;
    v22 = v58;
    v58[6] = v11;
    v57 = v7;
    v40 = v7;
    v7 = 3;
LABEL_28:
    if (v39 <= 3)
    {
      v41 = 3;
    }

    else
    {
      v41 = v39;
    }

    while (v39 != 3)
    {
      if (v41 == v39)
      {
        __break(1u);
        goto LABEL_61;
      }

      v42 = v58[v39++ + 4];
      if (v42)
      {
        v43 = v42;
        MEMORY[0x223D42D80]();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v40 = v57;
        v22 = v58;
        goto LABEL_28;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65670);
    swift_arrayDestroy();
    v35 = MEMORY[0x277D84F90];
    v22 = sub_21D210CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v45 = v22[2];
    v44 = v22[3];
    if (v45 >= v44 >> 1)
    {
      v22 = sub_21D210CD8((v44 > 1), v45 + 1, 1, v22);
    }

    v22[2] = v45 + 1;
    v22[v45 + 4] = v40;
    v46 = *(v2 + qword_27CE655B0);
    if (!v46)
    {
      v7 = MEMORY[0x277D84F90];
      goto LABEL_58;
    }

    v56[4] = *(v2 + qword_27CE655B0);
    v47 = *v10;
    if (*v10)
    {
      v48 = v46;
      sub_21D639460(v47);
      v49 = v47;
      sub_21D5C5F74(v47);
    }

    else
    {
      v50 = v46;
    }

    v51 = 0;
    v56[5] = v47;
    v57 = v35;
    while (v51 != 2)
    {
      v52 = v56[v51++ + 4];
      if (v52)
      {
        v53 = v52;
        MEMORY[0x223D42D80]();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v35 = v57;
      }
    }

    swift_arrayDestroy();
    v57 = v35;
    if (*(v2 + v5))
    {
      v7 = MEMORY[0x277D84F90];
      if (v35 >> 62 && sub_21DBFBD7C() < 0)
      {
        __break(1u);
        return;
      }

      sub_21DBD14CC(0, 0, v46);

      v35 = v57;
    }

    else
    {

      v7 = MEMORY[0x277D84F90];
    }

    v37 = v22[2];
    v54 = v22[3];
    if (v37 >= v54 >> 1)
    {
      v22 = sub_21D210CD8((v54 > 1), v37 + 1, 1, v22);
    }

    v22[2] = v37 + 1;
  }

  else
  {
    if (v6)
    {
      v14 = v6;
    }

    v15 = *(v2 + qword_27CE65590);
    v60[4] = v6;
    v60[5] = v15;
    v59 = v7;
    v16 = v15;
    v17 = 0;
    v18 = v7;
    while (v17 != 2)
    {
      v19 = v60[v17++ + 4];
      if (v19)
      {
        v20 = v19;
        MEMORY[0x223D42D80]();
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v18 = v59;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65670);
    swift_arrayDestroy();
    if (v18 >> 62)
    {
      v21 = sub_21DBFBD7C();
    }

    else
    {
      v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = sub_21D210CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = v22[2];
    v23 = v22[3];
    if (v24 >= v23 >> 1)
    {
      v22 = sub_21D210CD8((v23 > 1), v24 + 1, 1, v22);
    }

    v22[2] = v24 + 1;
    v22[v24 + 4] = v18;
    v25 = *(v2 + qword_27CE655B0);
    if (v25)
    {
      v26 = v7;
      v27 = v25;
      v28 = sub_21D4422A8(v27, v21);
      v30 = v22[2];
      v29 = v22[3];
      if (v30 >= v29 >> 1)
      {
        v22 = sub_21D210CD8((v29 > 1), v30 + 1, 1, v22);
      }

      v22[2] = v30 + 1;
      v22[v30 + 4] = v28;
      v7 = v26;
    }

    v31 = (v2 + qword_27CE65618);
    swift_beginAccess();
    v32 = *v31;
    if (!*v31)
    {
      goto LABEL_58;
    }

    sub_21D639460(v32);
    v33 = v32;
    sub_21D5C5F74(v32);
    v34 = v33;
    v35 = sub_21D4422A8(v34, v21);

    v37 = v22[2];
    v36 = v22[3];
    if (v37 >= v36 >> 1)
    {
      v22 = sub_21D210CD8((v36 > 1), v37 + 1, 1, v22);
    }

    v22[2] = v37 + 1;
  }

  v22[v37 + 4] = v35;
LABEL_58:
  if (qword_27CE56E40 != -1)
  {
LABEL_61:
    swift_once();
  }

  *a1 = v22;
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0;
  v55 = *&qword_27CE638A8;
  *(a1 + 32) = xmmword_27CE63898;
  *(a1 + 48) = v55;
  *(a1 + 64) = 1;
}

uint64_t sub_21DA7DC5C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v58 = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v56);
  if (v57)
  {
    v5 = *(v1 + qword_27CE65590);
    v6 = *(v3 + qword_27CE655B0);
    v55[4] = *(v3 + qword_27CE65590);
    v55[5] = v6;
    v7 = MEMORY[0x277D84F90];
    v56[0] = MEMORY[0x277D84F90];
    v8 = v6;
    v9 = v5;
    for (i = 0; i != 2; ++i)
    {
      v11 = v55[i + 4];
      if (v11)
      {
        v12 = v11;
        MEMORY[0x223D42D80]();
        if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v7 = v56[0];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65650);
    swift_arrayDestroy();
    v26 = (v7 >> 62);
    if (v7 >> 62)
    {
LABEL_51:
      v27 = sub_21DBFBD7C();
    }

    else
    {
      v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    if (v26)
    {
      v2 = sub_21D0D8CF0(0, &qword_280D176A0);
      sub_21DBF8E0C();
      v29 = sub_21DBFC33C();
    }

    else
    {
      sub_21DBF8E0C();
      sub_21DBFC65C();
      sub_21D0D8CF0(0, &qword_280D176A0);
      v29 = v7;
    }

    *(inited + 32) = v29;
    v30 = *(v3 + qword_27CE655B8);
    if (!v30)
    {
      goto LABEL_20;
    }

    v7 = v30;
    v2 = sub_21D4422A8(v7, v27);

    v31 = *(inited + 16);
    if (v31 >= *(inited + 24) >> 1)
    {
      goto LABEL_53;
    }

    while (1)
    {
      sub_21D5058D0(0, 0, 1, v2);

LABEL_20:
      v3 = (v3 + qword_27CE65618);
      swift_beginAccess();
      v32 = *v3;
      if (*v3)
      {
        sub_21D639460(v32);
        v2 = v32;
        sub_21D5C5F74(v32);
        v33 = v2;
        v3 = sub_21D4422A8(v33, v27);

        v35 = *(inited + 16);
        v34 = *(inited + 24);
        v7 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          inited = sub_21D210CD8((v34 > 1), v35 + 1, 1, inited);
        }

        *(inited + 16) = v7;
        v31 = inited + 8 * v35;
        *(v31 + 32) = v3;
      }

      if ((v27 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_53:
      inited = sub_21D210CD8(1, v31 + 1, 1, inited);
    }

    v53 = a1;
    v36 = MEMORY[0x277D84F90];
    if (v27)
    {
      a1 = v27;
      v3 = 0;
      v37 = *(inited + 16);
      v38 = (inited + 32);
      v7 = MEMORY[0x277D84F90];
      do
      {
        if (v37)
        {
          v54 = v36;
          sub_21DBFC01C();
          v26 = v38;
          v2 = v37;
          while (1)
          {
            v39 = *v26;
            if ((*v26 & 0xC000000000000001) != 0)
            {
              sub_21DBF8E0C();
              MEMORY[0x223D44740](v3, v39);
            }

            else
            {
              if (v3 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_51;
              }

              v40 = *(v39 + 8 * v3 + 32);
            }

            sub_21DBFBFEC();
            sub_21DBFC03C();
            sub_21DBFC04C();
            sub_21DBFBFFC();
            ++v26;
            if (!--v2)
            {
              v36 = v54;
              break;
            }
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_21D210CD8(0, *(v7 + 16) + 1, 1, v7);
        }

        v42 = *(v7 + 16);
        v41 = *(v7 + 24);
        if (v42 >= v41 >> 1)
        {
          v7 = sub_21D210CD8((v41 > 1), v42 + 1, 1, v7);
        }

        v3 = (v3 + 1);
        *(v7 + 16) = v42 + 1;
        *(v7 + 8 * v42 + 32) = v36;
        v36 = MEMORY[0x277D84F90];
      }

      while (v3 != a1);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v13 = 0;
    v49 = MEMORY[0x277D84F90];
    a1 = v53;
  }

  else
  {
    v13 = v56[2];
    v14 = v56[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FF10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21DC0AFB0;
    v16 = *(v1 + qword_27CE655B8);
    if (v16)
    {
      v17 = v16;
    }

    v18 = *(v1 + qword_27CE65590);
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v19 = qword_27CE655B0;
    v20 = *(v1 + qword_27CE655B0);
    *(v15 + 48) = v20;
    v21 = (v1 + qword_27CE65618);
    swift_beginAccess();
    v22 = *v21;
    if (*v21)
    {
      v23 = v20;
      v24 = v18;
      sub_21D639460(v22);
      v25 = v22;
      sub_21D5C5F74(v22);
    }

    else
    {
      v43 = v20;
      v44 = v18;
    }

    *(v15 + 56) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65660);
    sub_21D0D8CF0(0, &qword_280D176A0);
    sub_21DA84A14();
    v45 = sub_21DBFA41C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0);
    result = swift_allocObject();
    v7 = result;
    *(result + 16) = xmmword_21DC08D00;
    *(result + 32) = v45;
    v47 = *(v3 + v19);
    if (v47)
    {
      v48 = v47;
      result = sub_21D210E0C(0, 1, 1, MEMORY[0x277D84F90]);
      v49 = result;
      v51 = *(result + 16);
      v50 = *(result + 24);
      if (v51 >= v50 >> 1)
      {
        result = sub_21D210E0C((v50 > 1), v51 + 1, 1, result);
        v49 = result;
      }

      *(v49 + 16) = v51 + 1;
      v52 = (v49 + 24 * v51);
      v52[4] = v48;
      v52[5] = v14;
      v52[6] = 4;
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
    }
  }

  *a1 = v7;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = v49;
  *(a1 + 24) = v13;
  *(a1 + 32) = xmmword_21DC395A0;
  *(a1 + 48) = xmmword_21DC395A0;
  *(a1 + 64) = 0;
  return result;
}

void sub_21DA7E384(id a1, id a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0.0;
  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = [a1 tintColor];
  if (v5)
  {
    v6 = v5;
    [v5 getHue:0 saturation:0 brightness:&v9 alpha:0];

    if (v9 == 1.0)
    {
      v7 = [v2 traitCollection];
      if ([v7 accessibilityContrast] == 1)
      {
        v8 = sub_21DBFB24C();

        v7 = v8;
      }

      goto LABEL_7;
    }

LABEL_6:
    v7 = [v2 traitCollection];
    if (!a1)
    {
LABEL_10:

      return;
    }

LABEL_7:
    if (a2)
    {
      a2 = [a2 resolvedColorWithTraitCollection_];
    }

    [a1 setBackgroundColor_];

    goto LABEL_10;
  }

  __break(1u);
}

void sub_21DA7E4FC()
{
  if (qword_280D0C1F8 != -1)
  {
    swift_once();
  }

  v2 = *(&xmmword_280D0C200 + 1);
  v1 = *&xmmword_280D0C200;
  *&v3 = sub_21DA7D1E8(&v31).n128_u64[0];
  v4 = v31;
  if (v33 == 1 || (v32 & 1) != 0)
  {
    goto LABEL_15;
  }

  [*&v0[qword_27CE65590] frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v0 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v0 effectiveUserInterfaceLayoutDirection];
  v35.origin.x = v6;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = v12;
  CGRectGetMinY(v35);
  v36.origin.x = v14;
  v36.origin.y = v16;
  v36.size.width = v18;
  v36.size.height = v20;
  CGRectGetMinY(v36);
  v37.origin.x = v14;
  v37.origin.y = v16;
  v37.size.width = v18;
  v37.size.height = v20;
  CGRectGetMaxY(v37);
  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  CGRectGetMaxY(v38);
  v39.origin.x = v6;
  v39.origin.y = v8;
  v39.size.width = v10;
  v39.size.height = v12;
  MinX = CGRectGetMinX(v39);
  v40.origin.x = v14;
  v40.origin.y = v16;
  v40.size.width = v18;
  v40.size.height = v20;
  v29 = CGRectGetMinX(v40);
  v41.origin.x = v14;
  v41.origin.y = v16;
  v41.size.width = v18;
  v41.size.height = v20;
  MaxX = CGRectGetMaxX(v41);
  v42.origin.x = v6;
  v42.origin.y = v8;
  v42.size.width = v10;
  v42.size.height = v12;
  v23 = CGRectGetMaxX(v42);
  if (!v21)
  {
    v24 = MinX - v29;
LABEL_9:
    [v0 bounds];
    v25 = CGRectGetWidth(v43) * v4 - v24;
    if (v25 > 0.0)
    {
      v1 = v25;
    }

    else
    {
      v1 = 0.0;
    }

    if (qword_27CE56E30 != -1)
    {
      swift_once();
    }

    v2 = *&qword_27CE63888;
LABEL_15:
    v26 = *&v0[qword_27CE65590];

    [v26 setMaximumLayoutSize_];
    return;
  }

  if (v21 == 1)
  {
    v24 = MaxX - v23;
    goto LABEL_9;
  }

  if (qword_27CE56650 != -1)
  {
    swift_once();
  }

  v27 = sub_21DBF84BC();
  __swift_project_value_buffer(v27, qword_27CE5B1E8);
  v28 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v28);
  sub_21DAEAB00("unknown layout direction", 24, 2);
  __break(1u);
}

uint64_t sub_21DA7E7D4()
{
  v1 = *&v0[qword_27CE5AF20];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21DA85028;
  *(v3 + 24) = v2;
  v8[4] = sub_21D11DA28;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21D0E6204;
  v8[3] = &block_descriptor_162_1;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performBatchUpdates_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21DA7E934()
{
  v1 = qword_27CE655F8;
  swift_beginAccess();
  if (!*&v0[v1])
  {
    v2 = *&v0[qword_27CE65590];
    v3 = qword_27CE655D8;
    swift_beginAccess();
    v4 = *&v0[v3];
    v5 = v2;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [v0 tintColor];
    }

    v7 = v4;
    [v2 setTextColor_];
  }

  v8 = qword_27CE65608;
  swift_beginAccess();
  if (!*&v0[v8])
  {
    v9 = *&v0[qword_27CE655B0];
    if (v9)
    {
      v10 = qword_27CE655E8;
      swift_beginAccess();
      v11 = *&v0[v10];
      v12 = v9;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [v0 tintColor];
      }

      v14 = v11;
      [v9 setTextColor_];
    }
  }
}

uint64_t TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id static TTRIStaticTableViewStandardCell.Icon.custom(view:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 65;
  return a1;
}

id TTRIStaticTableViewStandardCell.RoundRectIcon.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TTRIStaticTableViewStandardCell.RoundRectIcon.tintColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *TTRIStaticTableViewStandardCell.RoundRectIcon.backgroundColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRIStaticTableViewStandardCell.CustomViewOptions.size.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

__n128 TTRIStaticTableViewStandardCell.CustomViewOptions.rectInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 TTRIStaticTableViewStandardCell.CustomViewOptions.rectInsets.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
  return result;
}

void sub_21DA7ECAC(char a1)
{
  v2 = a1 & 1;
  v3 = qword_27CE655A8;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    [*(v1 + qword_27CE65590) setEnabled_];
    v4 = *(v1 + qword_27CE655B0);
    if (v4)
    {
      [v4 setEnabled_];
    }

    v5 = *(v1 + qword_27CE655B8);
    if (v5)
    {
      if (*(v1 + v3))
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.4;
      }

      v7 = v5;
      [v7 setAlpha_];
    }
  }
}

uint64_t sub_21DA7ED88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_27CE655A0;
  swift_beginAccess();
  v11[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v12 = *(v3 + 64);
  v11[2] = v5;
  v11[3] = v6;
  v11[1] = v4;
  v7 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v7;
  *(a2 + 64) = *(v3 + 64);
  v8 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v8;
  return sub_21D1ADB0C(v11, &v10);
}

uint64_t sub_21DA7EE18(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v19 = a1[2];
  v20 = v2;
  v21 = *(a1 + 64);
  v3 = a1[1];
  v17 = *a1;
  v18 = v3;
  v4 = *a2 + qword_27CE655A0;
  swift_beginAccess();
  v22 = *v4;
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v26 = *(v4 + 64);
  v24 = v6;
  v25 = v7;
  v23 = v5;
  v9 = *(v4 + 32);
  v8 = *(v4 + 48);
  v10 = *(v4 + 16);
  v28 = *(v4 + 64);
  v27[2] = v9;
  v27[3] = v8;
  v27[1] = v10;
  v27[0] = *v4;
  *v4 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;
  *(v4 + 64) = v21;
  *(v4 + 32) = v12;
  *(v4 + 48) = v13;
  *(v4 + 16) = v11;
  sub_21D1ADB0C(&v17, v15);
  sub_21D1ADB0C(&v22, v15);
  sub_21D0CF7E0(v27, &unk_27CE5EA00);
  v15[2] = v24;
  v15[3] = v25;
  v16 = v26;
  v15[0] = v22;
  v15[1] = v23;
  sub_21DA7EF48(v15);
  return sub_21D0CF7E0(&v22, &unk_27CE5EA00);
}

uint64_t sub_21DA7EF48(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 48);
  v59 = *(a1 + 32);
  v60 = v4;
  v61 = *(a1 + 64);
  v5 = *(a1 + 16);
  v57 = *a1;
  v58 = v5;
  v6 = &v1[qword_27CE655A0];
  swift_beginAccess();
  v7 = *(v6 + 3);
  v62[2] = *(v6 + 2);
  v62[3] = v7;
  v8 = *(v6 + 1);
  v9 = *(v6 + 2);
  v62[0] = *v6;
  v62[1] = v8;
  v63 = v6[64];
  v56 = *(v6 + 2);
  v10 = *(&v8 + 1);
  v11 = *(v6 + 3);
  v53 = v9;
  v54 = v11;
  v55 = v62[0];
  v12 = v63;
  *&v52[7] = v57;
  v13 = *(&v58 + 1);
  *&v52[23] = v58;
  v50 = v59;
  v51 = v60;
  v14 = v61;
  if (*(&v8 + 1) >> 1 == 0xFFFFFFFFLL && v63 < 2u)
  {
    if (*(&v58 + 1) >> 1 == 0xFFFFFFFFLL && v61 < 2u)
    {
      aBlock = *v6;
      *&v41 = *(v6 + 2);
      *(&v41 + 1) = *(&v8 + 1);
      v15 = *(v6 + 3);
      v42 = *(v6 + 2);
      v43 = v15;
      v44 = v63;
      sub_21D1ADB0C(v62, &v35);
      sub_21D1ADB0C(&v57, &v35);
      return sub_21D0CF7E0(&aBlock, &unk_27CE5EA00);
    }

    sub_21D1ADB0C(v62, &aBlock);
    sub_21D1ADB0C(&v57, &aBlock);
  }

  else
  {
    v17 = *(v6 + 2);
    aBlock = *v6;
    *&v41 = v17;
    *(&v41 + 1) = *(&v8 + 1);
    v18 = *(v6 + 3);
    v42 = *(v6 + 2);
    v43 = v18;
    v44 = v63;
    v39 = v63;
    v37 = v42;
    v38 = v18;
    v35 = aBlock;
    v36 = v41;
    if (*(&v58 + 1) >> 1 != 0xFFFFFFFFLL || v61 >= 2u)
    {
      v30 = v57;
      v32 = v59;
      v33 = v60;
      v31 = v58;
      v34 = v61;
      sub_21D1ADB0C(v62, v28);
      sub_21D1ADB0C(&v57, v28);
      sub_21D1ADB0C(&aBlock, v28);
      v19 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v35, &v30);
      v26[2] = v32;
      v26[3] = v33;
      v27 = v34;
      v26[0] = v30;
      v26[1] = v31;
      sub_21D35D940(v26);
      v28[2] = v37;
      v28[3] = v38;
      v29 = v39;
      v28[0] = v35;
      v28[1] = v36;
      sub_21D35D940(v28);
      v30 = v55;
      *&v31 = v56;
      *(&v31 + 1) = v10;
      v32 = v53;
      v33 = v54;
      v34 = v12;
      result = sub_21D0CF7E0(&v30, &unk_27CE5EA00);
      if (v19)
      {
        return result;
      }

      goto LABEL_13;
    }

    v32 = v42;
    v33 = v43;
    v34 = v44;
    v30 = aBlock;
    v31 = v41;
    sub_21D1ADB0C(v62, v28);
    sub_21D1ADB0C(&v57, v28);
    sub_21D1ADB0C(&aBlock, v28);
    sub_21D35D940(&v30);
  }

  aBlock = v55;
  *&v41 = v56;
  *(&v41 + 1) = v10;
  v42 = v53;
  v43 = v54;
  v44 = v12;
  *v45 = *v52;
  *&v45[15] = *&v52[15];
  v46 = v13;
  v48 = v51;
  v47 = v50;
  v49 = v14;
  sub_21D0CF7E0(&aBlock, qword_27CE5ABE0);
LABEL_13:
  v20 = *&v1[qword_27CE5AF20];
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  *(v21 + 24) = ObjectType;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21DA85018;
  *(v22 + 24) = v21;
  *&v42 = sub_21D11DA28;
  *(&v42 + 1) = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v41 = sub_21D0E6204;
  *(&v41 + 1) = &block_descriptor_184_1;
  v23 = _Block_copy(&aBlock);
  v24 = v1;

  [v20 performBatchUpdates_];
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21DA7F39C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + qword_27CE65590) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_21DA7F410(uint64_t a1, void *a2)
{
  v2 = *(*a2 + qword_27CE65590);
  if (*(a1 + 8))
  {
    v3 = v2;
    v4 = sub_21DBFA12C();
  }

  else
  {
    v5 = v2;
    v4 = 0;
  }

  v6 = v4;
  [v2 setText_];
}

uint64_t sub_21DA7F4A4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27CE655D0);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();
}

id sub_21DA7F51C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_27CE65610;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = *(v3 + 40);
  *(a2 + 40) = v9;
  return sub_21D361B20(v4, v5, v6, v7, v8, v9);
}

void sub_21DA7F58C(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v13 = *(a1 + 24);
  v14 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *a2 + qword_27CE65610;
  v6 = *(a1 + 40);
  swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  *v5 = v2;
  *(v5 + 8) = v3;
  v12 = v3;
  *(v5 + 16) = v14;
  *(v5 + 24) = v13;
  *(v5 + 32) = v4;
  LOBYTE(v3) = *(v5 + 40);
  *(v5 + 40) = v6;
  sub_21D361B20(v2, v12, v14, v13, v4, v6);
  sub_21D361B20(v7, v8, v9, v10, v11, v3);
  sub_21D361BB4(v7, v8, v9, v10, v11, v3);
  v15[0] = v7;
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v16 = v3;
  sub_21DA7F6B4(v15);
  sub_21D361BB4(v7, v8, v9, v10, v11, v3);
}

void sub_21DA7F6B4(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  v30 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + qword_27CE65610;
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  if (v11 == 255)
  {
    sub_21D361B20(v7, v6, v9, v8, v10, 255);
    if (v4 == 255)
    {
      sub_21D361B20(v3, v2, v28, v29, v30, 255);
      sub_21D361BB4(v7, v6, v9, v8, v10, 255);
      return;
    }

    v25 = v2;
    v26 = v3;
    v13 = v3;
    v14 = v2;
    v15 = v28;
    v16 = v29;
    v17 = v30;
    sub_21D361B20(v13, v14, v28, v29, v30, v4);
  }

  else
  {
    aBlock = v7;
    v38 = v6;
    v39 = v9;
    v40 = v8;
    v41 = v10;
    LOBYTE(v42) = v11;
    if (v4 != 255)
    {
      v31 = v3;
      v32 = v2;
      v33 = v28;
      v34 = v29;
      v35 = v30;
      v36 = v4;
      sub_21D361B20(v7, v6, v9, v8, v10, v11);
      sub_21D361B20(v3, v2, v28, v29, v30, v4);
      sub_21D361B20(v7, v6, v9, v8, v10, v11);
      v12 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC14ExtraAccessoryO2eeoiySbAE_AEtFZ_0(&aBlock, &v31);
      sub_21D361BC8(v31, v32, v33, v34, v35, v36);
      sub_21D361BC8(aBlock, v38, v39, v40, v41, v42);
      sub_21D361BB4(v7, v6, v9, v8, v10, v11);
      if (v12)
      {
        return;
      }

      goto LABEL_9;
    }

    sub_21D361B20(v7, v6, v9, v8, v10, v11);
    v25 = v2;
    v26 = v3;
    v18 = v3;
    v19 = v2;
    v15 = v28;
    v16 = v29;
    v17 = v30;
    sub_21D361B20(v18, v19, v28, v29, v30, 255);
    sub_21D361B20(v7, v6, v9, v8, v10, v11);
    sub_21D361BC8(v7, v6, v9, v8, v10, v11);
  }

  sub_21D361BB4(v7, v6, v9, v8, v10, v11);
  sub_21D361BB4(v26, v25, v15, v16, v17, v4);
LABEL_9:
  v20 = *&v27[qword_27CE5AF20];
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21DA85028;
  *(v22 + 24) = v21;
  v41 = sub_21D11DA28;
  v42 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_21D0E6204;
  v40 = &block_descriptor_173_1;
  v23 = _Block_copy(&aBlock);
  v24 = v27;

  [v20 performBatchUpdates_];
  _Block_release(v23);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }
}

void *sub_21DA7FAA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + qword_27CE65618;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_21D639460(v4);
}

void *sub_21DA7FB08(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2 + qword_27CE65618;
  swift_beginAccess();
  v6 = *v5;
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  sub_21D639460(v2);
  return sub_21D5C5F74(v6);
}

uint64_t sub_21DA7FBA0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27CE65620);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();

  return sub_21DA7E7D4();
}

id sub_21DA7FC18(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27CE65580;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v6)
  {
    return [*(v3 + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }

  return result;
}

id TTRIStaticTableViewStandardCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

void *TTRIStaticTableViewStandardCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v3[qword_27CE655A8] = 1;
  v7 = &v3[qword_27CE655A0];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0x1FFFFFFFELL;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  v7[64] = 0;
  v8 = &v3[qword_27CE655C8];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[qword_27CE655D0];
  *v9 = 0;
  v9[1] = 0;
  v10 = qword_27CE655D8;
  *&v4[v10] = [objc_opt_self() labelColor];
  *&v4[qword_27CE655E8] = 0;
  v11 = qword_27CE655F0;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *&v4[v11] = sub_21D900614(4);
  *&v4[qword_27CE655F8] = 0;
  *&v4[qword_27CE65608] = 0;
  v12 = &v4[qword_27CE65610];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[40] = -1;
  v13 = &v4[qword_27CE65618];
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  v14 = &v4[qword_27CE65620];
  *v14 = 0;
  v14[1] = 0;
  v4[qword_27CE65580] = 0;
  v4[qword_27CE65588] = 0;
  v15 = &v4[qword_27CE655B8];
  *v15 = 0;
  v15[8] = 0;
  *&v4[qword_27CE655B0] = 0;
  *&v4[qword_27CE65628] = 0x3FD999999999999ALL;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setUserInteractionEnabled_];
  v17 = sub_21D900614(1);
  [v16 setFont_];

  [v16 setAdjustsFontForContentSizeCategory_];
  if (qword_27CE57018 != -1)
  {
    swift_once();
  }

  LODWORD(v18) = dword_27CE65570;
  [v16 setContentCompressionResistancePriority:1 forAxis:v18];
  if (qword_27CE57028 != -1)
  {
    swift_once();
  }

  LODWORD(v19) = dword_27CE65578;
  [v16 setContentHuggingPriority:1 forAxis:v19];
  if (qword_27CE56FF8 != -1)
  {
    swift_once();
  }

  LODWORD(v20) = dword_27CE65560;
  [v16 setContentCompressionResistancePriority:0 forAxis:v20];
  if (qword_27CE57008 != -1)
  {
    swift_once();
  }

  LODWORD(v21) = dword_27CE65568;
  [v16 setContentHuggingPriority:0 forAxis:v21];
  *&v4[qword_27CE65590] = v16;
  v22 = v16;
  if (a3)
  {
    v23 = sub_21DBFA12C();
  }

  else
  {
    v23 = 0;
  }

  v39.receiver = v4;
  v39.super_class = type metadata accessor for TTRIStaticTableViewStandardCell();
  v24 = objc_msgSendSuper2(&v39, sel_initWithStyle_reuseIdentifier_, a1, v23);

  v25 = *((*MEMORY[0x277D85000] & *v24) + 0x2A0);
  v26 = v24;
  [v16 setNumberOfLines_];
  v27 = *(v26 + qword_27CE5AF20);
  [v27 setHorizontalDistribution_];
  [v27 setVerticalDistribution_];
  [v27 setHorizontalAlignment_];
  [v27 setVerticalAlignment_];
  [v27 setColumnSpacing_];
  v28 = v27;
  [v28 setDebugBoundingBoxesEnabled_];
  [v28 setDelegate_];

  sub_21DA7D34C();
  sub_21DA7E934();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21DC08D00;
  v30 = sub_21DBF8D4C();
  v31 = MEMORY[0x277D74DB8];
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  sub_21DBFB5CC();
  swift_unknownObjectRelease();

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_21DC08D00;
  v33 = sub_21DBF8B3C();
  v34 = MEMORY[0x277D74CB8];
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  sub_21DBFB5CC();
  swift_unknownObjectRelease();

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21DC08D00;
  v36 = sub_21DBF88DC();
  v37 = MEMORY[0x277D74BF0];
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  sub_21DBFB5CC();

  swift_unknownObjectRelease();

  return v26;
}

void *sub_21DA8034C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIStaticTableViewStandardCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id TTRIStaticTableViewStandardCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_21DA80438(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for TTRIStaticTableViewStandardCell();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_tintColorDidChange);
  sub_21DA7E934();
}

void sub_21DA80494(void *a1, uint64_t a2, void *a3)
{
  if (*(a1 + qword_27CE5AF20) == a3)
  {
    v6 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
    v7 = a3;
    v8 = a1;
    v6(&v10);
    UITableViewCell.setSeparatorInsetType(_:)(&v10);
    sub_21D22BF80(v10);
  }

  else
  {
    v4 = a3;
    v5 = a1;
  }

  sub_21DA7E4FC();
}

uint64_t sub_21DA8066C(uint64_t a1, void *a2)
{
  type metadata accessor for UILayoutPriority(0);
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_21D367748();
  return sub_21DBF84EC();
}

uint64_t sub_21DA80704(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + qword_27CE655B0);
  if (v4)
  {
    v5 = *(a2 + 24);
    v6 = v4;
    [v6 setNumberOfLines_];
    [v6 setLineBreakMode_];
  }

  v27 = a1;
  v7 = *(a1 + qword_27CE5AF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
  v8 = sub_21DBFA5DC();
  [v7 setArrangedSubviewRows_];

  [v7 setRowSpacing_];
  v9 = *(a2 + 16);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 48);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = *(v11 - 2);
      v15 = [v7 columnIndexForArrangedSubview_];
      if (v15 == sub_21DBF4B4C() || (v16 = [v7 columnAtIndex_]) == 0)
      {
      }

      else
      {
        v17 = v16;
        [v16 setSpacingAfter_];
        [v17 setAlignment_];

        swift_unknownObjectRelease();
      }

      v11 += 3;
      --v10;
    }

    while (v10);
  }

  v18 = v27 + qword_27CE65618;
  result = swift_beginAccess();
  if (*v18)
  {
    v20 = *(v18 + 16);
    v21 = *(a2 + 32);
    v22 = *(a2 + 40);
    v23 = *(a2 + 48);
    v24 = *(a2 + 56);
    v25 = *v18;
    swift_unknownObjectRetain();
    [v25 setCustomAlignmentRectInsets_];
    ObjectType = swift_getObjectType();
    (*(v20 + 32))(*(a2 + 64), ObjectType, v20);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DA80968(uint64_t a1)
{
  v2 = (a1 + qword_27CE655A0);
  swift_beginAccess();
  v3 = v2[1];
  v73 = *v2;
  v74 = v3;
  v4 = v2[3];
  v75 = v2[2];
  v76 = v4;
  v5 = *(v2 + 64);
  v77 = *(v2 + 64);
  v7 = *(&v73 + 1);
  v6 = v73;
  v8 = *&v74;
  v9 = BYTE8(v74);
  v11 = *(&v75 + 1);
  v10 = *&v75;
  v13 = *(&v4 + 1);
  v12 = *&v4;
  if (*(&v74 + 1) >> 1 == 0xFFFFFFFFLL && v5 <= 1)
  {
    v14 = a1 + qword_27CE655B8;
    v15 = *(a1 + qword_27CE655B8);
    *v14 = 0;
    *(v14 + 8) = 0;
    goto LABEL_45;
  }

  v16 = v5 >> 6;
  if (v5 >> 6 <= 1)
  {
    if (!v16)
    {
      v17 = a1 + qword_27CE655B8;
      v18 = *(a1 + qword_27CE655B8);
      if (v18 && (v19 = *(v17 + 8), objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0) && (v19 & 1) == 0)
      {
        v22 = v20;
        v58 = v18;
        sub_21D1ADB0C(&v73, &v68);
        v59 = v58;
      }

      else
      {
        v70 = v75;
        v71 = v76;
        v72 = v77;
        v68 = v73;
        v69 = v74;
        v21 = objc_allocWithZone(MEMORY[0x277D755E8]);
        sub_21DA84A8C(&v68, v67);
        v22 = [v21 initWithImage_];
        [v22 setContentMode_];
        v23 = [v22 layer];
        [v23 setCornerCurve_];

        v24 = [v22 layer];
        [v24 setCornerRadius_];

        [v22 setClipsToBounds_];
        [v22 setUserInteractionEnabled_];
        if (v7 == 0.0)
        {
          v25 = COERCE_DOUBLE([objc_opt_self() whiteColor]);
        }

        else
        {
          v25 = v7;
        }

        v48 = *&v7;
        [v22 setTintColor_];

        v49 = qword_27CE655A8;
        swift_beginAccess();
        v50 = 0.4;
        if (*(a1 + v49))
        {
          v50 = 1.0;
        }

        [v22 setAlpha_];
        LODWORD(v51) = 1148846080;
        [v22 setLayoutSize:29.0 withContentPriority:{29.0, v51}];
        [v22 setCustomAlignmentRectInsets_];
      }

      [v22 setImage_];
      v6 = v22;
      sub_21DA7E384(v22, v8);

      sub_21D0CF7E0(&v73, &unk_27CE5EA00);
      goto LABEL_44;
    }

    v31 = a1 + qword_27CE655B8;
    v32 = *(a1 + qword_27CE655B8);
    if (v32)
    {
      sub_21D1ADB0C(&v73, v67);
      sub_21D1ADB0C(&v73, v67);
      sub_21D0D8CF0(0, &qword_280D176A0);
      v70 = v75;
      v71 = v76;
      v72 = v77;
      v68 = v73;
      v69 = v74;
      v33 = v32;
      sub_21DA84A8C(&v68, v67);
      v34 = sub_21DBFB63C();
      sub_21D0CF7E0(&v73, &unk_27CE5EA00);

      if (v34)
      {
LABEL_29:
        sub_21D0CF7E0(&v73, &unk_27CE5EA00);
        v15 = *v31;
        *v31 = v6;
        *(v31 + 8) = 1;
        goto LABEL_45;
      }

      if (v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v46 = v2[3];
      v70 = v2[2];
      v71 = v46;
      v72 = *(v2 + 64);
      v47 = v2[1];
      v68 = *v2;
      v69 = v47;
      sub_21D1ADB0C(&v73, v67);
      sub_21DA84A8C(&v68, v67);
      if (v9)
      {
LABEL_20:
        v36 = 29.0;
        v11 = 0.0;
        v10 = 10.0;
        v12 = 10.0;
        v13 = 0.0;
        v37 = 29.0;
LABEL_28:
        LODWORD(v35) = 1148846080;
        [v6 setLayoutSize:v36 withContentPriority:{v37, v35}];
        [v6 setCustomAlignmentRectInsets_];
        goto LABEL_29;
      }
    }

    v36 = v7;
    v37 = *&v8;
    if (v5)
    {
      v10 = (*&v8 + -29.0) * 0.5 + 10.0;
      HIDWORD(v35) = 0;
      v11 = (v7 + -29.0) * 0.5 + 0.0;
      v12 = v10;
      v13 = v11;
    }

    goto LABEL_28;
  }

  if (v16 == 2)
  {
    v17 = a1 + qword_27CE655B8;
    v26 = *(a1 + qword_27CE655B8);
    if (v26 && (v27 = *(v17 + 8), objc_opt_self(), (v28 = swift_dynamicCastObjCClass()) != 0) && (v27 & 1) == 0)
    {
      v22 = v28;
      v60 = v26;
      sub_21D1ADB0C(&v73, &v68);
      v61 = v60;
      if (*&v8 != 0.0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v70 = v75;
      v71 = v76;
      v72 = v77;
      v68 = v73;
      v69 = v74;
      v29 = objc_allocWithZone(MEMORY[0x277D755E8]);
      sub_21DA84A8C(&v68, v67);
      v22 = [v29 initWithImage_];
      [v22 setContentMode_];
      [v22 setClipsToBounds_];
      [v22 setUserInteractionEnabled_];
      if (v7 == 0.0)
      {
        v30 = COERCE_DOUBLE([objc_opt_self() secondaryLabelColor]);
      }

      else
      {
        v30 = v7;
      }

      v52 = *&v7;
      [v22 setTintColor_];

      LODWORD(v53) = 1148846080;
      [v22 setLayoutSize:29.0 withContentPriority:{29.0, v53}];
      [v22 setCustomAlignmentRectInsets_];

      if (*&v8 != 0.0)
      {
LABEL_37:
        v54 = v6;
        v55 = v8;
        if (v6)
        {
LABEL_38:
          v56 = v8;
          v57 = [v6 imageWithSymbolConfiguration_];
LABEL_43:
          [v22 setImage_];

          v65 = v22;
          sub_21DA7E384(v22, 0);

          sub_21D0CF7E0(&v73, &unk_27CE5EA00);
LABEL_44:

          v15 = *v17;
          *v17 = v22;
          *(v17 + 8) = 0;
          goto LABEL_45;
        }

LABEL_42:
        v64 = v8;
        v57 = 0;
        goto LABEL_43;
      }
    }

    v62 = objc_opt_self();
    v63 = v6;
    v55 = [v62 configurationWithScale_];
    if (v6)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

  v38 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v39 = [objc_opt_self() clearColor];
  [v38 setBackgroundColor_];

  v41 = a1 + qword_27CE655B8;
  v42 = *(a1 + qword_27CE655B8);
  if (!v42 || (sub_21D0D8CF0(0, &qword_280D176A0), v43 = v38, v44 = v42, v45 = sub_21DBFB63C(), v44, v43, (v45 & 1) == 0))
  {
    LODWORD(v40) = 1148846080;
    [v38 setLayoutSize:29.0 withContentPriority:{29.0, v40}];
    [v38 setCustomAlignmentRectInsets_];
  }

  v15 = *v41;
  *v41 = v38;
  *(v41 + 8) = 1;
LABEL_45:

  return sub_21DA7D34C();
}

void sub_21DA811B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + qword_27CE655B8);
  v7 = v5;
  if (v5)
  {
    v6 = v5;
    v5 = v7;
  }

  sub_21DA7E384(v5, a4);
}

uint64_t sub_21DA81220(char *a1)
{
  v2 = qword_27CE655F8;
  swift_beginAccess();
  v3 = *&a1[v2];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 string];
    v6 = sub_21DBFA16C();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      [*&a1[qword_27CE65590] setAttributedText_];
      goto LABEL_19;
    }
  }

  v10 = qword_27CE65590;
  v11 = [*&a1[qword_27CE65590] text];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = sub_21DBFA16C();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = *&a1[v10];
    v18 = [v17 font];
    [v17 setFont_];

    v19 = *&a1[v10];
    v20 = qword_27CE655D8;
    swift_beginAccess();
    v21 = *&a1[v20];
    v22 = v19;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [a1 tintColor];
    }

    v25 = v21;
    [v19 setTextColor_];

    v24 = *&a1[v10];
    v26 = [v24 text];
    if (v26)
    {
      v27 = v26;
      sub_21DBFA16C();

      v4 = sub_21DBFA12C();
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
LABEL_13:
    v24 = *&a1[v10];
    v4 = sub_21DBFA12C();
  }

  [v24 setText_];

LABEL_19:
  return sub_21DA7D34C();
}

uint64_t sub_21DA81488(void *a1)
{
  v2 = qword_27CE65608;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    v4 = [v3 string];
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v8 = (a1 + qword_27CE655C8);
    swift_beginAccess();
    v7 = v8[1];
    if (!v7)
    {
LABEL_10:
      v13 = *(a1 + qword_27CE655B0);
      *(a1 + qword_27CE655B0) = 0;
      goto LABEL_22;
    }

    v5 = *v8;
  }

  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = qword_27CE655B0;
  v11 = *(a1 + qword_27CE655B0);
  if (v11)
  {
    v12 = *(a1 + qword_27CE655B0);
  }

  else
  {
    v12 = sub_21DA84B04(a1);
  }

  v14 = qword_27CE655F0;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = v11;
  [v12 setFont_];
  v17 = qword_27CE655E8;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (v18)
  {
    v19 = *(a1 + v17);
  }

  else
  {
    v19 = [a1 tintColor];
    v18 = 0;
  }

  v20 = v18;
  [v12 setTextColor_];

  if (*(a1 + v2))
  {
    [v12 setAttributedText_];
  }

  else
  {
    v21 = a1 + qword_27CE655C8;
    swift_beginAccess();
    if (*(v21 + 1))
    {
      sub_21DBF8E0C();
      v22 = sub_21DBFA12C();
    }

    else
    {
      v22 = 0;
    }

    [v12 setText_];
  }

  v13 = *(a1 + v10);
  *(a1 + v10) = v12;
LABEL_22:

  return sub_21DA7D34C();
}

uint64_t sub_21DA816E0(uint64_t a1)
{
  v2 = a1 + qword_27CE65610;
  swift_beginAccess();
  v75 = a1;
  v3 = a1 + qword_27CE65618;
  if (*(v2 + 40) == 255)
  {
    swift_beginAccess();
    goto LABEL_5;
  }

  v73 = *(v2 + 40);
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v76 = *(v2 + 24);
  v7 = *(v2 + 32);
  swift_beginAccess();
  v8 = *v3;
  v9 = *(v3 + 8);
  if (*v3)
  {
    swift_unknownObjectRetain();
    v72 = v9;
  }

  else
  {
    v72 = 0;
  }

  sub_21D361B20(v4, v5, v6, v76, v7, v73);
  sub_21D639460(v8);
  sub_21D5C5F74(v8);
  v70 = v4;
  if (!v73)
  {
    if (v7)
    {
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v14 = v7;
    }

    else
    {
      v20 = objc_opt_self();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v14 = [v20 secondaryLabelColor];
    }

    v21 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v21 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v71 = v6;
      v67 = v5;
      v68 = v7;
      if (v72 && (type metadata accessor for TTRIStaticTableViewDisclosureTextAccessoryProvider(), (v22 = swift_dynamicCastClass()) != 0))
      {
        v11 = v22;
        v23 = v7;
        swift_unknownObjectRetain();
      }

      else
      {
        v24 = objc_allocWithZone(MEMORY[0x277D756B8]);
        v25 = v7;
        v26 = [v24 init];
        [v26 setNumberOfLines_];
        [v26 setUserInteractionEnabled_];
        if (qword_280D176B8 != -1)
        {
          swift_once();
        }

        v27 = sub_21D900614(1);
        [v26 setFont_];

        [v26 setAdjustsFontForContentSizeCategory_];
        type metadata accessor for UILayoutPriority(0);
        v82 = 1132068864;
        v81 = 1065353216;
        sub_21D367748();
        sub_21DBF84EC();
        LODWORD(v28) = v77;
        [v26 setContentCompressionResistancePriority:0 forAxis:v28];
        LODWORD(v29) = 1144750080;
        [v26 setContentHuggingPriority:0 forAxis:v29];
        [v26 setTextColor_];
        v30 = objc_allocWithZone(type metadata accessor for TTRIStaticTableViewDisclosureTextAccessoryProvider());
        v11 = TTRIStaticTableViewDisclosureTextAccessoryProvider.init(label:)(v26);
        v31 = v11 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_delegate;
        swift_beginAccess();
        *(v31 + 8) = &protocol witness table for TTRIStaticTableViewStandardCell;
        swift_unknownObjectWeakAssign();
      }

      v32 = (v11 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text);
      swift_beginAccess();
      v33 = *v32;
      v34 = v32[1];
      v35 = v32[2];
      v36 = v32[3];
      v37 = v32[4];
      *v32 = v70;
      v32[1] = v67;
      v32[2] = v71;
      v32[3] = v76;
      v32[4] = v14;
      v38 = v14;
      *&v77 = v33;
      *(&v77 + 1) = v34;
      v78 = v35;
      v79 = v36;
      v80 = v37;
      sub_21D369928(&v77);

      v39 = (v75 + qword_27CE65620);
      swift_beginAccess();
      v40 = *v39;
      v41 = v39[1];
      v42 = (v11 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_accessibilityDifferentiateWithoutColorsIcon);
      swift_beginAccess();
      *v42 = v40;
      v42[1] = v41;
      sub_21DBF8E0C();

      v43 = *(v11 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
      v44 = v32[1];
      v45 = v32[2];
      v46 = v32[3];
      v47 = v32[4];
      *&v77 = *v32;
      *(&v77 + 1) = v44;
      v78 = v45;
      v79 = v46;
      v80 = v47;
      v48 = v47;
      sub_21DBF8E0C();
      v5 = v67;
      sub_21DBF8E0C();
      v49 = sub_21D36AA04(&v77);
      v50 = v80;

      [v43 setAttributedText_];
      v12 = &protocol witness table for TTRIStaticTableViewDisclosureTextAccessoryProvider;
      v7 = v68;
      v13 = *v3;
      if (!*v3)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

    v66 = v7;

    sub_21D361BB4(v4, v5, v6, v76, v7, 0);
    swift_unknownObjectRelease();
LABEL_5:
    v10 = *v3;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 0;
    goto LABEL_40;
  }

  v71 = v6;
  if (v73 == 1)
  {
    v11 = v72;
    if (v72 && object_getClass(v72) == _TtC15RemindersUICoreP33_9E3A88BD467F4112E1709B34BEFAF4D318CustomViewProvider && v72[2] == v4)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for CustomViewProvider();
      v11 = swift_allocObject();
      *(v11 + 16) = v4;
      sub_21D361B20(v4, v5, v71, v76, v7, 1);
    }

    v12 = &off_282EE43A0;
    v13 = *v3;
    if (!*v3)
    {
      goto LABEL_30;
    }

LABEL_18:
    swift_unknownObjectRetain();
    sub_21D639460(v13);
    v15 = v5;
    v16 = v13;
    sub_21D5C5F74(v13);
    v17 = v16;
    v5 = v15;
    v18 = v17;
    v19 = v17;
    goto LABEL_31;
  }

  sub_21D361B34(v4, v5, v6, v76, v7, 2);
  v11 = v4;
  v12 = v5;
  v13 = *v3;
  if (*v3)
  {
    goto LABEL_18;
  }

LABEL_30:
  sub_21D0D8CF0(0, &qword_280D176A0);
  swift_unknownObjectRetain();
  v51 = sub_21DBFA5DC();
  v18 = [objc_opt_self() containerBoxViewWithArrangedSubviews_];

  [v18 setHorizontalAlignment_];
  [v18 setVerticalAlignment_];
  v19 = 0;
LABEL_31:
  ObjectType = swift_getObjectType();
  v74 = (v12[1])(ObjectType, v12);
  v52 = v18;
  v53 = [v52 arrangedSubviews];
  if (!v53 || (v54 = v53, sub_21D0D8CF0(0, &qword_280D176A0), v55 = sub_21DBFA5EC(), v54, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450), v56 = swift_allocObject(), *(v56 + 16) = xmmword_21DC09CF0, *(v56 + 32) = v74, v57 = v74, v58 = sub_21D114F14(v55, v56), , , (v58 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_21DC09CF0;
    *(v59 + 32) = v74;
    sub_21D0D8CF0(0, &qword_280D176A0);
    v60 = v74;
    v61 = sub_21DBFA5DC();

    [v52 setArrangedSubviews_];

    if (qword_280D0C1F8 != -1)
    {
      swift_once();
    }

    LODWORD(v62) = 1144750080;
    [v52 setLayoutSize:xmmword_280D0C200 withContentPriority:v62];
    if ((v12[2])(ObjectType, v12))
    {
      type metadata accessor for UILayoutPriority(0);
      v83 = 1065353216;
      v84 = 1132068864;
      sub_21D367748();
      sub_21DBF84EC();
      LODWORD(v63) = v77;
      [v52 setContentCompressionResistancePriority:0 forAxis:v63];
    }
  }

  v85 = &unk_282F3F750;
  v64 = swift_dynamicCastObjCProtocolConditional();
  if (v64)
  {
    swift_unknownObjectRetain();
  }

  [v52 setDelegate_];
  swift_unknownObjectRelease();
  sub_21D361BB4(v70, v5, v71, v76, v7, v73);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v10 = *v3;
  *v3 = v52;
  *(v3 + 8) = v11;
  *(v3 + 16) = v12;
LABEL_40:
  sub_21D5C5F74(v10);
  return sub_21DA7D34C();
}

void sub_21DA820B0()
{
  sub_21D539DA4(*(v0 + qword_27CE655A0), *(v0 + qword_27CE655A0 + 8), *(v0 + qword_27CE655A0 + 16), *(v0 + qword_27CE655A0 + 24), *(v0 + qword_27CE655A0 + 32), *(v0 + qword_27CE655A0 + 40), *(v0 + qword_27CE655A0 + 48), *(v0 + qword_27CE655A0 + 56), *(v0 + qword_27CE655A0 + 64));

  sub_21D361BB4(*(v0 + qword_27CE65610), *(v0 + qword_27CE65610 + 8), *(v0 + qword_27CE65610 + 16), *(v0 + qword_27CE65610 + 24), *(v0 + qword_27CE65610 + 32), *(v0 + qword_27CE65610 + 40));
  sub_21D5C5F74(*(v0 + qword_27CE65618));

  v1 = *(v0 + qword_27CE655B0);
}

id TTRIStaticTableViewStandardCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIStaticTableViewStandardCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21DA8222C(uint64_t a1)
{
  v2 = a1 + qword_27CE655A0;
  sub_21D539DA4(*(a1 + qword_27CE655A0), *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));

  sub_21D361BB4(*(a1 + qword_27CE65610), *(a1 + qword_27CE65610 + 8), *(a1 + qword_27CE65610 + 16), *(a1 + qword_27CE65610 + 24), *(a1 + qword_27CE65610 + 32), *(a1 + qword_27CE65610 + 40));
  sub_21D5C5F74(*(a1 + qword_27CE65618));

  v3 = *(a1 + qword_27CE655B0);
}

uint64_t _s15RemindersUICore31TTRIStaticTableViewStandardCellC06CustomE7OptionsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

LABEL_10:
    if (*(a1 + 56))
    {
      if ((*(a2 + 56) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 56) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 24), *(a2 + 24)), vceqq_f64(*(a1 + 40), *(a2 + 40))), xmmword_21DC395B0)) & 0xF) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_21DA8247C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17688);
    v10 = v7;
    v11 = v4;
    v12 = sub_21DBFB63C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D1B8F0);
    v13 = v8;
    v14 = v5;
    v15 = sub_21DBFB63C();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (v9)
    {
      sub_21D0D8CF0(0, a3);
      v16 = v9;
      v17 = v6;
      v18 = sub_21DBFB63C();

      if (v18)
      {
        return 1;
      }
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v39 = a1[2];
  v40 = v2;
  v4 = a1[1];
  v37 = *a1;
  v38 = v4;
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  *&v42[32] = *(a2 + 32);
  *&v42[48] = v5;
  v7 = *(a2 + 16);
  *v42 = *a2;
  *&v42[16] = v7;
  v8 = a1[3];
  v44[2] = v39;
  v44[3] = v8;
  v44[0] = v37;
  v44[1] = v3;
  v46 = *v42;
  v49 = *(a2 + 48);
  v48 = *&v42[32];
  v41 = *(a1 + 64);
  v43 = *(a2 + 64);
  v45 = *(a1 + 64);
  v50 = *(a2 + 64);
  v47 = v6;
  v9 = *(&v37 + 1);
  v10 = v41;
  v11 = v41 >> 6;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      if ((v43 & 0xC0) == 0x80)
      {
        v25 = v37;
        *&v26 = v38;
        v30 = *v42;
        v31 = *&v42[16];
        sub_21DA84A8C(v42, &v32);
        sub_21DA84A8C(&v37, &v32);
        sub_21DA84A8C(v42, &v32);
        sub_21DA84A8C(&v37, &v32);
        v12 = &unk_27CE65680;
        goto LABEL_8;
      }
    }

    else if (v43 == 192)
    {
      v17 = vorrq_s8(vorrq_s8(*v42, *&v42[32]), vorrq_s8(*&v42[16], *&v42[48]));
      if (!*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
      {
        sub_21D0CF7E0(v44, &qword_27CE65690);
        v13 = 1;
        return v13 & 1;
      }
    }

    goto LABEL_15;
  }

  if (v11)
  {
    v14 = v43;
    if ((v43 & 0xC0) == 0x40)
    {
      v24 = v38;
      v19 = v40;
      v20 = v39;
      v22 = *&v42[24];
      v23 = *&v42[8];
      v21 = *&v42[40];
      v15 = *&v42[56];
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21DA84A8C(v42, &v32);
      sub_21DA84A8C(&v37, &v32);
      v16 = sub_21DBFB63C();
      sub_21D0CF7E0(v44, &qword_27CE65690);
      if (v16)
      {
        v32 = v9;
        v33 = v24;
        v34 = v20;
        v35 = v19;
        v36 = v10 & 0x3F;
        v25 = v23;
        v26 = v22;
        v27 = v21;
        v28 = v15;
        v29 = v14 & 0x3F;
        v13 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC06CustomE7OptionsV2eeoiySbAE_AEtFZ_0(&v32, &v25);
        return v13 & 1;
      }

LABEL_16:
      v13 = 0;
      return v13 & 1;
    }

LABEL_15:
    sub_21DA84A8C(v42, &v32);
    sub_21DA84A8C(&v37, &v32);
    sub_21D0CF7E0(v44, &qword_27CE65690);
    goto LABEL_16;
  }

  if (v43 > 0x3Fu)
  {
    goto LABEL_15;
  }

  v25 = v37;
  *&v26 = v38;
  v30 = *v42;
  v31 = *&v42[16];
  sub_21DA84A8C(v42, &v32);
  sub_21DA84A8C(&v37, &v32);
  sub_21DA84A8C(v42, &v32);
  sub_21DA84A8C(&v37, &v32);
  v12 = &qword_280D1B8F0;
LABEL_8:
  v13 = sub_21DA8247C(&v25, &v30, v12);
  sub_21D0CF7E0(v44, &qword_27CE65690);
  sub_21D35D940(v42);
  sub_21D35D940(&v37);
  return v13 & 1;
}

BOOL _s15RemindersUICore31TTRIStaticTableViewStandardCellC06SideByH18TitleConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (v2 == v3)
    {
      v4 = *(a2 + 8);
    }

    else
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24);
}

BOOL _s15RemindersUICore31TTRIStaticTableViewStandardCellC14ExtraAccessoryO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v49 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v6 == 1)
    {
      if (v12 == 1)
      {
        v13 = *(a2 + 24);
        v14 = *(a2 + 8);
        sub_21D361B34(*a2, v14, v10, v13, v11, 1);
        sub_21D361B34(v3, v2, v5, v4, v49, 1);
        sub_21D361B34(v8, v14, v10, v13, v11, 1);
        sub_21D361B34(v3, v2, v5, v4, v49, 1);
        sub_21D361BC8(v3, v2, v5, v4, v49, 1);
        sub_21D361BC8(v8, v14, v10, v13, v11, 1);
        sub_21D361BC8(v3, v2, v5, v4, v49, 1);
        v15 = v8;
        v16 = v14;
        v17 = v10;
        v18 = v13;
        v19 = v11;
        v20 = 1;
LABEL_19:
        sub_21D361BC8(v15, v16, v17, v18, v19, v20);
        return v3 == v8;
      }
    }

    else if (v12 == 2)
    {
      v31 = *(a2 + 24);
      v32 = *(a2 + 8);
      sub_21D361B34(*a2, v32, v10, v31, v11, 2);
      sub_21D361B34(v3, v2, v5, v4, v49, 2);
      sub_21D361B34(v8, v32, v10, v31, v11, 2);
      sub_21D361B34(v3, v2, v5, v4, v49, 2);
      sub_21D361BC8(v3, v2, v5, v4, v49, 2);
      sub_21D361BC8(v8, v32, v10, v31, v11, 2);
      sub_21D361BC8(v3, v2, v5, v4, v49, 2);
      v15 = v8;
      v16 = v32;
      v17 = v10;
      v18 = v31;
      v19 = v11;
      v20 = 2;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (*(a2 + 40))
  {
LABEL_20:
    v48 = *(a2 + 8);
    sub_21D361B34(*a2, v48, v10, v9, v11, v12);
    sub_21D361B34(v3, v2, v5, v4, v49, v6);
    sub_21D361BC8(v3, v2, v5, v4, v49, v6);
    v33 = v8;
    v34 = v48;
    v35 = v10;
    v36 = v9;
    v37 = v11;
    v38 = v12;
LABEL_21:
    sub_21D361BC8(v33, v34, v35, v36, v37, v38);
    return 0;
  }

  if (v3 != v8 || v2 != v7)
  {
    v21 = *(a2 + 8);
    v22 = sub_21DBFC64C();
    v7 = v21;
    if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (!v4)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_24:
    v39 = v9;
    v40 = v7;
    sub_21D361B34(v8, v7, v10, v39, v11, 0);
    sub_21D361B34(v3, v2, v5, v4, v49, 0);
    sub_21D361BC8(v3, v2, v5, v4, v49, 0);
    v33 = v8;
    v34 = v40;
    v35 = v10;
    v36 = v39;
    v37 = v11;
    v38 = 0;
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_24;
  }

  if (v5 != v10 || v4 != v9)
  {
    v23 = v9;
    v24 = v8;
    v25 = v7;
    v26 = sub_21DBFC64C();
    v7 = v25;
    v8 = v24;
    v9 = v23;
    if ((v26 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_14:
  if (v49)
  {
    if (v11)
    {
      v46 = v9;
      v27 = v7;
      v47 = v7;
      sub_21D0D8CF0(0, &qword_280D1B8F0);
      sub_21D361B34(v8, v27, v10, v9, v11, 0);
      sub_21D361B34(v3, v2, v5, v4, v49, 0);
      v28 = v11;
      v29 = v49;
      LOBYTE(v27) = sub_21DBFB63C();
      sub_21D361BC8(v3, v2, v5, v4, v49, 0);
      sub_21D361BC8(v8, v47, v10, v46, v11, 0);

      return v27 & 1;
    }

    v44 = v9;
    v45 = v7;
    sub_21D361B34(v8, v7, v10, v44, 0, 0);
    sub_21D361B34(v3, v2, v5, v4, v49, 0);
    sub_21D361BC8(v3, v2, v5, v4, v49, 0);
    v33 = v8;
    v34 = v45;
    v35 = v10;
    v36 = v44;
    v37 = 0;
    v38 = 0;
    goto LABEL_21;
  }

  v41 = v9;
  v42 = v7;
  sub_21D361B34(v8, v7, v10, v41, v11, 0);
  sub_21D361B34(v3, v2, v5, v4, 0, 0);
  v43 = v11;
  sub_21D361BC8(v3, v2, v5, v4, 0, 0);
  sub_21D361BC8(v8, v42, v10, v41, v11, 0);
  if (v11)
  {

    return 0;
  }

  return 1;
}

uint64_t type metadata accessor for TTRIStaticTableViewStandardCell()
{
  result = qword_27CE65640;
  if (!qword_27CE65640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DA82FB4(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = *&a1[qword_27CE5AF20];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = ObjectType;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21DA84A84;
  *(v5 + 24) = v4;
  v9[4] = sub_21D11DA28;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D0E6204;
  v9[3] = &block_descriptor_141_0;
  v6 = _Block_copy(v9);
  v7 = a1;

  [v3 performBatchUpdates_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21DA83120(char *a1)
{
  v2 = &a1[qword_27CE655A0];
  result = swift_beginAccess();
  v4 = v2[64];
  v23 = v2[64];
  v5 = *(v2 + 3);
  v21 = *(v2 + 2);
  v22 = v5;
  v6 = *(v2 + 1);
  v19 = *v2;
  v20 = v6;
  v8 = *(&v6 + 1) >> 1 != 0xFFFFFFFFLL || v4 > 1;
  if (v4 <= 0x3F && v8)
  {
    v9 = v20;
    v16 = v19;
    v10 = *&a1[qword_27CE5AF20];
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v16;
    *(v11 + 40) = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_21DA84A78;
    *(v12 + 24) = v11;
    aBlock[4] = sub_21D11DA28;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_131_1;
    v13 = _Block_copy(aBlock);
    sub_21D1ADB0C(&v19, v17);
    sub_21D1ADB0C(&v19, v17);
    v14 = a1;

    [v10 performBatchUpdates_];
    sub_21D0CF7E0(&v19, &unk_27CE5EA00);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void _s15RemindersUICore31TTRIStaticTableViewStandardCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + qword_27CE655A8) = 1;
  v2 = v0 + qword_27CE655A0;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0x1FFFFFFFELL;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  v3 = (v0 + qword_27CE655C8);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + qword_27CE655D0);
  *v4 = 0;
  v4[1] = 0;
  v5 = qword_27CE655D8;
  *(v1 + v5) = [objc_opt_self() labelColor];
  *(v1 + qword_27CE655E8) = 0;
  v6 = qword_27CE655F0;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *(v1 + v6) = sub_21D900614(4);
  *(v1 + qword_27CE655F8) = 0;
  *(v1 + qword_27CE65608) = 0;
  v7 = v1 + qword_27CE65610;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 40) = -1;
  v8 = (v1 + qword_27CE65618);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  v9 = (v1 + qword_27CE65620);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + qword_27CE65580) = 0;
  *(v1 + qword_27CE65588) = 0;
  v10 = v1 + qword_27CE655B8;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v1 + qword_27CE655B0) = 0;
  *(v1 + qword_27CE65628) = 0x3FD999999999999ALL;
  sub_21DBFC31C();
  __break(1u);
}

void _s15RemindersUICore31TTRIStaticTableViewStandardCellC15reuseIdentifierACSgSSSg_tcfc_0()
{
  v1 = v0;
  *(v0 + qword_27CE655A8) = 1;
  v2 = v0 + qword_27CE655A0;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0x1FFFFFFFELL;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  v3 = (v0 + qword_27CE655C8);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + qword_27CE655D0);
  *v4 = 0;
  v4[1] = 0;
  v5 = qword_27CE655D8;
  *(v1 + v5) = [objc_opt_self() labelColor];
  *(v1 + qword_27CE655E8) = 0;
  v6 = qword_27CE655F0;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *(v1 + v6) = sub_21D900614(4);
  *(v1 + qword_27CE655F8) = 0;
  *(v1 + qword_27CE65608) = 0;
  v7 = v1 + qword_27CE65610;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 40) = -1;
  v8 = (v1 + qword_27CE65618);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  v9 = (v1 + qword_27CE65620);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + qword_27CE65580) = 0;
  *(v1 + qword_27CE65588) = 0;
  v10 = v1 + qword_27CE655B8;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v1 + qword_27CE655B0) = 0;
  *(v1 + qword_27CE65628) = 0x3FD999999999999ALL;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t keypath_set_69Tm(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(id *))
{
  v8 = *a1;
  v6 = v8;
  return a5(&v8);
}

id keypath_get_68Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t keypath_get_64Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
  return sub_21DBF8E0C();
}

uint64_t getEnumTagSinglePayload for TTRIStaticTableViewStandardCell.CustomViewOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIStaticTableViewStandardCell.CustomViewOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
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

  *(result + 57) = v3;
  return result;
}

uint64_t initializeWithCopy for TTRIStaticTableViewStandardCell.Icon(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_21D361F04(*a2, v4, v5, v6, v7, v8, v9, v10, v11);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  return a1;
}

uint64_t assignWithCopy for TTRIStaticTableViewStandardCell.Icon(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_21D361F04(*a2, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  sub_21D362050(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  return a1;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for TTRIStaticTableViewStandardCell.Icon(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
  v14 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v14;
  *(a1 + 64) = v3;
  sub_21D362050(v4, v6, v5, v7, v8, v9, v10, v11, v12);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIStaticTableViewStandardCell.Icon(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for TTRIStaticTableViewStandardCell.Icon(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21DA847C8(uint64_t a1)
{
  v1 = *(a1 + 64) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21DA847F4(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 64) & 1 | (a2 << 6);
    *(result + 24) &= 1uLL;
    *(result + 64) = v2;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = -64;
  }

  return result;
}

uint64_t initializeWithCopy for TTRIStaticTableViewStandardCell.ExtraAccessory(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_21D361B34(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t assignWithCopy for TTRIStaticTableViewStandardCell.ExtraAccessory(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_21D361B34(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v14 = *(a1 + 40);
  *(a1 + 40) = v8;
  sub_21D361BC8(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for TTRIStaticTableViewStandardCell.ExtraAccessory(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v3;
  v11 = *(a1 + 40);
  *(a1 + 40) = v4;
  sub_21D361BC8(v5, v7, v6, v8, v9, v11);
  return a1;
}

unint64_t sub_21DA84A14()
{
  result = qword_280D0C380;
  if (!qword_280D0C380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE65660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C380);
  }

  return result;
}

uint64_t sub_21DA84AD0(uint64_t a1)
{

  return a1;
}

id sub_21DA84B04(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  [v2 setUserInteractionEnabled_];
  [v2 setAdjustsFontForContentSizeCategory_];
  if (qword_27CE57020 != -1)
  {
    swift_once();
  }

  LODWORD(v3) = dword_27CE65574;
  [v2 setContentCompressionResistancePriority:1 forAxis:v3];
  if (qword_27CE57030 != -1)
  {
    swift_once();
  }

  LODWORD(v4) = dword_27CE6557C;
  [v2 setContentHuggingPriority:1 forAxis:v4];
  if (qword_27CE57000 != -1)
  {
    swift_once();
  }

  LODWORD(v5) = dword_27CE65564;
  [v2 setContentCompressionResistancePriority:0 forAxis:v5];
  if (qword_27CE57010 != -1)
  {
    swift_once();
  }

  LODWORD(v6) = dword_27CE6556C;
  [v2 setContentHuggingPriority:0 forAxis:v6];
  v7 = qword_27CE655A8;
  swift_beginAccess();
  [v2 setEnabled_];
  return v2;
}

uint64_t initializeWithCopy for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation.ColumnConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation.ColumnConfiguration(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  return a1;
}

id sub_21DA85098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v3 = sub_21D900614(1);
  if ((v2 & 0x80000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    v5 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0);
    *(inited + 40) = v3;
    v6 = v3;
    v7 = v5;
    sub_21D11274C(inited);
    swift_setDeallocating();
    sub_21D1BAED0(inited + 32);
    v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v9 = sub_21DBFA12C();
    type metadata accessor for Key(0);
    sub_21D112874();
    v10 = sub_21DBF9E5C();

    v11 = [v8 initWithString:v9 attributes:v10];

    return v11;
  }

  v47 = v2;
  REMAlarmProximity.localizedLabelFormatString.getter(v1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_21DC08D00;
  v14 = *MEMORY[0x277D740A8];
  *(v13 + 32) = *MEMORY[0x277D740A8];
  v15 = *MEMORY[0x277D743F8];
  v16 = v14;
  isa = UIFont.withCustomWeight(_:)(v15).super.isa;
  v18 = sub_21D0D8CF0(0, &qword_280D176B0);
  *(v13 + 64) = v18;
  *(v13 + 40) = isa;
  sub_21D11274C(v13);
  swift_setDeallocating();
  sub_21D1BAED0(v13 + 32);
  v46 = v12;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_21DC08D00;
  *(v19 + 32) = v16;
  *(v19 + 64) = v18;
  *(v19 + 40) = v3;
  v48 = v3;
  sub_21D11274C(v19);
  swift_setDeallocating();
  sub_21D1BAED0(v19 + 32);
  v20 = objc_allocWithZone(MEMORY[0x277CCAB68]);
  v21 = sub_21DBFA12C();

  v22 = [v20 initWithString_];

  v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v24 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v25 = sub_21DBF9E5C();

  v11 = [v23 initWithString:v24 attributes:v25];

  v26 = v22;
  v27 = sub_21DBFA12C();
  v28 = [v26 rangeOfString_];
  v30 = v29;

  if (v28 == sub_21DBF4B4C())
  {

    if ((v47 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v31 = sub_21DBFA12C();
    [v26 replaceCharactersInRange:v28 withString:{v30, v31}];

    v32 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v33 = sub_21DBF9E5C();

    v34 = [v32 initWithString:v26 attributes:v33];

    [v34 insertAttributedString:v11 atIndex:v28];
    v11 = v34;
    if ((v47 & 1) == 0)
    {
LABEL_12:

      return v11;
    }
  }

  [v11 mutableCopy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_27CE5FAF0);
  if (!swift_dynamicCast())
  {
    goto LABEL_12;
  }

  v35 = swift_initStackObject();
  v36 = *MEMORY[0x277D74150];
  *(v35 + 32) = *MEMORY[0x277D74150];
  *(v35 + 16) = xmmword_21DC08D00;
  *(v35 + 64) = MEMORY[0x277D83B88];
  *(v35 + 40) = 1;
  v37 = v36;
  sub_21D11274C(v35);
  swift_setDeallocating();
  sub_21D1BAED0(v35 + 32);
  v38 = sub_21DBF9E5C();

  v39 = [v49 string];
  v40 = sub_21DBFA16C();
  v42 = v41;

  v43 = MEMORY[0x223D42B30](v40, v42);

  [v49 addAttributes:v38 range:{0, v43}];

  v44 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
  if (v44)
  {

    return v44;
  }

  return v11;
}

uint64_t sub_21DA856C8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE65698);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21DA85768(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE65698);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRILocationCellContent.action.getter()
{
  v1 = (v0 + qword_27CE65698);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1);
  return v2;
}

uint64_t TTRILocationCellContent.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CE65698);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6);
}

id TTRILocationCellContent.init(state:)(__int128 *a1)
{
  v9 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = (v1 + qword_27CE65698);
  *v4 = 0;
  v4[1] = 0;
  v5 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v5 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v5 & *v1) + 0x90)) = 0;
  v6 = v1 + *((*v5 & *v1) + 0x78);
  *v6 = v9;
  *(v6 + 2) = v2;
  v6[24] = v3;
  *(v1 + *((*v5 & *v1) + 0x80)) = 0;
  v7 = v1 + *((*v5 & *v1) + 0x88);
  strcpy(v7, "LocationCell");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  v10.receiver = v1;
  v10.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE622F8);
  return objc_msgSendSuper2(&v10, sel_init);
}

void TTRILocationCellContent.updateCell(_:)(void *a1)
{
  v2 = v1;
  v4 = [a1 textLabel];
  v5 = MEMORY[0x277D85000];
  if (v4)
  {
    v6 = v4;
    v7 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v20 = *v7;
    v21 = *(v7 + 2);
    LOBYTE(v22) = v7[24];
    v8 = sub_21DA85098();
    [v6 setAttributedText_];
  }

  v9 = v2 + *((*v5 & *v2) + 0x78);
  swift_beginAccess();
  v10 = v9[24];
  if (v10 < 0 && (v10 & 1) != 0)
  {
    v12 = *(v9 + 1);
    v11 = *(v9 + 2);
    v13 = *v9;
    sub_21D5D359C();
    sub_21DBF8E0C();
    REMAlarmProximity.localizedLabelFormatString.getter(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_21D17A884();
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    sub_21DBFA17C();

    sub_21D5D35A4();
    if (qword_280D1B938 != -1)
    {
      swift_once();
    }

    v15 = qword_280D1B940;
    v16 = unk_280D1B948;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v15, v16);

    if (qword_27CE57548 != -1)
    {
      swift_once();
    }

    v17 = qword_27CE67180;
    v18 = *algn_27CE67188;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v17, v18);

    v19 = sub_21DBFA12C();

    [a1 setAccessibilityLabel_];
  }

  else
  {
    [a1 setAccessibilityLabel_];
  }
}

void sub_21DA85E00(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  v3 = &v2[qword_27CE65698];
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {

    v4(v5);
    sub_21D0D0E88(v4);

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }
}

id TTRILocationTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id TTRILocationTableCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t (*TTRILocationTableCell.accessibilityActivationPoint.modify(void *a1))(void, void, void)
{
  [*(v1 + OBJC_IVAR____TtC15RemindersUICore21TTRILocationTableCell_infoButton) accessibilityActivationPoint];
  *a1 = v3;
  a1[1] = v4;
  return nullsub_1;
}

uint64_t _s15RemindersUICore28TTRILocationCellContentStateO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if (v5 < 0)
  {
    if (v9 < 0)
    {
      if (v3 == v7 && v2 == v6)
      {
        sub_21D5D359C();
        sub_21D5D359C();
        sub_21D5D35A4();
        sub_21D5D35A4();
        if (v4 != v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v15 = sub_21DBFC64C();
        sub_21D5D359C();
        sub_21D5D359C();
        sub_21D5D35A4();
        sub_21D5D35A4();
        v13 = 0;
        if ((v15 & 1) == 0 || v4 != v8)
        {
          return v13 & 1;
        }
      }

      v13 = v9 ^ v5 ^ 1;
      return v13 & 1;
    }

LABEL_9:
    sub_21D5D359C();
    sub_21D5D359C();
    sub_21D5D35A4();
    sub_21D5D35A4();
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

  if (v9 < 0)
  {
    goto LABEL_9;
  }

  if (v3 != v7 || v2 != v6)
  {
    v11 = sub_21DBFC64C();
    sub_21D5D359C();
    sub_21D5D359C();
    sub_21D5D35A4();
    sub_21D5D35A4();
    return v11 & 1;
  }

  sub_21D5D359C();
  sub_21D5D359C();
  sub_21D5D35A4();
  sub_21D5D35A4();
  v13 = 1;
  return v13 & 1;
}

id sub_21DA86454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = [objc_opt_self() buttonWithType_];
  v7 = [objc_opt_self() configurationWithScale_];
  v8 = sub_21DBFA12C();
  v9 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v6 setImage:v9 forState:0];
  v10 = v6;
  [v10 sizeToFit];
  *&v3[OBJC_IVAR____TtC15RemindersUICore21TTRILocationTableCell_infoButton] = v10;
  v11 = v10;
  if (a2)
  {
    v12 = sub_21DBFA12C();
  }

  else
  {
    v12 = 0;
  }

  v24.receiver = v3;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, 0, v12);

  v14 = v13;
  [v14 setAccessoryView_];

  v15 = [v14 textLabel];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() secondaryLabelColor];
    [v16 setTextColor_];
  }

  v18 = [v14 textLabel];
  if (v18)
  {
    v19 = v18;
    [v18 setNumberOfLines_];
  }

  v20 = [v14 textLabel];

  if (v20)
  {
    [v20 setLineBreakMode_];
  }

  v21 = v14;
  [v21 setIsAccessibilityElement_];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v22 = sub_21DBFA12C();

  [v21 setAccessibilityHint_];

  return v21;
}

uint64_t initializeWithCopy for TTRILocationCellContentState(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(a2 + 24);
  sub_21D5D359C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for TTRILocationCellContentState(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(a2 + 24);
  sub_21D5D359C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_21D5D35A4();
  return a1;
}

uint64_t assignWithTake for TTRILocationCellContentState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_21D5D35A4();
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRILocationCellContentState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 25))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRILocationCellContentState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRILocationCellContent()
{
  result = qword_27CE656A8;
  if (!qword_27CE656A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id TTRIGenericCellContent.init(adaptor:hasDisclosure:state:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *MEMORY[0x277D85000];
  v8 = sub_21DA874DC(a1, a2, a3);
  v9 = *((v7 & v6) + 0xE8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a3, AssociatedTypeWitness);
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

uint64_t sub_21DA86BEC@<X0>(char *a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x108);
  result = swift_beginAccess();
  if (*(v1 + v3))
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_21DA86C98()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x108));
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = sub_21D0D0E78(*v1);
    v3(v4);
    return sub_21D0D0E88(v3);
  }

  return result;
}

uint64_t sub_21DA86D2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0xF0);
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0xE8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  v11 = *((v4 & v3) + 0x78);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v11], AssociatedTypeWitness);
  (*(v5 + 48))(v10, a1, v6, v5);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_21DA86F04()
{
  v0 = sub_21DA87640();
  sub_21D0D0E78(v0);
  return v0;
}

uint64_t sub_21DA86F38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x108));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6);
}

uint64_t sub_21DA870C4@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_21DA87640();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v2 = v4;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a1 = v7;
  a1[1] = v6;

  return sub_21D0D0E78(v2);
}

uint64_t sub_21DA87158(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_21D11DA58;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_21D0D0E78(v1);
  return sub_21DA86F38(v4, v3);
}

id TTRIGenericCellContent.__allocating_init(adaptor:hasDisclosure:state:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = sub_21DA874DC(a1, a2, a3);
  v10 = *(v4 + 29);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a3, AssociatedTypeWitness);
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_21DA87300()
{
  v1 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v0) + 0xE8) - 8) + 8))(&v0[*((*MEMORY[0x277D85000] & *v0) + 0xF8)]);
  v2 = *&v0[*((*v1 & *v0) + 0x108)];

  return sub_21D0D0E88(v2);
}

id TTRIGenericCellContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIGenericCellContent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DA87424(char *a1)
{
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *a1) + 0xE8) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + 0xF8)]);
  v3 = *&a1[*((*v2 & *a1) + 0x108)];

  return sub_21D0D0E88(v3);
}

id sub_21DA874DC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = MEMORY[0x277D85000];
  v9 = *MEMORY[0x277D85000];
  v10 = &v4[*((*MEMORY[0x277D85000] & *v4) + 0x108)];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = *((v9 & v7) + 0xE8);
  (*(*(v11 - 8) + 16))(&v4[*((*v8 & *v4) + 0xF8)], a1, v11);
  v3[*((*v8 & *v3) + 0x100)] = a2;
  v12 = *((v9 & v7) + 0xF0);
  (*(v12 + 32))(&v16, v11, v12);
  v13 = (*(v12 + 40))(v11, v12);
  return sub_21DBE97E0(a3, &v16, v13, v14);
}

uint64_t sub_21DA87640()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x108);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_21DA87728()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 TTRIDetailCellState.init(icon:title:titleTextColor:subtitle:detailText:detailTextColor:shortenedDetailText:checkmarkState:accessibilityLabel:accessibilityValue:accessibilityHint:accessibilityDifferentiateWithoutColorsIcon:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, __int128 a13, __int128 a14, __n128 a15, uint64_t a16, uint64_t a17)
{
  v24 = *a12;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0x1FFFFFFFELL;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0;
  v33 = 0;
  v25 = *(a9 + 48);
  v32[2] = *(a9 + 32);
  v32[3] = v25;
  v26 = *(a9 + 16);
  v32[0] = *a9;
  v32[1] = v26;
  sub_21D0CF7E0(v32, &unk_27CE5EA00);
  v27 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v27;
  *(a9 + 64) = *(a1 + 64);
  v28 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v28;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 128) = a10;
  *(a9 + 136) = a11;
  *(a9 + 144) = v24;
  *(a9 + 152) = a13;
  *(a9 + 168) = a14;
  result = a15;
  *(a9 + 184) = a15;
  *(a9 + 200) = a16;
  *(a9 + 208) = a17;
  return result;
}

id TTRIDetailCellContent.__allocating_init(state:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v4;
  v11[12] = *(a1 + 192);
  v12 = *(a1 + 208);
  v5 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v5;
  v6 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v6;
  v7 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v7;
  v8 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v8;
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  return sub_21DA87B30(0, 0x65436C6961746544, 0xEA00000000006C6CLL, 0, v11);
}

id TTRIDetailDisclosureCellContent.__allocating_init(state:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v4;
  v11[12] = *(a1 + 192);
  v12 = *(a1 + 208);
  v5 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v5;
  v6 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v6;
  v7 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v7;
  v8 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v8;
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  return sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, v11);
}

id sub_21DA87B30(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = MEMORY[0x277D85000];
  v11 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x108));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + *((*v10 & *v5) + 0xF8));
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  *(v5 + *((*v10 & *v5) + 0x100)) = a4;
  *(v5 + *((*v10 & *v5) + 0x68)) = 0;
  *(v5 + *((*v10 & *v5) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v10 & *v5) + 0x90)) = 0;
  v13 = v5 + *((*v10 & *v5) + 0x78);
  v14 = *(a5 + 16);
  *v13 = *a5;
  *(v13 + 1) = v14;
  v15 = *(a5 + 80);
  *(v13 + 4) = *(a5 + 64);
  *(v13 + 5) = v15;
  v16 = *(a5 + 48);
  *(v13 + 2) = *(a5 + 32);
  *(v13 + 3) = v16;
  v17 = *(a5 + 144);
  *(v13 + 8) = *(a5 + 128);
  *(v13 + 9) = v17;
  v18 = *(a5 + 112);
  *(v13 + 6) = *(a5 + 96);
  *(v13 + 7) = v18;
  *(v13 + 26) = *(a5 + 208);
  v19 = *(a5 + 192);
  *(v13 + 11) = *(a5 + 176);
  *(v13 + 12) = v19;
  *(v13 + 10) = *(a5 + 160);
  *(v5 + *((*v10 & *v5) + 0x80)) = a1;
  v20 = (v5 + *((*v10 & *v5) + 0x88));
  *v20 = a2;
  v20[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v22.receiver = v5;
  v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE65790);
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_21DA87D44(void *a1, uint64_t a2, uint64_t a3, char a4, _OWORD *a5)
{
  v10 = MEMORY[0x277D85000];
  v11 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x108));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + *((*v10 & *v5) + 0xF8));
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  *(v5 + *((*v10 & *v5) + 0x100)) = a4;
  *(v5 + *((*v10 & *v5) + 0x68)) = 0;
  *(v5 + *((*v10 & *v5) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v10 & *v5) + 0x90)) = 0;
  v13 = (v5 + *((*v10 & *v5) + 0x78));
  v14 = a5[1];
  *v13 = *a5;
  v13[1] = v14;
  v15 = a5[5];
  v13[4] = a5[4];
  v13[5] = v15;
  v16 = a5[3];
  v13[2] = a5[2];
  v13[3] = v16;
  *(v5 + *((*v10 & *v5) + 0x80)) = a1;
  v17 = (v5 + *((*v10 & *v5) + 0x88));
  *v17 = a2;
  v17[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v19.receiver = v5;
  v19.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65760);
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_21DA87F1C(void *a1, uint64_t a2, uint64_t a3, char a4, _OWORD *a5)
{
  v10 = MEMORY[0x277D85000];
  v11 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x108));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + *((*v10 & *v5) + 0xF8));
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  *(v5 + *((*v10 & *v5) + 0x100)) = a4;
  *(v5 + *((*v10 & *v5) + 0x68)) = 0;
  *(v5 + *((*v10 & *v5) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v10 & *v5) + 0x90)) = 0;
  v13 = (v5 + *((*v10 & *v5) + 0x78));
  v14 = a5[3];
  v13[2] = a5[2];
  v13[3] = v14;
  v15 = a5[1];
  *v13 = *a5;
  v13[1] = v15;
  *(v13 + 121) = *(a5 + 121);
  v16 = a5[7];
  v13[6] = a5[6];
  v13[7] = v16;
  v17 = a5[5];
  v13[4] = a5[4];
  v13[5] = v17;
  *(v5 + *((*v10 & *v5) + 0x80)) = a1;
  v18 = (v5 + *((*v10 & *v5) + 0x88));
  *v18 = a2;
  v18[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v20.receiver = v5;
  v20.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65780);
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_21DA88104(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = MEMORY[0x277D85000];
  v17 = (v8 + *((*MEMORY[0x277D85000] & *v8) + 0x108));
  *v17 = 0;
  v17[1] = 0;
  v18 = (v8 + *((*v16 & *v8) + 0xF8));
  *v18 = a1;
  v18[1] = a2;
  v18[2] = a3;
  *(v8 + *((*v16 & *v8) + 0x100)) = a4;
  *(v8 + *((*v16 & *v8) + 0x68)) = 0;
  *(v8 + *((*v16 & *v8) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + *((*v16 & *v8) + 0x90)) = 0;
  v19 = v8 + *((*v16 & *v8) + 0x78);
  *v19 = a5;
  *(v19 + 1) = a6;
  *(v19 + 2) = a7;
  v19[24] = a8 & 1;
  *(v8 + *((*v16 & *v8) + 0x80)) = a1;
  v20 = (v8 + *((*v16 & *v8) + 0x88));
  *v20 = a2;
  v20[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v22.receiver = v8;
  v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65768);
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_21DA88304(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6)
{
  v12 = MEMORY[0x277D85000];
  v13 = (v6 + *((*MEMORY[0x277D85000] & *v6) + 0x108));
  *v13 = 0;
  v13[1] = 0;
  v14 = (v6 + *((*v12 & *v6) + 0xF8));
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  *(v6 + *((*v12 & *v6) + 0x100)) = a4;
  *(v6 + *((*v12 & *v6) + 0x68)) = 0;
  *(v6 + *((*v12 & *v6) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + *((*v12 & *v6) + 0x90)) = 0;
  v15 = v6 + *((*v12 & *v6) + 0x78);
  v16 = *(a5 + 16);
  *v15 = *a5;
  *(v15 + 1) = v16;
  v15[96] = *(a5 + 96);
  v17 = *(a5 + 80);
  *(v15 + 4) = *(a5 + 64);
  *(v15 + 5) = v17;
  v18 = *(a5 + 48);
  *(v15 + 2) = *(a5 + 32);
  *(v15 + 3) = v18;
  *(v6 + *((*v12 & *v6) + 0x80)) = a1;
  v19 = (v6 + *((*v12 & *v6) + 0x88));
  *v19 = a2;
  v19[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v21.receiver = v6;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  return objc_msgSendSuper2(&v21, sel_init);
}

id sub_21DA884EC(void *a1, uint64_t a2, uint64_t a3, char a4, _OWORD *a5)
{
  v10 = MEMORY[0x277D85000];
  v11 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x108));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + *((*v10 & *v5) + 0xF8));
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  *(v5 + *((*v10 & *v5) + 0x100)) = a4;
  *(v5 + *((*v10 & *v5) + 0x68)) = 0;
  *(v5 + *((*v10 & *v5) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v10 & *v5) + 0x90)) = 0;
  v13 = (v5 + *((*v10 & *v5) + 0x78));
  v14 = a5[1];
  *v13 = *a5;
  v13[1] = v14;
  *(v13 + 89) = *(a5 + 89);
  v15 = a5[5];
  v13[4] = a5[4];
  v13[5] = v15;
  v16 = a5[3];
  v13[2] = a5[2];
  v13[3] = v16;
  *(v5 + *((*v10 & *v5) + 0x80)) = a1;
  v17 = (v5 + *((*v10 & *v5) + 0x88));
  *v17 = a2;
  v17[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v19.receiver = v5;
  v19.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65778);
  return objc_msgSendSuper2(&v19, sel_init);
}

BOOL static TTRIDetailCellState.CheckmarkState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TTRIDetailCellState.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_21D0D3954(v8, v7, &unk_27CE5EA00);
}

__n128 TTRIDetailCellState.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_21D0CF7E0(v7, &unk_27CE5EA00);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t TTRIDetailCellState.title.getter()
{
  v1 = *(v0 + 72);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIDetailCellState.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

void *TTRIDetailCellState.titleTextColor.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void *TTRIDetailCellState.subtitle.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t TTRIDetailCellState.detailText.getter()
{
  v1 = *(v0 + 104);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIDetailCellState.detailText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

void *TTRIDetailCellState.detailTextColor.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t TTRIDetailCellState.shortenedDetailText.getter()
{
  v1 = *(v0 + 128);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIDetailCellState.shortenedDetailText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t TTRIDetailCellState.accessibilityLabel.getter()
{
  v1 = *(v0 + 152);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIDetailCellState.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t TTRIDetailCellState.accessibilityValue.getter()
{
  v1 = *(v0 + 168);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIDetailCellState.accessibilityValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t TTRIDetailCellState.accessibilityHint.getter()
{
  v1 = *(v0 + 184);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIDetailCellState.accessibilityHint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return result;
}

uint64_t TTRIDetailCellState.accessibilityDifferentiateWithoutColorsIcon.getter()
{
  v1 = *(v0 + 200);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIDetailCellState.accessibilityDifferentiateWithoutColorsIcon.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return result;
}

id TTRIDetailCellStateAdaptor.prototypeCellView.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_21D568328(v2);
}

uint64_t TTRIDetailCellStateAdaptor.reuseIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIDetailCellStateAdaptor.init(reuseIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t TTRIDetailCellStateAdaptor.setState(_:on:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v14[10] = *(a1 + 160);
  v14[11] = v2;
  v14[12] = *(a1 + 192);
  v15 = *(a1 + 208);
  v3 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v3;
  v4 = *(a1 + 144);
  v14[8] = *(a1 + 128);
  v14[9] = v4;
  v5 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v5;
  v6 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v6;
  v7 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v7;
  v12[2] = a2;
  v12[3] = v14;
  v8 = *(a2 + qword_27CE5AF20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21DA8A07C;
  *(v9 + 24) = v12;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_137;
  v10 = _Block_copy(aBlock);

  [v8 performBatchUpdates_];
  _Block_release(v10);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21DA88F1C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 48);
  v93 = *(a2 + 32);
  v94 = v4;
  v95 = *(a2 + 64);
  v5 = *(a2 + 16);
  v91 = *a2;
  v92 = v5;
  v6 = (a1 + qword_27CE655A0);
  swift_beginAccess();
  v7 = v6[3];
  v98 = v6[2];
  v99 = v7;
  v100 = *(v6 + 64);
  v8 = v6[1];
  v96 = *v6;
  v97 = v8;
  v101[2] = v98;
  v101[3] = v7;
  v102 = v100;
  v101[0] = v96;
  v101[1] = v8;
  v9 = v91;
  v10 = v92;
  v11 = v93;
  v12 = v94;
  *(v6 + 64) = v95;
  v6[2] = v11;
  v6[3] = v12;
  *v6 = v9;
  v6[1] = v10;
  sub_21D0D3954(&v91, &aBlock, &unk_27CE5EA00);
  sub_21D0D3954(&v96, &aBlock, &unk_27CE5EA00);
  sub_21D0CF7E0(v101, &unk_27CE5EA00);
  v87 = v98;
  v88 = v99;
  v89 = v100;
  aBlock = v96;
  v86 = v97;
  sub_21DA7EF48(&aBlock);
  sub_21D0CF7E0(&v96, &unk_27CE5EA00);
  v13 = *(v2 + 72);
  v14 = *(v2 + 80);
  v15 = *(a1 + qword_27CE65590);
  swift_bridgeObjectRetain_n();
  v16 = v15;
  v67 = v14;
  v68 = v13;
  v17 = sub_21DBFA12C();
  [v16 setText_];

  v18 = *(v2 + 88);
  v19 = v18;
  if (!v18)
  {
    v19 = [objc_opt_self() labelColor];
  }

  *&aBlock = v19;
  v20 = v18;
  sub_21DA7B9D0(&aBlock);
  *&aBlock = [objc_opt_self() secondaryLabelColor];
  sub_21DA7BAF4(&aBlock);
  v21 = *(v2 + 96);
  v65 = v21;
  v69 = v21;
  sub_21DA7C390(v21);
  v23 = *(v2 + 104);
  v22 = *(v2 + 112);
  v71 = a1;
  v24 = *(v2 + 120);
  v25 = a1 + qword_27CE65610;
  swift_beginAccess();
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v30 = *(v25 + 32);
  v73 = v23;
  *v25 = v23;
  *(v25 + 8) = v22;
  v31 = *(v2 + 128);
  *(v25 + 16) = v31;
  *(v25 + 32) = v24;
  LOBYTE(v23) = *(v25 + 40);
  *(v25 + 40) = 0;
  v66 = v31;
  v32 = v24;
  v72 = v22;
  isEscapingClosureAtFileLocation = v71;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_21D361B20(v26, v27, v28, v29, v30, v23);
  sub_21D361BB4(v26, v27, v28, v29, v30, v23);
  *&aBlock = v26;
  *(&aBlock + 1) = v27;
  *&v86 = v28;
  *(&v86 + 1) = v29;
  *&v87 = v30;
  BYTE8(v87) = v23;
  sub_21DA7F6B4(&aBlock);
  sub_21D361BB4(v26, v27, v28, v29, v30, v23);
  v70 = *(v2 + 152);
  if (*(&v70 + 1))
  {
    sub_21DBF8E0C();
    v34 = v67;

    v35 = v65;

    v36 = sub_21DBFA12C();
    v37 = v68;
    v38 = v69;
  }

  else
  {
    v39 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_21DC08D00;
    v34 = v67;
    v37 = v68;
    *(v40 + 32) = v68;
    *(v40 + 40) = v67;
    v38 = v69;
    if (v69)
    {
      v41 = [v65 string];
      v42 = sub_21DBFA16C();
      v44 = v43;

      v46 = *(v40 + 16);
      v45 = *(v40 + 24);
      v47 = (v46 + 1);
      if (v46 >= v45 >> 1)
      {
LABEL_39:
        v40 = sub_21D210A84((v45 > 1), v47, 1, v40);
      }

      *(v40 + 16) = v47;
      v48 = v40 + 16 * v46;
      *(v48 + 32) = v42;
      *(v48 + 40) = v44;
      v38 = v69;
    }

    *&aBlock = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D1ADAA8();
    sub_21DBFA07C();

    v36 = sub_21DBFA12C();

    v35 = v39;
  }

  [isEscapingClosureAtFileLocation setAccessibilityLabel_];

  v39 = *(v2 + 168);
  v49 = *(v2 + 176);
  if (v49)
  {
    swift_bridgeObjectRetain_n();
  }

  v50 = sub_21DBFA12C();

  [isEscapingClosureAtFileLocation setAccessibilityValue_];

  if (*(v2 + 192))
  {
    v51 = sub_21DBFA12C();
  }

  else
  {
    v51 = 0;
  }

  [isEscapingClosureAtFileLocation setAccessibilityHint_];

  v75 = v37;
  v76 = v34;
  if (v38)
  {
    v52 = [v35 string];
    v44 = sub_21DBFA16C();
    v47 = v53;
  }

  else
  {
    v44 = 0;
    v47 = 0;
  }

  v40 = 0;
  v46 = v74;
  v77 = v44;
  v78 = v47;
  v79 = v73;
  v80 = v72;
  v82 = v70;
  v81 = v66;
  v83 = v39;
  v84 = v49;
  v37 = 6;
  v42 = MEMORY[0x277D84F90];
LABEL_18:
  if (v40 <= 6)
  {
    v54 = 6;
  }

  else
  {
    v54 = v40;
  }

  v45 = v54 + 1;
  v55 = 16 * v40 + 40;
  while (v40 != 6)
  {
    if (v45 == ++v40)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v56 = v55 + 16;
    v44 = *&v74[v55];
    v55 += 16;
    if (v44)
    {
      v39 = *&v74[v56 - 24];
      sub_21DBF8E0C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_21D210A84(0, *(v42 + 16) + 1, 1, v42);
      }

      v34 = *(v42 + 16);
      v57 = *(v42 + 24);
      v47 = (v34 + 1);
      if (v34 >= v57 >> 1)
      {
        v42 = sub_21D210A84((v57 > 1), v34 + 1, 1, v42);
      }

      *(v42 + 16) = v47;
      v58 = v42 + 16 * v34;
      *(v58 + 32) = v39;
      *(v58 + 40) = v44;
      goto LABEL_18;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0);
  swift_arrayDestroy();
  v59 = sub_21DBFA5DC();

  [isEscapingClosureAtFileLocation setAccessibilityUserInputLabels_];

  v60 = *(v2 + 144);
  if (v60 != 2)
  {
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 0;
    }

    [isEscapingClosureAtFileLocation setAccessoryType_];
  }

  v90 = *(v2 + 200);
  v62 = (isEscapingClosureAtFileLocation + qword_27CE65620);
  swift_beginAccess();
  *v62 = v90;
  sub_21D0D3954(&v90, &aBlock, &qword_27CE588A0);

  v44 = *(isEscapingClosureAtFileLocation + qword_27CE5AF20);
  v42 = swift_allocObject();
  *(v42 + 16) = isEscapingClosureAtFileLocation;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21DA82084;
  *(v2 + 24) = v42;
  *&v87 = sub_21D0E622C;
  *(&v87 + 1) = v2;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v86 = sub_21D0E6204;
  *(&v86 + 1) = &block_descriptor_36_2;
  v47 = _Block_copy(&aBlock);
  v37 = *(&v87 + 1);
  v63 = isEscapingClosureAtFileLocation;

  [v44 performBatchUpdates_];
  _Block_release(v47);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_38;
  }

  return result;
}

id TTRIDetailCellContent.init(state:)(uint64_t a1)
{
  v1 = *(a1 + 176);
  v8[10] = *(a1 + 160);
  v8[11] = v1;
  v8[12] = *(a1 + 192);
  v9 = *(a1 + 208);
  v2 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v2;
  v3 = *(a1 + 144);
  v8[8] = *(a1 + 128);
  v8[9] = v3;
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return sub_21DA87B30(0, 0x65436C6961746544, 0xEA00000000006C6CLL, 0, v8);
}

id TTRIDetailDisclosureCellContent.init(state:)(uint64_t a1)
{
  v1 = *(a1 + 176);
  v8[10] = *(a1 + 160);
  v8[11] = v1;
  v8[12] = *(a1 + 192);
  v9 = *(a1 + 208);
  v2 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v2;
  v3 = *(a1 + 144);
  v8[8] = *(a1 + 128);
  v8[9] = v3;
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, v8);
}

uint64_t _s15RemindersUICore19TTRIDetailCellStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v122 = *(a1 + 32);
  v123 = v4;
  v5 = *(a1 + 16);
  v120 = *a1;
  v121 = v5;
  v6 = *(a2 + 48);
  v125[2] = *(a2 + 32);
  v125[3] = v6;
  v7 = *(a2 + 16);
  v125[0] = *a2;
  v125[1] = v7;
  v124 = *(a1 + 64);
  v8 = *(a1 + 72);
  v93 = *(a1 + 88);
  v94 = *(a1 + 80);
  v91 = *(a1 + 96);
  v88 = *(a1 + 112);
  v89 = *(a1 + 104);
  v9 = *(a1 + 128);
  v85 = *(a1 + 120);
  v82 = *(a1 + 136);
  v10 = *(a1 + 144);
  v11 = *(a1 + 152);
  v12 = *(a1 + 160);
  v13 = *(a1 + 168);
  v14 = *(a1 + 176);
  v15 = *(a1 + 184);
  v16 = *(a1 + 192);
  v17 = *(a1 + 200);
  v18 = *(a1 + 208);
  v126 = *(a2 + 64);
  v19 = *(a2 + 72);
  v20 = *(a2 + 80);
  v92 = *(a2 + 88);
  v90 = *(a2 + 96);
  v86 = *(a2 + 112);
  v87 = *(a2 + 104);
  v21 = *(a2 + 120);
  v80 = *(a2 + 128);
  v22 = *(&v5 + 1);
  *&v119[23] = *(a2 + 16);
  v83 = *(a2 + 136);
  v84 = v21;
  *&v119[7] = v125[0];
  v81 = *(a2 + 144);
  v24 = *(a2 + 152);
  v23 = *(a2 + 160);
  v26 = *(a2 + 168);
  v25 = *(a2 + 176);
  v27 = *(a2 + 184);
  v28 = *(a2 + 192);
  v30 = *(a2 + 200);
  v29 = *(a2 + 208);
  v31 = v124;
  v32 = *(&v7 + 1);
  v33 = v126;
  if (*(&v5 + 1) >> 1 == 0xFFFFFFFFLL && v124 < 2u)
  {
    if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v126 < 2u)
    {
      v73 = v9;
      v74 = v24;
      v75 = v23;
      v76 = v10;
      v77 = v26;
      v78 = v12;
      v79 = v11;
      v71 = v14;
      v72 = v25;
      v66 = *(a2 + 184);
      v67 = *(a2 + 208);
      v68 = v13;
      v69 = v16;
      v70 = *(a2 + 192);
      v62 = *(a2 + 200);
      v63 = v17;
      v64 = v15;
      v65 = v18;
      v109 = *a1;
      *&v110 = *(a1 + 16);
      *(&v110 + 1) = *(&v121 + 1);
      v34 = *(a1 + 48);
      v111 = *(a1 + 32);
      v112 = v34;
      v113 = v124;
      sub_21D0D3954(&v120, &v104, &unk_27CE5EA00);
      sub_21D0D3954(v125, &v104, &unk_27CE5EA00);
      sub_21D0CF7E0(&v109, &unk_27CE5EA00);
      goto LABEL_10;
    }

    sub_21D0D3954(&v120, &v109, &unk_27CE5EA00);
    sub_21D0D3954(v125, &v109, &unk_27CE5EA00);
LABEL_18:
    v109 = *a1;
    *&v110 = *(a1 + 16);
    *(&v110 + 1) = v22;
    v44 = *(a1 + 48);
    v111 = *(a1 + 32);
    v112 = v44;
    v113 = v31;
    *v114 = *v119;
    *&v114[15] = *&v119[15];
    v115 = v32;
    v45 = *(a2 + 32);
    v117 = *(a2 + 48);
    v116 = v45;
    v118 = v33;
    sub_21D0CF7E0(&v109, qword_27CE5ABE0);
    return 0;
  }

  v35 = *(a1 + 16);
  v109 = *a1;
  *&v110 = v35;
  *(&v110 + 1) = *(&v121 + 1);
  v36 = *(a1 + 48);
  v111 = *(a1 + 32);
  v112 = v36;
  v113 = v124;
  v108 = v124;
  v106 = v111;
  v107 = v36;
  v104 = v109;
  v105 = v110;
  if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v126 < 2u)
  {
    v101 = v111;
    v102 = v112;
    v103 = v113;
    v99 = v109;
    v100 = v110;
    sub_21D0D3954(&v120, v97, &unk_27CE5EA00);
    sub_21D0D3954(v125, v97, &unk_27CE5EA00);
    sub_21D0D3954(&v109, v97, &unk_27CE5EA00);
    sub_21D35D940(&v99);
    goto LABEL_18;
  }

  v73 = v9;
  v74 = v24;
  v75 = v23;
  v76 = v10;
  v77 = v26;
  v78 = v12;
  v79 = v11;
  v71 = v14;
  v72 = v25;
  v66 = v27;
  v67 = v29;
  v68 = v13;
  v69 = v16;
  v70 = v28;
  v62 = v30;
  v63 = v17;
  v64 = v15;
  v65 = v18;
  v99 = *a2;
  v37 = *(a2 + 16);
  v38 = *(a2 + 48);
  v101 = *(a2 + 32);
  v102 = v38;
  *&v100 = v37;
  *(&v100 + 1) = v32;
  v103 = v126;
  sub_21D0D3954(&v120, v97, &unk_27CE5EA00);
  sub_21D0D3954(v125, v97, &unk_27CE5EA00);
  sub_21D0D3954(&v109, v97, &unk_27CE5EA00);
  v39 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v104, &v99);
  v95[2] = v101;
  v95[3] = v102;
  v96 = v103;
  v95[0] = v99;
  v95[1] = v100;
  sub_21D35D940(v95);
  v97[2] = v106;
  v97[3] = v107;
  v98 = v108;
  v97[0] = v104;
  v97[1] = v105;
  sub_21D35D940(v97);
  v99 = *a1;
  *&v100 = *(a1 + 16);
  *(&v100 + 1) = v22;
  v40 = *(a1 + 48);
  v101 = *(a1 + 32);
  v102 = v40;
  v103 = v31;
  sub_21D0CF7E0(&v99, &unk_27CE5EA00);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if ((v8 != v19 || v94 != v20) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v93)
  {
    if (!v92)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D1B8F0);
    v41 = v92;
    v42 = v93;
    v43 = sub_21DBFB63C();

    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v92)
  {
    return 0;
  }

  if (v91)
  {
    if (!v90)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D177E0);
    v47 = v90;
    v48 = v91;
    v49 = sub_21DBFB63C();

    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v90)
  {
    return 0;
  }

  if ((v89 != v87 || v88 != v86) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v85)
  {
    if (!v84)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D1B8F0);
    v50 = v84;
    v51 = v85;
    v52 = sub_21DBFB63C();

    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v84)
  {
    return 0;
  }

  if (v82)
  {
    v54 = v78;
    v53 = v79;
    v55 = v77;
    v56 = v76;
    v58 = v74;
    v57 = v75;
    if (!v83)
    {
      return 0;
    }

    if (v73 != v80 || v82 != v83)
    {
      v59 = sub_21DBFC64C();
      v58 = v74;
      v57 = v75;
      v56 = v76;
      v55 = v77;
      v54 = v78;
      v53 = v79;
      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v54 = v78;
    v53 = v79;
    v55 = v77;
    v56 = v76;
    v58 = v74;
    v57 = v75;
    if (v83)
    {
      return 0;
    }
  }

  if (v56 == 2)
  {
    if (v81 != 2)
    {
      return 0;
    }

    goto LABEL_47;
  }

  result = 0;
  if (v81 != 2 && ((v81 ^ v56) & 1) == 0)
  {
LABEL_47:
    if (v54)
    {
      if (!v57)
      {
        return 0;
      }

      if (v53 != v58 || v54 != v57)
      {
        v60 = v55;
        v61 = sub_21DBFC64C();
        v55 = v60;
        if ((v61 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v57)
    {
      return 0;
    }

    if (v71)
    {
      if (!v72 || (v68 != v55 || v71 != v72) && (sub_21DBFC64C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v72)
    {
      return 0;
    }

    if (v69)
    {
      if (v70 && (v64 == v66 && v69 == v70 || (sub_21DBFC64C() & 1) != 0))
      {
LABEL_68:
        if (v65)
        {
          if (v67 && (v63 == v62 && v65 == v67 || (sub_21DBFC64C() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v67)
        {
          return 1;
        }
      }
    }

    else if (!v70)
    {
      goto LABEL_68;
    }

    return 0;
  }

  return result;
}

unint64_t sub_21DA8A088()
{
  result = qword_27CE65738;
  if (!qword_27CE65738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65738);
  }

  return result;
}

uint64_t destroy for TTRIDetailCellState(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 64);
  if (v2 >> 1 != 0xFFFFFFFF || v3 >= 2)
  {
    sub_21D362050(*a1, *(a1 + 8), *(a1 + 16), v2, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), v3);
  }
}

uint64_t initializeWithCopy for TTRIDetailCellState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 64);
  if (v4 >> 1 != 0xFFFFFFFF || v5 >= 2)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 40);
    v30 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 56);
    sub_21D361F04(*a2, v8, v9, v4, v30, v10, v11, v12, v5);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v4;
    *(a1 + 32) = v30;
    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v12;
    *(a1 + 64) = v5;
  }

  else
  {
    v13 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v13;
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
  }

  v15 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v15;
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  v18 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v18;
  v20 = *(a2 + 120);
  v19 = *(a2 + 128);
  *(a1 + 120) = v20;
  *(a1 + 128) = v19;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  v21 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v21;
  v22 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v22;
  v23 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v23;
  v24 = *(a2 + 200);
  v25 = *(a2 + 208);
  *(a1 + 200) = v24;
  *(a1 + 208) = v25;
  sub_21DBF8E0C();
  v26 = v16;
  v27 = v17;
  sub_21DBF8E0C();
  v28 = v20;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIDetailCellState(uint64_t a1, uint64_t *a2)
{
  v4 = a2[3];
  v5 = *(a2 + 64);
  v7 = v4 >> 1 == 0xFFFFFFFF && v5 < 2;
  if (*(a1 + 24) >> 1 != 0xFFFFFFFFLL || *(a1 + 64) >= 2u)
  {
    if (v7)
    {
      sub_21D35D940(a1);
      *a1 = *a2;
      v10 = *(a2 + 2);
      v9 = *(a2 + 3);
      v11 = *(a2 + 1);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v10;
      *(a1 + 48) = v9;
      *(a1 + 16) = v11;
    }

    else
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      v18 = a2[5];
      v46 = a2[4];
      v19 = a2[6];
      v20 = a2[7];
      sub_21D361F04(*a2, v16, v17, v4, v46, v18, v19, v20, v5);
      v21 = *a1;
      v22 = *(a1 + 8);
      v23 = *(a1 + 16);
      v24 = *(a1 + 24);
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = *(a1 + 56);
      v29 = *(a1 + 64);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      *(a1 + 24) = v4;
      *(a1 + 32) = v46;
      *(a1 + 40) = v18;
      *(a1 + 48) = v19;
      *(a1 + 56) = v20;
      *(a1 + 64) = v5;
      sub_21D362050(v21, v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else if (v7)
  {
    *a1 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    v14 = *(a2 + 3);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v13;
    *(a1 + 48) = v14;
    *(a1 + 16) = v12;
  }

  else
  {
    v30 = *a2;
    v31 = a2[1];
    v32 = a2[2];
    v33 = a2[5];
    v47 = a2[4];
    v34 = a2[6];
    v35 = a2[7];
    sub_21D361F04(*a2, v31, v32, v4, v47, v33, v34, v35, v5);
    *a1 = v30;
    *(a1 + 8) = v31;
    *(a1 + 16) = v32;
    *(a1 + 24) = v4;
    *(a1 + 32) = v47;
    *(a1 + 40) = v33;
    *(a1 + 48) = v34;
    *(a1 + 56) = v35;
    *(a1 + 64) = v5;
  }

  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  sub_21DBF8E0C();

  v36 = *(a1 + 88);
  v37 = a2[11];
  *(a1 + 88) = v37;
  v38 = v37;

  v39 = *(a1 + 96);
  v40 = a2[12];
  *(a1 + 96) = v40;
  v41 = v40;

  *(a1 + 104) = a2[13];
  *(a1 + 112) = a2[14];
  sub_21DBF8E0C();

  v42 = *(a1 + 120);
  v43 = a2[15];
  *(a1 + 120) = v43;
  v44 = v43;

  *(a1 + 128) = a2[16];
  *(a1 + 136) = a2[17];
  sub_21DBF8E0C();

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = a2[19];
  *(a1 + 160) = a2[20];
  sub_21DBF8E0C();

  *(a1 + 168) = a2[21];
  *(a1 + 176) = a2[22];
  sub_21DBF8E0C();

  *(a1 + 184) = a2[23];
  *(a1 + 192) = a2[24];
  sub_21DBF8E0C();

  *(a1 + 200) = a2[25];
  *(a1 + 208) = a2[26];
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t assignWithTake for TTRIDetailCellState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 64);
  if (v4 >> 1 == 0xFFFFFFFF && v5 < 2)
  {
    goto LABEL_12;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 64);
  if (v7 >> 1 == 0xFFFFFFFF && v8 < 2)
  {
    sub_21D35D940(a1);
LABEL_12:
    v19 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v19;
    *(a1 + 64) = *(a2 + 64);
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    goto LABEL_13;
  }

  v10 = *(a2 + 16);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  *(a1 + 64) = v8;
  sub_21D362050(v11, v12, v13, v4, v14, v15, v16, v17, v5);
LABEL_13:
  v21 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v21;

  v22 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  v23 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  v24 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v24;

  v25 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v26 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v26;

  *(a1 + 144) = *(a2 + 144);
  v27 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v27;

  v28 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v28;

  v29 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v29;

  v30 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v30;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIDetailCellState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIDetailCellState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
      *(result + 216) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.__allocating_init(baseTree:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_21D0D0FD0(a1, v2 + 16);
  return v2;
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.numberOfChildren(of:)(uint64_t a1)
{
  swift_beginAccess();
  sub_21D0D32E4(v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 24))(a1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.child(_:of:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21D0D32E4(v2 + 16, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 32))(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.item(withID:)(uint64_t a1)
{
  swift_beginAccess();
  sub_21D0D32E4(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 40))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.parent(of:)(uint64_t a1)
{
  swift_beginAccess();
  sub_21D0D32E4(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 48))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRDerivedTreeLocation();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21DA8AEAC(uint64_t a1)
{
  v2 = type metadata accessor for TTRDerivedTreeLocation();
  sub_21DBFC5CC();
  v3 = *(v2 - 8);
  swift_allocObject();
  v4 = sub_21DBFA60C();
  (*(v3 + 16))(v5, a1, v2);
  result = v4;

  sub_21D23C8B4();
  return result;
}

uint64_t sub_21DA8AF90(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21DA8AFCC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static UIAccessibility.addButtonShapesStatusChangeObserver(_:selector:)(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  [v4 addObserver:sub_21DBFC62C() selector:a2 name:*MEMORY[0x277D76450] object:0];

  return swift_unknownObjectRelease();
}

UITraitCollection __swiftcall UITraitCollection.modifiedToOnlyDarkenColorsForIncreaseContrast()()
{
  if ([v0 accessibilityContrast] == 1)
  {

    return sub_21DBFB24C();
  }

  else
  {

    return v2;
  }
}

uint64_t static UIAccessibility.removeButtonShapesStatusChangeObserver(_:)(void *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  [v2 removeObserver:sub_21DBFC62C() name:*MEMORY[0x277D76450] object:0];

  return swift_unknownObjectRelease();
}

uint64_t static UIAccessibility.ttriIsFullKeyboardAccessRunning.getter()
{
  result = _AXSFullKeyboardAccessEnabled();
  if (result)
  {
    return GSEventIsHardwareKeyboardAttached() != 0;
  }

  return result;
}

uint64_t sub_21DA8B298()
{
  result = sub_21DBFA12C();
  qword_280D177B0 = result;
  return result;
}

id static NSAttributedStringKey.ttriAccessibilityLowPitch.getter()
{
  if (qword_280D177A8 != -1)
  {
    swift_once();
  }

  v1 = qword_280D177B0;

  return v1;
}

uint64_t static UIAccessibility.ttriIsAccessibilityRunning.getter()
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    return 1;
  }

  result = _AXSFullKeyboardAccessEnabled();
  if (result)
  {
    return GSEventIsHardwareKeyboardAttached() != 0;
  }

  return result;
}

uint64_t static UIAccessibility.addAccessibilityStatusChangeObserver(_:selector:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (qword_27CE57040 != -1)
  {
    result = swift_once();
  }

  v4 = off_27CE65818;
  v5 = *(off_27CE65818 + 2);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = (v4 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      v10 = [v6 defaultCenter];
      __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      [v10 addObserver:sub_21DBFC62C() selector:a2 name:v9 object:0];

      result = swift_unknownObjectRelease();
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t static UIAccessibility.removeAccessibilityStatusChangeObserver(_:)(uint64_t result)
{
  v1 = result;
  if (qword_27CE57040 != -1)
  {
    result = swift_once();
  }

  v2 = off_27CE65818;
  v3 = *(off_27CE65818 + 2);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      v8 = [v4 defaultCenter];
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      [v8 removeObserver:sub_21DBFC62C() name:v7 object:0];

      result = swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  return result;
}

id sub_21DA8B5B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65820);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D20;
  v1 = *MEMORY[0x277D765F0];
  v5 = *MEMORY[0x277D76520];
  v2 = *MEMORY[0x277D76520];
  *(v0 + 32) = *MEMORY[0x277D765F0];
  *(v0 + 40) = v2;
  off_27CE65818 = v0;
  v3 = v1;

  return v5;
}

Swift::Bool __swiftcall UICollectionViewCell._accessibilityScrollToVisible()()
{
  v1 = sub_21DBFA12C();
  v2 = NSClassFromString(v1);

  if (v2 && [v0 isKindOfClass_] && (v3 = objc_msgSend(v0, sel_traitCollection), v4 = objc_msgSend(v3, sel_userInterfaceIdiom), v3, v4 == 1))
  {

    return sub_21DA8B798();
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = MEMORY[0x277D752A8];
    return objc_msgSendSuper2(&v6, sel__accessibilityScrollToVisible);
  }
}

BOOL sub_21DA8B798()
{
  sub_21D0D8CF0(0, &unk_27CE62380);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = v0;
  v3 = v2;
  v4 = 0;
  for (i = v0; ; v2 = i)
  {
    if ([v2 isKindOfClass_])
    {

      v6 = i;
      v4 = i;
    }

    else
    {
      v6 = i;
    }

    i = [v6 superview];

    if (!i)
    {
      break;
    }
  }

  if (!v4)
  {
    return 0;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  sub_21D0D8CF0(0, &unk_280D0C2F0);
  v9 = swift_getObjCClassFromMetadata();
  v10 = v3;
  v11 = v10;
  v12 = 0;
  while (1)
  {
    if ([v10 isKindOfClass_])
    {

      v13 = v0;
      v12 = v0;
    }

    else
    {
      v13 = v0;
    }

    v0 = [v13 superview];

    if (!v0)
    {
      break;
    }

    v10 = v0;
  }

  if (v12)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    v15 = v14 != 0;
    if (v14)
    {
      v16 = v14;
      [v11 bounds];
      [v11 convertPoint:v16 toCoordinateSpace:?];
      v18 = v17;
      v19 = v4;
      [v8 contentOffset];
      v21 = v20;
      [v16 frame];
      v23 = v18 + v22;
      [v8 adjustedContentInset];
      v25 = v24;

      [v8 setContentOffset:1 animated:{v21, v23 - v25}];
    }
  }

  else
  {
LABEL_19:
    v15 = 0;
    v12 = v4;
  }

  return v15;
}

BOOL sub_21DA8B9E4(void *a1)
{
  v1 = a1;
  v2 = UICollectionViewCell._accessibilityScrollToVisible()();

  return v2;
}

void sub_21DA8BA18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v1 removeObserver_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21DA8BAB4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65828);
  v1 = __swift_project_value_buffer(v0, qword_27CE65828);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMFileAttachment.urlOfItemCopyInTemporaryDirectory(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v5);
  v7 = v45 - v6;
  v54 = sub_21DBF54CC();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v45 - v11;
  MEMORY[0x28223BE20](v13);
  v55 = v45 - v14;
  v53 = a1;
  if ((sub_21DBF532C() & 1) == 0)
  {
    v20 = objc_opt_self();
    v18 = sub_21DBFA12C();
    v19 = [v20 invalidParameterErrorWithDescription_];
    goto LABEL_7;
  }

  if (qword_27CE57050 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_27CE65840);
  sub_21D3050B8(v15, v7);
  v16 = v54;
  if ((*(v8 + 48))(v7, 1, v54) == 1)
  {
    sub_21D238E40(v7);
    v17 = objc_opt_self();
    v18 = sub_21DBFA12C();
    v19 = [v17 internalErrorWithDebugDescription_];
LABEL_7:
    v19;

    return swift_willThrow();
  }

  v45[1] = v2;
  v48 = *(v8 + 32);
  v49 = v8 + 32;
  v48(v55, v7, v16);
  v47 = sub_21DBF534C();
  v51 = v22;
  sub_21DBF540C();
  v46 = sub_21DBF53BC();
  v50 = v23;
  v24 = *(v8 + 8);
  v52 = v8 + 8;
  v56 = v24;
  v24(v12, v16);
  v25 = objc_opt_self();
  v26 = 0;
  v27 = 0;
  v28 = v16;
  do
  {
    if (v26)
    {
      v59[0] = v46;
      v59[1] = v50;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](45, 0xE100000000000000);
      v58 = v26;
      v29 = sub_21DBFC5BC();
      MEMORY[0x223D42AA0](v29);
    }

    else
    {
      sub_21DBF8E0C();
    }

    sub_21DBF542C();

    sub_21DBF543C();
    v56(v12, v28);
    if (v27)
    {
      v56(a2, v28);
    }

    v48(a2, v57, v28);
    v30 = [v25 defaultManager];
    sub_21DBF549C();
    v31 = sub_21DBFA12C();

    v32 = [v30 fileExistsAtPath_];

    if ((v32 & 1) == 0)
    {
      goto LABEL_19;
    }

    v33 = [v25 defaultManager];
    sub_21DBF549C();
    v34 = sub_21DBFA12C();

    sub_21DBF549C();
    v35 = sub_21DBFA12C();

    v36 = [v33 contentsEqualAtPath:v34 andPath:v35];

    if (v36)
    {

      v28 = v54;
      return (v56)(v55, v28);
    }

    v27 = 1;
    v37 = __OFADD__(v26++, 1);
    v28 = v54;
  }

  while (!v37);
  __break(1u);
LABEL_19:

  v38 = [v25 defaultManager];
  v39 = sub_21DBF53FC();
  v40 = sub_21DBF53FC();
  v59[0] = 0;
  v41 = [v38 copyItemAtURL:v39 toURL:v40 error:v59];

  if (v41)
  {
    v42 = v59[0];
    return (v56)(v55, v28);
  }

  v43 = v59[0];
  sub_21DBF52DC();

  swift_willThrow();
  v44 = v56;
  v56(a2, v28);
  return v44(v55, v28);
}

id sub_21DA8C1BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  __swift_allocate_value_buffer(v0, qword_27CE65840);
  v1 = __swift_project_value_buffer(v0, qword_27CE65840);
  return sub_21DA8C214(v1);
}

id sub_21DA8C214@<X0>(uint64_t a1@<X8>)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7 + 32;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v33[0] = 0;
  v11 = [v10 rem:v33 createProtectedTemporaryDirectoryIfNeededWithError:?];

  v12 = v33[0];
  if (v11)
  {
    sub_21DBF546C();
    v13 = v12;

    sub_21DBF542C();
    v14 = *(v3 + 8);
    v14(v5, v2);
    v15 = [v9 defaultManager];
    v16 = sub_21DBF53FC();
    v33[0] = 0;
    v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v33];

    v32 = v33[0];
    if (v17)
    {
      (*(v3 + 32))(a1, v8, v2);
      (*(v3 + 56))(a1, 0, 1, v2);
      v18 = v32;

      return v18;
    }

    v22 = v32;
    v21 = sub_21DBF52DC();

    swift_willThrow();
    v14(v8, v2);
  }

  else
  {
    v20 = v33[0];
    v21 = sub_21DBF52DC();

    swift_willThrow();
  }

  if (qword_27CE57048 != -1)
  {
    swift_once();
  }

  v23 = sub_21DBF84BC();
  __swift_project_value_buffer(v23, qword_27CE65828);
  v24 = v21;
  v25 = sub_21DBF84AC();
  v26 = sub_21DBFAEBC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33[0] = v28;
    *v27 = 136315138;
    swift_getErrorValue();
    v29 = sub_21DBFC74C();
    v31 = sub_21D0CDFB4(v29, v30, v33);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_21D0C9000, v25, v26, "REMFileAttachment.tmpAttachmentsDirURL error: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x223D46520](v28, -1, -1);
    MEMORY[0x223D46520](v27, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 56))(a1, 1, 1, v2);
}