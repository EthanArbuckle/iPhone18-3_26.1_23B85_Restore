void sub_21DF7C0A0(void *a1, char a2)
{
  if (a1)
  {
    v4 = [a1 sheetPresentationController];
    if (v4)
    {
      v7 = v4;
      v5 = a2 & 1;
      if ([v4 _includesSafeAreaInsetWhenInset] != v5)
      {
        v6 = [a1 sheetPresentationController];
        [v6 _setIncludesSafeAreaInsetWhenInset_];
      }
    }
  }
}

uint64_t sub_21DF7C160(int64_t *a1, unint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CardContainer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v68 - v10;
  v12 = sub_21E140124();
  v78 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v75 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v68 - v15;
  MEMORY[0x28223BE20](v16);
  v79 = (&v68 - v17);
  v18 = *a2;
  v91[0] = *a1;
  v90[0] = v18;
  result = static CardLayout.== infix(_:_:)(v91, v90);
  if ((result & 1) == 0)
  {
    v69 = v12;
    v71 = v8;
    v72 = v11;
    v73 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v77 = v6;
    v20 = *(v3 + *(v6 + 28));
    swift_getKeyPath();
    v91[0] = v20;
    sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v21 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
    v22 = *(v20 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
    v70 = v7;
    v74 = v3;
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      swift_getKeyPath();
      v91[0] = v20;
      sub_21E13D3C4();

      v24 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v23 = *(v20 + v24);
    }

    swift_getKeyPath();
    v90[0] = v23;
    sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

    sub_21E13D3C4();

    swift_beginAccess();

    v89[0] = v18;
    v25 = sub_21DF31604(v89);

    if (v25)
    {
      swift_getKeyPath();
      v89[0] = v20;
      sub_21E13D3C4();

      v26 = v74;
      if (*(v20 + v21))
      {
        v27 = *(v20 + v21);
      }

      else
      {
        swift_getKeyPath();
        v89[0] = v20;
        sub_21E13D3C4();

        v43 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v27 = *(v20 + v43);
      }

      swift_getKeyPath();
      v87 = v27;

      sub_21E13D3C4();

      v44 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v45 = *(v27 + v44);

      swift_getKeyPath();
      v86 = v45;
      sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
      sub_21E13D3C4();

      v46 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
      swift_beginAccess();
      LODWORD(v46) = *(v45 + v46);

      v47 = v69;
      if (v46 == 1)
      {
        v48 = v79;
        sub_21E140104();
      }

      else
      {
        v48 = v79;
        sub_21DF64180(v79);
      }

      v49 = v77;
      v50 = v26;
      v51 = v78;
      v52 = *(v78 + 16);
      v53 = v75;
      v52(v75, v48, v47);
      v54 = (v50 + *(v49 + 48));
      v56 = v54[1];
      v83 = *v54;
      v55 = v83;
      v84 = v56;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A08);
      sub_21E141714();
      v57 = v76;
      sub_21E0E2440(v76, v53);
      v78 = *(v51 + 8);
      (v78)(v57, v47);
      v81 = v55;
      v82 = v56;
      v80 = v85;
      sub_21E141724();

      v52(v57, v79, v47);
      v52(v53, v57, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);
      v58 = v74;
      sub_21E141724();
      v59 = v57;
      v60 = v78;
      (v78)(v59, v47);
      v61 = sub_21E1423F4();
      v62 = v72;
      (*(*(v61 - 8) + 56))(v72, 1, 1, v61);
      v63 = v73;
      sub_21DF8C7C8(v58, v73, type metadata accessor for CardContainer);
      sub_21E1423C4();
      v64 = sub_21E1423B4();
      v65 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v66 = swift_allocObject();
      v67 = MEMORY[0x277D85700];
      *(v66 + 16) = v64;
      *(v66 + 24) = v67;
      sub_21DF8C494(v63, v66 + v65, type metadata accessor for CardContainer);
      sub_21E0C2E04(0, 0, v62, &unk_21E148118, v66);

      return v60(v79, v47);
    }

    else
    {
      v28 = v75;
      v29 = v74;
      sub_21DF64180(v75);
      v30 = (v29 + *(v77 + 48));
      v32 = v30[1];
      v89[0] = *v30;
      v31 = v89[0];
      v89[1] = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A08);
      sub_21E141714();
      v33 = v76;
      sub_21E0E2440(v76, v28);
      v34 = v78;
      v79 = *(v78 + 8);
      v35 = v69;
      (v79)(v33, v69);
      v87 = v31;
      v88 = v32;
      v83 = v86;
      sub_21E141724();

      sub_21DF64180(v33);
      (*(v34 + 16))(v28, v33, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);
      sub_21E141724();
      (v79)(v33, v35);
      v36 = sub_21E1423F4();
      v37 = v72;
      (*(*(v36 - 8) + 56))(v72, 1, 1, v36);
      v38 = v73;
      sub_21DF8C7C8(v29, v73, type metadata accessor for CardContainer);
      sub_21E1423C4();
      v39 = sub_21E1423B4();
      v40 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v41 = swift_allocObject();
      v42 = MEMORY[0x277D85700];
      *(v41 + 16) = v39;
      *(v41 + 24) = v42;
      sub_21DF8C494(v38, v41 + v40, type metadata accessor for CardContainer);
      sub_21E0C2E04(0, 0, v37, &unk_21E148108, v41);
    }
  }

  return result;
}

uint64_t sub_21DF7CC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v5 = sub_21E13F1B4();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21E140124();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for CardContainer() + 28);
  v47 = a3;
  v9 = *(a3 + v8);
  swift_getKeyPath();
  v60 = v9;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  v11 = *(v9 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v48 = a2;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    swift_getKeyPath();
    v60 = v9;
    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v12 = *(v9 + v13);
  }

  swift_getKeyPath();
  v59 = v12;
  v14 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  v53 = v14;
  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v58 = v9;
  sub_21E13D3C4();

  v51 = v10;
  if (*(v9 + v10))
  {
    v15 = *(v9 + v10);
  }

  else
  {
    swift_getKeyPath();
    v58 = v9;
    sub_21E13D3C4();

    v16 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v15 = *(v9 + v16);
  }

  swift_getKeyPath();
  v57[3] = v15;

  sub_21E13D3C4();

  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v18 = *(v15 + v17);
  sub_21DF5706C(v18);

  v57[0] = v18;
  LOBYTE(v18) = sub_21DF31604(v57);

  sub_21DF5AF24(v57[0]);
  v19 = v51;
  v20 = v48;
  if (v18)
  {
    swift_getKeyPath();
    v57[0] = v9;
    sub_21E13D3C4();

    if (*(v9 + v19))
    {
      v21 = *(v9 + v19);
    }

    else
    {
      swift_getKeyPath();
      v57[0] = v9;
      sub_21E13D3C4();

      v22 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v21 = *(v9 + v22);
    }

    swift_getKeyPath();
    v57[0] = v21;

    sub_21E13D3C4();

    v23 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v24 = *(v21 + v23);

    v25 = v49;
    sub_21E140104();
    v26 = MEMORY[0x223D50930](v20, v25) & 1;
    (*(v50 + 8))(v25, v52);
    v27 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    if (v26 == *(v24 + v27))
    {
      *(v24 + v27) = v26;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v42 - 2) = v24;
      *(&v42 - 8) = v26;
      v57[0] = v24;
      sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
      sub_21E13D3B4();

      v19 = v51;
    }
  }

  if (qword_280F69E50 != -1)
  {
    swift_once();
  }

  if (byte_280F6FD20 != 1)
  {
    goto LABEL_22;
  }

  if (qword_27CEA67C8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v52, qword_27CEA78F8);
  sub_21DF8D698(&qword_27CEA79D0, MEMORY[0x277CDDE90]);
  result = sub_21E142074();
  if ((result & 1) == 0)
  {
    result = sub_21E142074();
    if ((result & 1) == 0)
    {
LABEL_22:
      v30 = v49;
      sub_21DF64180(v49);
      v31 = MEMORY[0x223D50930](v20, v30);
      result = (*(v50 + 8))(v30, v52);
      if (v31)
      {
        v32 = v43;
        sub_21E13EBE4();
        v33 = sub_21E13F1A4();
        v34 = sub_21E142554();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_21DF05000, v33, v34, "Expanding card container", v35, 2u);
          MEMORY[0x223D540B0](v35, -1, -1);
        }

        (*(v44 + 8))(v32, v45);
        swift_getKeyPath();
        v57[0] = v9;
        sub_21E13D3C4();

        if (*(v9 + v19))
        {
          v36 = *(v9 + v19);
        }

        else
        {
          swift_getKeyPath();
          v57[0] = v9;
          sub_21E13D3C4();

          v37 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v36 = *(v9 + v37);
        }

        swift_getKeyPath();
        v56 = v36;

        sub_21E13D3C4();

        swift_beginAccess();

        swift_getKeyPath();
        v55 = v9;
        sub_21E13D3C4();

        if (*(v9 + v19))
        {
          v38 = *(v9 + v19);
        }

        else
        {
          swift_getKeyPath();
          v55 = v9;
          sub_21E13D3C4();

          v39 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v38 = *(v9 + v39);
        }

        swift_getKeyPath();
        v54[1] = v38;

        sub_21E13D3C4();

        v40 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
        swift_beginAccess();
        v41 = *(v38 + v40);
        sub_21DF5706C(v41);

        v54[0] = v41;
        LOBYTE(v41) = sub_21DF31604(v54);

        result = sub_21DF5AF24(v54[0]);
        if (v41)
        {
          return sub_21DF7D6EC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_21DF7D6EC()
{
  v1 = v0;
  v2 = type metadata accessor for CardContainer();
  v63 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v64 = v3;
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v59 - v8;
  v9 = *(v0 + *(v2 + 28));
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v72[0] = v9;
  v11 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v68 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  v69 = v11;
  v12 = *(v9 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v70 = v10;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    swift_getKeyPath();
    *&v72[0] = v9;
    sub_21E13D3C4();

    v14 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v13 = *(v9 + v14);
  }

  swift_getKeyPath();
  *&v72[0] = v13;
  v15 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  v67 = v15;
  sub_21E13D3C4();

  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v17 = *(v13 + v16);

  v18 = *(v2 + 60);
  v62 = v1;
  v19 = (v1 + v18);
  v20 = *v19;
  v21 = v19[1];
  *&v72[0] = *v19;
  *(&v72[0] + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090);
  sub_21E141714();
  result = v71[0];
  if ((v17 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x223D530F0](v71[0], v17);
    goto LABEL_8;
  }

  if (v71[0] < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v71[0] >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v23 = *(v17 + 8 * v71[0] + 32);

LABEL_8:

  *&v72[0] = v20;
  *(&v72[0] + 1) = v21;
  sub_21E141714();
  if (v71[0])
  {
    v24 = 0;
  }

  else
  {
    v61 = v23;
    swift_getKeyPath();
    *&v72[0] = v9;
    sub_21E13D3C4();

    v25 = *(v9 + v68);
    v60 = v4;
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      swift_getKeyPath();
      *&v72[0] = v9;
      sub_21E13D3C4();

      v27 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v26 = *(v9 + v27);
    }

    swift_getKeyPath();
    v71[0] = v26;

    sub_21E13D3C4();

    v28 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v29 = *(v26 + v28);

    swift_getKeyPath();
    v71[0] = v29;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3C4();

    v30 = *(v29 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
    v72[0] = *(v29 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
    v72[1] = v30;
    v32 = *(v29 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
    v31 = *(v29 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
    v33 = *(v29 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
    v73 = *(v29 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
    v72[3] = v32;
    v72[4] = v31;
    v72[2] = v33;
    sub_21DF236C0(v72, v71, &qword_27CEA6D60);

    v23 = v61;
    if (v73 == 255)
    {
      v24 = 1;
    }

    else
    {
      sub_21DF23614(v72, &qword_27CEA6D60);
      v24 = 0;
    }

    v4 = v60;
  }

  *&v72[0] = v20;
  *(&v72[0] + 1) = v21;
  sub_21E141714();
  if (v71[0] < 1)
  {
    v35 = 0;
  }

  else
  {
    LODWORD(v61) = v24;
    swift_getKeyPath();
    *&v72[0] = v9;
    sub_21E13D3C4();

    if (*(v9 + v68))
    {
      v34 = *(v9 + v68);
    }

    else
    {
      swift_getKeyPath();
      *&v72[0] = v9;
      sub_21E13D3C4();

      v36 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v34 = *(v9 + v36);
    }

    swift_getKeyPath();
    v71[0] = v34;

    sub_21E13D3C4();

    v37 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v38 = *(v34 + v37);

    v39 = *(v23 + 16);
    v40 = *(v23 + 24);
    swift_getKeyPath();
    v74 = v38;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3C4();

    v41 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualSearch;
    swift_beginAccess();
    v42 = *(v38 + v41);

    if (*(v42 + 16) && (v43 = sub_21E0E0F20(v39, v40), (v44 & 1) != 0))
    {
      v45 = v43;
      v46 = *(v42 + 56);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
      v48 = *(v47 - 8);
      v49 = v46 + *(v48 + 72) * v45;
      v50 = v66;
      sub_21DF236C0(v49, v66, &qword_27CEA6C58);

      (*(v48 + 56))(v50, 0, 1, v47);
      v35 = 0;
    }

    else
    {

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
      v35 = 1;
      v50 = v66;
      (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
    }

    sub_21DF23614(v50, &qword_27CEA6D40);
    v24 = v61;
  }

  MKBGetDeviceLockState();
  if ((v24 | v35) == 1)
  {
    v52 = sub_21E1423F4();
    v53 = v65;
    (*(*(v52 - 8) + 56))(v65, 1, 1, v52);
    sub_21DF8C7C8(v62, v4, type metadata accessor for CardContainer);
    sub_21E1423C4();

    v54 = sub_21E1423B4();
    v55 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v56 = (v64 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    v58 = MEMORY[0x277D85700];
    *(v57 + 16) = v54;
    *(v57 + 24) = v58;
    sub_21DF8C494(v4, v57 + v55, type metadata accessor for CardContainer);
    *(v57 + v56) = v23;
    sub_21E0C2E04(0, 0, v53, &unk_21E148038, v57);
  }
}

unint64_t sub_21DF7E108(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v27 = sub_21E140124();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = *a1;
  v28 = *a2;
  v29 = v10;
  v23 = type metadata accessor for CardContainer();
  v11 = *(v23 + 28);
  v26 = a3;
  v12 = *(a3 + v11);
  swift_getKeyPath();
  v33 = v12;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v12 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v14 = *(v12 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v33 = v12;
    sub_21E13D3C4();

    v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v14 = *(v12 + v15);
  }

  swift_getKeyPath();
  v32 = v14;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v31 = v12;
  sub_21E13D3C4();

  if (*(v12 + v13))
  {
    v16 = *(v12 + v13);
  }

  else
  {
    swift_getKeyPath();
    v31 = v12;
    sub_21E13D3C4();

    v17 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v16 = *(v12 + v17);
  }

  swift_getKeyPath();
  v30[1] = v16;

  sub_21E13D3C4();

  v18 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v19 = *(v16 + v18);
  sub_21DF5706C(v19);

  v30[0] = v19;
  LODWORD(v19) = sub_21DF31604(v30);

  result = sub_21DF5AF24(v30[0]);
  if (!(v28 & 1 | ((v19 & v29 & 1) == 0)))
  {
    sub_21DF64180(v9);
    v21 = v25;
    v22 = v27;
    (*(v25 + 16))(v24, v9, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);
    sub_21E141724();
    return (*(v21 + 8))(v9, v22);
  }

  return result;
}

uint64_t sub_21DF7E55C()
{
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21DF7E5D0(uint64_t a1, float a2)
{
  v5 = sub_21E13D384();
  MEMORY[0x28223BE20](v5 - 8);
  v37[5] = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E1420E4();
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v37[4] = v37 - v9;
  v10 = sub_21E13E1A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E1420C4();
  MEMORY[0x28223BE20](v14 - 8);
  MEMORY[0x28223BE20](v15);
  v37[3] = v37 - v16;
  v38 = a1;
  if (a2 >= 0.4 || (v17 = type metadata accessor for CardContainer(), v40 = *(a1 + *(v17 + 60)), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090), sub_21E141714(), v39[0]))
  {
LABEL_8:
    sub_21E1420B4();
    sub_21E1420A4();
    sub_21E13E154();
    sub_21E13E174();
    (*(v11 + 8))(v13, v10);
    sub_21E142094();

    sub_21E1420A4();
    sub_21E1420D4();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v28 = [objc_opt_self() mainBundle];
    }

    goto LABEL_10;
  }

  v37[2] = v2;
  v18 = *(a1 + *(v17 + 28));
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v40 = v18;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  v37[1] = v19;
  sub_21E13D3C4();

  if (*(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v20 = *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    *&v40 = v18;
    sub_21E13D3C4();

    v21 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v20 = *(v18 + v21);
  }

  swift_getKeyPath();
  v39[0] = v20;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v22 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v23 = *(v20 + v22);

  swift_getKeyPath();
  v39[0] = v23;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v24 = *(v23 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
  v40 = *(v23 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
  v41 = v24;
  v26 = *(v23 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
  v25 = *(v23 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
  v27 = *(v23 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
  v45 = *(v23 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
  v43 = v26;
  v44 = v25;
  v42 = v27;
  sub_21DF236C0(&v40, v39, &qword_27CEA6D60);

  if (v45 != 255)
  {
    sub_21DF23614(&v40, &qword_27CEA6D60);
    goto LABEL_8;
  }

  sub_21E1420B4();
  sub_21E1420A4();
  sub_21E13E154();
  sub_21E13E174();
  (*(v11 + 8))(v13, v10);
  sub_21E142094();

  sub_21E1420A4();
  sub_21E1420D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v36 = [objc_opt_self() mainBundle];
  }

LABEL_10:
  sub_21E13D374();
  v29 = sub_21E142184();
  v31 = v30;
  v32 = (v38 + *(type metadata accessor for CardContainer() + 56));
  v33 = *v32;
  v34 = *(v32 + 2);
  v40 = v33;
  *&v41 = v34;
  v39[0] = v29;
  v39[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79F8);
  return sub_21E141724();
}

id sub_21DF7ED48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF8D698(&qword_280F6A900, type metadata accessor for FeedbackController);
  sub_21E13D3C4();

  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_21DF7EE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_21E1423C4();
  *(v4 + 48) = sub_21E1423B4();
  v6 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DF7EED8, v6, v5);
}

uint64_t sub_21DF7EED8()
{
  v1 = v0[5];

  v2 = sub_21DF7ACB4();
  v3 = (v1 + *(type metadata accessor for CardContainer() + 48));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A08);
  sub_21E141724();
  v6 = v0[1];

  return v6();
}

uint64_t sub_21DF7EF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v5 = sub_21E13D344();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = sub_21E13D994();
  v62 = *(v12 - 8);
  v13 = v62;
  v63 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C18);
  MEMORY[0x28223BE20](v67);
  v17 = (&v53 - v16);
  v18 = sub_21E13D984();
  v66 = v15;
  *v15 = v18;
  (*(v13 + 104))(v15, *MEMORY[0x277D78F80], v12);
  v19 = type metadata accessor for GeoLookupCardResult(0);
  v20 = sub_21DFAB3C0(*(a1 + *(v19 + 24)));
  v64 = v21;
  v65 = v20;
  v22 = type metadata accessor for CardContainer();
  v23 = (a2 + *(v22 + 68));
  v72 = *v23;
  v73 = *(v23 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
  sub_21E1419F4();
  v61 = v70;
  v60 = v71;
  v24 = *(a2 + *(v22 + 28));
  swift_getKeyPath();
  v72 = v24;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v25 = (v24 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration);
  swift_beginAccess();
  v26 = *v25;
  v58 = v25[1];
  v59 = v26;
  v57 = v25[2];
  v27 = *(v25 + 2);
  v56 = *(v25 + 1);
  v54 = v27;
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for FeedbackControlBar(0);
  v29 = v28[9];
  v55 = v28[8];
  v30 = v17 + v29;
  LOBYTE(v69) = 0;

  sub_21E141704();
  v31 = v71;
  *v30 = v70;
  *(v30 + 1) = v31;
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v32 = *(v6 + 16);
  v32(v8, v11, v5);
  sub_21E141704();
  v33 = *(v6 + 8);
  v33(v11, v5);
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v32(v8, v11, v5);
  sub_21E141704();
  v33(v11, v5);
  v34 = v28[7];
  v35 = sub_21E13DF64();
  (*(*(v35 - 8) + 56))(v17 + v34, 1, 1, v35);
  v36 = v28[5];
  v38 = v62;
  v37 = v63;
  (*(v62 + 32))(v17 + v36, v66, v63);
  (*(v38 + 56))(v17 + v36, 0, 1, v37);
  v39 = (v17 + v28[6]);
  v40 = v64;
  *v39 = v65;
  v39[1] = v40;
  v41 = v17 + v28[12];
  *v41 = v61;
  *(v41 + 8) = v60;
  v42 = v17 + v28[13];
  LOBYTE(v40) = v58;
  *v42 = v59;
  v42[1] = v40;
  v42[2] = v57;
  v43 = v54;
  *(v42 + 1) = v56;
  *(v42 + 2) = v43;
  *(v17 + v55) = 0;
  LOBYTE(v28) = sub_21E140934();
  sub_21E13F374();
  v44 = v17 + *(v67 + 36);
  *v44 = v28;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  sub_21DF8A51C();
  v49 = v68;
  sub_21E141074();
  sub_21DF23614(v17, &qword_27CEA7C18);
  sub_21E13F6B4();
  v69 = 0;
  v70 = 0x4018000000000000;
  sub_21DF8C4FC();
  sub_21E13F6E4();
  sub_21E13F6C4();

  MEMORY[0x223D52580](v50, 0.5, 1.0, 0.0);
  sub_21E141D04();

  sub_21E13F6F4();

  sub_21E13F6B4();
  v69 = 0;
  v70 = 0x4018000000000000;
  sub_21E13F6E4();
  sub_21E13F6C4();

  v51 = sub_21E13F684();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8118);
  *(v49 + *(result + 36)) = v51;
  return result;
}

uint64_t sub_21DF7F620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v88 = a4;
  v101 = a5;
  v94 = sub_21E13D344();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v91 = &v79 - v10;
  v104 = sub_21E13D994();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FeedbackControlBar(0);
  MEMORY[0x28223BE20](v90);
  v89 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8120);
  MEMORY[0x28223BE20](v95);
  v100 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v97 = &v79 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8128);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v79 - v18;
  v87 = sub_21E13E604();
  v86 = v19;
  LODWORD(v85) = sub_21E13E5F4();
  v20 = sub_21E13E5E4();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v27 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    v28 = sub_21E13E5D4();
    if (v29)
    {
      v21 = v28;
    }

    else
    {
      v21 = 0;
    }

    if (v29)
    {
      v22 = v29;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v23 = sub_21E13E5C4();
    v24 = v30;
    v25 = sub_21E13E5B4();
    v26 = v31;
  }

  v109[0] = 0;
  v32 = sub_21E141704();
  *v109 = v87;
  *&v109[8] = v86;
  v109[16] = v85 & 1;
  v109[17] = v20 & 1;
  *&v109[24] = v21;
  *&v110 = v22;
  *(&v110 + 1) = v23;
  *&v111 = v24;
  *(&v111 + 1) = v25;
  *&v112 = v26;
  BYTE8(v112) = v114[0];
  v113 = *(&v114[0] + 1);
  MEMORY[0x28223BE20](v32);
  v33 = v88;
  *(&v79 - 2) = a1;
  *(&v79 - 1) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8130);
  sub_21DF8C588();
  sub_21DF8C5DC();
  sub_21E140DE4();
  v114[3] = v111;
  v114[4] = v112;
  v115 = v113;
  v114[0] = *v109;
  v114[1] = *&v109[16];
  v114[2] = v110;
  sub_21DF25794(v114);
  (*(v103 + 104))(v102, *MEMORY[0x277D78F98], v104);
  v87 = sub_21DFAB3E8();
  v86 = v34;
  v35 = type metadata accessor for CardContainer();
  v36 = v33 + *(v35 + 68);
  *v109 = *v36;
  *&v109[8] = *(v36 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
  sub_21E1419F4();
  v85 = v107;
  v84 = v108;
  v37 = *(v33 + *(v35 + 28));
  swift_getKeyPath();
  *v109 = v37;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v38 = (v37 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration);
  swift_beginAccess();
  LODWORD(v88) = *v38;
  v83 = v38[1];
  v82 = v38[2];
  v39 = *(v38 + 1);
  v40 = *(v38 + 2);
  v81 = v39;
  v79 = v40;
  KeyPath = swift_getKeyPath();
  v42 = v89;
  *v89 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v43 = v90;
  v44 = *(v90 + 36);
  v80 = *(v90 + 32);
  v45 = v42 + v44;
  v106 = 0;

  sub_21E141704();
  v46 = v108;
  *v45 = v107;
  *(v45 + 8) = v46;
  v47 = v91;
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v48 = v93;
  v49 = *(v93 + 16);
  v50 = v92;
  v51 = v94;
  v49(v92, v47, v94);
  sub_21E141704();
  v52 = *(v48 + 8);
  v52(v47, v51);
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v49(v50, v47, v51);
  sub_21E141704();
  v52(v47, v51);
  v53 = v43[7];
  v54 = sub_21E13DF64();
  (*(*(v54 - 8) + 56))(v42 + v53, 1, 1, v54);
  v55 = v43[5];
  v56 = v103;
  v57 = v104;
  (*(v103 + 32))(v42 + v55, v102, v104);
  (*(v56 + 56))(v42 + v55, 0, 1, v57);
  v58 = (v42 + v43[6]);
  v59 = v86;
  *v58 = v87;
  v58[1] = v59;
  v60 = v42 + v43[12];
  *v60 = v85;
  *(v60 + 8) = v84;
  v61 = v42 + v43[13];
  *v61 = v88;
  *(v61 + 1) = v83;
  *(v61 + 2) = v82;
  v62 = v79;
  *(v61 + 8) = v81;
  *(v61 + 16) = v62;
  *(v42 + v80) = 0;
  sub_21DF8D698(&qword_27CEA7C20, type metadata accessor for FeedbackControlBar);
  v63 = v97;
  sub_21E141074();
  sub_21DF8C830(v42, type metadata accessor for FeedbackControlBar);
  LOBYTE(v55) = sub_21E140934();
  sub_21E13F374();
  v64 = v63 + *(v95 + 36);
  *v64 = v55;
  *(v64 + 8) = v65;
  *(v64 + 16) = v66;
  *(v64 + 24) = v67;
  *(v64 + 32) = v68;
  *(v64 + 40) = 0;
  v69 = v98;
  v70 = *(v98 + 16);
  v71 = v96;
  v72 = v105;
  v73 = v99;
  v70(v96, v105, v99);
  v74 = v100;
  sub_21DF236C0(v63, v100, &qword_27CEA8120);
  v75 = v101;
  v70(v101, v71, v73);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8150);
  sub_21DF236C0(v74, &v75[*(v76 + 48)], &qword_27CEA8120);
  sub_21DF23614(v63, &qword_27CEA8120);
  v77 = *(v69 + 8);
  v77(v72, v73);
  sub_21DF23614(v74, &qword_27CEA8120);
  return (v77)(v71, v73);
}

uint64_t sub_21DF800CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v85 = a3;
  v4 = sub_21E13D344();
  v79 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v78 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v67 - v7;
  v9 = sub_21E13D994();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v11;
  v12 = type metadata accessor for FeedbackControlBar(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8120) - 8;
  MEMORY[0x28223BE20](v83);
  v84 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = &v67 - v17;
  v18 = type metadata accessor for SiriReaderCardView();
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v82 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - v22;
  v24 = sub_21E13DC14();
  (*(*(v24 - 8) + 16))(v23, a1, v24);
  v25 = *(v19 + 28);
  sub_21E13E754();
  v26 = sub_21E13E724();
  v80 = v23;
  *&v23[v25] = v26;
  v27 = &v23[*(v19 + 32)];
  v89 = 0x406C000000000000;
  sub_21E141704();
  v28 = v92;
  *v27 = v91;
  *(v27 + 1) = v28;
  (*(v86 + 104))(v11, *MEMORY[0x277D78F88], v87);
  v29 = sub_21DFAB430();
  v76 = v30;
  v77 = v29;
  v31 = type metadata accessor for CardContainer();
  v32 = v74;
  v33 = (v74 + *(v31 + 68));
  v91 = *v33;
  v92 = *(v33 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
  sub_21E1419F4();
  v73 = v89;
  v72 = v90;
  v34 = *(v32 + *(v31 + 28));
  swift_getKeyPath();
  v91 = v34;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v35 = (v34 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration);
  swift_beginAccess();
  LODWORD(v74) = *v35;
  v71 = v35[1];
  v70 = v35[2];
  v36 = *(v35 + 1);
  v37 = *(v35 + 2);
  v69 = v36;
  v67 = v37;
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v38 = v12[9];
  v68 = v12[8];
  v39 = v14 + v38;
  v88 = 0;

  sub_21E141704();
  v40 = v90;
  *v39 = v89;
  *(v39 + 1) = v40;
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v42 = v78;
  v41 = v79;
  v43 = *(v79 + 16);
  v43(v78, v8, v4);
  sub_21E141704();
  v44 = *(v41 + 8);
  v44(v8, v4);
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v43(v42, v8, v4);
  sub_21E141704();
  v44(v8, v4);
  v45 = v12[7];
  v46 = sub_21E13DF64();
  (*(*(v46 - 8) + 56))(v14 + v45, 1, 1, v46);
  v47 = v12[5];
  v49 = v86;
  v48 = v87;
  (*(v86 + 32))(v14 + v47, v75, v87);
  (*(v49 + 56))(v14 + v47, 0, 1, v48);
  v50 = (v14 + v12[6]);
  v51 = v76;
  *v50 = v77;
  v50[1] = v51;
  v52 = v14 + v12[12];
  *v52 = v73;
  *(v52 + 8) = v72;
  v53 = v14 + v12[13];
  *v53 = v74;
  v53[1] = v71;
  v53[2] = v70;
  v54 = v67;
  *(v53 + 1) = v69;
  *(v53 + 2) = v54;
  *(v14 + v68) = 0;
  sub_21DF8D698(&qword_27CEA7C20, type metadata accessor for FeedbackControlBar);
  v55 = v81;
  sub_21E141074();
  sub_21DF8C830(v14, type metadata accessor for FeedbackControlBar);
  LOBYTE(v14) = sub_21E140934();
  sub_21E13F374();
  v56 = v82;
  v57 = v55 + *(v83 + 44);
  *v57 = v14;
  *(v57 + 8) = v58;
  *(v57 + 16) = v59;
  *(v57 + 24) = v60;
  *(v57 + 32) = v61;
  *(v57 + 40) = 0;
  v62 = v80;
  sub_21DF8C7C8(v80, v56, type metadata accessor for SiriReaderCardView);
  v63 = v84;
  sub_21DF236C0(v55, v84, &qword_27CEA8120);
  v64 = v85;
  sub_21DF8C7C8(v56, v85, type metadata accessor for SiriReaderCardView);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8158);
  sub_21DF236C0(v63, v64 + *(v65 + 48), &qword_27CEA8120);
  sub_21DF23614(v55, &qword_27CEA8120);
  sub_21DF8C830(v62, type metadata accessor for SiriReaderCardView);
  sub_21DF23614(v63, &qword_27CEA8120);
  return sub_21DF8C830(v56, type metadata accessor for SiriReaderCardView);
}

uint64_t sub_21DF808D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v130 = a4;
  v129 = a3;
  v141 = a5;
  v137 = sub_21E13D344();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v133 = &v107 - v9;
  v145 = sub_21E13D994();
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for FeedbackControlBar(0);
  MEMORY[0x28223BE20](v132);
  v131 = (&v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8160) - 8;
  MEMORY[0x28223BE20](v139);
  v140 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v138 = &v107 - v14;
  v122 = sub_21E140614();
  v123 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CardContainer();
  v113 = *(v16 - 8);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16 - 8);
  v114 = v18;
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21E13DD04();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for EventLookupResultView();
  MEMORY[0x28223BE20](v24);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8168);
  v121 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v111 = &v107 - v27;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8170);
  *&v125 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v117 = &v107 - v28;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8178) - 8;
  MEMORY[0x28223BE20](v128);
  v134 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v142 = &v107 - v32;
  v33 = *(v21 + 16);
  v116 = a1;
  v33(v23, a1, v20, v31);
  v34 = *(a1 + *(type metadata accessor for EventExtractionResult(0) + 20));
  sub_21E13DD84();
  v35 = *MEMORY[0x277D791D0];
  v36 = sub_21E13DDC4();
  (*(*(v36 - 8) + 104))(v26, v35, v36);
  v37 = *(v17 + 36);
  v108 = v17;
  v38 = a2;
  v39 = *(a2 + v37);
  swift_getKeyPath();
  v127 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v151 = v39;
  v119 = v39;
  v126 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v40 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
  swift_beginAccess();
  v41 = *(v39 + v40);
  v115 = type metadata accessor for CardContainer;
  v109 = v19;
  sub_21DF8C7C8(a2, v19, type metadata accessor for CardContainer);
  v113 = *(v113 + 80);
  v42 = (v113 + 16) & ~v113;
  v110 = v42;
  v43 = swift_allocObject();
  v112 = type metadata accessor for CardContainer;
  sub_21DF8C494(v19, v43 + v42, type metadata accessor for CardContainer);
  v44 = &v26[v24[7]];
  LOBYTE(v149) = 0;

  sub_21E141704();
  v45 = v152;
  *v44 = v151;
  *(v44 + 1) = v45;
  v46 = &v26[v24[8]];
  LOBYTE(v149) = 0;
  sub_21E141704();
  v47 = v152;
  *v46 = v151;
  *(v46 + 1) = v47;
  v48 = v24[9];
  *&v26[v48] = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  *&v26[v24[5]] = v41;
  v49 = &v26[v24[6]];
  *v49 = sub_21DF8C690;
  v49[1] = v43;
  v151 = v129;
  *&v152 = v130;
  v50 = v118;
  sub_21E140334();
  v51 = sub_21DF8D698(&qword_27CEA8180, type metadata accessor for EventLookupResultView);
  v52 = MEMORY[0x277CDE2B8];
  v53 = v111;
  v54 = v122;
  sub_21E1410F4();
  (*(v123 + 8))(v50, v54);
  sub_21DF8C830(v26, type metadata accessor for EventLookupResultView);
  sub_21DF63C0C();
  v55 = type metadata accessor for SharedSuppressPostShutterAction();
  v151 = v24;
  *&v152 = v54;
  *(&v152 + 1) = v51;
  v153 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = sub_21DF8D698(&qword_27CEA77F0, type metadata accessor for SharedSuppressPostShutterAction);
  v58 = v117;
  v59 = v120;
  sub_21E140DF4();

  (*(v121 + 8))(v53, v59);
  v146 = v116;
  v147 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8130);
  v151 = v59;
  *&v152 = v55;
  *(&v152 + 1) = OpaqueTypeConformance2;
  v153 = v57;
  swift_getOpaqueTypeConformance2();
  sub_21DF8C5DC();
  v60 = v142;
  v61 = v124;
  sub_21E140DE4();
  (*(v125 + 8))(v58, v61);
  v62 = v108;
  v63 = v38 + *(v108 + 60);
  v64 = *v63;
  v65 = *(v63 + 8);
  LOBYTE(v151) = v64;
  *&v152 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  LOBYTE(v55) = v149;
  v66 = v109;
  sub_21DF8C7C8(v38, v109, v115);
  v67 = v110;
  v68 = swift_allocObject();
  sub_21DF8C494(v66, v68 + v67, v112);
  v69 = (v60 + *(v128 + 44));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8188);
  sub_21E1423D4();
  *(v69 + *(v70 + 40)) = v55;
  *v69 = &unk_21E148880;
  v69[1] = v68;
  (*(v143 + 104))(v144, *MEMORY[0x277D78F60], v145);
  v130 = sub_21DFAB7E8();
  v129 = v71;
  v72 = v38 + *(v62 + 76);
  v151 = *v72;
  v152 = *(v72 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
  sub_21E1419F4();
  v128 = v149;
  v125 = v150;
  swift_getKeyPath();
  v151 = v119;
  v73 = v119;
  sub_21E13D3C4();

  v74 = v73 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration;
  swift_beginAccess();
  LODWORD(v127) = *v74;
  LODWORD(v126) = v74[1];
  LODWORD(v124) = v74[2];
  v75 = *(v74 + 2);
  v123 = *(v74 + 1);
  v121 = v75;
  KeyPath = swift_getKeyPath();
  v77 = v131;
  *v131 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v78 = v132;
  v79 = *(v132 + 36);
  v122 = *(v132 + 32);
  v80 = v77 + v79;
  LOBYTE(v148) = 0;

  sub_21E141704();
  v81 = v150;
  *v80 = v149;
  *(v80 + 8) = v81;
  v82 = v133;
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v83 = v136;
  v84 = *(v136 + 16);
  v85 = v135;
  v86 = v137;
  v84(v135, v82, v137);
  sub_21E141704();
  v87 = *(v83 + 8);
  v87(v82, v86);
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v84(v85, v82, v86);
  sub_21E141704();
  v87(v82, v86);
  v88 = v78[7];
  v89 = sub_21E13DF64();
  (*(*(v89 - 8) + 56))(v77 + v88, 1, 1, v89);
  v90 = v78[5];
  v91 = v143;
  v92 = v145;
  (*(v143 + 32))(v77 + v90, v144, v145);
  (*(v91 + 56))(v77 + v90, 0, 1, v92);
  v93 = (v77 + v78[6]);
  v94 = v129;
  *v93 = v130;
  v93[1] = v94;
  v95 = v77 + v78[12];
  *v95 = v128;
  *(v95 + 8) = v125;
  v96 = v77 + v78[13];
  *v96 = v127;
  *(v96 + 1) = v126;
  *(v96 + 2) = v124;
  v97 = v121;
  *(v96 + 8) = v123;
  *(v96 + 16) = v97;
  *(v77 + v122) = 0;
  sub_21DF8D698(&qword_27CEA7C20, type metadata accessor for FeedbackControlBar);
  v98 = v138;
  sub_21E141074();
  sub_21DF8C830(v77, type metadata accessor for FeedbackControlBar);
  sub_21E13F6B4();
  v148 = 0;
  v149 = 0x4018000000000000;
  sub_21DF8C4FC();
  sub_21E13F6E4();
  sub_21E13F6C4();

  MEMORY[0x223D52580](v99, 0.5, 1.0, 0.0);
  sub_21E141D04();

  sub_21E13F6F4();

  sub_21E13F6B4();
  v148 = 0;
  v149 = 0x4018000000000000;
  sub_21E13F6E4();
  sub_21E13F6C4();

  v100 = sub_21E13F684();

  *(v98 + *(v139 + 44)) = v100;
  v101 = v142;
  v102 = v134;
  sub_21DF236C0(v142, v134, &qword_27CEA8178);
  v103 = v140;
  sub_21DF236C0(v98, v140, &qword_27CEA8160);
  v104 = v141;
  sub_21DF236C0(v102, v141, &qword_27CEA8178);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8190);
  sub_21DF236C0(v103, v104 + *(v105 + 48), &qword_27CEA8160);
  sub_21DF23614(v98, &qword_27CEA8160);
  sub_21DF23614(v101, &qword_27CEA8178);
  sub_21DF23614(v103, &qword_27CEA8160);
  return sub_21DF23614(v102, &qword_27CEA8178);
}

