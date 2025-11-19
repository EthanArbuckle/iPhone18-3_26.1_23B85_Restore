uint64_t TTRAccountsListsInteractor.undoManager.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(v0, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

void sub_21D739EC0(NSObject *a1, unsigned __int8 a2, unsigned __int8 a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F300);
    v8 = a1;
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v54 = v12;
      v13 = 0xE500000000000000;
      *v11 = 136315650;
      v14 = 0x6E756F4669726973;
      v15 = 0xEF737070416E4964;
      if (a2 != 5)
      {
        v14 = 0x6574656C706D6F63;
        v15 = 0xE900000000000064;
      }

      v16 = 0xE700000000000000;
      v17 = 0x64656767616C66;
      if (a2 != 3)
      {
        v17 = 0x64656E6769737361;
        v16 = 0xE800000000000000;
      }

      if (a2 <= 4u)
      {
        v14 = v17;
        v15 = v16;
      }

      v18 = 0x656C756465686373;
      v19 = 0xE300000000000000;
      if (a2 == 1)
      {
        v19 = 0xE900000000000064;
      }

      else
      {
        v18 = 7105633;
      }

      if (a2)
      {
        v13 = v19;
      }

      else
      {
        v18 = 0x7961646F74;
      }

      if (a2 <= 2u)
      {
        v20 = v18;
      }

      else
      {
        v20 = v14;
      }

      if (a2 <= 2u)
      {
        v21 = v13;
      }

      else
      {
        v21 = v15;
      }

      v22 = sub_21D0CDFB4(v20, v21, &v54);

      *(v11 + 4) = v22;
      *(v11 + 12) = 2080;
      v23 = 0x6E6564646968;
      if (a3 != 2)
      {
        v23 = 0x6D6F74737563;
      }

      v24 = 0xE700000000000000;
      v25 = 0x656C6269736976;
      if (!a3)
      {
        v25 = 0x656E696665646E75;
        v24 = 0xE900000000000064;
      }

      if (a3 <= 1u)
      {
        v26 = v25;
      }

      else
      {
        v26 = v23;
      }

      if (a3 <= 1u)
      {
        v27 = v24;
      }

      else
      {
        v27 = 0xE600000000000000;
      }

      v28 = sub_21D0CDFB4(v26, v27, &v54);

      *(v11 + 14) = v28;
      *(v11 + 22) = 2080;
      swift_getErrorValue();
      v29 = sub_21DBFC75C();
      v31 = sub_21D0CDFB4(v29, v30, &v54);

      *(v11 + 24) = v31;
      _os_log_impl(&dword_21D0C9000, v9, v10, "TTRAccountsListInteractor#setPredefinedSmartListVisibility(_:for:): failed to save user-defined visibility of pre-defined smart list {smartListType: %s, visibility: %s, error: %s}", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);

      return;
    }

    v52 = a1;

LABEL_68:

    return;
  }

  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v32 = sub_21DBF84BC();
  __swift_project_value_buffer(v32, qword_280D0F300);
  oslog = sub_21DBF84AC();
  v33 = sub_21DBFAEDC();
  if (!os_log_type_enabled(oslog, v33))
  {
    v52 = oslog;

    goto LABEL_68;
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v54 = v35;
  v36 = 0xE500000000000000;
  *v34 = 136315394;
  v37 = 0x6E756F4669726973;
  v38 = 0xEF737070416E4964;
  if (a2 != 5)
  {
    v37 = 0x6574656C706D6F63;
    v38 = 0xE900000000000064;
  }

  v39 = 0xE700000000000000;
  v40 = 0x64656767616C66;
  if (a2 != 3)
  {
    v40 = 0x64656E6769737361;
    v39 = 0xE800000000000000;
  }

  if (a2 <= 4u)
  {
    v37 = v40;
    v38 = v39;
  }

  v41 = 0x656C756465686373;
  v42 = 0xE300000000000000;
  if (a2 == 1)
  {
    v42 = 0xE900000000000064;
  }

  else
  {
    v41 = 7105633;
  }

  if (a2)
  {
    v36 = v42;
  }

  else
  {
    v41 = 0x7961646F74;
  }

  if (a2 <= 2u)
  {
    v43 = v41;
  }

  else
  {
    v43 = v37;
  }

  if (a2 <= 2u)
  {
    v44 = v36;
  }

  else
  {
    v44 = v38;
  }

  v45 = sub_21D0CDFB4(v43, v44, &v54);

  *(v34 + 4) = v45;
  *(v34 + 12) = 2080;
  v46 = 0x6E6564646968;
  if (a3 != 2)
  {
    v46 = 0x6D6F74737563;
  }

  v47 = 0xE700000000000000;
  v48 = 0x656C6269736976;
  if (!a3)
  {
    v48 = 0x656E696665646E75;
    v47 = 0xE900000000000064;
  }

  if (a3 <= 1u)
  {
    v49 = v48;
  }

  else
  {
    v49 = v46;
  }

  if (a3 <= 1u)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0xE600000000000000;
  }

  v51 = sub_21D0CDFB4(v49, v50, &v54);

  *(v34 + 14) = v51;
  _os_log_impl(&dword_21D0C9000, oslog, v33, "TTRAccountsListInteractor#setPredefinedSmartListVisibility(_:for:): user-defined visibility of pre-defined smart list saved {smartListType: %s, visibility: %s}", v34, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223D46520](v35, -1, -1);
  MEMORY[0x223D46520](v34, -1, -1);
}

uint64_t sub_21D73A4D8(uint64_t *a1, int a2)
{
  v3 = v2;
  v6 = sub_21DBF9D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21DBF9D5C();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v37 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v12 = &v3[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults];
  swift_beginAccess();
  v14 = v12[3];
  v13 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  (*(v13 + 64))(v42, v14, v13);
  swift_endAccess();
  LOBYTE(v13) = sub_21D3714C0(v42[0], v11);

  if ((v13 & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsVisibilityInUserDefaults;
    v36 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsVisibilityInUserDefaults;
    swift_beginAccess();
    v3[v16] = 1;
    swift_beginAccess();
    v17 = v12[3];
    v18 = v12[4];
    __swift_mutable_project_boxed_opaque_existential_1(v12, v17);
    v41 = v11;
    v35 = a2;
    v19 = v3;
    v20 = v9;
    v21 = v7;
    v22 = v6;
    v23 = *(v18 + 72);
    sub_21DBF8E0C();
    v23(&v41, v17, v18);
    v24 = v22;
    v25 = v21;
    v26 = v20;
    v27 = v19;
    result = swift_endAccess();
    *(v19 + v36) = 0;
    if (v35)
    {
      sub_21D0D8CF0(0, &qword_280D1B900);
      v28 = sub_21DBFB12C();
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      aBlock[4] = sub_21D749D5C;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_194_0;
      v30 = _Block_copy(aBlock);
      v31 = v27;

      v32 = v37;
      sub_21DBF9D4C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21D0D8E04(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
      v33 = v39;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v32, v33, v30);
      _Block_release(v30);

      (*(v25 + 8))(v33, v24);
      return (*(v38 + 8))(v32, v26);
    }
  }

  return result;
}

uint64_t TTRAccountsListsInteractor.setPinnedListOrdering(_:undoPolicy:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v82 = a1;
  v88 = *MEMORY[0x277D85DE8];
  v79 = sub_21DBFB1BC();
  v81 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v6 = (v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = (v75 - v9);
  v11 = *a2;
  v12 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v85[0] = 0;
  v13 = [v12 fetchPrimaryActiveCloudKitAccountWithError_];
  v14 = &unk_280D17000;
  if (!v13)
  {
    v34 = v85[0];
    v35 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v36 = sub_21DBF84BC();
    __swift_project_value_buffer(v36, qword_280D0F300);
    v37 = v35;
    v38 = sub_21DBF84AC();
    v39 = sub_21DBFAEBC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v85[0] = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = sub_21DBFC75C();
      v44 = sub_21D0CDFB4(v42, v43, v85);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_21D0C9000, v38, v39, "TTRAccountsListInteractor#setPinnedListOrdering: failed to fetch primary CK account {error: %s}", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v45 = v41;
      v14 = &unk_280D17000;
      MEMORY[0x223D46520](v45, -1, -1);
      MEMORY[0x223D46520](v40, -1, -1);
    }

    else
    {
    }

    goto LABEL_15;
  }

  v15 = v13;
  v16 = v85[0];
  v17 = [v15 capabilities];
  v18 = [v17 supportsPinnedLists];

  if ((v18 & 1) == 0)
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v46 = sub_21DBF84BC();
    __swift_project_value_buffer(v46, qword_280D0F300);
    v47 = v15;
    v48 = sub_21DBF84AC();
    v49 = sub_21DBFAEDC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      v52 = [v47 objectID];
      *(v50 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&dword_21D0C9000, v48, v49, "TTRAccountsListInteractor#setPinnedListOrdering: primary CK account does not support pinned lists {accountID: %@}", v50, 0xCu);
      sub_21D0CF7E0(v51, &unk_27CE60070);
      MEMORY[0x223D46520](v51, -1, -1);
      MEMORY[0x223D46520](v50, -1, -1);
    }

    else
    {
    }

LABEL_15:
    v53 = 0;
    if (v14[480] != -1)
    {
LABEL_40:
      swift_once();
    }

    v54 = sub_21DBF84BC();
    __swift_project_value_buffer(v54, qword_280D0F300);
    v55 = sub_21DBF84AC();
    v56 = sub_21DBFAEDC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_21D0C9000, v55, v56, "TTRAccountsListInteractor#setPinnedListOrdering: persist predefinedSmartList ordering to user defaults only", v57, 2u);
      MEMORY[0x223D46520](v57, -1, -1);
    }

    v75[1] = v3;

    v58 = *(v82 + 16);
    if (!v58)
    {
      v76._rawValue = MEMORY[0x277D84F90];
      goto LABEL_35;
    }

    v75[0] = v53;
    v83 = v6;
    v84 = v10;
    v53 = 0;
    v59 = (v81 + 88);
    v80 = *MEMORY[0x277D45A00];
    v78 = *MEMORY[0x277D45A08];
    v10 = (v81 + 8);
    v77 = (v81 + 96);
    v76._rawValue = MEMORY[0x277D84F90];
    v6 = v79;
    while (1)
    {
      v3 = v53;
      while (1)
      {
        if (v3 >= v58)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v61 = *(v81 + 16);
        v62 = v84;
        v61(v84, v82 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v3, v6);
        v53 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_39;
        }

        v63 = v6;
        v64 = v83;
        v61(v83, v62, v63);
        v65 = (*v59)(v64, v63);
        if (v65 == v80)
        {
          break;
        }

        if (v65 != v78)
        {
          result = sub_21DBFC63C();
          __break(1u);
          return result;
        }

        rawValue = v10->_rawValue;
        v6 = v79;
        (v10->_rawValue)(v84, v79);
        rawValue(v83, v6);
LABEL_22:
        ++v3;
        if (v53 == v58)
        {
          goto LABEL_35;
        }
      }

      (*v77)(v64, v63);
      TTRListType.PredefinedSmartListType.init(remSmartListType:)(v64->_rawValue);
      (v10->_rawValue)(v62, v63);
      v60 = v85[0];
      v6 = v63;
      if (LOBYTE(v85[0]) == 7)
      {
        goto LABEL_22;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76._rawValue = sub_21D0F4EB4(0, *(v76._rawValue + 2) + 1, 1, v76._rawValue);
      }

      v68 = *(v76._rawValue + 2);
      v67 = *(v76._rawValue + 3);
      if (v68 >= v67 >> 1)
      {
        v76._rawValue = sub_21D0F4EB4((v67 > 1), v68 + 1, 1, v76._rawValue);
      }

      v69 = v76._rawValue;
      *(v76._rawValue + 2) = v68 + 1;
      v69[v68 + 32] = v60;
      if (v53 == v58)
      {
LABEL_35:
        TTRListType.PredefinedSmartListsDisplayOrder.init(ordering:)(v76);
        sub_21D73B4C8(v85, 1);
      }
    }
  }

  sub_21D0D32E4(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v85);
  v19 = v86;
  v20 = v87;
  v21 = __swift_project_boxed_opaque_existential_1(v85, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21DC09CF0;
  *(v22 + 32) = v15;
  v23 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v84 = v21;
    v24 = *(v23 + 8);
    ObjectType = swift_getObjectType();
    v83 = v19;
    v81 = v11;
    v26 = ObjectType;
    v27 = v3;
    v28 = v20;
    v29 = *(v24 + 56);
    v30 = v15;
    v31 = v27;
    v19 = v83;
    v32 = v29(v31, &protocol witness table for TTRAccountsListsInteractor, v26, v24);
    v20 = v28;
    v33 = v32;
    swift_unknownObjectRelease();
  }

  else
  {
    v71 = v15;
    v33 = 0;
  }

  v72 = type metadata accessor for TTRAccountEditor();
  MEMORY[0x28223BE20](v72);
  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v73, v22, v12, v33, sub_21D748C54, &v74, sub_21D73B234, 0, v19, v73, v20, &protocol witness table for TTRAccountEditor);

  return __swift_destroy_boxed_opaque_existential_0(v85);
}

void sub_21D73B234(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F300);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_21DBFC75C();
      v11 = sub_21D0CDFB4(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v5, v6, "TTRAccountsListInteractor#setPinnedListOrdering: failed to save ordering {error: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);

      return;
    }

    v15 = a1;
  }

  else
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F300);
    oslog = sub_21DBF84AC();
    v13 = sub_21DBFAEDC();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v13, "TTRAccountsListInteractor#setPinnedListOrdering: ordering saved", v14, 2u);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    v15 = oslog;
  }
}

uint64_t sub_21D73B4C8(uint64_t *a1, int a2)
{
  v3 = v2;
  v6 = sub_21DBF9D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21DBF9D5C();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v37 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v12 = &v3[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults];
  swift_beginAccess();
  v14 = v12[3];
  v13 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  (*(v13 + 40))(v42, v14, v13);
  swift_endAccess();
  LOBYTE(v13) = sub_21D1D7854(v42[0], v11);

  if ((v13 & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsDisplayOrderInUserDefaults;
    v36 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsDisplayOrderInUserDefaults;
    swift_beginAccess();
    v3[v16] = 1;
    swift_beginAccess();
    v17 = v12[3];
    v18 = v12[4];
    __swift_mutable_project_boxed_opaque_existential_1(v12, v17);
    v41 = v11;
    v35 = a2;
    v19 = v3;
    v20 = v9;
    v21 = v7;
    v22 = v6;
    v23 = *(v18 + 48);
    sub_21DBF8E0C();
    v23(&v41, v17, v18);
    v24 = v22;
    v25 = v21;
    v26 = v20;
    v27 = v19;
    result = swift_endAccess();
    *(v19 + v36) = 0;
    if (v35)
    {
      sub_21D0D8CF0(0, &qword_280D1B900);
      v28 = sub_21DBFB12C();
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      aBlock[4] = sub_21D749D2C;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_188;
      v30 = _Block_copy(aBlock);
      v31 = v27;

      v32 = v37;
      sub_21DBF9D4C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21D0D8E04(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
      v33 = v39;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v32, v33, v30);
      _Block_release(v30);

      (*(v25 + 8))(v33, v24);
      return (*(v38 + 8))(v32, v26);
    }
  }

  return result;
}

uint64_t TTRAccountsListsInteractor.lastSelectedListInWindow.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage))
  {
    v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage + 8);
    ObjectType = swift_getObjectType();
    return (*(v3 + 8))(ObjectType, v3);
  }

  else
  {
    v6 = type metadata accessor for TTRListType(0);
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

uint64_t sub_21D73B9CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage);
  if (*v3)
  {
    v4 = v3[1];
    ObjectType = swift_getObjectType();
    return (*(v4 + 8))(ObjectType, v4);
  }

  else
  {
    v7 = type metadata accessor for TTRListType(0);
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t sub_21D73BA90(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  sub_21D0D3954(a1, &v14 - v8, &qword_27CE650E0);
  v10 = (*a2 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage);
  if (*v10)
  {
    v11 = v10[1];
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v9, v6, &qword_27CE650E0);
    (*(v11 + 16))(v6, ObjectType, v11);
  }

  return sub_21D0CF7E0(v9, &qword_27CE650E0);
}

uint64_t TTRAccountsListsInteractor.globalLastSelectedList.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 16))(v2, v3);
  return swift_endAccess();
}

uint64_t sub_21D73BC60(void *a1)
{
  v1 = (*a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 16))(v2, v3);
  return swift_endAccess();
}

uint64_t sub_21D73BCF0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_21D0D3954(a1, &v15 - v8, &qword_27CE650E0);
  v10 = *a2;
  sub_21D0D3954(v9, v6, &qword_27CE650E0);
  v11 = v10 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults;
  swift_beginAccess();
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  (*(v13 + 24))(v6, v12, v13);
  swift_endAccess();
  return sub_21D0CF7E0(v9, &qword_27CE650E0);
}

uint64_t TTRAccountsListsInteractor.saveLastSelectedListType(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v20 = a1;
  sub_21D0D4B04(a1, &v20 - v10, type metadata accessor for TTRListType);
  v12 = type metadata accessor for TTRListType(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage))
  {
    v14 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage + 8);
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v11, v8, &qword_27CE650E0);
    (*(v14 + 16))(v8, ObjectType, v14);
  }

  sub_21D0CF7E0(v11, &qword_27CE650E0);
  sub_21D0D4B04(v20, v8, type metadata accessor for TTRListType);
  v13(v8, 0, 1, v12);
  sub_21D0D3954(v8, v5, &qword_27CE650E0);
  v16 = v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults;
  swift_beginAccess();
  v17 = *(v16 + 24);
  v18 = *(v16 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  (*(v18 + 24))(v5, v17, v18);
  swift_endAccess();
  return sub_21D0CF7E0(v8, &qword_27CE650E0);
}

id TTRAccountsListsInteractor.createNewList(account:)(void *a1)
{
  v3 = [a1 store];
  v4 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v5 = [v4 updateAccount_];
  v6 = v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = 0;
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v8 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 56))(v1, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v8);
  swift_unknownObjectRelease();
  if (!v10)
  {
    v11 = 0;
    Strong = 0;
    goto LABEL_6;
  }

  v11 = type metadata accessor for TTRBasicUndoContext();
  Strong = swift_allocObject();
  *(Strong + 16) = v10;
  v12 = &protocol witness table for TTRBasicUndoContext;
LABEL_7:
  v17[0] = Strong;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = v11;
  v17[4] = v12;
  v13 = [v5 saveRequest];
  v14 = sub_21DBFA12C();
  v15 = [v13 addListWithName:v14 toAccountChangeItem:v5];

  sub_21D0CF7E0(v17, &unk_27CE60D80);
  return v15;
}

id TTRAccountsListsInteractor.createNewListInDefaultAccount()()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v19[0] = 0;
  v2 = [v1 fetchDefaultAccountWithError_];
  v3 = v2;
  if (v19[0])
  {
    v4 = v19[0];

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F300);
    v6 = v4;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (!os_log_type_enabled(v7, v8))
    {

      return 0;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_21DBFC74C();
    v13 = sub_21D0CDFB4(v11, v12, v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21D0C9000, v7, v8, "Cannot fetch default list {error: %s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D46520](v10, -1, -1);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  else
  {
    if (v2)
    {
      v14 = TTRAccountsListsInteractor.createNewList(account:)(v2);

      return v14;
    }

    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_280D0F300);
    v6 = sub_21DBF84AC();
    v17 = sub_21DBFAEBC();
    if (os_log_type_enabled(v6, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21D0C9000, v6, v17, "No default account for creating in new list", v18, 2u);
      MEMORY[0x223D46520](v18, -1, -1);
    }
  }

  return 0;
}

id TTRAccountsListsInteractor.createNewCustomSmartList(in:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v4 = [v3 updateAccount_];
  v5 = sub_21DBFA12C();
  v6 = [v3 addCustomSmartListWithName:v5 toAccountChangeItem:v4 smartListObjectID:0];

  return v6;
}

void *TTRAccountsListsInteractor.createNewCustomSmartListAllowingUndo(in:name:filter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = v9 + 16;
  sub_21D0D32E4(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v37);
  v34 = v39;
  v35 = v38;
  v36 = __swift_project_boxed_opaque_existential_1(v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC09CF0;
  *(v11 + 32) = a1;
  v33 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v12 = v4 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = a2;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v15 = a1;
    v16 = a4;
    v17 = ObjectType;
    v32 = v9;
    v18 = a3;
    v19 = *(v13 + 56);
    v20 = v15;
    v21 = v17;
    a4 = v16;
    v22 = v13;
    a2 = v31;
    v23 = v19(v4, &protocol witness table for TTRAccountsListsInteractor, v21, v22);
    a3 = v18;
    v10 = v9 + 16;
    v24 = v23;
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = a1;
    v24 = 0;
  }

  v26 = type metadata accessor for TTRAccountEditor();
  MEMORY[0x28223BE20](v26);
  v30[2] = v10;
  v30[3] = a2;
  v30[4] = a3;
  v30[5] = a4;

  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v26, v11, v33, v24, sub_21D748C90, v30, sub_21D748C9C, v9, v35, v26, v34, &protocol witness table for TTRAccountEditor);

  __swift_destroy_boxed_opaque_existential_0(v37);
  swift_beginAccess();
  v27 = *(v9 + 16);
  v28 = v27;

  return v27;
}

void sub_21D73C890(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = TTRAccountEditor.addAndSaveNewCustomSmartList(name:filter:)(a3, a4, a5);
  swift_beginAccess();
  v7 = *a2;
  *a2 = v6;
}

void sub_21D73C8F0(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F300);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21[0] = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_21DBFC74C();
      v11 = sub_21D0CDFB4(v9, v10, v21);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Failed to create custom smart list {error: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);

      return;
    }

    v19 = a1;
  }

  else
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F300);

    oslog = sub_21DBF84AC();
    v13 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0);
      v16 = sub_21DBFBA5C();
      v18 = sub_21D0CDFB4(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_21D0C9000, oslog, v13, "Created custom smart list {customSmartListID: %s}", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);

      return;
    }

    v19 = oslog;
  }
}

