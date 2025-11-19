id TTRICollectionViewDropProposal.dropProposalForCollectionView.getter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = sub_21D75283C(a1);
  v4 = objc_allocWithZone(MEMORY[0x277D752E8]);

  return [v4 initWithDropOperation:v2 intent:v3];
}

uint64_t sub_21D75283C(uint64_t a1)
{
  v3 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D752D6C(v1 + *(a1 + 56), v5, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for TTRUnadjustedIndexPath;
  if (!EnumCaseMultiPayload)
  {
    v9 = v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220) + 48)];
    v20[1] = *(v1 + 8);
    type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
    sub_21DBFA74C();
    swift_getWitnessTable();
    v10 = v1;
    v11 = sub_21DBFACFC();
    v12 = sub_21DBFA6DC();
    v13 = *(v10 + 16);
    if (v13 >> 62)
    {
      v19 = v12;
      v14 = sub_21DBFBD7C();
      v12 = v19;
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v14 != 0;
    if ((v11 & 1) == 0)
    {
      if (v9)
      {
        v16 = 0;
      }

      else
      {
        v16 = v14 == 0;
      }

      v15 = v16 && v12 < 2;
    }

    v8 = v15;
    v7 = type metadata accessor for TTRAdjustedIndexPath;
    goto LABEL_17;
  }

  v8 = 0;
  if (EnumCaseMultiPayload == 1)
  {
    v8 = 2;
LABEL_17:
    sub_21D7595D0(v5, v7);
  }

  return v8;
}

uint64_t TTRICollectionViewDropProposal.indexPathForCustomInsertionIndicator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  sub_21D752D6C(v2 + *(a1 + 56), v10, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v20 = v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220) + 48)];
    sub_21D759568(v10, v13, type metadata accessor for TTRAdjustedIndexPath);
    v21 = sub_21D75283C(a1);
    if ((v21 - 1) >= 2 && !v21 && !v20)
    {
      sub_21D759568(v13, v16, type metadata accessor for TTRAdjustedIndexPath);
      v25 = *v2;
      v26 = v2[1];
      v27 = v2[2];
      v29[1] = v25;
      v29[2] = v26;
      v29[3] = v27;
      sub_21D752D6C(v16, v7, type metadata accessor for TTRAdjustedIndexPath);
      swift_storeEnumTagMultiPayload();
      v28 = type metadata accessor for TTRICollectionViewDragItemSources();
      swift_unknownObjectRetain();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D76ABB8(v7, v28, a2);
      sub_21D7595D0(v7, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);

      swift_unknownObjectRelease();
      sub_21D7595D0(v16, type metadata accessor for TTRAdjustedIndexPath);
      v22 = 0;
      goto LABEL_10;
    }

    v18 = type metadata accessor for TTRAdjustedIndexPath;
    v19 = v13;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v18 = type metadata accessor for TTRUnadjustedIndexPath;
    v19 = v10;
LABEL_8:
    sub_21D7595D0(v19, v18);
  }

  v22 = 1;
LABEL_10:
  v23 = type metadata accessor for TTRUnadjustedIndexPath(0);
  return (*(*(v23 - 8) + 56))(a2, v22, 1, v23);
}

uint64_t sub_21D752D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t TTRICollectionViewDropProposal.sectionIndexForCustomDropHighlight.getter(uint64_t a1)
{
  v3 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D752D6C(v1 + *(a1 + 56), v8, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v12 = v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220) + 48)];
    sub_21D759568(v8, v5, type metadata accessor for TTRAdjustedIndexPath);
    v13 = sub_21D75283C(a1);
    if ((v13 - 1) >= 2 && !v13 && v12 == 2)
    {
      v14 = sub_21DBF5D0C();
      sub_21D7595D0(v5, type metadata accessor for TTRAdjustedIndexPath);
      return v14;
    }

    v10 = type metadata accessor for TTRAdjustedIndexPath;
    v11 = v5;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for TTRUnadjustedIndexPath;
    v11 = v8;
LABEL_9:
    sub_21D7595D0(v11, v10);
  }

  return 0;
}

uint64_t sub_21D752FA4()
{
  v1 = type metadata accessor for TTRICollectionViewDragItemSources();
  v2 = sub_21D76ADA4(v1);
  MEMORY[0x223D42AA0](v2);

  v3 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21D210A84((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = 0x203A67617244;
  *(v6 + 5) = 0xE600000000000000;
  sub_21DBFBEEC();

  v7 = *(v0 + 24);
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 == 3)
      {
        v8 = 0xE400000000000000;
        v9 = 1702260557;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v8 = 0xE400000000000000;
    v9 = 2037411651;
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = 0xE90000000000006ELL;
        v9 = 0x6564646962726F46;
        goto LABEL_13;
      }

LABEL_10:
      v8 = 0xE300000000000000;
      v9 = 4144959;
      goto LABEL_13;
    }

    v8 = 0xE600000000000000;
    v9 = 0x6C65636E6143;
  }

LABEL_13:
  MEMORY[0x223D42AA0](v9, v8);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  v10 = TTRICollectionViewDropIntent.description.getter();
  MEMORY[0x223D42AA0](v10);

  v12 = *(v3 + 2);
  v11 = *(v3 + 3);
  if (v12 >= v11 >> 1)
  {
    v3 = sub_21D210A84((v11 > 1), v12 + 1, 1, v3);
  }

  *(v3 + 2) = v12 + 1;
  v13 = &v3[16 * v12];
  *(v13 + 4) = 0x6C61736F706F7250;
  *(v13 + 5) = 0xEA0000000000203ALL;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v14 = sub_21DBFA07C();

  return v14;
}

uint64_t TTRICollectionViewDropContext.__allocating_init(session:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TTRICollectionViewDropContext.init(session:)(a1);
  return v2;
}

char *TTRICollectionViewDropContext.init(session:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 120);
  v5 = type metadata accessor for TTRICollectionViewDropProposal();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  v6 = *(*v2 + 128);
  type metadata accessor for TTRICollectionViewDropContext.DebugInfo();
  v7 = swift_allocObject();
  sub_21D753FD4();
  *&v2[v6] = v7;
  *(v2 + 2) = a1;
  return v2;
}

uint64_t TTRICollectionViewDropContext.lastDropProposal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  type metadata accessor for TTRICollectionViewDropProposal();
  v4 = sub_21DBFBA8C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TTRICollectionViewDropContext.lastDropProposal.setter(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  type metadata accessor for TTRICollectionViewDropProposal();
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_21D7535E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE61450);
  MEMORY[0x28223BE20](v2 - 8);
  v70 = &v67 - v3;
  v4 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v71 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61448);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v67 - v7;
  v9 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - v13;
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_21DBFBEEC();

  v76 = 0xD000000000000021;
  v77 = 0x800000021DC6A1B0;
  v15 = qword_27CE8EAB8;
  swift_beginAccess();
  sub_21D0D3954(v1 + v15, v14, &unk_27CE58E70);
  v16 = sub_21DBFBA5C();
  v18 = v17;
  sub_21D0CF7E0(v14, &unk_27CE58E70);
  MEMORY[0x223D42AA0](v16, v18);

  v19 = v76;
  v20 = v77;
  v21 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    v21 = sub_21D210A84((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v24;
  v25 = &v21[16 * v23];
  *(v25 + 4) = v19;
  *(v25 + 5) = v20;
  v26 = qword_27CE8EAC0;
  swift_beginAccess();
  sub_21D0D3954(v1 + v26, v8, &qword_27CE61448);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE61448);
  }

  else
  {
    v27 = v67;
    sub_21D759568(v8, v67, type metadata accessor for TTRICollectionViewHitTestResult);
    v28 = *(v21 + 3);
    if ((v23 + 2) > (v28 >> 1))
    {
      v21 = sub_21D210A84((v28 > 1), v23 + 2, 1, v21);
    }

    *(v21 + 2) = v23 + 2;
    v29 = &v21[16 * v24];
    *(v29 + 4) = 0xD000000000000015;
    *(v29 + 5) = 0x800000021DC6A220;
    v30 = TTRICollectionViewHitTestResult.debugHUDInfo.getter();
    v32 = v31;
    v34 = *(v21 + 2);
    v33 = *(v21 + 3);
    if (v34 >= v33 >> 1)
    {
      v21 = sub_21D210A84((v33 > 1), v34 + 1, 1, v21);
    }

    sub_21D7595D0(v27, type metadata accessor for TTRICollectionViewHitTestResult);
    *(v21 + 2) = v34 + 1;
    v35 = &v21[16 * v34];
    *(v35 + 4) = v30;
    *(v35 + 5) = v32;
  }

  v36 = *(v1 + qword_27CE8EAC8);
  if (v36 != 5)
  {
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_21DBFBEEC();

    v74 = 0xD000000000000013;
    v75 = 0x800000021DC6A200;
    if (v36 <= 1)
    {
      if (v36)
      {
        v37 = 0xE700000000000000;
        v38 = 0x6E776F6E6B6E75;
      }

      else
      {
        v37 = 0xE500000000000000;
        v38 = 0x7061476F6ELL;
      }
    }

    else if (v36 == 2)
    {
      v37 = 0xE500000000000000;
      v38 = 0x65766F6261;
    }

    else if (v36 == 3)
    {
      v37 = 0xEF6E6F697461636FLL;
      v38 = 0x4C746E6572727563;
    }

    else
    {
      v37 = 0xE500000000000000;
      v38 = 0x776F6C6562;
    }

    MEMORY[0x223D42AA0](v38, v37);

    v39 = v74;
    v40 = v75;
    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    if (v42 >= v41 >> 1)
    {
      v21 = sub_21D210A84((v41 > 1), v42 + 1, 1, v21);
    }

    *(v21 + 2) = v42 + 1;
    v43 = &v21[16 * v42];
    *(v43 + 4) = v39;
    *(v43 + 5) = v40;
  }

  v44 = qword_27CE8EAD0;
  swift_beginAccess();
  v45 = v1 + v44;
  v46 = v70;
  sub_21D0D3954(v45, v70, &unk_27CE61450);
  if ((*(v68 + 48))(v46, 1, v69) == 1)
  {
    sub_21D0CF7E0(v46, &unk_27CE61450);
  }

  else
  {
    sub_21D759568(v46, v71, type metadata accessor for TTRICollectionViewEmptySpaceType);
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_21DBFBEEC();

    v72 = 0xD000000000000017;
    v73 = 0x800000021DC6A1E0;
    v47 = TTRICollectionViewEmptySpaceType.description.getter();
    MEMORY[0x223D42AA0](v47);

    v48 = v72;
    v49 = v73;
    v51 = *(v21 + 2);
    v50 = *(v21 + 3);
    if (v51 >= v50 >> 1)
    {
      v21 = sub_21D210A84((v50 > 1), v51 + 1, 1, v21);
    }

    sub_21D7595D0(v71, type metadata accessor for TTRICollectionViewEmptySpaceType);
    *(v21 + 2) = v51 + 1;
    v52 = &v21[16 * v51];
    *(v52 + 4) = v48;
    *(v52 + 5) = v49;
  }

  v53 = *(v1 + qword_27CE8EAD8);
  if (v53)
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    v54 = v53;
    sub_21DBFBEEC();

    v72 = 0x6F7270207473616CLL;
    v73 = 0xEF203A6C61736F70;
    v55 = [v54 operation];
    if (v55 > 1)
    {
      if (v55 == 2)
      {
        v56 = 0xE400000000000000;
        v57 = 2037411651;
        goto LABEL_39;
      }

      if (v55 == 3)
      {
        v56 = 0xE400000000000000;
        v57 = 1702260557;
        goto LABEL_39;
      }
    }

    else
    {
      if (!v55)
      {
        v56 = 0xE600000000000000;
        v57 = 0x6C65636E6143;
        goto LABEL_39;
      }

      if (v55 == 1)
      {
        v56 = 0xE90000000000006ELL;
        v57 = 0x6564646962726F46;
LABEL_39:
        MEMORY[0x223D42AA0](v57, v56);

        MEMORY[0x223D42AA0](8236, 0xE200000000000000);
        v58 = [v54 intent];
        if (v58 > 2)
        {
          v59 = 1061109567;
        }

        else
        {
          v59 = *&aUnsp[8 * v58];
        }

        MEMORY[0x223D42AA0](v59, 0xE400000000000000);

        v60 = v72;
        v61 = v73;
        v63 = *(v21 + 2);
        v62 = *(v21 + 3);
        if (v63 >= v62 >> 1)
        {
          v21 = sub_21D210A84((v62 > 1), v63 + 1, 1, v21);
        }

        *(v21 + 2) = v63 + 1;
        v64 = &v21[16 * v63];
        *(v64 + 4) = v60;
        *(v64 + 5) = v61;
        goto LABEL_45;
      }
    }

    v56 = 0xE300000000000000;
    v57 = 4144959;
    goto LABEL_39;
  }

LABEL_45:
  v72 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v65 = sub_21DBFA07C();

  return v65;
}

uint64_t sub_21D753EBC()
{
  sub_21D0CF7E0(v0 + qword_27CE8EAB8, &unk_27CE58E70);
  sub_21D0CF7E0(v0 + qword_27CE8EAC0, &qword_27CE61448);
  sub_21D0CF7E0(v0 + qword_27CE8EAD0, &unk_27CE61450);

  return v0;
}

uint64_t sub_21D753F44()
{
  sub_21D753EBC();

  return swift_deallocClassInstance();
}

uint64_t sub_21D753F9C()
{
  v0 = swift_allocObject();
  sub_21D753FD4();
  return v0;
}

uint64_t sub_21D753FD4()
{
  v1 = qword_27CE8EAB8;
  v2 = sub_21DBF5D5C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = qword_27CE8EAC0;
  v4 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + qword_27CE8EAC8) = 5;
  v5 = qword_27CE8EAD0;
  v6 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + qword_27CE8EAD8) = 0;
  return v0;
}

uint64_t TTRICollectionViewDropContext.deinit()
{
  swift_unknownObjectRelease();
  v1 = *(*v0 + 120);
  type metadata accessor for TTRICollectionViewDropProposal();
  v2 = sub_21DBFBA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TTRICollectionViewDropContext.__deallocating_deinit()
{
  TTRICollectionViewDropContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRICollectionViewDropContext.debugHUDInfo.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 96);
  v36 = *(*v0 + 80);
  v37 = v3;
  v4 = type metadata accessor for TTRICollectionViewDropProposal();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v35 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  v13 = *(v2 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v13, v5);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v9 + 32))(v12, v8, v4);
    v15 = sub_21D752FA4();
    v17 = v16;
    v14 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    if (v19 >= v18 >> 1)
    {
      v14 = sub_21D210A84((v18 > 1), v19 + 1, 1, v14);
    }

    (*(v9 + 8))(v12, v4);
    *(v14 + 2) = v19 + 1;
    v20 = &v14[16 * v19];
    *(v20 + 4) = v15;
    *(v20 + 5) = v17;
  }

  v21 = sub_21D7535E4();
  v23 = v22;
  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_21D210A84(0, *(v14 + 2) + 1, 1, v14);
    }

    v27 = *(v14 + 2);
    v26 = *(v14 + 3);
    v28 = v26 >> 1;
    v29 = v27 + 1;
    if (v26 >> 1 <= v27)
    {
      v14 = sub_21D210A84((v26 > 1), v27 + 1, 1, v14);
      v26 = *(v14 + 3);
      v28 = v26 >> 1;
    }

    *(v14 + 2) = v29;
    v30 = &v14[16 * v27];
    *(v30 + 4) = 0xD00000000000002BLL;
    *(v30 + 5) = 0x800000021DC6A0D0;
    v31 = v27 + 2;
    if (v28 < v31)
    {
      v14 = sub_21D210A84((v26 > 1), v31, 1, v14);
    }

    *(v14 + 2) = v31;
    v32 = &v14[16 * v29];
    *(v32 + 4) = v25;
    *(v32 + 5) = v23;
  }

  else
  {
  }

  v35[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v33 = sub_21DBFA07C();

  return v33;
}

id TTRICollectionViewDropContext.debugIndicatorColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  v3 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(v1 + 120);
  swift_beginAccess();
  v7 = *(v2 + 96);
  v14[0] = *(v2 + 80);
  v14[1] = v7;
  v8 = type metadata accessor for TTRICollectionViewDropProposal();
  if (!(*(*(v8 - 8) + 48))(v6, 1, v8))
  {
    sub_21D752D6C(&v6[*(v8 + 56)], v5, type metadata accessor for TTRICollectionViewDropIntent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_2;
      }

      v12 = [objc_opt_self() greenColor];
      v13 = type metadata accessor for TTRUnadjustedIndexPath;
    }

    else
    {
      v12 = [objc_opt_self() orangeColor];
      v13 = type metadata accessor for TTRAdjustedIndexPath;
    }

    sub_21D7595D0(v5, v13);
    return v12;
  }

LABEL_2:
  v9 = [objc_opt_self() grayColor];

  return v9;
}

uint64_t sub_21D754880()
{
  result = sub_21DBF56BC();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF5D5C();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_21D754990(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_21DBF56BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 64);
  v16 = (*(v9 + 80) | *(v6 + 80) | *(v13 + 80));
  if (v16 <= 7 && v15 + ((*(v9 + 64) + (v11 & ~v10) + v14) & ~v14) + 1 <= 0x18 && ((*(v9 + 80) | *(v6 + 80) | *(v13 + 80)) & 0x100000) == 0)
  {
    v21 = ~v10;
    v31 = v12;
    v32 = a1;
    v30 = v8;
    v22 = a1;
    v23 = *(v9 + 64);
    (*(v6 + 16))(v22, a2, v5);
    v24 = (v32 + v11) & v21;
    v25 = (a2 + v11) & v21;
    (*(v9 + 16))(v24, v25, v30);
    v26 = v25 + v23;
    v27 = (v24 + v23 + v14) & ~v14;
    v28 = (v26 + v14) & ~v14;
    v20 = v32;
    (*(v13 + 16))(v27, v28, v31);
    *(v27 + v15) = *(v28 + v15);
  }

  else
  {
    v19 = *a2;
    *a1 = *a2;
    v20 = (v19 + ((v16 + 16) & ~v16));
  }

  return v20;
}

uint64_t sub_21D754BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8) + 8;
  (*v5)(a1, v4);
  v6 = *(v5 + 56) + a1;
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  v9 = v8 + 8;
  v10 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v8 + 8))(v10, v7);
  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (v10 + *(v9 + 56) + *(v11 + 80)) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t sub_21D754CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8) + 16;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 48);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 16))(v14, v15, v9);
  v16 = *(v11 + 48);
  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 16;
  v19 = *(v17 + 80);
  v20 = v16 + v19;
  v21 = (v20 + v14) & ~v19;
  v22 = (v20 + v15) & ~v19;
  (*(v17 + 16))(v21, v22);
  *(*(v18 + 48) + v21) = *(*(v18 + 48) + v22);
  return a1;
}

uint64_t sub_21D754E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8) + 24;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 40);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 24))(v14, v15, v9);
  v16 = *(v11 + 40);
  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 24;
  v19 = *(v17 + 80);
  v20 = v16 + v19;
  v21 = (v20 + v14) & ~v19;
  v22 = (v20 + v15) & ~v19;
  (*(v17 + 24))(v21, v22);
  *(*(v18 + 40) + v21) = *(*(v18 + 40) + v22);
  return a1;
}

uint64_t sub_21D754F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 32);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 32))(v14, v15, v9);
  v16 = *(v11 + 32);
  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 32;
  v19 = *(v17 + 80);
  v20 = v16 + v19;
  v21 = (v20 + v14) & ~v19;
  v22 = (v20 + v15) & ~v19;
  (*(v17 + 32))(v21, v22);
  *(*(v18 + 32) + v21) = *(*(v18 + 32) + v22);
  return a1;
}

uint64_t sub_21D75505C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8) + 40;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 24);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 40))(v14, v15, v9);
  v16 = *(v11 + 24);
  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 40;
  v19 = *(v17 + 80);
  v20 = v16 + v19;
  v21 = (v20 + v14) & ~v19;
  v22 = (v20 + v15) & ~v19;
  (*(v17 + 40))(v21, v22);
  *(*(v18 + 24) + v21) = *(*(v18 + 24) + v22);
  return a1;
}

uint64_t sub_21D755188(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(sub_21DBF5D5C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (v15 <= v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = *(v14 + 84);
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(v7 + 64) + v16;
  if (a2 > v21)
  {
    v23 = v19 + ((v17 + (v22 & ~v16) + v18) & ~v18) + 1;
    v24 = 8 * v23;
    if (v23 > 3)
    {
      goto LABEL_13;
    }

    v26 = ((a2 - v21 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v26))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v26 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v26 >= 2)
    {
LABEL_13:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_33;
      }

LABEL_20:
      v27 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v27 = 0;
      }

      if (v19 + ((v17 + (v22 & ~v16) + v18) & ~v18) == -1)
      {
        v29 = 0;
      }

      else
      {
        if (v23 <= 3)
        {
          v28 = v19 + ((v17 + (v22 & ~v16) + v18) & ~v18) + 1;
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v29 = *a1;
          }
        }

        else if (v28 == 1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *a1;
        }
      }

      v37 = v21 + (v29 | v27);
      return (v37 + 1);
    }
  }

LABEL_33:
  if (v8 == v21)
  {
    v30 = *(v7 + 48);
    v31 = a1;
    v32 = v8;
    v13 = v6;
LABEL_35:

    return v30(v31, v32, v13);
  }

  v34 = (a1 + v22) & ~v16;
  if (v11 != v21)
  {
    v31 = ((v34 + v17 + v18) & ~v18);
    if (v15 == v21)
    {
      v30 = *(v14 + 48);
      v32 = *(v14 + 84);
      goto LABEL_35;
    }

    v36 = *(v31 + v19);
    if (v36 < 2)
    {
      return 0;
    }

    v37 = (v36 + 2147483646) & 0x7FFFFFFF;
    return (v37 + 1);
  }

  v35 = *(v10 + 48);

  return v35(v34);
}