uint64_t sub_21DF81A94()
{
  type metadata accessor for CardContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  return sub_21E141724();
}

double sub_21DF81B08@<D0>(uint64_t a1@<X1>, unsigned int *a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_21E13D994();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(v9 + 104))(v12, *a2, v8, v10);
  v14 = a3(v13);
  v16 = v15;
  v17 = (a1 + *(type metadata accessor for CardContainer() + 68));
  v27 = *v17;
  v28 = *(v17 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
  sub_21E1419F4();
  v18 = v25;
  v19 = type metadata accessor for ReportAConcernButton(0);
  v20 = sub_21E13DF64();
  v24 = v26;
  (*(*(v20 - 8) + 56))(a4 + v19[6], 1, 1, v20);
  (*(v9 + 32))(a4, v12, v8);
  (*(v9 + 56))(a4, 0, 1, v8);
  v21 = (a4 + v19[5]);
  *v21 = v14;
  v21[1] = v16;
  v22 = a4 + v19[7];
  *v22 = v18;
  result = *&v24;
  *(v22 + 8) = v24;
  return result;
}

uint64_t sub_21DF81D00()
{
  v0[2] = sub_21E1423C4();
  v0[3] = sub_21E1423B4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21DF81DC0;

  return sub_21DF81F5C(2048000000000000000, 0);
}

uint64_t sub_21DF81DC0()
{

  v1 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DF81EFC, v1, v0);
}

uint64_t sub_21DF81EFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DF81F5C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E13F1B4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_21E142994();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_21E1423C4();
  v3[13] = sub_21E1423B4();
  v7 = sub_21E142364();
  v3[14] = v7;
  v3[15] = v6;

  return MEMORY[0x2822009F8](sub_21DF820B0, v7, v6);
}

uint64_t sub_21DF820B0()
{
  v1 = *(v0 + 48);
  v2 = (v1 + *(type metadata accessor for CardContainer() + 52));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  if (*(v0 + 144) == 1)
  {
    sub_21E142BB4();
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_21DF8220C;
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);

    return sub_21E077260(v7, v6, 0, 0, 1);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_21DF8220C()
{
  v2 = *v1;
  v2[17] = v0;

  v3 = v2[12];
  v4 = v2[11];
  v5 = v2[10];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[14];
    v7 = v2[15];
    v8 = sub_21DF82594;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[14];
    v7 = v2[15];
    v8 = sub_21DF823A4;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21DF823A4()
{
  v16 = v0;

  if (sub_21E142434())
  {
    sub_21E13EBE4();
    v1 = sub_21E13F1A4();
    v2 = sub_21E142544();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = sub_21E142C84();
      v11 = sub_21E0E08C0(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21DF05000, v1, v2, "CardContainer tried to auto-dismiss the sheet after %s, but the task was cancelled in the meantime. No-oping", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D540B0](v8, -1, -1);
      MEMORY[0x223D540B0](v7, -1, -1);
    }

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v12 = v0[6];
    *(swift_task_alloc() + 16) = v12;
    sub_21E141D64();
    sub_21E13F864();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_21DF82594()
{
  v16 = v0;

  if (sub_21E142434())
  {
    sub_21E13EBE4();
    v1 = sub_21E13F1A4();
    v2 = sub_21E142544();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = sub_21E142C84();
      v11 = sub_21E0E08C0(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21DF05000, v1, v2, "CardContainer tried to auto-dismiss the sheet after %s, but the task was cancelled in the meantime. No-oping", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D540B0](v8, -1, -1);
      MEMORY[0x223D540B0](v7, -1, -1);
    }

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v12 = v0[6];
    *(swift_task_alloc() + 16) = v12;
    sub_21E141D64();
    sub_21E13F864();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_21DF82784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v119 = a3;
  v98 = sub_21E13D7E4();
  v124 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v123 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = &v97 - v7;
  v105 = sub_21E13D344();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = &v97 - v10;
  v112 = sub_21E13D994();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for FeedbackControlBar(0);
  MEMORY[0x28223BE20](v107);
  v106 = (&v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8198);
  MEMORY[0x28223BE20](v13 - 8);
  v109 = &v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8160);
  v115 = *(v15 - 8);
  v116 = v15;
  MEMORY[0x28223BE20](v15);
  v108 = &v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA81A0);
  MEMORY[0x28223BE20](v17 - 8);
  v118 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v117 = &v97 - v20;
  v21 = sub_21E13D884();
  v120 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for VisualIntelligenceLookupView();
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v114 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v97 - v30;
  *v24 = a1;
  (*(v22 + 104))(v24, *MEMORY[0x277D78EE8], v21, v29);
  v99 = type metadata accessor for CardContainer();
  v32 = *(v99 + 40);
  v101 = a2;
  v33 = (a2 + v32);
  LODWORD(v122) = *v33;
  *&v121 = *(v33 + 1);
  LOBYTE(v126) = v122;
  *&v127 = v121;
  v100 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141734();
  v34 = v128;
  v35 = v129;
  v36 = BYTE8(v129);
  v37 = &v31[*(v26 + 32)];
  v126 = 0x4060400000000000;
  sub_21E141704();
  v38 = v128;
  v39 = v129;
  *v37 = v128;
  *(v37 + 1) = v39;
  v40 = v120;
  (*(v22 + 16))(v31, v24, v120);
  v41 = *(v26 + 28);
  v113 = v31;
  v42 = &v31[v41];
  *v42 = v34;
  *(v42 + 1) = v35;
  v42[16] = v36;
  v128 = v38;
  *&v129 = v39;
  v126 = 0x4060400000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141724();
  (*(v22 + 8))(v24, v40);
  LOBYTE(v128) = v122;
  *&v129 = v121;
  sub_21E141714();
  if (v126)
  {
    v43 = v117;
    (*(v115 + 56))(v117, 1, 1, v116);
  }

  else
  {
    (*(v111 + 104))(v110, *MEMORY[0x277D78F70], v112);
    v44 = v100;
    v45 = *(v100 + 16);
    v46 = MEMORY[0x277D84F90];
    if (v45)
    {
      v128 = MEMORY[0x277D84F90];
      sub_21DF5BFCC(0, v45, 0);
      v46 = v128;
      v122 = *(v124 + 16);
      *&v121 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v47 = v44 + v121;
      v120 = *(v124 + 72);
      v48 = (v124 + 8);
      v124 += 16;
      v49 = (v124 + 16);
      v50 = v98;
      v51 = v97;
      do
      {
        v52 = v123;
        v122(v123, v47, v50);
        sub_21E13D7D4();
        (*v48)(v52, v50);
        v128 = v46;
        v54 = *(v46 + 16);
        v53 = *(v46 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_21DF5BFCC(v53 > 1, v54 + 1, 1);
          v46 = v128;
        }

        *(v46 + 16) = v54 + 1;
        v55 = v120;
        (*v49)(v46 + v121 + v54 * v120, v51, v50);
        v47 += v55;
        --v45;
      }

      while (v45);
    }

    v56 = sub_21DFAB830(v46);
    v123 = v57;
    v124 = v56;

    v58 = v99;
    v59 = v101;
    v60 = v101 + *(v99 + 68);
    v128 = *v60;
    v129 = *(v60 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
    sub_21E1419F4();
    v122 = v126;
    v121 = v127;
    v61 = *(v59 + *(v58 + 28));
    swift_getKeyPath();
    v128 = v61;
    sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v62 = (v61 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration);
    swift_beginAccess();
    LODWORD(v120) = *v62;
    LODWORD(v101) = v62[1];
    LODWORD(v100) = v62[2];
    v63 = *(v62 + 2);
    v99 = *(v62 + 1);
    v97 = v63;
    KeyPath = swift_getKeyPath();
    v65 = v106;
    *v106 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
    swift_storeEnumTagMultiPayload();
    v66 = v107;
    v67 = *(v107 + 36);
    v98 = *(v107 + 32);
    v68 = v65 + v67;
    LOBYTE(v125) = 0;

    sub_21E141704();
    v69 = v127;
    *v68 = v126;
    *(v68 + 8) = v69;
    v70 = v102;
    _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
    v71 = v104;
    v72 = *(v104 + 16);
    v73 = v103;
    v74 = v105;
    v72(v103, v70, v105);
    sub_21E141704();
    v75 = *(v71 + 8);
    v75(v70, v74);
    _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
    v72(v73, v70, v74);
    sub_21E141704();
    v75(v70, v74);
    v76 = v66[7];
    v77 = sub_21E13DF64();
    (*(*(v77 - 8) + 56))(v65 + v76, 1, 1, v77);
    v78 = v66[5];
    v79 = v111;
    v80 = v112;
    (*(v111 + 32))(v65 + v78, v110, v112);
    (*(v79 + 56))(v65 + v78, 0, 1, v80);
    v81 = (v65 + v66[6]);
    v82 = v123;
    *v81 = v124;
    v81[1] = v82;
    v83 = v65 + v66[12];
    *v83 = v122;
    *(v83 + 8) = v121;
    v84 = v65 + v66[13];
    *v84 = v120;
    *(v84 + 1) = v101;
    *(v84 + 2) = v100;
    v85 = v97;
    *(v84 + 8) = v99;
    *(v84 + 16) = v85;
    *(v65 + v98) = 0;
    sub_21DF8D698(&qword_27CEA7C20, type metadata accessor for FeedbackControlBar);
    v86 = v109;
    sub_21E141074();
    sub_21DF8C830(v65, type metadata accessor for FeedbackControlBar);
    sub_21E13F6B4();
    v125 = 0;
    v126 = 0x4018000000000000;
    sub_21DF8C4FC();
    sub_21E13F6E4();
    sub_21E13F6C4();

    MEMORY[0x223D52580](v87, 0.5, 1.0, 0.0);
    sub_21E141D04();

    sub_21E13F6F4();

    sub_21E13F6B4();
    v125 = 0;
    v126 = 0x4018000000000000;
    sub_21E13F6E4();
    sub_21E13F6C4();

    v88 = sub_21E13F684();

    v89 = v108;
    sub_21DF3DE9C(v86, v108, &qword_27CEA8198);
    v90 = v116;
    v43 = v117;
    *(v89 + *(v116 + 36)) = v88;
    sub_21DF3DE9C(v89, v43, &qword_27CEA8160);
    (*(v115 + 56))(v43, 0, 1, v90);
  }

  v91 = v113;
  v92 = v114;
  sub_21DF8C7C8(v113, v114, type metadata accessor for VisualIntelligenceLookupView);
  v93 = v118;
  sub_21DF236C0(v43, v118, &qword_27CEA81A0);
  v94 = v119;
  sub_21DF8C7C8(v92, v119, type metadata accessor for VisualIntelligenceLookupView);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA81A8);
  sub_21DF236C0(v93, v94 + *(v95 + 48), &qword_27CEA81A0);
  sub_21DF23614(v43, &qword_27CEA81A0);
  sub_21DF8C830(v91, type metadata accessor for VisualIntelligenceLookupView);
  sub_21DF23614(v93, &qword_27CEA81A0);
  return sub_21DF8C830(v92, type metadata accessor for VisualIntelligenceLookupView);
}

uint64_t sub_21DF8358C()
{
  type metadata accessor for CardContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141724();
  return NewSaliencyModel.presentedEntity.setter(0);
}

uint64_t sub_21DF83620@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for CardContainer() + 28));
  swift_getKeyPath();
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v4 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    sub_21E13D3C4();

    v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v4 = *(v3 + v5);
  }

  swift_getKeyPath();
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v7 = *(v4 + v6);

  swift_getKeyPath();
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  v9 = *(v7 + v8);

  if (v9 == 5)
  {
    result = 0;
  }

  else
  {
    result = sub_21DF32F88(v9, 2u);
  }

  *a2 = result & 1;
  return result;
}