void sub_21D73CC38(uint64_t *a1, void *a2, uint64_t a3)
{
  v68[1] = *MEMORY[0x277D85DE8];
  v65 = *a1;
  v5 = [*(*a1 + 16) saveRequest];
  v6 = [v5 store];

  v7 = [a2 objectID];
  v68[0] = 0;
  v8 = [v6 fetchListWithObjectID:v7 error:v68];

  v9 = v68[0];
  if (!v8)
  {
    v17 = v68[0];
    v18 = sub_21DBF52DC();

    swift_willThrow();
    return;
  }

  v62 = 0;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v68[0] = MEMORY[0x277D84F90];
    v12 = v9;
    sub_21DBFC01C();
    v13 = (a3 + 32);
    do
    {
      v14 = *v13;
      v13 += 2;
      v15 = [v14 objectID];
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v10;
    }

    while (v10);
    v16 = v68[0];
  }

  else
  {
    v19 = v68[0];
    v16 = MEMORY[0x277D84F90];
  }

  v20 = [*(v65 + 16) saveRequest];
  v21 = [v20 store];

  v22 = sub_21D0D8CF0(0, &qword_280D17880);
  v23 = sub_21DBFA5DC();
  v68[0] = 0;
  v24 = [v21 fetchListsWithObjectIDs:v23 error:v68];

  v25 = v68[0];
  v66 = v16;
  if (!v24)
  {
    v48 = v68[0];
    v29 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17F00 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

  sub_21D0D8CF0(0, &qword_280D17690);
  sub_21D0D65DC(&qword_280D17870, &qword_280D17880);
  v26 = sub_21DBF9E6C();
  v27 = v25;

  v68[0] = v11;
  v28 = v16;
  v63 = v8;
  v29 = (v16 & 0xFFFFFFFFFFFFFF8);
  if (v16 >> 62)
  {
    goto LABEL_49;
  }

  v30 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
  v8 = 0;
  v31 = v28 & 0xC000000000000001;
  v22 = v26 & 0xC000000000000001;
  v64 = MEMORY[0x277D84F90];
  if (v30)
  {
    while (1)
    {
      if (v31)
      {
        v42 = MEMORY[0x223D44740](v8, v28);
      }

      else
      {
        if (v8 >= v29[2])
        {
          goto LABEL_48;
        }

        v42 = *(v28 + 8 * v8 + 32);
      }

      v43 = v42;
      v44 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v30 = sub_21DBFBD7C();
        goto LABEL_11;
      }

      if (v22)
      {
        if (sub_21DBFC2CC())
        {
          swift_dynamicCast();
          v41 = v67;

          goto LABEL_24;
        }
      }

      else if (*(v26 + 16))
      {
        v45 = sub_21D17E07C(v42);
        if (v46)
        {
          v41 = *(*(v26 + 56) + 8 * v45);
          v47 = v41;
        }

        else
        {

          v41 = 0;
        }

        v28 = v66;
        goto LABEL_24;
      }

      v41 = 0;
LABEL_24:
      ++v8;
      if (v41)
      {
        MEMORY[0x223D42D80]();
        if (*((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v64 = v68[0];
        v8 = v44;
        v28 = v66;
        if (v30 == v44)
        {
          break;
        }
      }

      else if (v30 == v8)
      {
        break;
      }
    }
  }

  if (v64 >> 62)
  {
    v32 = sub_21DBFBD7C();
    v33 = v63;
    if (v32)
    {
      goto LABEL_14;
    }

LABEL_51:

    v35 = MEMORY[0x277D84F90];
LABEL_52:
    TTRAccountEditor.removeGroup(_:sublists:keepSublists:)(v33, v35, 1);

    return;
  }

  v32 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v33 = v63;
  if (!v32)
  {
    goto LABEL_51;
  }

LABEL_14:
  v68[0] = MEMORY[0x277D84F90];
  sub_21D18EB44(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v35 = v68[0];
    do
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x223D44740](v34, v64);
      }

      else
      {
        v36 = *(v64 + 8 * v34 + 32);
      }

      v68[0] = v35;
      v38 = v35[2];
      v37 = v35[3];
      if (v38 >= v37 >> 1)
      {
        v40 = v36;
        sub_21D18EB44((v37 > 1), v38 + 1, 1);
        v36 = v40;
        v35 = v68[0];
      }

      ++v34;
      v35[2] = v38 + 1;
      v39 = &v35[2 * v38];
      v39[4] = v36;
      *(v39 + 40) = 0;
    }

    while (v32 != v34);

    goto LABEL_52;
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_44:
  v49 = sub_21DBF84BC();
  __swift_project_value_buffer(v49, qword_280D0F300);
  v50 = v29;
  sub_21DBF8E0C();
  v51 = sub_21DBF84AC();
  v52 = sub_21DBFAEBC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v68[0] = v54;
    *v53 = 136315394;
    swift_getErrorValue();
    v55 = sub_21DBFC74C();
    v57 = sub_21D0CDFB4(v55, v56, v68);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    v58 = MEMORY[0x223D42DB0](v66, v22);
    v60 = v59;

    v61 = sub_21D0CDFB4(v58, v60, v68);

    *(v53 + 14) = v61;
    _os_log_impl(&dword_21D0C9000, v51, v52, "Failed to get list for undelete {error: %s, sublistIDs: %s}", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v54, -1, -1);
    MEMORY[0x223D46520](v53, -1, -1);
  }

  else
  {
  }
}

void TTRAccountsListsInteractor.createNewGroceriesList(account:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v60 = a2;
  ObjectType = swift_getObjectType();
  v59 = sub_21DBF619C();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = TTRAccountsListsInteractor.createNewList(account:)(a1);
  v65 = 0;
  aBlock = 0u;
  v64 = 0u;
  sub_21D0D3954(&aBlock, v70, &unk_27CE60D80);
  v10 = qword_280D1AA10;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_280D1AA18;
  sub_21D0CF7E0(&aBlock, &unk_27CE60D80);
  type metadata accessor for TTRListEditor();
  v13 = swift_allocObject();
  v68 = type metadata accessor for TTRUserDefaults();
  v69 = &protocol witness table for TTRUserDefaults;
  *&v67 = v12;
  *(v13 + 64) = 0;
  *(v13 + 16) = v11;
  v14 = v70[1];
  *(v13 + 24) = v70[0];
  *(v13 + 40) = v14;
  *(v13 + 56) = v71;
  v58 = v13;
  swift_beginAccess();
  *(v13 + 64) = 0;
  sub_21D0D0FD0(&v67, v13 + 72);
  v15 = v12;
  TTRListEditor.setSuggestedGroceryListProperties()();
  v16 = (v4 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v57 = v11;
  v17 = v16[3];
  v18 = v16[4];
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  (*(v18 + 128))(1, v17, v18);
  swift_endAccess();
  sub_21DBF62DC();
  sub_21DBF62CC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
  v20 = &v8[*(v19 + 48)];
  v21 = &v8[*(v19 + 80)];
  v22 = *MEMORY[0x277D44E48];
  v23 = sub_21DBF613C();
  (*(*(v23 - 8) + 104))(v8, v22, v23);
  swift_beginAccess();
  v24 = v16[3];
  v25 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v24);
  *v20 = (*(*(v25 + 8) + 8))(v24);
  *(v20 + 1) = v26;
  v27 = v16[3];
  v28 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v27);
  (*(*(v28 + 8) + 32))(v27);
  swift_endAccess();
  *v21 = sub_21DBFC8EC();
  v21[1] = v29;
  v30 = *MEMORY[0x277D44E98];
  v56 = *(v6 + 104);
  v31 = v59;
  v56(v8, v30, v59);
  sub_21DBF62BC();

  v55 = *(v6 + 8);
  v55(v8, v31);
  sub_21DBF62CC();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60D90);
  v33 = &v8[v32[12]];
  v54[1] = v32[16];
  v34 = &v8[v32[20]];
  v35 = *MEMORY[0x277D458F8];
  v36 = sub_21DBF802C();
  (*(*(v36 - 8) + 104))(v8, v35, v36);
  swift_beginAccess();
  v37 = v16[3];
  v38 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v37);
  *v33 = (*(*(v38 + 8) + 8))(v37);
  *(v33 + 1) = v39;
  v40 = v16[3];
  v41 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v40);
  (*(*(v41 + 8) + 32))(v40);
  swift_endAccess();
  *v34 = sub_21DBFC8EC();
  v34[1] = v42;
  v56(v8, *MEMORY[0x277D44EA0], v31);
  sub_21DBF62BC();

  v55(v8, v31);
  v43 = v57;
  v44 = [v57 saveRequest];
  v45 = [v44 store];

  v46 = v43;
  v47 = [v43 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900);
  v48 = sub_21DBFB12C();
  v49 = swift_allocObject();
  v49[2] = v45;
  v49[3] = v46;
  v50 = v61;
  v49[4] = v60;
  v49[5] = v50;
  v65 = sub_21D7491C8;
  v66 = v49;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v64 = sub_21D11E5E4;
  *(&v64 + 1) = &block_descriptor_86;
  v51 = _Block_copy(&aBlock);
  v52 = v46;
  v53 = v45;

  [v47 saveWithQueue:v48 completion:v51];
  _Block_release(v51);
}

void sub_21D73DA8C(void *a1, void *a2, id a3, void (*a4)(id))
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F300);
    v6 = a1;
    oslog = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_21DBFC74C();
      v12 = sub_21D0CDFB4(v10, v11, v30);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, oslog, v7, "Error saving new list: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v15 = [a3 objectID];
    v30[0] = 0;
    v16 = [a2 fetchListWithObjectID:v15 error:v30];

    if (v16)
    {
      v17 = v30[0];
      a4(v16);
    }

    else
    {
      v18 = v30[0];
      v19 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_280D17F00 != -1)
      {
        swift_once();
      }

      v20 = sub_21DBF84BC();
      __swift_project_value_buffer(v20, qword_280D0F300);
      v21 = v19;
      v22 = sub_21DBF84AC();
      v23 = sub_21DBFAEBC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30[0] = v25;
        *v24 = 136315138;
        swift_getErrorValue();
        v26 = sub_21DBFC74C();
        v28 = sub_21D0CDFB4(v26, v27, v30);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_21D0C9000, v22, v23, "Error fetching newly created list: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x223D46520](v25, -1, -1);
        MEMORY[0x223D46520](v24, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_21D73DE98(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900);
  v6 = sub_21DBFB12C();
  v8[4] = a2;
  v8[5] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21D11E5E4;
  v8[3] = a3;
  v7 = _Block_copy(v8);
  [v5 saveWithQueue:v6 completion:v7];
  _Block_release(v7);
}

void sub_21D73DF7C(void *a1)
{
  if (a1)
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_280D0F300);
    v3 = a1;
    oslog = sub_21DBF84AC();
    v4 = sub_21DBFAEBC();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = sub_21DBFC74C();
      v9 = sub_21D0CDFB4(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_21D0C9000, oslog, v4, "Error saving new list: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x223D46520](v6, -1, -1);
      MEMORY[0x223D46520](v5, -1, -1);
    }

    else
    {
    }
  }
}

id TTRAccountsListsInteractor.changeItem(for:)(uint64_t a1)
{
  return sub_21D73E13C(a1, &selRef_updateAccount_);
}

{
  return sub_21D73E13C(a1, &selRef_updateList_);
}

{
  return sub_21D73E13C(a1, &selRef_updateSmartList_);
}

id sub_21D73E13C(uint64_t a1, SEL *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v5 setSaveIsNoopIfNoChangedKeys_];
  v6 = [v5 *a2];

  return v6;
}

uint64_t sub_21D73E1D0(uint64_t a1, int a2)
{
  v3 = v2;
  v32 = a2;
  v4 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 40);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = *v6;
      v9 = *(v6 - 1);
      if (v8)
      {
        MEMORY[0x223D42D80]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v4 = v36;
      }

      else
      {
        MEMORY[0x223D42D80]();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v7 = v37;
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v7 >> 62)
  {
    v10 = sub_21DBFBD7C();
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    sub_21D0D32E4(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v33);
    v12 = v34;
    v11 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v13 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
    v14 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      v17 = (*(v15 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
    }

    v18 = type metadata accessor for TTRListEditor();
    MEMORY[0x28223BE20](v18);
    v31 = v32 & 1;
    TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v19, v7, v13, v17, sub_21D749CC4, v30, 0, 0, v12, v19, v11, &protocol witness table for TTRListEditor);

    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
  }

  if (v4 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_22;
    }
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

LABEL_22:
  sub_21D0D32E4(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v33);
  v21 = v34;
  v20 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v22 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v23 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 8);
    v25 = swift_getObjectType();
    v26 = (*(v24 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, v25, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0;
  }

  v27 = type metadata accessor for TTRSmartListEditor();
  MEMORY[0x28223BE20](v27);
  v31 = v32 & 1;
  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v28, v4, v22, v26, sub_21D749CF4, v30, 0, 0, v21, v28, v20, &protocol witness table for TTRSmartListEditor);

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t TTRAccountsListsInteractor.delete(_:keepSublists:)(void *a1, int a2)
{
  v3 = v2;
  v24 = a2;
  sub_21DBF60DC();
  v5 = sub_21DBF60CC();
  type metadata accessor for TTRRemindersInteraction();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  sub_21D0D32E4(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v27);
  v8 = v28;
  v7 = v29;
  v25 = __swift_project_boxed_opaque_existential_1(v27, v28);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v13 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for TTRAccountEditor();
  MEMORY[0x28223BE20](v17);
  v21[2] = a1;
  v22 = v24 & 1;
  v23 = inited;
  sub_21D0D32E4(a1, v26);
  v18 = swift_allocObject();
  sub_21D0D0FD0(v26, v18 + 16);
  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v17, v11, v12, v16, sub_21D7491D4, v21, sub_21D7491E4, v18, v8, v17, v7, &protocol witness table for TTRAccountEditor);
  swift_setDeallocating();
  v19 = *(inited + 16);

  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t sub_21D73E854(uint64_t *a1, void *a2, char a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = [*(v5 + 16) objectID];
  v8 = (*(v6 + 56))();

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 40);
    v11 = &selRef__setContentViewMarginType_;
    do
    {
      v12 = *v10;
      v13 = *(v10 - 1);
      v14 = v13;
      if (v12)
      {
        TTRAccountEditor.removeCustomSmartList(_:)(v13);
      }

      else
      {
        v15 = v13;
        if ([v15 v11[258]])
        {
          v16 = a4;
          v17 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, a2[3]);
          v18 = [v15 objectID];
          v19 = (*(v17 + 64))();

          TTRAccountEditor.removeGroup(_:sublists:keepSublists:)(v15, v19, a3 & 1);
          a4 = v16;
          v11 = &selRef__setContentViewMarginType_;
        }

        else
        {
          TTRAccountEditor.removeList(_:)(v15);
        }

        TTRRemindersInteraction.deleteInteractions(for:)(v15);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

void sub_21D73EA14(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F300);
    sub_21D0D32E4(a2, v28);
    v6 = a1;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315394;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v11 = sub_21DBFC5BC();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0(v28);
      v14 = sub_21D0CDFB4(v11, v13, &v27);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      swift_getErrorValue();
      v15 = sub_21DBFC74C();
      v17 = sub_21D0CDFB4(v15, v16, &v27);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to delete items {%s, error: %s}", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_280D0F300);
    sub_21D0D32E4(a2, v28);
    v19 = sub_21DBF84AC();
    v20 = sub_21DBFAEDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v23 = sub_21DBFC5BC();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v28);
      v26 = sub_21D0CDFB4(v23, v25, &v27);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_21D0C9000, v19, v20, "Delete items {%s}", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223D46520](v22, -1, -1);
      MEMORY[0x223D46520](v21, -1, -1);

      return;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t TTRAccountsListsInteractor.rename(list:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = *a1;
  v6 = *(a1 + 8);
  v7 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer;
  if (v6)
  {
    sub_21D0D32E4(v7, v47);
    v8 = v48;
    v9 = v49;
    v45 = __swift_project_boxed_opaque_existential_1(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC09CF0;
    *(v10 + 32) = v46;
    v11 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
    v12 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      v43 = v9;
      ObjectType = swift_getObjectType();
      v44 = v8;
      v15 = a2;
      v16 = a3;
      v17 = *(v13 + 56);
      v18 = v46;
      v19 = v17(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v13);
      a3 = v16;
      a2 = v15;
      v20 = v19;
      v8 = v44;
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v46;
      v20 = 0;
    }

    v34 = type metadata accessor for TTRSmartListEditor();
    MEMORY[0x28223BE20](v34);
    v41 = a2;
    v42 = a3;
    TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v35, v10, v11, v20, sub_21D65397C, v40, 0, 0, v8, v35, v9, &protocol witness table for TTRSmartListEditor);
  }

  else
  {
    sub_21D0D32E4(v7, v47);
    v21 = v48;
    v22 = v49;
    v45 = __swift_project_boxed_opaque_existential_1(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_21DC09CF0;
    *(v23 + 32) = v46;
    v24 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
    v25 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 8);
      v43 = v22;
      v27 = swift_getObjectType();
      v44 = v21;
      v28 = a2;
      v29 = a3;
      v30 = *(v26 + 56);
      v31 = v46;
      v32 = v30(v3, &protocol witness table for TTRAccountsListsInteractor, v27, v26);
      a3 = v29;
      a2 = v28;
      v20 = v32;
      v21 = v44;
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v46;
      v20 = 0;
    }

    v37 = type metadata accessor for TTRListEditor();
    MEMORY[0x28223BE20](v37);
    v41 = a2;
    v42 = a3;
    TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v38, v23, v24, v20, sub_21D1CD938, v40, 0, 0, v21, v38, v22, &protocol witness table for TTRListEditor);
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

void TTRAccountsListsInteractor.add(lists:to:)(uint64_t a1, id a2)
{
  v4 = [a2 account];
  v5 = 1;
  v6 = 512;
  sub_21D73F164(a1, v4, a2, &v5, MEMORY[0x277D84FA0]);
}

uint64_t sub_21D73F164(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v63 = a5;
  v65 = a3;
  v66 = a1;
  v62 = *a4;
  v6 = *(a4 + 8);
  v60 = *(a4 + 9);
  v61 = v6;
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_11:
    v23 = v64;
    v22 = v65;
    if (v65)
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      v24 = v65;
      v25 = [v24 accountID];
      v26 = [a2 objectID];
      v27 = sub_21DBFB63C();

      if ((v27 & 1) == 0)
      {
        if (qword_280D17F00 != -1)
        {
          swift_once();
        }

        v37 = sub_21DBF84BC();
        __swift_project_value_buffer(v37, qword_280D0F300);
        v19 = v24;
        v31 = sub_21DBF84AC();
        v32 = sub_21DBFAEBC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v38 = [v19 objectID];
          *(v33 + 4) = v38;
          *v34 = v38;
          v36 = "Failed to move lists into group -- group is from a different ccount  {group.objectID: %@}";
          goto LABEL_36;
        }

LABEL_38:

        return 0;
      }

      v28 = [v24 sublistContext];
      if (!v28)
      {
        if (qword_280D17F00 != -1)
        {
          swift_once();
        }

        v53 = sub_21DBF84BC();
        __swift_project_value_buffer(v53, qword_280D0F300);
        v19 = v24;
        v31 = sub_21DBF84AC();
        v32 = sub_21DBFAEBC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v54 = [v19 objectID];
          *(v33 + 4) = v54;
          *v34 = v54;
          v36 = "Group does not support sublists -- failed to move lists into group {group.objectID: %@}";
          goto LABEL_36;
        }

        goto LABEL_38;
      }

      if (v7)
      {
        v29 = (v66 + 40);
        while (*v29 == 1 || ([*(v29 - 1) isGroup] & 1) == 0)
        {
          v29 += 2;
          if (!--v7)
          {
            goto LABEL_27;
          }
        }

        if (qword_280D17F00 != -1)
        {
          swift_once();
        }

        v30 = sub_21DBF84BC();
        __swift_project_value_buffer(v30, qword_280D0F300);
        v19 = v24;
        v31 = sub_21DBF84AC();
        v32 = sub_21DBFAEBC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v35 = [v19 objectID];
          *(v33 + 4) = v35;
          *v34 = v35;
          v36 = "Trying to move a group into a group -- failed to move lists into group {group.objectID: %@}";
LABEL_36:
          _os_log_impl(&dword_21D0C9000, v31, v32, v36, v33, 0xCu);
          sub_21D0CF7E0(v34, &unk_27CE60070);
          MEMORY[0x223D46520](v34, -1, -1);
          MEMORY[0x223D46520](v33, -1, -1);

          goto LABEL_37;
        }

        goto LABEL_38;
      }

LABEL_27:
    }

    sub_21D0D32E4(v64 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v67);
    v40 = v68;
    v39 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_21DC09CF0;
    *(v41 + 32) = a2;
    v42 = [a2 store];
    v43 = v23 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      v46 = (*(v44 + 56))(v23, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v44);
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0;
    }

    v47 = type metadata accessor for TTRAccountEditor();
    MEMORY[0x28223BE20](v47);
    v55[2] = v22;
    v55[3] = v62;
    v56 = v61;
    v57 = v60;
    v58 = v66;
    v59 = v63;
    v48 = swift_allocObject();
    v49 = v22;
    v50 = v48;
    *(v48 + 16) = v49;
    v51 = v49;
    TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v47, v41, v42, v46, sub_21D749C84, v55, sub_21D749C94, v50, v40, v47, v39, &protocol witness table for TTRAccountEditor);

    __swift_destroy_boxed_opaque_existential_0(v67);
    return 1;
  }

  v8 = (v66 + 40);
  v9 = *(a1 + 16);
  while (1)
  {
    v14 = *(v8 - 1);
    if (*v8 == 1)
    {
      break;
    }

    sub_21D0D8CF0(0, &qword_280D17680);
    v10 = v14;
    v11 = [v10 accountID];
    v12 = [a2 objectID];
    v13 = sub_21DBFB63C();

    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_4:
    v8 += 16;
    if (!--v9)
    {
      goto LABEL_11;
    }
  }

  v15 = v14;
  v16 = [a2 capabilities];
  v17 = [v16 supportsCustomSmartLists];

  if (v17)
  {
    goto LABEL_4;
  }

LABEL_7:
  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v18 = sub_21DBF84BC();
  __swift_project_value_buffer(v18, qword_280D0F300);
  v19 = sub_21DBF84AC();
  v20 = sub_21DBFAEBC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21D0C9000, v19, v20, "Failed to move lists; lists do not come from a single account", v21, 2u);
    MEMORY[0x223D46520](v21, -1, -1);
  }

LABEL_37:

  return 0;
}

uint64_t TTRAccountsListsInteractor.move(lists:asSublistsOf:position:unpinningLists:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = [a2 account];
  v11 = v7;
  v12 = v8;
  LOBYTE(a4) = sub_21D73F164(a1, v9, a2, &v11, a4);

  return a4 & 1;
}

uint64_t TTRAccountsListsInteractor.move(lists:asTopLevelListsIn:position:unpinningLists:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v6 = *a3;
  v7 = v4;
  return sub_21D73F164(a1, a2, 0, &v6, a4) & 1;
}

