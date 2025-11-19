uint64_t static REMNavigationSpecifier.from(cloudKitRecordName:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_21DBF56BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21DBFA39C())
  {
    v13 = sub_21DBFA39C();
    sub_21DBF8E0C();
    if (v13)
    {
      v14 = sub_21DBFA28C();
      v15 = sub_21D3F969C(v14, a1, a2);
      v17 = v16;
      v19 = v18;
      v21 = v20;

      MEMORY[0x223D429B0](v15, v17, v19, v21);
    }

    sub_21DBF564C();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_21DA4950C(v8);
      v22 = sub_21DBF66FC();
      return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      v26 = objc_opt_self();
      v27 = sub_21DBF566C();
      v28 = [v26 objectIDWithUUID_];

      (*(v10 + 8))(v12, v9);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
      *a3 = v28;
      v30 = *MEMORY[0x277D45140];
      v31 = sub_21DBF668C();
      (*(*(v31 - 8) + 104))(&a3[v29], v30, v31);
      v32 = *MEMORY[0x277D451F8];
      v33 = sub_21DBF66FC();
      v34 = *(v33 - 8);
      (*(v34 + 104))(a3, v32, v33);
      return (*(v34 + 56))(a3, 0, 1, v33);
    }
  }

  else
  {
    v24 = sub_21DBF66FC();
    v25 = *(*(v24 - 8) + 56);

    return v25(a3, 1, 1, v24);
  }
}

uint64_t sub_21DA4950C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DA49584()
{
  result = qword_27CE64EF8;
  if (!qword_27CE64EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64EF8);
  }

  return result;
}

uint64_t sub_21DA495D8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64F00);
  v1 = __swift_project_value_buffer(v0, qword_27CE64F00);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21DA49778()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64FE8);
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v47 - v7;
  v8 = sub_21DBF8D1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF8D3C();
  v47 = *(v12 - 8);
  v48 = v12;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52.receiver = v1;
  v52.super_class = ObjectType;
  objc_msgSendSuper2(&v52, sel_viewDidLoad, v13);
  v15 = [v1 navigationItem];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v16 = sub_21DBFA12C();

  [v15 setTitle_];

  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = v51;
  if (byte_280D17220 == 1)
  {
    v18 = [v1 navigationItem];
    v19 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelButtonAction_];
    [v18 setRightBarButtonItem_];
  }

  (*(v9 + 104))(v11, *MEMORY[0x277D74D60], v8);
  sub_21DBF8D2C();
  sub_21D0D8CF0(0, &qword_27CE64FF0);
  v20 = sub_21DBFB55C();
  v21 = [v1 collectionView];
  if (!v21)
  {
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  [v21 setCollectionViewLayout:v20 animated:0];

  v23 = [v1 collectionView];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  [v23 setAllowsSelection_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21D0D8CF0(0, &qword_27CE64FF8);
  sub_21DBF5C4C();
  sub_21DBFB05C();
  if (![v1 collectionView])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v49;
  (*(v3 + 16))(v5, v17, v49);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = swift_allocObject();
  (*(v3 + 32))(v27 + v26, v5, v25);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65000));
  v29 = sub_21DBF8BBC();
  v30 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_dataSource];
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_dataSource] = v29;
  v31 = v29;

  v32 = [objc_allocWithZone(MEMORY[0x277D759F0]) init];
  v33 = OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_searchController;
  v34 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_searchController];
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_searchController] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = [v35 searchBar];

  [v36 setDelegate_];
  v37 = *&v1[v33];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = [v37 searchBar];
  [v38 setLookToDictateEnabled_];

  v39 = *&v1[v33];
  if (!v39)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v39 setHidesNavigationBarDuringPresentation_];
  v40 = *&v1[v33];
  if (!v40)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v41 = [v40 searchBar];
  if (*&v1[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_initialSearchTerm + 8])
  {
    sub_21DBF8E0C();
    v42 = sub_21DBFA12C();
  }

  else
  {
    v42 = 0;
  }

  v43 = v48;
  [v41 setPlaceholder_];

  v44 = [v1 navigationItem];
  v45 = *&v1[v33];
  [v44 setSearchController_];

  v46 = [v1 navigationItem];
  [v46 setHidesSearchBarWhenScrolling_];

  (*(v3 + 8))(v51, v49);
  (*(v47 + 8))(v50, v43);
}

uint64_t sub_21DA49F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v73 - v9;
  v80 = sub_21DBF563C();
  v84 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF5C4C();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v76 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  v16 = sub_21DBF8A0C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65020);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v73 - v27;
  swift_beginAccess();
  v77 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  v82 = v17;
  v83 = v16;
  v87 = v19;
  v81 = v15;
  if (Strong)
  {
    v74 = v28;
    v30 = *(Strong + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_presenter);
    v31 = Strong;
    swift_unknownObjectRetain();

    v32 = *(v30 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 40);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    swift_unknownObjectRelease();
    if (*(v32 + 16) && (v33 = sub_21D17E824(a3), (v34 & 1) != 0))
    {
      v35 = v33;
      v73 = *(v32 + 56);
      v36 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
      v37 = *(v36 - 8);
      v38 = v73 + *(v37 + 72) * v35;
      v39 = v74;
      sub_21DA4BE2C(v38, v74, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);

      v28 = v39;

      v40 = (*(v37 + 56))(v39, 0, 1, v36);
    }

    else
    {

      v36 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
      v28 = v74;
      v40 = (*(*(v36 - 8) + 56))(v74, 1, 1, v36);
    }

    v17 = v82;
    v16 = v83;
  }

  else
  {
    v36 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
    v40 = (*(*(v36 - 8) + 56))(v28, 1, 1, v36);
  }

  MEMORY[0x223D43CA0](v40);
  v41 = v28;
  sub_21D0D3954(v28, v25, &qword_27CE65020);
  type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  v42 = *(*(v36 - 8) + 48);
  if (v42(v25, 1, v36) == 1)
  {
    sub_21D0CF7E0(v25, &qword_27CE65020);
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DA4BDD0(v25);
  }

  v43 = v87;
  sub_21DBF89EC();
  sub_21D0D3954(v41, v22, &qword_27CE65020);
  v44 = v42(v22, 1, v36);
  v45 = v84;
  if (v44 == 1)
  {
    sub_21D0CF7E0(v22, &qword_27CE65020);
  }

  else
  {
    v47 = v85;
    v46 = v86;
    v48 = v76;
    (*(v85 + 16))(v76, v22, v86);
    sub_21DA4BDD0(v22);
    v49 = v81;
    (*(v47 + 32))(v81, v48, v46);
    swift_beginAccess();
    v50 = swift_unknownObjectWeakLoadStrong();
    if (v50)
    {
      v51 = *(v50 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_presenter);
      v52 = v50;
      swift_unknownObjectRetain();

      v53 = v79;
      v54 = v80;
      (*(v45 + 16))(v79, v51 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_date, v80);
      swift_unknownObjectRelease();
      (*(v45 + 56))(v53, 0, 1, v54);
      v55 = v78;
      (*(v45 + 32))(v78, v53, v54);
    }

    else
    {
      v56 = v79;
      v54 = v80;
      (*(v45 + 56))(v79, 1, 1, v80);
      v55 = v78;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      if ((*(v45 + 48))(v56, 1, v54) != 1)
      {
        sub_21D0CF7E0(v56, &qword_27CE58D68);
      }
    }

    v57 = sub_21DBF5BDC();
    v58 = v55;
    v60 = v59;
    (*(v45 + 8))(v58, v54);
    if (v60)
    {
      v61 = v49;
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_21DC08D20;
      v63 = v75;
      sub_21DBF57AC();
      v64 = sub_21DBF582C();
      (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
      v65 = sub_21DBF5BEC();
      v67 = v66;
      sub_21D0CF7E0(v63, &unk_27CE65010);
      if (!v67)
      {
        v65 = sub_21DBF5BCC();
        v67 = v68;
      }

      v69 = MEMORY[0x277D837D0];
      *(v62 + 56) = MEMORY[0x277D837D0];
      v70 = sub_21D17A884();
      *(v62 + 32) = v65;
      *(v62 + 40) = v67;
      *(v62 + 96) = v69;
      *(v62 + 104) = v70;
      *(v62 + 64) = v70;
      *(v62 + 72) = v57;
      *(v62 + 80) = v60;
      sub_21DBFA17C();

      v43 = v87;
      sub_21DBF88FC();
      (*(v85 + 8))(v61, v86);
      v17 = v82;
      v16 = v83;
    }

    else
    {
      (*(v85 + 8))(v49, v86);
    }
  }

  v89[3] = v16;
  v89[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v89);
  (*(v17 + 16))(boxed_opaque_existential_0, v43, v16);
  MEMORY[0x223D43B20](v89);
  (*(v17 + 8))(v43, v16);
  return sub_21D0CF7E0(v41, &qword_27CE65020);
}

uint64_t sub_21DA4A9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_21DBF5C4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA4BE2C(a3, v13, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  (*(v8 + 32))(v10, v13, v7);
  (*(v8 + 16))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_21D0D8CF0(0, &qword_27CE64FF8);
  v14 = sub_21DBFB06C();
  sub_21D0CF7E0(v6, &unk_27CE60DB0);
  (*(v8 + 8))(v10, v7);
  return v14;
}

uint64_t sub_21DA4AC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA4AD08, v6, v5);
}

void sub_21DA4AD08()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_searchController);
  if (v1)
  {
    v2 = v0[2];
    v3 = v1;

    v4 = [v3 searchBar];

    LOBYTE(v3) = [v4 becomeFirstResponder];
    *v2 = v3;
    v5 = v0[1];

    v5();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21DA4AF30(__int128 *a1, int a2)
{
  v27 = a2;
  v4 = *a1;
  v29 = *(a1 + 8);
  v25 = *(a1 + 2);
  v26 = v4;
  v30 = *(a1 + 24);
  v5 = *(a1 + 5);
  v23 = a1 + 1;
  v24 = v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64FB0);
  v28 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = v22 - v6;
  v8 = v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel;
  v10 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel);
  v9 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel + 8);
  v31 = v2;
  v32 = v9;
  v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel + 16);
  v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel + 32);
  v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel + 40);
  v22[2] = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel + 24);
  v22[1] = v12;
  v14 = v13;
  sub_21DA4BB24(v10);
  type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier(0);
  sub_21DA4BB84();
  sub_21DA4BC38(&unk_27CE64FC0, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  result = sub_21DBF8AFC();
  if (*(*a1 + 16))
  {
    sub_21DBF8A6C();
    LOBYTE(v37) = 0;
    result = sub_21DBF8A2C();
  }

  if (v10)
  {
    sub_21DA4C8A0(v14, *(a1 + 5));
    v22[0] = v11;
    sub_21DBF8ACC();

    result = sub_21DA4BBD8(v10);
  }

  v16 = *(v31 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_dataSource);
  if (v16)
  {
    v17 = v16;
    sub_21DBF8BFC();

    (*(v28 + 8))(v7, v33);
    v18 = v29 & 1;
    v19 = *v8;
    v37 = *v23;
    v20 = *(a1 + 4);
    v35 = *(a1 + 5);
    v36 = v20;
    *v8 = v26;
    *(v8 + 8) = v18;
    v21 = v24;
    *(v8 + 16) = v25;
    *(v8 + 24) = v30;
    *(v8 + 40) = v21;
    sub_21DA4BBD8(v19);
    sub_21DBF8E0C();
    sub_21D35BFD0(&v37, v34);
    sub_21D0D3954(&v36, v34, &qword_27CE61F08);
    return sub_21D0D3954(&v35, v34, &qword_27CE64FD0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DA4B498(void *a1)
{
  v3 = sub_21DBF5C4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64FD8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_21DBF5C6C();
  [a1 deselectItemAtIndexPath:v10 animated:1];

  v11 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_dataSource);
  if (v11)
  {
    v12 = v11;
    sub_21DBF8BEC();

    v13 = type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier(0);
    if ((*(*(v13 - 8) + 48))(v9, 1, v13) != 1)
    {
      (*(v4 + 32))(v6, v9, v3);
      v14 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_presenter);
      if (qword_27CE56CF8 != -1)
      {
        swift_once();
      }

      v15 = sub_21DBF84BC();
      __swift_project_value_buffer(v15, qword_27CE61EB8);
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21DAEACDC();

      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = v14[5];
        sub_21DA4BC38(&qword_27CE64FE0, MEMORY[0x277CC9A70]);
        if ((sub_21DBFA10C() & 1) == 0)
        {
          ObjectType = swift_getObjectType();
          (*(v16 + 8))(v14, &off_282ED3DB0, v6, ObjectType, v16);
        }

        swift_unknownObjectRelease();
      }

      __swift_project_boxed_opaque_existential_1(v14 + 8, v14[11]);
      sub_21D801350();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21DA4B920(void *a1)
{
  v3 = sub_21DBFA12C();
  [a1 setText_];

  [a1 resignFirstResponder];
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_initialSearchTerm + 8);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_initialSearchTerm);
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

  sub_21DBF8E0C();
  sub_21D7FBA74(v5, v6);
}

uint64_t sub_21DA4BB24(uint64_t result)
{
  if (result)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return sub_21DBF8E0C();
  }

  return result;
}

unint64_t sub_21DA4BB84()
{
  result = qword_27CE64FB8;
  if (!qword_27CE64FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64FB8);
  }

  return result;
}

uint64_t sub_21DA4BBD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21DA4BC38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DA4BC80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21DA4AC70(a1, v4, v5, v6);
}

uint64_t sub_21DA4BD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64FE8);

  return sub_21DA4A9E4(a1, a2, a3);
}

uint64_t sub_21DA4BDD0(uint64_t a1)
{
  v2 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DA4BE2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *sub_21DA4BE94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = sub_21DBF5C4C();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  return a1;
}

uint64_t sub_21DA4BF44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65028);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21DA4BFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65028);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_21DA4C064(uint64_t a1)
{
  result = sub_21DBF5C4C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

uint64_t destroy for TTRTimeZonePickerViewModel()
{
}

uint64_t initializeWithCopy for TTRTimeZonePickerViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRTimeZonePickerViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRTimeZonePickerViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

unint64_t sub_21DA4C2F0()
{
  result = qword_27CE65040;
  if (!qword_27CE65040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65040);
  }

  return result;
}