_BYTE *sub_21DF838B0(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    v4 = *(a4 + *(type metadata accessor for CardContainer() + 28));
    NewSaliencyModel.presentedEntity.setter(0);
    swift_getKeyPath();
    v9 = v4;
    sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    if (*(v4 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
    {
      v5 = *(v4 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
    }

    else
    {
      swift_getKeyPath();
      v9 = v4;
      sub_21E13D3C4();

      v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v5 = *(v4 + v6);
    }

    swift_getKeyPath();
    v8 = v5;
    sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

    sub_21E13D3C4();

    swift_beginAccess();

    v7 = 5;
    CardModel.onboardingExperience.setter(&v7);
  }

  return result;
}

uint64_t sub_21DF83AB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_21E13EEE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13D994();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D78F58], v7, v9);
  sub_21E13D954();
  (*(v8 + 8))(v11, v7);
  v12 = sub_21E13DFD4();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_21DF83CFC(v6, v2);
  sub_21DF23614(v2, &qword_27CEAC550);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21DF83CFC(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = sub_21E13EEE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13D994();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + *(type metadata accessor for CardContainer() + 28));
  v13 = *MEMORY[0x277D78F28];
  v19 = *(v9 + 104);
  v19(v11, v13, v8);

  sub_21E13D954();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v20 = a1;
  v14 = MEMORY[0x223D4F680](a1, v7);
  v15 = *(v5 + 8);
  v21 = v4;
  v15(v7, v4);
  if (v14)
  {
    v23 = v12;
    PartneredActionsManager.handlePartneredSearch(executionParameter:)();
  }

  else
  {
    v19(v11, *MEMORY[0x277D78F58], v8);
    sub_21E13D954();
    v18(v11, v8);
    v16 = MEMORY[0x223D4F680](v20, v7);
    v15(v7, v21);
    if (v16)
    {
      v23 = v12;
      PartneredActionsManager.handlePartneredAsk(executionParameter:)(v22);
    }
  }
}

double sub_21DF83F74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CardContainer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21E1401C4();
  v19 = 0;
  sub_21DF84140(v20);
  *&v18[39] = v20[2];
  *&v18[55] = v20[3];
  *&v18[71] = v20[4];
  *&v18[87] = v20[5];
  *&v18[7] = v20[0];
  *&v18[23] = v20[1];
  v8 = sub_21E141CC4();
  v10 = v9;
  sub_21DF8C7C8(a1, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CardContainer);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_21DF8C494(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for CardContainer);
  v13 = *&v18[32];
  *(a2 + 65) = *&v18[48];
  v14 = *&v18[80];
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = v14;
  result = *v18;
  v16 = *&v18[16];
  *(a2 + 17) = *v18;
  *(a2 + 33) = v16;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v17 = *&v18[95];
  *(a2 + 49) = v13;
  *(a2 + 112) = v17;
  *(a2 + 120) = sub_21DF8CD40;
  *(a2 + 128) = v12;
  *(a2 + 136) = v8;
  *(a2 + 144) = v10;
  return result;
}

uint64_t sub_21DF84140@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CardContainer();
  *&v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v11 = *(v1 + *(v10 + 36));
  swift_getKeyPath();
  v35 = v11;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v12 = *(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v35 = v11;
    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v12 = *(v11 + v13);
  }

  swift_getKeyPath();
  v34 = v12;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v15 = *(v12 + v14);

  swift_getKeyPath();
  v33 = v15;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  v17 = *(v15 + v16);

  if (v17 == 5)
  {
    KeyPath = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0uLL;
    v26 = 0uLL;
  }

  else
  {
    sub_21DF8C7C8(v2, v9, type metadata accessor for CardContainer);
    v27 = *(v29 + 80);
    *&v29 = v2;
    v28 = (v27 + 17) & ~v27;
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    sub_21DF8C494(v9, v21 + v28, type metadata accessor for CardContainer);
    sub_21DF8C7C8(v29, v6, type metadata accessor for CardContainer);
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    sub_21DF8C494(v6, v23 + v28, type metadata accessor for CardContainer);
    KeyPath = swift_getKeyPath();
    v32 = 0;
    v30 = 0;
    sub_21E141704();
    v29 = v31;
    v30 = 0;
    result = sub_21E141704();
    v25 = v29;
    v26 = v31;
    v24 = v32 | (v17 << 8);
    v22 = sub_21DF8D474;
    v20 = sub_21DF8D204;
  }

  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v24;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v22;
  *(a1 + 48) = v23;
  *(a1 + 56) = 0;
  *(a1 + 64) = v25;
  *(a1 + 80) = v26;
  return result;
}

uint64_t sub_21DF845B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a2;
  v6 = sub_21E13F734();
  v19 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CardContainer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21E1414A4();
  v20 = type metadata accessor for CardContainer;
  sub_21DF8C7C8(a2, v13, type metadata accessor for CardContainer);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v14 + v12 + *(v7 + 80)) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_21DF8C494(v13, v16 + v14, type metadata accessor for CardContainer);
  (*(v7 + 32))(v16 + v15, v9, v19);
  sub_21DF8C7C8(v21, v13, v20);
  v17 = swift_allocObject();
  result = sub_21DF8C494(v13, v17 + v14, type metadata accessor for CardContainer);
  *a3 = v22;
  a3[1] = sub_21DF8D0D8;
  a3[2] = v16;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = sub_21DF8DB20;
  a3[6] = 0;
  a3[7] = sub_21DF8D19C;
  a3[8] = v17;
  return result;
}

uint64_t sub_21DF84838()
{
  sub_21E13F714();
  type metadata accessor for CardContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  return sub_21E141724();
}

uint64_t sub_21DF848B8()
{
  type metadata accessor for CardContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  return sub_21E141724();
}

void sub_21DF84930(char a1, uint64_t a2)
{
  v4 = sub_21E1406F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for CardContainer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  if (a1 != 4)
  {
    if (a1 == 1)
    {
      MEMORY[0x28223BE20](v11);
      *&v14[-16] = a2;
      sub_21E141D64();
      sub_21E13F864();

      return;
    }

    if (a1)
    {
      return;
    }
  }

  MEMORY[0x28223BE20](v11);
  *&v14[-16] = a2;
  sub_21DF8C7C8(a2, &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CardContainer);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_21DF8C494(&v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for CardContainer);
  sub_21E141D64();
  sub_21E1406E4();
  sub_21E13F854();

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_21DF84CC4()
{
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21DF84D30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v18 - v1;
  v3 = sub_21E13EEE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13D994();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D78F58], v7, v9);
  sub_21E13D954();
  (*(v8 + 8))(v11, v7);
  v12 = *MEMORY[0x277D79318];
  v13 = sub_21E13E034();
  (*(*(v13 - 8) + 104))(v2, v12, v13);
  v14 = *MEMORY[0x277D792E0];
  v15 = sub_21E13DFD4();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v2, v14, v15);
  (*(v16 + 56))(v2, 0, 1, v15);
  sub_21DF83CFC(v6, v2);
  sub_21DF23614(v2, &qword_27CEAC550);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21DF85008(uint64_t a1)
{
  v11 = type metadata accessor for CardContainer();
  v12 = a1;
  v2 = *(a1 + *(v11 + 28));
  swift_getKeyPath();
  v17 = v2;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v4 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v17 = v2;
    sub_21E13D3C4();

    v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v4 = *(v2 + v5);
  }

  swift_getKeyPath();
  v16 = v4;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v7 = *(v4 + v6);

  swift_getKeyPath();
  v15 = v2;
  sub_21E13D3C4();

  if (!*(v2 + v3))
  {
    swift_getKeyPath();
    v15 = v2;
    sub_21E13D3C4();

    swift_beginAccess();
  }

  v14[0] = 8;

  NewEntityModel.cardLayout.setter(v14);

  LOBYTE(v14[0]) = 5;
  CardModel.onboardingExperience.setter(v14);
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  swift_beginAccess();
  if (*(v7 + v8))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[0] = v7;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();
  }

  else
  {
    *(v7 + v8) = 0;
  }

  v13[1] = *(v12 + *(v11 + 64) + 8);
  LOBYTE(v18) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141724();
  v13[0] = 0;
  v18 = 8;
  sub_21DF7C160(v13, &v18);
}

uint64_t sub_21DF85424(uint64_t a1)
{
  v61 = a1;
  v2 = sub_21E13E034();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v63 = v4;
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CardContainer();
  v6 = v5 - 8;
  v58 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v59 = v7;
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v57 - v9;
  v86 = sub_21E13EEB4();
  v80 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_21E13D994();
  v69 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v57 - v15;
  v91 = sub_21E13EEE4();
  v17 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v79 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + 36);
  v60 = v1;
  v20 = *(v1 + v19);
  swift_getKeyPath();
  v94 = v20;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v21 = *(v20 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v66 = v2;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    swift_getKeyPath();
    v94 = v20;
    sub_21E13D3C4();

    v23 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v22 = *(v20 + v23);
  }

  swift_getKeyPath();
  v93 = v22;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v24 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions;
  swift_beginAccess();
  v25 = *(v22 + v24);

  v65 = v3;
  if (v25 >> 62)
  {
LABEL_26:
    v90 = sub_21E1427B4();
  }

  else
  {
    v90 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v79;
  if (v90)
  {
    v27 = 0;
    v88 = v25 & 0xFFFFFFFFFFFFFF8;
    v89 = v25 & 0xC000000000000001;
    v87 = (v17 + 48);
    v84 = (v17 + 32);
    v83 = (v80 + 88);
    v82 = *MEMORY[0x277D79680];
    v81 = (v17 + 8);
    v74 = (v80 + 8);
    v73 = (v80 + 96);
    v72 = (v69 + 4);
    v71 = *MEMORY[0x277D78F70];
    v70 = (v69 + 13);
    ++v69;
    v28 = &qword_27CEA6D48;
    v29 = &unk_21E148070;
    v75 = v25;
    v68 = v16;
    do
    {
      if (v89)
      {
        v17 = MEMORY[0x223D530F0](v27, v25);
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_21:
          __break(1u);
        }
      }

      else
      {
        if (v27 >= *(v88 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v17 = *(v25 + 8 * v27 + 32);

        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_21;
        }
      }

      swift_getKeyPath();
      v31 = v28;
      v32 = v29;
      v92 = v17;
      sub_21DF8D698(&qword_280F6B830, type metadata accessor for NewActionModel);
      sub_21E13D3C4();

      v33 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
      swift_beginAccess();
      v34 = v17 + v33;
      v28 = v31;
      sub_21DF236C0(v34, v16, v31);
      if ((*v87)(v16, 1, v91) == 1)
      {

        sub_21DF23614(v16, v31);
      }

      else
      {
        (*v84)(v26, v16, v91);
        v35 = v85;
        sub_21E13EEC4();
        v36 = v35;
        v37 = v35;
        v38 = v86;
        v39 = (*v83)(v37, v86);
        if (v39 == v82)
        {
          (*v73)(v36, v38);
          v40 = v76;
          v41 = v78;
          (*v72)(v76, v36, v78);
          v42 = v77;
          (*v70)(v77, v71, v41);
          LODWORD(v80) = MEMORY[0x223D4E180](v40, v42);
          v43 = *v69;
          (*v69)(v42, v41);
          v44 = v40;
          v26 = v79;
          v43(v44, v41);
          (*v81)(v26, v91);
          if (v80)
          {

            v46 = sub_21E1423F4();
            (*(*(v46 - 8) + 56))(v67, 1, 1, v46);
            v47 = v62;
            sub_21DF8C7C8(v60, v62, type metadata accessor for CardContainer);
            v48 = v65;
            v49 = v64;
            v50 = v66;
            (*(v65 + 16))(v64, v61, v66);
            sub_21E1423C4();

            v51 = sub_21E1423B4();
            v52 = (*(v58 + 80) + 32) & ~*(v58 + 80);
            v53 = (v59 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
            v54 = (*(v48 + 80) + v53 + 8) & ~*(v48 + 80);
            v55 = swift_allocObject();
            v56 = MEMORY[0x277D85700];
            *(v55 + 16) = v51;
            *(v55 + 24) = v56;
            sub_21DF8C494(v47, v55 + v52, type metadata accessor for CardContainer);
            *(v55 + v53) = v17;
            (*(v48 + 32))(v55 + v54, v49, v50);
            sub_21E0C2E04(0, 0, v67, &unk_21E148910, v55);
          }

          v16 = v68;
          v25 = v75;
        }

        else
        {
          (*v81)(v26, v91);

          (*v74)(v36, v38);
        }

        v28 = v31;
        v29 = v32;
      }

      ++v27;
    }

    while (v30 != v90);
  }
}

uint64_t sub_21DF85F50(unsigned __int8 a1, uint64_t a2)
{
  v4 = sub_21E1406F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for CardContainer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  if (a1 >= 4u)
  {
  }

  else
  {
    v11 = sub_21E142B14();

    if ((v11 & 1) == 0)
    {
      MEMORY[0x28223BE20](v12);
      *&v16[-16] = a2;
      sub_21E141D64();
      sub_21E13F864();
    }
  }

  MEMORY[0x28223BE20](v12);
  *&v16[-16] = a2;
  sub_21DF8C7C8(a2, &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CardContainer);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  sub_21DF8C494(&v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for CardContainer);
  sub_21E141D64();
  sub_21E1406E4();
  sub_21E13F854();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21DF862C8(uint64_t a1, unsigned int *a2)
{
  v3 = sub_21E13E034();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *a2, v3, v5);
  sub_21DF85424(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21DF863C0(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for CardContainer() + 28));
  swift_getKeyPath();
  v7 = v1;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v2 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v7 = v1;
    sub_21E13D3C4();

    v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v2 = *(v1 + v3);
  }

  swift_getKeyPath();
  v6 = v2;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  v5 = 5;
  CardModel.onboardingExperience.setter(&v5);
}

uint64_t sub_21DF865AC()
{
  v0 = sub_21E140124();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v8 - v5;
  sub_21DF64180(v8 - v5);
  type metadata accessor for CardContainer();
  (*(v1 + 16))(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);
  sub_21E141724();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_21DF866F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  v6 = sub_21E13F1B4();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  v5[33] = swift_task_alloc();
  v7 = sub_21E13EEE4();
  v5[34] = v7;
  v5[35] = *(v7 - 8);
  v5[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  v5[37] = swift_task_alloc();
  sub_21E1423C4();
  v5[38] = sub_21E1423B4();
  v9 = sub_21E142364();
  v5[39] = v9;
  v5[40] = v8;

  return MEMORY[0x2822009F8](sub_21DF868B8, v9, v8);
}

uint64_t sub_21DF868B8()
{
  v1 = *(v0 + 224);
  v2 = type metadata accessor for CardContainer();
  v3 = *(v1 + *(v2 + 28));
  *(v0 + 328) = v3;
  swift_getKeyPath();
  *(v0 + 168) = v3;
  *(v0 + 336) = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *(v0 + 344) = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v5 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 176) = v3;
    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v5 = *(v3 + v6);
  }

  v7 = *(v0 + 232);

  LOBYTE(v7) = NewSaliencyModel.isPerformingAction(_:for:)(v7, v5);

  if (v7)
  {

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 184) = v3;
    sub_21E13D3C4();

    if (*(v3 + v4))
    {
      v10 = *(v3 + v4);
    }

    else
    {
      swift_getKeyPath();
      *(v0 + 192) = v3;
      sub_21E13D3C4();

      v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v10 = *(v3 + v11);
    }

    *(v0 + 352) = v10;
    v12 = (*(v0 + 224) + *(v2 + 64));
    v13 = *v12;
    *(v0 + 387) = *v12;
    v14 = *(v12 + 1);
    *(v0 + 360) = v14;
    *(v0 + 136) = v13;
    *(v0 + 144) = v14;

    *(v0 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    sub_21E141714();
    v15 = *(v0 + 296);
    if (*(v0 + 384) == 1)
    {
      v16 = *MEMORY[0x277D79318];
      v17 = sub_21E13E034();
      (*(*(v17 - 8) + 104))(v15, v16, v17);
      v18 = *MEMORY[0x277D792E0];
      v19 = sub_21E13DFD4();
      v20 = *(v19 - 8);
      (*(v20 + 104))(v15, v18, v19);
      (*(v20 + 56))(v15, 0, 1, v19);
    }

    else
    {
      v21 = sub_21E13DFD4();
      (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    }

    *(v0 + 385) = 7;
    v22 = swift_task_alloc();
    *(v0 + 376) = v22;
    *v22 = v0;
    v22[1] = sub_21DF86D40;
    v23 = *(v0 + 296);
    v24 = *(v0 + 232);

    return NewSaliencyModel.performAction(_:from:executionParameter:updatesPresentation:analyticsSource:)(v24, v10, v23, 0, (v0 + 385));
  }
}

uint64_t sub_21DF86D40()
{
  v1 = *v0;
  v2 = *(*v0 + 296);

  sub_21DF23614(v2, &qword_27CEAC550);
  v3 = *(v1 + 320);
  v4 = *(v1 + 312);

  return MEMORY[0x2822009F8](sub_21DF86EB0, v4, v3);
}

uint64_t sub_21DF86EB0()
{
  v30 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 232);

  swift_getKeyPath();
  *(v0 + 200) = v4;
  sub_21DF8D698(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(v4 + v5, v3, &qword_27CEA6D48);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21DF23614(*(v0 + 264), &qword_27CEA6D48);
    sub_21E13EC34();

    v6 = sub_21E13F1A4();
    v7 = sub_21E142564();

    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 248);
    v9 = *(v0 + 256);
    v11 = *(v0 + 240);
    if (v8)
    {
      v12 = *(v0 + 232);
      v25 = v7;
      v13 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v13 = 136315138;
      swift_getKeyPath();
      v26 = v9;
      *(v0 + 208) = v12;
      sub_21E13D3C4();

      swift_beginAccess();
      v15 = *(v12 + 56);
      v14 = *(v12 + 64);

      v16 = sub_21E0E08C0(v15, v14, &v27);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_21DF05000, v6, v25, "No pill present for search action %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223D540B0](v24, -1, -1);
      MEMORY[0x223D540B0](v13, -1, -1);

      (*(v10 + 8))(v26, v11);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }
  }

  else
  {
    v17 = *(v0 + 328);
    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    v20 = *(v0 + 272);
    (*(v19 + 32))(v18, *(v0 + 264), v20);
    swift_getKeyPath();
    *(v0 + 216) = v17;
    sub_21E13D3C4();

    swift_beginAccess();

    ActionPin.Pill.analyticsAction()();
    v29 = 7;
    sub_21E0F8C08(&v28, &v29);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 360);
  *(v0 + 152) = *(v0 + 387);
  *(v0 + 160) = v21;
  *(v0 + 386) = 0;
  sub_21E141724();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21DF872BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_21E13E034();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  v6[13] = swift_task_alloc();
  sub_21E1423C4();
  v6[14] = sub_21E1423B4();
  v9 = sub_21E142364();
  v6[15] = v9;
  v6[16] = v8;

  return MEMORY[0x2822009F8](sub_21DF873EC, v9, v8);
}

uint64_t sub_21DF873EC()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + *(type metadata accessor for CardContainer() + 28));
  swift_getKeyPath();
  *(v0 + 40) = v2;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v3 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 48) = v2;
    sub_21E13D3C4();

    swift_beginAccess();
  }

  v18 = v3;
  *(v0 + 136) = v3;
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  (*(v7 + 16))(v5, *(v0 + 72), v6);
  v8 = *MEMORY[0x277D792E0];
  v9 = sub_21E13DFD4();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v5, v8, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  *(v0 + 184) = *MEMORY[0x277D79310];
  v11 = *(v7 + 104);
  *(v0 + 144) = v11;
  *(v0 + 152) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v4);
  sub_21DF8D698(qword_27CEA81F0, MEMORY[0x277D79320]);

  v12 = sub_21E142074();
  v13 = *(v7 + 8);
  *(v0 + 160) = v13;
  *(v0 + 168) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v4, v6);
  *(v0 + 188) = 9;
  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  *v14 = v0;
  v14[1] = sub_21DF8772C;
  v15 = *(v0 + 104);
  v16 = *(v0 + 64);

  return NewSaliencyModel.performAction(_:from:executionParameter:updatesPresentation:analyticsSource:)(v16, v18, v15, (v12 & 1) == 0, (v0 + 188));
}

uint64_t sub_21DF8772C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  sub_21DF23614(v2, &qword_27CEAC550);
  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_21DF8789C, v4, v3);
}

uint64_t sub_21DF8789C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 184);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);

  v2(v4, v3, v5);
  LOBYTE(v3) = sub_21E13E024();
  v1(v4, v5);
  if (v3)
  {
    v6 = *(v0 + 56);
    *(swift_task_alloc() + 16) = v6;
    sub_21E141D64();
    sub_21E13F864();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t CardContainer.dismissed(with:request:)(uint64_t a1)
{
  v67 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  MEMORY[0x28223BE20](v2 - 8);
  v63 = &v48 - v3;
  v64 = sub_21E13EEE4();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13D994();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13D264();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21E13EF54();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_21E13FF94();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21E13F1B4();
  v11 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = sub_21E13EF94();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v1;
  v68 = v1;
  sub_21E141D64();
  sub_21E13F864();

  (*(v21 + 16))(v23, v67, v20);
  v24 = (*(v21 + 88))(v23, v20);
  if (v24 == *MEMORY[0x277D0D810] || v24 == *MEMORY[0x277D0D820])
  {
    sub_21E13EC04();
    v29 = sub_21E13F1A4();
    v30 = sub_21E142584();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21DF05000, v29, v30, "User has exited Generative Assistant set up.", v31, 2u);
      MEMORY[0x223D540B0](v31, -1, -1);
    }

    return (*(v11 + 8))(v19, v66);
  }

  else
  {
    if (v24 == *MEMORY[0x277D0D7F0])
    {
      sub_21E13EC04();
      v25 = sub_21E13F1A4();
      v26 = sub_21E142584();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_21DF05000, v25, v26, "Opening Generative Assistant settings since the user has an account…", v27, 2u);
        MEMORY[0x223D540B0](v27, -1, -1);
      }

      (*(v11 + 8))(v13, v66);
      v28 = *v65;
      if (*(v65 + 16) == 1)
      {
      }

      else
      {

        sub_21E142574();
        v36 = sub_21E1408C4();
        sub_21E13F184();

        v37 = v49;
        sub_21E13FF84();
        swift_getAtKeyPath();
        sub_21DF446B8();
        (*(v50 + 8))(v37, v51);
        v28 = v69;
      }

      v38 = v53;
      v39 = v52;
      v40 = v54;
      (*(v53 + 104))(v52, *MEMORY[0x277D0D758], v54);
      v41 = v55;
      sub_21E13EF44();
      (*(v38 + 8))(v39, v40);
      LOBYTE(v69) = 1;
      v28(v41, &v69);

      (*(v56 + 8))(v41, v57);