Swift::Bool __swiftcall TTRAccountsListsInteractor.move(remindersWithIDs:to:)(Swift::OpaquePointer remindersWithIDs, RemindersUICore::TTRListType::PredefinedSmartListType to)
{
  v3 = v2;
  v4 = to;
  rawValue = remindersWithIDs._rawValue;
  v172 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v124 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v124 - v9;
  v165 = sub_21DBF5C4C();
  v11 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v145 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v153 = &v124 - v14;
  v152 = sub_21DBF5A2C();
  v15 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v151 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_21DBF509C();
  v17 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v144 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v150 = &v124 - v20;
  MEMORY[0x28223BE20](v21);
  v155 = &v124 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v23 - 8);
  v146 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v148 = (&v124 - v26);
  MEMORY[0x28223BE20](v27);
  v163 = (&v124 - v28);
  v164 = sub_21DBF563C();
  v29 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v147 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v149 = &v124 - v32;
  MEMORY[0x28223BE20](v33);
  v162 = &v124 - v34;
  MEMORY[0x28223BE20](v35);
  v161 = &v124 - v36;
  if (*v4 > 2u || *v4)
  {
    v37 = sub_21DBFC64C();

    result = 0;
    if ((v37 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
  }

  v140 = v10;
  v39 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v40 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_21D0D8CF0(0, &qword_280D17880);
  v41 = sub_21DBFA5DC();
  *&aBlock = 0;
  v42 = [v39 fetchRemindersWithObjectIDs:v41 error:&aBlock];

  v43 = aBlock;
  if (v42)
  {
    v142 = v40;
    v44 = sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D0D65DC(&qword_280D17870, &qword_280D17880);
    v156 = v44;
    v40 = sub_21DBF9E6C();
    v45 = v43;

    v137 = v3;
    v136 = v7;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v46 = sub_21DBFC21C();
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v40 = v46 | 0x8000000000000000;
    }

    else
    {
      v60 = -1 << *(v40 + 32);
      v47 = v40 + 64;
      v48 = ~v60;
      v61 = -v60;
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      else
      {
        v62 = -1;
      }

      v49 = v62 & *(v40 + 64);
    }

    v63 = v15;
    v143 = 0;
    v64 = 0;
    v141 = v48;
    v65 = (v48 + 64) >> 6;
    v157 = (v29 + 32);
    v158 = (v11 + 56);
    v159 = (v29 + 8);
    v139 = (v11 + 8);
    v135 = (v63 + 8);
    v138 = (v17 + 8);
    v132 = (v11 + 48);
    v131 = (v11 + 32);
    v134 = (v17 + 16);
    v133 = (v17 + 56);
    do
    {
      while (1)
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          if (!sub_21DBFC2DC())
          {
            goto LABEL_45;
          }

          v73 = v72;
          swift_unknownObjectRelease();
          v167 = v73;
          swift_dynamicCast();
          v71 = aBlock;
          if (!aBlock)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v69 = v64;
          v70 = v49;
          if (!v49)
          {
            while (1)
            {
              v64 = v69 + 1;
              if (__OFADD__(v69, 1))
              {
                break;
              }

              if (v64 >= v65)
              {
                goto LABEL_45;
              }

              v70 = *(v47 + 8 * v64);
              ++v69;
              if (v70)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
            goto LABEL_52;
          }

LABEL_23:
          v49 = (v70 - 1) & v70;
          v71 = *(*(v40 + 56) + ((v64 << 9) | (8 * __clz(__rbit64(v70)))));
          if (!v71)
          {
            goto LABEL_45;
          }
        }

        v74 = [v71 displayDate];
        if (!v74 || (v75 = v74, v76 = [v74 date], v75, v77 = v162, sub_21DBF55FC(), v76, v78 = v161, v79 = v164, (*v157)(v161, v77, v164), v80 = v163, (*v158)(v163, 1, 1, v165), v42 = sub_21DAF79F0(v80), sub_21D0CF7E0(v80, &unk_27CE60DB0), (*v159)(v78, v79), (v42 & 1) == 0))
        {
          sub_21D0D8CF0(0, &qword_280D17680);
          v66 = [v71 list];
          v67 = [v66 objectID];

          v42 = [objc_opt_self() siriFoundInAppsListID];
          v68 = sub_21DBFB63C();

          if ((v68 & 1) == 0)
          {
            break;
          }
        }
      }

      v81 = v137;
      v82 = v137 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong() && (v83 = *(v82 + 8), ObjectType = swift_getObjectType(), v85 = (*(v83 + 56))(v81, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v83), swift_unknownObjectRelease(), v85))
      {
        v86 = type metadata accessor for TTRBasicUndoContext();
        v87 = swift_allocObject();
        *(v87 + 16) = v85;
        *(&v169 + 1) = v86;
        v170 = &protocol witness table for TTRBasicUndoContext;
        *&aBlock = v87;
      }

      else
      {
        v170 = 0;
        aBlock = 0u;
        v169 = 0u;
      }

      sub_21D0D3954(&aBlock, &v167, &unk_27CE60D80);
      v88 = v142;
      v128 = v88;
      v89 = v71;
      v130 = v89;
      v90 = [v88 updateReminder_];
      sub_21D0D3954(&v167, v166, &unk_27CE60D80);
      v129 = type metadata accessor for TTRReminderEditor();
      v91 = swift_allocObject();
      *(v91 + 72) = 0;
      *(v91 + 16) = v90;
      sub_21D0D3954(v166, v91 + 24, &unk_27CE60D80);
      *(v91 + 64) = 0;
      v92 = [v90 fetchedCurrentDueDateDeltaAlert];

      sub_21D0CF7E0(&aBlock, &unk_27CE60D80);
      sub_21D0CF7E0(v166, &unk_27CE60D80);
      sub_21D0CF7E0(&v167, &unk_27CE60D80);
      v128 = v91;
      *(v91 + 72) = v92;
      v93 = v151;
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v125 = objc_opt_self();
      v94 = [v125 defaultTimeZone];
      v95 = v153;
      sub_21DBF5C2C();

      v96 = v149;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v97 = v150;
      sub_21DBF58BC();
      v127 = *v159;
      v127(v96, v164);
      v126 = *v139;
      v126(v95, v165);
      (*v135)(v93, v152);
      static TTRReminderEditor.todayDueDateComponents(now:)(v155);
      v98 = *v138;
      v99 = v154;
      (*v138)(v97, v154);
      v100 = [v130 displayDate];
      v129 = v98;
      if (v100)
      {
        v101 = v100;
        if ([v100 isAllDay])
        {
        }

        else
        {
          v102 = [v101 date];
          sub_21DBF55FC();

          v103 = v148;
          v104 = v165;
          (*v158)(v148, 1, 1, v165);
          v124 = sub_21DBF55BC();
          v105 = v103;
          v106 = v146;
          sub_21D0D3954(v105, v146, &unk_27CE60DB0);
          v107 = *v132;
          if ((*v132)(v106, 1, v104) == 1)
          {
            v108 = [v125 defaultTimeZone];
            v125 = v107;
            v109 = v145;
            sub_21DBF5C2C();

            v110 = v146;
            if ((v125)(v146, 1, v104) != 1)
            {
              sub_21D0CF7E0(v110, &unk_27CE60DB0);
            }
          }

          else
          {
            v109 = v145;
            (*v131)(v145, v106, v104);
          }

          v111 = objc_opt_self();
          v112 = sub_21DBF5C0C();
          v126(v109, v104);
          v113 = v124;
          v114 = [v111 rem:v124 dateComponentsWithDate:v112 timeZone:0 isAllDay:?];

          v115 = v144;
          sub_21DBF4EFC();

          sub_21D0CF7E0(v148, &unk_27CE60DB0);
          v127(v147, v164);
          sub_21DBF4F5C();
          sub_21DBF4F6C();
          sub_21DBF4FCC();
          sub_21DBF4FDC();
          sub_21DBF4FEC();
          sub_21DBF4FFC();
          sub_21DBF507C();
          sub_21DBF508C();

          v116 = v115;
          v99 = v154;
          v129(v116, v154);
        }
      }

      v117 = v140;
      (*v134)(v140, v155, v99);
      (*v133)(v117, 0, 1, v99);
      v118 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
      v42 = v136;
      (*(*(v118 - 8) + 56))(v136, 1, 1, v118);
      sub_21D9C50E0(v117, v42);

      sub_21D0CF7E0(v42, &unk_27CE60DA0);
      sub_21D0CF7E0(v117, &qword_27CE58D60);
      v129(v155, v99);
    }

    while (!__OFADD__(v143++, 1));
    __break(1u);
LABEL_45:
    sub_21D0CFAF8();
    if (v143 >= 1)
    {
      sub_21D0D8CF0(0, &qword_280D1B900);
      v120 = sub_21DBFB12C();
      v121 = swift_allocObject();
      *(v121 + 16) = rawValue;
      v170 = sub_21D7491EC;
      v171 = v121;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v169 = sub_21D11E5E4;
      *(&v169 + 1) = &block_descriptor_22_2;
      v122 = _Block_copy(&aBlock);
      sub_21DBF8E0C();

      v123 = v142;
      [v142 saveWithQueue:v120 completion:v122];

      _Block_release(v122);
      return 1;
    }
  }

  else
  {
    v50 = aBlock;
    v42 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
LABEL_52:
      swift_once();
    }

    v51 = sub_21DBF84BC();
    __swift_project_value_buffer(v51, qword_280D0F300);
    v52 = v42;
    v53 = sub_21DBF84AC();
    v54 = sub_21DBFAEBC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&aBlock = v56;
      *v55 = 136315138;
      swift_getErrorValue();
      v57 = sub_21DBFC74C();
      v59 = sub_21D0CDFB4(v57, v58, &aBlock);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_21D0C9000, v53, v54, "Failed to fetch reminder {error: %s}", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x223D46520](v56, -1, -1);
      MEMORY[0x223D46520](v55, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

void sub_21D740E48(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F300);
    sub_21DBF8E0C();
    v6 = a1;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136315394;
      swift_getErrorValue();
      v11 = sub_21DBFC74C();
      v13 = sub_21D0CDFB4(v11, v12, &v28);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = sub_21D0D8CF0(0, &qword_280D17880);
      v15 = MEMORY[0x223D42DB0](a2, v14);
      v17 = sub_21D0CDFB4(v15, v16, &v28);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to set reminders to today {error: %s, reminderIDs %s}", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);

      return;
    }

    v26 = a1;
  }

  else
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_280D0F300);
    sub_21DBF8E0C();
    oslog = sub_21DBF84AC();
    v19 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      v22 = sub_21D0D8CF0(0, &qword_280D17880);
      v23 = MEMORY[0x223D42DB0](a2, v22);
      v25 = sub_21D0CDFB4(v23, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_21D0C9000, oslog, v19, "Set reminders to today {reminderIDs: %s}", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223D46520](v21, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);

      return;
    }

    v26 = oslog;
  }
}

void TTRAccountsListsInteractor.recover(remindersWithIDs:to:)(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v5 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_21D0D8CF0(0, &qword_280D17880);
  v6 = sub_21DBFA5DC();
  v7 = [objc_opt_self() fetchOptionsIncludingConcealed];
  *&v31 = 0;
  v8 = [v4 fetchRemindersWithObjectIDs:v6 fetchOptions:v7 error:&v31];

  v9 = v31;
  if (v8)
  {
    sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D0D65DC(&qword_280D17870, &qword_280D17880);
    v10 = sub_21DBF9E6C();
    v11 = v9;

    v12 = sub_21D198B0C(v10);

    v13 = v2 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong() && (v14 = *(v13 + 8), ObjectType = swift_getObjectType(), v16 = (*(v14 + 56))(v2, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v14), swift_unknownObjectRelease(), v16))
    {
      v17 = type metadata accessor for TTRBasicUndoContext();
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(&v32 + 1) = v17;
      v33 = &protocol witness table for TTRBasicUndoContext;
      *&v31 = v18;
    }

    else
    {
      v16 = 0;
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
    }

    v19 = v16;
    _s15RemindersUICore13TTRListEditorC7recover9reminders4list11saveRequest11undoContextySaySo11REMReminderCG_So7REMListCSo07REMSaveI0CAA07TTRUndoK0_pSgtFZ_0(v12, a2, v5, &v31);

    sub_21D0CF7E0(&v31, &unk_27CE60D80);
  }

  else
  {
    v20 = v31;
    v21 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F300);
    v23 = v21;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEBC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v31 = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_21DBFC74C();
      v30 = sub_21D0CDFB4(v28, v29, &v31);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_21D0C9000, v24, v25, "Failed to fetch deleted reminders for recovery {error: %s}", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {
    }
  }
}

void TTRAccountsListsInteractor.permanentlyHideAllInRecentlyDeletedList(with:)(uint64_t a1)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v65 = sub_21DBF6D7C();
  v61 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF773C();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF734C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597E0);
  v62 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v59 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  (*(v8 + 104))(v10, *MEMORY[0x277D45500], v7, v12);
  v16 = a1;
  sub_21DBF748C();
  v26 = v65;
  v59 = 0;
  v60 = v15;
  v64 = v16;
  (*(v8 + 8))(v10, v7);
  v27 = v63;
  sub_21DBF76DC();
  (*(v62 + 8))(v14, v11);
  v28 = sub_21DBF718C();
  (*(v66 + 8))(v27, v67);
  v29 = *(v28 + 16);
  if (v29)
  {
    v70[0] = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v30 = v26;
    v31 = *(v61 + 16);
    v66 = v28;
    v67 = v31;
    v32 = v28 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v33 = *(v61 + 72);
    v34 = (v61 + 8);
    do
    {
      (v67)(v4, v32, v30);
      sub_21DBF6D5C();
      (*v34)(v4, v30);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v32 += v33;
      --v29;
    }

    while (v29);

    v35 = v70[0];
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  v36 = v35 >> 62;
  v37 = v60;
  v67 = v35;
  if (v35 >> 62)
  {
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21DBF8E0C();
    sub_21DBFC33C();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_280D17880);
  }

  sub_21D0D8CF0(0, &qword_280D17880);
  v38 = sub_21DBFA5DC();

  v39 = [objc_opt_self() fetchOptionsIncludingConcealed];
  v70[0] = 0;
  v40 = [v37 fetchRemindersWithObjectIDs:v38 fetchOptions:v39 error:v70];

  v41 = v70[0];
  if (!v40)
  {
    v48 = v70[0];

    v49 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_3;
  }

  v42 = sub_21D0D8CF0(0, &qword_280D17860);
  sub_21D0D65DC(&qword_280D17870, &qword_280D17880);
  v65 = v42;
  v43 = sub_21DBF9E6C();
  v44 = v41;

  v70[0] = MEMORY[0x277D84F90];
  v45 = v67;
  if (v36)
  {
    v46 = v67 & 0xFFFFFFFFFFFFFF8;
    v47 = sub_21DBFBD7C();
  }

  else
  {
    v46 = v67 & 0xFFFFFFFFFFFFFF8;
    v47 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = 0;
  v49 = (v45 & 0xC000000000000001);
  v51 = v43 & 0xFFFFFFFFFFFFFF8;
  if (v43 < 0)
  {
    v51 = v43;
  }

  v66 = v51;
  v63 = MEMORY[0x277D84F90];
  if (!v47)
  {
LABEL_21:

    sub_21DBFB72C();

    return;
  }

  while (v49)
  {
    v52 = MEMORY[0x223D44740](v50, v45);
    v53 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_42;
    }

LABEL_28:
    if ((v43 & 0xC000000000000001) != 0)
    {
      v54 = v52;
      v55 = sub_21DBFC2CC();

      if (v55)
      {
        v68 = v55;
        swift_dynamicCast();
        v55 = v69;
      }
    }

    else
    {
      if (!*(v43 + 16))
      {

        ++v50;
        goto LABEL_24;
      }

      v56 = v52;
      v57 = sub_21D17E07C(v56);
      if (v58)
      {
        v55 = *(*(v43 + 56) + 8 * v57);
      }

      else
      {

        v55 = 0;
      }
    }

    v45 = v67;
    ++v50;
    if (v55)
    {
      MEMORY[0x223D42D80]();
      if (*((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v63 = v70[0];
      v50 = v53;
      v45 = v67;
      if (v47 == v53)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_24:
      if (v47 == v50)
      {
        goto LABEL_21;
      }
    }
  }

  if (v50 >= *(v46 + 16))
  {
    goto LABEL_43;
  }

  v52 = *(v45 + 8 * v50 + 32);
  v53 = v50 + 1;
  if (!__OFADD__(v50, 1))
  {
    goto LABEL_28;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_3:
  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_280D0F300);
  v18 = v49;
  v19 = sub_21DBF84AC();
  v20 = sub_21DBFAEBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v70[0] = v22;
    *v21 = 136315138;
    swift_getErrorValue();
    v23 = sub_21DBFC74C();
    v25 = sub_21D0CDFB4(v23, v24, v70);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_21D0C9000, v19, v20, "Failed to fetch reminders in recently deleted list for permanently hide {error: %s}", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x223D46520](v22, -1, -1);
    MEMORY[0x223D46520](v21, -1, -1);
  }

  else
  {
  }
}

void sub_21D741F34(void *a1, char a2)
{
  if (a2)
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F300);
    v4 = a1;
    oslog = sub_21DBF84AC();
    v5 = sub_21DBFAEBC();
    sub_21D1D1F18(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_21DBFC75C();
      v10 = sub_21D0CDFB4(v8, v9, &v12);

      *(v6 + 4) = v10;
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223D46520](v7, -1, -1);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t TTRAccountsListsInteractor.sortingCapabilityAndSortingStyle(for:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = sub_21DBF70DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBFAE6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TTRListType.SortingCapability(0);
  v13 = MEMORY[0x28223BE20](v37);
  v38 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v16 = *a3;
  v36 = a1;
  if (v16 > 2)
  {
    if ((v16 - 3) < 3)
    {
      v33 = v16;
      v17 = MEMORY[0x277D45408];
      goto LABEL_6;
    }

    v29 = MEMORY[0x277D45420];
LABEL_13:
    (*(v7 + 104))(a2, *v29, v6, v13);
    v22 = v38;
    (*(v7 + 16))(v38, a2, v6);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return sub_21D0D6754(v22, v36, type metadata accessor for TTRListType.SortingCapability);
  }

  if (v16 >= 2)
  {
    v29 = MEMORY[0x277D45418];
    goto LABEL_13;
  }

  v33 = v16;
  v17 = MEMORY[0x277D45400];
LABEL_6:
  v18 = *MEMORY[0x277D454E8];
  v19 = sub_21DBF733C();
  v20 = *(*(v19 - 8) + 104);
  v32 = v18;
  v20(a2, v18, v19);
  v21 = *v17;
  v34 = *(v7 + 104);
  v34(a2, v21, v6);
  v22 = v38;
  (*(v7 + 16))(v38, a2, v6);
  swift_storeEnumTagMultiPayload();
  if (((1 << v15) & 0x19) != 0)
  {
    (*(v10 + 104))(v12, **(&unk_27832EB18 + v15), v9);
    v23 = sub_21DBFB73C();
    (*(v10 + 8))(v12, v9);
    v24 = [v23 sortingStyle];
    v25 = v35;
    sub_21DBFAF7C();

    v26 = *(v7 + 8);
    v26(a2, v6);
    (*(v7 + 32))(a2, v25, v6);
    v27 = v34;
    v34(v25, *MEMORY[0x277D45420], v6);
    LOBYTE(v24) = MEMORY[0x223D3F870](a2, v25);

    v26(v25, v6);
    sub_21D0D8E4C(v38, type metadata accessor for TTRListType.SortingCapability);
    if ((v24 & 1) == 0)
    {
LABEL_17:
      v22 = v38;
      *v38 = 1;
      goto LABEL_18;
    }

    v26(a2, v6);
    if (v33 < 2)
    {
      v28 = MEMORY[0x277D45400];
    }

    else
    {
      if (v33 - 3 >= 2)
      {
        v28 = MEMORY[0x277D45418];
        goto LABEL_16;
      }

      v28 = MEMORY[0x277D45408];
    }

    v30 = sub_21DBF733C();
    (*(*(v30 - 8) + 104))(a2, v32, v30);
LABEL_16:
    v27(a2, *v28, v6);
    goto LABEL_17;
  }

  return sub_21D0D6754(v22, v36, type metadata accessor for TTRListType.SortingCapability);
}

uint64_t TTRAccountsListsInteractor.setSortingStyle(_:for:)(uint64_t a1, char *a2)
{
  v4 = sub_21DBFAE6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, **(&unk_27832EB40 + *a2), v4, v6);
  v9 = sub_21DBFB73C();
  v10 = (*(v5 + 8))(v8, v4);
  MEMORY[0x28223BE20](v10);
  *&v12[-1] = a1;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_21D20C818(v9, v12, sub_21D74A6A4, &v12[-2], 0, 0);

  return sub_21D0CF7E0(v12, &unk_27CE60D80);
}

uint64_t sub_21D742C74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _OWORD *, uint64_t, void *, void, void))
{
  v5[2] = a1;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  a4(a2, v6, a3, v5, 0, 0);
  return sub_21D0CF7E0(v6, &unk_27CE60D80);
}

void sub_21D742CDC(uint64_t a1, uint64_t a2, void (*a3)(id, char *))
{
  v4 = sub_21DBF709C();
  v5 = 3;
  a3(v4, &v5);
}

Swift::Void __swiftcall TTRAccountsListsInteractor.addReminder(title:)(Swift::String title)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  *&aBlock = 0;
  v3 = [v2 fetchDefaultListWithError_];
  v4 = v3;
  if (aBlock)
  {
    v5 = aBlock;

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F300);
    v7 = v5;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&aBlock = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_21DBFC74C();
      v14 = sub_21D0CDFB4(v12, v13, &aBlock);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Failed to add reminder {error: %s}", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);

LABEL_6:
      return;
    }
  }

  else
  {
    if (!v3)
    {
      if (qword_280D17F00 != -1)
      {
        swift_once();
      }

      v35 = sub_21DBF84BC();
      __swift_project_value_buffer(v35, qword_280D0F300);
      v7 = sub_21DBF84AC();
      v36 = sub_21DBFAEBC();
      if (os_log_type_enabled(v7, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_21D0C9000, v7, v36, "No default list to add new reminder. Giving up.", v37, 2u);
        MEMORY[0x223D46520](v37, -1, -1);
      }

      goto LABEL_6;
    }

    v7 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    sub_21D0D3954(v46, v45, &unk_27CE60D80);
    v15 = v4;
    v16 = [v7 updateList:v15];
    sub_21D0D3954(v45, v43, &unk_27CE60D80);
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v17 = qword_280D1AA18;
    sub_21D0CF7E0(v45, &unk_27CE60D80);
    type metadata accessor for TTRListEditor();
    inited = swift_initStackObject();
    *(&v39 + 1) = type metadata accessor for TTRUserDefaults();
    v40 = &protocol witness table for TTRUserDefaults;
    *&aBlock = v17;
    v19 = v17;
    sub_21D0CF7E0(v46, &unk_27CE60D80);
    *(inited + 64) = 0;
    *(inited + 16) = v16;
    v20 = v44;
    v21 = v43[1];
    *(inited + 24) = v43[0];
    *(inited + 40) = v21;
    *(inited + 56) = v20;
    swift_beginAccess();
    *(inited + 64) = 0;
    sub_21D0D0FD0(&aBlock, inited + 72);

    v22 = TTRListEditor.addNewReminder(with:title:)(0);
    v40 = 0;
    aBlock = 0u;
    v39 = 0u;
    sub_21D0D3954(&aBlock, v42, &unk_27CE60D80);
    type metadata accessor for TTRReminderEditor();
    v23 = swift_allocObject();
    *(v23 + 72) = 0;
    *(v23 + 16) = v22;
    sub_21D0D3954(v42, v23 + 24, &unk_27CE60D80);
    *(v23 + 64) = 0;
    v24 = v22;
    v25 = [v24 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(&aBlock, &unk_27CE60D80);
    sub_21D0CF7E0(v42, &unk_27CE60D80);
    *(v23 + 72) = v25;
    v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v27 = sub_21DBFA12C();
    v28 = [v26 initWithString_];

    v29 = sub_21D9CA3E0(v28, 0, 1);
    if (v29)
    {
      v30 = v29;
      swift_retain_n();
      sub_21D182E74(sub_21D23298C, v30);
    }

    sub_21D0D8CF0(0, &qword_280D1B900);
    v31 = sub_21DBFB12C();
    v32 = swift_allocObject();
    *(v32 + 16) = v15;
    *(v32 + 24) = v24;
    v40 = sub_21D749254;
    v41 = v32;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_21D11E5E4;
    *(&v39 + 1) = &block_descriptor_28_1;
    v33 = _Block_copy(&aBlock);
    v8 = v15;
    v34 = v24;

    [v7 saveWithQueue:v31 completion:v33];
    _Block_release(v33);
  }
}