uint64_t sub_21DA4C344(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC7DC();
  sub_21DA4D110(v1, v3, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  MEMORY[0x223D44FA0](0);
  v4 = sub_21DBF5C4C();
  sub_21DA4BC38(&qword_27CE58378, MEMORY[0x277CC9A70]);
  sub_21DBFA00C();
  (*(*(v4 - 8) + 8))(v3, v4);
  return sub_21DBFC82C();
}

uint64_t sub_21DA4C470(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA4D110(v1, v3, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  MEMORY[0x223D44FA0](0);
  v4 = sub_21DBF5C4C();
  sub_21DA4BC38(&qword_27CE58378, MEMORY[0x277CC9A70]);
  sub_21DBFA00C();
  return (*(*(v4 - 8) + 8))(v3, v4);
}

uint64_t sub_21DA4C588(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC7DC();
  sub_21DA4D110(v1, v3, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  MEMORY[0x223D44FA0](0);
  v4 = sub_21DBF5C4C();
  sub_21DA4BC38(&qword_27CE58378, MEMORY[0x277CC9A70]);
  sub_21DBFA00C();
  (*(*(v4 - 8) + 8))(v3, v4);
  return sub_21DBFC82C();
}

uint64_t sub_21DA4C6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v8 = *(v7 + 56);
  sub_21DA4D110(a1, &v12 - v5, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  sub_21DA4D110(a2, &v6[v8], type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  LOBYTE(a2) = MEMORY[0x223D3E3D0](v6, &v6[v8]);
  v9 = sub_21DBF5C4C();
  v10 = *(*(v9 - 8) + 8);
  v10(&v6[v8], v9);
  v10(v6, v9);
  return a2 & 1;
}

uint64_t sub_21DA4C818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x223D3E3D0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_21DBFC64C();
}

void *sub_21DA4C8A0(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v3 = type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier(0);
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  v79 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v58 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  MEMORY[0x28223BE20](v11);
  v69 = &v58 - v12;
  v13 = sub_21DBF5C4C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v58 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65050);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - v23;
  v25 = *(a2 + 64);
  v78 = a2 + 64;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v77 = (v26 + 63) >> 6;
  v71 = (v14 + 16);
  v72 = a2;
  v80 = (v14 + 32);
  v68 = v14;
  v74 = (v14 + 8);
  result = sub_21DBF8E0C();
  v30 = 0;
  v61 = MEMORY[0x277D84F90];
  v70 = v10;
  v76 = v13;
  v67 = v16;
  v64 = v24;
  v65 = v21;
  while (v28)
  {
    v31 = v30;
LABEL_16:
    v34 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v35 = v34 | (v31 << 6);
    v36 = v72;
    v37 = v68;
    (*(v68 + 16))(v66, *(v72 + 48) + *(v68 + 72) * v35, v13);
    v38 = v69;
    sub_21DA4D110(*(v36 + 56) + *(v79 + 72) * v35, v69, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65058);
    v40 = *(v39 + 48);
    v21 = v65;
    (*(v37 + 32))();
    sub_21DA4D0A8(v38, &v21[v40], type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
    (*(*(v39 - 8) + 56))(v21, 0, 1, v39);
    v10 = v70;
    v16 = v67;
    v24 = v64;
LABEL_17:
    sub_21DA4D038(v21, v24);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65058);
    if ((*(*(v41 - 8) + 48))(v24, 1, v41) == 1)
    {

      return v61;
    }

    v42 = *(v41 + 48);
    v13 = v76;
    (*v80)(v16, v24, v76);
    sub_21DA4D0A8(&v24[v42], v10, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
    v43 = v75;
    if (*(v75 + 16) && (v44 = sub_21D17E824(v16), (v45 & 1) != 0))
    {
      v46 = v63;
      sub_21DA4D110(*(v43 + 56) + *(v79 + 72) * v44, v63, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
      v47 = v46;
      v48 = v73;
      sub_21DA4D0A8(v47, v73, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
      if (MEMORY[0x223D3E3D0](v48, v10) & 1) != 0 && ((v49 = *(v62 + 20), v50 = (v73 + v49), v51 = *(v73 + v49 + 8), v52 = &v10[v49], *v50 == *v52) && v51 == *(v52 + 1) || (sub_21DBFC64C()))
      {
        (*v74)(v16, v13);
      }

      else
      {
        (*v71)(v60, v16, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_21D212C04(0, v61[2] + 1, 1, v61);
        }

        v55 = v61[2];
        v54 = v61[3];
        if (v55 >= v54 >> 1)
        {
          v61 = sub_21D212C04(v54 > 1, v55 + 1, 1, v61);
        }

        (*v74)(v16, v13);
        v56 = v60;
        v57 = v61;
        v61[2] = v55 + 1;
        sub_21DA4D0A8(v56, v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v55, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
      }

      sub_21DA4BDD0(v73);
    }

    else
    {
      (*v74)(v16, v13);
    }

    result = sub_21DA4BDD0(v10);
  }

  if (v77 <= v30 + 1)
  {
    v32 = v30 + 1;
  }

  else
  {
    v32 = v77;
  }

  v33 = v32 - 1;
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v77)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65058);
      (*(*(v53 - 8) + 56))(v21, 1, 1, v53);
      v28 = 0;
      v30 = v33;
      goto LABEL_17;
    }

    v28 = *(v78 + 8 * v31);
    ++v30;
    if (v28)
    {
      v30 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DA4D038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA4D0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DA4D110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DA4D178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v45 = a1;
  v46 = a2;
  v47 = a4;
  v5 = sub_21DBF5C4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier(0);
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v45 - v14;
  v60 = MEMORY[0x277D84F98];
  v15 = sub_21D212C04(0, *(a3 + 16), 0, MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64FD0);
  result = sub_21DBF9EAC();
  v53 = *(a3 + 16);
  if (v53)
  {
    v17 = 0;
    v52 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = (v6 + 16);
    v48 = v6;
    v49 = v11;
    v50 = a3;
    v51 = (v6 + 8);
    while (v17 < *(a3 + 16))
    {
      v19 = *(v11 + 72);
      v20 = v56;
      sub_21DA4D110(v52 + v19 * v17, v56, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
      v21 = *v18;
      (*v18)(v57, v20, v5);
      v23 = v15[2];
      v22 = v15[3];
      if (v23 >= v22 >> 1)
      {
        v15 = sub_21D212C04(v22 > 1, v23 + 1, 1, v15);
      }

      v15[2] = v23 + 1;
      sub_21DA4D0A8(v57, v15 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v23, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
      v24 = v58;
      v25 = v56;
      v26 = v5;
      v21(v58, v56, v5);
      sub_21DA4D0A8(v25, v55, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
      v27 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v27;
      v30 = sub_21D17E824(v24);
      v31 = v27[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_20;
      }

      v34 = v29;
      if (v27[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21D223010();
        }
      }

      else
      {
        sub_21D21A3E8(v33, isUniquelyReferenced_nonNull_native);
        v35 = sub_21D17E824(v58);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_22;
        }

        v30 = v35;
      }

      v5 = v26;
      v37 = v59;
      if (v34)
      {
        sub_21DA4D678(v55, v59[7] + v30 * v19);
        result = (*v51)(v58, v26);
      }

      else
      {
        v59[(v30 >> 6) + 8] |= 1 << v30;
        v38 = v48;
        v39 = v58;
        v21(v37[6] + *(v48 + 72) * v30, v58, v5);
        sub_21DA4D0A8(v55, v37[7] + v30 * v19, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
        result = (*(v38 + 8))(v39, v5);
        v40 = v37[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_21;
        }

        v37[2] = v42;
      }

      ++v17;
      v60 = v37;
      v11 = v49;
      a3 = v50;
      if (v53 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_21DBFC70C();
    __break(1u);
  }

  else
  {
    v37 = v60;
LABEL_18:
    v43 = v47;
    *v47 = v15;
    *(v43 + 8) = 0;
    v44 = v46;
    v43[2] = v45;
    v43[3] = v44;
    v43[4] = a3;
    v43[5] = v37;
  }

  return result;
}

uint64_t sub_21DA4D678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_21DA4D6DC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF5C4C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t sub_21DA4D7B0(uint64_t a1)
{
  v2 = sub_21DBF5C4C();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_21DA4D828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5C4C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21DA4D8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5C4C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21DA4D94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5C4C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21DA4D9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5C4C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  return a1;
}

uint64_t sub_21DA4DA7C()
{
  result = sub_21DBF5C4C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRUserDefaults.activitySessionId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_21DBFA16C();

  return v4;
}

uint64_t TTRUserDefaults.activitySessionBeginTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 valueForKey_];

    if (v5)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_21DBF563C();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_21D0CF7E0(&v12, &qword_27CE5C690);
  v9 = sub_21DBF563C();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t TTRUserDefaults.hasCreatedGroceryList.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void TTRUserDefaults.hasCreatedGroceryList.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    [v3 setBool:a1 & 1 forKey:v4];
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 setHasCreatedGroceryList_];
}

void (*sub_21DA4DE64(void *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.hasCreatedGroceryList.modify(v2);
  return sub_21D4C3D30;
}

void *TTRUserDefaults.hasCreatedGroceryList.modify(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = (a1 + 1);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    v5 = [v2 BOOLForKey_];

    v6 = sub_21DA4DF9C;
  }

  else
  {
    v5 = 1;
    v6 = sub_21DA4DF90;
  }

  result = v6;
  *v3 = v5;
  return result;
}

void sub_21DA4DF9C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];

  v4 = [objc_opt_self() daemonUserDefaults];
  [v4 setHasCreatedGroceryList_];
}

uint64_t TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)(void *a1)
{
  sub_21DBFBEEC();
  v3 = [a1 stringRepresentation];
  v4 = sub_21DBFA16C();
  v6 = v5;

  *&v17 = v4;
  *(&v17 + 1) = v6;
  MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC74450);
  v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v7)
  {
    v8 = sub_21DBFA12C();
    v9 = [v7 objectForKey_];

    if (v9)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      sub_21D0CF7E0(&v17, &qword_27CE5C690);
      v10 = sub_21DBFA12C();

      v11 = [v7 BOOLForKey_];

      goto LABEL_10;
    }
  }

  else
  {

    v17 = 0u;
    v18 = 0u;
  }

  sub_21D0CF7E0(&v17, &qword_27CE5C690);
  v11 = 2;
LABEL_10:
  v12 = [a1 stringRepresentation];
  if (!v12)
  {
    sub_21DBFA16C();
    v12 = sub_21DBFA12C();

    if (v11 != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v11 == 2)
  {
LABEL_12:
    v13 = [objc_opt_self() daemonUserDefaults];
    LOBYTE(v11) = [v13 hideEmptySectionsForGroceryList_];
  }

LABEL_13:

  return v11 & 1;
}

void TTRUserDefaults.setShouldHideEmptySectionsInGroceryOrAutoCategorizingList(value:with:)(char a1, void *a2)
{
  sub_21DBFBEEC();
  v5 = [a2 stringRepresentation];
  sub_21DBFA16C();

  MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC74450);
  v6 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    v7 = sub_21DBFA12C();

    [v6 setURL:0 forKey:v7];
  }

  else
  {
  }

  v9 = [a2 stringRepresentation];
  if (!v9)
  {
    sub_21DBFA16C();
    v9 = sub_21DBFA12C();
  }

  v8 = [objc_opt_self() daemonUserDefaults];
  [v8 setHideEmptySections:a1 & 1 forGroceryList:v9];
}

uint64_t sub_21DA4E42C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_21DBFC01C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_21D0CEB98(i, v5);
    sub_21D0D8CF0(0, &qword_280D17880);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_21DA4E538(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_21D18E678(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_21D0CEB98(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21D18E678((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void TTRUserDefaults.sharingExtensionLastSelectedListObjectID.setter(void *a1)
{
  v11 = a1;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA5392C(v11, 1);
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v7 = sub_21DBF55BC();
    (*(v3 + 8))(v5, v2);
    v8 = sub_21DBFA12C();
    [v6 setValue:v7 forKey:v8];
  }

  else
  {
    v9 = v11;
  }
}

uint64_t TTRUserDefaults.reminderDetailNewStyleEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_21D0CF7E0(&v7, &qword_27CE5C690);
    return 2;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

void TTRUserDefaults.quickEntryRecentlySelectedListObjectID.setter(void *a1)
{
  v11 = a1;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA5392C(v11, 3);
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v7 = sub_21DBF55BC();
    (*(v3 + 8))(v5, v2);
    v8 = sub_21DBFA12C();
    [v6 setValue:v7 forKey:v8];
  }

  else
  {
    v9 = v11;
  }
}

void TTRUserDefaults.remindersInCalendarCreationLastSelectedListObjectID.setter(void *a1)
{
  sub_21DA5392C(a1, 8);
}

id TTRUserDefaults.templateSharingIncludePropertiesAlertShown.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void TTRUserDefaults.templateSharingIncludePropertiesAlertShown.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

uint64_t TTRUserDefaults.RemindersListLayoutKey.key.getter()
{
  v1 = [*v0 stringRepresentation];
  v2 = sub_21DBFA16C();

  MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
  return v2;
}

uint64_t TTRUserDefaults.lastSelectedListIdentifier.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_21DBF664C();
  v113 = *(v3 - 8);
  v114 = v3;
  MEMORY[0x28223BE20](v3);
  v112 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v105 - v6;
  v8 = sub_21DBF663C();
  v115 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v105 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v105 - v15;
  v17 = sub_21DBF66FC();
  v18 = *(v17 - 8);
  v117 = v17;
  v118 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = (&v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v116 = &v105 - v22;
  v23 = sub_21DBF54CC();
  MEMORY[0x28223BE20](v23);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v105 - v29;
  v31 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v31)
  {
    v121 = 0u;
    v122 = 0u;
LABEL_9:
    sub_21D0CF7E0(&v121, &qword_27CE5C690);
    goto LABEL_10;
  }

  v111 = v27;
  v110 = v28;
  v109 = v20;
  v32 = sub_21DBFA12C();
  v33 = [v31 valueForKey_];

  if (v33)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v119 = 0u;
    v120 = 0u;
  }

  v121 = v119;
  v122 = v120;
  if (!*(&v120 + 1))
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v36 = type metadata accessor for TTRListType(0);
    v37 = *(*(v36 - 8) + 56);
    v38 = a1;
    return v37(v38, 1, 1, v36);
  }

  v108 = a1;
  v34 = v119;
  sub_21DBF521C();
  swift_allocObject();
  sub_21DBF520C();
  sub_21DA60E3C(&qword_280D171C8, MEMORY[0x277CC9260]);
  v106 = v30;
  v35 = v111;
  v107 = v34;
  sub_21DBF51EC();

  v40 = v110;
  (*(v110 + 16))(v25, v106, v35);
  sub_21DBF670C();
  v41 = v117;
  v42 = v118;
  if ((*(v118 + 48))(v16, 1, v117) != 1)
  {
    v59 = v106;
    v60 = v116;
    (*(v42 + 32))(v116, v16, v41);
    v61 = v109;
    (*(v42 + 16))(v109, v60, v41);
    v62 = (*(v42 + 88))(v61, v41);
    if (v62 == *MEMORY[0x277D45220])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      (*(v42 + 8))(*(&v34 + 1), v41);
      (*(v110 + 8))(v59, v111);
      (*(v42 + 96))(v61, v41);

      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D8) + 48);
      v64 = type metadata accessor for TTRListType(0);
      (*(*(v64 - 8) + 56))(v108, 1, 1, v64);
      v65 = sub_21DBF665C();
      return (*(*(v65 - 8) + 8))(v61 + v63, v65);
    }

    v66 = v108;
    if (v62 == *MEMORY[0x277D451F8])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      (*(v42 + 8))(v116, v41);
      (*(v110 + 8))(v59, v111);
      v67 = v109;
      (*(v42 + 96))(v109, v41);
      v68 = *v67;
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
      **(&v34 + 1) = v68;
      *(*(&v34 + 1) + 8) = 0;
      v70 = type metadata accessor for TTRListType(0);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      (*(*(v70 - 8) + 56))(v66, 0, 1, v70);
      v72 = sub_21DBF668C();
      return (*(*(v72 - 8) + 8))(&v67[v69], v72);
    }

    if (v62 == *MEMORY[0x277D451D8])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      (*(v42 + 8))(v116, v41);
      (*(v110 + 8))(v59, v111);
      v67 = v109;
      (*(v42 + 96))(v109, v41);
      v71 = *v67;
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
      **(&v34 + 1) = v71;
      v70 = type metadata accessor for TTRListType(0);
      goto LABEL_25;
    }

    if (v62 == *MEMORY[0x277D45230])
    {
      goto LABEL_27;
    }

    if (v62 == *MEMORY[0x277D45248])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      (*(v42 + 8))(v116, v41);
      (*(v110 + 8))(v59, v111);
      v61 = v109;
      (*(v42 + 96))(v109, v41);

      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680) + 48);
      v75 = type metadata accessor for TTRListType(0);
      (*(*(v75 - 8) + 56))(*(&v34 + 1), 1, 1, v75);
      v65 = sub_21DBF66DC();
      return (*(*(v65 - 8) + 8))(v61 + v63, v65);
    }

    if (v62 == *MEMORY[0x277D45238] || v62 == *MEMORY[0x277D451E8])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      (*(v42 + 8))(v116, v41);
      (*(v110 + 8))(v59, v111);
      v61 = v109;
      (*(v42 + 96))(v109, v41);

      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650C0) + 48);
      v76 = type metadata accessor for TTRListType(0);
      (*(*(v76 - 8) + 56))(*(&v34 + 1), 1, 1, v76);
      v65 = sub_21DBF666C();
      return (*(*(v65 - 8) + 8))(v61 + v63, v65);
    }

    if (v62 == *MEMORY[0x277D45200])
    {
LABEL_27:
      sub_21D17B8A8(v107, *(&v107 + 1));
      v73 = *(v42 + 8);
      v73(v116, v41);
      (*(v110 + 8))(v59, v111);
      v74 = type metadata accessor for TTRListType(0);
      (*(*(v74 - 8) + 56))(*(&v34 + 1), 1, 1, v74);
      return (v73)(v109, v41);
    }

    if (v62 == *MEMORY[0x277D45208])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      v77 = *(v42 + 8);
      v77(v116, v41);
      (*(v110 + 8))(v59, v111);
      **(&v34 + 1) = 0;
      v78 = v41;
      v79 = type metadata accessor for TTRListType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v79 - 8) + 56))(*(&v34 + 1), 0, 1, v79);
      return (v77)(v109, v78);
    }

    if (v62 == *MEMORY[0x277D45258])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      v80 = v117;
      v81 = *(v118 + 8);
      v81(v116, v117);
      (*(v110 + 8))(v59, v111);
      v82 = 1;