LABEL_17:
      v42 = v58;
      v43 = v59;
      v44 = v60;
      (*(v59 + 104))(v58, *MEMORY[0x277D78F58], v60);
      v45 = v61;
      sub_21E13D954();
      (*(v43 + 8))(v42, v44);
      v46 = sub_21E13DFD4();
      v47 = v63;
      (*(*(v46 - 8) + 56))(v63, 1, 1, v46);
      sub_21DF83CFC(v45, v47);
      sub_21DF23614(v47, &qword_27CEAC550);
      return (*(v62 + 8))(v45, v64);
    }

    if (v24 == *MEMORY[0x277D0D808])
    {
      sub_21E13EC04();
      v33 = sub_21E13F1A4();
      v34 = sub_21E142584();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_21DF05000, v33, v34, "Generative Assistant has been enabled without an account", v35, 2u);
        MEMORY[0x223D540B0](v35, -1, -1);
      }

      (*(v11 + 8))(v16, v66);
      sub_21E13EF74();
      sub_21E13EF64();
      goto LABEL_17;
    }

    return (*(v21 + 8))(v23, v20);
  }
}

uint64_t sub_21DF88300(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for CardContainer() + 28));
  swift_getKeyPath();
  v7 = v1;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v2 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v7 = v1;
    sub_21E13D3C4();

    v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v2 = *(v1 + v3);
  }

  swift_getKeyPath();
  v6 = v2;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  v5 = 5;
  CardModel.onboardingExperience.setter(&v5);

  return NewSaliencyModel.presentedEntity.setter(0);
}

float sub_21DF88504@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF8D698(&qword_280F6C000, type metadata accessor for SheetModel);
  sub_21E13D3C4();

  swift_beginAccess();
  result = *(v3 + 32);
  *a2 = result;
  return result;
}

unint64_t sub_21DF8861C()
{
  result = qword_27CEA7998;
  if (!qword_27CEA7998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7920);
    sub_21DF886A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7998);
  }

  return result;
}

unint64_t sub_21DF886A8()
{
  result = qword_27CEA79A0;
  if (!qword_27CEA79A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7990);
    sub_21DF23E5C(&qword_27CEA79A8, &qword_27CEA79B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA79A0);
  }

  return result;
}

unint64_t sub_21DF88760()
{
  result = qword_27CEA79B8;
  if (!qword_27CEA79B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7920);
    sub_21DF8861C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21DF8D698(&qword_27CEA79C0, type metadata accessor for PresentationSheetAssistantModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA79B8);
  }

  return result;
}

uint64_t sub_21DF888F0(int64_t *a1, unint64_t *a2)
{
  v5 = *(type metadata accessor for CardContainer() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21DF7BDC8(a1, a2, v6);
}

unint64_t sub_21DF88970()
{
  result = qword_27CEA79C8;
  if (!qword_27CEA79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA79C8);
  }

  return result;
}

uint64_t sub_21DF889C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CardContainer() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21DF7CC30(a1, a2, v6);
}

unint64_t sub_21DF88A44(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for CardContainer() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21DF7E108(a1, a2, v6);
}

uint64_t sub_21DF88AC4()
{
  type metadata accessor for CardContainer();

  return sub_21DF7E55C();
}

unint64_t sub_21DF88B44()
{
  result = qword_27CEA79E0;
  if (!qword_27CEA79E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7968);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7958);
    sub_21E140124();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7940);
    sub_21DF88760();
    swift_getOpaqueTypeConformance2();
    sub_21DF3D110();
    swift_getOpaqueTypeConformance2();
    sub_21DF88970();
    swift_getOpaqueTypeConformance2();
    sub_21DF8D698(&qword_27CEA79D0, MEMORY[0x277CDDE90]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21DF26A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA79E0);
  }

  return result;
}

void sub_21DF88E1C()
{
  sub_21DF890E8(319, &qword_280F69020, &qword_27CEA79E8, &unk_21E14EA10, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21DF8914C(319, &qword_280F69030, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21DF890E8(319, &qword_280F69050, &qword_27CEA79F0, &unk_21E147F90, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for NewSaliencyModel();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SheetTrackingAssistant();
          if (v4 <= 0x3F)
          {
            sub_21DF48E78(319, &qword_280F68D70);
            if (v5 <= 0x3F)
            {
              sub_21DF48E78(319, &qword_280F68D48);
              if (v6 <= 0x3F)
              {
                sub_21DF8914C(319, &qword_280F68D60, MEMORY[0x277CDDE90], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_21DF890E8(319, &qword_280F68D40, &qword_27CEA7910, &unk_21E147D10, MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    sub_21DF48E78(319, &qword_280F68D50);
                    if (v9 <= 0x3F)
                    {
                      sub_21DF48E78(319, &qword_280F68D38);
                      if (v10 <= 0x3F)
                      {
                        sub_21DF8914C(319, &qword_280F68D08, type metadata accessor for FeedbackController, MEMORY[0x277CE11F8]);
                        if (v11 <= 0x3F)
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
      }
    }
  }
}

void sub_21DF890E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21DF8914C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_21DF8928C(uint64_t a1)
{
  v4 = *(type metadata accessor for CardContainer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21DF8DAF8;

  return sub_21DF866F8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21DF893B4(uint64_t a1)
{
  v4 = *(type metadata accessor for CardContainer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21DF7EE40(a1, v6, v7, v1 + v5);
}

uint64_t sub_21DF894A4(uint64_t a1)
{
  v4 = *(type metadata accessor for CardContainer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21DF7BD30(a1, v6, v7, v1 + v5);
}

uint64_t sub_21DF89594(uint64_t a1)
{
  v4 = *(type metadata accessor for CardContainer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21DF7BD30(a1, v6, v7, v1 + v5);
}

unint64_t sub_21DF89684()
{
  result = qword_27CEA7A48;
  if (!qword_27CEA7A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7A40);
    sub_21DF89710();
    sub_21DF898D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7A48);
  }

  return result;
}

unint64_t sub_21DF89710()
{
  result = qword_27CEA7A50;
  if (!qword_27CEA7A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7A58);
    sub_21DF8979C();
    sub_21DF89880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7A50);
  }

  return result;
}

unint64_t sub_21DF8979C()
{
  result = qword_27CEA7A60;
  if (!qword_27CEA7A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7A68);
    sub_21DF23E5C(&qword_27CEA7A70, &qword_27CEA7A78);
    sub_21DF23E5C(&qword_27CEA7A80, &qword_27CEA7A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7A60);
  }

  return result;
}

unint64_t sub_21DF89880()
{
  result = qword_280F69D00;
  if (!qword_280F69D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F69D00);
  }

  return result;
}

unint64_t sub_21DF898D4()
{
  result = qword_27CEA7A90;
  if (!qword_27CEA7A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7A98);
    sub_21DF44860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7A90);
  }

  return result;
}

unint64_t sub_21DF89960()
{
  result = qword_27CEA7AB0;
  if (!qword_27CEA7AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7A28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7A18);
    sub_21DF89A28();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7AB0);
  }

  return result;
}

unint64_t sub_21DF89A28()
{
  result = qword_27CEA7AB8;
  if (!qword_27CEA7AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7A18);
    sub_21DF89AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7AB8);
  }

  return result;
}

unint64_t sub_21DF89AB4()
{
  result = qword_27CEA7AC0;
  if (!qword_27CEA7AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AC8);
    sub_21DF23E5C(&qword_27CEA7AD0, &qword_27CEA7AD8);
    sub_21DF23E5C(&qword_27CEA7AE0, &qword_27CEA7AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7AC0);
  }

  return result;
}

unint64_t sub_21DF89B98()
{
  result = qword_27CEA7B30;
  if (!qword_27CEA7B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B38);
    sub_21DF89C68();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7BB8);
    sub_21DF8A174();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7B30);
  }

  return result;
}

unint64_t sub_21DF89C68()
{
  result = qword_27CEA7B40;
  if (!qword_27CEA7B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B50);
    sub_21DF89D68();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B68);
    sub_21DF89E24();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7B40);
  }

  return result;
}

unint64_t sub_21DF89D68()
{
  result = qword_27CEA7B58;
  if (!qword_27CEA7B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B50);
    sub_21DF8D698(&qword_27CEA7B60, type metadata accessor for ScrollableSegmentedControl);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7B58);
  }

  return result;
}

unint64_t sub_21DF89E24()
{
  result = qword_27CEA7B70;
  if (!qword_27CEA7B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B68);
    sub_21DF89EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7B70);
  }

  return result;
}

unint64_t sub_21DF89EB0()
{
  result = qword_27CEA7B78;
  if (!qword_27CEA7B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B80);
    sub_21DF89F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7B78);
  }

  return result;
}

unint64_t sub_21DF89F3C()
{
  result = qword_27CEA7B88;
  if (!qword_27CEA7B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B90);
    sub_21DF89FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7B88);
  }

  return result;
}

unint64_t sub_21DF89FC8()
{
  result = qword_27CEA7B98;
  if (!qword_27CEA7B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7BA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7BA8);
    sub_21DF8A0BC();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DD8, &qword_27CEA73A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7B98);
  }

  return result;
}

unint64_t sub_21DF8A0BC()
{
  result = qword_27CEA7BB0;
  if (!qword_27CEA7BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7BA8);
    sub_21DF4275C();
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7BB0);
  }

  return result;
}

unint64_t sub_21DF8A174()
{
  result = qword_27CEA7BC0;
  if (!qword_27CEA7BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7BB8);
    sub_21DF23E5C(&qword_27CEA7BC8, &qword_27CEA7BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7BC0);
  }

  return result;
}

unint64_t sub_21DF8A22C()
{
  result = qword_27CEA7BD8;
  if (!qword_27CEA7BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7BE0);
    sub_21DF8A2EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7BD8);
  }

  return result;
}

unint64_t sub_21DF8A2EC()
{
  result = qword_27CEA7BE8;
  if (!qword_27CEA7BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7BE0);
    sub_21DF8A3A4();
    sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7BE8);
  }

  return result;
}

unint64_t sub_21DF8A3A4()
{
  result = qword_27CEA7BF0;
  if (!qword_27CEA7BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7BF8);
    sub_21DF8A460();
    sub_21DF8D698(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7BF0);
  }

  return result;
}

unint64_t sub_21DF8A460()
{
  result = qword_27CEA7C00;
  if (!qword_27CEA7C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7C08);
    sub_21DF8A51C();
    sub_21DF8D698(&qword_27CEA73D8, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7C00);
  }

  return result;
}

unint64_t sub_21DF8A51C()
{
  result = qword_27CEA7C10;
  if (!qword_27CEA7C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7C18);
    sub_21DF8D698(&qword_27CEA7C20, type metadata accessor for FeedbackControlBar);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7C10);
  }

  return result;
}

unint64_t sub_21DF8A5D8()
{
  result = qword_27CEA7C28;
  if (!qword_27CEA7C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AA8);
    sub_21DF89960();
    sub_21DF23E5C(&qword_27CEA7C30, &qword_27CEA7C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7C28);
  }

  return result;
}

unint64_t sub_21DF8A698()
{
  result = qword_27CEA7C50;
  if (!qword_27CEA7C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7C48);
    sub_21DF23E5C(&qword_27CEA7C58, &qword_27CEA7C60);
    sub_21DF23E5C(&qword_27CEA7C68, &qword_27CEA7C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7C50);
  }

  return result;
}

unint64_t sub_21DF8A78C()
{
  result = qword_27CEA7CC0;
  if (!qword_27CEA7CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7CA8);
    sub_21DF89D68();
    sub_21DF8A818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7CC0);
  }

  return result;
}

unint64_t sub_21DF8A818()
{
  result = qword_27CEA7CC8;
  if (!qword_27CEA7CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7C98);
    sub_21DF8A8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7CC8);
  }

  return result;
}

unint64_t sub_21DF8A8A4()
{
  result = qword_27CEA7CD0;
  if (!qword_27CEA7CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7C90);
    sub_21DF8A930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7CD0);
  }

  return result;
}

unint64_t sub_21DF8A930()
{
  result = qword_27CEA7CD8;
  if (!qword_27CEA7CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7BA8);
    sub_21DF8A0BC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7CD8);
  }

  return result;
}

unint64_t sub_21DF8AA1C()
{
  result = qword_27CEA7D00;
  if (!qword_27CEA7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7D00);
  }

  return result;
}

uint64_t objectdestroy_124Tm()
{
  v1 = type metadata accessor for CardContainer();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_21DF446B8();
  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E140894();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  j__swift_release();

  v7 = v4 + v1[11];
  v8 = sub_21E140124();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);

  if (*(v0 + v3) >= 9uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DF8ACF0()
{
  v1 = *(type metadata accessor for CardContainer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_21DF7A554(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_21DF8AD70()
{
  result = qword_27CEA7D60;
  if (!qword_27CEA7D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7D50);
    sub_21DF23E5C(&qword_27CEA7D68, &qword_27CEA7D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7D60);
  }

  return result;
}

unint64_t sub_21DF8AE28()
{
  result = qword_27CEA7D78;
  if (!qword_27CEA7D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7D58);
    sub_21DF8AEE0();
    sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7D78);
  }

  return result;
}

unint64_t sub_21DF8AEE0()
{
  result = qword_27CEA7D80;
  if (!qword_27CEA7D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7D88);
    sub_21DF8AF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7D80);
  }

  return result;
}

unint64_t sub_21DF8AF6C()
{
  result = qword_27CEA7D90;
  if (!qword_27CEA7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7D90);
  }

  return result;
}

uint64_t sub_21DF8AFD8@<X0>(void *a1@<X8>)
{
  type metadata accessor for CardContainer();

  return sub_21DF6545C(a1);
}

uint64_t sub_21DF8B04C()
{
  type metadata accessor for CardContainer();

  return sub_21DF654CC();
}

unint64_t sub_21DF8B0C0()
{
  result = qword_27CEA7F90;
  if (!qword_27CEA7F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7DE8);
    sub_21DF8B14C();
    sub_21DF8B2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7F90);
  }

  return result;
}

unint64_t sub_21DF8B14C()
{
  result = qword_27CEA7F98;
  if (!qword_27CEA7F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7DD8);
    sub_21DF23E5C(&qword_27CEA7FA0, &qword_27CEA7DE0);
    sub_21DF8B204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7F98);
  }

  return result;
}

unint64_t sub_21DF8B204()
{
  result = qword_27CEA7FA8;
  if (!qword_27CEA7FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7F48);
    sub_21DF8D698(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7FA8);
  }

  return result;
}

unint64_t sub_21DF8B2C0()
{
  result = qword_27CEA7FB8;
  if (!qword_27CEA7FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7EC8);
    sub_21DF8B37C();
    sub_21DF8D698(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7FB8);
  }

  return result;
}

unint64_t sub_21DF8B37C()
{
  result = qword_27CEA7FC0;
  if (!qword_27CEA7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7FC0);
  }

  return result;
}

unint64_t sub_21DF8B3D0()
{
  result = qword_27CEA7FD0;
  if (!qword_27CEA7FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7F88);
    sub_21DF8B45C();
    sub_21DF8BB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7FD0);
  }

  return result;
}

unint64_t sub_21DF8B45C()
{
  result = qword_27CEA7FD8;
  if (!qword_27CEA7FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7F80);
    sub_21DF8B4E8();
    sub_21DF8B600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7FD8);
  }

  return result;
}

unint64_t sub_21DF8B4E8()
{
  result = qword_27CEA7FE0;
  if (!qword_27CEA7FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7F78);
    sub_21DF8B574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7FE0);
  }

  return result;
}

unint64_t sub_21DF8B574()
{
  result = qword_27CEA7FE8;
  if (!qword_27CEA7FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7F50);
    sub_21DF8B204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7FE8);
  }

  return result;
}

unint64_t sub_21DF8B600()
{
  result = qword_27CEA7FF0;
  if (!qword_27CEA7FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7F00);
    sub_21DF8B6B8(&qword_27CEA7FF8, &qword_27CEA7F40, &unk_21E148628, sub_21DF8B734);
    sub_21DF8B95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7FF0);
  }

  return result;
}

uint64_t sub_21DF8B6B8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DF8B734()
{
  result = qword_27CEA8000;
  if (!qword_27CEA8000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8008);
    sub_21DF8B7C0();
    sub_21DF8B204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8000);
  }

  return result;
}

unint64_t sub_21DF8B7C0()
{
  result = qword_27CEA8010;
  if (!qword_27CEA8010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7F38);
    sub_21DF8B204();
    sub_21DF8B84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8010);
  }

  return result;
}

unint64_t sub_21DF8B84C()
{
  result = qword_27CEA8018;
  if (!qword_27CEA8018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7F20);
    sub_21DF8B8D8();
    sub_21DF8B204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8018);
  }

  return result;
}

unint64_t sub_21DF8B8D8()
{
  result = qword_27CEA8020;
  if (!qword_27CEA8020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7F18);
    sub_21DF8B204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8020);
  }

  return result;
}

unint64_t sub_21DF8B95C()
{
  result = qword_27CEA8028;
  if (!qword_27CEA8028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7EF0);
    sub_21DF8B9E8();
    sub_21DF8B2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8028);
  }

  return result;
}

unint64_t sub_21DF8B9E8()
{
  result = qword_27CEA8030;
  if (!qword_27CEA8030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7EE0);
    sub_21DF23E5C(&qword_27CEA8038, &qword_27CEA7EE8);
    sub_21DF8BAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8030);
  }

  return result;
}

unint64_t sub_21DF8BAA0()
{
  result = qword_27CEA8040;
  if (!qword_27CEA8040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8048);
    sub_21DF8BB2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8040);
  }

  return result;
}

unint64_t sub_21DF8BB2C()
{
  result = qword_27CEA8050;
  if (!qword_27CEA8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8050);
  }

  return result;
}

unint64_t sub_21DF8BB80()
{
  result = qword_27CEA8058;
  if (!qword_27CEA8058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7EA0);
    sub_21DF8BC0C();
    sub_21DF8BEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8058);
  }

  return result;
}

unint64_t sub_21DF8BC0C()
{
  result = qword_27CEA8060;
  if (!qword_27CEA8060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7E98);
    sub_21DF8BC98();
    sub_21DF8BDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8060);
  }

  return result;
}

unint64_t sub_21DF8BC98()
{
  result = qword_27CEA8068;
  if (!qword_27CEA8068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7EC0);
    sub_21DF8BD24();
    sub_21DF8B204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8068);
  }

  return result;
}

unint64_t sub_21DF8BD24()
{
  result = qword_27CEA8070;
  if (!qword_27CEA8070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7EB8);
    sub_21DF8BAA0();
    sub_21DF8B204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8070);
  }

  return result;
}

unint64_t sub_21DF8BDB0()
{
  result = qword_27CEA8078;
  if (!qword_27CEA8078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7E80);
    sub_21DF8BE3C();
    sub_21DF8B2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8078);
  }

  return result;
}

unint64_t sub_21DF8BE3C()
{
  result = qword_27CEA8080;
  if (!qword_27CEA8080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7E70);
    sub_21DF23E5C(&qword_27CEA8088, &qword_27CEA7E78);
    sub_21DF8BAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8080);
  }

  return result;
}

unint64_t sub_21DF8BEF4()
{
  result = qword_27CEA8090;
  if (!qword_27CEA8090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7E30);
    sub_21DF8BF80();
    sub_21DF8C0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8090);
  }

  return result;
}

unint64_t sub_21DF8BF80()
{
  result = qword_27CEA8098;
  if (!qword_27CEA8098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7E58);
    sub_21DF8C00C();
    sub_21DF8B2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8098);
  }

  return result;
}

unint64_t sub_21DF8C00C()
{
  result = qword_27CEA80A0;
  if (!qword_27CEA80A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7E48);
    sub_21DF23E5C(&qword_27CEA80A8, &qword_27CEA7E50);
    sub_21DF8D698(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA80A0);
  }

  return result;
}

unint64_t sub_21DF8C0F4()
{
  result = qword_27CEA80B0;
  if (!qword_27CEA80B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7E20);
    sub_21DF8C200();
    type metadata accessor for EventLookupPlaceholder();
    sub_21E140614();
    sub_21DF8D698(&qword_27CEA80D0, type metadata accessor for EventLookupPlaceholder);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA80B0);
  }

  return result;
}

unint64_t sub_21DF8C200()
{
  result = qword_27CEA80B8;
  if (!qword_27CEA80B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7E10);
    sub_21DF23E5C(&qword_27CEA80C0, &qword_27CEA7E18);
    sub_21DF8C2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA80B8);
  }

  return result;
}

unint64_t sub_21DF8C2B8()
{
  result = qword_27CEA80C8;
  if (!qword_27CEA80C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7DF8);
    type metadata accessor for EmptyResultsView();
    sub_21E140614();
    sub_21DF8D698(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA80C8);
  }

  return result;
}

unint64_t sub_21DF8C3C4()
{
  result = qword_27CEA80D8;
  if (!qword_27CEA80D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7DC0);
    sub_21DF8B0C0();
    sub_21DF8D698(&qword_27CEA7FC8, type metadata accessor for VIUIDeveloperMenu);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA80D8);
  }

  return result;
}

uint64_t sub_21DF8C480(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t sub_21DF8C494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21DF8C4FC()
{
  result = qword_27CEA8110;
  if (!qword_27CEA8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8110);
  }

  return result;
}

unint64_t sub_21DF8C588()
{
  result = qword_27CEA8138;
  if (!qword_27CEA8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8138);
  }

  return result;
}

unint64_t sub_21DF8C5DC()
{
  result = qword_27CEA8140;
  if (!qword_27CEA8140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8130);
    sub_21DF8D698(&qword_27CEA8148, type metadata accessor for ReportAConcernButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8140);
  }

  return result;
}

uint64_t sub_21DF8C6E0()
{
  type metadata accessor for CardContainer();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21DF8DAF8;

  return sub_21DF81D00();
}

uint64_t sub_21DF8C7C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DF8C830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t sub_21DF8C8F4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for CardContainer() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21DF83620(v4, a1);
}

uint64_t objectdestroy_93Tm()
{
  v1 = type metadata accessor for CardContainer();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_21DF446B8();
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21E140894();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  j__swift_release();

  v6 = v3 + v1[11];
  v7 = sub_21E140124();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);

  return swift_deallocObject();
}

_BYTE *sub_21DF8CBC8(_BYTE *a1)
{
  v3 = *(type metadata accessor for CardContainer() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21DF838B0(a1, v4, v5, v6);
}

unint64_t sub_21DF8CC5C()
{
  result = qword_27CEA81D8;
  if (!qword_27CEA81D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA81D0);
    sub_21DF23E5C(&qword_27CEA81E0, &qword_27CEA81E8);
    sub_21DF23E5C(&qword_27CEA7C68, &qword_27CEA7C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA81D8);
  }

  return result;
}

uint64_t sub_21DF8CD58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CardContainer() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_157Tm()
{
  v1 = type metadata accessor for CardContainer();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_21E13F734();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;
  sub_21DF446B8();
  v9 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21E140894();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  j__swift_release();

  v11 = v8 + v1[11];
  v12 = sub_21E140124();
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);

  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_21DF8D0DC()
{
  type metadata accessor for CardContainer();
  sub_21E13F734();
  return sub_21DF84838();
}

uint64_t objectdestroy_232Tm()
{
  v1 = type metadata accessor for CardContainer();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 17) & ~*(*(v1 - 1) + 80));
  sub_21DF446B8();
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E140894();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  j__swift_release();

  v5 = v2 + v1[11];
  v6 = sub_21E140124();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);

  return swift_deallocObject();
}

uint64_t sub_21DF8D48C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CardContainer() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 17) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_21DF8D52C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CardContainer() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_21E13E034() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21DF4AA04;

  return sub_21DF872BC(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_21DF8D698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for CardContainer();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_21DF446B8();
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E140894();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  j__swift_release();

  v5 = v2 + v1[11];
  v6 = sub_21E140124();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);

  return swift_deallocObject();
}