void sub_21D7433A8(NSObject *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F300);
    v7 = a1;
    v8 = a2;
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v11 = 136315394;
      swift_getErrorValue();
      v14 = sub_21DBFC74C();
      v16 = sub_21D0CDFB4(v14, v15, &v29);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      v17 = [v8 objectID];
      *(v11 + 14) = v17;
      *v12 = v17;
      _os_log_impl(&dword_21D0C9000, v9, v10, "Failed to add reminder to list {error: %s, listID: %@}", v11, 0x16u);
      sub_21D0CF7E0(v12, &unk_27CE60070);
      MEMORY[0x223D46520](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D46520](v13, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);

      return;
    }

    v27 = a1;
  }

  else
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_280D0F300);
    v20 = a2;
    v21 = a3;
    oslog = sub_21DBF84AC();
    v22 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412546;
      v25 = [v21 objectID];
      *(v23 + 4) = v25;
      *v24 = v25;
      *(v23 + 12) = 2112;
      v26 = [v20 objectID];
      *(v23 + 14) = v26;
      v24[1] = v26;
      _os_log_impl(&dword_21D0C9000, oslog, v22, "Added reminder to list {reminderID: %@, listID: %@}", v23, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    v27 = oslog;
  }
}

uint64_t TTRAccountsListsInteractor.showsCompleted(for:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults;
  swift_beginAccess();
  sub_21D0D32E4(v1 + v4, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = [v2 objectID];
  v9 = v3;
  LOBYTE(v2) = (*(v6 + 104))(&v8, v5, v6);
  sub_21D157478(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v2 & 1;
}

uint64_t TTRAccountsListsInteractor.toggleShowsCompleted(for:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults;
  swift_beginAccess();
  sub_21D0D32E4(v1 + v4, v17);
  v5 = v18;
  v6 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_21D0D32E4(v1 + v4, &v13);
  v7 = v15;
  v8 = v16;
  __swift_project_boxed_opaque_existential_1(&v13, v15);
  v11 = [v2 objectID];
  v12 = v3;
  v9 = (*(v8 + 104))(&v11, v7, v8);
  sub_21D157478(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = [v2 objectID];
  v14 = v3;
  (*(v6 + 112))((v9 & 1) == 0, &v13, v5, v6);
  sub_21D157478(v13, v14);
  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t TTRAccountsListsInteractor.updateAutoCategorization(for:shouldAutoCategorizeItems:deleteExistingSections:)(void *a1, int a2, char a3)
{
  v6 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v7 = *(v6 + 8), ObjectType = swift_getObjectType(), v9 = (*(v7 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v7), swift_unknownObjectRelease(), v9))
  {
    v10 = type metadata accessor for TTRBasicUndoContext();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(&v62 + 1) = v10;
    v63 = &protocol witness table for TTRBasicUndoContext;
    *&v61 = v11;
  }

  else
  {
    v9 = 0;
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
  }

  v43 = v9;
  v12 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC09CF0;
  *(v13 + 32) = a1;
  v14 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v15 = a1;
  v42 = v12;
  v16 = [v14 initWithStore_];
  [v16 setSaveIsNoopIfNoChangedKeys_];
  v50 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v50)
  {
    v17 = 0;
    v49 = v13 & 0xC000000000000001;
    v46 = a3;
    v44 = v13;
    v45 = v16;
    while (1)
    {
      if (v49)
      {
        v18 = MEMORY[0x223D44740](v17, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v17 + 32);
      }

      v19 = v18;
      sub_21D0D3954(&v61, aBlock, &unk_27CE60D80);
      v20 = v16;
      v21 = [v20 updateList_];
      sub_21D0D3954(aBlock, &v58, &unk_27CE60D80);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v22 = qword_280D1AA18;

      sub_21D0CF7E0(aBlock, &unk_27CE60D80);
      type metadata accessor for TTRListEditor();
      v23 = swift_allocObject();
      v56 = type metadata accessor for TTRUserDefaults();
      v57 = &protocol witness table for TTRUserDefaults;
      *&v55 = v22;
      *(v23 + 64) = 0;
      *(v23 + 16) = v21;
      v24 = v59;
      *(v23 + 24) = v58;
      *(v23 + 40) = v24;
      *(v23 + 56) = v60;
      swift_beginAccess();
      *(v23 + 64) = 0;
      sub_21D0D0FD0(&v55, v23 + 72);
      v25 = v22;
      v26 = [v21 autoCategorizeContextChangeItem];
      if (!v26)
      {
        goto LABEL_16;
      }

      v27 = v26;
      if (([v26 shouldAutoCategorizeItems] ^ a2))
      {
        break;
      }

      if (a3)
      {
LABEL_19:
        TTRListEditor.removeExistingSections()();
      }

LABEL_7:
      ++v17;

      if (v50 == v17)
      {
        goto LABEL_20;
      }
    }

    v47 = [v27 shouldAutoCategorizeItems];
    [v27 setShouldAutoCategorizeItems_];
    swift_beginAccess();
    sub_21D0D32E4(v23 + 72, aBlock);
    v28 = v52;
    v29 = v53;
    __swift_project_boxed_opaque_existential_1(aBlock, v52);
    v30 = [*(v23 + 16) objectID];
    (*(v29 + 6))(1, v30, v28, v29);

    __swift_destroy_boxed_opaque_existential_0(aBlock);
    v31 = swift_allocObject();
    *(v31 + 16) = 1;
    v32 = sub_21D0D8CF0(0, &qword_280D17880);
    v52 = v32;
    aBlock[0] = [*(v23 + 16) &off_2783316F8];
    v33 = sub_21D0D8CF0(0, &qword_280D17690);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584F0);
    *(&v59 + 1) = v34;
    *&v58 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
    v35 = swift_allocObject();
    v35[1] = xmmword_21DC08D00;
    sub_21D0CEB98(aBlock, (v35 + 2));
    sub_21D0CF2E8(&v58, v35 + 4);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    sub_21D1C3EB8(v35, sub_21D1CD9EC, v31);

    v36 = swift_allocObject();
    *(v36 + 16) = v47;
    v52 = v32;
    aBlock[0] = [*(v23 + 16) objectID];
    *(&v59 + 1) = v34;
    *&v58 = v33;
    a3 = v46;
    v13 = v44;
    v16 = v45;
    v37 = swift_allocObject();
    v37[1] = xmmword_21DC08D00;
    sub_21D0CEB98(aBlock, (v37 + 2));
    sub_21D0CF2E8(&v58, v37 + 4);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    sub_21D1C3EB8(v37, sub_21D1CD9F4, v36);

LABEL_16:
    if (a3)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

LABEL_20:
  sub_21D0D8CF0(0, &qword_280D1B900);
  v38 = sub_21DBFB12C();
  v39 = swift_allocObject();
  v39[3] = 0;
  v39[4] = 0;
  v39[2] = v13;
  v53 = sub_21D1D1AC8;
  v54 = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  v52 = &block_descriptor_34_2;
  v40 = _Block_copy(aBlock);

  [v16 saveWithQueue:v38 completion:v40];
  _Block_release(v40);

  return sub_21D0CF7E0(&v61, &unk_27CE60D80);
}

uint64_t TTRAccountsListsInteractor.tagReminders(_:withHashtagName:)(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_21DBF8E0C();
LABEL_5:
    v13 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
    v14 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong() && (v15 = *(v14 + 8), ObjectType = swift_getObjectType(), v17 = (*(v15 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v15), swift_unknownObjectRelease(), v17))
    {
      v18 = type metadata accessor for TTRBasicUndoContext();
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      *(&v34 + 1) = v18;
      v35 = &protocol witness table for TTRBasicUndoContext;
      *&v33 = v19;
    }

    else
    {
      v17 = 0;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }

    sub_21DBF8E0C();
    v20 = v17;
    sub_21D977EE8(v6, v13, &v33, a2, a3);

    sub_21D0CF7E0(&v33, &unk_27CE60D80);

    return 1;
  }

  v7 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  sub_21D0D8CF0(0, &qword_280D17880);
  v8 = sub_21DBFA5DC();
  *&v33 = 0;
  v9 = [v7 fetchRemindersWithObjectIDs:v8 error:&v33];

  v10 = v33;
  if (v9)
  {
    sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D0D65DC(&qword_280D17870, &qword_280D17880);
    v11 = sub_21DBF9E6C();
    v12 = v10;

    v6 = sub_21D198B0C(v11);

    goto LABEL_5;
  }

  v22 = v33;
  v23 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v24 = sub_21DBF84BC();
  __swift_project_value_buffer(v24, qword_280D0F300);
  v25 = v23;
  v26 = sub_21DBF84AC();
  v27 = sub_21DBFAEBC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v33 = v29;
    *v28 = 136315138;
    swift_getErrorValue();
    v30 = sub_21DBFC74C();
    v32 = sub_21D0CDFB4(v30, v31, &v33);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_21D0C9000, v26, v27, "Failed to fetch reminders for tagging {error: %s}", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x223D46520](v29, -1, -1);
    MEMORY[0x223D46520](v28, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_21D7444B8@<X0>(id a1@<X1>, uint64_t a2@<X0>, char *a3@<X8>)
{
  v5 = [a1 objectID];
  v6 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_accountsEligibleForMigration_cached;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (*(v7 + 16) && (v8 = sub_21D17E07C(v5), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + v8);
  }

  else
  {
    v10 = 2;
  }

  result = swift_endAccess();
  *a3 = v10;
  return result;
}

Swift::Void __swiftcall TTRAccountsListsInteractor.registerUndoFor(listDetailUndoManager:)(NSUndoManager *listDetailUndoManager)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 56))(v2, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v5);
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
      if ([(NSUndoManager *)listDetailUndoManager canUndo])
      {
        v9 = swift_allocObject();
        *(v9 + 16) = listDetailUndoManager;
        *(v9 + 24) = v8;
        sub_21D0D8CF0(0, &unk_280D17840);
        v10 = listDetailUndoManager;
        v11 = v8;
        sub_21DBFAE8C();
      }
    }
  }
}

Swift::Void __swiftcall TTRAccountsListsInteractor.pauseUpdates()()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_dataViewMonitor))
  {

    sub_21D737F20(&unk_282ED0390, sub_21D74A5F8, &block_descriptor_176);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall TTRAccountsListsInteractor.resumeUpdates()()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_dataViewMonitor))
  {

    sub_21D0D4B6C(1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D744778()
{
  sub_21DBFBEEC();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60E98);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD00000000000002ELL, 0x800000021DC6A010);
  sub_21DBFAEDC();
  sub_21DBF626C();
}

uint64_t sub_21D74485C(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 48))(a1, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D744900(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = *a1;
  v10 = [*(*a1 + 16) saveRequest];
  v11 = v10;
  if (a2)
  {
    v12 = [v10 updateList_];
    v13 = [v12 sublistContext];

    v14 = BYTE1(a4);
    if (BYTE1(a4))
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_21D749C9C(a3, a4, 0);
    v15 = &selRef_updateSmartList_;
    if ((a4 & 1) == 0)
    {
      v15 = &selRef_updateList_;
    }

    goto LABEL_10;
  }

  v13 = 0;
  v14 = BYTE1(a4);
  if (!BYTE1(a4))
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14 == 1)
  {
    sub_21D749C9C(a3, a4, 1u);
    v15 = &selRef_updateSmartList_;
    if ((a4 & 1) == 0)
    {
      v15 = &selRef_updateList_;
    }

LABEL_10:
    v16 = [v11 *v15];

    goto LABEL_12;
  }

  v16 = (a3 | a4) != 0;
  sub_21D749C9C(a3, a4, 2u);
LABEL_12:
  v40 = *(a5 + 16);
  if (v40)
  {
    v41 = v13;
    v17 = 0;
    v38 = v11;
    v39 = a5 + 32;
LABEL_16:
    v44 = v14;
    v19 = v39 + 16 * v17;
    v42 = *(v19 + 8);
    v43 = v17 + 1;
    v20 = *v19;
    v21 = 1 << *(a6 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(a6 + 56);
    v24 = (v21 + 63) >> 6;
    v25 = v20;
    sub_21DBF8E0C();
    v26 = 0;
    while (v23)
    {
      v27 = v26;
LABEL_26:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = *(*(a6 + 48) + ((v27 << 10) | (16 * v28)));
      v30 = [v29 objectID];
      v31 = [v25 objectID];
      sub_21D0D8CF0(0, &qword_280D17680);
      v32 = sub_21DBFB63C();

      if (v32)
      {
        v33 = 1;
LABEL_29:

        v34 = v38;
        if (v42)
        {
          v35 = [v38 updateSmartList_];
          if (!v33)
          {
LABEL_34:
            v46 = v16;
            v47 = v44;
            if (v41)
            {
              v36 = v41;
              sub_21D2557D8(v16, v44);
              _s15RemindersUICore16TTRAccountEditorC4move4list2to19positionWithinGroupySo24REMMergeableOrderingNode_p_So31REMListSublistContextChangeItemCAA28TTRRelativeInsertionPositionOySoAH_pGtF_0(v35, v36, &v46);
            }

            else
            {
              swift_getObjectType();
              sub_21D2557D8(v16, v44);
              v18 = swift_unknownObjectRetain();
              sub_21D255460(v18, &v46, v37);

              swift_unknownObjectRelease();
            }

            sub_21D749CB0(v46, v47);
            sub_21D749CB0(v16, v44);
            LOBYTE(v14) = 1;
            v16 = v35;
            v17 = v43;
            if (v43 == v40)
            {

              v16 = v35;
              goto LABEL_38;
            }

            goto LABEL_16;
          }
        }

        else
        {
          v35 = [v38 updateList_];
          if ((v33 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        [v35 setIsPinned_];
        goto LABEL_34;
      }
    }

    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        v33 = 0;
        goto LABEL_29;
      }

      v23 = *(a6 + 56 + 8 * v27);
      ++v26;
      if (v23)
      {
        v26 = v27;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {

    v34 = v13;
LABEL_38:

    sub_21D749CB0(v16, v14);
  }
}

void sub_21D744D44(NSObject *a1, id a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F300);
    v6 = a1;
    v7 = a2;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315394;
      if (a2)
      {
        a2 = [v7 objectID];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0);
      v12 = sub_21DBFBA5C();
      v14 = v13;

      v15 = sub_21D0CDFB4(v12, v14, &v30);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v16 = sub_21DBFC74C();
      v18 = sub_21D0CDFB4(v16, v17, &v30);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Failed to move lists {group.objectID: %s, error: %s}", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);

      return;
    }

    v28 = a1;

LABEL_16:

    return;
  }

  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF84BC();
  __swift_project_value_buffer(v19, qword_280D0F300);
  v20 = a2;
  oslog = sub_21DBF84AC();
  v21 = sub_21DBFAEDC();

  if (!os_log_type_enabled(oslog, v21))
  {
    v28 = oslog;

    goto LABEL_16;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v30 = v23;
  *v22 = 136315138;
  if (a2)
  {
    a2 = [v20 objectID];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0);
  v24 = sub_21DBFBA5C();
  v26 = v25;

  v27 = sub_21D0CDFB4(v24, v26, &v30);

  *(v22 + 4) = v27;
  _os_log_impl(&dword_21D0C9000, oslog, v21, "Moved lists {group.objectID: %s}", v22, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v23);
  MEMORY[0x223D46520](v23, -1, -1);
  MEMORY[0x223D46520](v22, -1, -1);
}

uint64_t sub_21D745138@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_21DBF8E0C();
  v4 = sub_21DBF8E0C();
  result = sub_21D996E30(v4, v3);
  *a2 = result;
  return result;
}

uint64_t sub_21D745184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v57 - v7;
  v8 = sub_21DBF6A2C();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF69DC();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_21DBF687C();
  v12 = *(v68 - 8);
  v13 = MEMORY[0x28223BE20](v68);
  v67 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v57 - v15;
  v16 = sub_21DBF684C();
  v72 = *(v16 - 8);
  v73 = v16;
  MEMORY[0x28223BE20](v16);
  v71 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF686C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_21D0D4B04(a2, a3, type metadata accessor for TTRAccountsListsInteractor.FetchResult);
  }

  v57 = a3;
  v23 = *(v19 + 104);
  v23(v21, *MEMORY[0x277D45290], v18);
  v24 = sub_21D1E2F40(v21, v22);
  v25 = *(v19 + 8);
  v25(v21, v18);
  v23(v21, *MEMORY[0x277D45288], v18);
  v65 = sub_21D1E2F40(v21, v22);
  v25(v21, v18);
  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v64 = v12;
  v26 = sub_21DBF84BC();
  __swift_project_value_buffer(v26, qword_280D0F300);
  v27 = sub_21DBF84AC();
  v28 = sub_21DBFAE9C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v75 = v30;
    *v29 = 136315394;
    if (v24)
    {
      v31 = 1702195828;
    }

    else
    {
      v31 = 0x65736C6166;
    }

    if (v24)
    {
      v32 = 0xE400000000000000;
    }

    else
    {
      v32 = 0xE500000000000000;
    }

    v33 = sub_21D0CDFB4(v31, v32, &v75);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v34 = v65;
    if (v65)
    {
      v35 = 1702195828;
    }

    else
    {
      v35 = 0x65736C6166;
    }

    if (v65)
    {
      v36 = 0xE400000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    v37 = sub_21D0CDFB4(v35, v36, &v75);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_21D0C9000, v27, v28, "TTRAccountsListsInteractor: fetch cachable properties {reminderCounts: %s, smartListHashtagLabels: %s}", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v30, -1, -1);
    MEMORY[0x223D46520](v29, -1, -1);

    v38 = v71;
    v39 = Strong;
  }

  else
  {

    v38 = v71;
    v39 = Strong;
    v34 = v65;
  }

  v41 = *(v64 + 104);
  v42 = *MEMORY[0x277D452C0];
  v43 = *MEMORY[0x277D452B0];
  LODWORD(v71) = v24;
  if (v24)
  {
    v44 = v42;
  }

  else
  {
    v44 = v43;
  }

  v45 = v68;
  v41(v66, v44, v68);
  if (v34)
  {
    v46 = v42;
  }

  else
  {
    v46 = v43;
  }

  v41(v67, v46, v45);
  sub_21DBF682C();
  sub_21DBF6A3C();
  v47 = *&v39[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store];
  v48 = v70;
  v49 = v74;
  sub_21DBF681C();
  v74 = v49;
  if (v49)
  {

    return (*(v72 + 8))(v38, v73);
  }

  else
  {

    v50 = v60;
    sub_21DBF6A1C();
    (*(v58 + 8))(v48, v59);
    if (v71)
    {
      v51 = v63;
      sub_21DBF68FC();
      v52 = 0;
    }

    else
    {
      v52 = 1;
      v51 = v63;
    }

    v53 = v65;
    v54 = sub_21DBF680C();
    (*(*(v54 - 8) + 56))(v51, v52, 1, v54);
    if (v53)
    {
      v55 = sub_21DBF689C();
    }

    else
    {

      v55 = 0;
    }

    (*(v61 + 8))(v50, v62);
    (*(v72 + 8))(v38, v73);
    v56 = v57;
    sub_21D749EC4(v51, v57);
    result = type metadata accessor for TTRAccountsListsInteractor.FetchResult(0);
    *(v56 + *(result + 20)) = v55;
  }

  return result;
}

void sub_21D745934()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21DBFBEEC();
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60E98);
    sub_21DBFA1AC();

    MEMORY[0x223D42AA0](0xD000000000000016, 0x800000021DC6A040);
    v2 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();
  }
}

uint64_t sub_21D745AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v8 = result;
  if (result)
  {
    v9 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v11 = a2;
    (*(v9 + 16))(a1, &protocol witness table for TTRAccountsListsInteractor, sub_21D749EBC);
    result = swift_unknownObjectRelease();
  }

  *a3 = v8 == 0;
  return result;
}

uint64_t sub_21D745BAC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_21DBF680C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_21D0D3954(a2, v5, &unk_27CE60F50);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_21D0CF7E0(v5, &unk_27CE60F50);
LABEL_5:
    v15 = 0;
    goto LABEL_7;
  }

  (*(v7 + 32))(v12, v5, v6);
  sub_21DBF68FC();
  sub_21D0D8E04(&qword_280D0C808, MEMORY[0x277D45278]);
  v13 = sub_21DBFA10C();
  v14 = *(v7 + 8);
  v14(v10, v6);
  if (v13)
  {
    v14(v12, v6);
    goto LABEL_5;
  }

  (*(v7 + 16))(v10, v12, v6);
  sub_21DBF690C();
  v14(v12, v6);
  v15 = 1;
LABEL_7:
  v16 = *(a2 + *(type metadata accessor for TTRAccountsListsInteractor.FetchResult(0) + 20));
  if (v16)
  {
    sub_21DBF8E0C();
    v17 = sub_21DBF689C();
    v18 = sub_21D1D57A4(v17, v16);

    if (v18)
    {
    }

    else
    {
      sub_21DBF68AC();
      return 1;
    }
  }

  return v15;
}

id TTRAccountsListsInteractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRAccountsListsInteractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D746064()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 16))(v2, v3);
  return swift_endAccess();
}

id sub_21D7460FC(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v4 = [v3 updateAccount_];
  v5 = sub_21DBFA12C();
  v6 = [v3 addCustomSmartListWithName:v5 toAccountChangeItem:v4 smartListObjectID:0];

  return v6;
}

void sub_21D746208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [a1 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900);
  v8 = sub_21DBFB12C();
  v10[4] = a4;
  v10[5] = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21D11E5E4;
  v10[3] = a5;
  v9 = _Block_copy(v10);
  [v7 saveWithQueue:v8 completion:v9];
  _Block_release(v9);
}

id sub_21D746310(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v7 setSaveIsNoopIfNoChangedKeys_];
  v8 = [v7 *a4];

  return v8;
}

void sub_21D7463B4(uint64_t a1, id a2)
{
  v4 = [a2 account];
  v5 = 1;
  v6 = 512;
  sub_21D73F164(a1, v4, a2, &v5, MEMORY[0x277D84FA0]);
}