LABEL_42:
      v83 = v108;
      *v108 = v82;
      v84 = type metadata accessor for TTRListType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
      return (v81)(v109, v80);
    }

    if (v62 == *MEMORY[0x277D451C8])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      v80 = v117;
      v81 = *(v118 + 8);
      v81(v116, v117);
      (*(v110 + 8))(v59, v111);
      v82 = 2;
      goto LABEL_42;
    }

    if (v62 == *MEMORY[0x277D45228])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      v80 = v117;
      v81 = *(v118 + 8);
      v81(v116, v117);
      (*(v110 + 8))(v59, v111);
      v82 = 3;
      goto LABEL_42;
    }

    if (v62 == *MEMORY[0x277D45210])
    {
      v85 = v109;
      (*(v118 + 96))(v109, v117);
      v86 = v115;
      (*(v115 + 32))(v13, v85, v8);
      (*(v86 + 16))(v10, v13, v8);
      v87 = (*(v86 + 88))(v10, v8);
      if (v87 == *MEMORY[0x277D450F0])
      {
        sub_21D17B8A8(v107, *(&v107 + 1));
        v88 = v115;
        (*(v115 + 8))(v13, v8);
        (*(v118 + 8))(v116, v117);
        (*(v110 + 8))(v59, v111);
        (*(v88 + 96))(v10, v8);
        v89 = v10[1];
        v90 = v108;
        *v108 = *v10;
        *(v90 + 1) = v89;
        v91 = type metadata accessor for TTRListType(0);
LABEL_46:
        swift_storeEnumTagMultiPayload();
        return (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
      }

      if (v87 == *MEMORY[0x277D450F8])
      {
        sub_21D17B8A8(v107, *(&v107 + 1));
        (*(v115 + 8))(v13, v8);
LABEL_51:
        (*(v118 + 8))(v116, v117);
        (*(v110 + 8))(v59, v111);
        v36 = type metadata accessor for TTRListType(0);
        v37 = *(*(v36 - 8) + 56);
        v38 = v108;
        return v37(v38, 1, 1, v36);
      }

      sub_21DBFC63C();
      __break(1u);
    }

    else
    {
      if (v62 == *MEMORY[0x277D45240])
      {
        sub_21D17B8A8(v107, *(&v107 + 1));
        v80 = v117;
        v81 = *(v118 + 8);
        v81(v116, v117);
        (*(v110 + 8))(v59, v111);
        v82 = 4;
        goto LABEL_42;
      }

      if (v62 == *MEMORY[0x277D451E0])
      {
        sub_21D17B8A8(v107, *(&v107 + 1));
        v80 = v117;
        v81 = *(v118 + 8);
        v81(v116, v117);
        (*(v110 + 8))(v59, v111);
        v82 = 5;
        goto LABEL_42;
      }

      if (v62 == *MEMORY[0x277D45218])
      {
        v92 = v109;
        (*(v118 + 96))(v109, v117);
        v93 = v113;
        v94 = v92;
        v95 = v114;
        (*(v113 + 32))(v7, v94, v114);
        v96 = v112;
        (*(v93 + 16))(v112, v7, v95);
        v97 = (*(v93 + 88))(v96, v95);
        if (v97 == *MEMORY[0x277D45100])
        {
          sub_21D17B8A8(v107, *(&v107 + 1));
          v99 = v113;
          v98 = v114;
          (*(v113 + 8))(v7, v114);
          (*(v118 + 8))(v116, v117);
          (*(v110 + 8))(v59, v111);
          v100 = v112;
          (*(v99 + 96))(v112, v98);
          v101 = sub_21DBF6C1C();
          v90 = v108;
          (*(*(v101 - 8) + 32))(v108, v100, v101);
          v91 = type metadata accessor for TTRListType(0);
          goto LABEL_46;
        }

        if (v97 == *MEMORY[0x277D45108])
        {
          sub_21D17B8A8(v107, *(&v107 + 1));
          (*(v113 + 8))(v7, v114);
          goto LABEL_51;
        }
      }

      else
      {
        if (v62 == *MEMORY[0x277D45250])
        {
          sub_21D17B8A8(v107, *(&v107 + 1));
          v80 = v117;
          v81 = *(v118 + 8);
          v81(v116, v117);
          (*(v110 + 8))(v59, v111);
          v82 = 6;
          goto LABEL_42;
        }

        if (v62 == *MEMORY[0x277D451D0])
        {
          sub_21D17B8A8(v107, *(&v107 + 1));
          v102 = v117;
          v103 = *(v118 + 8);
          v103(v116, v117);
          (*(v110 + 8))(v59, v111);
          v104 = type metadata accessor for TTRListType(0);
          (*(*(v104 - 8) + 56))(v108, 1, 1, v104);
          return (v103)(v109, v102);
        }

        if (v62 == *MEMORY[0x277D45138] || v62 == *MEMORY[0x277D451F0])
        {
          sub_21D17B8A8(v107, *(&v107 + 1));
          goto LABEL_51;
        }
      }
    }

    result = sub_21DBFC63C();
    __break(1u);
    return result;
  }

  sub_21D0CF7E0(v16, &unk_27CE650B0);
  v43 = objc_opt_self();
  v44 = v40;
  v45 = sub_21DBFA12C();
  v46 = [v43 internalErrorWithDebugDescription_];

  swift_willThrow();
  (*(v44 + 8))(v106, v35);
  if (qword_27CE56FE8 != -1)
  {
    swift_once();
  }

  v47 = sub_21DBF84BC();
  __swift_project_value_buffer(v47, qword_27CE65080);
  v48 = v46;
  v49 = sub_21DBF84AC();
  v50 = sub_21DBFAEBC();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v121 = v52;
    *v51 = 136315138;
    swift_getErrorValue();
    v53 = sub_21DBFC75C();
    v55 = sub_21D0CDFB4(v53, v54, &v121);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_21D0C9000, v49, v50, "Failed to decode lastSelectedListIdentifier as URL {error: %s}", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x223D46520](v52, -1, -1);
    MEMORY[0x223D46520](v51, -1, -1);
  }

  v58 = v107;
  v56 = v58 >> 64;
  v57 = v58;
  sub_21DA52E74(v108);

  return sub_21D17B8A8(v57, v56);
}

uint64_t TTRUserDefaults.lastSelectedListIdentifier.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  sub_21D0D3954(a1, v4, &qword_27CE650E0);
  v8 = type metadata accessor for TTRListType(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v30 = **(&unk_27832F9E8 + *v4);
        sub_21DBF671C();
        goto LABEL_13;
      }

      v11 = *v4;
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
      *v7 = v11;
      v13 = *MEMORY[0x277D45140];
      v14 = sub_21DBF668C();
      (*(*(v14 - 8) + 104))(&v7[v12], v13, v14);
      v15 = MEMORY[0x277D451D8];
    }

    else
    {
      v19 = *v4;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
      *v7 = v19;
      v21 = *MEMORY[0x277D45140];
      v22 = sub_21DBF668C();
      (*(*(v22 - 8) + 104))(&v7[v20], v21, v22);
      v15 = MEMORY[0x277D451F8];
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v23 = sub_21DBF6C1C();
    (*(*(v23 - 8) + 32))(v7, v4, v23);
    v24 = *MEMORY[0x277D45100];
    v25 = sub_21DBF664C();
    (*(*(v25 - 8) + 104))(v7, v24, v25);
    v15 = MEMORY[0x277D45218];
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v16 = *(v4 + 1);
    *v7 = *v4;
    *(v7 + 1) = v16;
    v17 = *MEMORY[0x277D450F0];
    v18 = sub_21DBF663C();
    (*(*(v18 - 8) + 104))(v7, v17, v18);
    v15 = MEMORY[0x277D45210];
LABEL_12:
    v26 = *v15;
    v27 = sub_21DBF66FC();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v7, v26, v27);
    (*(v28 + 56))(v7, 0, 1, v27);
    goto LABEL_13;
  }

  sub_21DA5FAE4(v4, type metadata accessor for TTRListType);
LABEL_2:
  v9 = sub_21DBF66FC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
LABEL_13:
  sub_21DA53180(v7, 0);
  sub_21D0CF7E0(a1, &qword_27CE650E0);
  return sub_21D0CF7E0(v7, &unk_27CE650B0);
}

void (*sub_21DA507B0(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = *v1;
  a1[1] = v4;
  a1[2] = v5;
  TTRUserDefaults.lastSelectedListIdentifier.getter(v4);
  return sub_21DA5086C;
}

void sub_21DA5086C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    sub_21D0D3954(*(a1 + 8), v3, &qword_27CE650E0);
    TTRUserDefaults.lastSelectedListIdentifier.setter(v3);
    sub_21D0CF7E0(v2, &qword_27CE650E0);
  }

  else
  {
    TTRUserDefaults.lastSelectedListIdentifier.setter(*(a1 + 8));
  }

  free(v2);

  free(v3);
}

void (*TTRUserDefaults.lastSelectedListIdentifier.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  TTRUserDefaults.lastSelectedListIdentifier.getter(v4);
  return sub_21DA509C4;
}

void sub_21DA509C4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_21D0D3954(*(a1 + 16), v2, &qword_27CE650E0);
    TTRUserDefaults.lastSelectedListIdentifier.setter(v2);
    sub_21D0CF7E0(v3, &qword_27CE650E0);
  }

  else
  {
    TTRUserDefaults.lastSelectedListIdentifier.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

void TTRUserDefaults.smartListsDisplayOrder.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v24 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v3, 0);
    v4 = 32;
    v5 = v24;
    v6 = 0x7961646F74;
    do
    {
      v7 = *(v2 + v4);
      if (v7 == 5)
      {
        v8 = 0x6E756F4669726973;
      }

      else
      {
        v8 = 0x6574656C706D6F63;
      }

      if (v7 == 5)
      {
        v9 = 0xEF737070416E4964;
      }

      else
      {
        v9 = 0xE900000000000064;
      }

      if (v7 == 3)
      {
        v10 = 0x64656767616C66;
      }

      else
      {
        v10 = 0x64656E6769737361;
      }

      if (v7 == 3)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (*(v2 + v4) <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      if (v7 == 1)
      {
        v12 = 0x656C756465686373;
      }

      else
      {
        v12 = 7105633;
      }

      if (v7 == 1)
      {
        v13 = 0xE900000000000064;
      }

      else
      {
        v13 = 0xE300000000000000;
      }

      if (!*(v2 + v4))
      {
        v12 = v6;
        v13 = 0xE500000000000000;
      }

      if (*(v2 + v4) <= 2u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v8;
      }

      if (*(v2 + v4) <= 2u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v9;
      }

      v25 = v5;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = v6;
        sub_21D18E678((v16 > 1), v17 + 1, 1);
        v6 = v19;
        v5 = v25;
      }

      *(v5 + 16) = v17 + 1;
      v18 = v5 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      ++v4;
      --v3;
    }

    while (v3);

    v1 = v22;
  }

  else
  {
  }

  v20 = *&v1[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v20)
  {
    v21 = sub_21DBFA5DC();

    v23 = sub_21DBFA12C();
    [v20 setObject:v21 forKey:v23];
  }

  else
  {
  }
}

uint64_t (*sub_21DA50D54(void *a1))()
{
  a1[1] = *v1;
  TTRUserDefaults.smartListsDisplayOrder.getter(a1);
  return sub_21DA60F88;
}

uint64_t (*TTRUserDefaults.smartListsDisplayOrder.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  TTRUserDefaults.smartListsDisplayOrder.getter(a1);
  return sub_21DA50DE8;
}

void TTRUserDefaults.smartListsVisibility.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_21DBF8E0C();
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v35 = v1;
  while (v5)
  {
    v11 = v7;
LABEL_11:
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = *(*(v1 + 48) + v12);
    if (v13 <= 2)
    {
      if (*(*(v1 + 48) + v12))
      {
        if (v13 == 1)
        {
          v15 = 0x656C756465686373;
        }

        else
        {
          v15 = 7105633;
        }

        if (v13 == 1)
        {
          v14 = 0xE900000000000064;
        }

        else
        {
          v14 = 0xE300000000000000;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        v15 = 0x7961646F74;
      }
    }

    else if (*(*(v1 + 48) + v12) > 4u)
    {
      if (v13 == 5)
      {
        v15 = 0x6E756F4669726973;
        v14 = 0xEF737070416E4964;
      }

      else
      {
        v15 = 0x6574656C706D6F63;
        v14 = 0xE900000000000064;
      }
    }

    else if (v13 == 3)
    {
      v14 = 0xE700000000000000;
      v15 = 0x64656767616C66;
    }

    else
    {
      v14 = 0xE800000000000000;
      v15 = 0x64656E6769737361;
    }

    v16 = *(*(v1 + 56) + v12);
    if (v16 > 1)
    {
      v36 = 0xE600000000000000;
      if (v16 == 2)
      {
        v17 = 0x6E6564646968;
      }

      else
      {
        v17 = 0x6D6F74737563;
      }
    }

    else if (v16)
    {
      v36 = 0xE700000000000000;
      v17 = 0x656C6269736976;
    }

    else
    {
      v17 = 0x656E696665646E75;
      v36 = 0xE900000000000064;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_21D0CEF70(v15, v14);
    v21 = v8[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      sub_21DBFC70C();
      __break(1u);
      return;
    }

    v25 = v20;
    if (v8[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v19;
        sub_21D2201D4();
        v19 = v31;
      }
    }

    else
    {
      sub_21D2156F8(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_21D0CEF70(v15, v14);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_53;
      }
    }

    v5 &= v5 - 1;
    if (v25)
    {
      v9 = v19;

      v10 = (v8[7] + 16 * v9);
      *v10 = v17;
      v10[1] = v36;
    }

    else
    {
      v8[(v19 >> 6) + 8] |= 1 << v19;
      v27 = (v8[6] + 16 * v19);
      *v27 = v15;
      v27[1] = v14;
      v28 = (v8[7] + 16 * v19);
      *v28 = v17;
      v28[1] = v36;
      v29 = v8[2];
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_52;
      }

      v8[2] = v30;
    }

    v7 = v11;
    v1 = v35;
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v7;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v32 = *(v34 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v32)
  {
    v33 = sub_21DBF9E5C();

    v37 = sub_21DBFA12C();
    [v32 setObject:v33 forKey:v37];
  }

  else
  {
  }
}

uint64_t (*sub_21DA51234(unint64_t *a1))()
{
  a1[1] = *v1;
  TTRUserDefaults.smartListsVisibility.getter(a1);
  return sub_21DA60F84;
}

uint64_t (*TTRUserDefaults.smartListsVisibility.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  TTRUserDefaults.smartListsVisibility.getter(a1);
  return sub_21DA512C8;
}

uint64_t sub_21DA512E0(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  if (a2)
  {
    v5 = *a1;
    sub_21DBF8E0C();
    a3(&v5);
  }

  else
  {
    v5 = *a1;
    return (a3)(&v5);
  }
}

id TTRUserDefaults.showsCompleted(forType:)(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v5 = *a1;
    LOBYTE(v6) = *(a1 + 8);
    TTRUserDefaults.ShowCompletedType.key.getter();
    v3 = sub_21DBFA12C();

    v2 = [v2 BOOLForKey_];
  }

  return v2;
}