uint64_t sub_21DF8DA3C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CardContainer() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_21DF8DB30()
{
  sub_21DF8E364();
  if (v0 <= 0x3F)
  {
    sub_21DF3EF6C();
    if (v1 <= 0x3F)
    {
      sub_21E13D834();
      if (v2 <= 0x3F)
      {
        sub_21DF8E3BC();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21DF8DC50(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21E13D834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 24);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v8 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v13 + 80);
  if (v12 <= *(v13 + 84))
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v12;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(*(v6 - 8) + 64) + 7;
  v20 = v15 + 8;
  v21 = *(*(*(a3 + 16) - 8) + 64) + 7;
  v22 = v16 + 9;
  if (v18 >= a2)
  {
    goto LABEL_33;
  }

  v23 = ((*(*(v9 - 8) + 64) + ((v22 + ((v21 + ((v20 + ((((v19 + ((v14 + 96) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v24 = a2 - v18;
  v25 = v23 & 0xFFFFFFF8;
  if ((v23 & 0xFFFFFFF8) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = v24 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v28 <= 1)
  {
    if (!v28)
    {
      goto LABEL_33;
    }

    v29 = *(a1 + v23);
    if (!v29)
    {
      goto LABEL_33;
    }

LABEL_30:
    v31 = v29 - 1;
    if (v25)
    {
      v31 = 0;
      v32 = *a1;
    }

    else
    {
      v32 = 0;
    }

    return v18 + (v32 | v31) + 1;
  }

  if (v28 == 2)
  {
    v29 = *(a1 + v23);
    if (v29)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v29 = *(a1 + v23);
    if (v29)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  v33 = (a1 + 31) & 0xFFFFFFFFFFFFFFF8;
  if ((v17 & 0x80000000) == 0)
  {
    v34 = *(v33 + 8);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    return (v34 + 1);
  }

  if (v8 == v18)
  {
    v35 = *(v7 + 48);
    v36 = v6;
    v37 = (((((((v33 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 24) & ~v14;
    v38 = *(v7 + 84);

    return v35(v37, v38, v36);
  }

  v39 = (v20 + ((((v19 + ((((((((v33 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 24) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
  if (v11 != v18)
  {
    v35 = *(v13 + 48);
    v37 = (v22 + ((v21 + v39) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
    v38 = *(v13 + 84);
    v36 = v9;

    return v35(v37, v38, v36);
  }

  v40 = *(v10 + 48);

  return v40(v39);
}

void sub_21DF8DFAC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_21E13D834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = *(v11 - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 80);
  v18 = *(*(v8 - 8) + 64);
  v19 = *(v12 + 80);
  v20 = *(*(*(a4 + 16) - 8) + 64);
  v21 = *(v15 + 80);
  if (v14 <= v16)
  {
    v22 = *(v15 + 84);
  }

  else
  {
    v22 = v14;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  v24 = v18 + 7;
  v25 = ((*(*(v11 - 8) + 64) + ((v21 + 9 + ((v20 + 7 + ((v19 + 8 + ((((v18 + 7 + ((v17 + 96) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v23 >= a3)
  {
    v29 = 0;
    v30 = a2 - v23;
    if (a2 <= v23)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (v25)
    {
      v30 = 1;
      v31 = ~v23 + a2;
      bzero(a1, v25);
      *a1 = v31;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        *(a1 + v25) = v30;
      }

      else
      {
        *(a1 + v25) = v30;
      }
    }

    else if (v29)
    {
      *(a1 + v25) = v30;
    }

    return;
  }

  v26 = a3 - v23;
  if (((*(*(v11 - 8) + 64) + ((v21 + 9 + ((v20 + 7 + ((v19 + 8 + ((((v18 + 7 + ((v17 + 96) & ~v17)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v19)) & 0xFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = 2;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = a2 - v23;
  if (a2 > v23)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v25) = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v29)
  {
    goto LABEL_35;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  v32 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  if ((v22 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *v32 = a2 & 0x7FFFFFFF;
      v32[1] = 0;
    }

    else
    {
      v32[1] = (a2 - 1);
    }

    return;
  }

  if (v10 == v23)
  {
    v33 = *(v9 + 56);
    v34 = v8;
    v35 = (((((((v32 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v17 + 24) & ~v17;
    v36 = a2;
    v37 = v10;

LABEL_56:
    v33(v35, v36, v37, v34);
    return;
  }

  v38 = (v19 + 8 + ((((v24 + ((((((((v32 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v17 + 24) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
  if (v13 != v23)
  {
    v33 = *(v15 + 56);
    v35 = (v21 + 9 + ((v20 + 7 + v38) & 0xFFFFFFFFFFFFFFF8)) & ~v21;
    v36 = a2;
    v37 = v16;
    v34 = v11;

    goto LABEL_56;
  }

  v39 = *(v12 + 56);

  v39(v38, a2);
}

void sub_21DF8E364()
{
  if (!qword_27CEA8278)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_21E141744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEA8278);
    }
  }
}

void sub_21DF8E3BC()
{
  if (!qword_27CEA8280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD110);
    v0 = sub_21E142724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEA8280);
    }
  }
}

BOOL sub_21DF8E464(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA82E0);
  sub_21E141714();
  v3 = v5 - *(v1 + *(a1 + 96));
  sub_21E141714();
  return vabdd_f64(v3, v5) >= 2.0;
}

uint64_t sub_21DF8E518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v74 = type metadata accessor for SuggestedActionButtonStyle(0);
  MEMORY[0x28223BE20](v74);
  v72 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = *(a1 - 1);
  *&v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8288);
  v68 = a1[2];
  v63 = sub_21E13FB54();
  v64 = a1;
  v66 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  v62 = sub_21E13FB54();
  sub_21E13FB54();
  v6 = sub_21E13FB54();
  *&v65 = a1[5];
  v7 = v65;
  v8 = sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
  v106 = v7;
  v107 = v8;
  WitnessTable = swift_getWitnessTable();
  v105 = MEMORY[0x277CDFC48];
  v102 = swift_getWitnessTable();
  v103 = MEMORY[0x277CDF918];
  v9 = swift_getWitnessTable();
  v98 = v6;
  v99 = MEMORY[0x277D837D0];
  v100 = v9;
  v101 = MEMORY[0x277D837E0];
  sub_21E1417D4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  v60 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_21E1417C4();
  v61 = MEMORY[0x277CE1138];
  swift_getWitnessTable();
  v10 = sub_21E13F3B4();
  v11 = swift_getWitnessTable();
  v98 = v10;
  v99 = v11;
  v57 = MEMORY[0x277CDE820];
  v58 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8290);
  sub_21E13FB54();
  v12 = sub_21DF9543C();
  v96 = v9;
  v97 = v12;
  v13 = swift_getWitnessTable();
  v59 = sub_21DF23E5C(&unk_280F68E10, &qword_27CEA8290);
  v94 = v13;
  v95 = v59;
  swift_getWitnessTable();
  sub_21E1402D4();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A0);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A8);
  sub_21E13FB54();
  v55 = sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82B0);
  v56 = sub_21E13FB54();
  sub_21E13FB54();
  v98 = v10;
  v99 = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = swift_getWitnessTable();
  v92 = OpaqueTypeConformance2;
  v93 = v15;
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x277CDF678];
  v16 = swift_getWitnessTable();
  v17 = sub_21DF23E5C(&qword_27CEA82B8, &qword_27CEA82A0);
  v88 = v16;
  v89 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_21DF23E5C(&qword_27CEA82C0, &qword_27CEA82A8);
  v86 = v18;
  v87 = v19;
  v84 = swift_getWitnessTable();
  v85 = v19;
  v82 = swift_getWitnessTable();
  v83 = MEMORY[0x277CE0688];
  v20 = swift_getWitnessTable();
  v21 = sub_21DF23E5C(&qword_27CEA82C8, &qword_27CEA82B0);
  v80 = v20;
  v81 = v21;
  v78 = swift_getWitnessTable();
  v79 = v59;
  swift_getWitnessTable();
  sub_21E13FCC4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  sub_21E13F624();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  v58 = sub_21E1417C4();
  v57 = swift_getWitnessTable();
  v22 = sub_21E141794();
  v63 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  v25 = swift_getWitnessTable();
  v60 = v25;
  v59 = sub_21DF95DD4(&qword_27CEA82D0, type metadata accessor for SuggestedActionButtonStyle);
  v98 = v22;
  v99 = v74;
  v100 = v25;
  v101 = v59;
  v61 = MEMORY[0x277CDE680];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v55 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v56 = &v55 - v30;
  v31 = v69;
  v32 = v67;
  v33 = v71;
  v34 = v64;
  (*(v69 + 16))(v67, v71, v64, v29);
  v35 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *&v37 = v34[4];
  *(&v37 + 1) = v65;
  v65 = v37;
  *&v38 = v68;
  *(&v38 + 1) = v66;
  v70 = v38;
  *(v36 + 16) = v38;
  *(v36 + 32) = v37;
  (*(v31 + 32))(v36 + v35, v32, v34);
  v75 = v70;
  v76 = v65;
  v77 = v33;
  v39 = v33;
  sub_21E141764();
  v40 = *(v34 + 17);
  v41 = v74;
  v42 = *(v74 + 20);
  v43 = sub_21E13D834();
  v44 = v72;
  (*(*(v43 - 8) + 16))(v72 + v42, v39 + v40, v43);
  LOBYTE(v40) = *(v39 + *(v34 + 22));
  *v44 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v45 = v41;
  *(v44 + *(v41 + 24)) = v40;
  v46 = v55;
  v47 = v44;
  v48 = v45;
  v50 = v59;
  v49 = v60;
  sub_21E140DD4();
  sub_21DF9555C(v47);
  (*(v63 + 8))(v24, v22);
  v98 = v22;
  v99 = v48;
  v100 = v49;
  v101 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v56;
  sub_21DFE2A0C(v46, OpaqueTypeMetadata2, v51);
  v53 = *(v62 + 8);
  v53(v46, OpaqueTypeMetadata2);
  sub_21DFE2A0C(v52, OpaqueTypeMetadata2, v51);
  return (v53)(v52, OpaqueTypeMetadata2);
}

uint64_t sub_21DF8F02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v30 = a4;
  v28 = a3;
  v29 = a2;
  v31 = a1;
  v32 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8288);
  v26 = sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  v24 = sub_21E13FB54();
  sub_21E13FB54();
  sub_21E13FB54();
  v61 = a5;
  v62 = sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
  WitnessTable = swift_getWitnessTable();
  v60 = MEMORY[0x277CDFC48];
  v57 = swift_getWitnessTable();
  v58 = MEMORY[0x277CDF918];
  v55 = swift_getWitnessTable();
  v56 = MEMORY[0x277D837E0];
  sub_21E1417D4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  v23 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_21E1417C4();
  v25 = MEMORY[0x277CE1138];
  swift_getWitnessTable();
  v7 = sub_21E13F3B4();
  v21 = swift_getWitnessTable();
  v20[2] = MEMORY[0x277CDE820];
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8290);
  sub_21E13FB54();
  v51 = v55;
  v52 = sub_21DF9543C();
  v8 = swift_getWitnessTable();
  v22 = sub_21DF23E5C(&unk_280F68E10, &qword_27CEA8290);
  v49 = v8;
  v50 = v22;
  swift_getWitnessTable();
  sub_21E1402D4();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A0);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A8);
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82B0);
  v20[1] = sub_21E13FB54();
  sub_21E13FB54();
  v53 = v7;
  v54 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x277CDF678];
  v43 = swift_getWitnessTable();
  v44 = sub_21DF23E5C(&qword_27CEA82B8, &qword_27CEA82A0);
  v41 = swift_getWitnessTable();
  v42 = sub_21DF23E5C(&qword_27CEA82C0, &qword_27CEA82A8);
  v39 = swift_getWitnessTable();
  v40 = v42;
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x277CE0688];
  v35 = swift_getWitnessTable();
  v36 = sub_21DF23E5C(&qword_27CEA82C8, &qword_27CEA82B0);
  v33 = swift_getWitnessTable();
  v34 = v22;
  swift_getWitnessTable();
  sub_21E13FCC4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  sub_21E13F624();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  v9 = sub_21E1417C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  v53 = v29;
  v54 = v28;
  v55 = v30;
  v56 = v27;
  v16 = type metadata accessor for MarqueeSuggestedActionButton();
  sub_21DF8F848(v16, v12);
  v17 = swift_getWitnessTable();
  sub_21DFE2A0C(v12, v9, v17);
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_21DFE2A0C(v15, v9, v17);
  return (v18)(v15, v9);
}

uint64_t sub_21DF8F848@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8288);
  v29 = a1[2];
  v25 = sub_21E13FB54();
  v3 = a1[3];
  v27 = a1;
  v28 = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  v23 = sub_21E13FB54();
  sub_21E13FB54();
  sub_21E13FB54();
  v26 = a1[5];
  v63 = v26;
  v64 = sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
  WitnessTable = swift_getWitnessTable();
  v62 = MEMORY[0x277CDFC48];
  v59 = swift_getWitnessTable();
  v60 = MEMORY[0x277CDF918];
  v57 = swift_getWitnessTable();
  v58 = MEMORY[0x277D837E0];
  sub_21E1417D4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  v22 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_21E1417C4();
  v24 = MEMORY[0x277CE1138];
  swift_getWitnessTable();
  v4 = sub_21E13F3B4();
  v5 = swift_getWitnessTable();
  v19[3] = MEMORY[0x277CDE820];
  v20 = v5;
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8290);
  sub_21E13FB54();
  v53 = v57;
  v54 = sub_21DF9543C();
  v6 = swift_getWitnessTable();
  v21 = sub_21DF23E5C(&unk_280F68E10, &qword_27CEA8290);
  v51 = v6;
  v52 = v21;
  swift_getWitnessTable();
  sub_21E1402D4();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A0);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A8);
  sub_21E13FB54();
  v19[1] = sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82B0);
  v19[2] = sub_21E13FB54();
  sub_21E13FB54();
  v55 = v4;
  v56 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CDF678];
  v45 = swift_getWitnessTable();
  v46 = sub_21DF23E5C(&qword_27CEA82B8, &qword_27CEA82A0);
  v43 = swift_getWitnessTable();
  v44 = sub_21DF23E5C(&qword_27CEA82C0, &qword_27CEA82A8);
  v41 = swift_getWitnessTable();
  v42 = v44;
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x277CE0688];
  v37 = swift_getWitnessTable();
  v38 = sub_21DF23E5C(&qword_27CEA82C8, &qword_27CEA82B0);
  v35 = swift_getWitnessTable();
  v36 = v21;
  swift_getWitnessTable();
  sub_21E13FCC4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  sub_21E13F624();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  v7 = sub_21E1417C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  *&v14 = v27[4];
  *(&v14 + 1) = v26;
  *&v15 = v29;
  *(&v15 + 1) = v28;
  v32 = v15;
  v33 = v14;
  v34 = v30;
  sub_21E140004();
  sub_21E1417B4();
  v16 = swift_getWitnessTable();
  sub_21DFE2A0C(v10, v7, v16);
  v17 = *(v8 + 8);
  v17(v10, v7);
  sub_21DFE2A0C(v13, v7, v16);
  return (v17)(v13, v7);
}

uint64_t sub_21DF8FFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v62 = a3;
  v56 = a2;
  v57 = a4;
  v63 = a1;
  v58 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  v59 = sub_21E13FB54();
  sub_21E13FB54();
  sub_21E13FB54();
  v60 = MEMORY[0x277CE0868];
  v91 = a5;
  v92 = sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
  v7 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v90 = MEMORY[0x277CDFC48];
  v87 = swift_getWitnessTable();
  v88 = MEMORY[0x277CDF918];
  v85 = swift_getWitnessTable();
  v86 = MEMORY[0x277D837E0];
  sub_21E1417D4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  sub_21E1417C4();
  swift_getWitnessTable();
  v8 = sub_21E13F3B4();
  v9 = swift_getWitnessTable();
  v52 = MEMORY[0x277CDE820];
  v53 = v9;
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8290);
  sub_21E13FB54();
  v81 = v85;
  v82 = sub_21DF9543C();
  v10 = swift_getWitnessTable();
  v54 = sub_21DF23E5C(&unk_280F68E10, &qword_27CEA8290);
  v79 = v10;
  v80 = v54;
  swift_getWitnessTable();
  sub_21E1402D4();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A0);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A8);
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82B0);
  sub_21E13FB54();
  sub_21E13FB54();
  v83 = v8;
  v84 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x277CDF678];
  v73 = swift_getWitnessTable();
  v74 = sub_21DF23E5C(&qword_27CEA82B8, &qword_27CEA82A0);
  v71[17] = swift_getWitnessTable();
  v72 = sub_21DF23E5C(&qword_27CEA82C0, &qword_27CEA82A8);
  v71[15] = swift_getWitnessTable();
  v71[16] = v72;
  v50 = v7;
  v71[13] = swift_getWitnessTable();
  v71[14] = MEMORY[0x277CE0688];
  v71[11] = swift_getWitnessTable();
  v71[12] = sub_21DF23E5C(&qword_27CEA82C8, &qword_27CEA82B0);
  v71[9] = swift_getWitnessTable();
  v71[10] = v54;
  swift_getWitnessTable();
  sub_21E13FCC4();
  swift_getTupleTypeMetadata2();
  v51 = sub_21E141DC4();
  v49 = swift_getWitnessTable();
  v55 = sub_21E13F624();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v52 = &v44 - v15;
  v16 = sub_21E141654();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8288);
  v20 = v56;
  v21 = sub_21E13FB54();
  v59 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - v25;
  v83 = v20;
  v84 = v62;
  v27 = v57;
  v85 = v57;
  v86 = v61;
  type metadata accessor for MarqueeSuggestedActionButton();
  (*(v17 + 104))(v19, *MEMORY[0x277CE1050], v16);
  sub_21E140D94();
  (*(v17 + 8))(v19, v16);
  v28 = sub_21DF23E5C(&qword_280F68DB8, &qword_27CEA8288);
  v71[7] = v27;
  v71[8] = v28;
  v29 = swift_getWitnessTable();
  v60 = v26;
  v45 = v29;
  sub_21DFE2A0C(v23, v21, v29);
  v30 = *(v59 + 8);
  v31 = v23;
  v50 = v21;
  v46 = v30;
  v47 = v59 + 8;
  v30(v23, v21);
  v64 = v20;
  v65 = v62;
  v66 = v27;
  v67 = v61;
  v68 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA82D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E147C80;
  LOBYTE(v10) = sub_21E1408D4();
  *(inited + 32) = v10;
  v33 = sub_21E1408F4();
  *(inited + 33) = v33;
  sub_21E1408E4();
  sub_21E1408E4();
  if (sub_21E1408E4() != v10)
  {
    sub_21E1408E4();
  }

  sub_21E1408E4();
  if (sub_21E1408E4() != v33)
  {
    sub_21E1408E4();
  }

  v34 = v48;
  sub_21E13F614();
  v35 = v55;
  v36 = swift_getWitnessTable();
  v37 = v52;
  sub_21DFE2A0C(v34, v35, v36);
  v38 = v53;
  v39 = *(v53 + 8);
  v39(v34, v35);
  v40 = v50;
  (*(v59 + 16))(v31, v60, v50);
  v83 = v31;
  v41 = v54;
  (*(v38 + 16))(v54, v37, v35);
  v84 = v41;
  v71[0] = v40;
  v71[1] = v35;
  v69 = v45;
  v70 = v36;
  sub_21E012D74(&v83, 2uLL, v71);
  v39(v37, v35);
  v42 = v46;
  v46(v60, v40);
  v39(v41, v35);
  return v42(v31, v40);
}

uint64_t sub_21DF90AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a2;
  v54 = a4;
  v63 = a6;
  v97 = a2;
  v98 = a3;
  v99 = a4;
  v100 = a5;
  v50 = type metadata accessor for MarqueeSuggestedActionButton();
  v9 = *(v50 - 8);
  v55 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v52 = &v48 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  v51 = a3;
  v11 = sub_21E13FB54();
  v59 = *(v11 - 8);
  v12 = v59;
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = &v48 - v16;
  v49 = a5;
  sub_21E1413B4();
  v17 = sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
  v95 = a5;
  v96 = v17;
  v64 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v57 = WitnessTable;
  v58 = v14;
  sub_21DFE2A0C(v14, v11, WitnessTable);
  v19 = *(v12 + 8);
  v61 = v12 + 8;
  v62 = v19;
  v56 = v11;
  v19(v14, v11);
  v20 = v52;
  v21 = v50;
  (*(v9 + 16))(v52, a1, v50);
  v22 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v55 = v23;
  v24 = v51;
  v23[2] = v53;
  v23[3] = v24;
  v25 = v49;
  v23[4] = v54;
  v23[5] = v25;
  (*(v9 + 32))(v23 + v22, v20, v21);
  sub_21E13FB54();
  v26 = sub_21E13FB54();
  v93 = WitnessTable;
  v94 = MEMORY[0x277CDFC48];
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x277CDF918];
  v27 = swift_getWitnessTable();
  v97 = v26;
  v98 = MEMORY[0x277D837D0];
  v99 = v27;
  v100 = MEMORY[0x277D837E0];
  sub_21E1417D4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  sub_21E1417C4();
  swift_getWitnessTable();
  v28 = sub_21E13F3B4();
  v29 = swift_getWitnessTable();
  v97 = v28;
  v98 = v29;
  v52 = MEMORY[0x277CDE820];
  v53 = v29;
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8290);
  sub_21E13FB54();
  v30 = sub_21DF9543C();
  v89 = v27;
  v90 = v30;
  v31 = swift_getWitnessTable();
  v54 = sub_21DF23E5C(&unk_280F68E10, &qword_27CEA8290);
  v87 = v31;
  v88 = v54;
  swift_getWitnessTable();
  sub_21E1402D4();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A0);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A8);
  sub_21E13FB54();
  sub_21E13FB54();
  v50 = sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82B0);
  v51 = sub_21E13FB54();
  sub_21E13FB54();
  v97 = v28;
  v98 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = swift_getWitnessTable();
  v85 = OpaqueTypeConformance2;
  v86 = v33;
  v83 = swift_getWitnessTable();
  v84 = MEMORY[0x277CDF678];
  v34 = swift_getWitnessTable();
  v35 = sub_21DF23E5C(&qword_27CEA82B8, &qword_27CEA82A0);
  v81 = v34;
  v82 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_21DF23E5C(&qword_27CEA82C0, &qword_27CEA82A8);
  v79 = v36;
  v80 = v37;
  v77 = swift_getWitnessTable();
  v78 = v37;
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x277CE0688];
  v38 = swift_getWitnessTable();
  v39 = sub_21DF23E5C(&qword_27CEA82C8, &qword_27CEA82B0);
  v73 = v38;
  v74 = v39;
  v71 = swift_getWitnessTable();
  v72 = v54;
  swift_getWitnessTable();
  v69 = sub_21E13FCB4();
  v70 = v40;
  v41 = sub_21E13FCC4();
  v42 = swift_getWitnessTable();
  sub_21DFE2A0C(&v69, v41, v42);

  v43 = v58;
  v44 = v60;
  v45 = v56;
  (*(v59 + 16))(v58, v60, v56);
  v68[0] = v97;
  v68[1] = v98;
  v69 = v43;
  v70 = v68;

  v67[0] = v45;
  v67[1] = v41;
  v65 = v57;
  v66 = v42;
  sub_21E012D74(&v69, 2uLL, v67);

  v46 = v62;
  v62(v44, v45);

  return v46(v43, v45);
}

uint64_t sub_21DF9134C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v224 = a5;
  v221 = a3;
  v218 = a2;
  v204 = a1;
  v208 = a7;
  v11 = sub_21E1423F4();
  v206 = *(v11 - 8);
  v207 = v11;
  MEMORY[0x28223BE20](v11);
  v205 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21E13FBB4();
  v202 = *(v13 - 8);
  v203 = v13;
  MEMORY[0x28223BE20](v13);
  v200 = v14;
  v201 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v257 = a3;
  *(&v257 + 1) = a4;
  v223 = a4;
  v258 = a5;
  v259 = a6;
  v15 = a6;
  v222 = a6;
  v217 = type metadata accessor for MarqueeSuggestedActionButton();
  v220 = *(v217 - 8);
  v215 = *(v220 + 64);
  MEMORY[0x28223BE20](v217);
  v219 = &v151 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  v17 = sub_21E13FB54();
  v214 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v211 = &v151 - v18;
  v164 = v17;
  v19 = sub_21E13FB54();
  v213 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v210 = &v151 - v20;
  v168 = v19;
  v21 = sub_21E13FB54();
  v212 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v178 = &v151 - v22;
  v23 = sub_21E13FB54();
  v188 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v176 = &v151 - v24;
  v198 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8290);
  v160 = v23;
  v25 = sub_21E13FB54();
  v189 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v184 = &v151 - v26;
  v27 = sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
  v255 = v15;
  v256 = v27;
  WitnessTable = swift_getWitnessTable();
  v253 = WitnessTable;
  v254 = MEMORY[0x277CDFC48];
  v166 = swift_getWitnessTable();
  v251 = v166;
  v252 = MEMORY[0x277CDF918];
  v165 = v21;
  v28 = swift_getWitnessTable();
  *&v257 = v21;
  *(&v257 + 1) = MEMORY[0x277D837D0];
  v258 = v28;
  v259 = MEMORY[0x277D837E0];
  v29 = v28;
  v156 = v28;
  sub_21E1417D4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  v154 = sub_21E1417C4();
  v153 = swift_getWitnessTable();
  v30 = sub_21E13F3B4();
  v155 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v151 - v31;
  v209 = swift_getWitnessTable();
  *&v257 = v30;
  *(&v257 + 1) = v209;
  v167 = MEMORY[0x277CDE820];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v169 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v152 = &v151 - v33;
  v34 = sub_21DF9543C();
  v249 = v29;
  v250 = v34;
  v35 = swift_getWitnessTable();
  v158 = v35;
  v36 = sub_21DF23E5C(&unk_280F68E10, &qword_27CEA8290);
  v247 = v35;
  v248 = v36;
  v199 = v36;
  v161 = v25;
  v162 = swift_getWitnessTable();
  v170 = sub_21E1402D4();
  v37 = sub_21E13FB54();
  v172 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v157 = &v151 - v38;
  v174 = v39;
  v40 = sub_21E13FB54();
  v173 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v171 = &v151 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A0);
  v175 = v40;
  v42 = sub_21E13FB54();
  v179 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v177 = &v151 - v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A8);
  v180 = v42;
  v44 = sub_21E13FB54();
  v185 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v182 = &v151 - v45;
  v187 = v46;
  v47 = sub_21E13FB54();
  v183 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v181 = &v151 - v48;
  v186 = v49;
  v50 = sub_21E13FB54();
  v190 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v216 = &v151 - v51;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82B0);
  v191 = v50;
  v52 = sub_21E13FB54();
  v195 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v193 = &v151 - v53;
  v196 = v54;
  v55 = sub_21E13FB54();
  v197 = *(v55 - 8);
  v198 = v55;
  MEMORY[0x28223BE20](v55);
  v192 = &v151 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v194 = &v151 - v58;
  sub_21E1408D4();
  v59 = v221;
  v225 = v221;
  v226 = v223;
  v227 = v224;
  v228 = v222;
  v60 = v218;
  v229 = v218;
  sub_21E13F3C4();
  v151 = v30;
  sub_21E140F54();
  (*(v155 + 8))(v32, v30);
  v61 = v217;
  v62 = v211;
  sub_21E1413B4();
  v63 = v210;
  v64 = v164;
  sub_21E1413A4();
  (*(v214 + 8))(v62, v64);
  sub_21E140964();
  v65 = v61;
  v66 = v178;
  v67 = v168;
  sub_21E1412F4();
  (*(v213 + 8))(v63, v67);
  v68 = v176;
  v69 = v165;
  sub_21E141294();
  (*(v212 + 8))(v66, v69);
  type metadata accessor for CGSize(0);
  v71 = v70;
  v72 = v220;
  v73 = v219;
  v74 = v65;
  v213 = *(v220 + 16);
  v214 = v220 + 16;
  (v213)(v219, v60, v65);
  v75 = *(v72 + 80);
  v76 = (v75 + 48) & ~v75;
  v211 = (v75 | 7);
  v212 = v76 + v215;
  v77 = swift_allocObject();
  v78 = v223;
  v77[2] = v59;
  v77[3] = v78;
  v79 = v222;
  v77[4] = v224;
  v77[5] = v79;
  v80 = *(v72 + 32);
  v215 = v76;
  v220 = v72 + 32;
  v210 = v80;
  (v80)(v77 + v76, v73, v74);
  v168 = sub_21DF95DD4(&qword_27CEA9E90, type metadata accessor for CGSize);
  v150 = v168;
  v81 = v184;
  v82 = v71;
  v83 = v160;
  v178 = v71;
  v84 = v71;
  v85 = v157;
  sub_21DF95FE8(v82, sub_21DF8DB20, 0, sub_21DF956BC, v77, v160, v84, v158);

  (*(v188 + 8))(v68, v83);
  sub_21E141CC4();
  *&v257 = v151;
  *(&v257 + 1) = v209;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = OpaqueTypeMetadata2;
  v88 = v161;
  v89 = v152;
  sub_21E140D64();
  (*(v189 + 8))(v81, v88);
  (*(v169 + 8))(v89, v87);
  v90 = v60[9];
  v91 = v60[10];
  v92 = v60[11];
  *&v257 = v90;
  *(&v257 + 1) = v91;
  v258 = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA82E0);
  sub_21E141714();
  if (*(&v246 + 1) > 0.0)
  {
    *&v257 = v90;
    *(&v257 + 1) = v91;
    v258 = v92;
    sub_21E141714();
  }

  sub_21E141CC4();
  v189 = v93;
  v94 = swift_getWitnessTable();
  v244 = OpaqueTypeConformance2;
  v245 = v94;
  v95 = MEMORY[0x277CDFAD8];
  v96 = v174;
  v97 = swift_getWitnessTable();
  v98 = v171;
  sub_21E141254();
  (*(v172 + 8))(v85, v96);
  v242 = v97;
  v243 = MEMORY[0x277CDF678];
  v209 = v95;
  v99 = v175;
  v100 = swift_getWitnessTable();
  v101 = v177;
  sub_21E1412A4();
  (*(v173 + 8))(v98, v99);
  v102 = sub_21E141CD4();
  v175 = v103;
  v176 = v102;
  MEMORY[0x28223BE20](v102);
  v104 = v223;
  *(&v151 - 6) = v221;
  *(&v151 - 5) = v104;
  v105 = v222;
  *(&v151 - 4) = v224;
  *(&v151 - 3) = v105;
  v150 = v218;
  v106 = v218;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA82E8);
  v107 = sub_21DF23E5C(&qword_27CEA82B8, &qword_27CEA82A0);
  v240 = v100;
  v241 = v107;
  v108 = v180;
  v109 = swift_getWitnessTable();
  v184 = sub_21DF956EC();
  v110 = v182;
  sub_21E1412D4();
  (*(v179 + 8))(v101, v108);
  v111 = sub_21E141CE4();
  v179 = v112;
  v180 = &v151;
  MEMORY[0x28223BE20](v111);
  v113 = v223;
  *(&v151 - 6) = v221;
  *(&v151 - 5) = v113;
  *(&v151 - 4) = v224;
  *(&v151 - 3) = v105;
  v114 = v106;
  v150 = v106;
  v115 = sub_21DF23E5C(&qword_27CEA82C0, &qword_27CEA82A8);
  v238 = v109;
  v239 = v115;
  v116 = v187;
  v117 = swift_getWitnessTable();
  v118 = v181;
  sub_21E1412D4();
  (*(v185 + 8))(v110, v116);
  v236 = v117;
  v237 = v115;
  v119 = v186;
  v188 = swift_getWitnessTable();
  sub_21E140FC4();
  (*(v183 + 8))(v118, v119);
  v120 = *(v114 + 2);
  v257 = *v114;
  v258 = v120;
  sub_21E141714();
  v257 = v246;
  v121 = v219;
  v122 = v217;
  (v213)(v219, v114, v217);
  v123 = v201;
  v124 = v202;
  v125 = v203;
  (*(v202 + 16))(v201, v204, v203);
  v126 = (v212 + *(v124 + 80)) & ~*(v124 + 80);
  v127 = swift_allocObject();
  v128 = v223;
  *(v127 + 2) = v221;
  *(v127 + 3) = v128;
  v129 = v222;
  *(v127 + 4) = v224;
  *(v127 + 5) = v129;
  (v210)(&v127[v215], v121, v122);
  (*(v124 + 32))(&v127[v126], v123, v125);
  v234 = v188;
  v235 = MEMORY[0x277CE0688];
  v130 = v191;
  v131 = swift_getWitnessTable();
  v132 = v205;
  sub_21E1423D4();
  v133 = v193;
  v134 = v178;
  v135 = v168;
  v136 = v216;
  sub_21E141214();

  (*(v206 + 8))(v132, v207);
  (*(v190 + 8))(v136, v130);
  v137 = v219;
  (v213)(v219, v218, v122);
  v138 = swift_allocObject();
  v139 = v223;
  v138[2] = v221;
  v138[3] = v139;
  v140 = v222;
  v138[4] = v224;
  v138[5] = v140;
  (v210)(v138 + v215, v137, v122);
  v141 = sub_21DF23E5C(&qword_27CEA82C8, &qword_27CEA82B0);
  v232 = v131;
  v233 = v141;
  v142 = v196;
  v143 = swift_getWitnessTable();
  v150 = v135;
  v144 = v192;
  sub_21DF95FE8(v134, sub_21DF8DB20, 0, sub_21DF95D04, v138, v142, v134, v143);

  (*(v195 + 8))(v133, v142);
  v230 = v143;
  v145 = v198;
  v231 = v199;
  v146 = swift_getWitnessTable();
  v147 = v194;
  sub_21DFE2A0C(v144, v145, v146);
  v148 = *(v197 + 8);
  v148(v144, v145);
  sub_21DFE2A0C(v147, v145, v146);
  return (v148)(v147, v145);
}

uint64_t sub_21DF92A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[0] = a4;
  v22[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  sub_21E13FB54();
  sub_21E13FB54();
  v10 = sub_21E13FB54();
  v22[17] = a5;
  v22[18] = sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
  v22[15] = swift_getWitnessTable();
  v22[16] = MEMORY[0x277CDFC48];
  v22[13] = swift_getWitnessTable();
  v22[14] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v22[9] = v10;
  v22[10] = MEMORY[0x277D837D0];
  v22[11] = WitnessTable;
  v22[12] = MEMORY[0x277D837E0];
  sub_21E1417D4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  v12 = sub_21E1417C4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v22 - v17;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = v22[0];
  v22[7] = a5;
  v22[8] = a1;
  sub_21E140004();
  sub_21E1417B4();
  v19 = swift_getWitnessTable();
  sub_21DFE2A0C(v15, v12, v19);
  v20 = *(v13 + 8);
  v20(v15, v12);
  sub_21DFE2A0C(v18, v12, v19);
  return (v20)(v18, v12);
}

uint64_t sub_21DF92D54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a4;
  v66 = a1;
  v68 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0);
  v9 = sub_21E13FB54();
  v77 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v64 = &v51 - v10;
  v11 = sub_21E13FB54();
  v76 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v62 = &v51 - v12;
  v69 = v11;
  v13 = sub_21E13FB54();
  v75 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v61 = &v51 - v14;
  v15 = sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
  v89 = a5;
  v90 = v15;
  WitnessTable = swift_getWitnessTable();
  v88 = MEMORY[0x277CDFC48];
  v58 = WitnessTable;
  v72 = swift_getWitnessTable();
  v85 = v72;
  v86 = MEMORY[0x277CDF918];
  v70 = v13;
  v73 = swift_getWitnessTable();
  v81 = v13;
  v82 = MEMORY[0x277D837D0];
  v83 = v73;
  v84 = MEMORY[0x277D837E0];
  v16 = sub_21E1417D4();
  v74 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v67 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v63 = &v51 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  MEMORY[0x28223BE20](v23);
  v71 = &v51 - v24;
  v81 = a2;
  v82 = a3;
  v59 = a3;
  v83 = v65;
  v84 = a5;
  v60 = a5;
  v25 = type metadata accessor for MarqueeSuggestedActionButton();
  v65 = *(v25 + 92);
  v26 = v66;
  v27 = v64;
  sub_21E1413B4();
  v28 = v62;
  v53 = v9;
  sub_21E1413A4();
  v29 = *(v77 + 8);
  v77 += 8;
  v57 = v29;
  v29(v27, v9);
  sub_21E140964();
  v56 = *(v26 + *(v25 + 96));
  v30 = v26;
  v31 = v61;
  v32 = v69;
  sub_21E1412F4();
  v33 = *(v76 + 8);
  v76 += 8;
  v55 = v33;
  v33(v28, v32);
  v34 = v30[4];
  v81 = v30[3];
  v82 = v34;
  v35 = v70;
  sub_21E1411A4();
  v36 = *(v75 + 8);
  v75 += 8;
  v54 = v36;
  v36(v31, v35);
  v37 = swift_getWitnessTable();
  v52 = v22;
  sub_21DFE2A0C(v22, v16, v37);
  v38 = *(v74 + 8);
  v38(v22, v16);
  sub_21E1413B4();
  v39 = v53;
  sub_21E1413A4();
  v57(v27, v39);
  sub_21E140964();
  v40 = v69;
  sub_21E1412F4();
  v55(v28, v40);
  v41 = v30[6];
  v81 = v30[5];
  v82 = v41;
  v42 = v63;
  v43 = v70;
  sub_21E1411A4();
  v54(v31, v43);
  v44 = v52;
  v45 = v42;
  sub_21DFE2A0C(v42, v16, v37);
  v38(v42, v16);
  v46 = *(v74 + 16);
  v47 = v71;
  v46(v45, v71, v16);
  v81 = v45;
  v48 = v45;
  v49 = v67;
  v46(v67, v44, v16);
  v82 = v49;
  v80[0] = v16;
  v80[1] = v16;
  v78 = v37;
  v79 = v37;
  sub_21E012D74(&v81, 2uLL, v80);
  v38(v44, v16);
  v38(v47, v16);
  v38(v49, v16);
  return (v38)(v48, v16);
}

uint64_t sub_21DF93578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8300);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v8 = *(a1 + 64);
  v20 = *(a1 + 56);
  v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  if (v19 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8320);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21E147C80;
    *(v9 + 32) = sub_21E141484();
    *(v9 + 40) = sub_21E1414A4();
    sub_21E141E04();
    sub_21E141E14();
    MEMORY[0x223D52380](v9);
    sub_21E13F8A4();
    sub_21E141CC4();
    sub_21E13F664();
    v10 = *(v4 + 36);
    v11 = *MEMORY[0x277CE13C0];
    v12 = sub_21E141D94();
    (*(*(v12 - 8) + 104))(&v7[v10], v11, v12);
    v13 = v17[3];
    *(v7 + 2) = v17[2];
    *(v7 + 3) = v13;
    *(v7 + 4) = v17[4];
    *(v7 + 10) = v18;
    v14 = v17[1];
    *v7 = v17[0];
    *(v7 + 1) = v14;
    sub_21DF95F40(v7, a2);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v5 + 56))(a2, v15, 1, v4);
}

uint64_t sub_21DF937C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8300);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-v12];
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v14 = type metadata accessor for MarqueeSuggestedActionButton();
  if (sub_21DF8E464(v14))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8320);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21E147C80;
    *(v15 + 32) = sub_21E1414A4();
    *(v15 + 40) = sub_21E141484();
    sub_21E141E04();
    sub_21E141E14();
    MEMORY[0x223D52380](v15);
    sub_21E13F8A4();
    sub_21E141CC4();
    sub_21E13F664();
    v16 = *(v10 + 36);
    v17 = *MEMORY[0x277CE13C0];
    v18 = sub_21E141D94();
    (*(*(v18 - 8) + 104))(&v13[v16], v17, v18);
    v19 = v26;
    *(v13 + 2) = v25;
    *(v13 + 3) = v19;
    *(v13 + 4) = v27;
    *(v13 + 10) = v28;
    v20 = v24;
    *v13 = *&v23[8];
    *(v13 + 1) = v20;
    sub_21DF95F40(v13, a5);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v11 + 56))(a5, v21, 1, v10);
}

uint64_t sub_21DF93A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_21E142984();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v8 = sub_21E142994();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  sub_21E1423C4();
  v6[25] = sub_21E1423B4();
  v10 = sub_21E142364();
  v6[26] = v10;
  v6[27] = v9;

  return MEMORY[0x2822009F8](sub_21DF93B84, v10, v9);
}

uint64_t sub_21DF93B84()
{
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 32) = *(v0 + 120);
  v1 = type metadata accessor for MarqueeSuggestedActionButton();
  *(v0 + 224) = v1;
  if (sub_21DF8E464(v1))
  {
    v2 = sub_21E142C94();
    v4 = v3;
    sub_21E142BB4();
    v5 = swift_task_alloc();
    *(v0 + 232) = v5;
    *v5 = v0;
    v5[1] = sub_21DF93CFC;

    return sub_21E077260(v2, v4, 0, 0, 1);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_21DF93CFC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[24];
  v5 = v2[22];
  v6 = v2[21];
  if (v0)
  {

    v7 = *(v5 + 8);
    v3[31] = v7;
    v7(v4, v6);
    v8 = v3[26];
    v9 = v3[27];
    v10 = sub_21DF93FBC;
  }

  else
  {
    v11 = *(v5 + 8);
    v3[30] = v11;
    v11(v4, v6);
    v8 = v3[26];
    v9 = v3[27];
    v10 = sub_21DF93E98;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21DF93E98()
{
  v0[32] = v0[30];
  if ((sub_21E142434() & 1) != 0 || !sub_21DF8E464(v0[28]))
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v1 = swift_task_alloc();
    v0[33] = v1;
    *v1 = v0;
    v1[1] = sub_21DF940E0;
    v2 = v0[28];
    v3 = v0[12];

    return sub_21DF94724(v3, v2);
  }
}

uint64_t sub_21DF93FBC()
{
  v0[32] = v0[31];
  if ((sub_21E142434() & 1) != 0 || !sub_21DF8E464(v0[28]))
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v1 = swift_task_alloc();
    v0[33] = v1;
    *v1 = v0;
    v1[1] = sub_21DF940E0;
    v2 = v0[28];
    v3 = v0[12];

    return sub_21DF94724(v3, v2);
  }
}

uint64_t sub_21DF940E0()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_21DF94200, v3, v2);
}

uint64_t sub_21DF94200()
{
  v1 = sub_21E142C94();
  v3 = v2;
  sub_21E142BB4();
  *(v0 + 72) = v1;
  *(v0 + 80) = v3;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;

  return MEMORY[0x2822009F8](sub_21DF94294, 0, 0);
}

uint64_t sub_21DF94294()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = sub_21DF95DD4(&qword_280F68C00, MEMORY[0x277D85928]);
  sub_21E142B94();
  sub_21DF95DD4(&qword_280F68C08, MEMORY[0x277D858F8]);
  sub_21E1429A4();
  v5 = *(v2 + 8);
  v0[34] = v5;
  v0[35] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_21DF94418;
  v8 = v0[20];
  v7 = v0[21];

  return MEMORY[0x2822008C8](v8, v0 + 6, v7, v4);
}

uint64_t sub_21DF94418()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[20];
    v5 = v2[17];

    v3(v4, v5);
    v6 = sub_21DF94590;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v2[32];
    v10 = v2[23];
    v11 = v2[21];
    (v2[34])(v2[20], v2[17]);
    v9(v10, v11);
    v7 = v2[26];
    v8 = v2[27];
    v6 = sub_21DF95FE4;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21DF94590()
{
  (*(v0 + 256))(*(v0 + 184), *(v0 + 168));
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_21DF94608, v1, v2);
}

uint64_t sub_21DF94608()
{
  if ((sub_21E142434() & 1) != 0 || !sub_21DF8E464(v0[28]))
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v1 = swift_task_alloc();
    v0[33] = v1;
    *v1 = v0;
    v1[1] = sub_21DF940E0;
    v2 = v0[28];
    v3 = v0[12];

    return sub_21DF94724(v3, v2);
  }
}

uint64_t sub_21DF94724(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E142994();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_21E1423C4();
  v3[11] = sub_21E1423B4();
  v6 = sub_21E142364();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_21DF94828, v6, v5);
}

uint64_t sub_21DF94828()
{
  v2 = v0[5];
  v1 = v0[6];
  v16 = v0[4];
  sub_21E141D24();
  v3 = swift_task_alloc();
  v4 = v2[2];
  v0[14] = v4;
  v3[2] = v4;
  v5 = v2[3];
  v0[15] = v5;
  v3[3] = v5;
  v6 = v2[4];
  v0[16] = v6;
  v3[4] = v6;
  v7 = v2[5];
  v0[17] = v7;
  v3[5] = v7;
  v3[6] = v1;
  sub_21E13F864();

  sub_21E141D74();
  v8 = swift_task_alloc();
  *&v9 = v4;
  *(&v9 + 1) = v5;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  *(v8 + 16) = v9;
  *(v8 + 32) = v10;
  *(v8 + 48) = v16;
  *(v8 + 56) = v1;
  sub_21E13F864();

  v11 = sub_21E142C94();
  v13 = v12;
  sub_21E142BB4();
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_21DF94A40;

  return sub_21E077260(v11, v13, 0, 0, 1);
}

uint64_t sub_21DF94A40()
{
  v2 = *v1;
  v2[19] = v0;

  v3 = v2[10];
  v4 = v2[8];
  v5 = v2[7];
  if (v0)
  {

    v6 = *(v4 + 8);
    v2[21] = v6;
    v6(v3, v5);
    v7 = v2[12];
    v8 = v2[13];
    v9 = sub_21DF94DBC;
  }

  else
  {
    v10 = *(v4 + 8);
    v2[20] = v10;
    v10(v3, v5);
    v7 = v2[12];
    v8 = v2[13];
    v9 = sub_21DF94BE0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21DF94BE0()
{
  *(v0 + 176) = *(v0 + 160);
  if (sub_21E142434())
  {

    sub_21DF95300();

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 48);
    v9 = *(v0 + 128);
    v10 = *(v0 + 112);
    sub_21E141D24();
    v4 = swift_task_alloc();
    *(v4 + 16) = v10;
    *(v4 + 32) = v9;
    *(v4 + 48) = v3;
    sub_21E13F864();

    v5 = sub_21E142C94();
    v7 = v6;
    sub_21E142BB4();
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_21DF94F9C;

    return sub_21E077260(v5, v7, 0, 0, 1);
  }
}

uint64_t sub_21DF94DBC()
{
  *(v0 + 176) = *(v0 + 168);
  if (sub_21E142434())
  {

    sub_21DF95300();

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 48);
    v9 = *(v0 + 128);
    v10 = *(v0 + 112);
    sub_21E141D24();
    v4 = swift_task_alloc();
    *(v4 + 16) = v10;
    *(v4 + 32) = v9;
    *(v4 + 48) = v3;
    sub_21E13F864();

    v5 = sub_21E142C94();
    v7 = v6;
    sub_21E142BB4();
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_21DF94F9C;

    return sub_21E077260(v5, v7, 0, 0, 1);
  }
}

uint64_t sub_21DF94F9C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[22];
  v5 = v2[9];
  v6 = v2[7];
  if (v0)
  {

    v4(v5, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_21DF95FE0;
  }

  else
  {
    v4(v5, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_21DF9514C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21DF9514C()
{

  if (sub_21E142434())
  {
    sub_21DF95300();
  }

  else
  {
    v1 = v0[6];
    v2 = *(v1 + 32);
    v0[2] = *(v1 + 24);
    v0[3] = v2;

    sub_21E141E04();
    sub_21E13FBA4();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_21DF95288()
{

  sub_21E141E04();
  sub_21E13FBA4();
}

uint64_t sub_21DF95300()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141724();
  sub_21E141D24();
  sub_21E13F864();
}

uint64_t sub_21DF953C0()
{

  sub_21E141E04();
  sub_21E13FBA4();
}

unint64_t sub_21DF9543C()
{
  result = qword_27CEA8298;
  if (!qword_27CEA8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8298);
  }

  return result;
}

uint64_t sub_21DF95490()
{
  v1 = *(type metadata accessor for MarqueeSuggestedActionButton() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  result = type metadata accessor for MarqueeSuggestedActionButton();
  v7 = (v0 + *(result + 72) + v2);
  if (*v7)
  {
    return (*v7)(result, v4, v5, v6);
  }

  return result;
}

uint64_t sub_21DF9555C(uint64_t a1)
{
  v2 = type metadata accessor for SuggestedActionButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DF955E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for MarqueeSuggestedActionButton() - 8);
  v10 = (v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80)));

  return sub_21DF9134C(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_21DF956EC()
{
  result = qword_27CEA82F0;
  if (!qword_27CEA82F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82E8);
    sub_21DF95770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA82F0);
  }

  return result;
}

unint64_t sub_21DF95770()
{
  result = qword_27CEA82F8;
  if (!qword_27CEA82F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8300);
    sub_21DF957FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA82F8);
  }

  return result;
}

unint64_t sub_21DF957FC()
{
  result = qword_27CEA8308;
  if (!qword_27CEA8308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8310);
    sub_21DF95888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8308);
  }

  return result;
}

unint64_t sub_21DF95888()
{
  result = qword_27CEA8318;
  if (!qword_27CEA8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8318);
  }

  return result;
}

uint64_t sub_21DF958F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for MarqueeSuggestedActionButton() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_21E13FBB4() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  v1[6] = v11;
  *v11 = v1;
  v11[1] = sub_21DF95A5C;

  return sub_21DF93A14(v0 + v7, v0 + v10, v2, v3, v4, v5);
}