uint64_t sub_21D746440(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = [a2 account];
  v11 = v7;
  v12 = v8;
  LOBYTE(a4) = sub_21D73F164(a1, v9, a2, &v11, a4);

  return a4 & 1;
}

uint64_t sub_21D7464D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v6 = *a3;
  v7 = v4;
  return sub_21D73F164(a1, a2, 0, &v6, a4) & 1;
}

uint64_t sub_21D746530()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_dataViewMonitor))
  {

    sub_21D737F20(&unk_282ED0390, sub_21D74A5F8, &block_descriptor_176);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D7465A4()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(v0, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_21D7466C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _OWORD *, uint64_t, void *, void, void))
{
  v7[2] = a1;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  a6(a2, v8, a5, v7, 0, 0);
  return sub_21D0CF7E0(v8, &unk_27CE60D80);
}

uint64_t TTRAccountsListsInteractor.cloudKitMigrationManagerDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF9D2C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21DBF9D5C();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 24);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10, v12);
  v16 = v15;
  LOBYTE(v15) = sub_21DBF9DAC();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v18 = sub_21D0FC144();
    sub_21D0D8CF0(0, &qword_280D1B900);
    v19 = sub_21DBFB12C();
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v18;
    aBlock[4] = sub_21D749278;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_66_3;
    v21 = _Block_copy(aBlock);
    v22 = v2;

    sub_21DBF9D4C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21D0D8E04(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v21);
    _Block_release(v21);

    (*(v24 + 8))(v6, v4);
    return (*(v7 + 8))(v9, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D746B04(char *a1, uint64_t a2)
{
  v120 = sub_21DBF9D2C();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v117 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_21DBF9D5C();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21DBF9D1C();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = (&v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v110 = (&v104 - v8);
  v111 = sub_21DBF9D7C();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_21DBFB27C();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_accountsEligibleForMigration_cached;
  swift_beginAccess();
  *&a1[v11] = a2;
  sub_21DBF8E0C();

  aBlock = 0;
  v132 = 0xE000000000000000;
  sub_21DBFBEEC();
  ObjectType = swift_getObjectType();
  aBlock = ObjectType;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60E98);
  v12 = sub_21DBFA1AC();
  v14 = v13;

  aBlock = v12;
  v132 = v14;
  MEMORY[0x223D42AA0](0xD000000000000028, 0x800000021DC69F90);
  sub_21DBFAEDC();
  v130 = a1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
  v121 = 0;

  if (qword_280D17A38 != -1)
  {
LABEL_96:
    swift_once();
  }

  v15 = sub_21DBF84BC();
  v16 = __swift_project_value_buffer(v15, qword_27CE8ECE8);
  v17 = a1;
  v125 = v16;
  v126 = v17;
  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAEDC();

  v20 = os_log_type_enabled(v18, v19);
  v128 = v11;
  v129 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136446210;
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21D0D65DC(&qword_280D17870, &qword_280D17880);
    sub_21DBF8E0C();
    v23 = sub_21DBF9E7C();
    v25 = v24;
    v11 = v128;
    a1 = v129;

    v26 = sub_21D0CDFB4(v23, v25, &aBlock);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_21D0C9000, v18, v19, "cloudKitMigrationManagerDidChange: Updated accountsEligibleForMigration_cached %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x223D46520](v22, -1, -1);
    MEMORY[0x223D46520](v21, -1, -1);
  }

  v27 = *&a1[v11];
  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 64);
  v31 = (v28 + 63) >> 6;
  v127 = 0x800000021DC63B60;
  swift_bridgeObjectRetain_n();
  v32 = 0;
  while (v30)
  {
LABEL_13:
    v35 = __clz(__rbit64(v30)) | (v32 << 6);
    a1 = *(*(v27 + 48) + 8 * v35);
    v11 = *(*(v27 + 56) + v35);
    if (v11 > 3)
    {
      if (v11 == 4 || v11 == 5)
      {
LABEL_28:
        v41 = a1;
        goto LABEL_29;
      }

LABEL_19:
      aBlock = 0;
      v132 = 0xE000000000000000;
      v38 = a1;
      sub_21DBFBEEC();

      aBlock = 0xD000000000000024;
      v132 = v127;
      if (v11)
      {
        v39 = 1702195828;
      }

      else
      {
        v39 = 0x65736C6166;
      }

      if (v11)
      {
        v40 = 0xE400000000000000;
      }

      else
      {
        v40 = 0xE500000000000000;
      }

      MEMORY[0x223D42AA0](v39, v40);

      v37 = v132;
      if (aBlock != 0x6572676F72506E69)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    if (v11 == 2)
    {
      goto LABEL_28;
    }

    if (v11 != 3)
    {
      goto LABEL_19;
    }

    v36 = a1;
    v37 = 0xEA00000000007373;
LABEL_26:
    if (v37 == 0xEA00000000007373)
    {

LABEL_54:

      goto LABEL_55;
    }

LABEL_29:
    v42 = sub_21DBFC64C();

    if (v42)
    {

LABEL_53:

      goto LABEL_54;
    }

    if (v11 > 3)
    {
      if (v11 == 4 || v11 == 5)
      {
        goto LABEL_7;
      }

LABEL_36:
      aBlock = 0;
      v132 = 0xE000000000000000;
      sub_21DBFBEEC();

      aBlock = 0xD000000000000024;
      v132 = v127;
      if (v11)
      {
        v43 = 1702195828;
      }

      else
      {
        v43 = 0x65736C6166;
      }

      if (v11)
      {
        v44 = 0xE400000000000000;
      }

      else
      {
        v44 = 0xE500000000000000;
      }

      MEMORY[0x223D42AA0](v43, v44);

      v45 = v132;
      if (aBlock != 0x6C69617641746F6ELL)
      {
        goto LABEL_7;
      }

      goto LABEL_45;
    }

    if (v11 != 2)
    {
      if (v11 == 3)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }

    v45 = 0xEC000000656C6261;
LABEL_45:
    if (v45 == 0xEC000000656C6261)
    {

LABEL_55:
      if (!*&v126[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_migrationPollingTimer])
      {
        v104 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_migrationPollingTimer;
        v53 = sub_21DBF84AC();
        v54 = sub_21DBFAEDC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_21D0C9000, v53, v54, "accountsEligibleForMigration contains at least one incomplete account. Scheduling update in 5s.", v55, 2u);
          MEMORY[0x223D46520](v55, -1, -1);
        }

        sub_21D0D8CF0(0, &qword_27CE60EA0);
        aBlock = MEMORY[0x277D84F90];
        sub_21D0D8E04(&qword_27CE60EA8, MEMORY[0x277D85278]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EB0);
        sub_21D0D0F1C(&qword_27CE60EB8, &qword_27CE60EB0);
        v56 = v105;
        v57 = v107;
        sub_21DBFBCBC();
        sub_21D0D8CF0(0, &qword_280D1B900);
        v58 = sub_21DBFB12C();
        v59 = sub_21DBFB28C();

        (*(v106 + 8))(v56, v57);
        v60 = swift_getObjectType();
        v61 = v108;
        sub_21DBF9D6C();
        v62 = v110;
        *v110 = 5;
        v63 = *MEMORY[0x277D85188];
        v64 = v113;
        v65 = *(v113 + 104);
        v66 = v114;
        v65(v62, v63, v114);
        v67 = v112;
        *v112 = 30;
        v65(v67, v63, v66);
        MEMORY[0x223D43C40](v61, v62, v67, v60);
        v68 = *(v64 + 8);
        v68(v67, v66);
        v68(v62, v66);
        (*(v109 + 8))(v61, v111);
        v69 = swift_allocObject();
        v70 = v126;
        *(v69 + 16) = v126;
        v135 = sub_21D749C3C;
        v136 = v69;
        aBlock = MEMORY[0x277D85DD0];
        v132 = 1107296256;
        v133 = sub_21D0D74FC;
        v134 = &block_descriptor_161;
        v71 = _Block_copy(&aBlock);
        v72 = v70;
        v73 = v115;
        sub_21DBF9D4C();
        v74 = v117;
        sub_21D748154();
        sub_21DBFB29C();
        _Block_release(v71);
        (*(v119 + 8))(v74, v120);
        (*(v116 + 8))(v73, v118);

        *&v70[v104] = v59;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        sub_21DBFB2BC();
        swift_unknownObjectRelease();
      }

      v75 = sub_21DBF84AC();
      v76 = sub_21DBFAEDC();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_21D0C9000, v75, v76, "accountsEligibleForMigration contains at least one incomplete account. Timer already running.", v77, 2u);
        MEMORY[0x223D46520](v77, -1, -1);
      }

      v52 = v128;
      v51 = v129;
      goto LABEL_62;
    }

LABEL_7:
    v30 &= v30 - 1;
    v33 = sub_21DBFC64C();

    if (v33)
    {
      goto LABEL_53;
    }
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (v34 >= v31)
    {
      break;
    }

    v30 = *(v27 + 64 + 8 * v34);
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_13;
    }
  }

  v46 = sub_21DBF84AC();
  v47 = sub_21DBFAEDC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_21D0C9000, v46, v47, "accountsEligibleForMigration has no accounts .inProgress. Stopping update timer.", v48, 2u);
    MEMORY[0x223D46520](v48, -1, -1);
  }

  v49 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_migrationPollingTimer;
  v50 = v126;
  v52 = v128;
  v51 = v129;
  if (*&v126[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_migrationPollingTimer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_21DBFB2AC();
    swift_unknownObjectRelease();
  }

  *&v50[v49] = 0;
  swift_unknownObjectRelease();
LABEL_62:
  v78 = *&v51[v52];
  v79 = 1 << *(v78 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & *(v78 + 64);
  v82 = (v79 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  a1 = 0xE500000000000000;
  while (2)
  {
    if (!v81)
    {
      while (1)
      {
        v85 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v85 >= v82)
        {
        }

        v81 = *(v78 + 64 + 8 * v85);
        ++v11;
        if (v81)
        {
          v11 = v85;
          goto LABEL_72;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

LABEL_72:
    v86 = __clz(__rbit64(v81)) | (v11 << 6);
    v87 = *(*(v78 + 48) + 8 * v86);
    v88 = *(*(v78 + 56) + v86);
    if (v88 > 3)
    {
      if (v88 != 4)
      {
        if (v88 == 5)
        {
          goto LABEL_65;
        }

        goto LABEL_78;
      }

      v93 = v87;
      v92 = 0xE500000000000000;
      goto LABEL_87;
    }

    if (v88 == 2 || v88 == 3)
    {
LABEL_65:
      v83 = v87;
      goto LABEL_66;
    }

LABEL_78:
    aBlock = 0;
    v132 = 0xE000000000000000;
    v89 = v87;
    sub_21DBFBEEC();

    aBlock = 0xD000000000000024;
    v132 = v127;
    if (v88)
    {
      v90 = 1702195828;
    }

    else
    {
      v90 = 0x65736C6166;
    }

    if (v88)
    {
      v91 = 0xE400000000000000;
    }

    else
    {
      v91 = 0xE500000000000000;
    }

    MEMORY[0x223D42AA0](v90, v91);

    v92 = v132;
    if (aBlock == 0x726F727265)
    {
LABEL_87:
      if (v92 == 0xE500000000000000)
      {

        goto LABEL_91;
      }
    }

LABEL_66:
    v81 &= v81 - 1;
    v84 = sub_21DBFC64C();

    if ((v84 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_91:
  v95 = sub_21DBF84AC();
  v96 = sub_21DBFAEBC();
  v97 = os_log_type_enabled(v95, v96);
  v98 = v126;
  if (v97)
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_21D0C9000, v95, v96, "accountsEligibleForMigration contains at least one account with .error.", v99, 2u);
    MEMORY[0x223D46520](v99, -1, -1);
  }

  aBlock = 0;
  v132 = 0xE000000000000000;
  sub_21DBFBEEC();
  aBlock = ObjectType;
  v100 = sub_21DBFA1AC();
  v102 = v101;

  aBlock = v100;
  v132 = v102;
  MEMORY[0x223D42AA0](0xD000000000000017, 0x800000021DC69FC0);
  v103 = sub_21DBFAEDC();
  MEMORY[0x28223BE20](v103);
  *(&v104 - 2) = v98;
  sub_21DBF625C();
}

uint64_t sub_21D747D58@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = result;
  if (result)
  {
    v7 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v9 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_accountsEligibleForMigration_cached;
    swift_beginAccess();
    v10 = *(a1 + v9);
    v11 = *(v7 + 24);
    sub_21DBF8E0C();
    v11(a1, &protocol witness table for TTRAccountsListsInteractor, v10, ObjectType, v7);

    result = swift_unknownObjectRelease();
  }

  *a2 = v6 == 0;
  return result;
}

uint64_t sub_21D747E58(void *a1)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D749C60;
  *(v7 + 24) = v6;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_170;
  v8 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  v10 = a1;

  sub_21DBF607C();
  v12[1] = v9;
  sub_21D0D8E04(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D0F1C(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v8);
  (*(v3 + 8))(v5, v2);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D748154()
{
  sub_21DBF9D2C();
  sub_21D0D8E04(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  return sub_21DBFBCBC();
}

uint64_t sub_21D748240@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = result;
  if (result)
  {
    v7 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(a1, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v7);
    result = swift_unknownObjectRelease();
  }

  *a2 = v6 == 0;
  return result;
}

uint64_t sub_21D748304@<X0>(uint64_t a1@<X0>, char a2@<W1>, BOOL *a3@<X8>)
{
  v6 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v8 = result;
  if (result)
  {
    v9 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v11 = a2 & 1;
    (*(v9 + 40))(a1, &protocol witness table for TTRAccountsListsInteractor, &v11, ObjectType, v9);
    result = swift_unknownObjectRelease();
  }

  *a3 = v8 == 0;
  return result;
}

void TTRAccountListsMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v40 = a2;
  v42 = a4;
  v39 = a1;
  v4 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21DBF6A2C();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v46 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF687C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = sub_21DBF684C();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C328);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v34 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0);
  sub_21DBFC83C();
  if ((*(v5 + 48))(v20, 1, v4) == 1)
  {
    sub_21D0CF7E0(v20, &qword_27CE5C328);
    v21 = 0;
  }

  else
  {
    v21 = *&v20[*(v4 + 24)];
    v22 = v21;
    sub_21D0D8E4C(v20, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
  }

  v23 = *(v41 + 16);
  v35 = v4;
  if (v42)
  {
    v24 = v23;
  }

  else
  {
    v24 = [v23 nonUserInteractiveStore];
  }

  v25 = v24;
  v26 = *MEMORY[0x277D452B8];
  v27 = *(v9 + 104);
  v27(v14, v26, v8);
  v27(v11, v26, v8);
  sub_21DBF682C();
  sub_21DBF6A3C();
  v28 = v46;
  v29 = v45;
  sub_21DBF681C();
  if (v29)
  {
    (*(v43 + 8))(v17, v44);
  }

  else
  {
    v30 = v37;
    sub_21DBF6A1C();
    v31 = sub_21DBF69FC();
    v32 = sub_21DBF69EC();
    v33 = v35;
    *(v30 + *(v35 + 20)) = v31;
    *(v30 + *(v33 + 24)) = v32;
    sub_21D0D4B04(v30, v39, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
    sub_21DBF6A0C();

    sub_21D0D8E4C(v30, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
    (*(v36 + 8))(v28, v38);
    (*(v43 + 8))(v17, v44);
  }
}

uint64_t TTRAccountListsMonitorableDataView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D748960()
{
  v0 = sub_21DBF9D8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + *(*result + 128));

    v6 = *(v5 + 16);
    *v3 = v6;
    (*(v1 + 104))(v3, *MEMORY[0x277D85200], v0);
    v7 = v6;
    LOBYTE(v6) = sub_21DBF9DAC();
    result = (*(v1 + 8))(v3, v0);
    if (v6)
    {
      if (*(v5 + 104) == 1)
      {
        sub_21D748ADC();
        *(v5 + 104) = 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D748ADC()
{
  v1 = *(v0 + 108);
  if (v1 != -1)
  {
    notify_cancel(v1);
    *(v0 + 108) = -1;
  }

  v2 = *(v0 + 112);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(v0 + 112) = -1;
  }

  if (*(v0 + 120))
  {
    v3 = *(v0 + 120);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v3 >> 62)
  {
    v4 = sub_21DBFBD7C();
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_17:
    sub_21DBF8E0C();
    goto LABEL_18;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_10:
  result = objc_opt_self();
  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  sub_21DBF8E0C();
  v7 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](v7, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    ++v7;
    v9 = [v6 defaultCenter];
    [v9 removeObserver_];
    swift_unknownObjectRelease();
  }

  while (v4 != v7);
LABEL_18:
}

void sub_21D748C54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  TTRAccountEditor.edit(pinnedListOrdering:undoPolicy:)(v1, &v2);
}

void sub_21D748CA4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 9);
  v8 = [a1 store];
  v9 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v10 = [v9 updateAccount_];
  v11 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v12 = *(v11 + 8), ObjectType = swift_getObjectType(), v14 = (*(v12 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v12), swift_unknownObjectRelease(), v14))
  {
    v15 = type metadata accessor for TTRBasicUndoContext();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v17 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v17 = 0;
  }

  type metadata accessor for TTRAccountEditor();
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  *(v18 + 24) = v16;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 48) = v15;
  *(v18 + 56) = v17;
  *(v18 + 64) = 0;
  v19 = v10;
  v20 = [v19 groupContext];
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = v20;
  v45 = v19;
  v22 = [v19 saveRequest];
  v23 = sub_21DBFA12C();
  v24 = [v22 addGroupWithName:v23 toAccountGroupContextChangeItem:v21];

  if (!v7)
  {
    sub_21D749C9C(v5, v6, 0);
    if (v6)
    {
      goto LABEL_11;
    }

    v26 = [v5 parentList];
    if (!v26)
    {
      v26 = v5;
    }

LABEL_18:
    v25 = [v9 updateList_];

    goto LABEL_19;
  }

  if (v7 != 1)
  {
    v25 = (v5 | v6) != 0;
    sub_21D749C9C(v5, v6, 2u);
    goto LABEL_19;
  }

  sub_21D749C9C(v5, v6, 1u);
  if ((v6 & 1) == 0)
  {
    v26 = [v5 parentList];
    if (!v26)
    {
      v26 = v5;
    }

    goto LABEL_18;
  }

LABEL_11:
  v25 = [v9 updateSmartList_];

LABEL_19:
  v27 = v24;
  v46 = v7;
  sub_21D2553BC(v27, v25, v7, v18);

  v44 = v27;
  v28 = [v27 sublistContext];
  if (v28)
  {
    v29 = v28;
    v43 = v25;
    v30 = *(a2 + 16);
    v31 = v9;
    if (v30)
    {
      v32 = (a2 + 16 * v30 + 24);
      do
      {
        --v30;
        v33 = *(v32 - 1);
        v35 = *v32;
        v32 -= 16;
        v34 = v35;
        v36 = v33;
        v37 = &selRef_updateSmartList_;
        if (!v35)
        {
          v37 = &selRef_updateList_;
        }

        if (v34)
        {
          v38 = &selRef_addSmartListChangeItem_;
        }

        else
        {
          v38 = &selRef_addListChangeItem_;
        }

        v39 = [v31 *v37];
        [v29 *v38];
      }

      while (v30);
    }

    v40 = swift_allocObject();
    *(v40 + 16) = v44;
    *(v40 + 24) = a2;
    v44;
    sub_21DBF8E0C();
    sub_21D182F80(sub_21D749D24, v40);

    sub_21D749CB0(v43, v46);

    return;
  }

  __break(1u);
LABEL_30:
  if (qword_27CE565D8 != -1)
  {
    swift_once();
  }

  v41 = sub_21DBF84BC();
  __swift_project_value_buffer(v41, qword_27CE5A308);
  v42 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v42);
  sub_21DAEAB00("Tried to add group on account that doesn't support groups", 57, 2);
  __break(1u);
}

void sub_21D749280(void *a1)
{
  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_280D0F300);
  v4 = a1;
  v5 = v1;
  oslog = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136315394;
    swift_getErrorValue();
    v10 = sub_21DBFC74C();
    v12 = sub_21D0CDFB4(v10, v11, &v15);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v5;
    *v8 = v5;
    v13 = v5;
    _os_log_impl(&dword_21D0C9000, oslog, v6, "TTRAccountListsMonitorableDataView did hit error {error: %s, interactor: %@}", v7, 0x16u);
    sub_21D0CF7E0(v8, &unk_27CE60070);
    MEMORY[0x223D46520](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.move(remindersWithIDs:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 48))();
}

{
  return (*(a4 + 56))();
}

uint64_t dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setSortingStyle(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 88))();
}

{
  return (*(a4 + 104))();
}

uint64_t dispatch thunk of TTRAccountsListsInteractorType.changeItem(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 104))();
}

{
  return (*(a3 + 112))();
}

{
  return (*(a3 + 120))();
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRAccountListsMonitorableDataView.Data(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF69DC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    sub_21DBF8E0C();
    v10 = v9;
  }

  return a1;
}

uint64_t assignWithCopy for TTRAccountListsMonitorableDataView.Data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF69DC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_21DBF8E0C();

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = v9;

  return a1;
}

uint64_t initializeWithTake for TTRAccountListsMonitorableDataView.Data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF69DC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

id sub_21D749C9C(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_21D749CB0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D749EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_21D749F50(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF680C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    sub_21DBF8E0C();
  }

  return a1;
}

char *sub_21D74A0D0(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF680C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  sub_21DBF8E0C();

  return a1;
}

char *sub_21D74A274(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF680C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *sub_21D74A3A4(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF680C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t sub_21D74A6D8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60F60);
  v1 = __swift_project_value_buffer(v0, qword_27CE60F60);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRICollectionViewDropCommitCoordinator.DropItem.dragItemUserInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v5 = sub_21DBFBA8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21D74A834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a1;
  v9 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.DropItem();
  v10 = *(v9 + 36);
  type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v11 = sub_21DBFBA8C();
  result = (*(*(v11 - 8) + 32))(&a3[v10], a2, v11);
  v13 = &a3[*(v9 + 40)];
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t TTRICollectionViewDropCommitCoordinator.LocalDropItem.dragItemUserInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TTRICollectionViewDropCommitCoordinator.LocalDropItem.sourceItemID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v7 = *(*(v5 - 8) + 16);
  v8 = v4 + *(v6 + 32);

  return v7(a2, v8, v5);
}

uint64_t sub_21D74A9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem() + 36);
  v6 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t TTRICollectionViewDropCommitCoordinator.items.getter()
{
  v1 = [*(v0 + qword_27CE60F78) items];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60FE0);
  sub_21DBFA5EC();

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60FE8);
  v3 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.DropItem();
  v4 = sub_21D74B058();
  v6 = sub_21D0E5014(sub_21D74B020, v0, v2, v3, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v5);

  return v6;
}