void sub_21DA513F0(char a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    TTRUserDefaults.ShowCompletedType.key.getter();
    v4 = sub_21DBFA12C();

    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void TTRUserDefaults.setShowsCompleted(value:forType:)(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    TTRUserDefaults.ShowCompletedType.key.getter();
    v4 = sub_21DBFA12C();

    [v2 setBool:a1 & 1 forKey:v4];
  }
}

uint64_t sub_21DA5154C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21DA515C4(char a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    [v3 setBool:a1 & 1 forKey:v4];
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 setHasCreatedGroceryList_];
}

void (*sub_21DA5168C(void *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.hasCreatedGroceryList.modify(v2);
  return sub_21D4C3D30;
}

id TTRUserDefaults.migrationTipDismissed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

id TTRUserDefaults.iCloudSyncTipDismissed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void TTRUserDefaults.quickReminderCreationLastSelectedFlagOption.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    if (a1 == 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_21DBFA7AC();
    }

    v4 = sub_21DBFA12C();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }
}

void TTRUserDefaults.quickReminderCreationLastSelectedDueDateOption.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_21DBFA12C();
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_21DBFA12C();
    [v3 setObject:v4 forKey:v5];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_21DBFA12C();
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_21DBFA12C();
    [v3 setObject:v4 forKey:v5];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t TTRUserDefaults.quickReminderCreationLastSelectedDueDateOption.getter()
{
  v1 = 1701736302;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = sub_21DBFA12C();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v1 = sub_21DBFA16C();
    }
  }

  return v1;
}

uint64_t TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_21DBFA16C();

  return v4;
}

uint64_t TTRUserDefaults.quickReminderCreationLastSelectedFlagOption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9 = v7;
    v10 = v8;
    if (*(&v8 + 1))
    {
      sub_21D0CF7E0(&v9, &qword_27CE5C690);
      v4 = sub_21DBFA12C();
      v5 = [v1 BOOLForKey_];

      return v5;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_21D0CF7E0(&v9, &qword_27CE5C690);
  return 2;
}

void TTRUserDefaults.quickReminderCreationRecentlySelectedListObjectID.setter(void *a1)
{
  sub_21DA5392C(a1, 3);
}

id TTRUserDefaults.animationSlowModeEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

uint64_t TTRUserDefaults.ShowCompletedType.key.getter()
{
  v1 = *v0;
  if (*(v0 + 8) && *(v0 + 8) != 1)
  {
    v4 = 7105633;
    v5 = 0x686372616573;
    v6 = 0x64656E6769737361;
    if (v1 != 4)
    {
      v6 = 0x646567676174;
    }

    if (v1 != 3)
    {
      v5 = v6;
    }

    v7 = 0x656C756465686373;
    if (v1 != 1)
    {
      v7 = 0x64656767616C66;
    }

    if (v1)
    {
      v4 = v7;
    }

    if (v1 <= 2)
    {
      v3 = v4;
    }

    else
    {
      v3 = v5;
    }
  }

  else
  {
    v2 = [v1 stringRepresentation];
    v3 = sub_21DBFA16C();
  }

  sub_21DBFBEEC();

  MEMORY[0x223D42AA0](0x6D6F4373776F6853, 0xEE00646574656C70);
  return v3;
}

void TTRUserDefaults.groceryTipDismissed.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    [v3 setBool:a1 & 1 forKey:v4];
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 setGroceryTipDismissed_];
}

uint64_t sub_21DA51F98()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65080);
  v1 = __swift_project_value_buffer(v0, qword_27CE65080);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRUserDefaultsObservingBlock.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id TTRUserDefaultsObservingBlock.init(block:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t TTRUserDefaultsObserver.userDefaultsKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey);
  sub_21DBF8E0C();
  return v1;
}

id TTRUserDefaultsObserver.__allocating_init(userDefaults:userDefaultsKey:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v9[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = a1;
  v10 = &v9[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v10 = a2;
  v10[1] = a3;
  *&v9[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id TTRUserDefaultsObserver.init(userDefaults:userDefaultsKey:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = a1;
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v10 = a2;
  v10[1] = a3;
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

Swift::Void __swiftcall TTRUserDefaultsObserver.stopObserving()()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed;
  if ((*(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed) & 1) == 0)
  {
    sub_21DA52394(v0);
    *(v0 + v1) = 1;
  }
}

void sub_21DA52394(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey);
  v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey + 8);
  v6 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16) && (v8 = sub_21D0CEF70(v4, v5), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v11 = v10;
    [v11 removeObject_];
    if (![v11 count])
    {
      swift_beginAccess();
      v12 = sub_21D983C6C(v4, v5);
      swift_endAccess();

      v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
      if (v13)
      {
        v14 = sub_21DBFA12C();
        [v13 removeObserver:v2 forKeyPath:v14];
      }
    }
  }

  else
  {
    swift_endAccess();
  }
}

id TTRUserDefaultsObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed;
  if ((v0[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] & 1) == 0)
  {
    sub_21DA52394(v0);
    v0[v2] = 1;
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id TTRUserDefaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21DA52758(char a1, char a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_21DBF563C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  result = sub_21DA536F0(a1);
  if (result)
  {
    v18 = *(v3 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v18)
    {
      v19 = result;
      sub_21DA52AE0(a2);
      v20 = sub_21DBFA12C();

      v21 = [v18 valueForKey_];

      if (v21)
      {
        sub_21DBFBC1C();
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
      }

      v28 = v26;
      v29 = v27;
      if (*(&v27 + 1))
      {
        v22 = swift_dynamicCast();
        (*(v11 + 56))(v9, v22 ^ 1u, 1, v10);
        if ((*(v11 + 48))(v9, 1, v10) != 1)
        {
          (*(v11 + 32))(v16, v9, v10);
          _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
          sub_21DBF558C();
          v24 = v23;
          v25 = *(v11 + 8);
          v25(v13, v10);
          v25(v16, v10);
          if (v24 > a3)
          {

            return 0;
          }

          return v19;
        }

LABEL_12:
        sub_21D0CF7E0(v9, &qword_27CE58D68);
        return v19;
      }
    }

    else
    {
      v19 = result;
      v28 = 0u;
      v29 = 0u;
    }

    sub_21D0CF7E0(&v28, &qword_27CE5C690);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_12;
  }

  return result;
}

void (*TTRUserDefaults.sharingExtensionLastSelectedListObjectID.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_21DA52758(1, 2, 480.0);
  return sub_21DA52AC8;
}

unint64_t sub_21DA52AE0(char a1)
{
  result = 0x62654473776F6873;
  switch(a1)
  {
    case 1:
    case 29:
    case 34:
    case 35:
      result = 0xD000000000000028;
      break;
    case 2:
    case 7:
    case 21:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD000000000000026;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
    case 23:
      result = 0xD000000000000024;
      break;
    case 8:
      result = 0xD000000000000033;
      break;
    case 9:
    case 12:
      result = 0xD000000000000014;
      break;
    case 10:
    case 17:
      result = 0xD000000000000016;
      break;
    case 11:
      return result;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 16:
    case 19:
    case 36:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 20:
    case 30:
      result = 0xD00000000000001CLL;
      break;
    case 22:
    case 26:
    case 28:
      result = 0xD000000000000018;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD00000000000002ALL;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 31:
    case 37:
      result = 0xD00000000000001DLL;
      break;
    case 32:
      result = 0xD000000000000019;
      break;
    case 33:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

uint64_t sub_21DA52E74@<X0>(uint64_t a1@<X8>)
{
  sub_21D0D8CF0(0, &qword_27CE61DA0);
  sub_21D0D8CF0(0, &qword_280D17880);
  v2 = sub_21DBFB07C();
  if (v2)
  {
    *a1 = v2;
    *(a1 + 8) = 0;
    v13 = type metadata accessor for TTRListType(0);
    swift_storeEnumTagMultiPayload();
    v9 = *(*(v13 - 8) + 56);
    v11 = a1;
    v12 = 0;
    v10 = v13;
  }

  else
  {
    sub_21D0D8CF0(0, &qword_27CE5A168);
    v3 = sub_21DBFB07C();
    if (v3)
    {
      v16 = 0;
      v17 = 0;
      v15 = v3;
      sub_21DBFA15C();
    }

    if (qword_27CE56FE8 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE65080);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "unable to decode existing lastSelectedListIdentifier", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    v8 = type metadata accessor for TTRListType(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a1;
    v12 = 1;
  }

  return v9(v11, v12, 1, v10);
}

void sub_21DA53180(uint64_t a1, int a2)
{
  v27 = a2;
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26[-v9];
  v11 = sub_21DBF66FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v15;
  sub_21D0D3954(a1, v10, &unk_27CE650B0);
  if ((*(v12 + 48))(v10, 1, v16) == 1)
  {
    sub_21D0CF7E0(v10, &unk_27CE650B0);
    v17 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v17)
    {
      sub_21DA52AE0(v27);
      v18 = sub_21DBFA12C();

      [v17 removeObjectForKey_];
    }
  }

  else
  {
    v19 = v2;
    (*(v12 + 32))(v14, v10, v16);
    sub_21DBF525C();
    swift_allocObject();
    sub_21DBF524C();
    sub_21DBF66EC();
    sub_21DA60E3C(&qword_280D1B898, MEMORY[0x277CC9260]);
    v20 = sub_21DBF522C();
    v22 = v21;
    (*(v5 + 8))(v7, v4);

    v23 = *(v19 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v23)
    {
      v24 = sub_21DBF54FC();
      sub_21DA52AE0(v27);
      v25 = sub_21DBFA12C();

      [v23 setObject:v24 forKey:v25];
      sub_21D17B8A8(v20, v22);

      (*(v12 + 8))(v14, v16);
    }

    else
    {
      (*(v12 + 8))(v14, v16);
      sub_21D17B8A8(v20, v22);
    }
  }
}

void (*TTRUserDefaults.quickEntryRecentlySelectedListObjectID.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_21DA52758(3, 4, 480.0);
  return sub_21DA53658;
}

void sub_21DA53670(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

uint64_t sub_21DA536F0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v2)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_14:
    sub_21D0CF7E0(&v14, &qword_27CE5C690);
    return 0;
  }

  sub_21DA52AE0(a1);
  v3 = sub_21DBFA12C();

  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_27CE61DA0);
  sub_21D0D8CF0(0, &qword_280D17880);
  v5 = sub_21DBFB07C();
  if (!v5)
  {
    if (qword_27CE56FE8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE65080);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAECC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "unable to decode objectID", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    sub_21D17B8A8(v12, *(&v12 + 1));

    return 0;
  }

  v11 = v5;
  sub_21D17B8A8(v12, *(&v12 + 1));
  return v11;
}

void sub_21DA5392C(void *a1, char a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = objc_opt_self();
    v23[0] = 0;
    v6 = a1;
    v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v23];
    v8 = v23[0];
    if (v7)
    {
      v9 = sub_21DBF551C();
      v11 = v10;

      v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
      if (v12)
      {
        v13 = sub_21DBF54FC();
        sub_21DA52AE0(a2);
        v14 = sub_21DBFA12C();

        [v12 setObject:v13 forKey:v14];

        sub_21D17B8A8(v9, v11);
      }

      else
      {

        sub_21D17B8A8(v9, v11);
      }
    }

    else
    {
      v16 = v8;
      v17 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_27CE56FE8 != -1)
      {
        swift_once();
      }

      v18 = sub_21DBF84BC();
      __swift_project_value_buffer(v18, qword_27CE65080);
      v19 = sub_21DBF84AC();
      v20 = sub_21DBFAECC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_21D0C9000, v19, v20, "unable to encode objectID", v21, 2u);
        MEMORY[0x223D46520](v21, -1, -1);
      }
    }
  }

  else
  {
    v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v15)
    {
      sub_21DA52AE0(a2);
      v22 = sub_21DBFA12C();

      [v15 removeObjectForKey_];
    }
  }
}

void (*TTRUserDefaults.remindersInCalendarCreationLastSelectedListObjectID.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_21DA536F0(8);
  return sub_21DA53C34;
}

void (*TTRUserDefaults.quickReminderCreationRecentlySelectedListObjectID.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_21DA536F0(3);
  return sub_21DA53C90;
}

void sub_21DA53C98(void **a1, char a2, char a3)
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    sub_21DA5392C(v6, a3);

    v5 = v4;
  }

  else
  {
    sub_21DA5392C(*a1, a3);
    v5 = v6;
  }
}

uint64_t (*TTRUserDefaults.quickReminderCreationLastSelectedDueDateOption.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 stringForKey_];

    if (v5)
    {
      v6 = sub_21DBFA16C();
      v8 = v7;
    }

    else
    {
      v8 = 0xE400000000000000;
      v6 = 1701736302;
    }

    *a1 = v6;
    a1[1] = v8;
    return sub_21DA53E04;
  }

  else
  {
    *a1 = xmmword_21DC38360;
    return sub_21DA53EF4;
  }
}

uint64_t sub_21DA53E04(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[1];
    v3 = *a1;
    sub_21DBF8E0C();
    TTRUserDefaults.quickReminderCreationLastSelectedDueDateOption.setter(v3, v2);
  }

  else
  {
    if (a1[1])
    {
      v5 = a1;
      v6 = sub_21DBFA12C();

      a1 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[3];
    v8 = sub_21DBFA12C();
    [v7 setObject:v6 forKey:v8];

    return swift_unknownObjectRelease();
  }
}

uint64_t (*TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 stringForKey_];

    if (v5)
    {
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
    return sub_21DA53FEC;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    return sub_21DA540DC;
  }
}

uint64_t sub_21DA53FEC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[1];
    v3 = *a1;
    sub_21DBF8E0C();
    TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.setter(v3, v2);
  }

  else
  {
    if (a1[1])
    {
      v5 = a1;
      v6 = sub_21DBFA12C();

      a1 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[3];
    v8 = sub_21DBFA12C();
    [v7 setObject:v6 forKey:v8];

    return swift_unknownObjectRelease();
  }
}