uint64_t sub_21DF95A5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v2 = type metadata accessor for MarqueeSuggestedActionButton();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));

  v4 = v2[17];
  v5 = sub_21E13D834();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  if (*(v3 + v2[18]))
  {
  }

  (*(*(v1 - 8) + 8))(v3 + v2[20], v1);
  (*(*(v7 - 8) + 8))(v3 + v2[23]);
  return swift_deallocObject();
}

uint64_t sub_21DF95D1C(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for MarqueeSuggestedActionButton() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_21DF95DD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DF95F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8300);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF95FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v15[0] = sub_21E1405C4();
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v13 = sub_21E1405D4();
  MEMORY[0x223D51B40](v15, a6, v13, a8);
}

uint64_t sub_21DF960C4()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  MEMORY[0x223D52200](&v5, v3);
  return v5;
}

uint64_t sub_21DF9611C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  MEMORY[0x223D52200](&v5, v3);
  return v5;
}

uint64_t sub_21DF961D0()
{
  type metadata accessor for FeedbackController();
  sub_21E141704();
  return v1;
}

uint64_t sub_21DF9620C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8370);
  sub_21E141714();
  return v1;
}

uint64_t sub_21DF9625C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8370);
  sub_21E141734();
  return v1;
}

uint64_t sub_21DF962B0(uint64_t a1)
{
  v2 = sub_21E13F444();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_21E141704();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_21DF963A8(uint64_t a1)
{
  v2 = sub_21E13F444();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC530);
  sub_21E141724();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_21DF964B8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v5 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 16);
  v17(v5, v4);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  v16 = *(a1 + 16);
  *(v7 + 16) = v16;
  *(v7 + 24) = v8;
  v9 = *(v2 + 32);
  v9(v7 + v6, v5, a1);
  (v17)(v5, v18, a1);
  v10 = swift_allocObject();
  *(v10 + 16) = v16;
  *(v10 + 24) = v8;
  v9(v10 + v6, v5, a1);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = sub_21DFA1680;
  v11[5] = v7;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = sub_21DFA1790;
  v12[5] = v11;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = sub_21DFA1704;
  v13[5] = v10;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = sub_21DFA17F0;
  v14[5] = v13;
  sub_21E141A04();
  return v19;
}