uint64_t sub_21D74ABB4@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v47 = a3;
  v45 = *a2;
  v39 = a2;
  v4 = *(v45 + 80);
  v5 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = &v36 - v7;
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v19 = *a1;
  v20 = *(v6 + 56);
  v42 = &v36 - v21;
  v38 = v20;
  v20(v18);
  v41 = v19;
  v22 = [v19 dragItem];
  v46 = v4;
  v48 = static TTRICollectionViewDragItemUserInfo.dragItemLocalObjectKey.getter();
  v49 = v23;
  sub_21DBFBE2C();
  UIDragItem.localObject<A>(ofType:forKey:)(v50, v5, v16);

  sub_21D181D3C(v50);
  v40 = *(v9 + 16);
  v40(v13, v16, v8);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    (*(v9 + 8))(v13, v8);
LABEL_6:
    v26 = v42;
    goto LABEL_7;
  }

  v37 = v16;
  v24 = v13;
  v25 = *(v6 + 32);
  v25(v43, v24, v5);
  if ((_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    (*(v6 + 8))(v43, v5);
    v16 = v37;
    goto LABEL_6;
  }

  v26 = v42;
  (*(v9 + 8))(v42, v8);
  v25(v26, v43, v5);
  (v38)(v26, 0, 1, v5);
  v16 = v37;
LABEL_7:
  v27 = v41;
  v28 = [v41 dragItem];
  v29 = v44;
  v40(v44, v26, v8);
  [v27 previewSize];
  v31 = v30;
  v33 = v32;
  v34 = *(v9 + 8);
  v34(v16, v8);
  v34(v26, v8);
  return sub_21D74A834(v28, v29, v47, v31, v33);
}

unint64_t sub_21D74B058()
{
  result = qword_27CE60FF0;
  if (!qword_27CE60FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE60FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE60FF0);
  }

  return result;
}

uint64_t TTRICollectionViewDropCommitCoordinator.localDropItems.getter()
{
  TTRICollectionViewDropCommitCoordinator.items.getter();
  type metadata accessor for TTRICollectionViewDropCommitCoordinator.DropItem();
  sub_21DBFA74C();
  type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem();
  swift_getWitnessTable();
  v0 = sub_21DBFA4EC();

  return v0;
}

id sub_21D74B1B8@<X0>(void **a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v25 = a1;
  v27 = a3;
  v4 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v26 = a2;
  v16 = v25;
  v17 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.DropItem();
  (*(v6 + 16))(v8, v16 + *(v17 + 36), v5);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v18 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem();
    return (*(*(v18 - 8) + 56))(v27, 1, 1, v18);
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v15, v8, v4);
    v21 = *v16;
    v20(v12, v15, v4);
    v22 = v27;
    sub_21D74A9F4(v21, v12, v27);
    v23 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem();
    (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
    return v21;
  }
}

uint64_t TTRICollectionViewDropCommitCoordinator.sourceItemIDs.getter()
{
  v1 = *v0;
  v10 = TTRICollectionViewDropCommitCoordinator.localDropItems.getter();
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem();
  v2 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_21D0E5014(sub_21D74B5B4, &v7, v2, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);

  return v5;
}

uint64_t sub_21D74B5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem();
  v5 = a1 + *(v4 + 36);
  v6 = *(v4 + 16);
  v7 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  return (*(*(v6 - 8) + 16))(a2, v5 + *(v7 + 32), v6);
}

id TTRICollectionViewDropCommitCoordinator.session.getter()
{
  v1 = [*(v0 + qword_27CE60F78) session];

  return v1;
}

id TTRICollectionViewDropCommitCoordinator.proposal.getter()
{
  v1 = [*(v0 + qword_27CE60F78) proposal];

  return v1;
}

uint64_t TTRICollectionViewDropCommitCoordinator.destination.getter@<X0>(char *a1@<X8>, __n128 a2@<Q1>)
{
  v146 = a1;
  v3 = *v2;
  v4 = (*v2)[5];
  v148 = vdupq_lane_s64(v4.i64[0], 0);
  v144 = v4;
  v145 = a2;
  v147 = vdupq_laneq_s64(v4, 1);
  *v149 = v148;
  *&v149[16] = v147;
  v5 = type metadata accessor for TTRNormalizedItemLocation();
  v124 = sub_21DBFBA8C();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v130 = &v118 - v6;
  v131 = v5;
  v129 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v122 = &v118 - v8;
  v142 = sub_21DBF5D5C();
  v143 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v120 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  *&v128 = &v118 - v11;
  MEMORY[0x28223BE20](v12);
  v138 = &v118 - v13;
  *v149 = v148;
  *&v149[16] = v147;
  v14 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  v127 = sub_21DBFBA8C();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v119 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v137 = &v118 - v17;
  v140 = v14;
  v139 = *(v14 - 8);
  MEMORY[0x28223BE20](v18);
  v118 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v125 = &v118 - v21;
  v133 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v133);
  v135 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v23 - 8);
  v132 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v121 = &v118 - v26;
  MEMORY[0x28223BE20](v27);
  v141 = &v118 - v28;
  MEMORY[0x28223BE20](v29);
  v136 = &v118 - v30;
  v31 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v31 - 8);
  v134 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v149 = v148;
  *&v149[16] = v147;
  v36 = type metadata accessor for TTRICollectionViewDropProposal();
  v37 = sub_21DBFBA8C();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v118 - v39;
  v41 = *(v36 - 8);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v118 - v44;
  v46 = v3[7].i64[1];
  v47 = v2;
  (*(v38 + 16))(v40, v2 + v46, v37, v43);
  if ((*(*&v41 + 48))(v40, 1, v36) == 1)
  {
    (*(v38 + 8))(v40, v37);
    v150.val[0] = v144;
    v150.val[1] = v144;
    v48 = v149;
    vst2q_f64(v48, v150);
    type metadata accessor for TTRTreeViewDropDestination();
    return swift_storeEnumTagMultiPayload();
  }

  v49 = v146;
  v50 = v144;
  v144.f64[0] = v41;
  v51 = v40;
  v52 = v50.f64[1];
  (*(*&v41 + 32))(v45, v51, v36);
  *v149 = *v45;
  *&v149[8] = *(v45 + 8);
  v148.i64[0] = *&v50.f64[0];
  v53 = type metadata accessor for TTRICollectionViewDragItemSources();
  v54 = sub_21D76AAEC();
  v147.i64[0] = v36;
  sub_21D74EB48(&v45[*(v36 + 56)], v35, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v128 = v50.f64[1];
    v79 = v35;
    v80 = v134;
    sub_21D74EAE0(v79, v134, type metadata accessor for TTRAdjustedIndexPath);
    v81 = *(v45 + 1);
    v82 = *(v45 + 2);
    *v149 = *v45;
    *&v149[8] = v81;
    *&v149[16] = v82;
    v83 = v135;
    sub_21D74EB48(v80, v135, type metadata accessor for TTRAdjustedIndexPath);
    swift_storeEnumTagMultiPayload();
    swift_unknownObjectRetain();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v84 = v136;
    sub_21D76ABB8(v83, v53, v136);
    sub_21D74EBB0(v83, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);

    swift_unknownObjectRelease();
    v85 = *(v2 + qword_27CE60FF8 + 8);
    ObjectType = swift_getObjectType();
    v87 = v137;
    (*(v85 + 72))(v84, v54, ObjectType, v85);

    sub_21D74EBB0(v84, type metadata accessor for TTRUnadjustedIndexPath);
    sub_21D74EBB0(v80, type metadata accessor for TTRAdjustedIndexPath);
    (*(*&v144.f64[0] + 8))(v45, v147.i64[0]);
    v88 = v139;
    v89 = v140;
    if ((*(v139 + 48))(v87, 1, v140) != 1)
    {
      v104 = *(v88 + 32);
      v105 = v125;
      v104(v125, v87, v89);
      v104(v49, v105, v89);
      *v149 = v148.i64[0];
      *&v149[8] = v148.i64[0];
      *&v149[16] = v128;
      *&v149[24] = v128;
      type metadata accessor for TTRTreeViewDropDestination();
      return swift_storeEnumTagMultiPayload();
    }

    (*(v126 + 8))(v87, v127);
    *v149 = v148.i64[0];
    *&v149[8] = v148.i64[0];
    *&v149[16] = v128;
    *&v149[24] = v128;
LABEL_24:
    type metadata accessor for TTRTreeViewDropDestination();
    return swift_storeEnumTagMultiPayload();
  }

  v136 = v54;
  v137 = v45;
  if (EnumCaseMultiPayload != 1)
  {
    v90 = [(int64x2_t *)*(v2 + qword_27CE60F78) proposal];
    v91 = [v90 operation];

    v92 = v143;
    v93 = v144.f64[0];
    if (v91 < 2 || v91 == 3)
    {

      (*(*&v93 + 8))(v137, v147.i64[0]);
    }

    else
    {
      v94 = v147.i64[0];
      if (v91 == 2 && (v95 = [(int64x2_t *)*(v47 + qword_27CE60F78) destinationIndexPath]) != 0)
      {
        v128 = v50.f64[1];
        v96 = v120;
        v97 = v95;
        sub_21DBF5CAC();

        v98 = *(v47 + qword_27CE60FF8 + 8);
        v141 = swift_getObjectType();
        v99 = v132;
        v100 = v142;
        (*(v92 + 16))(v132, v96, v142);
        v101 = v119;
        (*(v98 + 72))(v99, v136, v141, v98);

        sub_21D74EBB0(v99, type metadata accessor for TTRUnadjustedIndexPath);
        (*(v92 + 8))(v96, v100);
        (*(*&v93 + 8))(v137, v94);
        v102 = v139;
        v103 = v140;
        if ((*(v139 + 48))(v101, 1, v140) != 1)
        {
          v116 = *(v102 + 32);
          v117 = v118;
          v116(v118, v101, v103);
          v116(v146, v117, v103);
          *v149 = v148.i64[0];
          *&v149[8] = v148.i64[0];
          *&v149[16] = v128;
          *&v149[24] = v128;
          type metadata accessor for TTRTreeViewDropDestination();
          return swift_storeEnumTagMultiPayload();
        }

        (*(v126 + 8))(v101, v127);
        v52 = v128;
      }

      else
      {

        (*(*&v93 + 8))(v137, v94);
      }
    }

    goto LABEL_23;
  }

  v56 = v141;
  sub_21D74EAE0(v35, v141, type metadata accessor for TTRUnadjustedIndexPath);
  v57 = v2;
  v58 = [(int64x2_t *)*(v2 + qword_27CE60F78) destinationIndexPath];
  v59 = v143;
  if (!v58)
  {
    sub_21D74EBB0(v56, type metadata accessor for TTRUnadjustedIndexPath);

    (*(*&v144.f64[0] + 8))(v137, v147.i64[0]);
LABEL_23:
    *v149 = v148.i64[0];
    *&v149[8] = v148.i64[0];
    *&v149[16] = v52;
    *&v149[24] = v52;
    goto LABEL_24;
  }

  v60 = *&v128;
  v61 = v58;
  sub_21DBF5CAC();

  v62 = v138;
  v63 = v142;
  (*(v59 + 32))(v138, v60, v142);
  sub_21D23894C(&qword_280D17150);
  if ((sub_21DBFA10C() & 1) == 0)
  {
    if (qword_27CE56C78 != -1)
    {
      swift_once();
    }

    v64 = sub_21DBF84BC();
    __swift_project_value_buffer(v64, qword_27CE60F60);
    v65 = v121;
    sub_21D74EB48(v56, v121, type metadata accessor for TTRUnadjustedIndexPath);
    v66 = sub_21DBF84AC();
    v67 = sub_21DBFAEBC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v149 = v69;
      *v68 = 136315394;
      swift_beginAccess();
      sub_21D23894C(&qword_27CE59FD0);
      v128 = v50.f64[1];
      LODWORD(v140) = v67;
      v70 = sub_21DBFC5BC();
      v72 = sub_21D0CDFB4(v70, v71, v149);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2080;
      v73 = sub_21DBFC5BC();
      v75 = v74;
      sub_21D74EBB0(v65, type metadata accessor for TTRUnadjustedIndexPath);
      v76 = sub_21D0CDFB4(v73, v75, v149);
      v52 = v128;

      *(v68 + 14) = v76;
      _os_log_impl(&dword_21D0C9000, v66, v140, "TTRICollectionViewDropCommitCoordinator: unexpected dropCoordinator.destinationIndexPath {given: %s, expected: %s}", v68, 0x16u);
      swift_arrayDestroy();
      v77 = v69;
      v62 = v138;
      v57 = v47;
      MEMORY[0x223D46520](v77, -1, -1);
      v78 = v68;
      v56 = v141;
      MEMORY[0x223D46520](v78, -1, -1);
    }

    else
    {

      sub_21D74EBB0(v65, type metadata accessor for TTRUnadjustedIndexPath);
    }

    swift_beginAccess();
    (*(v59 + 24))(v62, v56, v63);
  }

  v107 = *(v57 + qword_27CE60FF8 + 8);
  v108 = v56;
  v109 = swift_getObjectType();
  swift_beginAccess();
  v110 = v132;
  (*(v59 + 16))(v132, v62, v63);
  v111 = v130;
  (*(v107 + 64))(v110, v136, v109, v107);

  sub_21D74EBB0(v110, type metadata accessor for TTRUnadjustedIndexPath);
  sub_21D74EBB0(v108, type metadata accessor for TTRUnadjustedIndexPath);
  (*(*&v144.f64[0] + 8))(v137, v147.i64[0]);
  v112 = v129;
  v113 = v131;
  if ((*(v129 + 48))(v111, 1, v131) == 1)
  {
    (*(v123 + 8))(v111, v124);
  }

  else
  {
    v114 = *(v112 + 32);
    v115 = v122;
    v114(v122, v111, v113);
    v114(v146, v115, v113);
  }

  *v149 = v148.i64[0];
  *&v149[8] = v148.i64[0];
  *&v149[16] = v52;
  *&v149[24] = v52;
  type metadata accessor for TTRTreeViewDropDestination();
  swift_storeEnumTagMultiPayload();
  return (*(v59 + 8))(v62, v142);
}

uint64_t TTRICollectionViewDropCommitCoordinator.__allocating_init(dropCoordinator:dragAndDropCoordinatorID:dragAndDropProvider:lastDropProposal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  TTRICollectionViewDropCommitCoordinator.init(dropCoordinator:dragAndDropCoordinatorID:dragAndDropProvider:lastDropProposal:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *TTRICollectionViewDropCommitCoordinator.init(dropCoordinator:dragAndDropCoordinatorID:dragAndDropProvider:lastDropProposal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  *(v5 + qword_27CE60F78) = a1;
  v11 = qword_27CE61000;
  v12 = sub_21DBF56BC();
  (*(*(v12 - 8) + 32))(v5 + v11, a2, v12);
  v13 = (v5 + qword_27CE60FF8);
  *v13 = a3;
  v13[1] = a4;
  v14 = *(*v5 + 120);
  v19.val[0] = *(v10 + 80);
  v19.val[1] = v19.val[0];
  v15 = &v18;
  vst2q_f64(v15, v19);
  type metadata accessor for TTRICollectionViewDropProposal();
  v16 = sub_21DBFBA8C();
  (*(*(v16 - 8) + 32))(v5 + v14, a5, v16);
  return v5;
}

void TTRICollectionViewDropCommitCoordinator.drop(_:toItem:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v4 = *(*v2 + 80);
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_21DBF5D5C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + qword_27CE60FF8 + 8);
  ObjectType = swift_getObjectType();
  (*(v16 + 32))(a2, ObjectType, v16);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D31DD48(v11);
    if (qword_27CE56C78 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE60F60);
    v19 = v34;
    v20 = *(v34 + 16);
    v20(v8, a2, v4);
    v21 = sub_21DBF84AC();
    v22 = sub_21DBFAEBC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315138;
      v20(v32, v8, v4);
      v25 = sub_21DBFA1AC();
      v27 = v26;
      (*(v19 + 8))(v8, v4);
      v28 = sub_21D0CDFB4(v25, v27, &v35);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_21D0C9000, v21, v22, "TTRICollectionViewDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v8, v4);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v29 = *(v2 + qword_27CE60F78);
    v30 = sub_21DBF5C6C();
    v31 = [v29 dropItem:v33 toItemAtIndexPath:v30];
    swift_unknownObjectRelease();

    (*(v13 + 8))(v15, v12);
  }
}

void TTRICollectionViewDropCommitCoordinator.drop(_:intoItem:rect:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v41 = a1;
  v12 = *(*v6 + 80);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v40 - v18;
  v20 = sub_21DBF5D5C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v6 + qword_27CE60FF8 + 8);
  ObjectType = swift_getObjectType();
  (*(v24 + 32))(a2, ObjectType, v24);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_21D31DD48(v19);
    if (qword_27CE56C78 != -1)
    {
      swift_once();
    }

    v26 = sub_21DBF84BC();
    __swift_project_value_buffer(v26, qword_27CE60F60);
    v27 = v42;
    v28 = *(v42 + 16);
    v28(v16, a2, v12);
    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAEBC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43 = v32;
      *v31 = 136315138;
      v28(v40, v16, v12);
      v33 = sub_21DBFA1AC();
      v35 = v34;
      (*(v27 + 8))(v16, v12);
      v36 = sub_21D0CDFB4(v33, v35, &v43);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_21D0C9000, v29, v30, "TTRICollectionViewDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x223D46520](v32, -1, -1);
      MEMORY[0x223D46520](v31, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v16, v12);
    }
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    v37 = *(v6 + qword_27CE60F78);
    v38 = sub_21DBF5C6C();
    v39 = [v37 dropItem:v41 intoItemAtIndexPath:v38 rect:{a3, a4, a5, a6}];
    swift_unknownObjectRelease();

    (*(v21 + 8))(v23, v20);
  }
}

Swift::Void __swiftcall TTRICollectionViewDropCommitCoordinator.drop(_:to:)(UIDragItem _, UIDragPreviewTarget to)
{
  v3 = [*(v2 + qword_27CE60F78) dropItem:_.super.isa toTarget:to.super.super.isa];

  swift_unknownObjectRelease();
}

void TTRICollectionViewDropCommitCoordinator.drop(_:intoCenterOfItem:)(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = *(*v2 + 80);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_21DBF5D5C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + qword_27CE60FF8 + 8);
  ObjectType = swift_getObjectType();
  (*(v16 + 32))(a2, ObjectType, v16);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D31DD48(v11);
    if (qword_27CE56C78 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE60F60);
    v19 = v31;
    v20 = *(v31 + 16);
    v20(v8, a2, v4);
    v21 = sub_21DBF84AC();
    v22 = sub_21DBFAEBC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      v20(v29, v8, v4);
      v25 = sub_21DBFA1AC();
      v27 = v26;
      (*(v19 + 8))(v8, v4);
      v28 = sub_21D0CDFB4(v25, v27, &v32);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_21D0C9000, v21, v22, "TTRICollectionViewDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v8, v4);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_21D74D844(v30, v15);
    (*(v13 + 8))(v15, v12);
  }
}

void sub_21D74D844(uint64_t a1, uint64_t a2)
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + qword_27CE60FF8 + 8);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 48))(a2, ObjectType, v9);
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = *(v2 + qword_27CE60F78);
    v34 = sub_21DBF5C6C();
    v37.origin.x = v14;
    v37.origin.y = v16;
    v37.size.width = v18;
    v37.size.height = v20;
    MidX = CGRectGetMidX(v37);
    v38.origin.x = v14;
    v38.origin.y = v16;
    v38.size.width = v18;
    v38.size.height = v20;
    v23 = [v21 dropItem:a1 intoItemAtIndexPath:v34 rect:{MidX, CGRectGetMidY(v38), 0.0, 0.0}];
    swift_unknownObjectRelease();
    v24 = v34;
  }

  else
  {
    if (qword_27CE56C78 != -1)
    {
      swift_once();
    }

    v25 = sub_21DBF84BC();
    __swift_project_value_buffer(v25, qword_27CE60F60);
    (*(v6 + 16))(v8, a2, v5);
    v26 = sub_21DBF84AC();
    v27 = sub_21DBFAEBC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      sub_21D23894C(&qword_27CE59FD0);
      v30 = sub_21DBFC5BC();
      v32 = v31;
      (*(v6 + 8))(v8, v5);
      v33 = sub_21D0CDFB4(v30, v32, &v35);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_21D0C9000, v26, v27, "TTRICollectionViewDropCommitCoordinator: layout attributes for the item doesn't exist. {indexPath: %s}", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223D46520](v29, -1, -1);
      MEMORY[0x223D46520](v28, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }
}

void TTRICollectionViewDropCommitCoordinator.drop(_:toItem:orIntoCenterOfItem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a1;
  v48 = *(*v3 + 80);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](a1);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = sub_21DBF5D5C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v45 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v44 - v17;
  v52 = v3;
  v18 = *(v3 + qword_27CE60FF8 + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 32);
  v20(a2, ObjectType, v18);
  v21 = *(v14 + 48);
  v54 = v13;
  if (v21(v12, 1, v13) == 1)
  {
    sub_21D31DD48(v12);
    v22 = v53;
    v23 = v50;
    v20(v50, ObjectType, v18);
    v24 = v54;
    if (v21(v22, 1, v54) == 1)
    {
      sub_21D31DD48(v53);
      if (qword_27CE56C78 != -1)
      {
        swift_once();
      }

      v25 = sub_21DBF84BC();
      __swift_project_value_buffer(v25, qword_27CE60F60);
      v27 = v46;
      v26 = v47;
      v28 = *(v47 + 16);
      v29 = v48;
      v28(v46, v23, v48);
      v30 = sub_21DBF84AC();
      v31 = sub_21DBFAEBC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v55 = v33;
        *v32 = 136315138;
        v28(v44, v27, v29);
        v34 = sub_21DBFA1AC();
        v36 = v35;
        (*(v26 + 8))(v27, v29);
        v37 = sub_21D0CDFB4(v34, v36, &v55);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_21D0C9000, v30, v31, "TTRICollectionViewDropCommitCoordinator: row for the fallbackItemID doesn't exist. {itemID: %s}", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x223D46520](v33, -1, -1);
        MEMORY[0x223D46520](v32, -1, -1);
      }

      else
      {

        (*(v26 + 8))(v27, v29);
      }
    }

    else
    {
      v43 = v45;
      (*(v14 + 32))(v45, v53, v24);
      sub_21D74D844(v51, v43);
      (*(v14 + 8))(v43, v24);
    }
  }

  else
  {
    v38 = v49;
    v39 = v54;
    (*(v14 + 32))(v49, v12, v54);
    v40 = *(v52 + qword_27CE60F78);
    v41 = sub_21DBF5C6C();
    v42 = [v40 dropItem:v51 toItemAtIndexPath:v41];
    swift_unknownObjectRelease();

    (*(v14 + 8))(v38, v39);
  }
}

uint64_t *TTRICollectionViewDropCommitCoordinator.deinit()
{
  v1 = *v0;
  v2 = qword_27CE61000;
  v3 = sub_21DBF56BC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = *(*v0 + 120);
  v9.val[0] = *(v1 + 80);
  v9.val[1] = v9.val[0];
  v5 = &v8;
  vst2q_f64(v5, v9);
  type metadata accessor for TTRICollectionViewDropProposal();
  v6 = sub_21DBFBA8C();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  return v0;
}