uint64_t (*TTRUserDefaults.quickReminderCreationLastSelectedFlagOption.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = TTRUserDefaults.quickReminderCreationLastSelectedFlagOption.getter();
  return sub_21DA5413C;
}

uint64_t sub_21DA5413C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v5 = *(a1 + 8);
  result = (a1 + 1);
  v4 = v5;
  v6 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if ((a2 & 1) == 0)
  {
    if (!v6)
    {
      return result;
    }

    if (v4 != 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (!v6)
  {
    return result;
  }

  if (v4 == 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = sub_21DBFA7AC();
LABEL_8:
  v8 = sub_21DBFA12C();
  [v6 setObject:v7 forKey:v8];

  return swift_unknownObjectRelease();
}

unint64_t sub_21DA54204(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65230);
    v2 = sub_21DBFC40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_21DBF8E0C();
  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6)) | (v13 << 6);
        v15 = (*(v1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_21D0CEB98(*(v1 + 56) + 32 * v14, v29);
        *&v28 = v16;
        *(&v28 + 1) = v17;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v18 = v28;
        sub_21D0CF2E8(v27, v26);
        sub_21DBF8E0C();
        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_21D0CEF70(v18, *(&v18 + 1));
        if (v19)
        {
          v10 = v1;
          v11 = 16 * result;
          *(v2[6] + 16 * result) = v18;

          v12 = (v2[7] + v11);
          v1 = v10;
          *v12 = v24;
          v12[1] = v25;

          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v18;
          v20 = (v2[7] + 16 * result);
          *v20 = v24;
          v20[1] = v25;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_21DA5447C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_21DBF8E0C();
  v4._countAndFlagsBits = v2;
  v4._object = v3;
  TTRListType.PredefinedSmartListType.init(rawValue:)(v4);
  if (v10 == 7 || (sub_21DBF8E0C(), v5 = sub_21DBFC45C(), , v5 > 3))
  {
    if (qword_27CE56FE8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE65080);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAECC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Saved a smart list visibility type that is not valid", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }
  }

  else
  {
    sub_21D17D428(v5, v10);
  }
}

id TTRUserDefaults.publicSharingEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_21DA54640(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA546BC(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.publicSharingEnabled.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.publicSharingEnabled.modify(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA5489C;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA5489C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

id TTRUserDefaults.allRemindersShowCompleted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_21DA54980(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA549FC(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.allRemindersShowCompleted.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.allRemindersShowCompleted.modify(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA54BDC;
  }

  else
  {
    v5 = nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA54BDC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

uint64_t TTRUserDefaults.searchResultShowCompleted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21DA54CC8(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 BOOLForKey_];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

void sub_21DA54D4C(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.searchResultShowCompleted.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.searchResultShowCompleted.modify(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = (a1 + 1);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    v5 = [v2 BOOLForKey_];

    v6 = sub_21DA54F30;
  }

  else
  {
    v5 = 1;
    v6 = j_nullsub_1;
  }

  result = v6;
  *v3 = v5;
  return result;
}

void sub_21DA54F30(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

uint64_t TTRUserDefaults.migrationFailureAlertShown.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21DA5501C(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 BOOLForKey_];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

void sub_21DA550A0(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.migrationFailureAlertShown.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.migrationFailureAlertShown.modify(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = (a1 + 1);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    v5 = [v2 BOOLForKey_];

    v6 = sub_21DA55284;
  }

  else
  {
    v5 = 1;
    v6 = j_nullsub_1;
  }

  result = v6;
  *v3 = v5;
  return result;
}

void sub_21DA55284(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

void sub_21DA552FC(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA55378(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.migrationTipDismissed.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.migrationTipDismissed.modify(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA55558;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA55558(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

void sub_21DA555D0(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA5564C(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.iCloudSyncTipDismissed.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.iCloudSyncTipDismissed.modify(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA5582C;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA5582C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

uint64_t TTRUserDefaults.groceryTipDismissed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21DA55918(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 BOOLForKey_];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

void sub_21DA5599C(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    [v3 setBool:v2 forKey:v4];
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 setGroceryTipDismissed_];
}

void *TTRUserDefaults.groceryTipDismissed.modify(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = (a1 + 1);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    v5 = [v2 BOOLForKey_];

    v6 = sub_21DA55B98;
  }

  else
  {
    v5 = 1;
    v6 = sub_21DA55B1C;
  }

  result = v6;
  *v3 = v5;
  return result;
}

void sub_21DA55B28(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a1 + 8);
  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 *a3];
}

void sub_21DA55B98(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];

  v4 = [objc_opt_self() daemonUserDefaults];
  [v4 setGroceryTipDismissed_];
}

void sub_21DA55C50(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 BOOLForKey_];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

void sub_21DA55CD4(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    [v3 setBool:v2 forKey:v4];
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 setHasCreatedGroceryList_];
}

RemindersUICore::TTRUserDefaults::WelcomeScreenVersion_optional TTRUserDefaults.lastSeenWelcomeScreenVersion.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v3 = [v3 integerForKey_];
  }

  result.value = TTRUserDefaults.WelcomeScreenVersion.init(rawValue:)(v3).value;
  v6 = v7;
  if (v7 == 9)
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

void sub_21DA55E34(char *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = qword_21DC38BE8[*a1];
    v4 = sub_21DBFA12C();
    [v2 setInteger:v3 forKey:v4];
  }
}

void TTRUserDefaults.lastSeenWelcomeScreenVersion.setter(char *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = qword_21DC38BE8[*a1];
    v4 = sub_21DBFA12C();
    [v2 setInteger:v3 forKey:v4];
  }
}

RemindersUICore::TTRUserDefaults::WelcomeScreenVersion_optional __swiftcall TTRUserDefaults.WelcomeScreenVersion.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 19)
  {
    if (rawValue <= 17)
    {
      if (!rawValue)
      {
        *v1 = 0;
        return rawValue;
      }

      if (rawValue == 17)
      {
        *v1 = 1;
        return rawValue;
      }

      goto LABEL_20;
    }

    if (rawValue == 18)
    {
      *v1 = 2;
    }

    else
    {
      *v1 = 3;
    }
  }

  else
  {
    if (rawValue > 21)
    {
      switch(rawValue)
      {
        case 22:
          *v1 = 6;
          return rawValue;
        case 23:
          *v1 = 7;
          return rawValue;
        case 24:
          *v1 = 8;
          return rawValue;
      }

LABEL_20:
      *v1 = 9;
      return rawValue;
    }

    if (rawValue == 20)
    {
      *v1 = 4;
    }

    else
    {
      *v1 = 5;
    }
  }

  return rawValue;
}

void (*TTRUserDefaults.lastSeenWelcomeScreenVersion.modify(uint64_t a1))(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v3;
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v3 = [v3 integerForKey_];
  }

  TTRUserDefaults.WelcomeScreenVersion.init(rawValue:)(v3);
  v5 = v7;
  if (v7 == 9)
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  return sub_21DA56118;
}

void sub_21DA56118(void *a1)
{
  v3 = *a1;
  v1 = (a1 + 1);
  v2 = v3;
  if (v3)
  {
    v4 = qword_21DC38BE8[*v1];
    v5 = sub_21DBFA12C();
    [v2 setInteger:v4 forKey:v5];
  }
}

id TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_21DA5621C(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA56298(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.modify(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA56478;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA56478(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

uint64_t TTRUserDefaults.recentlyUsedTimeZones.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_21D0CF7E0(&v7, &qword_27CE5C690);
    return 0;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void TTRUserDefaults.recentlyUsedTimeZones.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    if (a1)
    {
      v3 = sub_21DBFA5DC();
    }

    else
    {
      v3 = 0;
    }

    v4 = sub_21DBFA12C();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void (*TTRUserDefaults.recentlyUsedTimeZones.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 48) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v3 + 56) = v5;
  if (!v5)
  {
    *v3 = 0u;
    *(v3 + 16) = 0u;
LABEL_13:
    sub_21D0CF7E0(v4, &qword_27CE5C690);
    *(v4 + 32) = 0;
    return sub_21DA5686C;
  }

  v6 = sub_21DBFA12C();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  *v4 = v12;
  *(v4 + 16) = v13;
  if (!*(v4 + 24))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  v8 = swift_dynamicCast();
  v9 = *(v4 + 40);
  if (!v8)
  {
    v9 = 0;
  }

  *(v4 + 32) = v9;
  return sub_21DA56948;
}

void sub_21DA5686C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = sub_21DBF8E0C();
    TTRUserDefaults.recentlyUsedTimeZones.setter(v3);
  }

  else
  {
    v4 = v2[7];
    if (v4)
    {
      if (v2[4])
      {
        v5 = sub_21DBFA5DC();
      }

      else
      {
        v5 = 0;
      }

      v6 = sub_21DBFA12C();
      [v4 setObject:v5 forKey:v6];

      swift_unknownObjectRelease();
      goto LABEL_9;
    }
  }

LABEL_9:

  free(v2);
}

void sub_21DA56948(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = sub_21DBF8E0C();
    TTRUserDefaults.recentlyUsedTimeZones.setter(v3);
  }

  else
  {
    v4 = v2[7];
    if (v2[4])
    {
      v5 = sub_21DBFA5DC();
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_21DBFA12C();
    [v4 setObject:v5 forKey:v6];

    swift_unknownObjectRelease();
  }

  free(v2);
}

char static TTRUserDefaults.WelcomeScreenVersion.current.getter@<W0>(_BYTE *a1@<X8>)
{
  v12 = MEMORY[0x277D84F90];
  sub_21D18E658(0, 9, 0);
  v2 = 0;
  v3 = *(v12 + 16);
  do
  {
    v4 = byte_282EA6998[v2 + 32];
    v5 = *(v12 + 24);
    if (v3 >= v5 >> 1)
    {
      sub_21D18E658((v5 > 1), v3 + 1, 1);
    }

    ++v2;
    v6 = qword_21DC38BE8[v4];
    *(v12 + 16) = v3 + 1;
    *(v12 + 8 * v3++ + 32) = v6;
  }

  while (v2 != 9);
  v7 = sub_21D7D077C(v12);
  v9 = v8;

  if (v9)
  {
    __break(1u);
  }

  else
  {
    result = TTRUserDefaults.WelcomeScreenVersion.init(rawValue:)(v7).value;
    if (v11 != 9)
    {
      *a1 = v11;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DA56B64()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](qword_21DC38BE8[v1]);
  return sub_21DBFC82C();
}

uint64_t sub_21DA56BEC()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](qword_21DC38BE8[v1]);
  return sub_21DBFC82C();
}

uint64_t TTRUserDefaults.ShowCompletedType.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x223D44FA0](v2);
    return sub_21DBFB64C();
  }

  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v4 = 5;
    }

    else if (v1 == 4)
    {
      v4 = 6;
    }

    else
    {
      v4 = 7;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }
  }

  else
  {
    v4 = 2;
  }

  return MEMORY[0x223D44FA0](v4);
}

uint64_t TTRUserDefaults.ShowCompletedType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21DBFC7DC();
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 1;
LABEL_5:
    MEMORY[0x223D44FA0](v3);
    sub_21DBFB64C();
    return sub_21DBFC82C();
  }

  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v4 = 5;
    }

    else if (v1 == 4)
    {
      v4 = 6;
    }

    else
    {
      v4 = 7;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }
  }

  else
  {
    v4 = 2;
  }

  MEMORY[0x223D44FA0](v4);
  return sub_21DBFC82C();
}

uint64_t sub_21DA56DF0()
{
  sub_21DBFC7DC();
  TTRUserDefaults.ShowCompletedType.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t sub_21DA56E48()
{
  sub_21DBFC7DC();
  TTRUserDefaults.ShowCompletedType.hash(into:)();
  return sub_21DBFC82C();
}

void *TTRUserDefaults.observablePropertyForShowsCompleted(forType:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65120);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[11] = 0;
  v7[12] = 0;
  v7[9] = v6;
  v7[10] = 0;
  v7[4] = sub_21D1952BC;
  v7[5] = v4;
  v7[6] = sub_21D1952C8;
  v7[7] = v5;
  v7[8] = sub_21D1952D4;
  v8 = v1;
  sub_21D157850(v2, v3);
  v9 = v8;
  sub_21D157850(v2, v3);
  v10 = v9;
  sub_21D157850(v2, v3);
  return v7;
}

void sub_21DA56FE0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 *a4@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v5)
  {
    LOBYTE(v9) = a3;
    TTRUserDefaults.ShowCompletedType.key.getter();
    v6 = sub_21DBFA12C();

    v7 = [v5 BOOLForKey_];
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7;
}

void sub_21DA5706C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    TTRUserDefaults.ShowCompletedType.key.getter();
    v4 = sub_21DBFA12C();

    [v2 setBool:v3 forKey:v4];
  }
}