uint64_t sub_21DF96734(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for OverlayView() + 60));
  swift_getKeyPath();
  sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if ((*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__dismissOverlay) & 1) != 0 || (swift_getKeyPath(), sub_21E13D3C4(), , !*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity)))
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_21DF9611C();
  }

  return v2 & 1;
}

uint64_t sub_21DF96850(uint64_t result)
{
  if ((result & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    sub_21E141D64();
    sub_21E13F864();
  }

  return result;
}

uint64_t sub_21DF968F0(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for OverlayView() + 60));
  NewSaliencyModel.presentedEntity.setter(0);
  swift_getKeyPath();
  sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  result = swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    swift_allocObject();
    v4 = swift_weakInit();
    MEMORY[0x28223BE20](v4);
    sub_21E141D64();
    sub_21E13F864();
  }

  return result;
}

uint64_t sub_21DF96A84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(a1 + 60));
  swift_getKeyPath();
  v19 = v8;
  sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  swift_beginAccess();
  if (*(v8 + v9))
  {
    return 0;
  }

  swift_getKeyPath();
  v18 = v8;
  sub_21E13D3C4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v11, v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == *MEMORY[0x277D78DB0])
  {
    (*(v5 + 8))(v7, v4);
    swift_getKeyPath();
    v17 = v8;
    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__showVI;
    swift_beginAccess();
    return *(v8 + v13);
  }

  else if (v12 == *MEMORY[0x277D78DA8])
  {
    return 1;
  }

  else
  {
    v14 = *(v2 + *(a1 + 56));
    swift_getKeyPath();
    v17 = v14;
    sub_21DFA21F0(&unk_280F6B040, type metadata accessor for OverlayViewModel);
    sub_21E13D3C4();

    v15 = *(v14 + 32);
    (*(v5 + 8))(v7, v4);
    return v15;
  }
}

uint64_t sub_21DF96DA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC4C0);
  sub_21E141704();
  return v1;
}

uint64_t sub_21DF96DEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8388);
  sub_21E141714();
  return v1;
}

uint64_t OverlayView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8328);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8330);
  v65 = &type metadata for Wayfinder;
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8338);
  swift_getTupleTypeMetadata();
  sub_21E141DC4();
  sub_21E142724();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21E141944();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8340);
  swift_getWitnessTable();
  sub_21DF978C0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADA80);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = MEMORY[0x277CE0880];
  v56 = swift_getWitnessTable();
  v57 = MEMORY[0x277CE0770];
  swift_getWitnessTable();
  sub_21DF97B00();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8360);
  swift_getOpaqueTypeConformance2();
  sub_21DF97BB4();
  swift_getOpaqueTypeMetadata2();
  sub_21E13E3D4();
  v2 = swift_getOpaqueTypeConformance2();
  v3 = sub_21DFA21F0(&qword_280F690A8, MEMORY[0x277D79468]);
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8368);
  v4 = sub_21E13FB54();
  v63 = v2;
  v64 = v3;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = MEMORY[0x277CE0790];
  v52 = swift_getWitnessTable();
  v53 = sub_21DF23E5C(&qword_280F68E28, &qword_27CEA8368);
  v5 = swift_getWitnessTable();
  v61 = v4;
  v62 = v5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v38 - v10;
  v61 = v4;
  v62 = v5;
  v46 = swift_getOpaqueTypeConformance2();
  v11 = type metadata accessor for ShiftingOverlayContainerWrapper();
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v39 = &v38 - v15;
  v16 = sub_21E13D834();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_21E140304();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v38 - v20;
  v21 = *(v49 + *(v48 + 60));
  swift_getKeyPath();
  v61 = v21;
  sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v22 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  (*(v17 + 16))(v19, v21 + v22, v16);
  LOBYTE(v22) = sub_21E13D7F4();
  (*(v17 + 8))(v19, v16);
  if (v22)
  {
    v23 = v42;
    v24 = v48;
    v25 = v49;
    sub_21DF97C68(v48, v42);
    v26 = *(v25 + *(v24 + 52));
    v27 = v46;
    sub_21E0162C4(v23, v26, OpaqueTypeMetadata2, v13);
    v28 = swift_getWitnessTable();
    v29 = v39;
    sub_21DFE2A0C(v13, v11, v28);
    v30 = *(v40 + 8);
    v31 = v26;
    v30(v13, v11);
    sub_21DFE2A0C(v29, v11, v28);
    v32 = v43;
    sub_21DFE248C(v13, v11);
    v30(v13, v11);
    v30(v29, v11);
  }

  else
  {
    sub_21DF97C68(v48, v8);
    v33 = v42;
    v27 = v46;
    sub_21DFE2A0C(v8, OpaqueTypeMetadata2, v46);
    v34 = *(v41 + 8);
    v34(v8, OpaqueTypeMetadata2);
    sub_21DFE2A0C(v33, OpaqueTypeMetadata2, v27);
    swift_getWitnessTable();
    v32 = v43;
    sub_21DFE2584(v8, v11, OpaqueTypeMetadata2);
    v34(v8, OpaqueTypeMetadata2);
    v34(v33, OpaqueTypeMetadata2);
  }

  v50 = swift_getWitnessTable();
  v51 = v27;
  v35 = v45;
  v36 = swift_getWitnessTable();
  sub_21DFE2A0C(v32, v35, v36);
  return (*(v44 + 8))(v32, v35);
}

unint64_t sub_21DF978C0()
{
  result = qword_280F68E60;
  if (!qword_280F68E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8340);
    sub_21DF9794C();
    sub_21DF97A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68E60);
  }

  return result;
}

unint64_t sub_21DF9794C()
{
  result = qword_280F68F20;
  if (!qword_280F68F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8348);
    sub_21DF97A04();
    sub_21DF23E5C(&qword_280F68E90, &qword_27CEA8358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F20);
  }

  return result;
}

unint64_t sub_21DF97A04()
{
  result = qword_280F68F90;
  if (!qword_280F68F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6888);
    sub_21DF23E5C(&qword_280F68D18, &qword_27CEA6888);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F90);
  }

  return result;
}

unint64_t sub_21DF97B00()
{
  result = qword_280F690B0;
  if (!qword_280F690B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADA80);
    sub_21DFA21F0(&qword_280F690D0, MEMORY[0x277D79330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F690B0);
  }

  return result;
}

unint64_t sub_21DF97BB4()
{
  result = qword_280F6B548[0];
  if (!qword_280F6B548[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8360);
    sub_21DFA21F0(&unk_280F6B690, type metadata accessor for NewEntityModel);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F6B548);
  }

  return result;
}

uint64_t sub_21DF97C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v3 = sub_21E13E3D4();
  v171 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v170 = v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80);
  MEMORY[0x28223BE20](v5);
  v168 = v128 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8378);
  MEMORY[0x28223BE20](v7 - 8);
  v162 = v128 - v8;
  v190 = *(a1 - 8);
  v186 = *(v190 + 64);
  MEMORY[0x28223BE20](v9);
  v189 = v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8328);
  v204 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8330);
  v205 = &type metadata for FocusSelectionView;
  v188 = *(a1 + 16);
  v206 = v188;
  v207 = &type metadata for Wayfinder;
  v208 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8338);
  swift_getTupleTypeMetadata();
  sub_21E141DC4();
  v11 = sub_21E142724();
  WitnessTable = swift_getWitnessTable();
  v187 = v11;
  v185 = swift_getWitnessTable();
  v12 = sub_21E141944();
  v134 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v178 = v128 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8340);
  v15 = swift_getWitnessTable();
  v16 = sub_21DF978C0();
  v203 = v12;
  v204 = v14;
  v17 = v12;
  v132 = v14;
  v133 = v12;
  v205 = v15;
  v206 = v16;
  v130 = v16;
  v131 = v15;
  v18 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v145 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v129 = v128 - v20;
  v203 = v17;
  v204 = v14;
  v205 = v15;
  v206 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v203 = OpaqueTypeMetadata2;
  v204 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeMetadata2();
  v139 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v138 = v128 - v23;
  v140 = v24;
  v25 = sub_21E13FB54();
  v144 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v141 = v128 - v26;
  v27 = sub_21E13FB54();
  v153 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v151 = v128 - v28;
  v147 = OpaqueTypeMetadata2;
  v203 = OpaqueTypeMetadata2;
  v204 = OpaqueTypeConformance2;
  v137 = OpaqueTypeConformance2;
  v135 = swift_getOpaqueTypeConformance2();
  v200 = v135;
  v201 = MEMORY[0x277CE0880];
  v146 = v25;
  v136 = swift_getWitnessTable();
  v198 = v136;
  v199 = MEMORY[0x277CE0770];
  v29 = swift_getWitnessTable();
  v30 = sub_21DF97B00();
  v203 = v27;
  v204 = v5;
  v205 = v29;
  v206 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v154 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v152 = v128 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8360);
  v155 = v27;
  v203 = v27;
  v204 = v5;
  v169 = v5;
  v142 = v30;
  v143 = v29;
  v205 = v29;
  v206 = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_21DF97BB4();
  v203 = v31;
  v204 = v33;
  v205 = v34;
  v206 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v157 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v173 = v128 - v37;
  v156 = v31;
  v203 = v31;
  v204 = v33;
  v149 = v34;
  v150 = v33;
  v205 = v34;
  v206 = v35;
  v148 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_21DFA21F0(&qword_280F690A8, MEMORY[0x277D79468]);
  v160 = v36;
  v203 = v36;
  v204 = v3;
  v176 = v38;
  v177 = v3;
  v205 = v38;
  v206 = v39;
  v174 = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v158 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v175 = v128 - v41;
  v159 = v42;
  v43 = sub_21E13FB54();
  v163 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v161 = v128 - v44;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8368);
  v165 = v43;
  v45 = sub_21E13FB54();
  v166 = *(v45 - 8);
  v167 = v45;
  MEMORY[0x28223BE20](v45);
  v164 = v128 - v46;
  v47 = *(a1 + 24);
  v48 = v188;
  v191 = v188;
  v192 = v47;
  v49 = v184;
  v193 = v184;
  sub_21E141CC4();
  sub_21E141934();
  v128[1] = sub_21DF964B8(a1);
  v51 = v189;
  v50 = v190;
  v52 = *(v190 + 16);
  v53 = v49;
  v54 = a1;
  v187 = v190 + 16;
  v180 = v52;
  v52(v189, v53, a1);
  v55 = *(v50 + 80);
  v56 = (v55 + 32) & ~v55;
  v185 = v56 + v186;
  v186 = v55;
  v57 = swift_allocObject();
  *(v57 + 16) = v48;
  *(v57 + 24) = v47;
  v181 = v56;
  v182 = v47;
  v58 = *(v50 + 32);
  v59 = v129;
  v190 = v50 + 32;
  v179 = v58;
  v58(v57 + v56, v51, a1);
  v60 = v133;
  v61 = v178;
  sub_21E141274();

  (*(v134 + 8))(v61, v60);
  v183 = v54;
  v62 = v184;
  v63 = *(v184 + *(v54 + 60));
  swift_getKeyPath();
  v64 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v203 = v63;
  v65 = sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  v178 = v64;
  sub_21E13D3C4();

  v66 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream;
  swift_beginAccess();
  v67 = *(v63 + v66);
  if (v67 && (swift_getObjectType(), (v68 = dynamic_cast_existential_3_conditional(v67)) != 0))
  {
    v69 = v68;
    swift_getObjectType();
    v203 = v69;
    v70 = sub_21E13EB24();
  }

  else
  {
    v70 = -1;
  }

  swift_getKeyPath();
  v203 = v63;
  sub_21E13D3C4();

  v71 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  swift_beginAccess();
  if (*(v63 + v71))
  {
    v72 = *(v63 + v71);
  }

  else
  {
    swift_getKeyPath();
    v203 = v63;
    sub_21E13D3C4();

    v72 = *(v63 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity);
  }

  v73 = v162;
  sub_21DF9E1DC(v70, v72, v183);

  v74 = sub_21E13CE84();
  (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
  v75 = v138;
  v76 = v147;
  MEMORY[0x223D514F0](v73, v147, v137);
  sub_21DF23614(v73, &qword_27CEA8378);
  (*(v145 + 8))(v59, v76);
  sub_21E13FB64();
  sub_21E140914();
  v77 = v140;
  v78 = v141;
  sub_21E140FA4();
  (*(v139 + 8))(v75, v77);
  swift_getKeyPath();
  v203 = v63;
  v134 = v65;
  sub_21E13D3C4();

  swift_beginAccess();
  v79 = v151;
  v80 = v146;
  sub_21E140FB4();
  (*(v144 + 8))(v78, v80);
  swift_getKeyPath();
  v203 = v63;
  sub_21E13D3C4();

  v81 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportData;
  swift_beginAccess();
  v82 = v168;
  sub_21DF236C0(v63 + v81, v168, &qword_27CEADA80);
  v83 = v189;
  v84 = v183;
  v180(v189, v62, v183);
  v85 = swift_allocObject();
  v86 = v181;
  v87 = v182;
  *(v85 + 16) = v188;
  *(v85 + 24) = v87;
  v179(v85 + v86, v83, v84);
  v88 = v152;
  v89 = v155;
  sub_21E141324();

  sub_21DF23614(v82, &qword_27CEADA80);
  (*(v153 + 8))(v79, v89);
  swift_getKeyPath();
  v203 = v63;
  sub_21E13D3C4();

  v203 = *(v63 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v90 = v189;
  v91 = v183;
  v92 = v184;
  v180(v189, v184, v183);
  v93 = swift_allocObject();
  v94 = v188;
  v95 = v181;
  v96 = v182;
  *(v93 + 16) = v188;
  *(v93 + 24) = v96;
  v179(v93 + v95, v90, v91);

  v97 = v156;
  sub_21E141324();

  (*(v154 + 8))(v88, v97);
  swift_getKeyPath();
  v203 = v63;
  sub_21E13D3C4();

  v98 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__appConfiguration;
  swift_beginAccess();
  v99 = v171;
  v100 = v63 + v98;
  v101 = v170;
  (*(v171 + 16))(v170, v100, v177);
  v102 = v189;
  v103 = v183;
  v104 = v180;
  v180(v189, v92, v183);
  v105 = swift_allocObject();
  *(v105 + 16) = v94;
  v106 = v181;
  v107 = v182;
  *(v105 + 24) = v182;
  v179(v105 + v106, v102, v103);
  v108 = v160;
  v109 = v177;
  v110 = v173;
  sub_21E141324();

  (*(v99 + 8))(v101, v109);
  (*(v157 + 8))(v110, v108);
  v111 = v189;
  v112 = v183;
  v104(v189, v184, v183);
  v113 = swift_allocObject();
  *(v113 + 16) = v188;
  *(v113 + 24) = v107;
  v114 = v179;
  v179(v113 + v106, v111, v112);
  v203 = v108;
  v204 = v109;
  v205 = v176;
  v206 = v174;
  v115 = swift_getOpaqueTypeConformance2();
  v116 = v161;
  v117 = v159;
  v118 = v175;
  sub_21E141314();

  (*(v158 + 8))(v118, v117);
  v180(v111, v184, v112);
  v119 = swift_allocObject();
  v120 = v181;
  v121 = v182;
  *(v119 + 16) = v188;
  *(v119 + 24) = v121;
  v114(v119 + v120, v111, v112);
  v196 = v115;
  v197 = MEMORY[0x277CE0790];
  v122 = v165;
  v123 = swift_getWitnessTable();
  sub_21DF3D110();
  v124 = v164;
  sub_21DF95FE8(MEMORY[0x277D85048], sub_21DF9E974, 0, sub_21DFA0FD0, v119, v122, MEMORY[0x277D85048], v123);

  (*(v163 + 8))(v116, v122);
  sub_21E140934();
  v125 = sub_21DF23E5C(&qword_280F68E28, &qword_27CEA8368);
  v194 = v123;
  v195 = v125;
  v126 = v167;
  swift_getWitnessTable();
  sub_21E1410D4();
  return (*(v166 + 8))(v124, v126);
}

uint64_t sub_21DF991A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v232 = a4;
  *&v256 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8328);
  *(&v256 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8330);
  *&v257 = &type metadata for FocusSelectionView;
  *(&v257 + 1) = a2;
  *&v258 = &type metadata for Wayfinder;
  *(&v258 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8338);
  swift_getTupleTypeMetadata();
  v7 = sub_21E141DC4();
  v231 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v230 = &v171 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA83D0);
  v211 = *(v9 - 8);
  v212 = v9;
  MEMORY[0x28223BE20](v9);
  v191 = (&v171 - v10);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8338);
  MEMORY[0x28223BE20](v213);
  v216 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v214 = &v171 - v13;
  v215 = *(a2 - 8);
  MEMORY[0x28223BE20](v14);
  v229 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v228 = &v171 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA83D8);
  v208 = *(v18 - 8);
  v209 = v18;
  MEMORY[0x28223BE20](v18);
  v199 = &v171 - v19;
  v200 = type metadata accessor for SelectedSubjectReticuleView();
  v198 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v188 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA83E0);
  MEMORY[0x28223BE20](v21 - 8);
  v201 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v189 = &v171 - v24;
  v25 = sub_21E13EDA4();
  v204 = *(v25 - 8);
  v205 = v25;
  MEMORY[0x28223BE20](v25);
  v190 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v187 = &v171 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA83E8);
  MEMORY[0x28223BE20](v29 - 8);
  v197 = &v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v196 = &v171 - v32;
  v33 = type metadata accessor for VIUIAnnotationCanvas();
  v193 = *(v33 - 8);
  v194 = v33;
  MEMORY[0x28223BE20](v33);
  v192 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA83F0);
  MEMORY[0x28223BE20](v35 - 8);
  v195 = &v171 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v203 = &v171 - v38;
  v39 = sub_21E13E3D4();
  v220 = *(v39 - 8);
  v221 = v39;
  MEMORY[0x28223BE20](v39);
  v219 = &v171 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21E13E9C4();
  v222 = *(v41 - 8);
  v223 = v41;
  MEMORY[0x28223BE20](v41);
  v207 = &v171 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v202 = &v171 - v44;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8330);
  MEMORY[0x28223BE20](v210);
  v227 = &v171 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v236 = &v171 - v47;
  v234 = a3;
  v235 = a2;
  v218 = type metadata accessor for OverlayView();
  v233 = *(v218 - 8);
  v48 = *(v233 + 64);
  MEMORY[0x28223BE20](v218);
  v224 = &v171 - v49;
  v206 = type metadata accessor for ColorSchemeTracker();
  MEMORY[0x28223BE20](v206);
  v51 = (&v171 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8328);
  MEMORY[0x28223BE20](v225);
  v226 = &v171 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v171 - v54;
  v56 = v7;
  v57 = sub_21E142724();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = &v171 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v63 = &v171 - v62;
  v217 = a1;
  if (sub_21DF960C4())
  {
    v182 = v60;
    v183 = v58;
    v184 = v63;
    v185 = v57;
    v186 = v56;
    *v51 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
    swift_storeEnumTagMultiPayload();
    sub_21DFA21F0(qword_280F6A9A8, type metadata accessor for ColorSchemeTracker);
    sub_21E141004();
    sub_21DFA2190(v51, type metadata accessor for ColorSchemeTracker);
    v64 = v233;
    v65 = v224;
    v67 = v217;
    v66 = v218;
    v178 = *(v233 + 16);
    v179 = v233 + 16;
    v178(v224, v217, v218);
    v68 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v177 = *(v64 + 80);
    v69 = swift_allocObject();
    v70 = v234;
    *(v69 + 16) = v235;
    *(v69 + 24) = v70;
    v72 = *(v64 + 32);
    v71 = v64 + 32;
    v176 = v72;
    v72(v69 + v68, v65, v66);
    v73 = *(v225 + 36);
    v206 = v55;
    v74 = &v55[v73];
    *v74 = sub_21DFA18C8;
    v74[1] = v69;
    v75 = v67;
    if (qword_280F69E50 != -1)
    {
      swift_once();
    }

    v76 = &unk_280F6B000;
    v180 = byte_280F6FD20;
    v77 = v236;
    v233 = v71;
    v181 = v48;
    if (byte_280F6FD20 != 1 || (v175 = sub_21DF96DEC()) == 0)
    {
      v194 = 0;
      v98 = 1;
      goto LABEL_20;
    }

    v172 = v68;
    v78 = *(v67 + v66[15]);
    swift_getKeyPath();
    v79 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
    *&v256 = v78;
    v173 = sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    v174 = v79;
    sub_21E13D3C4();

    v80 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__appConfiguration;
    swift_beginAccess();
    v82 = v220;
    v81 = v221;
    v83 = v78 + v80;
    v84 = v219;
    (*(v220 + 16))(v219, v83, v221);
    v85 = v202;
    sub_21E13E394();
    (*(v82 + 8))(v84, v81);
    if (sub_21E13E944() & 1) != 0 || (sub_21E13E8D4() & 1) != 0 || (sub_21E13E964() & 1) != 0 || (sub_21E13E9A4())
    {
      swift_getKeyPath();
      *&v256 = v78;
      sub_21E13D3C4();

      v86 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
      swift_beginAccess();
      v87 = sub_21E13D834();
      v88 = v192;
      (*(*(v87 - 8) + 16))(v192, v78 + v86, v87);
      v89 = v194;
      (*(v222 + 16))(v88 + *(v194 + 20), v85, v223);
      v90 = (v88 + *(v89 + 24));
      v90[3] = type metadata accessor for VIUIAnnotationCanvasController();
      v90[4] = sub_21DFA21F0(&qword_27CEA83C0, type metadata accessor for VIUIAnnotationCanvasController);
      v91 = v175;
      *v90 = v175;
      v92 = v203;
      sub_21DFA20C4(v88, v203, type metadata accessor for VIUIAnnotationCanvas);
      (*(v193 + 56))(v92, 0, 1, v89);
    }

    else
    {
      (*(v193 + 56))(v203, 1, 1, v194);
      v91 = v175;
    }

    if (sub_21E13E984())
    {
      *&v256 = v91;
      v93 = sub_21E044ADC();
      MEMORY[0x28223BE20](v93);
      *(&v171 - 2) = &v256;
      v94 = v189;
      sub_21DF57890(sub_21DFA22D4, v93, v189);
      v194 = 0;

      v95 = v204;
      v96 = v205;
      if ((*(v204 + 48))(v94, 1, v205) != 1)
      {
        v193 = *(v95 + 32);
        v101 = v187;
        (v193)(v187, v94, v96);
        sub_21E045650();
        v103 = v102;
        v105 = v104;
        v107 = v106;
        v109 = v108;
        swift_getKeyPath();
        *&v256 = v78;
        sub_21E13D3C4();

        v110 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
        swift_beginAccess();
        v111 = v200;
        v112 = *(v200 + 20);
        v113 = sub_21E13D834();
        v114 = v188;
        (*(*(v113 - 8) + 16))(&v188[v112], v78 + v110, v113);
        (v193)(v114 + *(v111 + 24), v101, v96);
        *v114 = v103;
        v114[1] = v105;
        v114[2] = v107;
        v114[3] = v109;
        v115 = v114;
        v100 = v196;
        sub_21DFA20C4(v115, v196, type metadata accessor for SelectedSubjectReticuleView);
        v99 = 0;
        goto LABEL_19;
      }

      sub_21DF23614(v94, &qword_27CEA83E0);
    }

    else
    {
      v194 = 0;
    }

    v99 = 1;
    v100 = v196;
LABEL_19:
    (*(v198 + 56))(v100, v99, 1, v200);
    v116 = v203;
    v117 = v195;
    sub_21DF236C0(v203, v195, &qword_27CEA83F0);
    v118 = v197;
    sub_21DF236C0(v100, v197, &qword_27CEA83E8);
    v119 = v199;
    sub_21DF236C0(v117, v199, &qword_27CEA83F0);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8420);
    sub_21DF236C0(v118, v119 + *(v120 + 48), &qword_27CEA83E8);

    sub_21DF23614(v100, &qword_27CEA83E8);
    sub_21DF23614(v116, &qword_27CEA83F0);
    (*(v222 + 8))(v202, v223);
    sub_21DF23614(v118, &qword_27CEA83E8);
    sub_21DF23614(v117, &qword_27CEA83F0);
    v77 = v236;
    sub_21DF3DE9C(v119, v236, &qword_27CEA83D8);
    v98 = 0;
    v75 = v217;
    v66 = v218;
    v68 = v172;
    v76 = &unk_280F6B000;