void sub_21D7554C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = sub_21DBF5D5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a4 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(*(v11 - 8) + 64);
  v21 = *(v16 + 80);
  v22 = *(v16 + 64);
  if (v17 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v16 + 84);
  }

  if (v23 <= 0xFE)
  {
    v24 = 254;
  }

  else
  {
    v24 = v23;
  }

  v25 = v22 + ((v20 + ((v18 + v19) & ~v19) + v21) & ~v21) + 1;
  if (a3 <= v24)
  {
    v26 = 0;
  }

  else if (v25 <= 3)
  {
    v29 = ((a3 - v24 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
    if (HIWORD(v29))
    {
      v26 = 4;
    }

    else
    {
      if (v29 < 0x100)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      if (v29 >= 2)
      {
        v26 = v30;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v26 = 1;
  }

  if (v24 < a2)
  {
    v27 = ~v24 + a2;
    if (v25 < 4)
    {
      v28 = (v27 >> (8 * v25)) + 1;
      if (v22 + ((v20 + ((v18 + v19) & ~v19) + v21) & ~v21) != -1)
      {
        v31 = v27 & ~(-1 << (8 * v25));
        bzero(a1, v22 + ((v20 + ((v18 + v19) & ~v19) + v21) & ~v21) + 1);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *a1 = v31;
            if (v26 > 1)
            {
LABEL_56:
              if (v26 == 2)
              {
                *&a1[v25] = v28;
              }

              else
              {
                *&a1[v25] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v26 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(a1, v22 + ((v20 + ((v18 + v19) & ~v19) + v21) & ~v21) + 1);
      *a1 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v26)
    {
      a1[v25] = v28;
    }

    return;
  }

  if (v26 <= 1)
  {
    if (v26)
    {
      a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (v26 == 2)
  {
    *&a1[v25] = 0;
    goto LABEL_36;
  }

  *&a1[v25] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 == v24)
  {
    v32 = *(v9 + 56);
    v33 = a1;
    v34 = a2;
    v35 = v10;
    v15 = v8;
LABEL_39:

    v32(v33, v34, v35, v15);
    return;
  }

  if (v13 != v24)
  {
    v33 = (((&a1[v18 + v19] & ~v19) + v20 + v21) & ~v21);
    if (v17 != v24)
    {
      v33[v22] = a2 + 1;
      return;
    }

    v32 = *(v16 + 56);
    v34 = a2;
    v35 = v17;
    goto LABEL_39;
  }

  v36 = *(v12 + 56);

  v36(&a1[v18 + v19] & ~v19, a2);
}

uint64_t sub_21D755878()
{
  result = type metadata accessor for TTRICollectionViewDropIntent(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TTRTreeViewDropDestination();
    result = sub_21DBFBA8C();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_21D755970(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8;
  v10 = *(v7 + 64);
  if (v10 >= v10 + 1)
  {
    v11 = *(*(v6 - 8) + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = *(a3 + 24);
  v13 = *(*(a3 + 16) - 8);
  v14 = *(v12 - 8);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = *(v13 + 80) & 0xF8 | v16 | 7;
  v18 = *(v13 + 64) + v16;
  v19 = *(v14 + 84);
  v20 = *(v14 + 64);
  if (v19)
  {
    v21 = *(v14 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = (((v18 & ~v16) + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v22 + v16) & ~v16) + v20 <= v22)
  {
    v23 = (((v18 & ~v16) + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v23 = ((v22 + v16) & ~v16) + v20;
  }

  v24 = v17 | v8;
  v25 = (*(v13 + 80) | v8 | *(v14 + 80)) & 0x100000;
  v26 = ((((-33 - v8) | v8) + ~v11 - v17) | v17) - (v23 + 1);
  v27 = *a2;
  *a1 = *a2;
  if ((v17 | v9) != 7 || v25 != 0 || v26 < 0xFFFFFFFFFFFFFFE7)
  {
    v30 = (v27 + ((v24 + 16) & ~v24));

    return v30;
  }

  v67 = v23 + 1;
  v68 = v6;
  v63 = v18;
  v64 = v13;
  v65 = v15;
  v60 = v19;
  v61 = v20;
  __n = v21;
  v66 = v12;
  v69 = v23;
  v31 = a2[2];
  a1[1] = a2[1];
  a1[2] = v31;
  v72 = a1;
  v32 = a1 + 31;
  v71 = (a2 + 31) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v71 + 8);
  v34 = v32 & 0xFFFFFFFFFFFFFFF8;
  *(v32 & 0xFFFFFFFFFFFFFFF8) = *v71;
  v35 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 8);
  v36 = *(v71 + 8 + v11);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v36 < 2)
  {
    v39 = v69;
    goto LABEL_34;
  }

  if (v11 <= 3)
  {
    v37 = v11;
  }

  else
  {
    v37 = 4;
  }

  if (v37 <= 1)
  {
    v39 = v69;
    if (!v37)
    {
      goto LABEL_34;
    }

    v38 = *v33;
    if (v11 >= 4)
    {
      goto LABEL_33;
    }

LABEL_29:
    v36 = (v38 | ((v36 - 2) << (8 * v11))) + 2;
    goto LABEL_34;
  }

  if (v37 == 2)
  {
    v38 = *v33;
  }

  else if (v37 == 3)
  {
    v38 = *(v71 + 8) | (*(v71 + 10) << 16);
  }

  else
  {
    v38 = *v33;
  }

  v39 = v69;
  if (v11 < 4)
  {
    goto LABEL_29;
  }

LABEL_33:
  v36 = v38 + 2;
LABEL_34:
  v40 = v11 + 1;
  if (v36 == 1)
  {
    (*(v7 + 16))(v35, v33, v68);
    v35[v11] = 1;
  }

  else if (v36)
  {
    memcpy(v35, v33, v11 + 1);
  }

  else
  {
    (*(v7 + 16))(v35, v33, v68);
    v35[v10] = v33[v10];
    v35[v11] = 0;
  }

  v41 = ((v34 + v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v71 + v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v43 = v42[v39];
  v30 = v72;
  if (v43 > 3)
  {
    goto LABEL_58;
  }

  if (v43 == 3)
  {
    if (v39 >= 4)
    {
      v44 = 4;
    }

    else
    {
      v44 = v39;
    }

    if (v44 <= 1)
    {
      if (!v44)
      {
        goto LABEL_58;
      }

      v45 = *v42;
    }

    else if (v44 == 2)
    {
      v45 = *v42;
    }

    else if (v44 == 3)
    {
      v45 = *v42 | (v42[2] << 16);
    }

    else
    {
      v45 = *v42;
    }

    v43 = v45 + 3;
  }

  v46 = ~v16;
  switch(v43)
  {
    case 2u:
      (*(v64 + 16))(v41);
      v54 = (&v41[v63] & v46);
      v55 = ((v63 + ((v71 + v40 + 15) & 0xFFFFFFFFFFFFFFF8)) & v46);
      if ((*(v65 + 48))(v55, 1, v66))
      {
        memcpy(v54, v55, __n);
      }

      else
      {
        (*(v65 + 16))(v54, v55, v66);
        (*(v65 + 56))(v54, 0, 1, v66);
      }

      v58 = 7;
      if (!v60)
      {
        v58 = 8;
      }

      *((v54 + v61 + v58) & 0xFFFFFFFFFFFFFFF8) = *((v55 + v61 + v58) & 0xFFFFFFFFFFFFFFF8);
      v41[v39] = 2;
      break;
    case 1u:
      (*(v64 + 16))(v41);
      v50 = &v41[v63] & v46;
      v51 = ((v63 + ((v71 + v40 + 15) & 0xFFFFFFFFFFFFFFF8)) & v46);
      if ((*(v65 + 48))(v51, 1, v66))
      {
        v52 = __n;
        memcpy((&v41[v63] & v46), v51, __n);
        v53 = *(v65 + 16);
      }

      else
      {
        v70 = *(v65 + 16);
        v70(v50, v51, v66);
        (*(v65 + 56))(v50, 0, 1, v66);
        v53 = v70;
        v52 = __n;
      }

      v56 = (((&v41[v63] & v46) + v52 + 7) & 0xFFFFFFFFFFFFFFF8);
      v57 = ((v51 + v52 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v56 = *v57;
      v53((v56 + v16 + 8) & v46, (v57 + v16 + 8) & v46, v66);
      v41[v39] = 1;
      break;
    case 0u:
      (*(v64 + 16))(v41);
      v47 = (&v41[v63] & v46);
      v48 = ((v63 + ((v71 + v40 + 15) & 0xFFFFFFFFFFFFFFF8)) & v46);
      if ((*(v65 + 48))(v48, 1, v66))
      {
        memcpy(v47, v48, __n);
      }

      else
      {
        (*(v65 + 16))(v47, v48, v66);
        (*(v65 + 56))(v47, 0, 1, v66);
      }

      v59 = 7;
      if (!v60)
      {
        v59 = 8;
      }

      *((v47 + v61 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v48 + v61 + v59) & 0xFFFFFFFFFFFFFFF8);
      v41[v39] = 0;
      return v30;
    default:
LABEL_58:
      memcpy(v41, v42, v67);
      return v30;
  }

  return v30;
}

uint64_t sub_21D756054(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = ((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80));
  v7 = *(v5 + 64);
  if (v7 >= v7 + 1)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = v6[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      v12 = *v6;
    }

    else if (v11 == 2)
    {
      v12 = *v6;
    }

    else if (v11 == 3)
    {
      v12 = *v6 | (v6[2] << 16);
    }

    else
    {
      v12 = *v6;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_18:
  if (v9 <= 1)
  {
    (*(v5 + 8))(v6, v4);
  }

  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(v14 - 8);
  result = *(v15 - 8);
  v18 = *(result + 80);
  v19 = *(result + 64);
  v20 = *(v16 + 80) & 0xF8 | v18 | 7;
  v21 = &v6[v8 + 1 + v20];
  v22 = (v21 & ~v20);
  v23 = *(v16 + 64) + v18;
  if (*(result + 84))
  {
    v24 = *(*(v15 - 8) + 64);
  }

  else
  {
    v24 = v19 + 1;
  }

  v25 = v24 + 7;
  v26 = ((v24 + 7 + (v23 & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v27 = ((v26 + v18) & ~v18) + v19;
  if (v27 <= v26)
  {
    v27 = ((v24 + 7 + (v23 & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v28 = v22[v27];
  if (v28 <= 3)
  {
    if (v28 == 3)
    {
      if (v27 >= 4)
      {
        v29 = 4;
      }

      else
      {
        v29 = v27;
      }

      if (v29 <= 1)
      {
        if (!v29)
        {
          return result;
        }

        v30 = *v22;
      }

      else if (v29 == 2)
      {
        v30 = *v22;
      }

      else if (v29 == 3)
      {
        v30 = *v22 | (*((v21 & ~v20) + 2) << 16);
      }

      else
      {
        v30 = *v22;
      }

      v28 = v30 + 3;
    }

    v38 = *(v15 - 8);
    v31 = ~v18;
    if (v28 == 2)
    {
LABEL_42:
      (*(v16 + 8))(v21 & ~v20);
      v32 = &v22[v23];
      result = (*(v38 + 48))(v32 & v31, 1, v15);
      if (!result)
      {
        v36 = *(v38 + 8);

        return v36(v32 & v31, v15);
      }

      return result;
    }

    if (v28 != 1)
    {
      if (v28)
      {
        return result;
      }

      goto LABEL_42;
    }

    (*(v16 + 8))(v21 & ~v20);
    v33 = &v22[v23] & v31;
    v34 = (*(v38 + 48))(v33, 1, v15);
    v35 = *(v38 + 8);
    if (!v34)
    {
      v37 = *(v38 + 8);
      v35(v33, v15);
      v35 = v37;
    }

    return (v35)((v18 + ((v25 + v33) & 0xFFFFFFFFFFFFFFF8) + 8) & v31, v15);
  }

  return result;
}

void *sub_21D756438(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  v4 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 8) & ~v8);
  v10 = ((v5 + v8 + 8) & ~v8);
  v11 = *(v7 + 64);
  if (v11 >= v11 + 1)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = *(v10 + v12);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v13 < 2)
  {
    v16 = a3;
  }

  else
  {
    if (v12 <= 3)
    {
      v14 = v12;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *v10;
      }

      else if (v14 == 3)
      {
        v15 = *v10 | (*(v10 + 2) << 16);
      }

      else
      {
        v15 = *v10;
      }

      v16 = a3;
      goto LABEL_18;
    }

    v16 = a3;
    if (v14)
    {
      v15 = *v10;
LABEL_18:
      v17 = (v15 | ((v13 - 2) << (8 * v12))) + 2;
      v18 = v15 + 2;
      if (v12 >= 4)
      {
        v13 = v18;
      }

      else
      {
        v13 = v17;
      }
    }
  }

  if (v13 == 1)
  {
    (*(v7 + 16))(v9, v10, v6);
    v9[v12] = 1;
  }

  else if (v13)
  {
    memcpy(v9, v10, v12 + 1);
  }

  else
  {
    (*(v7 + 16))(v9, v10, v6);
    v9[v11] = *(v10 + v11);
    v9[v12] = 0;
  }

  v19 = *(*(v16 + 16) - 8);
  v20 = *(*(v16 + 24) - 8);
  v21 = v20;
  v22 = *(v20 + 80);
  v23 = *(v19 + 80) & 0xF8 | v22 | 7;
  v24 = v12 + v23 + 1;
  v25 = (&v9[v24] & ~v23);
  v26 = v10 + v24;
  v27 = (v26 & ~v23);
  v28 = *(v19 + 64) + v22;
  v29 = *(v20 + 84);
  v30 = *(v20 + 64);
  if (v29)
  {
    v31 = *(v20 + 64);
  }

  else
  {
    v31 = v30 + 1;
  }

  v32 = (((v28 & ~v22) + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v32 + v22) & ~v22) + v30 <= v32)
  {
    v33 = (((v28 & ~v22) + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v33 = ((v32 + v22) & ~v22) + v30;
  }

  v34 = v27[v33];
  if (v34 > 3)
  {
    goto LABEL_51;
  }

  if (v34 == 3)
  {
    if (v33 >= 4)
    {
      v35 = 4;
    }

    else
    {
      v35 = v33;
    }

    if (v35 <= 1)
    {
      if (!v35)
      {
        goto LABEL_51;
      }

      v36 = *v27;
    }

    else if (v35 == 2)
    {
      v36 = *v27;
    }

    else if (v35 == 3)
    {
      v36 = *v27 | (*((v26 & ~v23) + 2) << 16);
    }

    else
    {
      v36 = *v27;
    }

    v34 = v36 + 3;
  }

  v56 = *(v16 + 24);
  v37 = ~v22;
  switch(v34)
  {
    case 2u:
      v46 = v26 & ~v23;
      (*(v19 + 16))(v25);
      v47 = (&v25[v28] & v37);
      v48 = ((v28 + v46) & v37);
      if ((*(v21 + 48))(v48, 1, v56))
      {
        memcpy(v47, v48, v31);
      }

      else
      {
        (*(v21 + 16))(v47, v48, v56);
        (*(v21 + 56))(v47, 0, 1, v56);
      }

      v51 = 7;
      if (!v29)
      {
        v51 = 8;
      }

      *((v47 + v30 + v51) & 0xFFFFFFFFFFFFFFF8) = *((v48 + v30 + v51) & 0xFFFFFFFFFFFFFFF8);
      v25[v33] = 2;
      break;
    case 1u:
      v42 = v26 & ~v23;
      (*(v19 + 16))(v25);
      v53 = v25;
      v43 = &v25[v28] & v37;
      v44 = ((v28 + v42) & v37);
      if ((*(v21 + 48))(v44, 1, v56))
      {
        memcpy((&v25[v28] & v37), v44, v31);
        v45 = *(v21 + 16);
      }

      else
      {
        v45 = *(v21 + 16);
        v45(v43, v44, v56);
        (*(v21 + 56))(v43, 0, 1, v56);
      }

      v49 = ((v31 + 7 + v43) & 0xFFFFFFFFFFFFFFF8);
      v50 = ((v44 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v49 = *v50;
      v45((v49 + v22 + 8) & v37, ((v50 + v22 + 8) & v37), v56);
      v53[v33] = 1;
      break;
    case 0u:
      v38 = v26 & ~v23;
      (*(v19 + 16))(v25);
      v39 = (&v25[v28] & v37);
      v40 = ((v28 + v38) & v37);
      if ((*(v21 + 48))(v40, 1, v56))
      {
        memcpy(v39, v40, v31);
      }

      else
      {
        (*(v21 + 16))(v39, v40, v56);
        (*(v21 + 56))(v39, 0, 1, v56);
      }

      v52 = 7;
      if (!v29)
      {
        v52 = 8;
      }

      *((v39 + v30 + v52) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v30 + v52) & 0xFFFFFFFFFFFFFFF8);
      v25[v33] = 0;
      return a1;
    default:
LABEL_51:
      memcpy(v25, v27, v33 + 1);
      return a1;
  }

  return a1;
}

void *sub_21D756A54(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  sub_21DBF8E0C();

  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 8) & ~v10);
  v12 = ((v7 + v10 + 8) & ~v10);
  v13 = *(v9 + 64);
  if (v13 >= v13 + 1)
  {
    v14 = *(v9 + 64);
  }

  else
  {
    v14 = v13 + 1;
  }

  if (v11 == v12)
  {
    goto LABEL_40;
  }

  v15 = v8;
  v16 = v11[v14];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v14 <= 3)
    {
      v18 = v14;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_19;
      }

      v19 = *v11;
    }

    else if (v18 == 2)
    {
      v19 = *v11;
    }

    else if (v18 == 3)
    {
      v19 = *v11 | (v11[2] << 16);
    }

    else
    {
      v19 = *v11;
    }

    v20 = (v19 | (v17 << (8 * v14))) + 2;
    v16 = v19 + 2;
    if (v14 < 4)
    {
      v16 = v20;
    }
  }

LABEL_19:
  if (v16 <= 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  v21 = *(v12 + v14);
  v22 = v21 - 2;
  if (v21 < 2)
  {
    goto LABEL_35;
  }

  if (v14 <= 3)
  {
    v23 = v14;
  }

  else
  {
    v23 = 4;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *v12;
    }

    else if (v23 == 3)
    {
      v24 = *v12 | (*(v12 + 2) << 16);
    }

    else
    {
      v24 = *v12;
    }

LABEL_33:
    v25 = (v24 | (v22 << (8 * v14))) + 2;
    v21 = v24 + 2;
    if (v14 < 4)
    {
      v21 = v25;
    }

    goto LABEL_35;
  }

  if (v23)
  {
    v24 = *v12;
    goto LABEL_33;
  }

LABEL_35:
  if (v21 == 1)
  {
    (*(v9 + 16))(v11, v12, v15);
    v11[v14] = 1;
  }

  else if (v21)
  {
    memcpy(v11, v12, v14 + 1);
  }

  else
  {
    (*(v9 + 16))(v11, v12, v15);
    v11[v13] = *(v12 + v13);
    v11[v14] = 0;
  }

LABEL_40:
  v26 = *(a3 + 16);
  v27 = *(v26 - 8);
  v132 = *(a3 + 24);
  v28 = *(v132 - 8);
  v29 = v28;
  v30 = *(v28 + 80);
  v31 = *(v27 + 80) & 0xF8 | v30 | 7;
  v32 = v14 + v31 + 1;
  v33 = (&v11[v32] & ~v31);
  v34 = ((v12 + v32) & ~v31);
  v35 = *(v27 + 64);
  v36 = ~v30;
  v37 = v35 + v30;
  v38 = (v35 + v30) & ~v30;
  v39 = *(v28 + 84);
  v40 = *(v28 + 64);
  if (v39)
  {
    v41 = *(v28 + 64);
  }

  else
  {
    v41 = v40 + 1;
  }

  v42 = ((v41 + 7 + v38) & 0xFFFFFFFFFFFFFFF8) + 8;
  v43 = (v42 + v30) & ~v30;
  v44 = v43 + v40;
  if (v43 + v40 <= v42)
  {
    v45 = ((v41 + 7 + v38) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v45 = v43 + v40;
  }

  v46 = v33[v45];
  v47 = v34[v45];
  if (v46 <= 3)
  {
    if (v47 > 3)
    {
      if (v46 == 3)
      {
        if (v45 >= 4)
        {
          v52 = 4;
        }

        else
        {
          v52 = v45;
        }

        if (v52 <= 1)
        {
          if (!v52)
          {
            goto LABEL_155;
          }

          v53 = *v33;
        }

        else if (v52 == 2)
        {
          v53 = *v33;
        }

        else if (v52 == 3)
        {
          v53 = *v33 | (v33[2] << 16);
        }

        else
        {
          v53 = *v33;
        }

        v46 = v53 + 3;
      }

      switch(v46)
      {
        case 2u:
          goto LABEL_96;
        case 1u:
          v120 = v41 + 7;
          v74 = v33;
          (*(v27 + 8))(v33, v26);
          v75 = v74;
          v76 = &v74[v37] & ~v30;
          v77 = (*(v29 + 48))(v76, 1, v132);
          v78 = *(v29 + 8);
          if (!v77)
          {
            v78(v76, v132);
          }

          v78((v30 + ((v120 + v76) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v30, v132);
          v33 = v75;
          break;
        case 0u:
LABEL_96:
          v70 = v33;
          v71 = v36;
          (*(v27 + 8))(v33, v26);
          v72 = &v70[v37];
          v73 = (*(v29 + 48))(v72 & v71, 1, v132);
          v33 = v70;
          if (!v73)
          {
            (*(v29 + 8))(v72 & v71, v132);
            v33 = v70;
          }

          break;
      }

LABEL_155:
      memcpy(v33, v34, v45 + 1);
      return a1;
    }

    if (v33 == v34)
    {
      return a1;
    }

    v130 = ~v30;
    v131 = v33;
    v124 = v38;
    __n = v41;
    v117 = v26;
    v118 = v41 + 7;
    v121 = v39;
    if (v46 == 3)
    {
      if (v45 >= 4)
      {
        v48 = 4;
      }

      else
      {
        v48 = v45;
      }

      if (v48 <= 1)
      {
        if (!v48)
        {
          goto LABEL_134;
        }

        v49 = *v33;
      }

      else if (v48 == 2)
      {
        v49 = *v33;
      }

      else if (v48 == 3)
      {
        v49 = *v33 | (v33[2] << 16);
      }

      else
      {
        v49 = *v33;
      }

      v46 = v49 + 3;
    }

    if (v46 != 2)
    {
      if (v46 == 1)
      {
        (*(v27 + 8))(v33, v26);
        v116 = &v131[v37] & v130;
        v88 = (*(v29 + 48))();
        v89 = *(v29 + 8);
        if (!v88)
        {
          v115 = *(v29 + 8);
          v89(v116, v132);
          v89 = v115;
        }

        v89((v30 + ((v118 + v116) & 0xFFFFFFFFFFFFFFF8) + 8) & v130, v132);
        goto LABEL_133;
      }

      if (v46)
      {
        goto LABEL_134;
      }
    }

    (*(v27 + 8))(v33, v26);
    v90 = (*(v29 + 48))(&v131[v37] & v130, 1, v132);
    v33 = v131;
    if (v90)
    {
      goto LABEL_134;
    }

    (*(v29 + 8))(&v131[v37] & v130, v132);
LABEL_133:
    v33 = v131;
LABEL_134:
    v91 = v34[v45];
    v92 = v91 - 3;
    if (v91 < 3)
    {
      v95 = v117;
    }

    else
    {
      if (v45 <= 3)
      {
        v93 = v45;
      }

      else
      {
        v93 = 4;
      }

      if (v93 > 1)
      {
        if (v93 == 2)
        {
          v94 = *v34;
        }

        else if (v93 == 3)
        {
          v94 = *v34 | (v34[2] << 16);
        }

        else
        {
          v94 = *v34;
        }

        v95 = v117;
LABEL_148:
        v96 = (v94 | (v92 << (8 * v45))) + 3;
        v91 = v94 + 3;
        if (v45 < 4)
        {
          v91 = v96;
        }

        goto LABEL_150;
      }

      v95 = v117;
      if (v93)
      {
        v94 = *v34;
        goto LABEL_148;
      }
    }

LABEL_150:
    if (v91 != 2)
    {
      if (v91 != 1)
      {
        if (!v91)
        {
          v97 = v33;
          (*(v27 + 16))(v33, v34, v95);
          v98 = (&v97[v37] & v130);
          v99 = (&v34[v37] & v130);
          if ((*(v29 + 48))(v99, 1, v132))
          {
            v100 = __n;
            memcpy(v98, v99, __n);
          }

          else
          {
            (*(v29 + 16))(v98, v99, v132);
            (*(v29 + 56))(v98, 0, 1, v132);
            v100 = __n;
          }

          v113 = 7;
          if (!v121)
          {
            v113 = 8;
          }

          *((v98 + v40 + v113) & 0xFFFFFFFFFFFFFFF8) = *((v99 + v40 + v113) & 0xFFFFFFFFFFFFFFF8);
          v114 = ((v124 + v100 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v44 > v114)
          {
            v114 = v44;
          }

          if (v42 > v114)
          {
            v114 = v42;
          }

          v97[v114] = 0;
          return a1;
        }

        goto LABEL_155;
      }

      v102 = v33;
      (*(v27 + 16))(v33, v34, v95);
      v103 = (&v102[v37] & v130);
      v83 = ~v30;
      v104 = (&v34[v37] & v130);
      v63 = v132;
      if ((*(v29 + 48))(v104, 1, v132))
      {
        memcpy(v103, v104, __n);
        v64 = *(v29 + 16);
      }

      else
      {
        v64 = *(v29 + 16);
        v64(v103, v104, v132);
        (*(v29 + 56))(v103, 0, 1, v132);
      }

      v109 = ((v103 + v118) & 0xFFFFFFFFFFFFFFF8);
      v110 = ((v104 + v118) & 0xFFFFFFFFFFFFFFF8);
      *v109 = *v110;
      v81 = v109 + v30 + 8;
      v82 = v110 + v30 + 8;
LABEL_163:
      v64((v81 & v83), (v82 & v83), v63);
      v131[v45] = 1;
      return a1;
    }

    v105 = v33;
    (*(v27 + 16))(v33, v34, v95);
    v106 = (&v105[v37] & v130);
    v107 = (&v34[v37] & v130);
    if ((*(v29 + 48))(v107, 1, v132))
    {
      v108 = __n;
      memcpy(v106, v107, __n);
    }

    else
    {
      (*(v29 + 16))(v106, v107, v132);
      (*(v29 + 56))(v106, 0, 1, v132);
      v108 = __n;
    }

    v111 = 7;
    if (!v121)
    {
      v111 = 8;
    }

    *((v106 + v40 + v111) & 0xFFFFFFFFFFFFFFF8) = *((v107 + v40 + v111) & 0xFFFFFFFFFFFFFFF8);
    v112 = ((v124 + v108 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v112)
    {
      v112 = v44;
    }

    if (v42 > v112)
    {
      v112 = v42;
    }

    v105[v112] = 2;
    return a1;
  }

  if (v47 > 3)
  {
    goto LABEL_155;
  }

  if (v47 == 3)
  {
    if (v45 >= 4)
    {
      v50 = 4;
    }

    else
    {
      v50 = v45;
    }

    if (v50 <= 1)
    {
      if (!v50)
      {
        goto LABEL_155;
      }

      v51 = *v34;
    }

    else if (v50 == 2)
    {
      v51 = *v34;
    }

    else if (v50 == 3)
    {
      v51 = *v34 | (v34[2] << 16);
    }

    else
    {
      v51 = *v34;
    }

    v47 = v51 + 3;
  }

  if (v47 == 2)
  {
    v123 = v39;
    v126 = v38;
    __nb = v41;
    v65 = v33;
    v66 = ~v30;
    (*(v27 + 16))(v33, v34);
    v67 = (&v65[v37] & v66);
    v68 = (&v34[v37] & v66);
    if ((*(v29 + 48))(v68, 1, v132))
    {
      v69 = __nb;
      memcpy(v67, v68, __nb);
    }

    else
    {
      (*(v29 + 16))(v67, v68, v132);
      (*(v29 + 56))(v67, 0, 1, v132);
      v69 = __nb;
    }

    v84 = 7;
    if (!v123)
    {
      v84 = 8;
    }

    *((v67 + v40 + v84) & 0xFFFFFFFFFFFFFFF8) = *((v68 + v40 + v84) & 0xFFFFFFFFFFFFFFF8);
    v85 = ((v126 + v69 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v85)
    {
      v85 = v44;
    }

    if (v42 > v85)
    {
      v85 = v42;
    }

    v65[v85] = 2;
  }

  else
  {
    if (v47 == 1)
    {
      v119 = v41 + 7;
      v59 = v41;
      v60 = v33;
      (*(v27 + 16))(v33, v34);
      v131 = v60;
      v61 = (&v60[v37] & ~v30);
      v62 = (&v34[v37] & ~v30);
      v63 = v132;
      if ((*(v29 + 48))(v62, 1, v132))
      {
        memcpy(v61, v62, v59);
        v64 = *(v29 + 16);
      }

      else
      {
        v64 = *(v29 + 16);
        v64(v61, v62, v132);
        (*(v29 + 56))(v61, 0, 1, v132);
      }

      v79 = ((v61 + v119) & 0xFFFFFFFFFFFFFFF8);
      v80 = ((v62 + v119) & 0xFFFFFFFFFFFFFFF8);
      *v79 = *v80;
      v81 = v79 + v30 + 8;
      v82 = v80 + v30 + 8;
      v83 = ~v30;
      goto LABEL_163;
    }

    if (v47)
    {
      goto LABEL_155;
    }

    v122 = v39;
    v125 = v38;
    __na = v41;
    v54 = v33;
    v55 = ~v30;
    (*(v27 + 16))(v33, v34);
    v56 = (&v54[v37] & v55);
    v57 = (&v34[v37] & v55);
    if ((*(v29 + 48))(v57, 1, v132))
    {
      v58 = __na;
      memcpy(v56, v57, __na);
    }

    else
    {
      (*(v29 + 16))(v56, v57, v132);
      (*(v29 + 56))(v56, 0, 1, v132);
      v58 = __na;
    }

    v86 = 7;
    if (!v122)
    {
      v86 = 8;
    }

    *((v56 + v40 + v86) & 0xFFFFFFFFFFFFFFF8) = *((v57 + v40 + v86) & 0xFFFFFFFFFFFFFFF8);
    v87 = ((v125 + v58 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v87)
    {
      v87 = v44;
    }

    if (v42 > v87)
    {
      v87 = v42;
    }

    v54[v87] = 0;
  }

  return a1;
}

uint64_t sub_21D7578E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 8) & ~v9);
  v11 = ((v6 + v9 + 8) & ~v9);
  v12 = *(v8 + 64);
  if (v12 >= v12 + 1)
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = v11[v13];
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_18;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = *v11;
  }

  else if (v16 == 2)
  {
    v17 = *v11;
  }

  else if (v16 == 3)
  {
    v17 = *v11 | (v11[2] << 16);
  }

  else
  {
    v17 = *v11;
  }

  v18 = (v17 | (v15 << (8 * v13))) + 2;
  v14 = v17 + 2;
  if (v13 < 4)
  {
    v14 = v18;
  }

LABEL_18:
  if (v14 == 1)
  {
    (*(v8 + 32))(v10, v11, v7);
    v10[v13] = 1;
  }

  else if (v14)
  {
    memcpy(v10, v11, v13 + 1);
  }

  else
  {
    (*(v8 + 32))(v10, v11, v7);
    v10[v12] = v11[v12];
    v10[v13] = 0;
  }

  v19 = *(a3 + 24);
  v20 = *(*(a3 + 16) - 8);
  v21 = v20;
  v22 = *(v19 - 8);
  v23 = v22;
  v24 = *(v22 + 80);
  v25 = *(v20 + 80) & 0xF8 | v24 | 7;
  v26 = v13 + v25 + 1;
  v27 = (&v10[v26] & ~v25);
  v28 = &v11[v26];
  v29 = (v28 & ~v25);
  v30 = *(v20 + 64) + v24;
  v31 = *(v22 + 84);
  v32 = *(v22 + 64);
  if (v31)
  {
    v33 = *(v22 + 64);
  }

  else
  {
    v33 = v32 + 1;
  }

  v34 = (((v30 & ~v24) + v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v34 + v24) & ~v24) + v32 <= v34)
  {
    v35 = (((v30 & ~v24) + v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v35 = ((v34 + v24) & ~v24) + v32;
  }

  v36 = v29[v35];
  if (v36 > 3)
  {
    goto LABEL_48;
  }

  if (v36 == 3)
  {
    if (v35 >= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = v35;
    }

    if (v37 <= 1)
    {
      if (!v37)
      {
LABEL_48:
        memcpy(v27, v29, v35 + 1);
        return a1;
      }

      v38 = *v29;
    }

    else if (v37 == 2)
    {
      v38 = *v29;
    }

    else if (v37 == 3)
    {
      v38 = *v29 | (*((v28 & ~v25) + 2) << 16);
    }

    else
    {
      v38 = *v29;
    }

    v36 = v38 + 3;
  }

  v62 = v19;
  v39 = ~v24;
  if (v36 == 2)
  {
    v49 = v27;
    v50 = v28 & ~v25;
    (*(v21 + 32))();
    v61 = v49;
    v51 = (&v49[v30] & v39);
    v52 = ((v30 + v50) & v39);
    if ((*(v23 + 48))(v52, 1, v62))
    {
      memcpy(v51, v52, v33);
    }

    else
    {
      (*(v23 + 32))(v51, v52, v62);
      (*(v23 + 56))(v51, 0, 1, v62);
    }

    v56 = 7;
    if (!v31)
    {
      v56 = 8;
    }

    *((v51 + v32 + v56) & 0xFFFFFFFFFFFFFFF8) = *((v52 + v32 + v56) & 0xFFFFFFFFFFFFFFF8);
    v55 = 2;
    goto LABEL_59;
  }

  if (v36 == 1)
  {
    v44 = v27;
    v45 = v28 & ~v25;
    (*(v21 + 32))();
    v61 = v44;
    v46 = (&v44[v30] & v39);
    v47 = ((v30 + v45) & v39);
    if ((*(v23 + 48))(v47, 1, v62))
    {
      memcpy(v46, v47, v33);
      v48 = *(v23 + 32);
    }

    else
    {
      v59 = *(v23 + 32);
      v59(v46, v47, v62);
      (*(v23 + 56))(v46, 0, 1, v62);
      v48 = v59;
    }

    v53 = ((v46 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
    v54 = ((v47 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v53 = *v54;
    v48((v53 + v24 + 8) & v39, (v54 + v24 + 8) & v39, v62);
    v55 = 1;
LABEL_59:
    v61[v35] = v55;
    return a1;
  }

  if (v36)
  {
    goto LABEL_48;
  }

  v40 = v27;
  v41 = v28 & ~v25;
  (*(v21 + 32))();
  v60 = v40;
  v42 = (&v40[v30] & v39);
  v43 = ((v30 + v41) & v39);
  if ((*(v23 + 48))(v43, 1, v62))
  {
    memcpy(v42, v43, v33);
  }

  else
  {
    (*(v23 + 32))(v42, v43, v62);
    (*(v23 + 56))(v42, 0, 1, v62);
  }

  v57 = 7;
  if (!v31)
  {
    v57 = 8;
  }

  *((v42 + v32 + v57) & 0xFFFFFFFFFFFFFFF8) = *((v43 + v32 + v57) & 0xFFFFFFFFFFFFFFF8);
  v60[v35] = 0;
  return a1;
}

void *sub_21D757EE4(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  a1[1] = a2[1];

  a1[2] = a2[2];

  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 8) & ~v10);
  v12 = ((v7 + v10 + 8) & ~v10);
  v13 = *(v9 + 64);
  if (v13 >= v13 + 1)
  {
    v14 = *(v9 + 64);
  }

  else
  {
    v14 = v13 + 1;
  }

  if (v11 == v12)
  {
    goto LABEL_40;
  }

  v15 = v8;
  v16 = v11[v14];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v14 <= 3)
    {
      v18 = v14;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_19;
      }

      v19 = *v11;
    }

    else if (v18 == 2)
    {
      v19 = *v11;
    }

    else if (v18 == 3)
    {
      v19 = *v11 | (v11[2] << 16);
    }

    else
    {
      v19 = *v11;
    }

    v20 = (v19 | (v17 << (8 * v14))) + 2;
    v16 = v19 + 2;
    if (v14 < 4)
    {
      v16 = v20;
    }
  }

LABEL_19:
  if (v16 <= 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  v21 = *(v12 + v14);
  v22 = v21 - 2;
  if (v21 < 2)
  {
    goto LABEL_35;
  }

  if (v14 <= 3)
  {
    v23 = v14;
  }

  else
  {
    v23 = 4;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *v12;
    }

    else if (v23 == 3)
    {
      v24 = *v12 | (*(v12 + 2) << 16);
    }

    else
    {
      v24 = *v12;
    }

LABEL_33:
    v25 = (v24 | (v22 << (8 * v14))) + 2;
    v21 = v24 + 2;
    if (v14 < 4)
    {
      v21 = v25;
    }

    goto LABEL_35;
  }

  if (v23)
  {
    v24 = *v12;
    goto LABEL_33;
  }

LABEL_35:
  if (v21 == 1)
  {
    (*(v9 + 32))(v11, v12, v15);
    v11[v14] = 1;
  }

  else if (v21)
  {
    memcpy(v11, v12, v14 + 1);
  }

  else
  {
    (*(v9 + 32))(v11, v12, v15);
    v11[v13] = *(v12 + v13);
    v11[v14] = 0;
  }

LABEL_40:
  v26 = *(a3 + 16);
  v27 = *(v26 - 8);
  v132 = *(a3 + 24);
  v28 = *(v132 - 8);
  v29 = v28;
  v30 = *(v28 + 80);
  v31 = *(v27 + 80) & 0xF8 | v30 | 7;
  v32 = v14 + v31 + 1;
  v33 = (&v11[v32] & ~v31);
  v34 = ((v12 + v32) & ~v31);
  v35 = *(v27 + 64);
  v36 = ~v30;
  v37 = v35 + v30;
  v38 = (v35 + v30) & ~v30;
  v39 = *(v28 + 84);
  v40 = *(v28 + 64);
  if (v39)
  {
    v41 = *(v28 + 64);
  }

  else
  {
    v41 = v40 + 1;
  }

  v42 = ((v41 + 7 + v38) & 0xFFFFFFFFFFFFFFF8) + 8;
  v43 = (v42 + v30) & ~v30;
  v44 = v43 + v40;
  if (v43 + v40 <= v42)
  {
    v45 = ((v41 + 7 + v38) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v45 = v43 + v40;
  }

  v46 = v33[v45];
  v47 = v34[v45];
  if (v46 <= 3)
  {
    if (v47 > 3)
    {
      if (v46 == 3)
      {
        if (v45 >= 4)
        {
          v52 = 4;
        }

        else
        {
          v52 = v45;
        }

        if (v52 <= 1)
        {
          if (!v52)
          {
            goto LABEL_155;
          }

          v53 = *v33;
        }

        else if (v52 == 2)
        {
          v53 = *v33;
        }

        else if (v52 == 3)
        {
          v53 = *v33 | (v33[2] << 16);
        }

        else
        {
          v53 = *v33;
        }

        v46 = v53 + 3;
      }

      switch(v46)
      {
        case 2u:
          goto LABEL_96;
        case 1u:
          v120 = v41 + 7;
          v74 = v33;
          (*(v27 + 8))(v33, v26);
          v75 = v74;
          v76 = &v74[v37] & ~v30;
          v77 = (*(v29 + 48))(v76, 1, v132);
          v78 = *(v29 + 8);
          if (!v77)
          {
            v78(v76, v132);
          }

          v78((v30 + ((v120 + v76) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v30, v132);
          v33 = v75;
          break;
        case 0u:
LABEL_96:
          v70 = v33;
          v71 = v36;
          (*(v27 + 8))(v33, v26);
          v72 = &v70[v37];
          v73 = (*(v29 + 48))(v72 & v71, 1, v132);
          v33 = v70;
          if (!v73)
          {
            (*(v29 + 8))(v72 & v71, v132);
            v33 = v70;
          }

          break;
      }

LABEL_155:
      memcpy(v33, v34, v45 + 1);
      return a1;
    }

    if (v33 == v34)
    {
      return a1;
    }

    v130 = ~v30;
    v131 = v33;
    v124 = v38;
    __n = v41;
    v117 = v26;
    v118 = v41 + 7;
    v121 = v39;
    if (v46 == 3)
    {
      if (v45 >= 4)
      {
        v48 = 4;
      }

      else
      {
        v48 = v45;
      }

      if (v48 <= 1)
      {
        if (!v48)
        {
          goto LABEL_134;
        }

        v49 = *v33;
      }

      else if (v48 == 2)
      {
        v49 = *v33;
      }

      else if (v48 == 3)
      {
        v49 = *v33 | (v33[2] << 16);
      }

      else
      {
        v49 = *v33;
      }

      v46 = v49 + 3;
    }

    if (v46 != 2)
    {
      if (v46 == 1)
      {
        (*(v27 + 8))(v33, v26);
        v116 = &v131[v37] & v130;
        v88 = (*(v29 + 48))();
        v89 = *(v29 + 8);
        if (!v88)
        {
          v115 = *(v29 + 8);
          v89(v116, v132);
          v89 = v115;
        }

        v89((v30 + ((v118 + v116) & 0xFFFFFFFFFFFFFFF8) + 8) & v130, v132);
        goto LABEL_133;
      }

      if (v46)
      {
        goto LABEL_134;
      }
    }

    (*(v27 + 8))(v33, v26);
    v90 = (*(v29 + 48))(&v131[v37] & v130, 1, v132);
    v33 = v131;
    if (v90)
    {
      goto LABEL_134;
    }

    (*(v29 + 8))(&v131[v37] & v130, v132);
LABEL_133:
    v33 = v131;
LABEL_134:
    v91 = v34[v45];
    v92 = v91 - 3;
    if (v91 < 3)
    {
      v95 = v117;
    }

    else
    {
      if (v45 <= 3)
      {
        v93 = v45;
      }

      else
      {
        v93 = 4;
      }

      if (v93 > 1)
      {
        if (v93 == 2)
        {
          v94 = *v34;
        }

        else if (v93 == 3)
        {
          v94 = *v34 | (v34[2] << 16);
        }

        else
        {
          v94 = *v34;
        }

        v95 = v117;
LABEL_148:
        v96 = (v94 | (v92 << (8 * v45))) + 3;
        v91 = v94 + 3;
        if (v45 < 4)
        {
          v91 = v96;
        }

        goto LABEL_150;
      }

      v95 = v117;
      if (v93)
      {
        v94 = *v34;
        goto LABEL_148;
      }
    }

LABEL_150:
    if (v91 != 2)
    {
      if (v91 != 1)
      {
        if (!v91)
        {
          v97 = v33;
          (*(v27 + 32))(v33, v34, v95);
          v98 = (&v97[v37] & v130);
          v99 = (&v34[v37] & v130);
          if ((*(v29 + 48))(v99, 1, v132))
          {
            v100 = __n;
            memcpy(v98, v99, __n);
          }

          else
          {
            (*(v29 + 32))(v98, v99, v132);
            (*(v29 + 56))(v98, 0, 1, v132);
            v100 = __n;
          }

          v113 = 7;
          if (!v121)
          {
            v113 = 8;
          }

          *((v98 + v40 + v113) & 0xFFFFFFFFFFFFFFF8) = *((v99 + v40 + v113) & 0xFFFFFFFFFFFFFFF8);
          v114 = ((v124 + v100 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v44 > v114)
          {
            v114 = v44;
          }

          if (v42 > v114)
          {
            v114 = v42;
          }

          v97[v114] = 0;
          return a1;
        }

        goto LABEL_155;
      }

      v102 = v33;
      (*(v27 + 32))(v33, v34, v95);
      v103 = (&v102[v37] & v130);
      v83 = ~v30;
      v104 = (&v34[v37] & v130);
      v63 = v132;
      if ((*(v29 + 48))(v104, 1, v132))
      {
        memcpy(v103, v104, __n);
        v64 = *(v29 + 32);
      }

      else
      {
        v64 = *(v29 + 32);
        v64(v103, v104, v132);
        (*(v29 + 56))(v103, 0, 1, v132);
      }

      v109 = ((v103 + v118) & 0xFFFFFFFFFFFFFFF8);
      v110 = ((v104 + v118) & 0xFFFFFFFFFFFFFFF8);
      *v109 = *v110;
      v81 = v109 + v30 + 8;
      v82 = v110 + v30 + 8;
LABEL_163:
      v64((v81 & v83), (v82 & v83), v63);
      v131[v45] = 1;
      return a1;
    }

    v105 = v33;
    (*(v27 + 32))(v33, v34, v95);
    v106 = (&v105[v37] & v130);
    v107 = (&v34[v37] & v130);
    if ((*(v29 + 48))(v107, 1, v132))
    {
      v108 = __n;
      memcpy(v106, v107, __n);
    }

    else
    {
      (*(v29 + 32))(v106, v107, v132);
      (*(v29 + 56))(v106, 0, 1, v132);
      v108 = __n;
    }

    v111 = 7;
    if (!v121)
    {
      v111 = 8;
    }

    *((v106 + v40 + v111) & 0xFFFFFFFFFFFFFFF8) = *((v107 + v40 + v111) & 0xFFFFFFFFFFFFFFF8);
    v112 = ((v124 + v108 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v112)
    {
      v112 = v44;
    }

    if (v42 > v112)
    {
      v112 = v42;
    }

    v105[v112] = 2;
    return a1;
  }

  if (v47 > 3)
  {
    goto LABEL_155;
  }

  if (v47 == 3)
  {
    if (v45 >= 4)
    {
      v50 = 4;
    }

    else
    {
      v50 = v45;
    }

    if (v50 <= 1)
    {
      if (!v50)
      {
        goto LABEL_155;
      }

      v51 = *v34;
    }

    else if (v50 == 2)
    {
      v51 = *v34;
    }

    else if (v50 == 3)
    {
      v51 = *v34 | (v34[2] << 16);
    }

    else
    {
      v51 = *v34;
    }

    v47 = v51 + 3;
  }

  if (v47 == 2)
  {
    v123 = v39;
    v126 = v38;
    __nb = v41;
    v65 = v33;
    v66 = ~v30;
    (*(v27 + 32))(v33, v34);
    v67 = (&v65[v37] & v66);
    v68 = (&v34[v37] & v66);
    if ((*(v29 + 48))(v68, 1, v132))
    {
      v69 = __nb;
      memcpy(v67, v68, __nb);
    }

    else
    {
      (*(v29 + 32))(v67, v68, v132);
      (*(v29 + 56))(v67, 0, 1, v132);
      v69 = __nb;
    }

    v84 = 7;
    if (!v123)
    {
      v84 = 8;
    }

    *((v67 + v40 + v84) & 0xFFFFFFFFFFFFFFF8) = *((v68 + v40 + v84) & 0xFFFFFFFFFFFFFFF8);
    v85 = ((v126 + v69 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v85)
    {
      v85 = v44;
    }

    if (v42 > v85)
    {
      v85 = v42;
    }

    v65[v85] = 2;
  }

  else
  {
    if (v47 == 1)
    {
      v119 = v41 + 7;
      v59 = v41;
      v60 = v33;
      (*(v27 + 32))(v33, v34);
      v131 = v60;
      v61 = (&v60[v37] & ~v30);
      v62 = (&v34[v37] & ~v30);
      v63 = v132;
      if ((*(v29 + 48))(v62, 1, v132))
      {
        memcpy(v61, v62, v59);
        v64 = *(v29 + 32);
      }

      else
      {
        v64 = *(v29 + 32);
        v64(v61, v62, v132);
        (*(v29 + 56))(v61, 0, 1, v132);
      }

      v79 = ((v61 + v119) & 0xFFFFFFFFFFFFFFF8);
      v80 = ((v62 + v119) & 0xFFFFFFFFFFFFFFF8);
      *v79 = *v80;
      v81 = v79 + v30 + 8;
      v82 = v80 + v30 + 8;
      v83 = ~v30;
      goto LABEL_163;
    }

    if (v47)
    {
      goto LABEL_155;
    }

    v122 = v39;
    v125 = v38;
    __na = v41;
    v54 = v33;
    v55 = ~v30;
    (*(v27 + 32))(v33, v34);
    v56 = (&v54[v37] & v55);
    v57 = (&v34[v37] & v55);
    if ((*(v29 + 48))(v57, 1, v132))
    {
      v58 = __na;
      memcpy(v56, v57, __na);
    }

    else
    {
      (*(v29 + 32))(v56, v57, v132);
      (*(v29 + 56))(v56, 0, 1, v132);
      v58 = __na;
    }

    v86 = 7;
    if (!v122)
    {
      v86 = 8;
    }

    *((v56 + v40 + v86) & 0xFFFFFFFFFFFFFFF8) = *((v57 + v40 + v86) & 0xFFFFFFFFFFFFFFF8);
    v87 = ((v125 + v58 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v44 > v87)
    {
      v87 = v44;
    }

    if (v42 > v87)
    {
      v87 = v42;
    }

    v54[v87] = 0;
  }

  return a1;
}

uint64_t sub_21D758D60(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v6 = *(sub_21DBF5D5C() - 8);
  v7 = *(v6 + 64);
  if (v7 >= v7 + 1)
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = *(*(a3 + 24) - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  if (*(v9 + 84))
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = ((v12 + ((*(*(*(a3 + 16) - 8) + 64) + v10) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = ((v13 + v10) & ~v10) + v11;
  if (v14 <= v13)
  {
    v14 = ((v12 + ((*(*(*(a3 + 16) - 8) + 64) + v10) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  v17 = v10 | *(*(*(a3 + 16) - 8) + 80) & 0xF8 | 7;
  v18 = v14 + ((v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v17 + 1) & ~v17) + 1;
  v19 = 8 * v18;
  if (v18 > 3)
  {
    goto LABEL_16;
  }

  v21 = (a2 - 0x7FFFFFFF + ~(-1 << v19)) >> v19;
  if (v21 > 0xFFFE)
  {
    v20 = *(a1 + v18);
    if (!v20)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (v21 <= 0xFE)
  {
    if (!v21)
    {
      goto LABEL_11;
    }

LABEL_16:
    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
LABEL_11:
    v15 = *(a1 + 1);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

LABEL_25:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return (v18 | v22) ^ 0x80000000;
}

void sub_21D758FC4(unsigned int *a1, int a2, int a3, uint64_t a4)
{
  v8 = *(sub_21DBF5D5C() - 8);
  v9 = *(v8 + 64);
  if (v9 >= v9 + 1)
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = *(*(a4 + 24) - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  if (*(v11 + 84))
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  v15 = ((v14 + ((*(*(*(a4 + 16) - 8) + 64) + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = ((v15 + v12) & ~v12) + v13;
  if (v16 <= v15)
  {
    v16 = ((v14 + ((*(*(*(a4 + 16) - 8) + 64) + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = v12 | *(*(*(a4 + 16) - 8) + 80) & 0xF8 | 7;
  v18 = v16 + ((v10 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v17 + 1) & ~v17) + 1;
  if ((a3 & 0x80000000) == 0)
  {
    v19 = 0;
    if (a2 < 0)
    {
      goto LABEL_23;
    }

LABEL_32:
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

LABEL_39:
        *(a1 + 1) = (a2 - 1);
        return;
      }

      *(a1 + v18) = 0;
    }

    else if (v19)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v18 <= 3)
  {
    v20 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v18))) >> (8 * v18);
    if (v20 > 0xFFFE)
    {
      v19 = 4;
      if (a2 < 0)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    if (v20 < 0xFF)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20)
    {
      v19 = v21;
    }

    else
    {
      v19 = 0;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v19 = 1;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_23:
  v22 = a2 & 0x7FFFFFFF;
  if (v18 >= 4)
  {
    bzero(a1, v18);
    *a1 = v22;
    v23 = 1;
    if (v19 > 1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v23 = (v22 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_44:
    if (v19 > 1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v24 = a2 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v24;
    *(a1 + 2) = BYTE2(v24);
    goto LABEL_44;
  }

  if (v18 == 2)
  {
    *a1 = v24;
    if (v19 > 1)
    {
LABEL_48:
      if (v19 == 2)
      {
        *(a1 + v18) = v23;
      }

      else
      {
        *(a1 + v18) = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = a2;
    if (v19 > 1)
    {
      goto LABEL_48;
    }
  }

LABEL_45:
  if (v19)
  {
    *(a1 + v18) = v23;
  }
}

uint64_t sub_21D7592A8()
{
  type metadata accessor for TTRICollectionViewDropProposal();
  result = sub_21DBFBA8C();
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

void sub_21D7593AC()
{
  sub_21D759514(319, &qword_27CE61428, MEMORY[0x277CC9AF8]);
  if (v0 <= 0x3F)
  {
    sub_21D759514(319, &qword_27CE61430, type metadata accessor for TTRICollectionViewHitTestResult);
    if (v1 <= 0x3F)
    {
      sub_21D759514(319, &unk_27CE61438, type metadata accessor for TTRICollectionViewEmptySpaceType);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_21D759514(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D759568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7595D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D7597EC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61460);
  v1 = __swift_project_value_buffer(v0, qword_27CE61460);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void (*TTRICollectionViewDragAndDropCoordinator.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.__allocating_init(rootView:)(void *a1)
{
  v2 = swift_allocObject();
  TTRICollectionViewDragAndDropCoordinator.init(rootView:)(a1);
  return v2;
}

uint64_t sub_21D759A30(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    type metadata accessor for TTRICollectionViewDragAndDropCoordinator();
    WitnessTable = swift_getWitnessTable();
    (*(v3 + 96))(a1, WitnessTable, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRICollectionViewDragAndDropCoordinator.resetAfterDataSourceReload()()
{
  v1 = v0;
  v2 = sub_21DBF56BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_280D0F018))
  {
    if (qword_27CE56C80 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE61460);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16[0] = v10;
      *v9 = 136315138;
      v11 = sub_21D759D64();
      v13 = sub_21D0CDFB4(v11, v12, v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "%s: regenerating coordinatorID while having an active drop session", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }
  }

  sub_21DBF56AC();
  v14 = qword_280D0F010;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v14, v5, v2);
  swift_endAccess();
}

unint64_t sub_21D759D64()
{
  sub_21DBFBEEC();

  swift_getMetatypeMetadata();
  v0 = sub_21DBFA1AC();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](62, 0xE100000000000000);
  return 0xD000000000000029;
}

uint64_t sub_21D759E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for TTRTreeViewDropDestination();
  v6 = sub_21DBFBA8C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TTRICollectionViewDragAndDropCoordinator.DropValidationResult();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_21D759EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = a5;
  v22 = a3;
  v8 = *(*v5 + 80);
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  ObjectType = swift_getObjectType();
  (*(a2 + 24))(a4, ObjectType, a2);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v13 + 32))(v16, v12, v8);
    v18 = sub_21D75A130(v22, a4, v16, v23 & 1);
    if (v18)
    {
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21DC09CF0;
      *(v20 + 32) = v19;
      (*(v13 + 8))(v16, v8);
      return v20;
    }

    (*(v13 + 8))(v16, v8);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D75A130(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v43 = a4;
  v44 = a1;
  v45 = a3;
  v39 = a2;
  v42 = *v4;
  v6 = *(v42 + 80);
  v7 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v8 = sub_21DBFBA8C();
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v40 = &v31 - v9;
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v31 - v11;
  v12 = sub_21DBF5D5C();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF56BC();
  v34 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v32 = v8;
  v33 = v7;
  v22 = v5[3];
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  v25 = (*(v22 + 24))(v5, WitnessTable, v45, v44, v43 & 1, ObjectType, v22);
  swift_unknownObjectRelease();
  if (v25)
  {
    v26 = qword_280D0F010;
    swift_beginAccess();
    (*(v34 + 16))(v17, v5 + v26, v15);
    (*(v35 + 16))(v14, v39, v36);
    v27 = v37;
    (*(v38 + 16))(v37, v45, v6);
    sub_21D7524A4(v17, v14, v27, 0, v6, v21);
    v28 = v40;
    v29 = v33;
    (*(v18 + 16))(v40, v21, v33);
    (*(v18 + 56))(v28, 0, 1, v29);
    sub_21D75A5D4(v28);
    (*(v41 + 8))(v28, v32);
    (*(v18 + 8))(v21, v29);
  }

  return v25;
}

uint64_t sub_21D75A5D4(uint64_t a1)
{
  v2 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v3 = sub_21DBFBA8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  (*(v4 + 16))(v12 - v6, a1, v3, v5);
  v8 = *(v2 - 8);
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
    v14 = 0u;
    v15 = 0u;
  }

  else
  {
    *(&v15 + 1) = v2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
    (*(v8 + 32))(boxed_opaque_existential_0, v7, v2);
  }

  v12[1] = static TTRICollectionViewDragItemUserInfo.dragItemLocalObjectKey.getter();
  v12[2] = v10;
  sub_21DBFBE2C();
  UIDragItem.setLocalObject(_:forKey:)(&v14, v13);
  sub_21D181D3C(v13);
  return sub_21D0CF7E0(&v14, &qword_27CE5C690);
}

uint64_t sub_21D75A7A8(void *a1)
{
  v2 = *v1;
  v3 = [a1 items];
  sub_21D0D8CF0(0, qword_27CE61010);
  v4 = sub_21DBFA5EC();

  v15 = v4;
  v12 = *(v2 + 80);
  v13 = sub_21D763180;
  v14 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61478);
  type metadata accessor for TTRICollectionViewDragItemUserInfo();
  sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_21D0D0F1C(&qword_27CE61480, &qword_27CE61478);
  v9 = sub_21D0E5014(sub_21D763188, v11, v5, TupleTypeMetadata2, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);

  return v9;
}

id sub_21D75A944(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_280D0F010;
  swift_beginAccess();
  (*(v7 + 16))(v9, a3 + v10, v6);
  v11 = a2;
  sub_21D75AA8C(a1);
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_21D75AA8C@<X0>(uint64_t a1@<X8>)
{
  v20[0] = a1;
  v1 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - v3;
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v20[1] = static TTRICollectionViewDragItemUserInfo.dragItemLocalObjectKey.getter();
  v20[2] = v12;
  sub_21DBFBE2C();
  UIDragItem.localObject<A>(ofType:forKey:)(v21, v1, v11);
  sub_21D181D3C(v21);
  (*(v6 + 16))(v8, v11, v5);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    v13 = *(v6 + 8);
    v13(v11, v5);
    v13(v8, v5);
LABEL_6:
    v18 = 1;
    v17 = v20[0];
    return (*(v2 + 56))(v17, v18, 1, v1);
  }

  v14 = *(v2 + 32);
  v14(v4, v8, v1);
  v15 = _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0();
  (*(v6 + 8))(v11, v5);
  if ((v15 & 1) == 0)
  {
    (*(v2 + 8))(v4, v1);
    goto LABEL_6;
  }

  v16 = v20[0];
  v14(v20[0], v4, v1);
  v17 = v16;
  v18 = 0;
  return (*(v2 + 56))(v17, v18, 1, v1);
}

uint64_t sub_21D75AD5C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_21D0D8CF0(255, qword_27CE61010);
  type metadata accessor for TTRICollectionViewDragItemUserInfo();
  sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a3 + *(TupleTypeMetadata2 + 48), v5);
  *a3 = result;
  return result;
}

uint64_t sub_21D75AE18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v4 = *(*v2 + 80);
  v61 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v56 = &v43 - v5;
  v55 = sub_21DBF5D5C();
  v48 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  MEMORY[0x28223BE20](v53);
  v52 = &v43 - v7;
  v8 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v9 = sub_21DBFBA8C();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = &v43 - v10;
  v46 = *(v8 - 1);
  MEMORY[0x28223BE20](v11);
  v51 = &v43 - v12;
  sub_21D0D8CF0(255, qword_27CE61010);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_21DBFBA8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v43 - v19);
  v21 = sub_21D76B0CC();
  v57 = v4;
  sub_21D76B0FC(a1, v21, MEMORY[0x277D84F90], &v67);
  v22 = swift_unknownObjectRetain();
  v23 = sub_21D75A7A8(v22);
  v64 = TupleTypeMetadata2 - 8;
  v65 = 0;
  v63 = (v15 + 32);
  v60 = (v45 + 4);
  v59 = (v46 + 6);
  v49 = (v46 + 4);
  v48 += 2;
  v47 = (v61 + 16);
  ++v46;
  ++v45;
  v61 = v23;
  v50 = v17;
  v58 = v20;
  while (1)
  {
    v31 = sub_21DBFA6DC();
    v32 = v65;
    if (v65 == v31)
    {
      v33 = *(TupleTypeMetadata2 - 8);
      (*(v33 + 56))(v17, 1, 1, TupleTypeMetadata2);
      goto LABEL_9;
    }

    v34 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v34)
    {
      v35 = *(TupleTypeMetadata2 - 8);
      result = (*(v35 + 16))(v17, v23 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v32, TupleTypeMetadata2);
      v37 = __OFADD__(v32, 1);
      v38 = v32 + 1;
      if (v37)
      {
        break;
      }

      goto LABEL_8;
    }

    result = sub_21DBFBF7C();
    v35 = *(TupleTypeMetadata2 - 8);
    if (*(v35 + 64) != 8)
    {
      goto LABEL_20;
    }

    v66 = result;
    (*(v35 + 16))(v17, &v66, TupleTypeMetadata2);
    result = swift_unknownObjectRelease();
    v38 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

LABEL_8:
    v65 = v38;
    v33 = v35;
    (*(v35 + 56))(v17, 0, 1, TupleTypeMetadata2);
LABEL_9:
    v39 = v62;
    (*v63)(v20, v17, v14);
    if ((*(v33 + 48))(v20, 1, TupleTypeMetadata2) == 1)
    {

      v42 = v44;
      *v44 = v67;
      *(v42 + 1) = v68;
      return result;
    }

    v40 = *v20;
    (*v60)(v39, v20 + *(TupleTypeMetadata2 + 48), v9);
    if ((*v59)(v39, 1, v8) == 1)
    {
      (*v45)(v39, v9);
      v41 = v40;
      MEMORY[0x223D42D80]();
      if (*((*(&v68 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v68 + 1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
    }

    else
    {
      v24 = v51;
      (*v49)(v51, v39, v8);
      v25 = v9;
      v26 = v54;
      (*v48)(v54, &v24[v8[7]], v55);
      v28 = v56;
      v27 = v57;
      (*v47)(v56, &v24[v8[8]], v57);
      v29 = v26;
      v9 = v25;
      sub_21D76B108(v29, v28, v24[v8[9]], v27, v52);
      sub_21DBFA74C();
      sub_21DBFA6FC();

      v30 = v24;
      v17 = v50;
      (*v46)(v30, v8);
    }

    v20 = v58;
    v23 = v61;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21D75B654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v146 = a3;
  v147 = a4;
  v150 = a5;
  v8 = *v5;
  v9 = *v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61488);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = &v113 - v11;
  v12 = v8;
  v115 = v9;
  v13 = (v9 + 88);
  v14 = *(v12 + 80);
  v15 = type metadata accessor for TTRRelativeInsertionPosition();
  v118 = sub_21DBFBA8C();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v119 = &v113 - v16;
  v121 = v15;
  v120 = *(v15 - 8);
  MEMORY[0x28223BE20](v17);
  v116 = &v113 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
  MEMORY[0x28223BE20](v19 - 8);
  v123 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v125 = &v113 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE61450);
  MEMORY[0x28223BE20](v23 - 8);
  v130 = &v113 - v24;
  v131 = v14;
  v159.val[0].f64[0] = v14;
  v159.val[0].f64[1] = *v13;
  v159.val[1] = v159.val[0];
  v25 = &v156;
  vst2q_f64(v25, v159);
  v26 = type metadata accessor for TTRICollectionViewDropProposal();
  v141 = sub_21DBFBA8C();
  v132 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v113 - v27;
  v128 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v129 = (&v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v139 = &v113 - v30;
  v137 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  v122 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v124 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v136 = &v113 - v33;
  v34 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v34 - 8);
  v135 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRICollectionViewGapHit(0);
  MEMORY[0x28223BE20](v36 - 8);
  v126 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v26;
  v142 = *(v26 - 8);
  MEMORY[0x28223BE20](v38);
  v134 = &v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v113 - v41;
  v43 = type metadata accessor for TTRICollectionViewItemHit(0);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v113 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  MEMORY[0x28223BE20](v46);
  v48 = &v113 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v113 - v50;
  v138 = a1;
  v52 = *(a1 + 16);
  v144 = v5;
  sub_21D75AE18(v52, &v156);
  v53 = v156;
  v54 = v157;
  v55 = v158;
  ObjectType = swift_getObjectType();
  v148 = v54;
  v149 = v53;
  v156 = v53;
  v157 = v54;
  v57 = v55;
  v158 = v55;
  v58 = *(v146 + 88);
  v59 = v52;
  v60 = v146;
  v145 = a2;
  v133 = ObjectType;
  v58(v59, &v156, v147);
  v147 = v51;
  sub_21D763428(v51, v48, type metadata accessor for TTRICollectionViewHitTestResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v73 = v42;
    sub_21D763490(v48, v45, type metadata accessor for TTRICollectionViewItemHit);
    v74 = v138;
    v75 = *(v74 + *(*v74 + 128));
    v77 = v148;
    v76 = v149;
    v156 = v149;
    v157 = v148;
    v158 = v55;
    v78 = v145;
    (*(v60 + 96))(v155, v45, &v156, v133, v60);
    *(v75 + qword_27CE8EAC8) = v155[0];
    v156 = v76;
    v157 = v77;
    v158 = v57;
    type metadata accessor for TTRICollectionViewDragItemSources();
    if (sub_21D76B1D4())
    {
      v156 = v76;
      v157 = v77;
      v158 = v57;
      sub_21D75C8E0(v78, v60, v45, &v156, v74, v73);
    }

    else
    {
      v156 = v76;
      v157 = v77;
      v158 = v57;
      sub_21D75D97C(v78, v60, v45, &v156, v73);
    }

    sub_21D7633B0(v45, type metadata accessor for TTRICollectionViewItemHit);
    sub_21D7633B0(v147, type metadata accessor for TTRICollectionViewHitTestResult);

    swift_unknownObjectRelease();
    v68 = v142;
    v69 = *(v142 + 32);
    v70 = v150;
    v71 = v150;
    v72 = v73;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v79 = v139;
    sub_21D763490(v48, v139, type metadata accessor for TTRICollectionViewEmptySpaceType);
    v80 = v138;
    v81 = *(*v138 + 120);
    swift_beginAccess();
    v82 = v132;
    (*(v132 + 16))(v140, v80 + v81, v141);
    v83 = *(v80 + *(*v80 + 128));
    v84 = v130;
    sub_21D763428(v79, v130, type metadata accessor for TTRICollectionViewEmptySpaceType);
    (*(v127 + 56))(v84, 0, 1, v128);
    v85 = qword_27CE8EAD0;
    swift_beginAccess();
    sub_21D0F02F4(v84, v83 + v85, &unk_27CE61450);
    swift_endAccess();
    v86 = v129;
    sub_21D763428(v79, v129, type metadata accessor for TTRICollectionViewEmptySpaceType);
    v87 = swift_getEnumCaseMultiPayload();
    if (!v87)
    {
      v94 = v135;
      MEMORY[0x223D3E490](0, *v86);
      v155[0] = v149;
      v155[1] = v148;
      v155[2] = v57;
      v95 = v136;
      sub_21D763428(v94, v136, type metadata accessor for TTRAdjustedIndexPath);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v152) = 2;
      v96 = v150;
      sub_21D75E3F4(v145, v60, v155, v95, &v152, v150);
      sub_21D7633B0(v95, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
      sub_21D7633B0(v94, type metadata accessor for TTRAdjustedIndexPath);
      (*(v82 + 8))(v140, v141);
      sub_21D7633B0(v139, type metadata accessor for TTRICollectionViewEmptySpaceType);
      sub_21D7633B0(v147, type metadata accessor for TTRICollectionViewHitTestResult);

      swift_unknownObjectRelease();
      return (*(v142 + 56))(v96, 0, 1, v143);
    }

    v88 = v148;
    v89 = v149;
    if (v87 != 1)
    {

      swift_unknownObjectRelease();
      sub_21D7633B0(v139, type metadata accessor for TTRICollectionViewEmptySpaceType);
      sub_21D7633B0(v147, type metadata accessor for TTRICollectionViewHitTestResult);
      return (*(v82 + 32))(v150, v140, v141);
    }

    v90 = v125;
    sub_21D76321C(v86, v125);
    v91 = v123;
    sub_21D0D3954(v90, v123, &qword_27CE61600);
    if ((*(v122 + 48))(v91, 1, v137) == 1)
    {

      swift_unknownObjectRelease();
      sub_21D0CF7E0(v90, &qword_27CE61600);
      sub_21D7633B0(v139, type metadata accessor for TTRICollectionViewEmptySpaceType);
      sub_21D7633B0(v147, type metadata accessor for TTRICollectionViewHitTestResult);
      sub_21D0CF7E0(v91, &qword_27CE61600);
      return (*(v82 + 32))(v150, v140, v141);
    }

    v138 = v57;
    sub_21D763490(v91, v124, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    v97 = v144;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v98 = v97[3];
      v99 = swift_getObjectType();
      WitnessTable = swift_getWitnessTable();
      v152 = v89;
      v153 = v88;
      v154 = v138;
      v101 = v119;
      v102 = v99;
      v90 = v125;
      (*(v98 + 64))(v97, WitnessTable, &v152, v102, v98);
      swift_unknownObjectRelease();
      v103 = v120;
      v104 = v121;
      v105 = (*(v120 + 48))(v101, 1, v121);
      v106 = v145;
      if (v105 != 1)
      {
        (*(v103 + 32))(v116, v101, v104);
        v107 = v114;
        v108 = v116;
        (*(v60 + 40))(v116, v133, v60);
        (*(v103 + 8))(v108, v104);
        v109 = type metadata accessor for TTRUnadjustedIndexPath(0);
        if ((*(*(v109 - 8) + 48))(v107, 1, v109) == 1)
        {
          sub_21D0CF7E0(v107, qword_27CE61488);
        }

        else
        {
          v110 = v124;
          sub_21D7633B0(v124, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
          sub_21D763490(v107, v110, type metadata accessor for TTRUnadjustedIndexPath);
          swift_storeEnumTagMultiPayload();
        }

        v106 = v145;
        goto LABEL_25;
      }
    }

    else
    {
      v101 = v119;
      (*(v120 + 56))(v119, 1, 1, v121);
      v106 = v145;
    }

    (*(v117 + 8))(v101, v118);
LABEL_25:
    v152 = v89;
    v153 = v88;
    v154 = v138;
    v151 = 1;
    v111 = v134;
    v112 = v124;
    sub_21D75E3F4(v106, v60, &v152, v124, &v151, v134);
    sub_21D7633B0(v112, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    sub_21D0CF7E0(v90, &qword_27CE61600);
    (*(v82 + 8))(v140, v141);
    sub_21D7633B0(v139, type metadata accessor for TTRICollectionViewEmptySpaceType);
    sub_21D7633B0(v147, type metadata accessor for TTRICollectionViewHitTestResult);

    swift_unknownObjectRelease();
    v68 = v142;
    v69 = *(v142 + 32);
    v70 = v150;
    v71 = v150;
    v72 = v111;
    goto LABEL_12;
  }

  v62 = v126;
  sub_21D763490(v48, v126, type metadata accessor for TTRICollectionViewGapHit);
  v63 = *(type metadata accessor for TTRICollectionViewHitIndexPaths(0) + 20);
  v64 = sub_21DBF5D5C();
  v65 = v135;
  (*(*(v64 - 8) + 16))(v135, v62 + v63, v64);
  v156 = v149;
  v157 = v148;
  v158 = v55;
  v66 = v136;
  sub_21D763428(v65, v136, type metadata accessor for TTRAdjustedIndexPath);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v155[0]) = 0;
  v67 = v134;
  sub_21D75E3F4(v145, v60, &v156, v66, v155, v134);
  sub_21D7633B0(v66, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  sub_21D7633B0(v65, type metadata accessor for TTRAdjustedIndexPath);
  sub_21D7633B0(v62, type metadata accessor for TTRICollectionViewGapHit);
  sub_21D7633B0(v147, type metadata accessor for TTRICollectionViewHitTestResult);

  swift_unknownObjectRelease();
  v68 = v142;
  v69 = *(v142 + 32);
  v70 = v150;
  v71 = v150;
  v72 = v67;
LABEL_12:
  v92 = v143;
  v69(v71, v72, v143);
  return (*(v68 + 56))(v70, 0, 1, v92);
}

uint64_t sub_21D75C8E0@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v185 = a3;
  v179 = a6;
  v195.val[0] = *(*v6 + 80);
  v195.val[1] = v195.val[0];
  v189 = v195.val[0];
  v190 = v195.val[0];
  v11 = &v193;
  vst2q_f64(v11, v195);
  v170 = type metadata accessor for TTRTreeViewDropDestination();
  v12 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v12 - 8);
  v169 = &v159 - v13;
  v167 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v167);
  v168 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v189.i64[1];
  v182 = v189.i64[0];
  v193 = vdupq_lane_s64(v189.i64[0], 0);
  v194 = vdupq_laneq_s64(v189, 1);
  v186 = type metadata accessor for TTRICollectionViewDropProposal();
  v189.i64[0] = sub_21DBFBA8C();
  v180 = *(v189.i64[0] - 8);
  MEMORY[0x28223BE20](v189.i64[0]);
  v171 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v159 - v17;
  MEMORY[0x28223BE20](v19);
  v175 = &v159 - v20;
  MEMORY[0x28223BE20](v21);
  v183 = &v159 - v22;
  v23 = type metadata accessor for TTRICollectionViewItemHit(0);
  v173 = *(v23 - 8);
  v24 = *(v173 + 64);
  MEMORY[0x28223BE20](v23);
  v172 = &v159 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v174 = &v159 - v26;
  v27 = *a4;
  v28 = a4[1];
  v29 = a4[2];
  v30 = v185;
  ObjectType = swift_getObjectType();
  v176 = v27;
  v193.i64[0] = v27;
  v193.i64[1] = v28;
  v187 = v28;
  v181 = v29;
  v194.i64[0] = v29;
  v32 = *(a2 + 96);
  v191 = a1;
  v184 = a2;
  v32(&v192, v30, &v193, ObjectType, a2);
  v33 = v192;
  *(*(a5 + *(*a5 + 128)) + qword_27CE8EAC8) = v192;
  v178 = v18;
  if (v33 > 2)
  {
    if (v33 != 3)
    {
      v81 = *(v30 + *(v23 + 20));
      v82 = v186;
      FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
      sub_21DBFC5CC();
      v83 = v24 + 7;
      if (v81 != 1)
      {
        swift_allocObject();
        v172 = sub_21DBFA60C();
        v38 = v128;
        v129 = v174;
        sub_21D763428(v30, v174, type metadata accessor for TTRICollectionViewItemHit);
        v130 = (*(v173 + 80) + 32) & ~*(v173 + 80);
        v131 = (v83 + v130) & 0xFFFFFFFFFFFFFFF8;
        v132 = (v131 + 15) & 0xFFFFFFFFFFFFFFF8;
        v43 = swift_allocObject();
        v44 = v82;
        v45 = v182;
        v133 = v188;
        *(v43 + 16) = v182;
        *(v43 + 24) = v133;
        sub_21D763490(v129, v43 + v130, type metadata accessor for TTRICollectionViewItemHit);
        *(v43 + v131) = v177;
        v134 = (v43 + v132);
        v135 = v184;
        *v134 = v191;
        v134[1] = v135;
        v136 = (v43 + ((v132 + 23) & 0xFFFFFFFFFFFFFFF8));
        v50 = v176;
        v137 = v187;
        *v136 = v176;
        v136[1] = v137;
        v136[2] = v181;
        v52 = sub_21D76328C;
        goto LABEL_12;
      }

      swift_allocObject();
      v165 = sub_21DBFA60C();
      v85 = v84;
      v164 = type metadata accessor for TTRICollectionViewItemHit;
      v86 = v174;
      sub_21D763428(v30, v174, type metadata accessor for TTRICollectionViewItemHit);
      v87 = *(v173 + 80);
      v173 = (v87 + 32) & ~v87;
      v88 = ((v83 + v173) & 0xFFFFFFFFFFFFFFF8);
      v162 = v88;
      v163 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v163 + 23) & 0xFFFFFFFFFFFFFFF8;
      v90 = swift_allocObject();
      v91 = v182;
      v92 = v188;
      *(v90 + 16) = v182;
      *(v90 + 24) = v92;
      v161 = type metadata accessor for TTRICollectionViewItemHit;
      sub_21D763490(v86, v90 + ((v87 + 32) & ~v87), type metadata accessor for TTRICollectionViewItemHit);
      v93 = v177;
      *(v88 + v90) = v177;
      v94 = (v90 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8));
      v95 = v184;
      *v94 = v191;
      v94[1] = v95;
      v96 = (v90 + v89);
      v97 = v176;
      v98 = v187;
      *v96 = v176;
      v96[1] = v98;
      v99 = v181;
      v96[2] = v181;
      v160 = v85;
      *v85 = sub_21D7632C4;
      v85[1] = v90;
      v61 = v91;
      v100 = v172;
      sub_21D763428(v185, v172, v164);
      v101 = swift_allocObject();
      *(v101 + 16) = v61;
      *(v101 + 24) = v92;
      v102 = v100;
      v80 = v186;
      sub_21D763490(v102, v101 + v173, v161);
      *(v162 + v101) = v93;
      v103 = (v101 + v163);
      v104 = v184;
      *v103 = v191;
      v103[1] = v104;
      v105 = (v101 + v89);
      *v105 = v97;
      v105[1] = v98;
      v105[2] = v99;
LABEL_10:
      v126 = v160;
      v160[2] = sub_21D765E7C;
      v126[3] = v101;
      v50 = v97;
      v127 = v165;
      sub_21D23C8B4();
      v79 = v127;
      swift_unknownObjectRetain();
      sub_21DBF8E0C();
      sub_21DBF8E0C();

      swift_unknownObjectRetain();
      goto LABEL_13;
    }

LABEL_6:
    FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
    sub_21DBFC5CC();
    swift_allocObject();
    v165 = sub_21DBFA60C();
    v54 = v53;
    v164 = type metadata accessor for TTRICollectionViewItemHit;
    v55 = v174;
    sub_21D763428(v30, v174, type metadata accessor for TTRICollectionViewItemHit);
    v56 = (*(v173 + 80) + 32) & ~*(v173 + 80);
    v57 = (v24 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v163 = v57;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v173 = v58;
    v59 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    v61 = v182;
    v62 = v188;
    *(v60 + 16) = v182;
    *(v60 + 24) = v62;
    v162 = type metadata accessor for TTRICollectionViewItemHit;
    sub_21D763490(v55, v60 + v56, type metadata accessor for TTRICollectionViewItemHit);
    v63 = v177;
    *(v60 + v57) = v177;
    v64 = (v60 + v58);
    v65 = v184;
    *v64 = v191;
    v64[1] = v65;
    v66 = (v60 + v59);
    v67 = v176;
    v68 = v187;
    *v66 = v176;
    v66[1] = v68;
    v69 = v181;
    v66[2] = v181;
    v161 = v54;
    *v54 = sub_21D765E7C;
    *(v54 + 8) = v60;
    v70 = v172;
    sub_21D763428(v185, v172, v164);
    v71 = swift_allocObject();
    v72 = v188;
    *(v71 + 16) = v61;
    *(v71 + 24) = v72;
    v73 = v70;
    v50 = v67;
    sub_21D763490(v73, v71 + v56, v162);
    *(v71 + v163) = v63;
    v74 = (v71 + v173);
    v75 = v184;
    *v74 = v191;
    v74[1] = v75;
    v76 = (v71 + v59);
    *v76 = v67;
    v76[1] = v68;
    v76[2] = v69;
    v77 = v161;
    *(v161 + 2) = sub_21D765E80;
    *(v77 + 3) = v71;
    v78 = v165;
    sub_21D23C8B4();
    v79 = v78;
    swift_unknownObjectRetain();
    v80 = v186;
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    swift_unknownObjectRetain();
    goto LABEL_13;
  }

  if (v33 < 2)
  {
    goto LABEL_6;
  }

  v34 = *(v30 + *(v23 + 20));
  v35 = v186;
  FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
  sub_21DBFC5CC();
  v36 = v24 + 7;
  if ((v34 & 1) == 0)
  {
    swift_allocObject();
    v165 = sub_21DBFA60C();
    v107 = v106;
    v164 = type metadata accessor for TTRICollectionViewItemHit;
    v108 = v174;
    sub_21D763428(v30, v174, type metadata accessor for TTRICollectionViewItemHit);
    v109 = *(v173 + 80);
    v173 = (v109 + 32) & ~v109;
    v110 = ((v36 + v173) & 0xFFFFFFFFFFFFFFF8);
    v162 = v110;
    v163 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
    v111 = (v163 + 23) & 0xFFFFFFFFFFFFFFF8;
    v112 = swift_allocObject();
    v113 = v182;
    v114 = v188;
    *(v112 + 16) = v182;
    *(v112 + 24) = v114;
    v161 = type metadata accessor for TTRICollectionViewItemHit;
    sub_21D763490(v108, v112 + ((v109 + 32) & ~v109), type metadata accessor for TTRICollectionViewItemHit);
    v115 = v177;
    *(v110 + v112) = v177;
    v116 = (v112 + ((v110 + 15) & 0xFFFFFFFFFFFFFFF8));
    v117 = v184;
    *v116 = v191;
    v116[1] = v117;
    v118 = (v112 + v111);
    v97 = v176;
    v119 = v187;
    *v118 = v176;
    v118[1] = v119;
    v120 = v181;
    v118[2] = v181;
    v160 = v107;
    *v107 = sub_21D765E80;
    v107[1] = v112;
    v61 = v113;
    v121 = v172;
    sub_21D763428(v185, v172, v164);
    v101 = swift_allocObject();
    *(v101 + 16) = v61;
    *(v101 + 24) = v114;
    v122 = v121;
    v80 = v186;
    sub_21D763490(v122, v101 + v173, v161);
    *(v162 + v101) = v115;
    v123 = (v101 + v163);
    v124 = v184;
    *v123 = v191;
    v123[1] = v124;
    v125 = (v101 + v111);
    *v125 = v97;
    v125[1] = v119;
    v125[2] = v120;
    goto LABEL_10;
  }

  swift_allocObject();
  v172 = sub_21DBFA60C();
  v38 = v37;
  v39 = v174;
  sub_21D763428(v30, v174, type metadata accessor for TTRICollectionViewItemHit);
  v40 = (*(v173 + 80) + 32) & ~*(v173 + 80);
  v41 = (v36 + v40) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v35;
  v45 = v182;
  v46 = v188;
  *(v43 + 16) = v182;
  *(v43 + 24) = v46;
  sub_21D763490(v39, v43 + v40, type metadata accessor for TTRICollectionViewItemHit);
  *(v43 + v41) = v177;
  v47 = (v43 + v42);
  v48 = v184;
  *v47 = v191;
  v47[1] = v48;
  v49 = (v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8));
  v50 = v176;
  v51 = v187;
  *v49 = v176;
  v49[1] = v51;
  v49[2] = v181;
  v52 = sub_21D765E7C;
LABEL_12:
  *v38 = v52;
  v38[1] = v43;
  v61 = v45;
  v80 = v44;
  v138 = v172;
  sub_21D23C8B4();
  v79 = v138;
LABEL_13:
  v139 = v183;
  v140 = *(v80 - 1);
  v141 = (*(v140 + 56))(v183, 1, 1, v80);
  v186 = &v159;
  v193.i64[0] = v79;
  MEMORY[0x28223BE20](v141);
  v142 = v188;
  *(&v159 - 4) = v61;
  *(&v159 - 3) = v142;
  *(&v159 - 2) = v139;
  swift_getFunctionTypeMetadata0();
  sub_21DBFA74C();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v143 = v187;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  swift_getWitnessTable();
  v144 = v80;
  v145 = v50;
  v146 = v175;
  sub_21DBFA48C();

  v147 = v180;
  v148 = v178;
  (*(v180 + 32))(v178, v146, v189.i64[0]);
  v149 = *(v140 + 48);
  if (v149(v148, 1, v144) == 1)
  {
    v150 = v145;
    v151 = v149;
    v152 = v171;
    (*(v147 + 16))(v171, v139, v189.i64[0]);
    if (v151(v152, 1, v144) == 1)
    {
      v193.i64[0] = v150;
      v193.i64[1] = v143;
      v194.i64[0] = v181;
      v153 = v168;
      swift_storeEnumTagMultiPayload();
      v154 = v169;
      (*(*(v170 - 8) + 56))(v169, 1, 1);
      v155 = v154;
      v156 = v171;
      TTRICollectionViewDropProposal.init(dragItemSources:dropOperation:dropIntent:dropDestination:)(&v193, 0, v153, v155, v179);
      v157 = v151;
      if (v151(v156, 1, v144) == 1)
      {
        swift_unknownObjectRetain();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
      }

      else
      {
        v191 = *(v147 + 8);
        swift_unknownObjectRetain();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v191(v156, v189.i64[0]);
      }
    }

    else
    {
      v157 = v151;
      (*(v140 + 32))(v179, v152, v144);
    }

    v139 = v183;
    if (v157(v148, 1, v144) != 1)
    {
      (*(v147 + 8))(v148, v189.i64[0]);
    }
  }

  else
  {
    (*(v140 + 32))(v179, v148, v144);
  }

  return (*(v147 + 8))(v139, v189.i64[0]);
}

uint64_t sub_21D75D97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a1;
  v101 = a2;
  v94 = a5;
  v105.val[0] = *(*v5 + 80);
  v105.val[1] = v105.val[0];
  v98 = v105.val[0];
  v99 = v105.val[0];
  v8 = &v103;
  vst2q_f64(v8, v105);
  type metadata accessor for TTRTreeViewDropDestination();
  v76 = sub_21DBFBA8C();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = v71 - v9;
  v72 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v72);
  v73 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71[1] = v98.i64[1];
  v83 = v98.i64[0];
  v82 = type metadata accessor for TTRICollectionViewDragAndDropCoordinator.DropValidationResult();
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v84 = v71 - v13;
  v86 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v86);
  v81 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v91 = v71 - v16;
  v103 = vdupq_lane_s64(v98.i64[0], 0);
  v104 = vdupq_laneq_s64(v98, 1);
  v98.i64[0] = type metadata accessor for TTRICollectionViewDropProposal();
  v96 = *(v98.i64[0] - 8);
  MEMORY[0x28223BE20](v98.i64[0]);
  v80 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v71 - v19;
  v21 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v21 - 8);
  v89 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v71 - v24;
  v26 = sub_21DBF5D5C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a4;
  v32 = a4[1];
  v33 = a4[2];
  v87 = v27;
  v34 = *(v27 + 16);
  v34(v30, a3, v26, v28);
  v92 = v30;
  v93 = v26;
  (v34)(v25, v30, v26);
  v95 = v31;
  v103.i64[0] = v31;
  v103.i64[1] = v32;
  v97 = v32;
  v85 = v33;
  v104.i64[0] = v33;
  v88 = v25;
  sub_21D75EB28(v100, v101, v103.i64, v25, v20);
  v90 = v20;
  v35 = *(v20 + 3);
  v36 = type metadata accessor for TTRICollectionViewItemHit(0);
  v77 = a3;
  if (v35 < 2)
  {
    v37 = v81;
    v39 = v92;
    v38 = v93;
    (v34)(v81, v92, v93);
    swift_storeEnumTagMultiPayload();
    v103.i64[0] = v95;
    v103.i64[1] = v97;
    v104.i64[0] = v85;
    v102 = 0;
    sub_21D75E3F4(v100, v101, v103.i64, v37, &v102, v94);
    sub_21D7633B0(v37, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    (*(v96 + 8))(v90, v98.i64[0]);
    sub_21D7633B0(v88, type metadata accessor for TTRUnadjustedIndexPath);
    return (*(v87 + 8))(v39, v38);
  }

  v81 = v36;
  v41 = v88;
  v42 = v91;
  sub_21D763428(v88, v91, type metadata accessor for TTRUnadjustedIndexPath);
  swift_storeEnumTagMultiPayload();
  v43 = v95;
  v44 = v97;
  v103.i64[0] = v95;
  v103.i64[1] = v97;
  v45 = v85;
  v104.i64[0] = v85;
  v46 = type metadata accessor for TTRICollectionViewDragItemSources();
  v47 = v89;
  sub_21D76ABB8(v42, v46, v89);
  v48 = v43;
  v103.i64[0] = v43;
  v103.i64[1] = v44;
  v104.i64[0] = v45;
  v49 = v84;
  sub_21D75EF88(v100, v101, v103.i64, v47, v84);
  v50 = v96;
  v51 = v80;
  v52 = v90;
  v53 = v98.i64[0];
  (*(v96 + 16))(v80, v90, v98.i64[0]);
  v54 = *(v49 + *(v82 + 36));
  v55 = v50;
  v56 = v49;
  v57 = v52;
  if (v54 < 2)
  {
    (*(v79 + 8))(v56);
    sub_21D7633B0(v89, type metadata accessor for TTRUnadjustedIndexPath);
    sub_21D7633B0(v91, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    (*(v50 + 8))(v52, v53);
    sub_21D7633B0(v41, type metadata accessor for TTRUnadjustedIndexPath);
    v58 = v87;
LABEL_8:
    (*(v58 + 8))(v92, v93);
    return (*(v55 + 32))(v94, v51, v53);
  }

  v59 = v45;
  v60 = v41;
  v61 = v91;
  v62 = (v50 + 8);
  v58 = v87;
  if (*(v77 + *(v81 + 6)) == 1)
  {
    (*(v79 + 8))(v84);
    sub_21D7633B0(v89, type metadata accessor for TTRUnadjustedIndexPath);
    sub_21D7633B0(v61, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    v53 = v98.i64[0];
    (*v62)(v57, v98.i64[0]);
    sub_21D7633B0(v60, type metadata accessor for TTRUnadjustedIndexPath);
    goto LABEL_8;
  }

  v103.i64[0] = v48;
  v103.i64[1] = v97;
  v104.i64[0] = v59;
  sub_21D76B268(v91, v46, v78);
  v63 = *v62;
  v64 = v98.i64[0];
  (*v62)(v51, v98.i64[0]);
  sub_21D7633B0(v89, type metadata accessor for TTRUnadjustedIndexPath);
  sub_21D7633B0(v61, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  v63(v57, v64);
  sub_21D7633B0(v60, type metadata accessor for TTRUnadjustedIndexPath);
  (*(v58 + 8))(v92, v93);
  v103.i64[0] = v95;
  v103.i64[1] = v97;
  v104.i64[0] = v59;
  v65 = v84;
  v66 = *(v84 + *(v82 + 36));
  v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220) + 48);
  v68 = v73;
  sub_21D763490(v78, v73, type metadata accessor for TTRAdjustedIndexPath);
  *(v68 + v67) = 0;
  v55 = v96;
  swift_storeEnumTagMultiPayload();
  v69 = v74;
  v70 = v65;
  v53 = v64;
  (*(v75 + 32))(v74, v70, v76);
  TTRICollectionViewDropProposal.init(dragItemSources:dropOperation:dropIntent:dropDestination:)(&v103, v66, v68, v69, v51);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return (*(v55 + 32))(v94, v51, v53);
}

uint64_t sub_21D75E3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v43 = a1;
  v44 = a2;
  v51 = a6;
  v42 = v7;
  v56.val[0] = *(*v7 + 80);
  v56.val[1] = v56.val[0];
  v52 = v56.val[0];
  v53 = v56.val[0];
  v11 = &v54;
  vst2q_f64(v11, v56);
  type metadata accessor for TTRTreeViewDropDestination();
  v12 = sub_21DBFBA8C();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v50 = &v37[-v13];
  v45 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = v52.i64[1];
  v18 = v52.i64[0];
  v19 = type metadata accessor for TTRICollectionViewDragAndDropCoordinator.DropValidationResult();
  MEMORY[0x28223BE20](v19);
  v21 = &v37[-v20];
  v22 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v37[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = vdupq_lane_s64(v52.i64[0], 0);
  v55 = vdupq_laneq_s64(v52, 1);
  v25 = type metadata accessor for TTRICollectionViewDropProposal();
  v40 = *(v25 - 8);
  v41 = v25;
  MEMORY[0x28223BE20](v25);
  v39 = &v37[-v26];
  v27 = *a3;
  v28 = a3[1];
  v29 = a3[2];
  v38 = *a5;
  v54.i64[0] = v27;
  v54.i64[1] = v28;
  v55.i64[0] = v29;
  v52.i64[0] = v18;
  v30 = type metadata accessor for TTRICollectionViewDragItemSources();
  sub_21D76ABB8(a4, v30, v24);
  v54.i64[0] = v27;
  v54.i64[1] = v28;
  v55.i64[0] = v29;
  sub_21D75EF88(v43, v44, v54.i64, v24, v21);
  if (*&v21[*(v19 + 36)] >= 2uLL)
  {
    v54.i64[0] = v27;
    v54.i64[1] = v28;
    v55.i64[0] = v29;
    sub_21D76B268(a4, v30, v17);
    sub_21D7633B0(v24, type metadata accessor for TTRUnadjustedIndexPath);
    v54.i64[0] = v27;
    v54.i64[1] = v28;
    v55.i64[0] = v29;
    v31 = *&v21[*(v19 + 36)];
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220) + 48);
    v32 = v47;
    sub_21D763490(v17, v47, type metadata accessor for TTRAdjustedIndexPath);
    v32[v33] = v38;
  }

  else
  {
    sub_21D7633B0(v24, type metadata accessor for TTRUnadjustedIndexPath);
    v54.i64[0] = v27;
    v54.i64[1] = v28;
    v55.i64[0] = v29;
    v31 = *&v21[*(v19 + 36)];
    v32 = v47;
  }

  swift_storeEnumTagMultiPayload();
  v34 = v50;
  (*(v48 + 32))(v50, v21, v49);
  v35 = v39;
  TTRICollectionViewDropProposal.init(dragItemSources:dropOperation:dropIntent:dropDestination:)(&v54, v31, v32, v34, v39);
  (*(v40 + 32))(v51, v35, v41);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  return sub_21DBF8E0C();
}

uint64_t sub_21D75E8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v20 = a3;
  v13 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for TTRICollectionViewHitIndexPaths(0) + 20);
  v17 = sub_21DBF5D5C();
  (*(*(v17 - 8) + 16))(v15, a1 + v16, v17);
  swift_storeEnumTagMultiPayload();
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v21 = 0;
  sub_21D75E3F4(a2, v20, v22, v15, &v21, a7);
  return sub_21D7633B0(v15, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
}

uint64_t sub_21D75EA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF5D5C();
  (*(*(v17 - 8) + 16))(v16, a1, v17);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  sub_21D75EB28(a2, a3, v20, v16, a7);
  return sub_21D7633B0(v16, type metadata accessor for TTRUnadjustedIndexPath);
}

uint64_t sub_21D75EB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a1;
  v25 = a2;
  v29 = a5;
  v33.val[0] = *(*v5 + 80);
  v33.val[1] = v33.val[0];
  v22[0] = v33.val[0];
  v22[1] = v33.val[0];
  v8 = &v30;
  vst2q_f64(v8, v33);
  type metadata accessor for TTRTreeViewDropDestination();
  v9 = sub_21DBFBA8C();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v26 = v22 - v10;
  v23 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v23);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRICollectionViewDragAndDropCoordinator.DropValidationResult();
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[2];
  v30 = v16;
  v31 = v17;
  v32 = v18;
  sub_21D75F4A0(v24, v25, &v30, a4, v22 - v14);
  if (*&v15[*(v13 + 36)] >= 2uLL)
  {
    sub_21D763428(a4, v12, type metadata accessor for TTRUnadjustedIndexPath);
  }

  swift_storeEnumTagMultiPayload();
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v19 = *&v15[*(v13 + 36)];
  v20 = v26;
  (*(v27 + 32))(v26, v15, v28);
  TTRICollectionViewDropProposal.init(dragItemSources:dropOperation:dropIntent:dropDestination:)(&v30, v19, v12, v20, v29);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  return sub_21DBF8E0C();
}

uint64_t sub_21D75EDC4@<X0>(void (**a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[0] = a3;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a4;
  v8 = type metadata accessor for TTRICollectionViewDropProposal();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  (*a1)(v10);
  v13 = sub_21DBFBA8C();
  (*(*(v13 - 8) + 8))(a2, v13);
  (*(v9 + 16))(a2, v12, v8);
  v14 = *(v9 + 56);
  v14(a2, 0, 1, v8);
  if (*(v12 + 3) > 1uLL)
  {
    (*(v9 + 32))(a5, v12, v8);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v15 = 1;
  }

  return v14(a5, v15, 1, v8);
}

uint64_t sub_21D75EF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v47 = a4;
  v48 = a2;
  v45 = *v6;
  v46 = a1;
  v60.val[0] = *(v45 + 80);
  v60.val[1] = v60.val[0];
  v50 = v60.val[0];
  v51 = v60.val[0];
  v9 = v59;
  vst2q_f64(v9, v60);
  v10 = type metadata accessor for TTRTreeViewDropDestination();
  v11 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v11 - 8);
  v55 = &v36 - v12;
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v13);
  v44 = &v36 - v14;
  v15 = v50;
  v59[0] = vdupq_lane_s64(v50.i64[0], 0);
  v59[1] = vdupq_laneq_s64(v50, 1);
  v16 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  v42 = sub_21DBFBA8C();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v18 = &v36 - v17;
  v19 = *(v16 - 8);
  MEMORY[0x28223BE20](v20);
  v43 = &v36 - v21;
  v22 = *a3;
  v49 = a3[1];
  v50.i64[0] = v22;
  v23 = a3[2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v52 = v15.i64[1];
  v53 = v15.i64[0];
  if (Strong)
  {
    v39 = v10;
    v40 = a5;
    v37 = v6[3];
    ObjectType = swift_getObjectType();
    v56 = v50.i64[0];
    v57 = v49;
    v38 = v23;
    v58 = v23;
    type metadata accessor for TTRICollectionViewDragItemSources();
    v26 = sub_21D76AAEC();
    (*(v48 + 72))(v47, v26, ObjectType);

    if ((*(v19 + 48))(v18, 1, v16) != 1)
    {
      v31 = v43;
      (*(v19 + 32))(v43, v18, v16);
      v32 = v44;
      (*(v19 + 16))(v44, v31, v16);
      v10 = v39;
      swift_storeEnumTagMultiPayload();
      v33 = swift_getObjectType();
      WitnessTable = swift_getWitnessTable();
      v56 = v50.i64[0];
      v57 = v49;
      v58 = v38;
      v27 = (*(v37 + 72))(v6, WitnessTable, &v56, v32, v33);
      swift_unknownObjectRelease();
      (*(v19 + 8))(v31, v16);
      v30 = v54;
      v29 = v55;
      (*(v54 + 32))(v55, v32, v10);
      v28 = 0;
      a5 = v40;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    (*(v41 + 8))(v18, v42);
    v27 = 0;
    v28 = 1;
    a5 = v40;
    v10 = v39;
  }

  else
  {
    v27 = 0;
    v28 = 1;
  }

  v30 = v54;
  v29 = v55;
LABEL_7:
  (*(v30 + 56))(v29, v28, 1, v10);
  return sub_21D759E04(v29, v27, a5);
}

uint64_t sub_21D75F4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v47 = a4;
  v48 = a2;
  v45 = *v6;
  v46 = a1;
  v60.val[0] = *(v45 + 80);
  v60.val[1] = v60.val[0];
  v50 = v60.val[0];
  v51 = v60.val[0];
  v9 = v59;
  vst2q_f64(v9, v60);
  v10 = type metadata accessor for TTRTreeViewDropDestination();
  v11 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v11 - 8);
  v55 = &v36 - v12;
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v13);
  v44 = &v36 - v14;
  v15 = v50;
  v59[0] = vdupq_lane_s64(v50.i64[0], 0);
  v59[1] = vdupq_laneq_s64(v50, 1);
  v16 = type metadata accessor for TTRNormalizedItemLocation();
  v42 = sub_21DBFBA8C();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v18 = &v36 - v17;
  v19 = *(v16 - 8);
  MEMORY[0x28223BE20](v20);
  v43 = &v36 - v21;
  v22 = *a3;
  v49 = a3[1];
  v50.i64[0] = v22;
  v23 = a3[2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v52 = v15.i64[1];
  v53 = v15.i64[0];
  if (Strong)
  {
    v39 = v10;
    v40 = a5;
    v37 = v6[3];
    ObjectType = swift_getObjectType();
    v56 = v50.i64[0];
    v57 = v49;
    v38 = v23;
    v58 = v23;
    type metadata accessor for TTRICollectionViewDragItemSources();
    v26 = sub_21D76AAEC();
    (*(v48 + 64))(v47, v26, ObjectType);

    if ((*(v19 + 48))(v18, 1, v16) != 1)
    {
      v31 = v43;
      (*(v19 + 32))(v43, v18, v16);
      v32 = v44;
      (*(v19 + 16))(v44, v31, v16);
      v10 = v39;
      swift_storeEnumTagMultiPayload();
      v33 = swift_getObjectType();
      WitnessTable = swift_getWitnessTable();
      v56 = v50.i64[0];
      v57 = v49;
      v58 = v38;
      v27 = (*(v37 + 72))(v6, WitnessTable, &v56, v32, v33);
      swift_unknownObjectRelease();
      (*(v19 + 8))(v31, v16);
      v30 = v54;
      v29 = v55;
      (*(v54 + 32))(v55, v32, v10);
      v28 = 0;
      a5 = v40;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    (*(v41 + 8))(v18, v42);
    v27 = 0;
    v28 = 1;
    a5 = v40;
    v10 = v39;
  }

  else
  {
    v27 = 0;
    v28 = 1;
  }

  v30 = v54;
  v29 = v55;
LABEL_7:
  (*(v30 + 56))(v29, v28, 1, v10);
  return sub_21D759E04(v29, v27, a5);
}

void sub_21D75F9B8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = qword_280D0F018;
  if (*(v6 + qword_280D0F018))
  {
    if (qword_27CE56C80 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE61460);
    sub_21DBF8E0C();
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAE9C();

    if (os_log_type_enabled(v13, v14))
    {
      v23 = a6;
      v15 = swift_slowAlloc();
      v22 = a1;
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315394;
      v17 = sub_21D759D64();
      v19 = sub_21D0CDFB4(v17, v18, &v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_21D0CDFB4(a2, a3, &v26);
      _os_log_impl(&dword_21D0C9000, v13, v14, "%s: session ended - %s", v15, 0x16u);
      swift_arrayDestroy();
      v20 = v16;
      a1 = v22;
      MEMORY[0x223D46520](v20, -1, -1);
      v21 = v15;
      a6 = v23;
      MEMORY[0x223D46520](v21, -1, -1);
    }

    *(v6 + v7) = 0;

    sub_21D75FBF8(a4, a5);
    sub_21D75FC70();
    if (a6)
    {

      sub_21D75FDEC(a1);
    }
  }
}

uint64_t sub_21D75FBF8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + qword_280D0F038);
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  ObjectType = swift_getObjectType();
  return (*(a2 + 112))(0, 1, ObjectType, a2);
}

void sub_21D75FC70()
{
  v1 = v0;
  v2 = *(v0 + qword_280D0F018);
  if (v2)
  {
    v3 = *v0;
    v4 = *(v0 + qword_280D0F020);

    v5 = [v4 window];
    if (v5)
    {

      swift_beginAccess();
      if (byte_27CE64978 == 1)
      {
        v6 = *(v1 + qword_280D0F040);
        if (v6)
        {
          v7 = *(v1 + qword_280D0F040);
        }

        else
        {
          v7 = sub_21D7612A8(v1);
        }

        v10 = *(v2 + 16);
        v15 = v2;

        v11 = v6;
        v16.val[0] = *(v3 + 80);
        v16.val[1] = v16.val[0];
        v12 = &v14;
        vst2q_f64(v12, v16);
        v13 = type metadata accessor for TTRICollectionViewDropContext();
        sub_21D9EE598(v4, v10, &v15, v7, v13, &protocol witness table for TTRICollectionViewDropContext<A, B>);

        return;
      }
    }
  }

  v8 = *(v1 + qword_280D0F040);
  if (v8)
  {
    v9 = v8;
    TTRIDebugDropIndicatorView.stopShowing()();
  }
}

uint64_t sub_21D75FDEC(void *a1)
{
  v42 = *v1;
  v3 = v42;
  v4 = *(v42 + 10);
  v5 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v6 = sub_21DBFBA8C();
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = v38 - v7;
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = v38 - v9;
  sub_21D0D8CF0(255, qword_27CE61010);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = sub_21DBFBA8C();
  v43 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (v38 - v14);
  v59 = sub_21D75A7A8(a1);
  v56 = v4;
  v44 = v1;
  v57 = *(v3 + 11);
  v50 = v4;
  v51 = v4;
  v52 = v57;
  v45 = v57;
  v53 = sub_21D76313C;
  v54 = &v55;
  v48 = v6;
  swift_getTupleTypeMetadata2();
  sub_21DBFA74C();
  swift_getWitnessTable();
  v16 = sub_21DBFA4EC();

  v59 = v16;
  sub_21DBFA74C();
  swift_getWitnessTable();
  v17 = sub_21DBFACFC();
  if (v17)
  {
  }

  v19 = v16;
  v41 = v38;
  v59 = v16;
  MEMORY[0x28223BE20](v17);
  v38[1] = 0;
  v20 = v45;
  v38[-2] = v50;
  v38[-1] = v20;
  sub_21DBF8E0C();
  swift_getWitnessTable();
  v21 = sub_21DBFA49C();
  v45 = v19;

  v22 = v44;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = v22[3];
    ObjectType = swift_getObjectType();
    WitnessTable = swift_getWitnessTable();
    (*(v23 + 5))(v22, WitnessTable, v21, ObjectType, v23);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v26 = 0;
  v44 = (v43 + 4);
  v43 = (v39 + 32);
  v42 = (v39 + 16);
  v41 = (v39 + 56);
  ++v40;
  v27 = (v39 + 8);
  v28 = v45;
  while (1)
  {
    if (v26 == sub_21DBFA6DC())
    {
      v29 = *(TupleTypeMetadata2 - 8);
      (*(v29 + 56))(v12, 1, 1, TupleTypeMetadata2);
      goto LABEL_12;
    }

    v30 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v30)
    {
      v31 = *(TupleTypeMetadata2 - 8);
      result = (*(v31 + 16))(v12, v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, TupleTypeMetadata2);
      v32 = __OFADD__(v26++, 1);
      if (v32)
      {
        break;
      }

      goto LABEL_11;
    }

    result = sub_21DBFBF7C();
    v31 = *(TupleTypeMetadata2 - 8);
    if (*(v31 + 64) != 8)
    {
      goto LABEL_18;
    }

    v58 = result;
    (*(v31 + 16))(v12, &v58, TupleTypeMetadata2);
    result = swift_unknownObjectRelease();
    v32 = __OFADD__(v26++, 1);
    if (v32)
    {
      break;
    }

LABEL_11:
    v29 = v31;
    (*(v31 + 56))(v12, 0, 1, TupleTypeMetadata2);
LABEL_12:
    (*v44)(v15, v12, v49);
    if ((*(v29 + 48))(v15, 1, TupleTypeMetadata2) == 1)
    {
    }

    v33 = *v15;
    v34 = v12;
    v35 = v46;
    (*v43)(v46, v15 + *(TupleTypeMetadata2 + 48), v5);
    v35[*(v5 + 36)] = 0;
    v36 = v47;
    (*v42)(v47, v35, v5);
    (*v41)(v36, 0, 1, v5);
    sub_21D75A5D4(v36);

    (*v40)(v36, v48);
    v37 = v35;
    v12 = v34;
    v28 = v45;
    (*v27)(v37, v5);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

id sub_21D76062C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v22 = a1;
  v5 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = *(v5 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  (*(v7 + 16))(v9, a2, v6, v12);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_8:
    sub_21D0D8CF0(255, qword_27CE61010);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a3, 1, 1, TupleTypeMetadata2);
  }

  v15 = *(v10 + 32);
  v15(v14, v9, v5);
  if (v14[*(v5 + 36)] != 1)
  {
    (*(v10 + 8))(v14, v5);
    goto LABEL_8;
  }

  sub_21D0D8CF0(255, qword_27CE61010);
  v16 = swift_getTupleTypeMetadata2();
  v17 = *(v16 + 48);
  *a3 = v22;
  v15(&a3[v17], v14, v5);
  (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  v18 = v22;

  return v18;
}

uint64_t sub_21D760940(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  sub_21D0D8CF0(255, qword_27CE61010);
  type metadata accessor for TTRICollectionViewDragItemUserInfo();
  sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_21D760A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21D0D8CF0(255, qword_27CE61010);
  v6 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = (v14 - v9);
  (*(v11 + 16))(v14 - v9, a1, TupleTypeMetadata2, v8);

  v12 = v10 + *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 16))(a3, &v12[*(v6 + 32)], a2);
  return (*(*(v6 - 8) + 8))(v12, v6);
}

uint64_t sub_21D760B94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31.val[0] = *(*v2 + 80);
  v31.val[1] = v31.val[0];
  v6 = &v30;
  vst2q_f64(v6, v31);
  v7 = type metadata accessor for TTRICollectionViewDropProposal();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61488);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = *(v3 + qword_280D0F018);
  if (v14)
  {
    v29 = a2;
    v15 = *(*v14 + 120);
    swift_beginAccess();
    v16 = *(v8 + 48);
    v17 = v16(v14 + v15, 1, v7);
    v28 = a1;
    if (v17)
    {
      v18 = type metadata accessor for TTRUnadjustedIndexPath(0);
      (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    }

    else
    {
      (*(v8 + 16))(v10, v14 + v15, v7);

      TTRICollectionViewDropProposal.indexPathForCustomInsertionIndicator.getter(v7, v13);
      (*(v8 + 8))(v10, v7);
    }

    v22 = *(*v14 + 120);
    swift_beginAccess();
    v20 = 1;
    if (v16(v14 + v22, 1, v7))
    {
      v21 = 0;
    }

    else
    {
      (*(v8 + 16))(v10, v14 + v22, v7);
      v21 = TTRICollectionViewDropProposal.sectionIndexForCustomDropHighlight.getter(v7);
      v20 = v23;
      (*(v8 + 8))(v10, v7);
    }

    a1 = v28;
    a2 = v29;
  }

  else
  {
    v19 = type metadata accessor for TTRUnadjustedIndexPath(0);
    v20 = 1;
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v21 = 0;
  }

  if ((sub_21D760F48(v3, v13, a1, a2) & 1) == 0)
  {
    v24 = *(v3 + qword_280D0F038);
    if (v24)
    {
      [v24 removeFromSuperview];
    }
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 112))(v21, v20 & 1, ObjectType, a2);

  return sub_21D0CF7E0(v13, qword_27CE61488);
}

uint64_t sub_21D760F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61488);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30[-1] - v8;
  v10 = type metadata accessor for TTRUnadjustedIndexPath(0);
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + qword_280D0F020);
  result = [v15 window];
  if (result)
  {

    sub_21D0D3954(a2, v9, qword_27CE61488);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_21D0CF7E0(v9, qword_27CE61488);
      return 0;
    }

    else
    {
      sub_21D763490(v9, v14, type metadata accessor for TTRUnadjustedIndexPath);
      ObjectType = swift_getObjectType();
      (*(a4 + 104))(v30, v14, v15, ObjectType, a4);
      if (v31)
      {
        sub_21D7633B0(v14, type metadata accessor for TTRUnadjustedIndexPath);
        return 0;
      }

      else
      {
        v18 = *v30;
        v19 = *&v30[1];
        v20 = *&v30[2];
        v21 = *&v30[3];
        v22 = *(a1 + qword_280D0F038);
        if (v22)
        {
          v23 = *(a1 + qword_280D0F038);
        }

        else
        {
          v23 = sub_21D761240(a1);
        }

        v24 = v23;
        v25 = v22;
        v26 = [v24 superview];
        v27 = &selRef_addSubview_;
        if (v26)
        {
          v28 = v26;

          if (v28 == v15)
          {
            v27 = &selRef_bringSubviewToFront_;
          }
        }

        [v15 *v27];
        [v24 setFrame_];

        sub_21D7633B0(v14, type metadata accessor for TTRUnadjustedIndexPath);
        return 1;
      }
    }
  }

  return result;
}

id sub_21D761240(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView()) initWithFrame_];
  v3 = *(a1 + qword_280D0F038);
  *(a1 + qword_280D0F038) = v2;
  v4 = v2;

  return v4;
}

id sub_21D7612A8(uint64_t a1)
{
  type metadata accessor for TTRIDebugDropIndicatorView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(a1 + qword_280D0F040);
  *(a1 + qword_280D0F040) = v2;
  v4 = v2;

  return v4;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.deinit()
{
  sub_21D157444(v0 + 16);

  v1 = qword_280D0F010;
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.__deallocating_deinit()
{
  TTRICollectionViewDragAndDropCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRICollectionViewDragAndDropCoordinator.dragAndDropProvider(_:itemsForBeginning:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(v4 + qword_280D0F008) + 32))
  {
    if (qword_27CE56C80 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE61460);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAE9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      v11 = sub_21D759D64();
      v13 = sub_21D0CDFB4(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "%s: disallow starting a drag because there is an in-progress drag", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {

    return sub_21D759EB8(a1, a2, a3, a4, 1);
  }
}

BOOL sub_21D7615E8(uint64_t a1)
{
  sub_21D0D8CF0(255, qword_27CE61010);
  v2 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return (*(*(v2 - 8) + 48))(a1 + *(TupleTypeMetadata2 + 48), 1, v2) != 1;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.dragAndDropProvider(_:dropSessionDidEnter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *v3;
  TTRICollectionViewDragAndDropActivityTracker.dropSessionDidEnter(_:)(a3);
  v14.val[0] = *(v7 + 80);
  v14.val[1] = v14.val[0];
  v8 = &v13;
  vst2q_f64(v8, v14);
  type metadata accessor for TTRICollectionViewDropContext();
  *(v3 + qword_280D0F018) = TTRICollectionViewDropContext.__allocating_init(session:)(a3);
  swift_unknownObjectRetain();

  sub_21D760B94(a1, a2);
  sub_21D75FC70();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = v3[3];
    ObjectType = swift_getObjectType();
    WitnessTable = swift_getWitnessTable();
    (*(v10 + 56))(v3, WitnessTable, a3, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.dragAndDropProvider(_:dropSessionDidEnd:)(uint64_t a1, uint64_t a2, void *a3)
{
  TTRICollectionViewDragAndDropActivityTracker.dropSessionDidEnd(_:)(a3);
  sub_21D75F9B8(a3, 0xD000000000000016, 0x800000021DC6A240, a1, a2, 1);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    WitnessTable = swift_getWitnessTable();
    (*(v8 + 88))(v3, WitnessTable, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.dragAndDropProvider(_:performDropWith:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a3;
  v28 = *v4;
  v35.val[0] = *(v28 + 80);
  v35.val[1] = v35.val[0];
  v7 = &v34;
  v29 = v35.val[0];
  v30 = v35.val[0];
  vst2q_f64(v7, v35);
  v8 = type metadata accessor for TTRICollectionViewDropProposal();
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = sub_21DBF56BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a2;
  v32 = a1;
  sub_21D75FBF8(a1, a2);
  v17 = qword_280D0F010;
  swift_beginAccess();
  (*(v14 + 16))(v16, &v4[v17], v13);
  v18 = *&v4[qword_280D0F018];
  if (v18)
  {
    v19 = *(*v18 + 120);
    swift_beginAccess();
    (*(v10 + 16))(v12, v18 + v19, v9);
  }

  else
  {
    (*(*(v8 - 8) + 56))(v12, 1, 1, v8);
  }

  type metadata accessor for TTRICollectionViewDropCommitCoordinator();
  v20 = v33;
  v21 = TTRICollectionViewDropCommitCoordinator.__allocating_init(dropCoordinator:dragAndDropCoordinatorID:dragAndDropProvider:lastDropProposal:)(v33, v16, v32, v31, v12);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v4 + 3);
    ObjectType = swift_getObjectType();
    WitnessTable = swift_getWitnessTable();
    v25 = *(v22 + 80);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v25(v4, WitnessTable, v21, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  sub_21D75FDEC([v20 session]);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D761D40(void *a1)
{
  v2 = v1;
  v42 = *v1;
  v41 = *(v42 + 80);
  v4 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - v5;
  sub_21D0D8CF0(255, qword_27CE61010);
  v6 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_21DBFBA8C();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = (&v38 - v9);
  v11 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v11);
  v13 = (&v38 - v12);
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v14);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  MEMORY[0x28223BE20](v19);
  v47 = &v38 - v20;
  TTRICollectionViewDragAndDropActivityTracker.dragSessionWillBegin(_:)(a1);
  v21 = sub_21D75A7A8(a1);
  if (sub_21DBFA6DC() == 1)
  {
    v39 = v4;
    v49 = v21;
    sub_21DBFA74C();
    swift_getWitnessTable();
    sub_21DBFACEC();

    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v10, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v44 + 8))(v10, v45);
    }

    else
    {
      v23 = *(TupleTypeMetadata2 + 48);
      v24 = *(v11 + 48);
      *v13 = *v10;
      v25 = v48;
      v26 = *(v48 + 32);
      v26(v13 + v24, v10 + v23, v6);
      v27 = *v13;
      v28 = v47;
      v26(v47, v13 + *(v11 + 48), v6);
      (*(v25 + 16))(v18, v28, v6);
      v29 = v46;
      v30 = v39;
      if ((*(v46 + 48))(v18, 1, v39) == 1)
      {
        v31 = *(v25 + 8);
        v31(v28, v6);

        return (v31)(v18, v6);
      }

      else
      {
        v32 = v43;
        (*(v29 + 32))(v43, v18, v30);
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = v2[3];
          ObjectType = swift_getObjectType();
          WitnessTable = swift_getWitnessTable();
          if ((*(v33 + 32))(v2, WitnessTable, &v32[*(v30 + 32)], ObjectType, v33))
          {
            v32[*(v30 + 36)] = 1;
            v36 = v40;
            (*(v29 + 16))(v40, v32, v30);
            (*(v29 + 56))(v36, 0, 1, v30);
            sub_21D75A5D4(v36);
            swift_unknownObjectRelease();

            v37 = *(v48 + 8);
            v37(v36, v6);
            (*(v29 + 8))(v32, v30);
            return (v37)(v47, v6);
          }

          else
          {
            swift_unknownObjectRelease();

            (*(v29 + 8))(v32, v30);
            return (*(v48 + 8))(v47, v6);
          }
        }

        else
        {

          (*(v29 + 8))(v32, v30);
          return (*(v48 + 8))(v28, v6);
        }
      }
    }
  }

  else
  {
  }
}

uint64_t _s15RemindersUICore40TTRICollectionViewDragAndDropCoordinatorC04dragfG8Provider_16itemsForAddingTo2at5pointSaySo10UIDragItemCGAA0cdefG9Providing_px0R2IDRts_XP_So0Q7Session_p10Foundation9IndexPathVSo7CGPointVtF_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_21D75A7A8(a3);
  sub_21D0D8CF0(255, qword_27CE61010);
  type metadata accessor for TTRICollectionViewDragItemUserInfo();
  sub_21DBFBA8C();
  swift_getTupleTypeMetadata2();
  sub_21DBFA74C();
  swift_getWitnessTable();
  v8 = sub_21DBFA58C();

  if (v8)
  {
    return sub_21D759EB8(a1, a2, a3, a4, 0);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_21D762564(void *a1)
{
  v3 = [a1 items];
  sub_21D0D8CF0(0, qword_27CE61010);
  v4 = sub_21DBFA5EC();

  if (v4 >> 62)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  if (*(*(v1 + qword_280D0F008) + 32))
  {
    sub_21D75AE18(a1, &v20);
    type metadata accessor for TTRICollectionViewDragItemSources();
    v6 = sub_21D76B498();

    swift_unknownObjectRelease();
    if (!v6)
    {
      if (qword_27CE56C80 != -1)
      {
        swift_once();
      }

      v11 = sub_21DBF84BC();
      __swift_project_value_buffer(v11, qword_27CE61460);
      v12 = sub_21DBF84AC();
      v13 = sub_21DBFAE9C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        v16 = sub_21D759D64();
        v18 = sub_21D0CDFB4(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_21D0C9000, v12, v13, "%s: reject external drop session because there is an in-progress local drag", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x223D46520](v15, -1, -1);
        MEMORY[0x223D46520](v14, -1, -1);
      }

      goto LABEL_13;
    }
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_13:
    v10 = 0;
    return v10 & 1;
  }

  v7 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  v10 = (*(v7 + 48))(v1, WitnessTable, a1, ObjectType, v7);
  swift_unknownObjectRelease();
  return v10 & 1;
}

void *sub_21D76284C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;
  v78.val[0] = *(*v3 + 80);
  v78.val[1] = v78.val[0];
  v5 = v77;
  vst2q_f64(v5, v78);
  v6 = type metadata accessor for TTRICollectionViewDropProposal();
  v74 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v70 = (&v63 - v7);
  v71 = sub_21DBFBA8C();
  v8 = *(v71 - 1);
  MEMORY[0x28223BE20](v71);
  v72 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE61450);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61448);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v63 - v20;
  v22 = *(v3 + qword_280D0F018);
  if (v22)
  {
    v23 = *v22;
    v66 = v6;
    v24 = *(v23 + 128);
    v25 = *(v22 + v24);
    v73 = v8;
    v26 = qword_27CE8EAB8;
    swift_beginAccess();

    sub_21D7631AC(a3, v25 + v26);
    swift_endAccess();

    v27 = *(v22 + v24);
    v28 = type metadata accessor for TTRICollectionViewHitTestResult(0);
    (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
    v29 = qword_27CE8EAC0;
    swift_beginAccess();

    sub_21D0F02F4(v21, v27 + v29, &qword_27CE61448);
    swift_endAccess();

    v67 = v24;
    v30 = *(v22 + v24);
    *(v30 + qword_27CE8EAC8) = 5;
    v31 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
    (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
    v32 = qword_27CE8EAD0;
    swift_beginAccess();

    sub_21D0F02F4(v18, v30 + v32, &unk_27CE61450);
    swift_endAccess();

    v69 = v3;
    sub_21D75B654(v22, v75, v76, a3, v15);
    v33 = *(*v22 + 120);
    swift_beginAccess();
    v34 = v22 + v33;
    v35 = v73;
    v36 = v71;
    (*(v73 + 24))(v34, v15, v71);
    swift_endAccess();
    v37 = *(v35 + 16);
    v68 = v15;
    v65 = v37;
    v37(v12, v15, v36);
    v38 = v74;
    v39 = v66;
    v64 = *(v74 + 48);
    if (v64(v12, 1, v66) == 1)
    {
      (*(v35 + 8))(v12, v36);
      v40 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];
    }

    else
    {
      v40 = TTRICollectionViewDropProposal.dropProposalForCollectionView.getter(v39);
      (*(v38 + 8))(v12, v39);
    }

    v50 = *(v22 + v67);
    v51 = *(v50 + qword_27CE8EAD8);
    *(v50 + qword_27CE8EAD8) = v40;

    v71 = v40;

    v53 = v75;
    v52 = v76;
    sub_21D760B94(v75, v76);
    sub_21D75FC70();
    v54 = v72;
    v55 = v68;
    v65(v72, v68, v36);
    v56 = v36;
    if (v64(v54, 1, v39) == 1)
    {
      v57 = *(v73 + 8);
      v57(v55, v56);

      v57(v54, v56);
    }

    else
    {
      v58 = v74;
      v59 = v54;
      v60 = v70;
      v61 = (*(v74 + 32))(v70, v59, v39);
      sub_21D35A1C8(v53, v52, v60, v61, v62);

      (*(v58 + 8))(v60, v39);
      (*(v73 + 8))(v55, v36);
    }

    return v71;
  }

  else
  {
    if (qword_27CE56C80 != -1)
    {
      swift_once();
    }

    v41 = sub_21DBF84BC();
    __swift_project_value_buffer(v41, qword_27CE61460);
    v42 = sub_21DBF84AC();
    v43 = sub_21DBFAE9C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v77[0] = v45;
      *v44 = 136315138;
      v46 = sub_21D759D64();
      v48 = sub_21D0CDFB4(v46, v47, v77);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_21D0C9000, v42, v43, "%s: missing activeDropContext", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x223D46520](v45, -1, -1);
      MEMORY[0x223D46520](v44, -1, -1);
    }

    return [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];
  }
}

uint64_t sub_21D7631AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D76321C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D7632DC(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for TTRICollectionViewItemHit(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = (v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];

  return a1(v1 + v3, v6, v7, v8, v10, v11, v12);
}

uint64_t sub_21D7633B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D763428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D763490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D763518(uint64_t a1)
{
  v5.val[0] = *(a1 + 16);
  v5.val[1] = v5.val[0];
  v1 = v4;
  vst2q_f64(v1, v5);
  type metadata accessor for TTRTreeViewDropDestination();
  result = sub_21DBFBA8C();
  if (v3 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = MEMORY[0x277D83410] + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D7635D0(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v4 = __dst;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = *(v6 + 84);
  v10 = v8;
  v11 = v7 + v8;
  v12 = (v7 + v10) & ~v10;
  if (v9)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v7 + 1;
  }

  v14 = v13 + 7;
  v15 = ((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = ((v15 + v8) & ~v8) + v7;
  if (v16 <= v15)
  {
    v16 = ((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = v8 & 0x100000;
  if (v10 <= 7 && v18 == 0 && v17 <= 0x18)
  {
    if (v15 + v7 <= v15)
    {
      v22 = ((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    else
    {
      v22 = v15 + v7;
    }

    v23 = __src[v22];
    if (v23 > 3)
    {
      goto LABEL_37;
    }

    if (v23 == 3)
    {
      if (v22 >= 4)
      {
        v24 = 4;
      }

      else
      {
        v24 = v22;
      }

      if (v24 <= 1)
      {
        if (!v24)
        {
          goto LABEL_37;
        }

        v25 = *__src;
      }

      else if (v24 == 2)
      {
        v25 = *__src;
      }

      else if (v24 == 3)
      {
        v25 = *__src | (__src[2] << 16);
      }

      else
      {
        v25 = *__src;
      }

      v23 = v25 + 3;
    }

    v26 = ~v10;
    switch(v23)
    {
      case 2u:
        __nb = v13;
        v55 = v22;
        v37 = v26;
        v47 = *(v6 + 16);
        v47(__dst, __src, v5);
        __dstb = ((v4 + v11) & v37);
        v38 = (&__src[v11] & v37);
        if ((*(v6 + 48))(v38, 1, v5))
        {
          v39 = __nb;
          memcpy(__dstb, v38, __nb);
        }

        else
        {
          v47(__dstb, v38, v5);
          (*(v6 + 56))(__dstb, 0, 1, v5);
          v39 = __nb;
        }

        v42 = 7;
        if (!v9)
        {
          v42 = 8;
        }

        *((__dstb + v7 + v42) & 0xFFFFFFFFFFFFFFF8) = *((v38 + v7 + v42) & 0xFFFFFFFFFFFFFFF8);
        v43 = ((v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
        if (v15 + v7 > v43)
        {
          v43 = v15 + v7;
        }

        if (v15 > v43)
        {
          v43 = v15;
        }

        *(v4 + v43) = 2;
        v31 = v55;
        goto LABEL_38;
      case 1u:
        __na = v13;
        v54 = v22;
        v33 = *(v6 + 16);
        v34 = v26;
        v33(__dst, __src, v5);
        v35 = ((v4 + v11) & v34);
        v36 = (&__src[v11] & v34);
        if ((*(v6 + 48))(v36, 1, v5))
        {
          memcpy(v35, v36, __na);
        }

        else
        {
          v33(v35, v36, v5);
          (*(v6 + 56))(v35, 0, 1, v5);
        }

        v40 = ((v35 + v14) & 0xFFFFFFFFFFFFFFF8);
        v41 = ((v36 + v14) & 0xFFFFFFFFFFFFFFF8);
        *v40 = *v41;
        v33(v40 + 1, v41 + 8, v5);
        v31 = v54;
        *(v4 + v54) = 1;
        goto LABEL_38;
      case 0u:
        __n = v13;
        v53 = v22;
        v27 = v26;
        v46 = *(v6 + 16);
        v46(__dst, __src, v5);
        __dsta = ((v4 + v11) & v27);
        v28 = (&__src[v11] & v27);
        if ((*(v6 + 48))(v28, 1, v5))
        {
          v29 = __n;
          memcpy(__dsta, v28, __n);
        }

        else
        {
          v46(__dsta, v28, v5);
          (*(v6 + 56))(__dsta, 0, 1, v5);
          v29 = __n;
        }

        v44 = 7;
        if (!v9)
        {
          v44 = 8;
        }

        *((__dsta + v7 + v44) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v7 + v44) & 0xFFFFFFFFFFFFFFF8);
        v45 = ((v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
        if (v15 + v7 > v45)
        {
          v45 = v15 + v7;
        }

        if (v15 > v45)
        {
          v45 = v15;
        }

        *(v4 + v45) = 0;
        v31 = v53;
        goto LABEL_38;
    }

LABEL_37:
    v30 = v22;
    memcpy(__dst, __src, v22 + 1);
    v31 = v30;
LABEL_38:
    *((v4 + v31 + 8) & 0xFFFFFFFFFFFFFFF8) = *(&__src[v31 + 8] & 0xFFFFFFFFFFFFFFF8);
    return v4;
  }

  v21 = *__src;
  *v4 = *__src;
  v4 = (v21 + ((v10 & 0xF8 ^ 0x1F8) & (v10 + 16)));

  return v4;
}

unsigned __int8 *sub_21D763AC0(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  v6 = v4 + v5;
  if (*(v3 + 84))
  {
    v7 = *(v3 + 64);
  }

  else
  {
    v7 = v4 + 1;
  }

  v8 = ((v7 + ((v4 + v5) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = ((v8 + v5) & ~v5) + v4;
  if (v9 > v8)
  {
    v8 = v9;
  }

  v10 = result[v8];
  if (v10 <= 3)
  {
    if (v10 == 3)
    {
      if (v8 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v8;
      }

      if (v11 <= 1)
      {
        if (!v11)
        {
          return result;
        }

        v12 = *result;
      }

      else if (v11 == 2)
      {
        v12 = *result;
      }

      else if (v11 == 3)
      {
        v12 = *result | (result[2] << 16);
      }

      else
      {
        v12 = *result;
      }

      v10 = v12 + 3;
    }

    v13 = ~v5;
    if (v10 != 2)
    {
      if (v10 == 1)
      {
        v16 = result;
        v19 = *(v3 + 8);
        v19();
        v17 = &v16[v6] & v13;
        if (!(*(v3 + 48))(v17, 1, v2))
        {
          (v19)(v17, v2);
        }

        v18 = (v5 + ((v17 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & v13;
LABEL_29:

        return (v19)(v18, v2);
      }

      if (v10)
      {
        return result;
      }
    }

    v14 = result;
    v19 = *(v3 + 8);
    v19();
    v15 = &v14[v6];
    result = (*(v3 + 48))(v15 & v13, 1, v2);
    if (result)
    {
      return result;
    }

    v18 = v15 & v13;
    goto LABEL_29;
  }

  return result;
}

_BYTE *sub_21D763CF8(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = *(v6 + 84);
  if (v12)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v8 + 1;
  }

  v14 = v13 + 7;
  v15 = ((v13 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = (v15 + v9) & ~v9;
  v17 = v16 + v8;
  if (v16 + v8 <= v15)
  {
    v18 = ((v13 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v18 = v16 + v8;
  }

  v19 = __src[v18];
  if (v19 > 3)
  {
    goto LABEL_26;
  }

  if (v19 == 3)
  {
    if (v18 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v18;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_26;
      }

      v21 = *__src;
    }

    else if (v20 == 2)
    {
      v21 = *__src;
    }

    else if (v20 == 3)
    {
      v21 = *__src | (__src[2] << 16);
    }

    else
    {
      v21 = *__src;
    }

    v19 = v21 + 3;
  }

  v54 = ~v9;
  if (v19 != 2)
  {
    if (v19 == 1)
    {
      v28 = *(a3 + 16);
      v49 = *(v7 + 16);
      __na = v13;
      v49(__dst, __src, v5);
      v46 = (&__dst[v10] & v54);
      v29 = (&__src[v10] & v54);
      if ((*(v7 + 48))(v29, 1, v28))
      {
        memcpy(v46, v29, __na);
      }

      else
      {
        v49(v46, v29, v28);
        (*(v7 + 56))(v46, 0, 1, v28);
      }

      v35 = (&v46[v14] & 0xFFFFFFFFFFFFFFF8);
      v36 = ((v29 + v14) & 0xFFFFFFFFFFFFFFF8);
      *v35 = *v36;
      v49(((v35 + v9 + 8) & v54), ((v36 + v9 + 8) & v54), v28);
      __dst[v18] = 1;
      goto LABEL_27;
    }

    if (!v19)
    {
      v45 = v12;
      v48 = (v8 + v9) & ~v9;
      __n = v13;
      v22 = *(a3 + 16);
      v41 = *(v7 + 16);
      v41(__dst, __src, v5);
      __dsta = (&__dst[v10] & v54);
      v23 = &__src[v10] & v54;
      v55 = v23;
      if ((*(v7 + 48))(v23, 1, v22))
      {
        v24 = __dsta;
        v25 = v23;
        v26 = __n;
        memcpy(__dsta, v25, __n);
      }

      else
      {
        v41(__dsta, v23, v22);
        v24 = __dsta;
        (*(v7 + 56))(__dsta, 0, 1, v22);
        v26 = __n;
      }

      v39 = 7;
      if (!v45)
      {
        v39 = 8;
      }

      *((v24 + v8 + v39) & 0xFFFFFFFFFFFFFFF8) = *((v8 + v39 + v55) & 0xFFFFFFFFFFFFFFF8);
      v40 = ((v48 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v17 > v40)
      {
        v40 = v17;
      }

      if (v15 > v40)
      {
        v40 = v15;
      }

      __dst[v40] = 0;
      goto LABEL_27;
    }

LABEL_26:
    memcpy(__dst, __src, v18 + 1);
    goto LABEL_27;
  }

  v47 = v12;
  v50 = (v8 + v9) & ~v9;
  __nb = v13;
  v30 = *(a3 + 16);
  v42 = *(v7 + 16);
  v42(__dst, __src, v5);
  __dstb = (&__dst[v10] & v54);
  v31 = &__src[v10] & v54;
  v56 = v31;
  if ((*(v7 + 48))(v31, 1, v30))
  {
    v32 = __dstb;
    v33 = v31;
    v34 = __nb;
    memcpy(__dstb, v33, __nb);
  }

  else
  {
    v42(__dstb, v31, v30);
    v32 = __dstb;
    (*(v7 + 56))(__dstb, 0, 1, v30);
    v34 = __nb;
  }

  v37 = 7;
  if (!v47)
  {
    v37 = 8;
  }

  *((v32 + v8 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v8 + v37 + v56) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v50 + v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 > v38)
  {
    v38 = v17;
  }

  if (v15 > v38)
  {
    v38 = v15;
  }

  __dst[v38] = 2;
LABEL_27:
  *(&__dst[v18 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  return __dst;
}

unsigned __int8 *sub_21D7641D8(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ~v9;
  v11 = v8 + v9;
  v12 = (v8 + v9) & ~v9;
  v13 = *(v6 + 84);
  if (v13)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = v8 + 1;
  }

  v15 = ((v14 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = (v15 + v9) & ~v9;
  v17 = v16 + v8;
  if (v16 + v8 <= v15)
  {
    v18 = ((v14 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v18 = v16 + v8;
  }

  v19 = __dst[v18];
  v20 = __src[v18];
  if (v19 <= 3)
  {
    if (v20 <= 3)
    {
      if (__dst == __src)
      {
        goto LABEL_103;
      }

      __n = v14;
      v79 = ~v9;
      v75 = (v8 + v9) & ~v9;
      v74 = v13;
      __dsta = (v14 + 7);
      if (v19 == 3)
      {
        if (v18 >= 4)
        {
          v21 = 4;
        }

        else
        {
          v21 = v18;
        }

        if (v21 <= 1)
        {
          if (!v21)
          {
            goto LABEL_81;
          }

          v22 = *__dst;
        }

        else if (v21 == 2)
        {
          v22 = *__dst;
        }

        else if (v21 == 3)
        {
          v22 = *__dst | (__dst[2] << 16);
        }

        else
        {
          v22 = *__dst;
        }

        v19 = v22 + 3;
      }

      if (v19 != 2)
      {
        if (v19 == 1)
        {
          v64 = *(v7 + 8);
          v64(__dst, v5);
          v61 = &__dst[v11] & v79;
          if (!(*(v7 + 48))())
          {
            v64(v61, v5);
          }

          v44 = (v9 + ((__dsta + v61) & 0xFFFFFFFFFFFFFFF8) + 8) & v79;
          goto LABEL_80;
        }

        if (v19)
        {
          goto LABEL_81;
        }
      }

      v64 = *(v7 + 8);
      v64(__dst, v5);
      if ((*(v7 + 48))(&__dst[v11] & v79, 1, v5))
      {
        goto LABEL_81;
      }

      v44 = &__dst[v11] & v79;
LABEL_80:
      v64(v44, v5);
LABEL_81:
      v45 = __src[v18];
      v46 = v45 - 3;
      if (v45 >= 3)
      {
        if (v18 <= 3)
        {
          v47 = v18;
        }

        else
        {
          v47 = 4;
        }

        if (v47 > 1)
        {
          if (v47 == 2)
          {
            v48 = *__src;
          }

          else if (v47 == 3)
          {
            v48 = *__src | (__src[2] << 16);
          }

          else
          {
            v48 = *__src;
          }

          goto LABEL_93;
        }

        if (v47)
        {
          v48 = *__src;
LABEL_93:
          if (v18 < 4)
          {
            v45 = (v48 | (v46 << (8 * v18))) + 3;
          }

          else
          {
            v45 = v48 + 3;
          }
        }
      }

      if (v45 != 2)
      {
        if (v45 != 1)
        {
          if (!v45)
          {
            v65 = *(v7 + 16);
            v65(__dst, __src, v5);
            __dstf = (&__dst[v11] & v79);
            v80 = &__src[v11] & v79;
            if ((*(v7 + 48))())
            {
              v29 = __dstf;
              v30 = __dstf;
              v28 = v80;
              goto LABEL_101;
            }

            v29 = __dstf;
            v65(__dstf, v80, v5);
            v28 = v80;
            goto LABEL_122;
          }

          goto LABEL_102;
        }

        v51 = *(v7 + 16);
        v51(__dst, __src, v5);
        v52 = (&__dst[v11] & v79);
        v53 = (&__src[v11] & v79);
        if ((*(v7 + 48))(v53, 1, v5))
        {
          memcpy(v52, v53, __n);
        }

        else
        {
          v51(v52, v53, v5);
          (*(v7 + 56))(v52, 0, 1, v5);
        }

        v55 = ((v52 + __dsta) & 0xFFFFFFFFFFFFFFF8);
        v56 = ((v53 + __dsta) & 0xFFFFFFFFFFFFFFF8);
        *v55 = *v56;
        v51(((v55 + v9 + 8) & v79), ((v56 + v9 + 8) & v79), v5);
LABEL_111:
        __dst[v18] = 1;
        goto LABEL_103;
      }

      v66 = *(v7 + 16);
      v66(__dst, __src, v5);
      __dstg = (&__dst[v11] & v79);
      v81 = &__src[v11] & v79;
      if ((*(v7 + 48))())
      {
        v35 = __dstg;
        v36 = __dstg;
        v34 = v81;
        goto LABEL_108;
      }

      v35 = __dstg;
      v66(__dstg, v81, v5);
      v34 = v81;
LABEL_113:
      (*(v7 + 56))(v35, 0, 1, v5);
      v54 = __n;
      goto LABEL_114;
    }

    if (v19 == 3)
    {
      if (v18 >= 4)
      {
        v25 = 4;
      }

      else
      {
        v25 = v18;
      }

      if (v25 <= 1)
      {
        if (!v25)
        {
          goto LABEL_102;
        }

        v26 = *__dst;
      }

      else if (v25 == 2)
      {
        v26 = *__dst;
      }

      else if (v25 == 3)
      {
        v26 = *__dst | (__dst[2] << 16);
      }

      else
      {
        v26 = *__dst;
      }

      v19 = v26 + 3;
    }

    switch(v19)
    {
      case 2u:
        goto LABEL_59;
      case 1u:
        __dste = (v14 + 7);
        v40 = *(v7 + 8);
        v40(__dst, v5);
        v41 = &__dst[v11] & ~v9;
        if (!(*(v7 + 48))(v41, 1, v5))
        {
          v40(v41, v5);
        }

        v40(((v9 + ((__dste + v41) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9), v5);
        break;
      case 0u:
LABEL_59:
        v37 = *(v7 + 8);
        v38 = v10;
        v37(__dst, v5);
        v39 = &__dst[v11];
        if (!(*(v7 + 48))(v39 & v38, 1, v5))
        {
          v37((v39 & v38), v5);
        }

        break;
    }

LABEL_102:
    memcpy(__dst, __src, v18 + 1);
    goto LABEL_103;
  }

  if (v20 > 3)
  {
    goto LABEL_102;
  }

  if (v20 == 3)
  {
    if (v18 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v18;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_102;
      }

      v24 = *__src;
    }

    else if (v23 == 2)
    {
      v24 = *__src;
    }

    else if (v23 == 3)
    {
      v24 = *__src | (__src[2] << 16);
    }

    else
    {
      v24 = *__src;
    }

    v20 = v24 + 3;
  }

  if (v20 != 2)
  {
    if (v20 == 1)
    {
      __dstc = (v14 + 7);
      v76 = *(v7 + 16);
      __na = v14;
      v76(__dst, __src, v5);
      v31 = (&__dst[v11] & ~v9);
      v32 = (&__src[v11] & ~v9);
      if ((*(v7 + 48))(v32, 1, v5))
      {
        memcpy(v31, v32, __na);
      }

      else
      {
        v76(v31, v32, v5);
        (*(v7 + 56))(v31, 0, 1, v5);
      }

      v42 = ((v31 + __dstc) & 0xFFFFFFFFFFFFFFF8);
      v43 = ((v32 + __dstc) & 0xFFFFFFFFFFFFFFF8);
      *v42 = *v43;
      v76(((v42 + v9 + 8) & ~v9), ((v43 + v9 + 8) & ~v9), v5);
      goto LABEL_111;
    }

    if (!v20)
    {
      v74 = v13;
      v75 = (v8 + v9) & ~v9;
      __n = v14;
      v27 = ~v9;
      v62 = *(v7 + 16);
      v62(__dst, __src, v5);
      __dstb = (&__dst[v11] & v27);
      v28 = (&__src[v11] & v27);
      if ((*(v7 + 48))(v28, 1, v5))
      {
        v29 = __dstb;
        v30 = __dstb;
LABEL_101:
        v49 = __n;
        memcpy(v30, v28, __n);
LABEL_123:
        v59 = 7;
        if (!v74)
        {
          v59 = 8;
        }

        *((v29 + v8 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v8 + v59) & 0xFFFFFFFFFFFFFFF8);
        v60 = ((v75 + v49 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
        if (v17 > v60)
        {
          v60 = v17;
        }

        if (v15 > v60)
        {
          v60 = v15;
        }

        __dst[v60] = 0;
        goto LABEL_103;
      }

      v29 = __dstb;
      v62(__dstb, v28, v5);
LABEL_122:
      (*(v7 + 56))(v29, 0, 1, v5);
      v49 = __n;
      goto LABEL_123;
    }

    goto LABEL_102;
  }

  v74 = v13;
  v75 = (v8 + v9) & ~v9;
  __n = v14;
  v33 = ~v9;
  v63 = *(v7 + 16);
  v63(__dst, __src, v5);
  __dstd = (&__dst[v11] & v33);
  v34 = (&__src[v11] & v33);
  if (!(*(v7 + 48))(v34, 1, v5))
  {
    v35 = __dstd;
    v63(__dstd, v34, v5);
    goto LABEL_113;
  }

  v35 = __dstd;
  v36 = __dstd;
LABEL_108:
  v54 = __n;
  memcpy(v36, v34, __n);
LABEL_114:
  v57 = 7;
  if (!v74)
  {
    v57 = 8;
  }

  *((v35 + v8 + v57) & 0xFFFFFFFFFFFFFFF8) = *(&v34[v8 + v57] & 0xFFFFFFFFFFFFFFF8);
  v58 = ((v75 + v54 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 > v58)
  {
    v58 = v17;
  }

  if (v15 > v58)
  {
    v58 = v15;
  }

  __dst[v58] = 2;
LABEL_103:
  *(&__dst[v18 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  return __dst;
}

_BYTE *sub_21D764C64(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = *(v6 + 84);
  if (v12)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v8 + 1;
  }

  v14 = v13 + 7;
  v15 = ((v13 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = (v15 + v9) & ~v9;
  v17 = v16 + v8;
  if (v16 + v8 <= v15)
  {
    v18 = ((v13 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v18 = v16 + v8;
  }

  v19 = __src[v18];
  if (v19 > 3)
  {
    goto LABEL_26;
  }

  if (v19 == 3)
  {
    if (v18 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v18;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_26;
      }

      v21 = *__src;
    }

    else if (v20 == 2)
    {
      v21 = *__src;
    }

    else if (v20 == 3)
    {
      v21 = *__src | (__src[2] << 16);
    }

    else
    {
      v21 = *__src;
    }

    v19 = v21 + 3;
  }

  v54 = ~v9;
  if (v19 != 2)
  {
    if (v19 == 1)
    {
      v28 = *(a3 + 16);
      v49 = *(v7 + 32);
      __na = v13;
      v49(__dst, __src, v5);
      v46 = (&__dst[v10] & v54);
      v29 = (&__src[v10] & v54);
      if ((*(v7 + 48))(v29, 1, v28))
      {
        memcpy(v46, v29, __na);
      }

      else
      {
        v49(v46, v29, v28);
        (*(v7 + 56))(v46, 0, 1, v28);
      }

      v35 = (&v46[v14] & 0xFFFFFFFFFFFFFFF8);
      v36 = ((v29 + v14) & 0xFFFFFFFFFFFFFFF8);
      *v35 = *v36;
      v49(((v35 + v9 + 8) & v54), ((v36 + v9 + 8) & v54), v28);
      __dst[v18] = 1;
      goto LABEL_27;
    }

    if (!v19)
    {
      v45 = v12;
      v48 = (v8 + v9) & ~v9;
      __n = v13;
      v22 = *(a3 + 16);
      v41 = *(v7 + 32);
      v41(__dst, __src, v5);
      __dsta = (&__dst[v10] & v54);
      v23 = &__src[v10] & v54;
      v55 = v23;
      if ((*(v7 + 48))(v23, 1, v22))
      {
        v24 = __dsta;
        v25 = v23;
        v26 = __n;
        memcpy(__dsta, v25, __n);
      }

      else
      {
        v41(__dsta, v23, v22);
        v24 = __dsta;
        (*(v7 + 56))(__dsta, 0, 1, v22);
        v26 = __n;
      }

      v39 = 7;
      if (!v45)
      {
        v39 = 8;
      }

      *((v24 + v8 + v39) & 0xFFFFFFFFFFFFFFF8) = *((v8 + v39 + v55) & 0xFFFFFFFFFFFFFFF8);
      v40 = ((v48 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v17 > v40)
      {
        v40 = v17;
      }

      if (v15 > v40)
      {
        v40 = v15;
      }

      __dst[v40] = 0;
      goto LABEL_27;
    }

LABEL_26:
    memcpy(__dst, __src, v18 + 1);
    goto LABEL_27;
  }

  v47 = v12;
  v50 = (v8 + v9) & ~v9;
  __nb = v13;
  v30 = *(a3 + 16);
  v42 = *(v7 + 32);
  v42(__dst, __src, v5);
  __dstb = (&__dst[v10] & v54);
  v31 = &__src[v10] & v54;
  v56 = v31;
  if ((*(v7 + 48))(v31, 1, v30))
  {
    v32 = __dstb;
    v33 = v31;
    v34 = __nb;
    memcpy(__dstb, v33, __nb);
  }

  else
  {
    v42(__dstb, v31, v30);
    v32 = __dstb;
    (*(v7 + 56))(__dstb, 0, 1, v30);
    v34 = __nb;
  }

  v37 = 7;
  if (!v47)
  {
    v37 = 8;
  }

  *((v32 + v8 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v8 + v37 + v56) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v50 + v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 > v38)
  {
    v38 = v17;
  }

  if (v15 > v38)
  {
    v38 = v15;
  }

  __dst[v38] = 2;
LABEL_27:
  *(&__dst[v18 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  return __dst;
}

unsigned __int8 *sub_21D765144(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ~v9;
  v11 = v8 + v9;
  v12 = (v8 + v9) & ~v9;
  v13 = *(v6 + 84);
  if (v13)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = v8 + 1;
  }

  v15 = ((v14 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = (v15 + v9) & ~v9;
  v17 = v16 + v8;
  if (v16 + v8 <= v15)
  {
    v18 = ((v14 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v18 = v16 + v8;
  }

  v19 = __dst[v18];
  v20 = __src[v18];
  if (v19 <= 3)
  {
    if (v20 <= 3)
    {
      if (__dst == __src)
      {
        goto LABEL_103;
      }

      __n = v14;
      v79 = ~v9;
      v75 = (v8 + v9) & ~v9;
      v74 = v13;
      __dsta = (v14 + 7);
      if (v19 == 3)
      {
        if (v18 >= 4)
        {
          v21 = 4;
        }

        else
        {
          v21 = v18;
        }

        if (v21 <= 1)
        {
          if (!v21)
          {
            goto LABEL_81;
          }

          v22 = *__dst;
        }

        else if (v21 == 2)
        {
          v22 = *__dst;
        }

        else if (v21 == 3)
        {
          v22 = *__dst | (__dst[2] << 16);
        }

        else
        {
          v22 = *__dst;
        }

        v19 = v22 + 3;
      }

      if (v19 != 2)
      {
        if (v19 == 1)
        {
          v64 = *(v7 + 8);
          v64(__dst, v5);
          v61 = &__dst[v11] & v79;
          if (!(*(v7 + 48))())
          {
            v64(v61, v5);
          }

          v44 = (v9 + ((__dsta + v61) & 0xFFFFFFFFFFFFFFF8) + 8) & v79;
          goto LABEL_80;
        }

        if (v19)
        {
          goto LABEL_81;
        }
      }

      v64 = *(v7 + 8);
      v64(__dst, v5);
      if ((*(v7 + 48))(&__dst[v11] & v79, 1, v5))
      {
        goto LABEL_81;
      }

      v44 = &__dst[v11] & v79;
LABEL_80:
      v64(v44, v5);
LABEL_81:
      v45 = __src[v18];
      v46 = v45 - 3;
      if (v45 >= 3)
      {
        if (v18 <= 3)
        {
          v47 = v18;
        }

        else
        {
          v47 = 4;
        }

        if (v47 > 1)
        {
          if (v47 == 2)
          {
            v48 = *__src;
          }

          else if (v47 == 3)
          {
            v48 = *__src | (__src[2] << 16);
          }

          else
          {
            v48 = *__src;
          }

          goto LABEL_93;
        }

        if (v47)
        {
          v48 = *__src;
LABEL_93:
          if (v18 < 4)
          {
            v45 = (v48 | (v46 << (8 * v18))) + 3;
          }

          else
          {
            v45 = v48 + 3;
          }
        }
      }

      if (v45 != 2)
      {
        if (v45 != 1)
        {
          if (!v45)
          {
            v65 = *(v7 + 32);
            v65(__dst, __src, v5);
            __dstf = (&__dst[v11] & v79);
            v80 = &__src[v11] & v79;
            if ((*(v7 + 48))())
            {
              v29 = __dstf;
              v30 = __dstf;
              v28 = v80;
              goto LABEL_101;
            }

            v29 = __dstf;
            v65(__dstf, v80, v5);
            v28 = v80;
            goto LABEL_122;
          }

          goto LABEL_102;
        }

        v51 = *(v7 + 32);
        v51(__dst, __src, v5);
        v52 = (&__dst[v11] & v79);
        v53 = (&__src[v11] & v79);
        if ((*(v7 + 48))(v53, 1, v5))
        {
          memcpy(v52, v53, __n);
        }

        else
        {
          v51(v52, v53, v5);
          (*(v7 + 56))(v52, 0, 1, v5);
        }

        v55 = ((v52 + __dsta) & 0xFFFFFFFFFFFFFFF8);
        v56 = ((v53 + __dsta) & 0xFFFFFFFFFFFFFFF8);
        *v55 = *v56;
        v51(((v55 + v9 + 8) & v79), ((v56 + v9 + 8) & v79), v5);
LABEL_111:
        __dst[v18] = 1;
        goto LABEL_103;
      }

      v66 = *(v7 + 32);
      v66(__dst, __src, v5);
      __dstg = (&__dst[v11] & v79);
      v81 = &__src[v11] & v79;
      if ((*(v7 + 48))())
      {
        v35 = __dstg;
        v36 = __dstg;
        v34 = v81;
        goto LABEL_108;
      }

      v35 = __dstg;
      v66(__dstg, v81, v5);
      v34 = v81;
LABEL_113:
      (*(v7 + 56))(v35, 0, 1, v5);
      v54 = __n;
      goto LABEL_114;
    }

    if (v19 == 3)
    {
      if (v18 >= 4)
      {
        v25 = 4;
      }

      else
      {
        v25 = v18;
      }

      if (v25 <= 1)
      {
        if (!v25)
        {
          goto LABEL_102;
        }

        v26 = *__dst;
      }

      else if (v25 == 2)
      {
        v26 = *__dst;
      }

      else if (v25 == 3)
      {
        v26 = *__dst | (__dst[2] << 16);
      }

      else
      {
        v26 = *__dst;
      }

      v19 = v26 + 3;
    }

    switch(v19)
    {
      case 2u:
        goto LABEL_59;
      case 1u:
        __dste = (v14 + 7);
        v40 = *(v7 + 8);
        v40(__dst, v5);
        v41 = &__dst[v11] & ~v9;
        if (!(*(v7 + 48))(v41, 1, v5))
        {
          v40(v41, v5);
        }

        v40(((v9 + ((__dste + v41) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9), v5);
        break;
      case 0u:
LABEL_59:
        v37 = *(v7 + 8);
        v38 = v10;
        v37(__dst, v5);
        v39 = &__dst[v11];
        if (!(*(v7 + 48))(v39 & v38, 1, v5))
        {
          v37((v39 & v38), v5);
        }

        break;
    }

LABEL_102:
    memcpy(__dst, __src, v18 + 1);
    goto LABEL_103;
  }

  if (v20 > 3)
  {
    goto LABEL_102;
  }

  if (v20 == 3)
  {
    if (v18 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v18;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_102;
      }

      v24 = *__src;
    }

    else if (v23 == 2)
    {
      v24 = *__src;
    }

    else if (v23 == 3)
    {
      v24 = *__src | (__src[2] << 16);
    }

    else
    {
      v24 = *__src;
    }

    v20 = v24 + 3;
  }

  if (v20 != 2)
  {
    if (v20 == 1)
    {
      __dstc = (v14 + 7);
      v76 = *(v7 + 32);
      __na = v14;
      v76(__dst, __src, v5);
      v31 = (&__dst[v11] & ~v9);
      v32 = (&__src[v11] & ~v9);
      if ((*(v7 + 48))(v32, 1, v5))
      {
        memcpy(v31, v32, __na);
      }

      else
      {
        v76(v31, v32, v5);
        (*(v7 + 56))(v31, 0, 1, v5);
      }

      v42 = ((v31 + __dstc) & 0xFFFFFFFFFFFFFFF8);
      v43 = ((v32 + __dstc) & 0xFFFFFFFFFFFFFFF8);
      *v42 = *v43;
      v76(((v42 + v9 + 8) & ~v9), ((v43 + v9 + 8) & ~v9), v5);
      goto LABEL_111;
    }

    if (!v20)
    {
      v74 = v13;
      v75 = (v8 + v9) & ~v9;
      __n = v14;
      v27 = ~v9;
      v62 = *(v7 + 32);
      v62(__dst, __src, v5);
      __dstb = (&__dst[v11] & v27);
      v28 = (&__src[v11] & v27);
      if ((*(v7 + 48))(v28, 1, v5))
      {
        v29 = __dstb;
        v30 = __dstb;
LABEL_101:
        v49 = __n;
        memcpy(v30, v28, __n);
LABEL_123:
        v59 = 7;
        if (!v74)
        {
          v59 = 8;
        }

        *((v29 + v8 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v8 + v59) & 0xFFFFFFFFFFFFFFF8);
        v60 = ((v75 + v49 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
        if (v17 > v60)
        {
          v60 = v17;
        }

        if (v15 > v60)
        {
          v60 = v15;
        }

        __dst[v60] = 0;
        goto LABEL_103;
      }

      v29 = __dstb;
      v62(__dstb, v28, v5);
LABEL_122:
      (*(v7 + 56))(v29, 0, 1, v5);
      v49 = __n;
      goto LABEL_123;
    }

    goto LABEL_102;
  }

  v74 = v13;
  v75 = (v8 + v9) & ~v9;
  __n = v14;
  v33 = ~v9;
  v63 = *(v7 + 32);
  v63(__dst, __src, v5);
  __dstd = (&__dst[v11] & v33);
  v34 = (&__src[v11] & v33);
  if (!(*(v7 + 48))(v34, 1, v5))
  {
    v35 = __dstd;
    v63(__dstd, v34, v5);
    goto LABEL_113;
  }

  v35 = __dstd;
  v36 = __dstd;
LABEL_108:
  v54 = __n;
  memcpy(v36, v34, __n);
LABEL_114:
  v57 = 7;
  if (!v74)
  {
    v57 = 8;
  }

  *((v35 + v8 + v57) & 0xFFFFFFFFFFFFFFF8) = *(&v34[v8 + v57] & 0xFFFFFFFFFFFFFFF8);
  v58 = ((v75 + v54 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 > v58)
  {
    v58 = v17;
  }

  if (v15 > v58)
  {
    v58 = v15;
  }

  __dst[v58] = 2;
LABEL_103:
  *(&__dst[v18 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  return __dst;
}

uint64_t sub_21D765BD0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  if (*(v3 + 84))
  {
    v6 = *(v3 + 64);
  }

  else
  {
    v6 = v4 + 1;
  }

  v7 = ((v6 + ((v4 + v5) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((v7 + v5) & ~v5) + v4;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_26;
  }

  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - 250;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v10 < 0x100)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v13 == 4)
  {
    v14 = *(a1 + v9);
    if (v14)
    {
      goto LABEL_22;
    }

LABEL_26:
    v17 = *(a1 + v8);
    if (v17 >= 4)
    {
      v18 = (v17 ^ 0xFF) + 1;
    }

    else
    {
      v18 = 0;
    }

    if (v18 >= 2)
    {
      return v18 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 != 2)
  {
    v14 = *(a1 + v9);
    if (v14)
    {
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  v14 = *(a1 + v9);
  if (!v14)
  {
    goto LABEL_26;
  }

LABEL_22:
  v16 = v14 - 1;
  if (v11)
  {
    v16 = 0;
    LODWORD(v11) = *a1;
  }

  return (v11 | v16) + 252;
}

unsigned int *sub_21D765CFC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (*(v4 + 84))
  {
    v7 = *(v4 + 64);
  }

  else
  {
    v7 = v5 + 1;
  }

  v8 = ((v7 + ((v5 + v6) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = ((v8 + v6) & ~v6) + v5;
  if (v9 <= v8)
  {
    v9 = v8;
  }

  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 >= 0xFC)
  {
    v11 = a3 - 250;
    if ((v9 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = a2 - 251;
    if (a2 > 0xFB)
    {
      goto LABEL_16;
    }

LABEL_25:
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_34;
      }

      *(result + v10) = 0;
    }

    else if (v13)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

LABEL_34:
      *(result + v9) = ~a2;
      return result;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  v13 = 0;
  v14 = a2 - 251;
  if (a2 <= 0xFB)
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v9 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if ((v9 & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = a2 - 252;
    v17 = result;
    bzero(result, (v9 & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v10) = v15;
    }

    else
    {
      *(result + v10) = v15;
    }
  }

  else if (v13)
  {
    *(result + v10) = v15;
  }

  return result;
}

uint64_t sub_21D765E84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27CE61510);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D76A860;
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

uint64_t sub_21D765F24(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D76A820;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE61510);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRICollectionViewDragAndDropController.dragPreviewParametersProvider.getter()
{
  v1 = (v0 + qword_27CE61510);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1);
  return v2;
}

id sub_21D766118(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_21D76A0D4(a4, v10);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_21D74EC8C();
  v13 = sub_21DBFA5DC();

  return v13;
}

uint64_t TTRICollectionViewDragAndDropController.collectionView(_:dragPreviewParametersForItemAt:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CE61510);
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  v7 = v6(a1, a2);
  sub_21D0D0E88(v6);
  return v7;
}

id sub_21D766304(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v9 = a3;
  v10 = a1;
  v11 = TTRICollectionViewDragAndDropController.collectionView(_:dragPreviewParametersForItemAt:)(v9, v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

id sub_21D766444(void *a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = sub_21DBF5D5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v15 = a5;
  swift_unknownObjectRetain();
  v16 = a1;
  sub_21D76A224(a6, v14, a2, a3);

  swift_unknownObjectRelease();
  (*(v12 + 8))(v14, v11);
  sub_21D74EC8C();
  v17 = sub_21DBFA5DC();

  return v17;
}

uint64_t sub_21D7665D4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_21D76A38C(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

id sub_21D766664(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a5)
  {
    sub_21DBF5CAC();
    v12 = sub_21DBF5D5C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_21DBF5D5C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = a1;
  v16 = sub_21D76A4D0(a4, v11);

  swift_unknownObjectRelease();
  sub_21D0CF7E0(v11, &unk_27CE58E70);

  return v16;
}

void sub_21D766838(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

uint64_t sub_21D7668BC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a4;
  v120 = a5;
  v9 = *v5;
  v10 = *MEMORY[0x277D85000];
  v106 = *MEMORY[0x277D85000] & *v5;
  v108 = type metadata accessor for TTRICollectionViewItemHit(0);
  MEMORY[0x28223BE20](v108);
  v107 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *((v10 & v9) + 0x50);
  v12 = type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  v102 = sub_21DBFBA8C();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v103 = &v94 - v13;
  v105 = v12;
  v104 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v100 = &v94 - v15;
  v121 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  MEMORY[0x28223BE20](v121);
  v119 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  MEMORY[0x28223BE20](v114);
  v118 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF5D5C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v112 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v117 = &v94 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v23 - 8);
  v115 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v94 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v94 - v29;
  *&v32 = MEMORY[0x28223BE20](v31).n128_u64[0];
  v34 = &v94 - v33;
  v35 = a3[1];
  v110 = *a3;
  v111 = v35;
  v109 = a3[2];
  [a2 locationInView_];
  v37 = v36;
  v39 = v38;
  v40 = v19[7];
  v40(v34, 1, 1, v18);
  v40(v30, 1, 1, v18);
  v41 = swift_allocObject();
  *(v41 + 2) = v34;
  *(v41 + 3) = a1;
  *(v41 + 4) = v37;
  v41[5] = v39;
  v122 = v30;
  *(v41 + 6) = v30;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_21D76A894;
  *(v42 + 24) = v41;
  v127 = sub_21D0E6070;
  v128 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v124 = 1107296256;
  v125 = sub_21D0E6204;
  v126 = &block_descriptor_87;
  v43 = _Block_copy(&aBlock);
  v44 = a1;

  [v44 performUsingPresentationValues_];
  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if ((v43 & 1) == 0)
  {
    sub_21D0D3954(v34, v27, &unk_27CE58E70);
    v46 = v19[6];
    v47 = v34;
    if (v46(v27, 1, v18) == 1)
    {
      sub_21D0CF7E0(v27, &unk_27CE58E70);
      goto LABEL_4;
    }

    v95 = v44;
    v98 = v41;
    v99 = v34;
    v48 = v117;
    v96 = v19[4];
    v96(v117, v27, v18);
    v97 = v19;
    v49 = v19[2];
    v50 = v118;
    v49(v118, v116, v18);
    v51 = v114;
    v49(v50 + *(v114 + 20), v48, v18);
    v52 = v50 + *(v51 + 24);
    v53 = v122;
    sub_21D0D3954(v122, v52, &unk_27CE58E70);
    v54 = v119;
    sub_21D76A8A4(v50, v119);
    swift_storeEnumTagMultiPayload();
    v55 = v53;
    v56 = v115;
    sub_21D0D3954(v55, v115, &unk_27CE58E70);
    if (v46(v56, 1, v18) == 1)
    {
      sub_21D76A908(v50, type metadata accessor for TTRICollectionViewHitIndexPaths);
      (v97[1])(v48, v18);
      sub_21D0CF7E0(v56, &unk_27CE58E70);
      sub_21D76A9D8(v54, v120, type metadata accessor for TTRICollectionViewHitTestResult);
      v47 = v99;
LABEL_17:
      sub_21D0CF7E0(v122, &unk_27CE58E70);
      sub_21D0CF7E0(v47, &unk_27CE58E70);
    }

    v57 = v112;
    v116 = v18;
    v96(v112, v56, v18);
    v58 = v110;
    v59 = v111;
    aBlock = v110;
    v124 = v111;
    v60 = v109;
    v125 = v109;
    type metadata accessor for TTRICollectionViewDragItemSources();
    v61 = sub_21D76B1D4();
    v47 = v99;
    if (v61)
    {
      aBlock = v58;
      v124 = v59;
      v125 = v60;
      if (sub_21D76B514() && sub_21DBFA6DC() == 1)
      {
        aBlock = v59;
        v62 = v105;
        sub_21DBFA74C();
        swift_getWitnessTable();
        v63 = v103;
        sub_21DBFACEC();
        v64 = v63;
        v65 = v104;
        if ((*(v104 + 48))(v63, 1, v62) == 1)
        {
          (*(v101 + 8))(v63, v102);
        }

        else
        {
          v66 = v100;
          (*(v65 + 32))(v100, v64, v62);
          v67 = _s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0();
          (*(v65 + 8))(v66, v62);
          if (v67)
          {
            v68 = v97[1];
            v69 = v116;
            v68(v57, v116);
            sub_21D76A908(v118, type metadata accessor for TTRICollectionViewHitIndexPaths);
            v68(v48, v69);
            sub_21D76A9D8(v119, v120, type metadata accessor for TTRICollectionViewHitTestResult);
            goto LABEL_17;
          }
        }
      }
    }

    v70 = sub_21DBF5C6C();
    v71 = v95;
    v72 = [v95 cellForItemAtIndexPath_];

    if (v72)
    {
      [v72 bounds];
      [v71 convertRect:v72 fromCoordinateSpace:?];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v81 = sub_21D769FF4(v39, v73, v75, v77, v79, 0.5);
      v82 = v57;
      v83 = v48;
      v84 = v97;
      v85 = v81 > 1u;
      v86 = sub_21D769FF4(v39, v74, v76, v78, v80, 0.2);

      v87 = v84[1];
      v88 = v82;
      v89 = v116;
      v87(v88, v116);
      sub_21D76A908(v119, type metadata accessor for TTRICollectionViewHitTestResult);
      v87(v83, v89);
      v90 = v107;
      sub_21D76A9D8(v118, v107, type metadata accessor for TTRICollectionViewHitIndexPaths);
      v91 = v108;
      *(v90 + *(v108 + 20)) = v85;
      *(v90 + *(v91 + 24)) = v86 == 1;
      sub_21D76A9D8(v90, v120, type metadata accessor for TTRICollectionViewItemHit);
      goto LABEL_16;
    }

    v92 = v97[1];
    v93 = v116;
    v92(v57, v116);
    sub_21D76A908(v119, type metadata accessor for TTRICollectionViewHitTestResult);
    sub_21D76A908(v118, type metadata accessor for TTRICollectionViewHitIndexPaths);
    v92(v48, v93);
LABEL_4:
    type metadata accessor for TTRICollectionViewEmptySpaceType(0);
    swift_storeEnumTagMultiPayload();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D767528(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = [a2 indexPathForItemAtPoint_];
  if (v19)
  {
    v20 = v19;
    sub_21DBF5CAC();

    v21 = sub_21DBF5D5C();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  }

  else
  {
    v21 = sub_21DBF5D5C();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  }

  sub_21D76A968(v18, a1);
  sub_21D0D3954(a1, v15, &unk_27CE58E70);
  sub_21DBF5D5C();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v15, 1, v21) != 1)
  {
    v23 = sub_21DBF5C6C();
    (*(v22 + 8))(v15, v21);
  }

  v24 = [a2 dataSourceIndexPathForPresentationIndexPath_];

  if (v24)
  {
    sub_21DBF5CAC();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v22 + 56))(v12, v25, 1, v21);
  return sub_21D76A968(v12, a3);
}

id sub_21D7677CC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a1;
  v40 = sub_21DBF5D5C();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v38 - v16;
  v18 = [a2 numberOfSections];
  v19 = v18 - 1;
  if (v18 < 1)
  {
    (*(v8 + 56))(a3, 1, 1, v7);
    type metadata accessor for TTRICollectionViewEmptySpaceType(0);

    return swift_storeEnumTagMultiPayload();
  }

  v20 = v18;
  v41 = a3;
  [v39 locationInView_];
  v22 = v21;
  v24 = v23;
  sub_21D767CE0(v20, a2, v17, v23);
  sub_21D0D3954(v17, v13, &qword_27CE61600);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_21D0CF7E0(v13, &qword_27CE61600);
    v39 = *MEMORY[0x277D767D8];
    v25 = (v38 + 8);
    while (1)
    {
      result = [a2 numberOfItemsInSection_];
      if (result)
      {
        if (!v19)
        {
          goto LABEL_17;
        }
      }

      else
      {
        MEMORY[0x223D3E490](0, v19);
        v28 = v39;
        v29 = sub_21DBF5C6C();
        v30 = [a2 layoutAttributesForSupplementaryElementOfKind:v28 atIndexPath:v29];

        if (v30)
        {
          [v30 frame];
          x = v44.origin.x;
          y = v44.origin.y;
          width = v44.size.width;
          height = v44.size.height;
          v43.x = v22;
          v43.y = v24;
          if (CGRectContainsPoint(v44, v43))
          {

            (*v25)(v6, v40);
            sub_21D0CF7E0(v17, &qword_27CE61600);
            *v41 = v19;
            type metadata accessor for TTRICollectionViewEmptySpaceType(0);
            return swift_storeEnumTagMultiPayload();
          }

          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          MaxY = CGRectGetMaxY(v45);

          result = (*v25)(v6, v40);
          if (MaxY < v24 || v19 == 0)
          {
LABEL_17:
            sub_21D0CF7E0(v17, &qword_27CE61600);
            type metadata accessor for TTRICollectionViewEmptySpaceType(0);
            return swift_storeEnumTagMultiPayload();
          }
        }

        else
        {
          result = (*v25)(v6, v40);
          if (!v19)
          {
            goto LABEL_17;
          }
        }
      }

      if (v20 < v19--)
      {
        __break(1u);
        return result;
      }
    }
  }

  sub_21D0CF7E0(v17, &qword_27CE61600);
  sub_21D76A9D8(v13, v10, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  v37 = v41;
  sub_21D76A9D8(v10, v41, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  (*(v8 + 56))(v37, 0, 1, v7);
  type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_21D767CE0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>)
{
  v8 = sub_21DBF5D5C();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61608);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61610);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v44 - v22;
  v24 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = COERCE_DOUBLE([a2 numberOfItemsInSection_]);
  if ((*&v25 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v44 = v13;
  v49 = a3;
  v52.origin.x = 0.0;
  v52.origin.y = v25;
  MEMORY[0x28223BE20](*&v25);
  *(&v44 - 2) = v24;
  *(&v44 - 1) = a2;
  v45 = a2;
  v50 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61618);
  v26 = v50;
  sub_21D0D0F1C(&unk_27CE61620, &qword_27CE61618);
  sub_21DBFA48C();
  sub_21D0D3954(v26, v19, &qword_27CE61610);
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE61610);
    v27 = v46;
    MEMORY[0x223D3E490](0, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21DC08D20;
    *(v28 + 32) = sub_21DBFA16C();
    *(v28 + 40) = v29;
    v30 = sub_21DBFA16C();
    *(v28 + 48) = v30;
    *(v28 + 56) = v31;
    v51 = v28;
    MEMORY[0x28223BE20](v30);
    *(&v44 - 2) = v45;
    *(&v44 - 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    type metadata accessor for CGRect(0);
    sub_21D0D0F1C(&qword_280D0C3A8, qword_27CE61630);
    sub_21DBFA48C();

    if (v53)
    {
      sub_21D0CF7E0(v50, &qword_27CE61610);
      v32 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
      (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
      (*(v47 + 8))(v27, v48);
    }

    else
    {
      MaxY = CGRectGetMaxY(v52);
      sub_21D0CF7E0(v50, &qword_27CE61610);
      v39 = v48;
      v38 = v49;
      v40 = v47;
      if (MaxY >= a4)
      {
        v43 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
        (*(*(v43 - 8) + 56))(v38, 1, 1, v43);
      }

      else
      {
        (*(v47 + 16))(v49, v27, v48);
        v41 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v41 - 8) + 56))(v38, 0, 1, v41);
      }

      (*(v40 + 8))(v27, v39);
    }
  }

  else
  {
    sub_21D0D523C(v19, v16, &qword_27CE61608);
    v33 = CGRectGetMaxY(*&v16[*(v10 + 48)]);
    sub_21D0CF7E0(v26, &qword_27CE61610);
    if (v33 >= a4)
    {
      sub_21D0CF7E0(v16, &qword_27CE61608);
      v42 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
      (*(*(v42 - 8) + 56))(v49, 1, 1, v42);
    }

    else
    {
      v34 = v44;
      sub_21D0D523C(v16, v44, &qword_27CE61608);
      v35 = v49;
      (*(v47 + 32))(v49, v34, v48);
      v36 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    }
  }
}