id sub_21DA57110(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for TTRUserDefaultsObservingBlock();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v12 = a1;
  *(v12 + 1) = a2;
  v36.receiver = v11;
  v36.super_class = v10;

  v13 = objc_msgSendSuper2(&v36, sel_init);
  v34 = a4;
  v35 = a5;
  v14 = TTRUserDefaults.ShowCompletedType.key.getter();
  v16 = v15;
  v17 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v18 = *&a3[v17];
  if (*(v18 + 16) && (v19 = sub_21D0CEF70(v14, v16), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
    v22 = v21;
  }

  else
  {
    swift_endAccess();
    v21 = [objc_allocWithZone(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:8];
    swift_beginAccess();
    v23 = v21;
    sub_21DBF8E0C();
    sub_21D0D9AC8(v21, v14, v16);
    swift_endAccess();
  }

  v24 = type metadata accessor for TTRUserDefaultsObserver();
  v25 = objc_allocWithZone(v24);
  v25[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v25[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = a3;
  v26 = &v25[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v26 = v14;
  v26[1] = v16;
  *&v25[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = v13;
  v33.receiver = v25;
  v33.super_class = v24;
  sub_21DBF8E0C();
  v27 = a3;
  v28 = v13;
  v29 = objc_msgSendSuper2(&v33, sel_init);
  if (v21)
  {
    [v21 addObject_];
  }

  v30 = *&v27[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v30)
  {
    v31 = sub_21DBFA12C();

    [v30 addObserver:v27 forKeyPath:v31 options:0 context:0];
  }

  else
  {
  }

  return v29;
}

uint64_t TTRUserDefaults.ShowingLargeAttachmentsType.key.getter()
{
  v1 = *v0;
  sub_21DBFBEEC();
  if (v1 <= 3)
  {
    v10 = 0xE300000000000000;
    v11 = 7105633;
    v12 = 0xE900000000000064;
    v13 = 0x656C756465686373;
    if (v1 != 2)
    {
      v13 = 0x64656767616C66;
      v12 = 0xE700000000000000;
    }

    if (v1)
    {
      v11 = 0x7961646F74;
      v10 = 0xE500000000000000;
    }

    if (v1 <= 1)
    {
      v8 = v11;
    }

    else
    {
      v8 = v13;
    }

    if (v1 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v2 = 0xE600000000000000;
    v3 = 0x686372616573;
    v4 = 0xE600000000000000;
    v5 = 0x646567676174;
    if (v1 != 7)
    {
      v5 = 0xD000000000000014;
      v4 = 0x800000021DC43AF0;
    }

    if (v1 != 6)
    {
      v3 = v5;
      v2 = v4;
    }

    v6 = 0xE800000000000000;
    v7 = 0x64656E6769737361;
    if (v1 != 4)
    {
      v7 = 0x6E756F4669726973;
      v6 = 0xEF737070416E4964;
    }

    if (v1 <= 5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v1 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v2;
    }
  }

  MEMORY[0x223D42AA0](v8, v9);

  MEMORY[0x223D42AA0](0xD000000000000017, 0x800000021DC74680);
  return 0;
}

uint64_t TTRUserDefaults.ShowingLargeAttachmentsType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 7105633;
    v7 = 0x656C756465686373;
    if (v1 != 2)
    {
      v7 = 0x64656767616C66;
    }

    if (*v0)
    {
      v6 = 0x7961646F74;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x686372616573;
    v3 = 0x646567676174;
    if (v1 != 7)
    {
      v3 = 0xD000000000000014;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x64656E6769737361;
    if (v1 != 4)
    {
      v4 = 0x6E756F4669726973;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

RemindersUICore::TTRUserDefaults::ShowingLargeAttachmentsType_optional __swiftcall TTRUserDefaults.ShowingLargeAttachmentsType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21DA57680()
{
  sub_21DBFC7DC();
  sub_21D7145F8();
  return sub_21DBFC82C();
}

uint64_t sub_21DA576D0()
{
  sub_21DBFC7DC();
  sub_21D7145F8();
  return sub_21DBFC82C();
}

uint64_t sub_21DA57720@<X0>(uint64_t *a1@<X8>)
{
  result = TTRUserDefaults.ShowingLargeAttachmentsType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Bool __swiftcall TTRUserDefaults.showingLargeAttachments(forType:)(RemindersUICore::TTRUserDefaults::ShowingLargeAttachmentsType forType)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v2)
  {
    return 1;
  }

  TTRUserDefaults.ShowingLargeAttachmentsType.key.getter();
  v3 = sub_21DBFA12C();

  v4 = [v2 BOOLForKey_];

  return v4;
}

Swift::Void __swiftcall TTRUserDefaults.setShowingLargeAttachments(value:forType:)(Swift::Bool value, RemindersUICore::TTRUserDefaults::ShowingLargeAttachmentsType forType)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    TTRUserDefaults.ShowingLargeAttachmentsType.key.getter();
    v5 = sub_21DBFA12C();

    [v3 setBool:value forKey:v5];
  }
}

void sub_21DA57884(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA57900(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.animationSlowModeEnabled.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.animationSlowModeEnabled.modify(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA57AE0;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA57AE0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

id TTRUserDefaults.didInformUserAboutCustomSmartListAdd.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_21DA57BC4(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA57C40(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.didInformUserAboutCustomSmartListAdd.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.didInformUserAboutCustomSmartListAdd.modify(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA57E20;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA57E20(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

uint64_t TTRUserDefaults.todayListIsGrouped.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21DA57F0C(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 BOOLForKey_];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

void sub_21DA57F90(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.todayListIsGrouped.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.todayListIsGrouped.modify(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = (a1 + 1);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    v5 = [v2 BOOLForKey_];

    v6 = sub_21DA58174;
  }

  else
  {
    v5 = 1;
    v6 = j_nullsub_1;
  }

  result = v6;
  *v3 = v5;
  return result;
}

void sub_21DA58174(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

void sub_21DA581EC(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA58268(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void (*TTRUserDefaults.templateSharingIncludePropertiesAlertShown.modify(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA583B4;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA583B4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

id TTRUserDefaults.streamTodayListIsGrouped(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRUserDefaultsObservingBlock();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v8 = a1;
  *(v8 + 1) = a2;
  v27.receiver = v7;
  v27.super_class = v6;

  v9 = objc_msgSendSuper2(&v27, sel_init);
  v10 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v11 = *&v3[v10];
  if (*(v11 + 16) && (v12 = sub_21D0CEF70(0xD000000000000012, 0x800000021DC746D0), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14;
  }

  else
  {
    swift_endAccess();
    v14 = [objc_allocWithZone(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:8];
    swift_beginAccess();
    v16 = v14;
    sub_21D0D9AC8(v14, 0xD000000000000012, 0x800000021DC746D0);
    swift_endAccess();
  }

  v17 = type metadata accessor for TTRUserDefaultsObserver();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = v3;
  v19 = &v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v19 = 0xD000000000000012;
  v19[1] = 0x800000021DC746D0;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = v9;
  v26.receiver = v18;
  v26.super_class = v17;
  v20 = v3;
  v21 = v9;
  v22 = objc_msgSendSuper2(&v26, sel_init);
  if (v14)
  {
    [v14 addObject_];
  }

  v23 = *&v20[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v23)
  {
    v24 = sub_21DBFA12C();
    [v23 addObserver:v20 forKeyPath:v24 options:0 context:0];
  }

  return v22;
}

uint64_t TTRUserDefaults.SmartListVersionWarning.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF563C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRUserDefaults.SmartListVersionWarning.init(creationDate:supportedVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_21DA58760()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E6F697461657263;
  }
}

uint64_t sub_21DA587A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
  if (v6 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021DC74900 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DBFC64C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21DA58890(uint64_t a1)
{
  v2 = sub_21DA5FA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DA588CC(uint64_t a1)
{
  v2 = sub_21DA5FA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRUserDefaults.SmartListVersionWarning.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65128);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DA5FA90();
  sub_21DBFC88C();
  v8[15] = 0;
  sub_21DBF563C();
  sub_21DA60E3C(&qword_27CE65138, MEMORY[0x277CC9578]);
  sub_21DBFC56C();
  if (!v1)
  {
    type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
    v8[14] = 1;
    sub_21DBFC54C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TTRUserDefaults.SmartListVersionWarning.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_21DBF563C();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65140);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DA5FA90();
  sub_21DBFC87C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v11;
  v12 = v21;
  v13 = v22;
  v26 = 0;
  sub_21DA60E3C(&qword_280D17198, MEMORY[0x277CC9578]);
  v14 = v23;
  sub_21DBFC4EC();
  (*(v13 + 32))(v19, v6, v14);
  v25 = 1;
  v15 = sub_21DBFC4DC();
  (*(v12 + 8))(v8, v24);
  v17 = v19;
  v16 = v20;
  *&v19[*(v9 + 20)] = v15;
  sub_21DA60E84(v17, v16, type metadata accessor for TTRUserDefaults.SmartListVersionWarning);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21DA5FAE4(v17, type metadata accessor for TTRUserDefaults.SmartListVersionWarning);
}

unint64_t TTRUserDefaults.smartListVersionWarnings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return sub_21D179954(MEMORY[0x277D84F90]);
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 dataForKey_];

  if (!v3)
  {
    return sub_21D179954(MEMORY[0x277D84F90]);
  }

  v4 = sub_21DBF551C();
  v6 = v5;

  sub_21DBF4B7C();
  swift_allocObject();
  sub_21DBF4B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65150);
  sub_21DA5FB44();
  sub_21DBF4B5C();
  sub_21D17B8A8(v4, v6);

  return v8;
}

void TTRUserDefaults.smartListVersionWarnings.setter()
{
  v1 = v0;
  sub_21DBF4BAC();
  swift_allocObject();
  sub_21DBF4B9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65150);
  sub_21DA5FC30();
  v2 = sub_21DBF4B8C();
  v4 = v3;

  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v5)
  {
    if (v4 >> 60 == 15)
    {
      v6 = 0;
    }

    else
    {
      sub_21D1BAF70(v2, v4);
      v6 = sub_21DBF54FC();
      sub_21D1BAF38(v2, v4);
    }

    v7 = sub_21DBFA12C();
    [v5 setObject:v6 forKey:v7];
    sub_21D1BAF38(v2, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21D1BAF38(v2, v4);
  }
}

void (*TTRUserDefaults.smartListVersionWarnings.modify(unint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = TTRUserDefaults.smartListVersionWarnings.getter();
  return sub_21DA59154;
}

void sub_21DA59154(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_21DBF8E0C();
    TTRUserDefaults.smartListVersionWarnings.setter();
  }

  else
  {
    TTRUserDefaults.smartListVersionWarnings.setter();
  }
}

uint64_t (*TTRUserDefaults.activitySessionId.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 stringForKey_];

    if (v5)
    {
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
    return sub_21DA5928C;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    return sub_21DA5937C;
  }
}

uint64_t sub_21DA5928C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[1];
    v3 = *a1;
    sub_21DBF8E0C();
    TTRUserDefaults.activitySessionId.setter(v3, v2);
  }

  else
  {
    if (a1[1])
    {
      v5 = a1;
      v6 = sub_21DBFA12C();

      a1 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[3];
    v8 = sub_21DBFA12C();
    [v7 setObject:v6 forKey:v8];

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_21DA59394(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = a1[1];
    v5 = *a1;
    sub_21DBF8E0C();
    a3(v5, v4);
  }
}

uint64_t sub_21DA593FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_21D0D3954(a1, &v14 - v11, a5);
  return a7(v12);
}

void (*TTRUserDefaults.activitySessionBeginTime.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(v6);
    *(v5 + 48) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 56) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v5 + 64) = v9;
  if (!v9)
  {
    *v5 = 0u;
    *(v5 + 16) = 0u;
LABEL_14:
    sub_21D0CF7E0(v5, &qword_27CE5C690);
    v15 = sub_21DBF563C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    return sub_21DA598B0;
  }

  v10 = sub_21DBFA12C();
  v11 = [v9 valueForKey_];

  if (v11)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *v5 = v17;
  *(v5 + 16) = v18;
  if (!*(v5 + 24))
  {
    goto LABEL_14;
  }

  v12 = sub_21DBF563C();
  v13 = swift_dynamicCast();
  (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  return sub_21DA59714;
}

void sub_21DA59714(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68);
    TTRUserDefaults.activitySessionBeginTime.setter(v5);
  }

  else
  {
    v6 = v2[8];
    v7 = v2[6];
    sub_21D0D3954(v2[7], v7, &qword_27CE58D68);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = v2[6];
      v11 = sub_21DBF55BC();
      (*(v9 + 8))(v12, v8);
    }

    v13 = sub_21DBFA12C();
    [v6 setObject:v11 forKey:v13];

    swift_unknownObjectRelease();
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA598B0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68);
    TTRUserDefaults.activitySessionBeginTime.setter(v5);
  }

  else
  {
    v6 = v2[8];
    if (v6)
    {
      v7 = v2[6];
      sub_21D0D3954(v2[7], v7, &qword_27CE58D68);
      v8 = sub_21DBF563C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = 0;
      if (v10 != 1)
      {
        v12 = v2[6];
        v11 = sub_21DBF55BC();
        (*(v9 + 8))(v12, v8);
      }

      v13 = sub_21DBFA12C();
      [v6 setObject:v11 forKey:v13];

      swift_unknownObjectRelease();
    }

    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

uint64_t TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_21DBF563C();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_21D0CF7E0(&v12, &qword_27CE5C690);
  v9 = sub_21DBF563C();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    sub_21D0D3954(a1, v5, &qword_27CE58D68);
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      v9 = sub_21DBF55BC();
      (*(v8 + 8))(v5, v7);
    }

    v10 = sub_21DBFA12C();
    [v6 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D68);
}

void (*TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(v6);
    *(v5 + 48) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 56) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v5 + 64) = v9;
  if (!v9)
  {
    *v5 = 0u;
    *(v5 + 16) = 0u;
LABEL_14:
    sub_21D0CF7E0(v5, &qword_27CE5C690);
    v15 = sub_21DBF563C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    return sub_21DA5A164;
  }

  v10 = sub_21DBFA12C();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *v5 = v17;
  *(v5 + 16) = v18;
  if (!*(v5 + 24))
  {
    goto LABEL_14;
  }

  v12 = sub_21DBF563C();
  v13 = swift_dynamicCast();
  (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  return sub_21DA59FC8;
}

void sub_21DA59FC8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68);
    TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    v7 = v2[6];
    sub_21D0D3954(v2[7], v7, &qword_27CE58D68);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = v2[6];
      v11 = sub_21DBF55BC();
      (*(v9 + 8))(v12, v8);
    }

    v13 = sub_21DBFA12C();
    [v6 setObject:v11 forKey:v13];

    swift_unknownObjectRelease();
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA5A164(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68);
    TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    if (v6)
    {
      v7 = v2[6];
      sub_21D0D3954(v2[7], v7, &qword_27CE58D68);
      v8 = sub_21DBF563C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = 0;
      if (v10 != 1)
      {
        v12 = v2[6];
        v11 = sub_21DBF55BC();
        (*(v9 + 8))(v12, v8);
      }

      v13 = sub_21DBFA12C();
      [v6 setObject:v11 forKey:v13];

      swift_unknownObjectRelease();
    }

    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

uint64_t TTRUserDefaults.lastAppStoreRatingPromptDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_21DBF563C();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_21D0CF7E0(&v12, &qword_27CE5C690);
  v9 = sub_21DBF563C();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t TTRUserDefaults.lastAppStoreRatingPromptDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    sub_21D0D3954(a1, v5, &qword_27CE58D68);
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      v9 = sub_21DBF55BC();
      (*(v8 + 8))(v5, v7);
    }

    v10 = sub_21DBFA12C();
    [v6 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D68);
}

void (*TTRUserDefaults.lastAppStoreRatingPromptDate.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(v6);
    *(v5 + 48) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 56) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v5 + 64) = v9;
  if (!v9)
  {
    *v5 = 0u;
    *(v5 + 16) = 0u;
LABEL_14:
    sub_21D0CF7E0(v5, &qword_27CE5C690);
    v15 = sub_21DBF563C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    return sub_21DA5AA18;
  }

  v10 = sub_21DBFA12C();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *v5 = v17;
  *(v5 + 16) = v18;
  if (!*(v5 + 24))
  {
    goto LABEL_14;
  }

  v12 = sub_21DBF563C();
  v13 = swift_dynamicCast();
  (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  return sub_21DA5A87C;
}

void sub_21DA5A87C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68);
    TTRUserDefaults.lastAppStoreRatingPromptDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    v7 = v2[6];
    sub_21D0D3954(v2[7], v7, &qword_27CE58D68);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = v2[6];
      v11 = sub_21DBF55BC();
      (*(v9 + 8))(v12, v8);
    }

    v13 = sub_21DBFA12C();
    [v6 setObject:v11 forKey:v13];

    swift_unknownObjectRelease();
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA5AA18(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68);
    TTRUserDefaults.lastAppStoreRatingPromptDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    if (v6)
    {
      v7 = v2[6];
      sub_21D0D3954(v2[7], v7, &qword_27CE58D68);
      v8 = sub_21DBF563C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = 0;
      if (v10 != 1)
      {
        v12 = v2[6];
        v11 = sub_21DBF55BC();
        (*(v9 + 8))(v12, v8);
      }

      v13 = sub_21DBFA12C();
      [v6 setObject:v11 forKey:v13];

      swift_unknownObjectRelease();
    }

    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

uint64_t TTRUserDefaults.firstTimeAppForegroundingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_21DBF563C();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_21D0CF7E0(&v12, &qword_27CE5C690);
  v9 = sub_21DBF563C();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t TTRUserDefaults.firstTimeAppForegroundingDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    sub_21D0D3954(a1, v5, &qword_27CE58D68);
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      v9 = sub_21DBF55BC();
      (*(v8 + 8))(v5, v7);
    }

    v10 = sub_21DBFA12C();
    [v6 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D68);
}

void (*TTRUserDefaults.firstTimeAppForegroundingDate.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(v6);
    *(v5 + 48) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 56) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v5 + 64) = v9;
  if (!v9)
  {
    *v5 = 0u;
    *(v5 + 16) = 0u;
LABEL_14:
    sub_21D0CF7E0(v5, &qword_27CE5C690);
    v15 = sub_21DBF563C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    return sub_21DA5B2CC;
  }

  v10 = sub_21DBFA12C();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *v5 = v17;
  *(v5 + 16) = v18;
  if (!*(v5 + 24))
  {
    goto LABEL_14;
  }

  v12 = sub_21DBF563C();
  v13 = swift_dynamicCast();
  (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  return sub_21DA5B130;
}