LABEL_20:
    (*(v208 + 56))(v77, v98, 1, v209);
    v121 = *(v75 + v66[15]);
    swift_getKeyPath();
    v218 = v76[85];
    *&v256 = v121;
    v209 = sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v122 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection;
    swift_beginAccess();
    v123 = *(v121 + v122);
    v124 = *(v75 + v66[14]);
    v125 = v224;
    v178(v224, v75, v66);
    v126 = swift_allocObject();
    v127 = v68;
    v129 = v234;
    v128 = v235;
    *(v126 + 16) = v235;
    *(v126 + 24) = v129;
    v176(v126 + v127, v125, v66);

    sub_21E1073EC(v123, v124, &unk_21E148EA0, v126, &v256);
    sub_21DFE2A0C(v75 + v66[16], v128, v129);

    v130 = sub_21DF96A84(v66) & 1;
    swift_getKeyPath();
    *&v254[0] = v121;
    sub_21E13D3C4();

    v131 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__appConfiguration;
    swift_beginAccess();
    v133 = v220;
    v132 = v221;
    v134 = v121 + v131;
    v135 = v219;
    (*(v220 + 16))(v219, v134, v221);
    v136 = v207;
    sub_21E13E394();
    (*(v133 + 8))(v135, v132);
    LODWORD(v135) = sub_21E13E9A4();
    (*(v222 + 8))(v136, v223);
    if ((v180 & v135) == 1)
    {
      v137 = sub_21DF96DEC();
      if (v137)
      {
        *&v254[0] = v137;
        v138 = sub_21E044ADC();
        MEMORY[0x28223BE20](v138);
        *(&v171 - 2) = v254;
        v139 = v201;
        sub_21DF57890(sub_21DFA20A0, v138, v201);

        v140 = v204;
        v141 = v205;
        if ((*(v204 + 48))(v139, 1, v205) != 1)
        {
          v142 = v190;
          (*(v140 + 32))(v190, v139, v141);
          v143 = sub_21E1401C4();
          v144 = v191;
          *v191 = v143;
          *(v144 + 8) = 0;
          *(v144 + 16) = 1;
          v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8418);
          sub_21DF9B420(v142, v144 + *(v145 + 44));
          v146 = sub_21E140934();
          sub_21E13F374();
          v147 = v140;
          v148 = v212;
          v149 = v144 + *(v212 + 36);
          *v149 = v146;
          *(v149 + 8) = v150;
          *(v149 + 16) = v151;
          *(v149 + 24) = v152;
          *(v149 + 32) = v153;
          *(v149 + 40) = 0;
          v154 = v214;
          sub_21DF3DE9C(v144, v214, &qword_27CEA83D0);
          (*(v211 + 56))(v154, 0, 1, v148);
          (*(v147 + 8))(v142, v141);
LABEL_27:
          v155 = v206;
          v156 = v226;
          sub_21DF236C0(v206, v226, &qword_27CEA8328);
          v253[0] = v156;
          v157 = v227;
          sub_21DF236C0(v236, v227, &qword_27CEA8330);
          v250 = v260;
          v251 = v261;
          v252 = v262;
          v246 = v256;
          v247 = v257;
          v248 = v258;
          v249 = v259;
          v253[1] = v157;
          v253[2] = &v246;
          v158 = v215;
          v159 = v228;
          v160 = v229;
          v161 = v235;
          (*(v215 + 16))();
          v244 = v121;
          v245 = v130;
          v253[3] = v160;
          v253[4] = &v244;
          v162 = v154;
          v163 = v154;
          v164 = v216;
          sub_21DF236C0(v162, v216, &qword_27CEA8338);
          v253[5] = v164;
          sub_21DFA1C44(&v256, v254);

          v243[0] = v225;
          v243[1] = v210;
          v243[2] = &type metadata for FocusSelectionView;
          v243[3] = v161;
          v243[4] = &type metadata for Wayfinder;
          v243[5] = v213;
          v237 = sub_21DFA1CA0();
          v238 = sub_21DFA1DB8();
          v239 = sub_21DFA1E68();
          v240 = v234;
          v241 = sub_21DFA1EBC();
          v242 = sub_21DFA1F10();
          sub_21E012D74(v253, 6uLL, v243);

          sub_21DFA204C(&v256);
          sub_21DF23614(v163, &qword_27CEA8338);
          v165 = *(v158 + 8);
          v165(v159, v161);
          sub_21DF23614(v236, &qword_27CEA8330);
          sub_21DF23614(v155, &qword_27CEA8328);
          sub_21DF23614(v164, &qword_27CEA8338);

          v165(v229, v161);
          v254[4] = v250;
          v254[5] = v251;
          v255 = v252;
          v254[0] = v246;
          v254[1] = v247;
          v254[2] = v248;
          v254[3] = v249;
          sub_21DFA204C(v254);
          sub_21DF23614(v227, &qword_27CEA8330);
          sub_21DF23614(v226, &qword_27CEA8328);
          v166 = v231;
          v167 = v182;
          v168 = v186;
          (*(v231 + 32))(v182, v230, v186);
          (*(v166 + 56))(v167, 0, 1, v168);
          swift_getWitnessTable();
          v63 = v184;
          sub_21DFF63B0(v167, v184);
          v97 = *(v183 + 8);
          v57 = v185;
          v97(v167, v185);
          goto LABEL_28;
        }
      }

      else
      {
        v139 = v201;
        (*(v204 + 56))(v201, 1, 1, v205);
      }

      sub_21DF23614(v139, &qword_27CEA83E0);
    }

    v154 = v214;
    (*(v211 + 56))(v214, 1, 1, v212);
    goto LABEL_27;
  }

  (*(v231 + 56))(v60, 1, 1, v56);
  swift_getWitnessTable();
  sub_21DFF63B0(v60, v63);
  v97 = *(v58 + 8);
  v97(v60, v57);
LABEL_28:
  WitnessTable = swift_getWitnessTable();
  v169 = swift_getWitnessTable();
  sub_21DFE2A0C(v63, v57, v169);
  return (v97)(v63, v57);
}

uint64_t sub_21DF9AB80(uint64_t a1)
{
  v2 = sub_21E13F444();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  type metadata accessor for OverlayView();
  return sub_21DF963A8(v5);
}

uint64_t sub_21DF9AC70(uint64_t *a1, uint64_t a2)
{
  v2[3] = a2;
  v3 = *a1;
  v2[4] = sub_21E1423C4();
  v2[5] = sub_21E1423B4();
  v2[2] = v3;
  v4 = swift_task_alloc();
  v2[6] = v4;
  v5 = type metadata accessor for OverlayView();
  v2[7] = v5;
  *v4 = v2;
  v4[1] = sub_21DF9AD64;

  return sub_21DF9AF14(v2 + 2, v5);
}

uint64_t sub_21DF9AD64()
{

  v1 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DF9AEA0, v1, v0);
}

uint64_t sub_21DF9AEA0()
{

  NewSaliencyModel.reportGroundingLabels()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DF9AF14(void *a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[5] = *a1;
  sub_21E1423C4();
  v3[6] = sub_21E1423B4();
  v5 = sub_21E142364();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_21DF9AFB4, v5, v4);
}

uint64_t sub_21DF9AFB4()
{
  v1 = v0[5];
  if (v1 < 0)
  {
    v0[9] = *(v0[4] + *(v0[3] + 60));
    v4 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x50);
    v5 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x58);
    v15 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x68);
    v16 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x60);

    sub_21E142614();
    CGRectOffset(v18, -v4, -v5);
    v19.origin.x = v4;
    v19.origin.y = v5;
    v19.size.width = v16;
    v19.size.height = v15;
    CGRectGetWidth(v19);
    v20.origin.x = v4;
    v20.origin.y = v5;
    v20.size.width = v16;
    v20.size.height = v15;
    CGRectGetHeight(v20);
    sub_21E142614();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_21DF9B190;

    return NewSaliencyModel.updateUserSelection(_:)(v7, v9, v11, v13);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_21DF9B190()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21DF9B2B0, v3, v2);
}

uint64_t sub_21DF9B2B0()
{
  v1 = v0[9];

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__hasHighlighted;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__hasHighlighted) == 1)
  {

    *(v1 + v2) = 1;
  }

  else
  {
    v3 = v0[9];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[2] = v3;
    sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_21DF9B420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BundleTextDetailView();
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-v9];
  v11 = v5[7];
  v12 = sub_21E13EDA4();
  (*(*(v12 - 8) + 16))(v10 + v11, a1, v12);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + v5[9];
  v20 = 0;
  sub_21E141704();
  v14 = v22;
  *v13 = v21;
  *(v13 + 1) = v14;
  v15 = v10 + v5[10];
  v20 = 0;
  sub_21E141704();
  v16 = v22;
  *v15 = v21;
  *(v15 + 1) = v16;
  *(v10 + v5[8]) = 0;
  sub_21DFA212C(v10, v7);
  *a2 = 0;
  *(a2 + 8) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8428);
  sub_21DFA212C(v7, a2 + *(v17 + 48));
  sub_21DFA2190(v10, type metadata accessor for BundleTextDetailView);
  return sub_21DFA2190(v7, type metadata accessor for BundleTextDetailView);
}

uint64_t sub_21DF9B608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8350);
  MEMORY[0x28223BE20](v85);
  v86 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8390);
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x28223BE20](v8);
  v84 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6888);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v66 - v11);
  *v12 = sub_21E141CC4();
  v12[1] = v13;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8398) + 44);
  v76 = v12;
  sub_21DF9C0A4(a1, v12 + v14);
  v15 = type metadata accessor for OverlayView();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v66 - v19;
  v21 = *(v16 + 16);
  v82 = a1;
  v74 = v21;
  v75 = v16 + 16;
  v21(&v66 - v19, a1, v15, v18);
  sub_21E1423C4();
  v22 = sub_21E1423B4();
  v23 = *(v16 + 80);
  v73 = ~v23;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v22;
  v24[3] = v25;
  v83 = a2;
  v24[4] = a2;
  v24[5] = a3;
  v80 = a3;
  v27 = *(v16 + 32);
  v26 = v16 + 32;
  v77 = v15;
  v72 = v27;
  v27(v24 + ((v23 + 48) & ~v23), v20, v15);
  v28 = sub_21E1423F4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E1423D4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v70 = sub_21E13F954();
    v71 = &v66;
    v69 = *(v70 - 8);
    MEMORY[0x28223BE20](v70);
    v67 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v87 = 0;
    v88 = 0xE000000000000000;
    v68 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_21E142884();

    v87 = 0xD000000000000033;
    v88 = 0x800000021E15BE60;
    v89 = 150;
    v33 = sub_21E142AB4();
    MEMORY[0x223D52A60](v33);

    v66 = &v66;
    v35 = MEMORY[0x28223BE20](v34);
    (*(v29 + 16))(&v66 - v68, v31, v28, v35);
    v68 = v26;
    v36 = v67;
    sub_21E13F944();
    (*(v29 + 8))(v31, v28);
    v37 = v84;
    sub_21DF3DE9C(v76, v84, &qword_27CEA6888);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6890);
    v39 = (*(v69 + 32))(v37 + *(v38 + 36), v36, v70);
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6898);
    v41 = v84;
    v42 = (v84 + *(v40 + 36));
    v43 = sub_21E13F844();
    (*(v29 + 32))(&v42[*(v43 + 20)], v31, v28);
    *v42 = &unk_21E148D58;
    *(v42 + 1) = v24;
    v39 = sub_21DF3DE9C(v76, v41, &qword_27CEA6888);
  }

  v44 = MEMORY[0x28223BE20](v39);
  v45 = v82;
  v46 = v77;
  v74(&v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v82, v77, v44);
  v47 = (v23 + 32) & v73;
  v48 = swift_allocObject();
  v49 = v80;
  *(v48 + 16) = v83;
  *(v48 + 24) = v49;
  v72(v48 + v47, &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
  v50 = v86;
  (*(v78 + 32))(v86, v84, v79);
  v51 = (v50 + *(v85 + 36));
  *v51 = 0;
  v51[1] = 0;
  v51[2] = sub_21DFA1344;
  v51[3] = v48;
  v52 = *(v45 + *(v46 + 60));
  v53 = sub_21E13D834();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v66 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v87 = v52;
  sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v57 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  (*(v54 + 16))(v56, v52 + v57, v53);
  LOBYTE(v57) = sub_21E13D804();
  (*(v54 + 8))(v56, v53);
  if ((v57 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (qword_280F69E50 != -1)
  {
    swift_once();
  }

  if (byte_280F6FD20)
  {
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8348);
    MEMORY[0x28223BE20](v58);
    v60 = &v66 - v59;
    sub_21DF9C834(v86, v82, v83, v49, &v66 - v59);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA83A0);
    MEMORY[0x28223BE20](v61);
    sub_21DF236C0(v60, &v66 - v62, &qword_27CEA8348);
    swift_storeEnumTagMultiPayload();
    sub_21DF9794C();
    sub_21DF97A04();
    sub_21E1402F4();
    sub_21DF23614(v60, &qword_27CEA8348);
  }

  else
  {
LABEL_9:
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA83A0);
    MEMORY[0x28223BE20](v63);
    sub_21DF236C0(v86, &v66 - v64, &qword_27CEA8350);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8348);
    sub_21DF9794C();
    sub_21DF97A04();
    sub_21E1402F4();
  }

  return sub_21DF23614(v86, &qword_27CEA8350);
}

double sub_21DF9C0A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverlayView();
  v5 = *(a1 + *(v4 + 60));
  v6 = *(a1 + *(v4 + 52));

  v7 = v6;
  v10 = sub_21DF9625C();

  return CardContainer.init(model:sheetAssistant:feedbackController:)(v5, v7, v10, v8, v9, a2);
}

uint64_t sub_21DF9C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v6 = sub_21E142994();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_21E1423C4();
  v5[8] = sub_21E1423B4();
  v8 = sub_21E142364();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_21DF9C238, v8, v7);
}

uint64_t sub_21DF9C238()
{
  sub_21E142BB4();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_21DF9C308;

  return sub_21E077260(135000000000000000, 0, 0, 0, 1);
}

uint64_t sub_21DF9C308()
{
  v2 = *v1;
  v2[12] = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[9];
    v7 = v2[10];
    v8 = sub_21DF9C5A0;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[9];
    v7 = v2[10];
    v8 = sub_21DF9C4A0;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21DF9C4A0()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_21E142434();
  v2 = swift_task_alloc();
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  sub_21E141D64();
  sub_21E13F864();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21DF9C5A0()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_21E142434();
  v2 = swift_task_alloc();
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  sub_21E141D64();
  sub_21E13F864();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21DF9C6A0(uint64_t a1)
{
  v2 = type metadata accessor for OverlayView();
  v3 = *(a1 + *(v2 + 60));
  if (*(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__dismissOverlay))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__dismissOverlay) = 0;
  }

  MEMORY[0x28223BE20](v2);
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21DF9C834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21E141CA4();
  v12 = v11;
  sub_21DF9C958(a2, a3, a4, &v22);
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  *&v30 = v10;
  *(&v30 + 1) = v12;
  sub_21DF236C0(a1, a5, &qword_27CEA8350);
  v13 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8348) + 36));
  v14 = v29;
  v13[2] = v28;
  v13[3] = v14;
  v13[4] = v30;
  v15 = v27;
  *v13 = v26;
  v13[1] = v15;
  v31[2] = v20;
  v31[3] = v21;
  v31[0] = v18;
  v31[1] = v19;
  v32 = v10;
  v33 = v12;
  sub_21DF236C0(&v26, &v17, &qword_27CEA8358);
  return sub_21DF23614(v31, &qword_27CEA8358);
}

uint64_t sub_21DF9C958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for OverlayView();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v34 = &v31 - v10;
  sub_21E13DE14();
  v11 = sub_21E13DDF4();
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  result = 0;
  v17 = 0;
  v18 = 0;
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA83A8);
    v19 = sub_21E13E444();
    v20 = *(v19 - 8);
    v32 = a2;
    v33 = a3;
    v21 = v20;
    v22 = *(v20 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21E147C80;
    v24 = v12 + v23;
    v25 = *MEMORY[0x277D794A8];
    v31 = v8;
    v26 = *(v21 + 104);
    v26(v24, v25, v19);
    v26(v24 + v22, *MEMORY[0x277D79498], v19);
    v27 = v34;
    v28 = v31;
    (*(v9 + 16))(v34, a1, v31);
    v29 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = swift_allocObject();
    v30 = v33;
    *(v15 + 16) = v32;
    *(v15 + 24) = v30;
    (*(v9 + 32))(v15 + v29, v27, v28);
    v17 = sub_21E141584();
    result = swift_getKeyPath();
    v18 = 0x4010000000000000;
    v14 = sub_21DFA13F4;
    v13 = 0x4038000000000000;
  }

  *a4 = v12;
  a4[1] = v13;
  a4[2] = v14;
  a4[3] = v15;
  a4[4] = result;
  a4[5] = v17;
  a4[6] = 0;
  a4[7] = v18;
  return result;
}

uint64_t sub_21DF9CBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v26 = a2;
  v27 = a1;
  v4 = sub_21E13E444();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OverlayView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_21E1423F4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, v26, v7);
  v16 = v4;
  (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v4);
  sub_21E1423C4();
  v17 = sub_21E1423B4();
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = (v9 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 2) = v17;
  *(v20 + 3) = v21;
  v22 = v29;
  *(v20 + 4) = v28;
  *(v20 + 5) = v22;
  (*(v8 + 32))(&v20[v18], v11, v7);
  (*(v5 + 32))(&v20[v19], v25, v16);
  sub_21E0C2E04(0, 0, v14, &unk_21E148DC0, v20);
}

uint64_t sub_21DF9CED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_21E1423C4();
  v7[7] = sub_21E1423B4();
  v8 = swift_task_alloc();
  v7[8] = v8;
  *v8 = v7;
  v8[1] = sub_21DF9CFC8;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v7 + 13, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v9);
}

uint64_t sub_21DF9CFC8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21DF9D254;
  }

  else
  {
    v2 = sub_21DF9D0DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DF9D0DC()
{
  *(v0 + 105) = *(v0 + 104);
  v2 = sub_21E142364();
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;

  return MEMORY[0x2822009F8](sub_21DF9D15C, v2, v1);
}

uint64_t sub_21DF9D15C()
{
  if (*(v0 + 105))
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    v2 = type metadata accessor for OverlayView();
    *v1 = v0;
    v1[1] = sub_21DF9D338;
    v3 = *(v0 + 24);

    return sub_21DF9D458(v3, v2);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_21DF9D254()
{
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DF9D2D8, v2, v1);
}

uint64_t sub_21DF9D2D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DF9D338()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21DFA22F4, v3, v2);
}

uint64_t sub_21DF9D458(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80);
  v3[13] = swift_task_alloc();
  v4 = sub_21E13E444();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  sub_21E1423C4();
  v3[19] = sub_21E1423B4();
  v6 = sub_21E142364();
  v3[20] = v6;
  v3[21] = v5;

  return MEMORY[0x2822009F8](sub_21DF9D5CC, v6, v5);
}

uint64_t sub_21DF9D5CC()
{
  v1 = sub_21DF96DEC();
  if (v1)
  {
    v2 = v1;
    v0[24] = v1;
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[14];
    (*(v4 + 16))(v3, v0[10], v5);
    v6 = (*(v4 + 88))(v3, v5);
    v7 = *MEMORY[0x277D794A8];
    (*(v4 + 8))(v3, v5);
    v8 = v0[17];
    if (v6 == v7)
    {
      sub_21DF9F0D4(v2, v0[11], v0[17]);
    }

    else
    {
      v15 = sub_21E13D264();
      (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    }

    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    sub_21DF3DE9C(v0[17], v0[18], &qword_27CEA9990);
    v19 = *(v16 + *(v18 + 60));
    swift_getKeyPath();
    v0[8] = v19;
    sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v20 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportData;
    swift_beginAccess();
    sub_21DF236C0(v19 + v20, v17, &qword_27CEADA80);
    v21 = sub_21E13E084();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 48))(v17, 1, v21);
    v24 = v0[13];
    if (v23 == 1)
    {
      sub_21DF23614(v0[13], &qword_27CEADA80);
      v25 = 0;
    }

    else
    {
      v25 = sub_21E13E044();
      (*(v22 + 8))(v24, v21);
    }

    v0[25] = v25;
    swift_getKeyPath();
    v0[9] = v19;
    sub_21E13D3C4();

    v26 = (v19 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
    swift_beginAccess();
    v27 = *v26;
    v0[26] = *v26;
    v28 = v26[1];
    swift_unknownObjectRetain();
    v29 = sub_21E13E464();
    v0[27] = v29;
    v30 = swift_task_alloc();
    v0[28] = v30;
    *v30 = v0;
    v30[1] = sub_21DF9DFA0;
    v31 = v0[18];
    v32 = v0[10];

    return MEMORY[0x2821E09E0](v32, v29, v25, v31, v27, v28);
  }

  else
  {
    v9 = *(v0[12] + *(v0[11] + 60));
    type metadata accessor for VIUIAnnotationCanvasController();
    v10 = swift_allocObject();
    v0[22] = v10;
    *(v10 + 16) = 0;
    *(v10 + 32) = 0;
    v11 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
    v12 = sub_21E13DA54();
    (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);

    sub_21E13D3F4();
    *(v10 + 24) = v9;

    sub_21E04268C();
    swift_allocObject();
    swift_weakInit();
    sub_21E13D3A4();

    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = sub_21DF9DAE0;

    return sub_21E04399C();
  }
}