uint64_t TTRICollectionViewDropCommitCoordinator.__deallocating_deinit()
{
  TTRICollectionViewDropCommitCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRICollectionViewDropCommitCoordinator.draggedItemsForCommitting<A>(transformItemID:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a1;
  v74 = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v68 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v72 = &v54 - v9;
  v65 = sub_21DBFBA8C();
  v57 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v11 = &v54 - v10;
  v66 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = &v54 - v15;
  v16 = *(v7 + 88);
  v76 = v8;
  v77 = v16;
  v17 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem();
  v75 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v62 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v56 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  v80 = TTRICollectionViewDropCommitCoordinator.localDropItems.getter();
  v81 = v80;
  v26 = sub_21DBFA74C();
  swift_getWitnessTable();
  v27 = sub_21DBFACFC();
  if (v27)
  {

    v80 = TTRICollectionViewDropCommitCoordinator.items.getter();
    MEMORY[0x28223BE20](v80);
    v28 = v77;
    *(&v54 - 4) = v76;
    *(&v54 - 3) = a3;
    *(&v54 - 2) = v28;
    type metadata accessor for TTRICollectionViewDropCommitCoordinator.DropItem();
    v29 = sub_21DBFA74C();
    v30 = sub_21D74EC8C();
    WitnessTable = swift_getWitnessTable();
    v33 = sub_21D0E5014(sub_21D1574EC, (&v54 - 6), v29, v30, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v32);

    *a4 = v33;
    *(a4 + 8) = 0;
    *(a4 + 16) = 1;
    return result;
  }

  v55 = a4;
  MEMORY[0x28223BE20](v27);
  v35 = v77;
  *(&v54 - 4) = v76;
  *(&v54 - 3) = a3;
  *(&v54 - 2) = v35;
  swift_getWitnessTable();
  swift_getWitnessTable();
  v61 = v26;
  sub_21DBFA0EC();
  v80 = sub_21DBF9E3C();
  v79 = sub_21DBF9E3C();
  v36 = v81;
  if (sub_21DBFA6DC())
  {
    v37 = 0;
    v77 = (v75 + 16);
    ++v68;
    v69 = (v75 + 32);
    v67 = (v66 + 6);
    v60 = (v66 + 4);
    v59 = (v66 + 2);
    v58 = v66 + 1;
    v66 = (v75 + 8);
    ++v57;
    v70 = v36;
    v71 = v25;
    do
    {
      v39 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v39)
      {
        v40 = *(v75 + 16);
        v40(v25, (v36 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v37), v17);
        v41 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_21DBFBF7C();
        if (v56 != 8)
        {
          __break(1u);
          return result;
        }

        v78 = result;
        v40 = *v77;
        (*v77)(v25, &v78, v17);
        swift_unknownObjectRelease();
        v41 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      (*v69)(v21, v25, v17);
      v42 = v21;
      v43 = v11;
      v44 = a3;
      v45 = &v42[*(v17 + 36)];
      v46 = *(v17 + 16);
      v47 = &v45[*(type metadata accessor for TTRICollectionViewDragItemUserInfo() + 32)];
      a3 = v44;
      v48 = v76;
      v49 = v72;
      (*(*(v46 - 8) + 16))(v72, v47, v46);
      v73(v49);
      v50 = v49;
      v11 = v43;
      (*v68)(v50, v48);
      if ((*v67)(v43, 1, a3) == 1)
      {
        (*v66)(v42, v17);
        (*v57)(v43, v65);
      }

      else
      {
        v51 = v63;
        (*v60)(v63, v43, a3);
        (*v59)(v64, v51, a3);
        sub_21DBFA74C();
        sub_21DBFA6FC();
        v40(v62, v42, v17);
        sub_21DBFA6FC();
        (*v58)(v51, a3);
        (*v66)(v42, v17);
      }

      v21 = v42;
      v36 = v70;
      v38 = sub_21DBFA6DC();
      ++v37;
      v25 = v71;
    }

    while (v41 != v38);
  }

  v52 = v80;
  v53 = v55;
  *v55 = v79;
  v53[1] = v52;
  *(v53 + 16) = 0;
  return result;
}

uint64_t sub_21D74EAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D74EB48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D74EBB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D74EC10()
{
  type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem();
  type metadata accessor for TTRICollectionViewDragItemUserInfo();
  return sub_21DBF5C8C() & 1;
}

unint64_t sub_21D74EC8C()
{
  result = qword_27CE61010[0];
  if (!qword_27CE61010[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CE61010);
  }

  return result;
}

uint64_t sub_21D74ECD8(uint64_t a1)
{
  result = sub_21DBF56BC();
  if (v3 <= 0x3F)
  {
    v6[4] = *(result - 8) + 64;
    v6[5] = "\b";
    v6[6] = &unk_21DC26880;
    v7.val[0] = *(a1 + 80);
    v7.val[1] = v7.val[0];
    v4 = v6;
    vst2q_f64(v4, v7);
    type metadata accessor for TTRICollectionViewDropProposal();
    result = sub_21DBFBA8C();
    if (v5 <= 0x3F)
    {
      v6[7] = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21D74EE1C()
{
  type metadata accessor for TTRICollectionViewDragItemUserInfo();
  result = sub_21DBFBA8C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **sub_21D74EED0(void **a1, void **a2, uint64_t a3)
{
  v50 = sub_21DBF56BC();
  v6 = *(v50 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 80) | v8;
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v14 + 80);
  v18 = v12 | *(v14 + 80);
  v19 = (v12 | *(v14 + 80));
  v20 = *(v6 + 84);
  v21 = *(v10 + 84);
  if (v21 <= v20)
  {
    v22 = *(v6 + 84);
  }

  else
  {
    v22 = *(v10 + 84);
  }

  if (v16 > v22)
  {
    v22 = *(v14 + 84);
  }

  if (v22 <= 0xFE)
  {
    v23 = 254;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v6 + 64) + v11;
  v51 = *(*(v9 - 8) + 64) + v17;
  v25 = *(v14 + 64);
  v26 = v25 + ((v51 + (v24 & ~v11)) & ~v17) + 1;
  v27 = *a2;
  *a1 = *a2;
  if (v19 <= 7 && (v18 & 0x100000) == 0 && ((v26 + ((v19 + 8) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18)
  {
    v45 = v9;
    v46 = v7;
    v42 = v25;
    v43 = v13;
    v44 = v10;
    v31 = ~v11;
    v47 = ~v17;
    __dst = ((a1 + v19 + 8) & ~v19);
    v49 = a1;
    v32 = ((a2 + v19 + 8) & ~v19);
    v33 = v27;
    if (v20 == v23)
    {
      v34 = v31;
      v35 = (*(v46 + 48))(v32, v20, v50);
    }

    else
    {
      v34 = v31;
      v36 = (v32 + v24) & v31;
      if (v21 == v23)
      {
        v35 = (*(v44 + 48))((v32 + v24) & v31, v21, v45);
      }

      else
      {
        v37 = (v51 + v36) & v47;
        if (v16 != v23)
        {
          v30 = v49;
          if (*(v37 + v42) >= 2u)
          {
            goto LABEL_25;
          }

          goto LABEL_27;
        }

        v35 = (*(v15 + 48))((v51 + v36) & v47, v16, v43);
      }
    }

    v30 = v49;
    if (v35)
    {
LABEL_25:
      v38 = __dst;
      memcpy(__dst, v32, v26);
LABEL_28:
      *((v38 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v32 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
      return v30;
    }

    v31 = v34;
    v36 = (v32 + v24) & v34;
    v37 = (v51 + v36) & v47;
LABEL_27:
    v38 = __dst;
    (*(v46 + 16))(__dst, v32, v50);
    v39 = (__dst + v24) & v31;
    (*(v44 + 16))(v39, v36, v45);
    v40 = (v51 + v39) & v47;
    (*(v15 + 16))(v40, v37, v43);
    *(v40 + v42) = *(v37 + v42);
    goto LABEL_28;
  }

  v30 = &v27[(v19 & 0xF8 ^ 0x1F8) & (v19 + 16)];

  return v30;
}

uint64_t sub_21D74F278(id *a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  result = sub_21DBF5D5C();
  v9 = *(result - 8);
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = (*(v9 + 80) | v7 | *(v11 + 80));
  v15 = *(v9 + 80);
  v16 = *(v11 + 80);
  v17 = (a1 + v14 + 8) & ~v14;
  v18 = *(v5 + 84);
  v19 = *(v9 + 84);
  if (v19 <= v18)
  {
    v20 = *(v5 + 84);
  }

  else
  {
    v20 = *(v9 + 84);
  }

  if (v13 > v20)
  {
    v20 = *(v11 + 84);
  }

  v21 = *(v5 + 64);
  v33 = *(*(result - 8) + 64);
  v22 = *(v11 + 64);
  if (v20 <= 0xFE)
  {
    v23 = 254;
  }

  else
  {
    v23 = v20;
  }

  v24 = ~v15;
  v25 = ~v16;
  v31 = result;
  v32 = v4;
  v29 = v12;
  v30 = v10;
  if (v18 == v23)
  {
    result = (*(v5 + 48))(v17, v18, v4);
  }

  else
  {
    v26 = (v21 + v15 + v17) & v24;
    if (v19 == v23)
    {
      result = (*(v9 + 48))((v21 + v15 + v17) & v24, v19, result);
      if (result)
      {
        return result;
      }

      goto LABEL_15;
    }

    v27 = (v33 + v16 + v26) & v25;
    if (v13 != v23)
    {
      if (*(v27 + v22) >= 2u)
      {
        return result;
      }

      goto LABEL_16;
    }

    result = (*(v12 + 48))((v33 + v16 + v26) & v25, v13, v10);
  }

  if (result)
  {
    return result;
  }

LABEL_15:
  v26 = (v21 + v15 + v17) & v24;
  v27 = (v33 + v16 + v26) & v25;
LABEL_16:
  (*(v6 + 8))(v17, v32);
  (*(v9 + 8))(v26, v31);
  v28 = *(v29 + 8);

  return v28(v27, v30);
}

void **sub_21D74F540(void **a1, void **a2, uint64_t a3)
{
  v42 = *a2;
  *a1 = *a2;
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v40 = sub_21DBF5D5C();
  v10 = *(v40 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 80) | v9;
  v38 = *(a3 + 16);
  v39 = v10;
  v13 = *(v38 - 8);
  v14 = *(v13 + 84);
  v37 = v13;
  v15 = *(v13 + 80);
  v16 = (v12 | *(v13 + 80));
  __dst = ((a1 + v16 + 8) & ~v16);
  v45 = a1;
  v17 = ((a2 + v16 + 8) & ~v16);
  v18 = *(v7 + 84);
  v19 = *(v10 + 84);
  if (v19 <= v18)
  {
    v20 = *(v7 + 84);
  }

  else
  {
    v20 = *(v10 + 84);
  }

  if (v14 > v20)
  {
    v20 = *(v13 + 84);
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  v22 = ~v11;
  v23 = *(v7 + 64) + v11;
  v24 = *(*(v40 - 8) + 64);
  v41 = ~v15;
  v25 = v24 + v15;
  v36 = *(*(v38 - 8) + 64);
  __n = v36 + ((v24 + v15 + (v23 & ~v11)) & ~v15) + 1;
  v26 = v42;
  if (v18 == v21)
  {
    v27 = (*(v8 + 48))(v17, v18, v6);
  }

  else
  {
    v28 = (v17 + v23) & v22;
    if (v19 == v21)
    {
      v27 = (*(v39 + 48))((v17 + v23) & v22, v19, v40);
    }

    else
    {
      v29 = (v25 + v28) & v41;
      if (v14 != v21)
      {
        v30 = v6;
        v31 = __dst;
        if (*(v29 + v36) >= 2u)
        {
          goto LABEL_16;
        }

LABEL_18:
        (*(v8 + 16))(v31, v17, v30);
        v33 = (v31 + v23) & v22;
        (*(v39 + 16))(v33, v28, v40);
        v34 = (v25 + v33) & v41;
        (*(v37 + 16))(v34, v29, v38);
        *(v34 + v36) = *(v29 + v36);
        v32 = __n;
        goto LABEL_19;
      }

      v27 = (*(v37 + 48))((v25 + v28) & v41, v14, v38);
    }
  }

  v30 = v6;
  v31 = __dst;
  if (!v27)
  {
    v28 = (v17 + v23) & v22;
    v29 = (v25 + v28) & v41;
    goto LABEL_18;
  }

LABEL_16:
  v32 = __n;
  memcpy(v31, v17, __n);
LABEL_19:
  *((v31 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v17 + v32 + 7) & 0xFFFFFFFFFFFFFFF8);
  return v45;
}

void **sub_21D74F874(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = sub_21DBF56BC();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 80);
  v68 = sub_21DBF5D5C();
  v13 = *(v68 - 8);
  v14 = *(v13 + 80);
  v70 = *(a3 + 16);
  v15 = *(v70 - 8);
  v16 = *(v15 + 84);
  v69 = v15;
  v17 = *(v15 + 80);
  v18 = (*(v13 + 80) | v12 | *(v15 + 80));
  v73 = a1;
  v19 = (a1 + v18 + 8) & ~v18;
  v20 = (a2 + v18 + 8) & ~v18;
  v21 = *(v10 + 84);
  v22 = *(v13 + 84);
  if (v22 <= v21)
  {
    v23 = *(v10 + 84);
  }

  else
  {
    v23 = *(v13 + 84);
  }

  if (v16 > v23)
  {
    v23 = *(v15 + 84);
  }

  if (v23 <= 0xFE)
  {
    v24 = 254;
  }

  else
  {
    v24 = v23;
  }

  v25 = ~v14;
  v26 = *(v10 + 64) + v14;
  v27 = *(*(v68 - 8) + 64);
  v72 = ~v17;
  v28 = v27 + v17;
  v62 = *(v68 - 8);
  v63 = *(*(v70 - 8) + 64);
  v29 = v63 + ((v27 + v17 + (v26 & ~v14)) & ~v17) + 1;
  v60 = v11;
  v61 = v9;
  __n = v29;
  if (v21 == v24)
  {
    v64 = v26;
    v66 = ~v14;
    v30 = *(v11 + 48);
    v31 = v30(v19, v21, v9);
    v32 = v30(v20, v21, v9);
    v33 = v19;
    v34 = v20;
    goto LABEL_13;
  }

  v59 = v19;
  v35 = (v26 + v19) & v25;
  if (v22 == v24)
  {
    v36 = *(v13 + 48);
    v37 = ~v14;
    v38 = v26;
    v31 = v36((v26 + v19) & v25, v22, v68);
    v34 = v20;
    v64 = v38;
    v66 = v37;
    v32 = v36((v38 + v20) & v37, v22, v68);
    v33 = v59;
LABEL_13:
    v39 = v72;
    v40 = v28;
    if (v31)
    {
      v42 = v64;
      v41 = v66;
      if (v32)
      {
LABEL_15:
        v43 = v33;
        v44 = v34;
        v29 = __n;
LABEL_28:
        memcpy(v43, v44, v29);
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    goto LABEL_25;
  }

  v40 = v27 + v17;
  v39 = ~v17;
  v45 = (v28 + v35) & v72;
  v34 = v20;
  if (v16 == v24)
  {
    v46 = ~v14;
    v47 = v26;
    v48 = (*(v15 + 48))(v45, v16, v70);
    v26 = v47;
    v25 = v46;
    if (v48)
    {
      goto LABEL_18;
    }

LABEL_23:
    v52 = (v34 + v26) & v25;
    v53 = (v40 + v52) & v72;
    if (v16 != v24)
    {
      v33 = v59;
      v55 = v60;
      v54 = v61;
      if (*(v53 + v63) >= 2u)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v64 = v26;
    v66 = v25;
    v32 = (*(v69 + 48))((v40 + v52) & v72, v16, v70);
    v33 = v59;
LABEL_25:
    v35 = (v33 + v64) & v66;
    if (v32)
    {
      v55 = v60;
      v54 = v61;
      v29 = __n;
LABEL_27:
      (*(v55 + 8))(v33, v54);
      (*(v62 + 8))(v35, v68);
      (*(v69 + 8))((v40 + v35) & v39, v70);
      v43 = v33;
      v44 = v34;
      goto LABEL_28;
    }

    v52 = (v34 + v64) & v66;
    v53 = (v40 + v52) & v39;
    v55 = v60;
    v54 = v61;
    v29 = __n;
LABEL_30:
    (*(v55 + 24))(v33, v34, v54);
    (*(v62 + 24))(v35, v52, v68);
    (*(v69 + 24))((v40 + v35) & v39, v53, v70);
    *(((v40 + v35) & v39) + v63) = *(v53 + v63);
    goto LABEL_31;
  }

  if (*(v45 + v63) < 2u)
  {
    goto LABEL_23;
  }

LABEL_18:
  v49 = (v34 + v26) & v25;
  v50 = (v40 + v49) & v72;
  if (v16 == v24)
  {
    v65 = v26;
    v67 = v25;
    v51 = (*(v69 + 48))((v40 + v49) & v72, v16, v70);
    v33 = v59;
    v42 = v65;
    v41 = v67;
    if (v51)
    {
      goto LABEL_15;
    }

LABEL_20:
    v35 = (v33 + v42) & v41;
    v49 = (v34 + v42) & v41;
    v50 = (v40 + v49) & v39;
    goto LABEL_21;
  }

  v33 = v59;
  if (*(v50 + v63) >= 2u)
  {
    goto LABEL_15;
  }

LABEL_21:
  (*(v60 + 16))(v33, v34, v61);
  (*(v62 + 16))(v35, v49, v68);
  (*(v69 + 16))((v40 + v35) & v39, v50, v70);
  *(((v40 + v35) & v39) + v63) = *(v50 + v63);
  v29 = __n;
LABEL_31:
  v56 = ((v33 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  v57 = ((v34 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v56 = *v57;
  v56[1] = v57[1];
  return v73;
}

void *sub_21D74FDF0(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = sub_21DBF5D5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v14 + 80);
  v18 = (*(v11 + 80) | v9 | *(v14 + 80));
  v43 = a1;
  v19 = ((a1 + v18 + 8) & ~v18);
  v20 = ((a2 + v18 + 8) & ~v18);
  v21 = *(v7 + 84);
  v22 = *(v11 + 84);
  if (v22 <= v21)
  {
    v23 = *(v7 + 84);
  }

  else
  {
    v23 = *(v11 + 84);
  }

  if (v16 > v23)
  {
    v23 = *(v14 + 84);
  }

  if (v23 <= 0xFE)
  {
    v23 = 254;
  }

  v24 = *(v7 + 64);
  v25 = ~v12;
  v26 = v24 + v12;
  v27 = *(*(v10 - 8) + 64);
  v41 = ~v17;
  v28 = v27 + v17;
  v29 = *(v14 + 64);
  __n = v29 + ((v27 + v17 + ((v24 + v12) & ~v12)) & ~v17) + 1;
  v38 = v10;
  v39 = v6;
  v37 = v13;
  v40 = ~v12;
  if (v21 == v23)
  {
    v30 = (*(v8 + 48))(v20, v21, v6);
    goto LABEL_10;
  }

  v31 = (v20 + v26) & v25;
  if (v22 != v23)
  {
    v32 = (v28 + v31) & v41;
    if (v16 != v23)
    {
      if (*(v32 + v29) < 2u)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    v30 = (*(v14 + 48))((v28 + v31) & v41, v16, v13);
LABEL_10:
    if (!v30)
    {
      goto LABEL_14;
    }

LABEL_19:
    v35 = __n;
    memcpy(v19, v20, __n);
    goto LABEL_20;
  }

  if ((*(v11 + 48))((v20 + v26) & v25, v22, v10))
  {
    goto LABEL_19;
  }

LABEL_14:
  v31 = (v20 + v26) & v40;
  v32 = (v28 + v31) & v41;
LABEL_15:
  (*(v8 + 32))(v19, v20, v39);
  v33 = (v19 + v26) & v40;
  (*(v11 + 32))(v33, v31, v38);
  v34 = (v28 + v33) & v41;
  (*(v15 + 32))(v34, v32, v37);
  *(v34 + v29) = *(v32 + v29);
  v35 = __n;
LABEL_20:
  *((v19 + v35 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v35 + 7) & 0xFFFFFFFFFFFFFFF8);
  return v43;
}

void **sub_21D75011C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  v66 = sub_21DBF5D5C();
  v11 = *(v66 - 8);
  v12 = *(v11 + 80);
  v68 = *(a3 + 16);
  v13 = *(v68 - 8);
  v14 = *(v13 + 84);
  v67 = v13;
  v15 = *(v13 + 80);
  v16 = (*(v11 + 80) | v10 | *(v13 + 80));
  v71 = a1;
  v17 = (a1 + v16 + 8) & ~v16;
  v18 = (a2 + v16 + 8) & ~v16;
  v19 = *(v8 + 84);
  v20 = *(v11 + 84);
  if (v20 <= v19)
  {
    v21 = *(v8 + 84);
  }

  else
  {
    v21 = *(v11 + 84);
  }

  if (v14 > v21)
  {
    v21 = *(v13 + 84);
  }

  if (v21 <= 0xFE)
  {
    v22 = 254;
  }

  else
  {
    v22 = v21;
  }

  v23 = ~v12;
  v24 = *(v8 + 64) + v12;
  v25 = *(*(v66 - 8) + 64);
  v70 = ~v15;
  v26 = v25 + v15;
  v60 = *(v66 - 8);
  v61 = *(*(v68 - 8) + 64);
  v27 = v61 + ((v25 + v15 + (v24 & ~v12)) & ~v15) + 1;
  v58 = v9;
  v59 = v7;
  __n = v27;
  if (v19 == v22)
  {
    v62 = v24;
    v64 = ~v12;
    v28 = *(v9 + 48);
    v29 = v28(v17, v19, v7);
    v30 = v28(v18, v19, v7);
    v31 = v17;
    v32 = v18;
    goto LABEL_13;
  }

  v57 = v17;
  v33 = (v24 + v17) & v23;
  if (v20 == v22)
  {
    v34 = *(v11 + 48);
    v35 = ~v12;
    v36 = v24;
    v29 = v34((v24 + v17) & v23, v20, v66);
    v32 = v18;
    v62 = v36;
    v64 = v35;
    v30 = v34((v36 + v18) & v35, v20, v66);
    v31 = v57;
LABEL_13:
    v37 = v70;
    v38 = v26;
    if (v29)
    {
      v40 = v62;
      v39 = v64;
      if (v30)
      {
LABEL_15:
        v41 = v31;
        v42 = v32;
        v27 = __n;
LABEL_28:
        memcpy(v41, v42, v27);
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    goto LABEL_25;
  }

  v38 = v25 + v15;
  v37 = ~v15;
  v43 = (v26 + v33) & v70;
  v32 = v18;
  if (v14 == v22)
  {
    v44 = ~v12;
    v45 = v24;
    v46 = (*(v13 + 48))(v43, v14, v68);
    v24 = v45;
    v23 = v44;
    if (v46)
    {
      goto LABEL_18;
    }

LABEL_23:
    v50 = (v32 + v24) & v23;
    v51 = (v38 + v50) & v70;
    if (v14 != v22)
    {
      v31 = v57;
      v53 = v58;
      v52 = v59;
      if (*(v51 + v61) >= 2u)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v62 = v24;
    v64 = v23;
    v30 = (*(v67 + 48))((v38 + v50) & v70, v14, v68);
    v31 = v57;
LABEL_25:
    v33 = (v31 + v62) & v64;
    if (v30)
    {
      v53 = v58;
      v52 = v59;
      v27 = __n;
LABEL_27:
      (*(v53 + 8))(v31, v52);
      (*(v60 + 8))(v33, v66);
      (*(v67 + 8))((v38 + v33) & v37, v68);
      v41 = v31;
      v42 = v32;
      goto LABEL_28;
    }

    v50 = (v32 + v62) & v64;
    v51 = (v38 + v50) & v37;
    v53 = v58;
    v52 = v59;
    v27 = __n;
LABEL_30:
    (*(v53 + 40))(v31, v32, v52);
    (*(v60 + 40))(v33, v50, v66);
    (*(v67 + 40))((v38 + v33) & v37, v51, v68);
    *(((v38 + v33) & v37) + v61) = *(v51 + v61);
    goto LABEL_31;
  }

  if (*(v43 + v61) < 2u)
  {
    goto LABEL_23;
  }

LABEL_18:
  v47 = (v32 + v24) & v23;
  v48 = (v38 + v47) & v70;
  if (v14 == v22)
  {
    v63 = v24;
    v65 = v23;
    v49 = (*(v67 + 48))((v38 + v47) & v70, v14, v68);
    v31 = v57;
    v40 = v63;
    v39 = v65;
    if (v49)
    {
      goto LABEL_15;
    }

LABEL_20:
    v33 = (v31 + v40) & v39;
    v47 = (v32 + v40) & v39;
    v48 = (v38 + v47) & v37;
    goto LABEL_21;
  }

  v31 = v57;
  if (*(v48 + v61) >= 2u)
  {
    goto LABEL_15;
  }

LABEL_21:
  (*(v58 + 32))(v31, v32, v59);
  (*(v60 + 32))(v33, v47, v66);
  (*(v67 + 32))((v38 + v33) & v37, v48, v68);
  *(((v38 + v33) & v37) + v61) = *(v48 + v61);
  v27 = __n;
LABEL_31:
  v54 = ((v31 + v27 + 7) & 0xFFFFFFFFFFFFFFF8);
  v55 = ((v32 + v27 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v54 = *v55;
  v54[1] = v55[1];
  return v71;
}

uint64_t sub_21D750694(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(sub_21DBF5D5C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = *(*(a3 + 16) - 8);
  if (v11 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = *(v12 + 80);
  v15 = *(v12 + 84);
  if (v15 > v13)
  {
    v13 = *(v12 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  if (v13 - 1 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v13 - 1;
  }

  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v12 + 64);
  if (!a2)
  {
    return 0;
  }

  v20 = *(v9 + 80);
  v21 = v14;
  v22 = (v17 | *(v7 + 80) | v14);
  v23 = *(v7 + 64) + v17;
  v24 = v18 + v14;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v25 = ((v19 + ((v24 + (v23 & ~v20)) & ~v21) + ((v22 + 8) & ~v22) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = v25 & 0xFFFFFFF8;
  if ((v25 & 0xFFFFFFF8) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = a2 - v16 + 1;
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

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v29 = *(a1 + v25);
      if (v29)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v29 = *(a1 + v25);
      if (v29)
      {
        goto LABEL_30;
      }
    }

LABEL_33:
    if (((v13 - 1) & 0x80000000) == 0)
    {
      v32 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }

    v34 = (a1 + v22 + 8) & ~v22;
    if (v8 == v13)
    {
      v35 = (*(v7 + 48))(v34, v8, v6, v24, v23, v18);
      goto LABEL_47;
    }

    v36 = (v23 + v34) & ~v20;
    if (v11 == v13)
    {
      v35 = (*(v10 + 48))(v36);
      goto LABEL_47;
    }

    v37 = (v24 + v36) & ~v21;
    if (v15 == v13)
    {
      v35 = (*(*(*(a3 + 16) - 8) + 48))(v37, v15);
      goto LABEL_47;
    }

    v38 = *(v37 + v19);
    if (v38 >= 2)
    {
      v35 = ((v38 + 2147483646) & 0x7FFFFFFF) + 1;
LABEL_47:
      v39 = v35 != 0;
      result = (v35 - 1);
      if (result != 0 && v39)
      {
        return result;
      }
    }

    return 0;
  }

  if (!v28)
  {
    goto LABEL_33;
  }

  v29 = *(a1 + v25);
  if (!v29)
  {
    goto LABEL_33;
  }

LABEL_30:
  v30 = v29 - 1;
  if (v18)
  {
    v30 = 0;
    v31 = *a1;
  }

  else
  {
    v31 = 0;
  }

  return v16 + (v31 | v30) + 1;
}

void sub_21D7509A8(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(sub_21DBF5D5C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(a4 + 16);
  v16 = *(v15 - 8);
  v17 = *(v11 + 80);
  v18 = *(v16 + 84);
  v19 = *(v11 + 64);
  v20 = *(v16 + 64);
  if (v18 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v16 + 84);
  }

  if (v21 <= 0xFE)
  {
    v22 = 254;
  }

  else
  {
    v22 = v21;
  }

  v23 = v22 - 1;
  if (v22 - 1 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v22 - 1;
  }

  v25 = v17;
  v26 = *(v16 + 80);
  v27 = (v17 | *(v9 + 80) | *(v16 + 80));
  v28 = *(v9 + 64) + v17;
  v29 = v19 + v26;
  v30 = v20 + ((v19 + v26 + (v28 & ~v17)) & ~v26) + 1;
  v31 = ((((v27 + 8) & ~v27) + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v24 >= a3)
  {
    v34 = 0;
    v35 = a2 - v24;
    if (a2 <= v24)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (((((v27 + 8) & ~v27) + v30 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 1;
    }

    if (((((v27 + 8) & ~v27) + v30 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v37 = ~v24 + a2;
      bzero(a1, ((((v27 + 8) & ~v27) + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v37;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        *(a1 + v31) = v36;
      }

      else
      {
        *(a1 + v31) = v36;
      }
    }

    else if (v34)
    {
      *(a1 + v31) = v36;
    }

    return;
  }

  if (((((v27 + 8) & ~v27) + v30 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v32 = a3 - v24 + 1;
  }

  else
  {
    v32 = 2;
  }

  if (v32 >= 0x10000)
  {
    v33 = 4;
  }

  else
  {
    v33 = 2;
  }

  if (v32 < 0x100)
  {
    v33 = 1;
  }

  if (v32 >= 2)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = a2 - v24;
  if (a2 > v24)
  {
    goto LABEL_31;
  }

LABEL_26:
  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(a1 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v31) = 0;
  }

  else if (v34)
  {
    *(a1 + v31) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v23 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v38 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v38 = a2 - 1;
    }

    *a1 = v38;
    return;
  }

  v39 = ((a1 + v27 + 8) & ~v27);
  if (v23 >= a2)
  {
    if (a2 < v22)
    {
      if (v10 == v22)
      {
        v43 = *(v9 + 56);
        v44 = a2 + 1;
        v45 = v39;
        v46 = v10;
        v15 = v8;
      }

      else
      {
        v48 = &v39[v28] & ~v25;
        if (v13 == v22)
        {
          v49 = *(v12 + 56);

          v49(v48, a2 + 1);
          return;
        }

        v45 = ((v29 + v48) & ~v26);
        if (v18 != v22)
        {
          v45[v20] = a2 + 2;
          return;
        }

        v43 = *(v16 + 56);
        v44 = a2 + 1;
        v46 = v18;
      }

      v43(v45, v44, v46, v15);
      return;
    }

    if (v30 <= 3)
    {
      v47 = ~(-1 << (8 * v30));
    }

    else
    {
      v47 = -1;
    }

    if (v30)
    {
      v41 = v47 & (a2 - v22);
      if (v30 <= 3)
      {
        v42 = v30;
      }

      else
      {
        v42 = 4;
      }

      bzero(v39, v30);
      if (v42 <= 2)
      {
        if (v42 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_79;
      }

LABEL_80:
      if (v42 == 3)
      {
        *v39 = v41;
        v39[2] = BYTE2(v41);
      }

      else
      {
        *v39 = v41;
      }
    }
  }

  else
  {
    if (v30 <= 3)
    {
      v40 = ~(-1 << (8 * v30));
    }

    else
    {
      v40 = -1;
    }

    if (v30)
    {
      v41 = v40 & (a2 - v22);
      if (v30 <= 3)
      {
        v42 = v30;
      }

      else
      {
        v42 = 4;
      }

      bzero(v39, v30);
      if (v42 <= 2)
      {
        if (v42 == 1)
        {
LABEL_60:
          *v39 = v41;
          return;
        }

LABEL_79:
        *v39 = v41;
        return;
      }

      goto LABEL_80;
    }
  }
}

uint64_t sub_21D750DFC()
{
  result = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_21D750E9C(char **a1, char **a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = sub_21DBF5D5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) | v9;
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = v13 | *(v15 + 80);
  v18 = (v13 | *(v15 + 80));
  v19 = *(v7 + 64) + v12;
  v20 = *(v11 + 64) + v16;
  v21 = *(v15 + 64);
  if (v18 > 7 || (v17 & 0x100000) != 0 || v21 - ((-9 - v18) | v18) + ((v20 + (v19 & ~v12)) & ~v16) > 0x18)
  {
    v24 = *a2;
    *a1 = *a2;
    v34 = &v24[(v18 & 0xF8 ^ 0x1F8) & (v18 + 16)];
  }

  else
  {
    v36 = v10;
    v37 = v6;
    v25 = ~v12;
    v39 = ~v16;
    v40 = a1;
    v26 = *a2;
    *a1 = *a2;
    v27 = a2 + v18;
    v28 = (a1 + v18 + 8) & ~v18;
    v29 = (v27 + 8) & ~v18;
    v30 = *(v8 + 16);
    v38 = v14;
    v31 = v26;
    v30(v28, v29, v37);
    (*(v11 + 16))((v19 + v28) & v25, (v19 + v29) & v25, v36);
    v32 = (v20 + ((v19 + v28) & v25)) & v39;
    v33 = (v20 + ((v19 + v29) & v25)) & v39;
    (*(v15 + 16))(v32, v33, v38);
    *(v32 + v21) = *(v33 + v21);
    return v40;
  }

  return v34;
}

uint64_t sub_21D75110C(id *a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  v9 = *(a2 + 16);
  v18 = *(v9 - 8);
  v10 = (*(v8 + 80) | v6 | *(v18 + 80));
  v11 = *(v8 + 80);
  v12 = *(v18 + 80);
  v13 = (a1 + v10 + 8) & ~v10;
  (*(v5 + 8))(v13, v4);
  v14 = (*(v5 + 64) + v11 + v13) & ~v11;
  (*(v8 + 8))(v14, v7);
  v15 = *(v18 + 8);
  v16 = (*(v8 + 64) + v12 + v14) & ~v12;

  return v15(v16, v9);
}

void **sub_21D75128C(void **a1, void **a2, uint64_t a3)
{
  v27 = *a2;
  *a1 = *a2;
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v28 = *(a3 + 16);
  v12 = *(v28 - 8);
  v13 = *(v12 + 80);
  v14 = (*(v10 + 80) | v8 | *(v12 + 80));
  v15 = (a1 + v14 + 8) & ~v14;
  v16 = (a2 + v14 + 8) & ~v14;
  v17 = *(v7 + 16);
  v18 = v27;
  v17(v15, v16, v6);
  v19 = *(v7 + 64) + v11;
  v20 = (v19 + v15) & ~v11;
  v21 = (v19 + v16) & ~v11;
  (*(v10 + 16))(v20, v21, v9);
  v22 = *(v10 + 64) + v13;
  v23 = (v22 + v20) & ~v13;
  v24 = (v22 + v21) & ~v13;
  (*(v12 + 16))(v23, v24, v28);
  *(*(v12 + 64) + v23) = *(*(v12 + 64) + v24);
  return a1;
}

void **sub_21D75144C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = sub_21DBF56BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = sub_21DBF5D5C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v27 = *(a3 + 16);
  v15 = *(v27 - 8);
  v16 = *(v15 + 80);
  v17 = (*(v13 + 80) | v11 | *(v15 + 80));
  v18 = (a1 + v17 + 8) & ~v17;
  v19 = (a2 + v17 + 8) & ~v17;
  (*(v10 + 24))(v18, v19, v9);
  v20 = *(v10 + 64) + v14;
  v21 = (v20 + v18) & ~v14;
  v22 = (v20 + v19) & ~v14;
  (*(v13 + 24))(v21, v22, v12);
  v23 = *(v13 + 64) + v16;
  v24 = (v23 + v21) & ~v16;
  v25 = (v23 + v22) & ~v16;
  (*(v15 + 24))(v24, v25, v27);
  *(*(v15 + 64) + v24) = *(*(v15 + 64) + v25);
  return a1;
}

void *sub_21D75160C(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v24 = *(a3 + 16);
  v12 = *(v24 - 8);
  v13 = *(v12 + 80);
  v14 = (*(v10 + 80) | v8 | *(v12 + 80));
  v15 = (a1 + v14 + 8) & ~v14;
  v16 = (a2 + v14 + 8) & ~v14;
  (*(v7 + 32))(v15, v16, v6);
  v17 = *(v7 + 64) + v11;
  v18 = (v17 + v15) & ~v11;
  v19 = (v17 + v16) & ~v11;
  (*(v10 + 32))(v18, v19, v9);
  v20 = *(v10 + 64) + v13;
  v21 = (v20 + v18) & ~v13;
  v22 = (v20 + v19) & ~v13;
  (*(v12 + 32))(v21, v22, v24);
  *(*(v12 + 64) + v21) = *(*(v12 + 64) + v22);
  return a1;
}

void **sub_21D7517C0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = sub_21DBF5D5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v25 = *(a3 + 16);
  v13 = *(v25 - 8);
  v14 = *(v13 + 80);
  v15 = (*(v11 + 80) | v9 | *(v13 + 80));
  v16 = (a1 + v15 + 8) & ~v15;
  v17 = (a2 + v15 + 8) & ~v15;
  (*(v8 + 40))(v16, v17, v7);
  v18 = *(v8 + 64) + v12;
  v19 = (v18 + v16) & ~v12;
  v20 = (v18 + v17) & ~v12;
  (*(v11 + 40))(v19, v20, v10);
  v21 = *(v11 + 64) + v14;
  v22 = (v21 + v19) & ~v14;
  v23 = (v21 + v20) & ~v14;
  (*(v13 + 40))(v22, v23, v25);
  *(*(v13 + 64) + v22) = *(*(v13 + 64) + v23);
  return a1;
}

uint64_t sub_21D75197C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  if (*(v14 + 84) <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  if (v15 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v15;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v10 + 80);
  v19 = *(v14 + 80);
  v20 = (*(v10 + 80) | *(v7 + 80) | *(v14 + 80));
  v21 = *(v7 + 64) + v18;
  v22 = *(*(v9 - 8) + 64) + v19;
  if (a2 <= v17)
  {
    goto LABEL_37;
  }

  v23 = *(v14 + 64) + ((v22 + (v21 & ~v18)) & ~v19) + ((v20 + 8) & ~v20) + 1;
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_16;
  }

  v27 = ((a2 - v17 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v27))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_37;
      }

LABEL_16:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_37;
      }

LABEL_24:
      v28 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v28 = 0;
      }

      if (*(v14 + 64) + ((v22 + (v21 & ~v18)) & ~v19) + ((v20 + 8) & ~v20) == -1)
      {
        v30 = 0;
      }

      else
      {
        if (v23 <= 3)
        {
          v29 = *(v14 + 64) + ((v22 + (v21 & ~v18)) & ~v19) + ((v20 + 8) & ~v20) + 1;
        }

        else
        {
          v29 = 4;
        }

        if (v29 > 2)
        {
          if (v29 == 3)
          {
            v30 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v30 = *a1;
          }
        }

        else if (v29 == 1)
        {
          v30 = *a1;
        }

        else
        {
          v30 = *a1;
        }
      }

      return v17 + (v30 | v28) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_24;
    }
  }

LABEL_37:
  if ((v15 & 0x80000000) == 0)
  {
    v31 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v31) = -1;
    }

    return (v31 + 1);
  }

  if (v8 == v16)
  {
    v32 = *(v7 + 48);
    v33 = (a1 + v20 + 8) & ~v20;
    v34 = v8;
    v13 = v6;
LABEL_48:

    return v32(v33, v34, v13);
  }

  if (v11 != v16)
  {
    v32 = *(v14 + 48);
    v33 = (v22 + ((v21 + ((a1 + v20 + 8) & ~v20)) & ~v18)) & ~v19;
    v34 = *(v14 + 84);
    goto LABEL_48;
  }

  v35 = *(v10 + 48);

  return v35((v21 + ((a1 + v20 + 8) & ~v20)) & ~v18);
}

void sub_21D751CEC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(sub_21DBF5D5C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(a4 + 16);
  v16 = *(v15 - 8);
  v17 = *(v11 + 80);
  v18 = *(v16 + 84);
  v19 = *(v11 + 64);
  if (v18 <= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = *(v16 + 84);
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v20;
  }

  v23 = *(v11 + 80);
  v24 = *(v16 + 80);
  v25 = (v17 | *(v9 + 80) | *(v16 + 80));
  v26 = *(v9 + 64) + v17;
  v27 = v19 + v24;
  v28 = *(v16 + 64) + ((v19 + v24 + (v26 & ~v17)) & ~v24) + 1;
  v29 = v28 + ((v25 + 8) & ~v25);
  if (a3 <= v22)
  {
    v30 = 0;
  }

  else if (v29 <= 3)
  {
    v33 = ((a3 - v22 + ~(-1 << (8 * v29))) >> (8 * v29)) + 1;
    if (HIWORD(v33))
    {
      v30 = 4;
    }

    else
    {
      if (v33 < 0x100)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      if (v33 >= 2)
      {
        v30 = v34;
      }

      else
      {
        v30 = 0;
      }
    }
  }

  else
  {
    v30 = 1;
  }

  if (v22 < a2)
  {
    v31 = ~v22 + a2;
    if (v29 < 4)
    {
      v32 = (v31 >> (8 * v29)) + 1;
      if (v29)
      {
        v35 = v31 & ~(-1 << (8 * v29));
        bzero(a1, v28 + ((v25 + 8) & ~v25));
        if (v29 != 3)
        {
          if (v29 == 2)
          {
            *a1 = v35;
            if (v30 > 1)
            {
LABEL_66:
              if (v30 == 2)
              {
                *&a1[v29] = v32;
              }

              else
              {
                *&a1[v29] = v32;
              }

              return;
            }
          }

          else
          {
            *a1 = v31;
            if (v30 > 1)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_63;
        }

        *a1 = v35;
        a1[2] = BYTE2(v35);
      }

      if (v30 > 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      bzero(a1, v28 + ((v25 + 8) & ~v25));
      *a1 = v31;
      v32 = 1;
      if (v30 > 1)
      {
        goto LABEL_66;
      }
    }

LABEL_63:
    if (v30)
    {
      a1[v29] = v32;
    }

    return;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&a1[v29] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v29] = 0;
  }

  else if (v30)
  {
    a1[v29] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if ((v20 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v36 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v36 = (a2 - 1);
    }

    *a1 = v36;
    return;
  }

  v37 = (&a1[v25 + 8] & ~v25);
  if (v21 < a2)
  {
    if (v28 <= 3)
    {
      v38 = ~(-1 << (8 * v28));
    }

    else
    {
      v38 = -1;
    }

    if (v28)
    {
      v39 = v38 & (~v21 + a2);
      if (v28 <= 3)
      {
        v40 = v28;
      }

      else
      {
        v40 = 4;
      }

      bzero(v37, v28);
      if (v40 > 2)
      {
        if (v40 == 3)
        {
          *v37 = v39;
          v37[2] = BYTE2(v39);
        }

        else
        {
          *v37 = v39;
        }
      }

      else if (v40 == 1)
      {
        *v37 = v39;
      }

      else
      {
        *v37 = v39;
      }
    }

    return;
  }

  if (v10 == v21)
  {
    v41 = *(v9 + 56);
    v42 = v37;
    v43 = a2;
    v44 = v10;
    v15 = v8;
LABEL_77:

    v41(v42, v43, v44, v15);
    return;
  }

  v45 = &v37[v26] & ~v23;
  if (v13 != v21)
  {
    v41 = *(v16 + 56);
    v42 = ((v27 + v45) & ~v24);
    v43 = a2;
    v44 = v18;
    goto LABEL_77;
  }

  v46 = *(v12 + 56);

  v46(v45, a2);
}

uint64_t sub_21D752164(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_21DBF8E0C();
    v3 = vars8;
  }

  return sub_21DBF8E0C();
}

uint64_t sub_21D7521B0(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21D7521FC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D752164(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t sub_21D752248(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D752164(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21D7521B0(v6, v7, v8);
  return a1;
}

uint64_t sub_21D7522A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21D7521B0(v4, v5, v6);
  return a1;
}

uint64_t static TTRICollectionViewDragItemUserInfo.dragItemLocalObjectKey.getter()
{
  type metadata accessor for TTRICollectionViewDragItemUserInfo();

  return sub_21DBFC8EC();
}

uint64_t TTRICollectionViewDragItemUserInfo.coordinatorID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF56BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRICollectionViewDragItemUserInfo.indexPath.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_21DBF5D5C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21D7524A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_21DBF56BC();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for TTRICollectionViewDragItemUserInfo();
  v14 = v13[7];
  v15 = sub_21DBF5D5C();
  (*(*(v15 - 8) + 32))(a6 + v14, a2, v15);
  result = (*(*(a5 - 8) + 32))(a6 + v13[8], a3, a5);
  *(a6 + v13[9]) = a4;
  return result;
}

uint64_t TTRICollectionViewDropProposal.dragItemSources.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  swift_unknownObjectRetain();
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

uint64_t TTRICollectionViewDropProposal.dropDestination.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  type metadata accessor for TTRTreeViewDropDestination();
  v5 = sub_21DBFBA8C();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t TTRICollectionViewDropProposal.init(dragItemSources:dropOperation:dropIntent:dropDestination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 8) = *(a1 + 8);
  *(a5 + 24) = a2;
  v8 = type metadata accessor for TTRICollectionViewDropProposal();
  sub_21D759568(a3, a5 + *(v8 + 56), type metadata accessor for TTRICollectionViewDropIntent);
  v9 = *(v8 + 60);
  type metadata accessor for TTRTreeViewDropDestination();
  v10 = sub_21DBFBA8C();
  return (*(*(v10 - 8) + 32))(a5 + v9, a4, v10);
}