void sub_21DA5B130(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68);
    TTRUserDefaults.firstTimeAppForegroundingDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    v7 = v2[6];
    sub_21D0D3954(v2[7], v7, &qword_27CE58D68);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = v2[6];
      v11 = sub_21DBF55BC();
      (*(v9 + 8))(v12, v8);
    }

    v13 = sub_21DBFA12C();
    [v6 setObject:v11 forKey:v13];

    swift_unknownObjectRelease();
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA5B2CC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68);
    TTRUserDefaults.firstTimeAppForegroundingDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    if (v6)
    {
      v7 = v2[6];
      sub_21D0D3954(v2[7], v7, &qword_27CE58D68);
      v8 = sub_21DBF563C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = 0;
      if (v10 != 1)
      {
        v12 = v2[6];
        v11 = sub_21DBF55BC();
        (*(v9 + 8))(v12, v8);
      }

      v13 = sub_21DBFA12C();
      [v6 setObject:v11 forKey:v13];

      swift_unknownObjectRelease();
    }

    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

uint64_t TTRUserDefaults.lastAppForegroundingDates.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_21D0CF7E0(&v7, &qword_27CE5C690);
    return 0;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65190);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void TTRUserDefaults.lastAppForegroundingDates.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    if (a1)
    {
      sub_21DBF563C();
      v3 = sub_21DBFA5DC();
    }

    else
    {
      v3 = 0;
    }

    v4 = sub_21DBFA12C();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void (*TTRUserDefaults.lastAppForegroundingDates.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 48) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v3 + 56) = v5;
  if (!v5)
  {
    *v3 = 0u;
    *(v3 + 16) = 0u;
LABEL_13:
    sub_21D0CF7E0(v4, &qword_27CE5C690);
    *(v4 + 32) = 0;
    return sub_21DA5B7F0;
  }

  v6 = sub_21DBFA12C();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  *v4 = v12;
  *(v4 + 16) = v13;
  if (!*(v4 + 24))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65190);
  v8 = swift_dynamicCast();
  v9 = *(v4 + 40);
  if (!v8)
  {
    v9 = 0;
  }

  *(v4 + 32) = v9;
  return sub_21DA5B8D0;
}

void sub_21DA5B7F0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = sub_21DBF8E0C();
    TTRUserDefaults.lastAppForegroundingDates.setter(v3);
  }

  else
  {
    v4 = v2[7];
    if (v4)
    {
      if (v2[4])
      {
        sub_21DBF563C();
        v5 = sub_21DBFA5DC();
      }

      else
      {
        v5 = 0;
      }

      v6 = sub_21DBFA12C();
      [v4 setObject:v5 forKey:v6];

      swift_unknownObjectRelease();
      goto LABEL_9;
    }
  }

LABEL_9:

  free(v2);
}

void sub_21DA5B8D0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = sub_21DBF8E0C();
    TTRUserDefaults.lastAppForegroundingDates.setter(v3);
  }

  else
  {
    v4 = v2[7];
    if (v2[4])
    {
      sub_21DBF563C();
      v5 = sub_21DBFA5DC();
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_21DBFA12C();
    [v4 setObject:v5 forKey:v6];

    swift_unknownObjectRelease();
  }

  free(v2);
}

uint64_t TTRUserDefaults.lastICloudIsOffPromptDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_21DBF563C();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_21D0CF7E0(&v12, &qword_27CE5C690);
  v9 = sub_21DBF563C();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t TTRUserDefaults.lastICloudIsOffPromptDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    sub_21D0D3954(a1, v5, &qword_27CE58D68);
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      v9 = sub_21DBF55BC();
      (*(v8 + 8))(v5, v7);
    }

    v10 = sub_21DBFA12C();
    [v6 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D68);
}

void (*TTRUserDefaults.lastICloudIsOffPromptDate.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(v6);
    *(v5 + 48) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 56) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v5 + 64) = v9;
  if (!v9)
  {
    *v5 = 0u;
    *(v5 + 16) = 0u;
LABEL_14:
    sub_21D0CF7E0(v5, &qword_27CE5C690);
    v15 = sub_21DBF563C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    return sub_21DA5C0B8;
  }

  v10 = sub_21DBFA12C();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *v5 = v17;
  *(v5 + 16) = v18;
  if (!*(v5 + 24))
  {
    goto LABEL_14;
  }

  v12 = sub_21DBF563C();
  v13 = swift_dynamicCast();
  (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  return sub_21DA5BF1C;
}

void sub_21DA5BF1C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68);
    TTRUserDefaults.lastICloudIsOffPromptDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    v7 = v2[6];
    sub_21D0D3954(v2[7], v7, &qword_27CE58D68);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = v2[6];
      v11 = sub_21DBF55BC();
      (*(v9 + 8))(v12, v8);
    }

    v13 = sub_21DBFA12C();
    [v6 setObject:v11 forKey:v13];

    swift_unknownObjectRelease();
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA5C0B8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    sub_21D0D3954(v3, v5, &qword_27CE58D68);
    TTRUserDefaults.lastICloudIsOffPromptDate.setter(v5);
  }

  else
  {
    v6 = v2[8];
    if (v6)
    {
      v7 = v2[6];
      sub_21D0D3954(v2[7], v7, &qword_27CE58D68);
      v8 = sub_21DBF563C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = 0;
      if (v10 != 1)
      {
        v12 = v2[6];
        v11 = sub_21DBF55BC();
        (*(v9 + 8))(v12, v8);
      }

      v13 = sub_21DBFA12C();
      [v6 setObject:v11 forKey:v13];

      swift_unknownObjectRelease();
    }

    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
  }

  sub_21D0CF7E0(v3, &qword_27CE58D68);
  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

void sub_21DA5C258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    if (*(a1 + 8) >> 60 == 15)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_21DBF54FC();
    }

    v4 = sub_21DBFA12C();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }
}

void *TTRUserDefaults.observablePropertyForLegacyTableViewBasedRemindersListEnabled.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65120);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[9] = v3;
  v4[10] = 0;
  v4[4] = sub_21DA5FD68;
  v4[5] = v1;
  v4[6] = sub_21DA5FD70;
  v4[7] = v2;
  v4[8] = sub_21DA5FD78;
  v5 = v0;
  return v4;
}

void sub_21DA5C41C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA5C494(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

id sub_21DA5C528(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for TTRUserDefaultsObservingBlock();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v8 = a1;
  *(v8 + 1) = a2;
  v27.receiver = v7;
  v27.super_class = v6;

  v9 = objc_msgSendSuper2(&v27, sel_init);
  v10 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v11 = *&a3[v10];
  if (*(v11 + 16) && (v12 = sub_21D0CEF70(0xD000000000000028, 0x800000021DC69380), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14;
  }

  else
  {
    swift_endAccess();
    v14 = [objc_allocWithZone(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:8];
    swift_beginAccess();
    v16 = v14;
    sub_21D0D9AC8(v14, 0xD000000000000028, 0x800000021DC69380);
    swift_endAccess();
  }

  v17 = type metadata accessor for TTRUserDefaultsObserver();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = a3;
  v19 = &v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v19 = 0xD000000000000028;
  v19[1] = 0x800000021DC69380;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = v9;
  v26.receiver = v18;
  v26.super_class = v17;
  v20 = a3;
  v21 = v9;
  v22 = objc_msgSendSuper2(&v26, sel_init);
  if (v14)
  {
    [v14 addObject_];
  }

  v23 = *&v20[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v23)
  {
    v24 = sub_21DBFA12C();
    [v23 addObserver:v20 forKeyPath:v24 options:0 context:0];
  }

  return v22;
}

void TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (a1 == 2)
  {
    if (!v2)
    {
      return;
    }

    v4 = sub_21DBFA12C();
    [v2 removeObjectForKey_];
  }

  else
  {
    if (!v2)
    {
      return;
    }

    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:?];
  }
}

void (*TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v3 + 40) = v5;
  if (!v5)
  {
    *v3 = 0u;
    *(v3 + 16) = 0u;
LABEL_12:
    sub_21D0CF7E0(v4, &qword_27CE5C690);
    v9 = 2;
    goto LABEL_13;
  }

  v6 = sub_21DBFA12C();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *v4 = v11;
  *(v4 + 16) = v12;
  if (!*(v4 + 24))
  {
    goto LABEL_12;
  }

  v8 = swift_dynamicCast();
  v9 = *(v4 + 49);
  if (!v8)
  {
    v9 = 2;
  }

LABEL_13:
  *(v4 + 48) = v9;
  return sub_21DA5C998;
}

void sub_21DA5C998(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.setter(v3);
    goto LABEL_9;
  }

  v4 = v2[5];
  if (v3 == 2)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = sub_21DBFA12C();
    [v4 removeObjectForKey_];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v6 = v3;
    v5 = sub_21DBFA12C();
    [v4 setBool:v6 & 1 forKey:v5];
  }

LABEL_9:

  free(v2);
}

void TTRUserDefaults.reminderDetailNewStyleEnabled.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (a1 == 2)
  {
    if (!v2)
    {
      return;
    }

    v4 = sub_21DBFA12C();
    [v2 removeObjectForKey_];
  }

  else
  {
    if (!v2)
    {
      return;
    }

    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:?];
  }
}

void (*TTRUserDefaults.reminderDetailNewStyleEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *(v3 + 40) = v5;
  if (!v5)
  {
    *v3 = 0u;
    *(v3 + 16) = 0u;
LABEL_12:
    sub_21D0CF7E0(v4, &qword_27CE5C690);
    v9 = 2;
    goto LABEL_13;
  }

  v6 = sub_21DBFA12C();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *v4 = v11;
  *(v4 + 16) = v12;
  if (!*(v4 + 24))
  {
    goto LABEL_12;
  }

  v8 = swift_dynamicCast();
  v9 = *(v4 + 49);
  if (!v8)
  {
    v9 = 2;
  }

LABEL_13:
  *(v4 + 48) = v9;
  return sub_21DA5CCBC;
}

void sub_21DA5CCBC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    TTRUserDefaults.reminderDetailNewStyleEnabled.setter(v3);
    goto LABEL_9;
  }

  v4 = v2[5];
  if (v3 == 2)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = sub_21DBFA12C();
    [v4 removeObjectForKey_];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v6 = v3;
    v5 = sub_21DBFA12C();
    [v4 setBool:v6 & 1 forKey:v5];
  }

LABEL_9:

  free(v2);
}

void TTRUserDefaults.unitTest_clearShowsCompleted(forType:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    TTRUserDefaults.ShowCompletedType.key.getter();
    v2 = sub_21DBFA12C();

    [v1 removeObjectForKey_];
  }
}

void TTRUserDefaults.unitTest_clearRemindersListLayout(for:)(id *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = [*a1 stringRepresentation];
    sub_21DBFA16C();

    MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
    v4 = sub_21DBFA12C();

    [v2 removeObjectForKey_];
  }
}

id TTRUserDefaults.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults;
  *&v0[v2] = sub_21D0CC778();
  *&v0[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers] = MEMORY[0x277D84F98];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

void (*sub_21DA5D160(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.lastCreatedOrCompletedRemindersFetchDate.modify(v2);
  return sub_21D4C30A8;
}

void (*sub_21DA5D21C(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.lastAppStoreRatingPromptDate.modify(v2);
  return sub_21D4C3D30;
}

void (*sub_21DA5D2D8(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.firstTimeAppForegroundingDate.modify(v2);
  return sub_21D4C3D30;
}

void (*sub_21DA5D394(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.lastAppForegroundingDates.modify(v2);
  return sub_21D4C3D30;
}

void (*sub_21DA5D450(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.lastICloudIsOffPromptDate.modify(v2);
  return sub_21D4C3D30;
}

id sub_21DA5D4C4(uint64_t *a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v5 = *a1;
    LOBYTE(v6) = *(a1 + 8);
    TTRUserDefaults.ShowCompletedType.key.getter();
    v3 = sub_21DBFA12C();

    v2 = [v2 BOOLForKey_];
  }

  return v2;
}

void (*sub_21DA5D5BC(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.activitySessionId.modify(v2);
  return sub_21D4C3D30;
}

void (*sub_21DA5D678(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.activitySessionBeginTime.modify(v2);
  return sub_21D4C3D30;
}

void (*sub_21DA5D734(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.recentlyUsedTimeZones.modify(v2);
  return sub_21D4C3D30;
}

void TTRUserDefaults.RemindersListLayoutKey.init(listOrCustomSmartList:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = [*a1 objectID];

  *a2 = v5;
  *(a2 + 8) = v4;
}

uint64_t TTRUserDefaults.RemindersListLayoutKey.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

void TTRUserDefaults.remindersListLayout(for:)(id *a1@<X0>, char *a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v4 && (v5 = [*a1 stringRepresentation], sub_21DBFA16C(), v5, MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000), v6 = sub_21DBFA12C(), , v7 = objc_msgSend(v4, sel_stringForKey_, v6), v6, v7))
  {
    sub_21DBFA16C();

    v8 = sub_21DBFC45C();

    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (!v8)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 2;
  }

  *a2 = v9;
}

void TTRUserDefaults.setRemindersListLayout(_:for:)(uint64_t a1, void **a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = *a2;
    v5 = sub_21DBFA12C();

    v6 = [v4 stringRepresentation];
    sub_21DBFA16C();

    MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
    v7 = sub_21DBFA12C();

    [v3 setObject:v5 forKey:v7];
  }
}

void *TTRUserDefaults.observablePropertyForRemindersListLayout(for:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE651A0);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[11] = 0;
  v7[12] = 0;
  v7[9] = v6;
  v7[10] = 0;
  v7[4] = sub_21DA600FC;
  v7[5] = v4;
  v7[6] = sub_21DA60108;
  v7[7] = v5;
  v7[8] = sub_21DA60158;
  v8 = v1;
  v9 = v2;
  v10 = v8;
  v11 = v2;
  v12 = v10;
  v13 = v2;
  return v7;
}

void sub_21DA5DC48(id a1@<X1>, uint64_t a2@<X0>, BOOL *a3@<X8>)
{
  v4 = *(a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  v9 = 0;
  if (v4)
  {
    v5 = [a1 stringRepresentation];
    sub_21DBFA16C();

    MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
    v6 = sub_21DBFA12C();

    v7 = [v4 stringForKey_];

    if (v7)
    {
      sub_21DBFA16C();

      v8 = sub_21DBFC45C();

      if (v8 == 1)
      {
        v9 = 1;
      }
    }
  }

  *a3 = v9;
}

void sub_21DA5DD6C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v5 = sub_21DBFA12C();

    v6 = [a3 stringRepresentation];
    sub_21DBFA16C();

    MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
    v7 = sub_21DBFA12C();

    [v3 setObject:v5 forKey:v7];
  }
}

id sub_21DA5DEA0(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v8 = type metadata accessor for TTRUserDefaultsObservingBlock();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v10 = a1;
  *(v10 + 1) = a2;
  v37.receiver = v9;
  v37.super_class = v8;

  v11 = objc_msgSendSuper2(&v37, sel_init);
  v12 = [a4 stringRepresentation];
  v13 = sub_21DBFA16C();
  v15 = v14;

  v35 = v13;
  v36 = v15;
  MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
  v17 = v13;
  v16 = v36;
  v18 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v19 = *&a3[v18];
  if (*(v19 + 16) && (v20 = sub_21D0CEF70(v17, v36), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    swift_endAccess();
    v23 = v22;
  }

  else
  {
    swift_endAccess();
    v22 = [objc_allocWithZone(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:8];
    swift_beginAccess();
    v24 = v22;
    sub_21DBF8E0C();
    sub_21D0D9AC8(v22, v17, v36);
    swift_endAccess();
  }

  v25 = type metadata accessor for TTRUserDefaultsObserver();
  v26 = objc_allocWithZone(v25);
  v26[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v26[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = a3;
  v27 = &v26[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v27 = v17;
  v27[1] = v16;
  *&v26[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = v11;
  v34.receiver = v26;
  v34.super_class = v25;
  sub_21DBF8E0C();
  v28 = a3;
  v29 = v11;
  v30 = objc_msgSendSuper2(&v34, sel_init);
  if (v22)
  {
    [v22 addObject_];
  }

  v31 = *&v28[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v31)
  {
    v32 = sub_21DBFA12C();

    [v31 addObserver:v28 forKeyPath:v32 options:0 context:0];
  }

  else
  {
  }

  return v30;
}

uint64_t (*sub_21DA5E1AC(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = *v1;
  TTRUserDefaults.smartListsVisibility.getter(a1);
  return sub_21DA5E1F8;
}

uint64_t (*sub_21DA5E210(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = *v1;
  TTRUserDefaults.smartListsDisplayOrder.getter(a1);
  return sub_21DA5E25C;
}

uint64_t sub_21DA5E274(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  if (a2)
  {
    v5 = *a1;
    sub_21DBF8E0C();
    a3(&v5);
  }

  else
  {
    v5 = *a1;
    return (a3)(&v5);
  }
}

uint64_t sub_21DA5E2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61567961646F54 && a2 == 0xEA00000000006575;
  if (v6 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C61566C6C41 && a2 == 0xE800000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 2;
  }

  else if (a1 == 0x656C756465686353 && a2 == 0xEE0065756C615664 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0x5664656767616C46 && a2 == 0xEC00000065756C61 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 3;
  }

  else if (a1 == 0x64656E6769737341 && a2 == 0xED000065756C6156 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021DC74920 == a2 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 5;
  }

  else if (a1 == 0x6574656C706D6F43 && a2 == 0xEE0065756C615664)
  {

    v8 = 6;
  }

  else
  {
    v9 = sub_21DBFC64C();

    if (v9)
    {
      v8 = 6;
    }

    else
    {
      v8 = 7;
    }
  }

  *a3 = v8;
  return result;
}

void sub_21DA5E578(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65290);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65298);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v37 - v13;
  v17 = *v1;
  v16 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v37 = v5;
  v42 = v19;
  if (v20)
  {
    v38 = a1;
    v21 = v18;
LABEL_11:
    v25 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v21 << 6);
    sub_21DA60E84(*(v17 + 48) + *(v39 + 72) * v26, v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v27 = *(*(v17 + 56) + 8 * v26);
    v28 = *(v41 + 48);
    v29 = v8;
    v30 = v41;
    sub_21DA60EEC(v29, v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *&v15[v28] = v27;
    v31 = v40;
    (*(v40 + 56))(v15, 0, 1, v30);

    v24 = v21;
    v32 = v31;
    a1 = v38;
LABEL_12:
    *v1 = v17;
    v1[1] = v16;
    v1[2] = v42;
    v1[3] = v24;
    v1[4] = v25;
    v33 = v1[5];
    sub_21D0D523C(v15, v11, &qword_27CE65298);
    v34 = 1;
    if ((*(v32 + 48))(v11, 1, v30) != 1)
    {
      v35 = v37;
      sub_21D0D523C(v11, v37, &qword_27CE65290);
      v33(v35);
      sub_21D0CF7E0(v35, &qword_27CE65290);
      v34 = 0;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE652A0);
    (*(*(v36 - 8) + 56))(a1, v34, 1, v36);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v32 = v40;
        v30 = v41;
        (*(v40 + 56))(&v37 - v13, 1, 1, v41, v14);
        v25 = 0;
        goto LABEL_12;
      }

      v20 = *(v16 + 8 * v21);
      ++v18;
      if (v20)
      {
        v38 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_21DA5E964(uint64_t a1@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65240);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v39 - v4;
  v5 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65248);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = (&v39 - v12);
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v43 = v18;
  v44 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = *(*(v16 + 48) + 8 * v25);
    sub_21DA60E84(*(v16 + 56) + *(v41 + 72) * v25, v7, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    v27 = v42;
    v28 = *(v42 + 48);
    *v14 = v26;
    v29 = v7;
    v30 = v27;
    sub_21DA60EEC(v29, v14 + v28, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    (*(v3 + 56))(v14, 0, 1, v30);
    v31 = v26;
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v24;
    v32 = v1[5];
    sub_21D0D523C(v14, v10, &qword_27CE65248);
    v33 = 1;
    v34 = (*(v3 + 48))(v10, 1, v30);
    v35 = v44;
    if (v34 != 1)
    {
      v36 = v10;
      v37 = v40;
      sub_21D0D523C(v36, v40, &qword_27CE65240);
      v32(v37);
      sub_21D0CF7E0(v37, &qword_27CE65240);
      v33 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65250);
    (*(*(v38 - 8) + 56))(v35, v33, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v42;
        (*(v3 + 56))(&v39 - v12, 1, 1, v42, v13);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_21DA5ED28(uint64_t a1@<X8>)
{
  v48 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D768);
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65268);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = (&v43 - v12);
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v47 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v45 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = (*(v15 + 48) + 80 * v24);
    v27 = v25[1];
    v26 = v25[2];
    v28 = v25[4];
    v53 = v25[3];
    v54 = v28;
    v50 = *v25;
    v51 = v27;
    v52 = v26;
    sub_21D0D3954(*(v15 + 56) + *(v5 + 72) * v24, v7, &qword_27CE65260);
    v29 = v46;
    v30 = *(v46 + 48);
    v31 = v54;
    v14[3] = v53;
    v14[4] = v31;
    v32 = v52;
    v14[1] = v51;
    v14[2] = v32;
    *v14 = v50;
    v33 = v7;
    v34 = v29;
    sub_21D0D523C(v33, v14 + v30, &qword_27CE65260);
    (*(v2 + 56))(v14, 0, 1, v34);
    sub_21D1D9B34(&v50, v49);
    v35 = v45;
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v47;
    v1[3] = v23;
    v1[4] = v35;
    v36 = v1[5];
    sub_21D0D523C(v14, v10, &qword_27CE65268);
    v37 = 1;
    v38 = (*(v2 + 48))(v10, 1, v34);
    v39 = v48;
    if (v38 != 1)
    {
      v40 = v10;
      v41 = v44;
      sub_21D0D523C(v40, v44, &qword_27CE5D768);
      v36(v41);
      sub_21D0CF7E0(v41, &qword_27CE5D768);
      v37 = 0;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65270);
    (*(*(v42 - 8) + 56))(v39, v37, 1, v42);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v34 = v46;
        (*(v2 + 56))(&v43 - v12, 1, 1, v46, v13);
        v35 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_21DA5F158(uint64_t a1@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D780);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v39 - v4;
  v5 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65280);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = (&v39 - v12);
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v43 = v18;
  v44 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = *(*(v16 + 48) + 8 * v25);
    sub_21DA60E84(*(v16 + 56) + *(v41 + 72) * v25, v7, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    v27 = v42;
    v28 = *(v42 + 48);
    *v14 = v26;
    v29 = v7;
    v30 = v27;
    sub_21DA60EEC(v29, v14 + v28, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    (*(v3 + 56))(v14, 0, 1, v30);
    v31 = v26;
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v24;
    v32 = v1[5];
    sub_21D0D523C(v14, v10, &unk_27CE65280);
    v33 = 1;
    v34 = (*(v3 + 48))(v10, 1, v30);
    v35 = v44;
    if (v34 != 1)
    {
      v36 = v10;
      v37 = v40;
      sub_21D0D523C(v36, v40, &qword_27CE5D780);
      v32(v37);
      sub_21D0CF7E0(v37, &qword_27CE5D780);
      v33 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D778);
    (*(*(v38 - 8) + 56))(v35, v33, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v42;
        (*(v3 + 56))(&v39 - v12, 1, 1, v42, v13);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21DA5F530(uint64_t result)
{
  v2 = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v6 = result;
    v7 = v1;
    result = sub_21DBFC2DC();
    if (!result)
    {
      return result;
    }

    v9 = v8;
    sub_21D0D8CF0(0, &qword_280D17880);
    swift_dynamicCast();
    v10 = v21[0];
    v20 = v9;
    sub_21D0D8CF0(0, v6);
    swift_dynamicCast();
    v11 = v21[0];
    v1 = v7;
    if (v21[0])
    {
      goto LABEL_16;
    }

    return 0;
  }

  v3 = v1[3];
  v4 = v1[4];
  if (v4)
  {
    v5 = v1[3];
LABEL_15:
    v15 = (v4 - 1) & v4;
    v16 = (v5 << 9) | (8 * __clz(__rbit64(v4)));
    v10 = *(*(v2 + 48) + v16);
    v17 = *(*(v2 + 56) + v16);
    v18 = v10;
    v11 = v17;
    v1[3] = v5;
    v1[4] = v15;
    if (v10)
    {
LABEL_16:
      v19 = v1[5];
      v21[0] = v10;
      v21[1] = v11;
      v19(&v20, v21);

      return v20;
    }

    return 0;
  }

  v12 = (v1[2] + 64) >> 6;
  if (v12 <= v3 + 1)
  {
    v13 = v3 + 1;
  }

  else
  {
    v13 = (v1[2] + 64) >> 6;
  }

  v14 = v13 - 1;
  while (1)
  {
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v5 >= v12)
    {
      v1[3] = v14;
      v1[4] = 0;
      return 0;
    }

    v4 = *(v1[1] + 8 * v5);
    ++v3;
    if (v4)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore15TTRUserDefaultsC0A13ListLayoutKeyO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
LABEL_6:
    sub_21D0D8CF0(0, &qword_280D17680);
    v7 = v3;
    v8 = v2;
    v6 = sub_21DBFB63C();
    goto LABEL_7;
  }

  v4 = v3;
  v5 = v2;
  v6 = 0;
LABEL_7:

  return v6 & 1;
}

uint64_t _s15RemindersUICore15TTRUserDefaultsC17ShowCompletedTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21D157850(v4, 0);
      sub_21D157850(v2, 0);
      v6 = sub_21DBFB63C();
      sub_21D157478(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21D157850(v4, 1u);
      sub_21D157850(v2, 1u);
      LOBYTE(v6) = sub_21DBFB63C();
      sub_21D157478(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_19:
      sub_21D157478(v7, v8);
      return v6 & 1;
    }

    goto LABEL_6;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v5 != 2 || v4 != 3)
      {
        goto LABEL_6;
      }

      sub_21D157478(3, 2u);
      v9 = 3;
    }

    else if (v2 == 4)
    {
      if (v5 != 2 || v4 != 4)
      {
        goto LABEL_6;
      }

      sub_21D157478(4, 2u);
      v9 = 4;
    }

    else
    {
      if (v5 != 2 || v4 != 5)
      {
        goto LABEL_6;
      }

      sub_21D157478(5, 2u);
      v9 = 5;
    }

    goto LABEL_32;
  }

  if (!v2)
  {
    if (v5 != 2 || v4)
    {
      goto LABEL_6;
    }

    sub_21D157478(0, 2u);
    v9 = 0;
    goto LABEL_32;
  }

  if (v2 != 1)
  {
    if (v5 != 2 || v4 != 2)
    {
      goto LABEL_6;
    }

    sub_21D157478(2, 2u);
    v9 = 2;
LABEL_32:
    sub_21D157478(v9, 2u);
    return 1;
  }

  if (v5 == 2 && v4 == 1)
  {
    sub_21D157478(1, 2u);
    sub_21D157478(1, 2u);
    return v4;
  }

LABEL_6:
  sub_21D157850(*a2, *(a2 + 8));
  sub_21D157850(v2, v3);
  sub_21D157478(v2, v3);
  sub_21D157478(v4, v5);
  return 0;
}

uint64_t type metadata accessor for TTRUserDefaults.SmartListVersionWarning()
{
  result = qword_27CE651E8;
  if (!qword_27CE651E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21DA5FA90()
{
  result = qword_27CE65130;
  if (!qword_27CE65130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65130);
  }

  return result;
}

uint64_t sub_21DA5FAE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21DA5FB44()
{
  result = qword_27CE65158;
  if (!qword_27CE65158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE65150);
    sub_21DA60E3C(&qword_27CE65160, MEMORY[0x277CC95F0]);
    sub_21DA60E3C(&qword_27CE65168, type metadata accessor for TTRUserDefaults.SmartListVersionWarning);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65158);
  }

  return result;
}

unint64_t sub_21DA5FC30()
{
  result = qword_27CE65170;
  if (!qword_27CE65170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE65150);
    sub_21DA60E3C(&qword_27CE5B4B8, MEMORY[0x277CC95F0]);
    sub_21DA60E3C(&unk_27CE65180, type metadata accessor for TTRUserDefaults.SmartListVersionWarning);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65170);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{

  return swift_deallocObject();
}

void _s15RemindersUICore15TTRUserDefaultsC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyf6ChangeH0aypGSgSvSgtF_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = v3;
    if (qword_27CE56FE8 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE65080);
    sub_21DBF8E0C();
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEAC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_21D0CDFB4(a1, a2, v31);
      _os_log_impl(&dword_21D0C9000, v9, v10, "TTRUserDefaults KVO change observed {userDefaultsKey: %s}", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }

    sub_21D0D3954(a3, v31, &qword_27CE5C690);
    if (!v31[3])
    {
      sub_21D0CF7E0(v31, &qword_27CE5C690);
      return;
    }

    sub_21D0D8CF0(0, &qword_27CE65218);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v13 = v30;
    v14 = *(v4 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v14)
    {
      v15 = v30;
      v16 = v14;
      v17 = sub_21DBFB63C();

      if ((v17 & 1) == 0)
      {

        return;
      }

      v18 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
      swift_beginAccess();
      v19 = *(v4 + v18);
      if (!*(v19 + 16) || (v20 = sub_21D0CEF70(a1, a2), (v21 & 1) == 0))
      {
        swift_endAccess();

        return;
      }

      v22 = *(*(v19 + 56) + 8 * v20);
      swift_endAccess();
      v23 = [v22 allObjects];
      type metadata accessor for TTRUserDefaultsObserver();
      v24 = sub_21DBFA5EC();

      if (v24 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
      {
        v26 = 0;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x223D44740](v26, v24);
          }

          else
          {
            if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          (*(*&v27[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] + OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block))();

          ++v26;
          if (v29 == i)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

LABEL_28:

      v13 = v15;
    }
  }
}

uint64_t objectdestroy_53Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_21DA60168()
{
  result = qword_27CE651A8;
  if (!qword_27CE651A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE651A8);
  }

  return result;
}

unint64_t sub_21DA601F0()
{
  result = qword_27CE651C0;
  if (!qword_27CE651C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE651C0);
  }

  return result;
}

unint64_t sub_21DA60248()
{
  result = qword_27CE651C8;
  if (!qword_27CE651C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE651C8);
  }

  return result;
}

unint64_t sub_21DA602D0()
{
  result = qword_27CE651E0;
  if (!qword_27CE651E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE651E0);
  }

  return result;
}

uint64_t keypath_set_76Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;
  sub_21DBF8E0C();
  return a5(&v7);
}

uint64_t keypath_set_70Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_21DBF8E0C();
  return a5(v7, v6);
}

uint64_t sub_21DA607A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21DA60838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}