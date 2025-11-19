id static TTRQuickEntryReminderCreationInteractorCapability.createReminder(objectID:initialList:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = [*a2 store];
  v5 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v6 = [v5 updateList_];
  v7 = sub_21DBFA12C();
  v8 = [v5 addReminderWithTitle:v7 toListChangeItem:v6 reminderObjectID:a1];

  return v8;
}

id TTRQuickEntryInitialListForReminderCreation.customSmartListToMatch.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id TTRQuickEntryInitialListForReminderCreation.store.getter()
{
  v1 = [*v0 store];

  return v1;
}

uint64_t sub_21DAEF850()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE666E0);
  v1 = __swift_project_value_buffer(v0, qword_27CE666E0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRQuickEntryInitialListForReminderCreation.targetListOrCustomSmartList.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t TTRQuickEntryReminderCreationInteractorCapability.InitialListFetchError.hashValue.getter()
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  return sub_21DBFC82C();
}

id TTRQuickEntryReminderCreationInteractorCapability.FetchOptions.recentlySelectedListObjectID.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id TTRQuickEntryReminderCreationInteractorCapability.FetchOptions.defaultListOption.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_21D15751C(v2);
}

void TTRQuickEntryReminderCreationInteractorCapability.FetchOptions.defaultListOption.setter(uint64_t *a1)
{
  v2 = *a1;
  sub_21D157878(*(v1 + 16));
  *(v1 + 16) = v2;
}

void sub_21DAEFB0C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  if (*(v1 + 33))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v12 = *(v1 + 48);
  v8 = v3;
  v9 = v7 | v4;
  v10 = v5;
  v11 = v6;
  static TTRQuickEntryReminderCreationInteractorCapability.fetchInitialListForReminderCreationSynchronously(store:options:)(v2, &v8, a1);
}

void static TTRQuickEntryReminderCreationInteractorCapability.fetchInitialListForReminderCreationSynchronously(store:options:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  type metadata accessor for ListFetcher();
  inited = swift_initStackObject();
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  *(inited + 56) = -2;
  *(inited + 64) = 1;
  *(inited + 16) = a1;
  *(inited + 24) = v5;
  *(inited + 32) = v8;
  if (v6)
  {
    v11 = sub_21DAF04E8;
  }

  else
  {
    v11 = sub_21D19DA18;
  }

  v12 = 0xD000000000000019;
  if (v6)
  {
    v13 = 0x800000021DC77950;
  }

  else
  {
    v12 = 0x7473694C20796E41;
    v13 = 0xE800000000000000;
  }

  v73[0] = v12;
  v73[1] = v13;
  v72 = v11;
  v73[2] = v11;
  v73[3] = 0;
  v73[4] = sub_21D19DA18;
  v73[5] = 0;
  if (v7 != 1)
  {
    v36 = v5;
    sub_21D15751C(v8);
    v37 = a1;
    v21 = 0;
    goto LABEL_23;
  }

  v14 = v5;
  sub_21D15751C(v8);
  v15 = qword_27CE57110;
  v16 = a1;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_27CE666E0);
  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAEDC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_21D0C9000, v18, v19, "Quick entry: attempting to fetch a grocery list", v20, 2u);
    MEMORY[0x223D46520](v20, -1, -1);
  }

  v74[0] = 0xD000000000000012;
  v74[1] = 0x800000021DC77930;
  v74[2] = v72;
  v74[3] = 0;
  v74[4] = sub_21DAF0508;
  v74[5] = 0;
  sub_21DAF0570(v74, &v75);
  if (v3)
  {
    goto LABEL_25;
  }

  v21 = v75;
  v22 = v76;
  if (v76 == 255)
  {
LABEL_23:
    sub_21DAF0570(v73, &v75);
    if (!v3)
    {
      sub_21D157864(v21, 255);
      v21 = v75;
      v22 = v76;
      if (v76 != 255)
      {
        v23 = v75;
        if ((v22 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_28;
      }

      if (qword_27CE57110 != -1)
      {
        swift_once();
      }

      v50 = sub_21DBF84BC();
      __swift_project_value_buffer(v50, qword_27CE666E0);
      v51 = sub_21DBF84AC();
      v52 = sub_21DBFAEBC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_21D0C9000, v51, v52, "Quick entry: failed to determine target list for reminder creation", v53, 2u);
        MEMORY[0x223D46520](v53, -1, -1);
      }

      sub_21DAF0AF0();
      swift_allocError();
      swift_willThrow();
    }

    sub_21D157864(v21, 255);
LABEL_25:

    return;
  }

  v23 = v75;
  if ((v22 & 1) == 0)
  {
LABEL_15:
    v68 = v22;
    v24 = v23;
    v65 = 0;
LABEL_16:
    v66 = v9;
    v25 = qword_27CE57110;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v69 = v21;
    v27 = sub_21DBF84BC();
    __swift_project_value_buffer(v27, qword_27CE666E0);
    v28 = sub_21DBF84AC();
    v29 = sub_21DBFAEDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_21D0C9000, v28, v29, "Quick entry: attempting to fetch section count", v30, 2u);
      MEMORY[0x223D46520](v30, -1, -1);
    }

    v31 = v26;
    v32 = [v26 remObjectID];

    v75 = 0;
    v33 = [a1 fetchListSectionsCountWithListObjectID:v32 error:&v75];

    if (v33)
    {
      v34 = v75;
      v35 = [v33 integerValue];
    }

    else
    {
      v54 = v75;
      v55 = sub_21DBF52DC();

      swift_willThrow();
      v56 = v26;
      v33 = sub_21DBF84AC();
      v57 = sub_21DBFAEBC();

      if (os_log_type_enabled(v33, v57))
      {
        v64 = v55;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        v60 = [v56 remObjectID];
        *(v58 + 4) = v60;
        *v59 = v60;
        _os_log_impl(&dword_21D0C9000, v33, v57, "Quick entry: Unable to fetch sections count for list {listID: %@}", v58, 0xCu);
        sub_21D0CF7E0(v59, &unk_27CE60070);
        v61 = v59;
        v31 = v26;
        MEMORY[0x223D46520](v61, -1, -1);
        MEMORY[0x223D46520](v58, -1, -1);
        v62 = v64;
      }

      else
      {
        v62 = v55;
      }

      v35 = 0;
    }

    if (v66)
    {
      v63 = sub_21DAF1C88(v72, 0);
      sub_21D157864(v69, v68);
    }

    else
    {
      sub_21D157864(v69, v68);

      v63 = 0;
    }

    swift_setDeallocating();

    sub_21D157878(*(inited + 32));

    sub_21DAF1C74(*(inited + 48), *(inited + 56));
    sub_21D157878(*(inited + 64));
    *a3 = v69;
    *(a3 + 8) = v65;
    *(a3 + 16) = v31;
    *(a3 + 24) = v35;
    *(a3 + 32) = v63;
    return;
  }

LABEL_28:
  v67 = v9;
  v68 = v22;
  v38 = v23;
  if (qword_27CE57110 != -1)
  {
    swift_once();
  }

  v70 = v21;
  v39 = sub_21DBF84BC();
  __swift_project_value_buffer(v39, qword_27CE666E0);
  v40 = sub_21DBF84AC();
  v41 = sub_21DBFAEDC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_21D0C9000, v40, v41, "Quick entry: attempting to fetch the effective REMList for custom smart list", v42, 2u);
    MEMORY[0x223D46520](v42, -1, -1);
  }

  v43 = [v38 accountID];
  v75 = 0;
  v24 = [a1 fetchDefaultListRequiringCloudKitAccountWithAccountID:v43 error:&v75];

  if (v75)
  {
    v44 = v75;
    sub_21D157864(v70, v22);

    swift_willThrow();
  }

  else
  {
    v21 = v70;
    if (v24)
    {
      v9 = v67;
      v65 = 1;
      goto LABEL_16;
    }

    sub_21D157864(v70, v22);
  }

  v45 = sub_21DBF84AC();
  v46 = sub_21DBFAEBC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_21D0C9000, v45, v46, "Quick entry: failed to fetch default list for using custom smart list as target for reminder creation", v47, 2u);
    MEMORY[0x223D46520](v47, -1, -1);
  }

  v48 = objc_opt_self();
  v49 = sub_21DBFA12C();
  [v48 internalErrorWithDebugDescription_];

  swift_willThrow();
}

id sub_21DAF0508(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  result = [*a1 groceryContext];
  if (result)
  {
    v2 = result;
    v3 = [result shouldCategorizeGroceryItems];

    return v3;
  }

  return result;
}

void sub_21DAF0570(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21DAF0B44(&v35);
  v4 = v36;
  if (v36 != 255)
  {
    v5 = v35;
    if (v36)
    {
      v6 = [v35 accountCapabilities];
    }

    else
    {
      v7 = [v35 account];
      v6 = [v7 capabilities];
    }

    v8 = (*(a1 + 16))(v6);

    if (v8)
    {
      v9 = *(a1 + 32);
      v35 = v5;
      v36 = v4 & 1;
      if (v9(&v35))
      {
        *a2 = v5;
        *(a2 + 8) = v4 & 1;
        return;
      }
    }

    if (qword_27CE57110 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE666E0);
    v11 = *(a1 + 8);
    v33 = *a1;
    sub_21DBF8E0C();

    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAEDC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_21D0CDFB4(v33, v11, &v35);
      _os_log_impl(&dword_21D0C9000, v12, v13, "Quick entry: recently selected list does not satisfy predicate {predicate: %s}", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    sub_21D157864(v5, v4);
  }

  v16 = sub_21DAF0BF8();
  if (v16)
  {
    v17 = v16;
    v18 = *(a1 + 16);
    v19 = [v16 account];
    v20 = [v19 capabilities];

    LOBYTE(v19) = v18(v20);
    if (v19)
    {
      v21 = *(a1 + 32);
      v35 = v17;
      v36 = 0;
      v22 = v17;
      v23 = v21(&v35);
      v24 = v35;

      if (v23)
      {
        *a2 = v17;
        *(a2 + 8) = 0;
        return;
      }
    }

    if (qword_27CE57110 != -1)
    {
      swift_once();
    }

    v25 = sub_21DBF84BC();
    __swift_project_value_buffer(v25, qword_27CE666E0);
    v26 = *a1;
    v27 = *(a1 + 8);
    sub_21DBF8E0C();

    v28 = sub_21DBF84AC();
    v29 = sub_21DBFAEDC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_21D0CDFB4(v26, v27, &v35);
      _os_log_impl(&dword_21D0C9000, v28, v29, "Quick entry: default list does not satisfy predicate {predicate: %s}", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x223D46520](v31, -1, -1);
      MEMORY[0x223D46520](v30, -1, -1);
    }
  }

  v32 = sub_21DAF0C58();
  if (!v2)
  {
    v37 = v32;
    MEMORY[0x28223BE20](v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66718);
    sub_21D0D8CF0(0, &qword_280D17690);
    sub_21D0D0F1C(&qword_27CE66720, &qword_27CE66718);
    sub_21DBFA48C();

    if (v35)
    {
      *a2 = v35;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = -1;
    }
  }
}

unint64_t sub_21DAF0AF0()
{
  result = qword_27CE66708;
  if (!qword_27CE66708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66708);
  }

  return result;
}

id sub_21DAF0B44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = v3;
  v6 = *(v1 + 56);
  if (v4 == 254)
  {
    sub_21DAF157C(v1, &v10);
    v5 = v10;
    v6 = v11;
    v7 = *(v1 + 48);
    *(v1 + 48) = v10;
    v8 = *(v1 + 56);
    *(v1 + 56) = v6;
    sub_21D1B1ED4(v5, v6);
    sub_21DAF1C74(v7, v8);
  }

  *a1 = v5;
  *(a1 + 8) = v6;

  return sub_21DAF26C4(v3, v4);
}

id sub_21DAF0BF8()
{
  v1 = *(v0 + 64);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_21DAF17E4(v0);
    v3 = *(v0 + 64);
    *(v0 + 64) = v2;
    v4 = v2;
    sub_21D157878(v3);
  }

  sub_21D15751C(v1);
  return v2;
}

uint64_t sub_21DAF0C58()
{
  if (*(v0 + 40))
  {
    v2 = *(v0 + 40);
LABEL_3:
    sub_21DBF8E0C();
    return v2;
  }

  sub_21DBF6A3C();
  v3 = v0;
  v4 = sub_21DBF685C();
  if (!v1)
  {
    v2 = v4;
    *(v3 + 40) = v4;
    sub_21DBF8E0C();

    goto LABEL_3;
  }

  if (qword_27CE57110 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  v2 = __swift_project_value_buffer(v5, qword_27CE666E0);
  v6 = v1;
  v7 = sub_21DBF84AC();
  v8 = sub_21DBFAEBC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_21DBFC75C();
    v2 = v12;
    v13 = sub_21D0CDFB4(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21D0C9000, v7, v8, "Quick entry: failed to accounts lists {error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D46520](v10, -1, -1);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  sub_21DAF0AF0();
  swift_allocError();
  swift_willThrow();

  return v2;
}

void sub_21DAF0E60(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = sub_21DBF693C();
  v5 = [v4 capabilities];

  LOBYTE(v4) = v3(v5);
  if (v4)
  {
    v6 = sub_21DBF694C();
    MEMORY[0x28223BE20](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66728);
    sub_21D0D8CF0(0, &qword_280D17690);
    sub_21D0D0F1C(&qword_27CE66730, &qword_27CE66728);
    sub_21DBFA48C();
  }

  else
  {
    *a2 = 0;
  }
}

void sub_21DAF0FE4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  v5 = sub_21DBF695C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF68DC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277D452F8])
  {
    (*(v10 + 96))(v13, v9);
    v16 = *(a2 + 32);
    v23 = *v13;
    v15 = v23;
    v24 = 0;
    v17 = v23;
    v18 = v16(&v23);

    if (v18)
    {
      *v25 = v15;
      return;
    }

    goto LABEL_7;
  }

  if (v14 == *MEMORY[0x277D452F0])
  {
    (*(v10 + 8))(v13, v9);
LABEL_7:
    *v25 = 0;
    return;
  }

  if (v14 == *MEMORY[0x277D45300])
  {
    (*(v10 + 96))(v13, v9);
    (*(v6 + 32))(v8, v13, v5);
    v19 = sub_21DBF694C();
    v22[0] = v22;
    v23 = v19;
    MEMORY[0x28223BE20](v19);
    v22[-2] = a2;
    v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66738);
    sub_21D0D8CF0(0, &qword_280D17690);
    sub_21D0D0F1C(qword_27CE66740, &qword_27CE66738);
    sub_21DBFA48C();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_27CE57110 != -1)
    {
      swift_once();
    }

    v20 = sub_21DBF84BC();
    __swift_project_value_buffer(v20, qword_27CE666E0);
    v21 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v21);
    sub_21DAEAB00("Unknown accountChild type", 25, 2);
    __break(1u);
  }
}

void sub_21DAF13E8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_21DBF68CC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, a1, v6, v8);
  if ((*(v7 + 88))(v10, v6) != *MEMORY[0x277D452E8])
  {
    (*(v7 + 8))(v10, v6);
    goto LABEL_5;
  }

  (*(v7 + 96))(v10, v6);
  v11 = *v10;
  v12 = *(a2 + 32);
  v15 = v11;
  v16 = 0;
  v13 = v11;
  v14 = v12(&v15);

  if ((v14 & 1) == 0)
  {

LABEL_5:
    v11 = 0;
  }

  *a3 = v11;
}

void sub_21DAF157C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = qword_27CE57110;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE666E0);
  v8 = v6;
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAEDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v3;
    v13 = v8;
    _os_log_impl(&dword_21D0C9000, v9, v10, "Quick entry: attempting to fetch recent user selected list {listID: %@}", v11, 0xCu);
    sub_21D0CF7E0(v12, &unk_27CE60070);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v14 = *(a1 + 16);
  v23[0] = 0;
  v15 = [v14 fetchListWithObjectID:v8 error:v23];
  v16 = v23[0];
  if (!v15)
  {
    v18 = v16;
    v19 = sub_21DBF52DC();

    swift_willThrow();
    v23[0] = 0;
    v15 = [v14 fetchCustomSmartListWithObjectID:v8 error:v23];
    v20 = v23[0];
    if (v15)
    {

      v17 = 1;
      goto LABEL_12;
    }

    v21 = v20;
    v22 = sub_21DBF52DC();

    swift_willThrow();
LABEL_11:
    v15 = 0;
    v17 = -1;
    goto LABEL_12;
  }

  v17 = 0;
LABEL_12:
  *a2 = v15;
  *(a2 + 8) = v17;
}

id sub_21DAF17E4(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  result = *(a1 + 32);
  if (result)
  {
    if (result != 1)
    {
      v19 = *(a1 + 16);
      v33[0] = 0;
      v20 = result;
      v21 = [v19 fetchListWithObjectID:result error:v33];
      v22 = v33[0];
      if (v21)
      {
        sub_21D157878(v20);
        return v21;
      }

      v23 = v22;
      v24 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_27CE57110 != -1)
      {
        swift_once();
      }

      v25 = sub_21DBF84BC();
      __swift_project_value_buffer(v25, qword_27CE666E0);
      v26 = v24;
      v12 = sub_21DBF84AC();
      v27 = sub_21DBFAEBC();

      if (!os_log_type_enabled(v12, v27))
      {
        sub_21D157878(v20);

        return 0;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v28 = 136446210;
      swift_getErrorValue();
      v30 = sub_21DBFC75C();
      v32 = sub_21D0CDFB4(v30, v31, v33);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21D0C9000, v12, v27, "Quick entry: failed to fetch list {error: %{public}s}", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223D46520](v29, -1, -1);
      MEMORY[0x223D46520](v28, -1, -1);
      sub_21D157878(v20);

      goto LABEL_17;
    }

    v3 = a1;
    if (qword_27CE57110 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE666E0);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEDC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Quick entry: attempting to fetch the default list", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    v8 = *(v3 + 16);
    v33[0] = 0;
    result = [v8 fetchDefaultListWithError_];
    if (v33[0])
    {
      v9 = result;
      v10 = v33[0];

      swift_willThrow();
      v11 = v10;
      v12 = sub_21DBF84AC();
      v13 = sub_21DBFAEBC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v33[0] = v15;
        *v14 = 136446210;
        swift_getErrorValue();
        v16 = sub_21DBFC75C();
        v18 = sub_21D0CDFB4(v16, v17, v33);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_21D0C9000, v12, v13, "Quick entry: failed to fetch default list {error: %{public}s}", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x223D46520](v15, -1, -1);
        MEMORY[0x223D46520](v14, -1, -1);

        return 0;
      }

LABEL_17:
      return 0;
    }
  }

  return result;
}

uint64_t sub_21DAF1C10()
{
  sub_21D157878(*(v0 + 32));

  sub_21DAF1C74(*(v0 + 48), *(v0 + 56));
  sub_21D157878(*(v0 + 64));

  return swift_deallocClassInstance();
}

void sub_21DAF1C74(id a1, char a2)
{
  if (a2 != 254)
  {
    sub_21D157864(a1, a2);
  }
}

uint64_t sub_21DAF1C88(uint64_t (*a1)(id), uint64_t a2)
{
  v5 = sub_21DBF69AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  result = sub_21DAF0C58();
  if (v2)
  {
    return v8;
  }

  v23[1] = 0;
  v24 = v5;
  v33 = *(result + 16);
  if (!v33)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_14:

    return v8;
  }

  v29 = v8;
  v31 = a1;
  v32 = a2;
  v13 = 0;
  v25 = (v6 + 8);
  v26 = (v6 + 32);
  v27 = v6 + 16;
  v8 = MEMORY[0x277D84F90];
  v14 = v24;
  v30 = v6;
  v28 = result;
  while (v13 < *(result + 16))
  {
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    (*(v6 + 16))(v11, result + v15 + v16 * v13, v14);
    v17 = sub_21DBF693C();
    v18 = [v17 capabilities];

    LOBYTE(v17) = v31(v18);
    if (v17)
    {
      v19 = *v26;
      (*v26)(v29, v11, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21D18F968(0, *(v8 + 2) + 1, 1);
        v14 = v24;
        v8 = v34;
      }

      v22 = *(v8 + 2);
      v21 = *(v8 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_21D18F968(v21 > 1, v22 + 1, 1);
        v14 = v24;
        v8 = v34;
      }

      *(v8 + 2) = v22 + 1;
      v19(&v8[v15 + v22 * v16], v29, v14);
    }

    else
    {
      (*v25)(v11, v14);
    }

    ++v13;
    v6 = v30;
    result = v28;
    if (v33 == v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21DAF1F58()
{
  result = qword_27CE66710;
  if (!qword_27CE66710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66710);
  }

  return result;
}

uint64_t destroy for TTRQuickEntryInitialListForReminderCreation(id *a1)
{
}

uint64_t initializeWithCopy for TTRQuickEntryInitialListForReminderCreation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  v7 = v3;
  v8 = v6;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRQuickEntryInitialListForReminderCreation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v5;
  v7 = v4;

  v8 = *(a2 + 16);
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
  v10 = v8;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRQuickEntryInitialListForReminderCreation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;

  return a1;
}

void destroy for TTRQuickEntryReminderCreationInteractorCapability.DefaultListOption(void **a1)
{
  v1 = *a1;
  v2 = -1;
  if (v1 < 0xFFFFFFFF)
  {
    v2 = v1;
  }

  v3 = v2 + 1;
  if (v1)
  {
    v4 = v3 > 1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
  }
}

void **assignWithCopy for TTRQuickEntryReminderCreationInteractorCapability.DefaultListOption(void **a1, void **a2)
{
  v3 = *a1;
  LODWORD(v4) = -1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v5) = -1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = v5 + 1;
  v7 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v4 = *a2;
  }

  v8 = v4 + 1;
  if (v7)
  {
    v9 = v8 >= 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  if (v3)
  {
    v11 = v6 > 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (v10)
    {
      *a1 = v7;
      v13 = v7;
      return a1;
    }

LABEL_21:
    *a1 = v7;
    return a1;
  }

  if (!v10)
  {

    v7 = *a2;
    goto LABEL_21;
  }

  *a1 = v7;
  v12 = v7;

  return a1;
}

void **assignWithTake for TTRQuickEntryReminderCreationInteractorCapability.DefaultListOption(void **result, void **a2)
{
  v2 = *result;
  LODWORD(v3) = -1;
  if (*result >= 0xFFFFFFFF)
  {
    LODWORD(v4) = -1;
  }

  else
  {
    v4 = *result;
  }

  v5 = v4 + 1;
  v6 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v3 = *a2;
  }

  v7 = v3 + 1;
  if (v6)
  {
    v8 = v7 >= 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;
  if (v2)
  {
    v10 = v5 > 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *result = v6;
  }

  else if (v9)
  {
    *result = v6;
    v11 = result;

    return v11;
  }

  else
  {
    v12 = result;

    result = v12;
    *v12 = v6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRQuickEntryReminderCreationInteractorCapability.DefaultListOption(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DAF2330(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  if ((v1 + 1) >= 2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_21DAF2350(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

void destroy for TTRQuickEntryReminderCreationInteractorCapability.FetchOptions(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != 1)
  {
  }
}

uint64_t initializeWithCopy for TTRQuickEntryReminderCreationInteractorCapability.FetchOptions(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = v4;
  if (v5 != 1)
  {
    v7 = v5;
  }

  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for TTRQuickEntryReminderCreationInteractorCapability.FetchOptions(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = (a1 + 16);
  v8 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v9 = *(a2 + 16);
  if (v8 != 1)
  {
    if (v9 != 1)
    {
      *v7 = v9;
      v11 = v9;

      goto LABEL_8;
    }

    sub_21D0CF7E0(a1 + 16, &qword_27CE60EE0);
    v9 = *(a2 + 16);
    goto LABEL_6;
  }

  if (v9 == 1)
  {
LABEL_6:
    *v7 = v9;
    goto LABEL_8;
  }

  *v7 = v9;
  v10 = v9;
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for TTRQuickEntryReminderCreationInteractorCapability.FetchOptions(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v7 = *(a2 + 16);
  if (v5 != 1)
  {
    if (v7 != 1)
    {
      *v6 = v7;

      goto LABEL_8;
    }

    sub_21D0CF7E0(a1 + 16, &qword_27CE60EE0);
    goto LABEL_6;
  }

  if (v7 == 1)
  {
LABEL_6:
    *v6 = 1;
    goto LABEL_8;
  }

  *v6 = v7;
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRQuickEntryReminderCreationInteractorCapability.FetchOptions(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TTRQuickEntryReminderCreationInteractorCapability.FetchOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_21DAF26C4(id result, char a2)
{
  if (a2 != 254)
  {
    return sub_21D1B1ED4(result, a2);
  }

  return result;
}

uint64_t TTRTreeViewDropDestination.description.getter(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v25 = a1[2];
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v7 = type metadata accessor for TTRNormalizedItemLocation();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v11 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v2, a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0x6E776F6E6B6E75;
    }

    (*(v12 + 32))(v14, v18, v11);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_21DBFBEEC();
    v21 = 0x72416F5479706F63;
    v22 = 0xED000028646E756FLL;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      (*(v8 + 32))(v10, v18, v7);
      v25 = 0;
      v26 = 0xE000000000000000;
      MEMORY[0x223D42AA0](0x6E49747265736E69, 0xEB00000000286F74);
      swift_getWitnessTable();
      sub_21DBFC5FC();
      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v23 = v25;
      (*(v8 + 8))(v10, v7);
      return v23;
    }

    (*(v12 + 32))(v14, v18, v11);
    v25 = 0;
    v26 = 0xE000000000000000;
    v21 = 0x7441747265736E69;
    v22 = 0xE900000000000028;
  }

  MEMORY[0x223D42AA0](v21, v22);
  swift_getWitnessTable();
  sub_21DBFC5FC();
  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  v23 = v25;
  (*(v12 + 8))(v14, v11);
  return v23;
}

uint64_t sub_21DAF2A9C()
{
  result = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRNormalizedItemLocation();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *sub_21DAF2B90(void *__dst, unsigned __int16 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = v5 + v9;
  v11 = (v5 + v9) & ~v9;
  v12 = *(v7 + 64);
  if (v8)
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = ((v14 + v9) & ~v9) + v12;
  if (v15 <= v14)
  {
    v15 = ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = v15 + 1;
  v17 = v9 | *(v4 + 80) & 0xF8;
  if (v17 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v16 > 0x18)
  {
    v20 = *a2;
    *v3 = *a2;
    v3 = (v20 + (((v17 | 7) + 16) & ~(v17 | 7)));

    return v3;
  }

  if (v14 + v12 <= v14)
  {
    v22 = ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v22 = v14 + v12;
  }

  v23 = *(a2 + v22);
  v24 = v23 - 3;
  if (v23 >= 3)
  {
    if (v22 <= 3)
    {
      v25 = v22;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *a2;
        if (v22 >= 4)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v25 == 3)
        {
          v26 = *a2 | (*(a2 + 2) << 16);
          if (v22 < 4)
          {
            goto LABEL_34;
          }

LABEL_32:
          v23 = v26 + 3;
          goto LABEL_35;
        }

        v26 = *a2;
        if (v22 >= 4)
        {
          goto LABEL_32;
        }
      }

LABEL_34:
      v23 = (v26 | (v24 << (8 * v22))) + 3;
      goto LABEL_35;
    }

    if (!v25)
    {
      goto LABEL_35;
    }

    v26 = *a2;
    if (v22 < 4)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_35:
  __n = v13;
  v27 = ~v9;
  switch(v23)
  {
    case 2u:
      v51 = v11;
      (*(v4 + 16))(__dst);
      v40 = (v3 + v10) & v27;
      v41 = ((a2 + v10) & v27);
      if ((*(v7 + 48))(v41, 1, v6))
      {
        v42 = ((v3 + v10) & v27);
        v43 = __n;
        memcpy(v42, v41, __n);
      }

      else
      {
        (*(v7 + 16))((v3 + v10) & v27, v41, v6);
        (*(v7 + 56))((v3 + v10) & v27, 0, 1, v6);
        v43 = __n;
      }

      v46 = 7;
      if (!v8)
      {
        v46 = 8;
      }

      *((v12 + v46 + v40) & 0xFFFFFFFFFFFFFFF8) = *((v41 + v12 + v46) & 0xFFFFFFFFFFFFFFF8);
      v47 = ((v51 + v43 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v14 + v12 > v47)
      {
        v47 = v14 + v12;
      }

      if (v14 > v47)
      {
        v47 = v14;
      }

      *(v3 + v47) = 2;
      return v3;
    case 1u:
      (*(v4 + 16))(__dst);
      v34 = (v3 + v10) & v27;
      v35 = ((a2 + v10) & v27);
      if ((*(v7 + 48))(v35, 1, v6))
      {
        v36 = ((v3 + v10) & v27);
        v37 = __n;
        memcpy(v36, v35, __n);
        v38 = *(v7 + 16);
      }

      else
      {
        v38 = *(v7 + 16);
        v38(v34, v35, v6);
        (*(v7 + 56))(v34, 0, 1, v6);
        v37 = __n;
      }

      v44 = ((v34 + v37 + 7) & 0xFFFFFFFFFFFFFFF8);
      v45 = ((v35 + v37 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v44 = *v45;
      v38((v44 + 1), v45 + 1, v6);
      *(v3 + v22) = 1;
      return v3;
    case 0u:
      v50 = v11;
      (*(v4 + 16))(__dst);
      v29 = (v3 + v10) & v27;
      v30 = ((a2 + v10) & v27);
      if ((*(v7 + 48))(v30, 1, v6))
      {
        v31 = ((v3 + v10) & v27);
        v32 = __n;
        memcpy(v31, v30, __n);
      }

      else
      {
        (*(v7 + 16))((v3 + v10) & v27, v30, v6);
        (*(v7 + 56))((v3 + v10) & v27, 0, 1, v6);
        v32 = __n;
      }

      v48 = 7;
      if (!v8)
      {
        v48 = 8;
      }

      *((v12 + v48 + v29) & 0xFFFFFFFFFFFFFFF8) = *((v30 + v12 + v48) & 0xFFFFFFFFFFFFFFF8);
      v49 = ((v50 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v14 + v12 > v49)
      {
        v49 = v14 + v12;
      }

      if (v14 > v49)
      {
        v49 = v14;
      }

      *(v3 + v49) = 0;
      return v3;
  }

  return memcpy(__dst, a2, v22 + 1);
}

unsigned __int8 *sub_21DAF30D0(unsigned __int8 *result, uint64_t a2)
{
  v2 = result;
  v3 = *(*(a2 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v4 + v7;
  v9 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = ((v10 + ((v4 + v7) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v11 + v7) & ~v7) + v9 > v11)
  {
    v11 = ((v11 + v7) & ~v7) + v9;
  }

  v12 = result[v11];
  v13 = v12 - 3;
  if (v12 >= 3)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_20;
      }

      v15 = *result;
    }

    else if (v14 == 2)
    {
      v15 = *result;
    }

    else if (v14 == 3)
    {
      v15 = *result | (result[2] << 16);
    }

    else
    {
      v15 = *result;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 3;
    v12 = v15 + 3;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_20:
  v17 = ~v7;
  v24 = *(*(a2 + 24) - 8);
  if (v12 == 2)
  {
LABEL_23:
    (*(v3 + 8))(result);
    v18 = &v2[v8];
    result = (*(v24 + 48))(v18 & v17, 1, v5);
    if (!result)
    {
      v22 = *(v24 + 8);

      return v22(v18 & v17, v5);
    }

    return result;
  }

  if (v12 != 1)
  {
    if (v12)
    {
      return result;
    }

    goto LABEL_23;
  }

  (*(v3 + 8))(result);
  v19 = &v2[v8] & v17;
  v20 = (*(v24 + 48))(v19, 1, v5);
  v21 = *(v24 + 8);
  if (!v20)
  {
    v23 = *(v24 + 8);
    v21(v19, v5);
    v21 = v23;
  }

  return (v21)((v7 + ((v19 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & v17, v5);
}

void *sub_21DAF3394(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = v4 + v8;
  v10 = (v4 + v8) & ~v8;
  v11 = *(v6 + 84);
  v12 = *(v6 + 64);
  if (v11)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = ((v13 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = (v14 + v8) & ~v8;
  v16 = v15 + v12;
  if (v15 + v12 <= v14)
  {
    v17 = ((v13 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v17 = v15 + v12;
  }

  v18 = a2[v17];
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_21;
      }

      v21 = *a2;
    }

    else if (v20 == 2)
    {
      v21 = *a2;
    }

    else if (v20 == 3)
    {
      v21 = *a2 | (a2[2] << 16);
    }

    else
    {
      v21 = *a2;
    }

    v22 = (v21 | (v19 << (8 * v17))) + 3;
    v18 = v21 + 3;
    if (v17 < 4)
    {
      v18 = v22;
    }
  }

LABEL_21:
  __n = v13;
  v23 = ~v8;
  if (v18 == 2)
  {
    v36 = v11;
    v50 = v10;
    (*(v3 + 16))();
    v53 = a1;
    v39 = ((a1 + v9) & v23);
    v40 = (&a2[v9] & v23);
    if ((*(v7 + 48))(v40, 1, v5))
    {
      v41 = __n;
      memcpy(v39, v40, __n);
    }

    else
    {
      (*(v7 + 16))(v39, v40, v5);
      (*(v7 + 56))(v39, 0, 1, v5);
      v41 = __n;
    }

    v45 = 7;
    if (!v36)
    {
      v45 = 8;
    }

    *((v39 + v12 + v45) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v12 + v45) & 0xFFFFFFFFFFFFFFF8);
    result = v53;
    v46 = ((v50 + v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v16 > v46)
    {
      v46 = v16;
    }

    if (v14 > v46)
    {
      v46 = v14;
    }

    *(v53 + v46) = 2;
  }

  else if (v18 == 1)
  {
    (*(v3 + 16))();
    v52 = a1;
    v32 = ((a1 + v9) & v23);
    v33 = (&a2[v9] & v23);
    if ((*(v7 + 48))(v33, 1, v5))
    {
      v34 = __n;
      memcpy(v32, v33, __n);
      v35 = *(v7 + 16);
    }

    else
    {
      v35 = *(v7 + 16);
      v35(v32, v33, v5);
      (*(v7 + 56))(v32, 0, 1, v5);
      v34 = __n;
    }

    v43 = ((v32 + v34 + 7) & 0xFFFFFFFFFFFFFFF8);
    v44 = ((v33 + v34 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v43 = *v44;
    v35(((v43 + v8 + 8) & v23), ((v44 + v8 + 8) & v23), v5);
    result = v52;
    *(v52 + v17) = 1;
  }

  else if (v18)
  {

    return memcpy(a1, a2, v17 + 1);
  }

  else
  {
    v24 = v11;
    v49 = v10;
    (*(v3 + 16))();
    v51 = a1;
    v27 = ((a1 + v9) & v23);
    v28 = (&a2[v9] & v23);
    if ((*(v7 + 48))(v28, 1, v5))
    {
      v29 = __n;
      memcpy(v27, v28, __n);
    }

    else
    {
      (*(v7 + 16))(v27, v28, v5);
      (*(v7 + 56))(v27, 0, 1, v5);
      v29 = __n;
    }

    v47 = 7;
    if (!v24)
    {
      v47 = 8;
    }

    *((v27 + v12 + v47) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v12 + v47) & 0xFFFFFFFFFFFFFFF8);
    result = v51;
    v48 = ((v49 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v16 > v48)
    {
      v48 = v16;
    }

    if (v14 > v48)
    {
      v48 = v14;
    }

    *(v51 + v48) = 0;
  }

  return result;
}

unsigned __int8 *sub_21DAF3888(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 24);
  v6 = *(*(a3 + 16) - 8);
  v7 = *(v6 + 64);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80);
  v54 = v7 + v9;
  v10 = (v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v48 = *(v8 + 84);
  if (v48)
  {
    v12 = *(*(v5 - 8) + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v51 = v10;
  v13 = ((v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v49 = *(*(v5 - 8) + 64);
  v50 = ((v13 + v9) & ~v9) + v11;
  if (v50 <= v13)
  {
    v14 = ((v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v14 = ((v13 + v9) & ~v9) + v11;
  }

  v15 = __dst[v14];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *__dst;
        if (v14 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v17 == 3)
        {
          v18 = *__dst | (__dst[2] << 16);
          if (v14 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v15 = v18 + 3;
          goto LABEL_24;
        }

        v18 = *__dst;
        if (v14 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v15 = (v18 | (v16 << (8 * v14))) + 3;
      goto LABEL_24;
    }

    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = *__dst;
    if (v14 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_24:
  v19 = ~v9;
  v52 = *(a3 + 16);
  v53 = *(v52 - 8);
  switch(v15)
  {
    case 2u:
      (*(v6 + 8))(__dst);
      if ((*(v8 + 48))(&__dst[v54] & ~v9, 1, v5))
      {
        break;
      }

      goto LABEL_33;
    case 1u:
      v47 = v12;
      (*(v6 + 8))(__dst);
      v20 = &__dst[v54] & v19;
      v21 = (*(v8 + 48))(v20, 1, v5);
      v22 = *(v8 + 8);
      if (!v21)
      {
        v46 = *(v8 + 8);
        v22(v20, v5);
        v22 = v46;
      }

      v23 = v20 + v47;
      v12 = v47;
      v22((v9 + ((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & v19, v5);
      break;
    case 0u:
      (*(v6 + 8))(__dst, *(a3 + 16));
      if (!(*(v8 + 48))(&__dst[v54] & v19, 1, v5))
      {
LABEL_33:
        (*(v8 + 8))(&__dst[v54] & v19, v5);
      }

      break;
  }

  v24 = __src[v14];
  v25 = v24 - 3;
  if (v24 < 3)
  {
    v28 = v52;
    v29 = v53;
    if (v24 == 2)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
  }

  if (v14 <= 3)
  {
    v26 = v14;
  }

  else
  {
    v26 = 4;
  }

  if (v26 <= 1)
  {
    v28 = v52;
    v29 = v53;
    if (!v26)
    {
      goto LABEL_47;
    }

    v27 = *__src;
    if (v14 >= 4)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (v26 == 2)
    {
      v27 = *__src;
    }

    else if (v26 == 3)
    {
      v27 = *__src | (__src[2] << 16);
    }

    else
    {
      v27 = *__src;
    }

    v28 = v52;
    v29 = v53;
    if (v14 >= 4)
    {
LABEL_60:
      v24 = v27 + 3;
      if (v24 == 2)
      {
        goto LABEL_61;
      }

      goto LABEL_48;
    }
  }

  v24 = (v27 | (v25 << (8 * v14))) + 3;
LABEL_47:
  if (v24 == 2)
  {
LABEL_61:
    (*(v29 + 16))(__dst, __src, v28);
    v38 = (&__dst[v54] & v19);
    v39 = (&__src[v54] & v19);
    if ((*(v8 + 48))(v39, 1, v5))
    {
      memcpy(v38, v39, v12);
    }

    else
    {
      (*(v8 + 16))(v38, v39, v5);
      (*(v8 + 56))(v38, 0, 1, v5);
    }

    v42 = 7;
    if (!v48)
    {
      v42 = 8;
    }

    *((v38 + v49 + v42) & 0xFFFFFFFFFFFFFFF8) = *((v39 + v49 + v42) & 0xFFFFFFFFFFFFFFF8);
    v43 = ((v51 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v50 > v43)
    {
      v43 = v50;
    }

    if (v13 > v43)
    {
      v43 = v13;
    }

    __dst[v43] = 2;
    return __dst;
  }

LABEL_48:
  if (v24 == 1)
  {
    (*(v29 + 16))(__dst, __src, v28);
    v32 = v5;
    v33 = (&__dst[v54] & v19);
    v34 = (&__src[v54] & v19);
    if ((*(v8 + 48))(v34, 1, v32))
    {
      memcpy(v33, v34, v12);
      v35 = *(v8 + 16);
      v36 = v12;
    }

    else
    {
      v55 = *(v8 + 16);
      v36 = v12;
      v55(v33, v34, v32);
      (*(v8 + 56))(v33, 0, 1, v32);
      v35 = v55;
    }

    v40 = ((v33 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
    v41 = ((v34 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v40 = *v41;
    v35((v40 + v9 + 8) & v19, (v41 + v9 + 8) & v19, v32);
    __dst[v14] = 1;
    return __dst;
  }

  if (!v24)
  {
    (*(v29 + 16))(__dst, __src, v28);
    v30 = (&__dst[v54] & v19);
    v31 = (&__src[v54] & v19);
    if ((*(v8 + 48))(v31, 1, v5))
    {
      memcpy(v30, v31, v12);
    }

    else
    {
      (*(v8 + 16))(v30, v31, v5);
      (*(v8 + 56))(v30, 0, 1, v5);
    }

    v44 = 7;
    if (!v48)
    {
      v44 = 8;
    }

    *((v30 + v49 + v44) & 0xFFFFFFFFFFFFFFF8) = *((v31 + v49 + v44) & 0xFFFFFFFFFFFFFFF8);
    v45 = ((v51 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v50 > v45)
    {
      v45 = v50;
    }

    if (v13 > v45)
    {
      v45 = v13;
    }

    __dst[v45] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v14 + 1);
}

void *sub_21DAF3FF0(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = v4 + v8;
  v10 = (v4 + v8) & ~v8;
  v11 = *(v6 + 84);
  v12 = *(v6 + 64);
  if (v11)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = ((v13 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = (v14 + v8) & ~v8;
  v16 = v15 + v12;
  if (v15 + v12 <= v14)
  {
    v17 = ((v13 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v17 = v15 + v12;
  }

  v18 = a2[v17];
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_21;
      }

      v21 = *a2;
    }

    else if (v20 == 2)
    {
      v21 = *a2;
    }

    else if (v20 == 3)
    {
      v21 = *a2 | (a2[2] << 16);
    }

    else
    {
      v21 = *a2;
    }

    v22 = (v21 | (v19 << (8 * v17))) + 3;
    v18 = v21 + 3;
    if (v17 < 4)
    {
      v18 = v22;
    }
  }

LABEL_21:
  __n = v13;
  v23 = ~v8;
  if (v18 == 2)
  {
    v36 = v11;
    v50 = v10;
    (*(v3 + 32))();
    v53 = a1;
    v39 = ((a1 + v9) & v23);
    v40 = (&a2[v9] & v23);
    if ((*(v7 + 48))(v40, 1, v5))
    {
      v41 = __n;
      memcpy(v39, v40, __n);
    }

    else
    {
      (*(v7 + 32))(v39, v40, v5);
      (*(v7 + 56))(v39, 0, 1, v5);
      v41 = __n;
    }

    v45 = 7;
    if (!v36)
    {
      v45 = 8;
    }

    *((v39 + v12 + v45) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v12 + v45) & 0xFFFFFFFFFFFFFFF8);
    result = v53;
    v46 = ((v50 + v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v16 > v46)
    {
      v46 = v16;
    }

    if (v14 > v46)
    {
      v46 = v14;
    }

    *(v53 + v46) = 2;
  }

  else if (v18 == 1)
  {
    (*(v3 + 32))();
    v52 = a1;
    v32 = ((a1 + v9) & v23);
    v33 = (&a2[v9] & v23);
    if ((*(v7 + 48))(v33, 1, v5))
    {
      v34 = __n;
      memcpy(v32, v33, __n);
      v35 = *(v7 + 32);
    }

    else
    {
      v35 = *(v7 + 32);
      v35(v32, v33, v5);
      (*(v7 + 56))(v32, 0, 1, v5);
      v34 = __n;
    }

    v43 = ((v32 + v34 + 7) & 0xFFFFFFFFFFFFFFF8);
    v44 = ((v33 + v34 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v43 = *v44;
    v35(((v43 + v8 + 8) & v23), ((v44 + v8 + 8) & v23), v5);
    result = v52;
    *(v52 + v17) = 1;
  }

  else if (v18)
  {

    return memcpy(a1, a2, v17 + 1);
  }

  else
  {
    v24 = v11;
    v49 = v10;
    (*(v3 + 32))();
    v51 = a1;
    v27 = ((a1 + v9) & v23);
    v28 = (&a2[v9] & v23);
    if ((*(v7 + 48))(v28, 1, v5))
    {
      v29 = __n;
      memcpy(v27, v28, __n);
    }

    else
    {
      (*(v7 + 32))(v27, v28, v5);
      (*(v7 + 56))(v27, 0, 1, v5);
      v29 = __n;
    }

    v47 = 7;
    if (!v24)
    {
      v47 = 8;
    }

    *((v27 + v12 + v47) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v12 + v47) & 0xFFFFFFFFFFFFFFF8);
    result = v51;
    v48 = ((v49 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v16 > v48)
    {
      v48 = v16;
    }

    if (v14 > v48)
    {
      v48 = v14;
    }

    *(v51 + v48) = 0;
  }

  return result;
}

unsigned __int8 *sub_21DAF44E4(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 24);
  v6 = *(*(a3 + 16) - 8);
  v7 = *(v6 + 64);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80);
  v54 = v7 + v9;
  v10 = (v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v48 = *(v8 + 84);
  if (v48)
  {
    v12 = *(*(v5 - 8) + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v51 = v10;
  v13 = ((v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v49 = *(*(v5 - 8) + 64);
  v50 = ((v13 + v9) & ~v9) + v11;
  if (v50 <= v13)
  {
    v14 = ((v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v14 = ((v13 + v9) & ~v9) + v11;
  }

  v15 = __dst[v14];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *__dst;
        if (v14 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v17 == 3)
        {
          v18 = *__dst | (__dst[2] << 16);
          if (v14 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v15 = v18 + 3;
          goto LABEL_24;
        }

        v18 = *__dst;
        if (v14 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v15 = (v18 | (v16 << (8 * v14))) + 3;
      goto LABEL_24;
    }

    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = *__dst;
    if (v14 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_24:
  v19 = ~v9;
  v52 = *(a3 + 16);
  v53 = *(v52 - 8);
  switch(v15)
  {
    case 2u:
      (*(v6 + 8))(__dst);
      if ((*(v8 + 48))(&__dst[v54] & ~v9, 1, v5))
      {
        break;
      }

      goto LABEL_33;
    case 1u:
      v47 = v12;
      (*(v6 + 8))(__dst);
      v20 = &__dst[v54] & v19;
      v21 = (*(v8 + 48))(v20, 1, v5);
      v22 = *(v8 + 8);
      if (!v21)
      {
        v46 = *(v8 + 8);
        v22(v20, v5);
        v22 = v46;
      }

      v23 = v20 + v47;
      v12 = v47;
      v22((v9 + ((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & v19, v5);
      break;
    case 0u:
      (*(v6 + 8))(__dst, *(a3 + 16));
      if (!(*(v8 + 48))(&__dst[v54] & v19, 1, v5))
      {
LABEL_33:
        (*(v8 + 8))(&__dst[v54] & v19, v5);
      }

      break;
  }

  v24 = __src[v14];
  v25 = v24 - 3;
  if (v24 < 3)
  {
    v28 = v52;
    v29 = v53;
    if (v24 == 2)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
  }

  if (v14 <= 3)
  {
    v26 = v14;
  }

  else
  {
    v26 = 4;
  }

  if (v26 <= 1)
  {
    v28 = v52;
    v29 = v53;
    if (!v26)
    {
      goto LABEL_47;
    }

    v27 = *__src;
    if (v14 >= 4)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (v26 == 2)
    {
      v27 = *__src;
    }

    else if (v26 == 3)
    {
      v27 = *__src | (__src[2] << 16);
    }

    else
    {
      v27 = *__src;
    }

    v28 = v52;
    v29 = v53;
    if (v14 >= 4)
    {
LABEL_60:
      v24 = v27 + 3;
      if (v24 == 2)
      {
        goto LABEL_61;
      }

      goto LABEL_48;
    }
  }

  v24 = (v27 | (v25 << (8 * v14))) + 3;
LABEL_47:
  if (v24 == 2)
  {
LABEL_61:
    (*(v29 + 32))(__dst, __src, v28);
    v38 = (&__dst[v54] & v19);
    v39 = (&__src[v54] & v19);
    if ((*(v8 + 48))(v39, 1, v5))
    {
      memcpy(v38, v39, v12);
    }

    else
    {
      (*(v8 + 32))(v38, v39, v5);
      (*(v8 + 56))(v38, 0, 1, v5);
    }

    v42 = 7;
    if (!v48)
    {
      v42 = 8;
    }

    *((v38 + v49 + v42) & 0xFFFFFFFFFFFFFFF8) = *((v39 + v49 + v42) & 0xFFFFFFFFFFFFFFF8);
    v43 = ((v51 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v50 > v43)
    {
      v43 = v50;
    }

    if (v13 > v43)
    {
      v43 = v13;
    }

    __dst[v43] = 2;
    return __dst;
  }

LABEL_48:
  if (v24 == 1)
  {
    (*(v29 + 32))(__dst, __src, v28);
    v32 = v5;
    v33 = (&__dst[v54] & v19);
    v34 = (&__src[v54] & v19);
    if ((*(v8 + 48))(v34, 1, v32))
    {
      memcpy(v33, v34, v12);
      v35 = *(v8 + 32);
      v36 = v12;
    }

    else
    {
      v55 = *(v8 + 32);
      v36 = v12;
      v55(v33, v34, v32);
      (*(v8 + 56))(v33, 0, 1, v32);
      v35 = v55;
    }

    v40 = ((v33 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
    v41 = ((v34 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v40 = *v41;
    v35((v40 + v9 + 8) & v19, (v41 + v9 + 8) & v19, v32);
    __dst[v14] = 1;
    return __dst;
  }

  if (!v24)
  {
    (*(v29 + 32))(__dst, __src, v28);
    v30 = (&__dst[v54] & v19);
    v31 = (&__src[v54] & v19);
    if ((*(v8 + 48))(v31, 1, v5))
    {
      memcpy(v30, v31, v12);
    }

    else
    {
      (*(v8 + 32))(v30, v31, v5);
      (*(v8 + 56))(v30, 0, 1, v5);
    }

    v44 = 7;
    if (!v48)
    {
      v44 = 8;
    }

    *((v30 + v49 + v44) & 0xFFFFFFFFFFFFFFF8) = *((v31 + v49 + v44) & 0xFFFFFFFFFFFFFFF8);
    v45 = ((v51 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v50 > v45)
    {
      v45 = v50;
    }

    if (v13 > v45)
    {
      v45 = v13;
    }

    __dst[v45] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v14 + 1);
}

uint64_t sub_21DAF4C4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v6 = *(v3 + 64);
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = ((v6 + ((*(*(*(a3 + 16) - 8) + 64) + v4) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((v7 + v4) & ~v4) + v5;
  if (v8 > v7)
  {
    v7 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_28;
  }

  v9 = v7 + 1;
  v10 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 252) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 < 2)
    {
LABEL_28:
      v15 = *(a1 + v7);
      if (v15 >= 4)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_17:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 253;
}

void sub_21DAF4DD4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = ((v8 + ((*(*(*(a4 + 16) - 8) + 64) + v6) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = ((v9 + v6) & ~v6) + v7;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  v11 = v10 + 1;
  if (a3 < 0xFD)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 252) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFC)
  {
    v13 = a2 - 253;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_42:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v10] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_27;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_21DAF4FFC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v2 + 84))
  {
    v5 = *(v2 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  v6 = ((v5 + ((*(*(*(a2 + 16) - 8) + 64) + v3) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = ((v6 + v3) & ~v3) + v4;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = a1[v6];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v6 <= 3)
    {
      v10 = v6;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        return v8;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v6))) + 3;
    LODWORD(v8) = v11 + 3;
    if (v6 >= 4)
    {
      return v8;
    }

    else
    {
      return v12;
    }
  }

  return v8;
}

void sub_21DAF510C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  if (*(v4 + 84))
  {
    v7 = *(v4 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  v8 = ((v7 + ((*(*(*(a3 + 16) - 8) + 64) + v5) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = ((v8 + v5) & ~v5) + v6;
  if (v9 <= v8)
  {
    v9 = v8;
  }

  if (a2 <= 2)
  {
    a1[v9] = a2;
    return;
  }

  v10 = a2 - 3;
  if (v9 < 4)
  {
    a1[v9] = (v10 >> (8 * v9)) + 3;
    if (!v9)
    {
      return;
    }

    v10 &= ~(-1 << (8 * v9));
  }

  else
  {
    a1[v9] = 3;
  }

  if (v9 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v9;
  }

  bzero(a1, v9);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      *a1 = v10;
      a1[2] = BYTE2(v10);
    }

    else
    {
      *a1 = v10;
    }
  }

  else if (v11 == 1)
  {
    *a1 = v10;
  }

  else
  {
    *a1 = v10;
  }
}

void *sub_21DAF527C(void *a1, void *a2)
{
  v40[0] = sub_21DBFB7EC();
  v4 = *(v40[0] - 1);
  MEMORY[0x28223BE20](v40[0]);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBFB95C();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v40 - v11;
  v13 = off_282EE8DE8[0];

  v14 = sub_21DBFA12C();
  v15 = [objc_opt_self() systemImageNamed_];

  if (qword_280D166F0 != -1)
  {
    swift_once();
  }

  v40[2] = unk_280D16700;
  v40[3] = qword_280D166F8;
  if (qword_280D16768 != -1)
  {
    swift_once();
  }

  v40[4] = *algn_280D16778;
  v40[5] = qword_280D16770;
  v16 = MEMORY[0x277D85000];
  v17 = (a2 + *((*MEMORY[0x277D85000] & *a2) + 0x68));
  *v17 = a1;
  v17[1] = v13;
  *(a2 + *((*v16 & *a2) + 0x70)) = 1132068864;
  *(a2 + *((*v16 & *a2) + 0x60)) = 0;

  sub_21DBFB8EC();
  v18 = [objc_opt_self() quaternarySystemFillColor];
  v40[1] = a1;
  v19 = sub_21DBFB79C();
  sub_21DBF883C();
  v19(v44, 0);
  (*(v4 + 104))(v6, *MEMORY[0x277D74FD8], v40[0]);
  sub_21DBFB7FC();
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v20 = sub_21D900614(7);
  v21 = [objc_opt_self() configurationWithFont:v20 scale:2];

  sub_21DBFB78C();
  v40[0] = v15;
  sub_21DBFB8FC();
  sub_21DBFB80C();
  sub_21DBFB87C();
  type metadata accessor for TTRIReminderCellQuickBarPopoverAnchoringButton();
  v22 = v41;
  (*(v41 + 16))(v9, v12, v42);
  v23 = sub_21DBFB96C();
  v24 = MEMORY[0x277D85000];
  *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78)) = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE667D0);
  v43.receiver = a2;
  v43.super_class = v25;
  v26 = objc_msgSendSuper2(&v43, sel_init);
  v27 = *((*v24 & *v26) + 0x78);
  v28 = *(v26 + v27);
  v29 = v26;
  v30 = v28;
  sub_21D5D809C(v30);

  [*(v26 + v27) setShowsMenuAsPrimaryAction_];
  v31 = *(v26 + v27);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = v31;

  v34 = _sSo6UIMenuC15RemindersUICoreE12ttr_uncached7options_ABSo0A7OptionsV_ABSgyctFZ_0(0, sub_21D1AA09C, v32);

  [v33 setMenu_];

  [*(v26 + v27) setPreferredMenuElementOrder_];
  v35 = *(v26 + v27);
  v36 = sub_21DBFA12C();
  [v35 setAccessibilityLabel_];

  v37 = *(v26 + v27);
  v38 = sub_21DBFA12C();
  [v37 setAccessibilityHint_];

  (*(v22 + 8))(v12, v42);
  return v29;
}

void *sub_21DAF5860(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRIReminderCellQuickBarHashtagsInteractor();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = type metadata accessor for TTRIReminderCellQuickBarHashtagsRouter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[3] = v4;
  v18[4] = &off_282EE8DF0;
  v18[0] = v5;
  type metadata accessor for TTRIReminderCellQuickBarHashtagsPresenter();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = *v10;
  v6[14] = v4;
  v6[15] = &off_282EE8DF0;
  v6[11] = v12;
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v6[5] = 0;
  swift_unknownObjectWeakInit();
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[9] = v3;
  v6[10] = &off_282EE8DF8;

  __swift_destroy_boxed_opaque_existential_0(v18);
  v13 = objc_allocWithZone(type metadata accessor for TTRIReminderCellQuickBarHashtagsViewController());

  v15 = sub_21DAF527C(v14, v13);

  *(v3 + 24) = &off_282EE8DC8;
  swift_unknownObjectWeakAssign();

  v6[3] = sub_21DAF5A90();
  swift_unknownObjectWeakAssign();
  v6[5] = a2;
  swift_unknownObjectWeakAssign();
  return v15;
}

unint64_t sub_21DAF5A90()
{
  result = qword_27CE667C8;
  if (!qword_27CE667C8)
  {
    type metadata accessor for TTRIReminderCellQuickBarHashtagsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE667C8);
  }

  return result;
}

uint64_t sub_21DAF5AE8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t type metadata accessor for TTRIReminderCellQuickBarHashtagsViewController()
{
  result = qword_27CE667D8;
  if (!qword_27CE667D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21DAF5B9C(uint64_t a1)
{
  result = sub_21DAF5BC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21DAF5BC4()
{
  result = qword_27CE667E8;
  if (!qword_27CE667E8)
  {
    type metadata accessor for TTRIReminderCellQuickBarHashtagsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE667E8);
  }

  return result;
}

uint64_t sub_21DAF5C1C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate);
    swift_beginAccess();
    v2 = v1[3];
    if (v2 && (v3 = __swift_project_boxed_opaque_existential_1(v1, v2), v4 = *v3, v5 = *v3 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 104))(v4, ObjectType, v6);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v8)
      {
        return v8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_21D1DE990();
  return sub_21DBFB58C();
}

uint64_t sub_21DAF5D54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[8];
  *(v1 + 3) = *a1;
  v1[8] = v2;
  sub_21D60E724(v4, v3, v5);
  v6 = v1[8];
  if (v6)
  {
    if (v6 >> 62)
    {
      v7 = sub_21DBFBD7C();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v7 = 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = v1[3];
    ObjectType = swift_getObjectType();
    v11 = v7 > 0;
    (*(*(v9 + 8) + 24))(&v11, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DAF5E20()
{
  sub_21D157444((v0 + 2));
  sub_21D157444((v0 + 4));
  sub_21D60E724(v0[6], v0[7], v0[8]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 11));

  return swift_deallocClassInstance();
}

uint64_t sub_21DAF5F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, void)@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v38 - v12;
  v14 = sub_21DBF509C();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v38 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v38 - v24;
  v46 = a1;
  if (a1)
  {
    v40 = a3;
    v41 = v10;
    v38[1] = v4;
    v42 = a4;
    v26 = sub_21DBF5A2C();
    v27 = *(v26 - 8);
    v28 = v43;
    v39 = *(v27 + 48);
    v29 = v39(v43, 1, v26);
    v38[0] = v27;
    v30 = (v27 + 56);
    if (v29 == 1)
    {
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v31 = *v30;
      (*v30)(v25, 0, 1, v26);
    }

    else
    {
      sub_21D0D3954(v28, v25, &qword_27CE5A8B0);
      v31 = *v30;
    }

    v31(v22, 1, 1, v26);
    v35 = sub_21DBF5C4C();
    (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
    sub_21DBF504C();
    v40(v46, 0);
    sub_21D0D3954(v25, v19, &qword_27CE5A8B0);
    if (v39(v19, 1, v26) == 1)
    {
      (*(v44 + 8))(v16, v45);
      sub_21D0CF7E0(v25, &qword_27CE5A8B0);
      sub_21D0CF7E0(v19, &qword_27CE5A8B0);
      v36 = sub_21DBF563C();
      v37 = v41;
      (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
    }

    else
    {
      v37 = v41;
      sub_21DBF598C();
      (*(v44 + 8))(v16, v45);
      sub_21D0CF7E0(v25, &qword_27CE5A8B0);
      (*(v38[0] + 8))(v19, v26);
    }

    return sub_21D46CA8C(v37, v42);
  }

  else
  {
    v32 = sub_21DBF563C();
    v46 = *(v32 - 8);
    (*(v46 + 16))(a4, v4, v32);
    v33 = *(v46 + 56);

    return v33(a4, 0, 1, v32);
  }
}

uint64_t Date.rem_isToday.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v6 - v1);
  v3 = sub_21DBF5C4C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_21DAF79F0(v2);
  sub_21D0CF7E0(v2, &unk_27CE60DB0);
  return v4 & 1;
}

uint64_t Date.rem_dateByAdding(days:inCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  v10 = sub_21DBF509C();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v28 - v17;
  v19 = sub_21DBF5A2C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  if (a1)
  {
    v28[0] = v4;
    v28[1] = a3;
    sub_21D0D3954(v29, v18, &qword_27CE5A8B0);
    v23 = *(v20 + 48);
    if (v23(v18, 1, v19) == 1)
    {
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      if (v23(v18, 1, v19) != 1)
      {
        sub_21D0CF7E0(v18, &qword_27CE5A8B0);
      }
    }

    else
    {
      (*(v20 + 32))(v22, v18, v19);
    }

    (*(v20 + 56))(v15, 1, 1, v19);
    v27 = sub_21DBF5C4C();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    sub_21DBF504C();
    sub_21DBF4F1C();
    sub_21DBF598C();
    (*(v30 + 8))(v12, v31);
    return (*(v20 + 8))(v22, v19);
  }

  else
  {
    v24 = sub_21DBF563C();
    v32 = *(v24 - 8);
    (*(v32 + 16))(a3, v4, v24);
    v25 = *(v32 + 56);

    return v25(a3, 0, 1, v24);
  }
}

void Date.init(debug_parsedFrom:)()
{
  v0 = sub_21DBF582C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_21DBF56FC();
  v5 = sub_21DBF574C();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  v6 = sub_21DBFA12C();
  [v4 setDateFormat_];

  [v4 setLenient_];
  v7 = sub_21DBFA12C();
  v8 = [v4 dateFromString_];

  if (v8)
  {

    sub_21DBF55FC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t Date.rem_dateBySetting(hours:inCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v28 = a3;
  v4 = sub_21DBF5A0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_21DBF5A2C();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14;
  v17 = v16;
  sub_21D0D3954(a2, v10, &qword_27CE5A8B0);
  v18 = *(v15 + 48);
  v19 = v18(v10, 1, v17);
  v26 = v15;
  v27 = v17;
  if (v19 == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    if (v18(v10, 1, v17) != 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5A8B0);
    }
  }

  else
  {
    (*(v15 + 32))(v13, v10, v17);
  }

  v20 = *MEMORY[0x277CC9980];
  v21 = *(v5 + 104);
  v21(v7, v20, v4);
  v22 = sub_21DBF5A1C();
  v23 = *(v5 + 8);
  result = v23(v7, v4);
  if (__OFSUB__(v29, v22))
  {
    __break(1u);
  }

  else
  {
    v21(v7, v20, v4);
    sub_21DBF599C();
    v23(v7, v4);
    return (*(v26 + 8))(v13, v27);
  }

  return result;
}

uint64_t Date.rem_dateRoundedToNearestFifteenMinutes(inCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v25 - v4;
  v25 = sub_21DBF5A0C();
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = sub_21DBF5A2C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1, 1, v14);
  v26 = a1;
  if (v17 == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    (*(v15 + 56))(v13, 0, 1, v14);
  }

  else
  {
    sub_21D0D3954(a1, v13, &qword_27CE5A8B0);
  }

  sub_21D0D3954(v13, v10, &qword_27CE5A8B0);
  if (v16(v10, 1, v14) == 1)
  {
    result = sub_21D0CF7E0(v10, &qword_27CE5A8B0);
    __break(1u);
  }

  else
  {
    v18 = v25;
    (*(v5 + 104))(v7, *MEMORY[0x277CC99A0], v25);
    v19 = sub_21DBF5A1C();
    (*(v5 + 8))(v7, v18);
    (*(v15 + 8))(v10, v14);
    v20 = sub_21DBF563C();
    v21 = v28;
    (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
    v22 = 15;
    if (v19 % 15 < 8)
    {
      v22 = 0;
    }

    v23 = v27;
    Date.rem_dateByAdding(minutes:inCalendar:)(v22 - v19 % 15, v26, v27);
    sub_21D0CF7E0(v21, &qword_27CE58D68);
    sub_21D0CF7E0(v13, &qword_27CE5A8B0);
    return sub_21D46CA8C(v23, v21);
  }

  return result;
}

uint64_t Date.rem_dateFlooredToNearestMinute(inCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  v3 = sub_21DBF58EC();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_21DBF592C();
  v5 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF58AC();
  v8 = *(v7 - 8);
  v55 = v7;
  v56 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF563C();
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v41 - v21;
  v23 = sub_21DBF509C();
  v44 = *(v23 - 8);
  v45 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21DBF5A2C();
  (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
  v27 = sub_21DBF5C4C();
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  sub_21DBF504C();
  v42 = v2;
  v43 = v13;
  sub_21DBF559C();
  (*(v56 + 104))(v10, *MEMORY[0x277CC9878], v55);
  v28 = v47;
  v29 = v50;
  (*(v5 + 104))(v47, *MEMORY[0x277CC9900], v50);
  v30 = v51;
  v31 = v52;
  v32 = v46;
  (*(v51 + 104))(v46, *MEMORY[0x277CC98E8], v52);
  sub_21DBF59EC();
  (*(v30 + 8))(v32, v31);
  v33 = *(v5 + 8);
  v34 = v29;
  v36 = v48;
  v35 = v49;
  v33(v28, v34);
  (*(v56 + 8))(v10, v55);
  (*(v36 + 8))(v43, v35);
  (*(v44 + 8))(v25, v45);
  v37 = *(v36 + 48);
  if (v37(v16, 1, v35) == 1)
  {
    v38 = v54;
    (*(v36 + 16))(v54, v42, v35);
    v39 = v38;
    if (v37(v16, 1, v35) != 1)
    {
      sub_21D0CF7E0(v16, &qword_27CE58D68);
    }
  }

  else
  {
    v39 = v54;
    (*(v36 + 32))(v54, v16, v35);
  }

  return (*(v36 + 56))(v39, 0, 1, v35);
}

uint64_t sub_21DAF79F0(void (*a1)(char *, uint64_t))
{
  v67 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10);
  MEMORY[0x28223BE20](v69);
  v2 = &v60 - v1;
  v74 = sub_21DBF563C();
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v77 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v60 - v8;
  MEMORY[0x28223BE20](v9);
  v82 = &v60 - v10;
  v11 = sub_21DBF509C();
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x28223BE20](v11);
  v78 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v60 - v16;
  v18 = sub_21DBF5C4C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - v23;
  v25 = sub_21DBF5A2C();
  v70 = *(v25 - 8);
  v71 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  sub_21D0D3954(v67, v17, &unk_27CE60DB0);
  v28 = (*(v19 + 48))(v17, 1, v18);
  v75 = v2;
  v60 = v6;
  v80 = v27;
  if (v28 == 1)
  {
    sub_21D0CF7E0(v17, &unk_27CE60DB0);
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    (*(v19 + 16))(v21, v24, v18);
    sub_21DBF59FC();
    (*(v19 + 8))(v24, v18);
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
  v29 = sub_21DBF5A0C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v66 = 3 * v31;
  v62 = 2 * v31;
  v33 = swift_allocObject();
  v65 = xmmword_21DC08D10;
  *(v33 + 16) = xmmword_21DC08D10;
  v64 = *MEMORY[0x277CC9988];
  v34 = *(v30 + 104);
  v34(v33 + v32);
  v63 = *MEMORY[0x277CC9998];
  v34(v33 + v32 + v31);
  v61 = *MEMORY[0x277CC9968];
  v34(v33 + v32 + 2 * v31);
  sub_21D1D0F50(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_21DBF58DC();

  v35 = v82;
  sub_21DBF597C();
  v36 = swift_allocObject();
  *(v36 + 16) = v65;
  v37 = v36 + v32;
  (v34)(v37, v64, v29);
  (v34)(v37 + v31, v63, v29);
  (v34)(v37 + v62, v61, v29);
  sub_21D1D0F50(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v38 = v77;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v39 = v78;
  sub_21DBF58DC();

  v40 = v76;
  v41 = v74;
  v67 = *(v76 + 8);
  v68 = v76 + 8;
  v67(v38, v74);
  v42 = v79;
  sub_21DBF597C();
  v43 = *(v69 + 48);
  v44 = v35;
  v45 = v75;
  sub_21D0D3954(v44, v75, &qword_27CE58D68);
  sub_21D0D3954(v42, v45 + v43, &qword_27CE58D68);
  v46 = *(v40 + 48);
  v47 = v41;
  if (v46(v45, 1, v41) != 1)
  {
    v51 = v60;
    sub_21D0D3954(v45, v60, &qword_27CE58D68);
    if (v46(v45 + v43, 1, v41) != 1)
    {
      v54 = v45 + v43;
      v55 = v77;
      (*(v76 + 32))(v77, v54, v41);
      sub_21D721DC4();
      v50 = sub_21DBFA10C();
      v56 = v67;
      v67(v55, v41);
      sub_21D0CF7E0(v79, &qword_27CE58D68);
      v57 = v73;
      v58 = *(v72 + 8);
      v58(v78, v73);
      sub_21D0CF7E0(v82, &qword_27CE58D68);
      v58(v81, v57);
      (*(v70 + 8))(v80, v71);
      v56(v51, v41);
      sub_21D0CF7E0(v45, &qword_27CE58D68);
      return v50 & 1;
    }

    sub_21D0CF7E0(v79, &qword_27CE58D68);
    v52 = v73;
    v53 = *(v72 + 8);
    v53(v78, v73);
    sub_21D0CF7E0(v82, &qword_27CE58D68);
    v53(v81, v52);
    (*(v70 + 8))(v80, v71);
    v67(v51, v41);
    goto LABEL_9;
  }

  sub_21D0CF7E0(v42, &qword_27CE58D68);
  v48 = v73;
  v49 = *(v72 + 8);
  v49(v39, v73);
  sub_21D0CF7E0(v82, &qword_27CE58D68);
  v49(v81, v48);
  (*(v70 + 8))(v80, v71);
  if (v46(v45 + v43, 1, v47) != 1)
  {
LABEL_9:
    sub_21D0CF7E0(v45, &qword_27CE5BE10);
    v50 = 0;
    return v50 & 1;
  }

  sub_21D0CF7E0(v45, &qword_27CE58D68);
  v50 = 1;
  return v50 & 1;
}

uint64_t Date.rem_isToday(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v9 - v3);
  v5 = sub_21DBF5C4C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v7 = sub_21DAF79F0(v4);
  sub_21D0CF7E0(v4, &unk_27CE60DB0);
  return v7 & 1;
}

uint64_t static Date.rem_startOfTomorrow.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_21DBF58EC();
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x28223BE20](v1);
  v53 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21DBF592C();
  v43 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF58AC();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF563C();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF5A2C();
  v11 = *(v10 - 8);
  v44 = v10;
  v45 = v11;
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v13 - 8);
  v46 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v41 - v19;
  v21 = sub_21DBF509C();
  v47 = *(v21 - 8);
  v48 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v57 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 56))(v20, 1, 1, v10, v22);
  v24 = sub_21DBF5C4C();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  sub_21DBF504C();
  v25 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  v41 = v9;
  sub_21DBF560C();
  v26 = v6;
  v27 = v4;
  (*(v58 + 104))(v6, *MEMORY[0x277CC9878], v4);
  v28 = v43;
  v29 = v49;
  v30 = v52;
  (*(v43 + 104))(v49, *MEMORY[0x277CC9900], v52);
  v32 = v53;
  v31 = v54;
  v33 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x277CC98E8], v55);
  v34 = v46;
  v35 = v26;
  v36 = v42;
  sub_21DBF59EC();
  (*(v31 + 8))(v32, v33);
  (*(v28 + 8))(v29, v30);
  (*(v58 + 8))(v35, v27);
  v38 = v50;
  v37 = v51;
  (*(v50 + 8))(v41, v51);
  (*(v45 + 8))(v36, v44);
  v39 = *(v38 + 48);
  if (v39(v34, 1, v37) == 1)
  {
    sub_21DBF560C();
    (*(v47 + 8))(v57, v48);
    result = v39(v34, 1, v37);
    if (result != 1)
    {
      return sub_21D0CF7E0(v34, &qword_27CE58D68);
    }
  }

  else
  {
    (*(v47 + 8))(v57, v48);
    return (*(v38 + 32))(v56, v34, v37);
  }

  return result;
}

uint64_t sub_21DAF8C8C(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v2 = *a2;
  v3 = sub_21DBF55BC();
  v4 = [v2 stringFromDate_];

  v5 = sub_21DBFA16C();
  return v5;
}

id sub_21DAF8D28()
{
  result = sub_21DAF8D48();
  qword_280D1B868 = result;
  return result;
}

id sub_21DAF8D48()
{
  v0 = sub_21DBF582C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v6 = sub_21DBFA12C();

  sub_21DBF57AC();
  v7 = sub_21DBF574C();
  (*(v1 + 8))(v3, v0);
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:v7];

  [v4 setDateFormat_];
  return v4;
}

id sub_21DAF8F38()
{
  result = sub_21DAF8F58();
  qword_280D171C0 = result;
  return result;
}

id sub_21DAF8F58()
{
  v0 = sub_21DBF582C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = objc_opt_self();
  v6 = sub_21DBFA12C();
  v7 = [objc_opt_self() currentLocale];
  sub_21DBF577C();

  v8 = sub_21DBF574C();
  (*(v1 + 8))(v3, v0);
  v9 = [v5 dateFormatFromTemplate:v6 options:0 locale:v8];

  [v4 setDateFormat_];
  return v4;
}

__n128 TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X4>, char *a5@<X5>, char a6@<W6>, char *a7@<X7>, uint64_t a8@<X8>, uint64_t a9, char a10)
{
  v10 = *(a3 + 16);
  *(a8 + 16) = *a3;
  *(a8 + 32) = v10;
  *(a8 + 48) = *(a3 + 32);
  v11 = *(a9 + 16);
  *(a8 + 72) = *a9;
  v12 = *(a3 + 48);
  v13 = *a4;
  v14 = *a5;
  v15 = *a7;
  v16 = *(a9 + 48);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 64) = v12;
  *(a8 + 66) = v13;
  *(a8 + 65) = v14;
  *(a8 + 67) = a6;
  *(a8 + 68) = v15;
  *(a8 + 88) = v11;
  result = *(a9 + 32);
  *(a8 + 104) = result;
  *(a8 + 120) = v16;
  *(a8 + 121) = a10;
  return result;
}

uint64_t sub_21DAF9150()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21DAF9258()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21DAF9384()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t TTRRemindersListViewModel.Item.treeItemIdentifier.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v24 - v8);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1055C4(v2, v12, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        if (EnumCaseMultiPayload == 9)
        {
          v20 = 3;
        }

        else
        {
          v20 = 5;
        }

        *a1 = v20;
        goto LABEL_17;
      }

      v22 = 4;
    }

    *a1 = v22;
    type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    swift_storeEnumTagMultiPayload();
    return sub_21D107038(v12, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  if ((EnumCaseMultiPayload - 2) >= 3)
  {
    if (EnumCaseMultiPayload < 2)
    {
      sub_21DAF98D8(v12, v18, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D1055C4(v18, v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v21 = 1 << swift_getEnumCaseMultiPayload();
      if ((v21 & 0x17E) != 0)
      {
        sub_21D107038(v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
      }

      else if ((v21 & 0x81) == 0)
      {
        sub_21D107038(v18, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        *v9 = *v6;
        swift_storeEnumTagMultiPayload();
        goto LABEL_22;
      }

      sub_21D1055C4(v18, v9, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D107038(v18, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
LABEL_22:
      sub_21DAF98D8(v9, a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
      type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_21D107038(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    *a1 = 0;
LABEL_17:
    type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_21DAF98D8(v12, v15, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21DAF98D8(v15, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21DAF98D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TTRRemindersListViewModel.Item.sectionHeader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1055C4(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21DAF98D8(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v7 = 0;
  }

  else
  {
    sub_21D107038(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    v7 = 1;
  }

  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t TTRRemindersListViewModel.ReminderID.init(objectID:groupID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  return sub_21D0D523C(a2, a3 + *(v5 + 20), &unk_27CE5CD70);
}

uint64_t TTRRemindersListViewModel.Reminder.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 28));
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 string];
  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t TTRRemindersListViewModel.Reminder.init(item:reminderAndList:precomputedProperties:overrides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v232 = a4;
  v240 = a1;
  v241 = a2;
  v253 = type metadata accessor for TTRRemindersListViewModel.Reminder.Override(0);
  v221 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v230 = &v220 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v8 - 8);
  v233 = (&v220 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v10 - 8);
  v225 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v246 = &v220 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v220 - v15;
  v243 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v17 = *(v243 - 1);
  MEMORY[0x28223BE20](v243);
  v19 = (&v220 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a3;
  v249 = *(a3 + 8);
  v250 = v20;
  v21 = *(a3 + 16);
  v242 = *(a3 + 24);
  v247 = *(a3 + 32);
  v248 = v21;
  v22 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v23 = (a5 + v22[9]);
  *v23 = 0;
  v23[1] = 0;
  v239 = v23;
  v24 = (a5 + v22[10]);
  *v24 = 0;
  v24[1] = 0;
  v238 = v24;
  v25 = v22[11];
  v26 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v223 = *(v26 - 8);
  v224 = v26;
  v27 = *(v223 + 56);
  v245 = v25;
  v27(a5 + v25, 1, 1);
  v28 = a5 + v22[13];
  *(v28 + 48) = 0;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v222 = v22[24];
  *(a5 + v222) = 2;
  v29 = a5 + v22[31];
  *v29 = 0;
  *(v29 + 8) = 0;
  v244 = v29;
  *(v29 + 16) = 0;
  v30 = (a5 + v22[32]);
  *v30 = 0;
  v30[1] = 0;
  v227 = v30;
  v30[2] = 0;
  v31 = a5 + v22[34];
  sub_21D639910(&v279);
  v32 = v292;
  *(v31 + 192) = v291;
  *(v31 + 208) = v32;
  *(v31 + 224) = v293;
  v33 = v288;
  *(v31 + 128) = v287;
  *(v31 + 144) = v33;
  v34 = v290;
  *(v31 + 160) = v289;
  *(v31 + 176) = v34;
  v35 = v284;
  *(v31 + 64) = v283;
  *(v31 + 80) = v35;
  v36 = v286;
  *(v31 + 96) = v285;
  *(v31 + 112) = v36;
  v37 = v280;
  *v31 = v279;
  *(v31 + 16) = v37;
  v38 = v282;
  *(v31 + 32) = v281;
  *(v31 + 48) = v38;
  v231 = v31;
  v39 = a5 + v22[37];
  *v39 = xmmword_21DC19C40;
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  v40 = (a5 + v22[38]);
  *v40 = 0;
  v40[1] = 0;
  v229 = v40;
  v40[2] = 0;
  *(a5 + v22[40]) = 2;
  v251 = v22;
  v252 = a5;
  *(a5 + v22[41]) = 1;
  v41 = v241;
  sub_21D0D32E4(v241, v276);
  v42 = v41[5];
  if (v42)
  {
    *(&v255 + 1) = sub_21D0D8CF0(0, &qword_280D17690);
    *&v256 = &protocol witness table for REMList;
    *&v254 = v42;
    sub_21D0D0FD0(&v254, v275);
  }

  else
  {
    *&v256 = 0;
    v254 = 0u;
    v255 = 0u;
    v43 = v41[3];
    v44 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v43);
    (*(v44 + 184))(v275, v43, v44);
    if (*(&v255 + 1))
    {
      sub_21D0CF7E0(&v254, &qword_27CE59DC0);
    }
  }

  v45 = v249;
  v46 = v243;
  if (v247)
  {
    v47 = v42;
  }

  else
  {
    sub_21D0D32E4(v276, &v269);
    v273 = 3;
    v48 = v42;
    TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v269, &v273, &v254);
    v45 = *(&v254 + 1);
    v250 = v254;
    v248 = v255;
    v242 = *(&v255 + 1);
    v247 = v256;
  }

  sub_21D0D3954(v240, v16, &unk_27CE5CD80);
  v51 = *(v17 + 48);
  v49 = (v17 + 48);
  v50 = v51;
  if (v51(v16, 1, v46) == 1)
  {
    v52 = v277;
    v53 = v278;
    __swift_project_boxed_opaque_existential_1(v276, v277);
    v54 = *(v53 + 8);
    v249 = v49;
    v55 = v45;
    v56 = v46;
    v57 = v54(v52, v53);
    v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    (*(*(v59 - 8) + 56))(v19 + v58, 1, 1, v59);
    *v19 = v57;
    swift_storeEnumTagMultiPayload();
    v60 = v56;
    v45 = v55;
    v61 = v50(v16, 1, v60);
    v63 = v251;
    v62 = v252;
    if (v61 != 1)
    {
      sub_21D0CF7E0(v16, &unk_27CE5CD80);
    }
  }

  else
  {
    sub_21DAF98D8(v16, v19, type metadata accessor for TTRRemindersListViewModel.Item);
    v63 = v251;
    v62 = v252;
  }

  sub_21DAF98D8(v19, v62, type metadata accessor for TTRRemindersListViewModel.Item);
  v64 = v277;
  v65 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  *(v62 + v63[5]) = (*(v65 + 8))(v64, v65);
  v66 = v250;
  v67 = v250;
  if (!v250)
  {
    v68 = v277;
    v69 = v278;
    __swift_project_boxed_opaque_existential_1(v276, v277);
    v67 = (*(v69 + 40))(v68, v69);
    v66 = v250;
  }

  v70 = (v62 + v63[12]);
  *(v62 + v63[7]) = v67;
  v71 = qword_280D15938;
  v228 = v66;
  if (v71 != -1)
  {
    swift_once();
  }

  v72 = HIBYTE(word_280D15940);
  v73 = byte_280D15942;
  v74 = qword_280D15948;
  v75 = qword_280D15950;
  v76 = word_280D15958;
  v77 = HIBYTE(word_280D15958);
  v78 = v62 + v63[6];
  *v78 = word_280D15940;
  *(v78 + 1) = v72;
  *(v78 + 2) = v73;
  *(v78 + 8) = v74;
  *(v78 + 16) = v75;
  *(v78 + 24) = v76;
  *(v78 + 25) = v77;
  v79 = v277;
  v80 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  v81 = *(v80 + 64);
  sub_21DBF8E0C();
  v82 = v252;
  v83 = v81(v79, v80);
  v84 = v251;
  v237 = v251[8];
  *(v82 + v237) = v83 & 1;
  v85 = v246;
  static TTRRemindersListViewModel.Reminder.displayDate(from:dateHidden:)(v276, 0, v246);
  sub_21DB130E8(v85, v82 + v245);
  *v70 = _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV16urgentIconString4fromSSSgAA19TTRReminderProtocol_p_tFZ_0(v276);
  v70[1] = v86;
  v87 = v277;
  v88 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  TTRReminderProtocol.mostRelevantLocationRelatedTrigger()(v87, v88, &v269);
  v273 = v269;
  v274 = BYTE8(v269);
  sub_21DB06570(&v273, &v254);
  sub_21D157864(v273, v274);
  v89 = v256;
  LOBYTE(v80) = v257;
  sub_21D4B94BC(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24));
  v90 = v255;
  *v28 = v254;
  *(v28 + 16) = v90;
  *(v28 + 32) = v89;
  *(v28 + 48) = v80;
  v91 = v277;
  v92 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  v93 = (*(v92 + 24))(v91, v92);
  LOBYTE(v91) = [v93 supportsLocation];

  *(v82 + v84[14]) = v91;
  v94 = v45;
  if (!v45)
  {
    v95 = v277;
    v96 = v278;
    __swift_project_boxed_opaque_existential_1(v276, v277);
    v94 = (*(v96 + 56))(v95, v96);
  }

  v97 = v84[15];
  v243 = (v82 + v84[23]);
  *(v82 + v97) = v94;
  *(v82 + v84[18]) = 0;
  type metadata accessor for TTRListColors();
  v226 = v45;
  static TTRListColors.color(for:)(v275, &v254);
  v98 = v254;
  v100 = *(&v255 + 1);
  v99 = v255;
  v101 = v84;
  v102 = v256;
  v103 = v257;
  v269 = v254;
  v270 = v255;
  v271 = v256;
  v272 = v257;
  v104 = TTRListColors.Color.nativeColor.getter();
  v105 = v99;
  v106 = v252;
  sub_21D1078C0(v98, *(&v98 + 1), v105, v100, v102, *(&v102 + 1), v103);
  v236 = v84[20];
  *(v106 + v236) = v104;
  v235 = v84[21];
  *(v106 + v235) = v104;
  v107 = objc_opt_self();
  v250 = v104;
  v108 = [v107 secondaryLabelColor];
  v234 = v84[22];
  v249 = v108;
  *(v106 + v234) = v108;
  v110 = v242;
  v109 = v243;
  *v243 = 0;
  *(v109 + 8) = 1;
  *(v106 + v222) = 2;
  v111 = v106 + v101[35];
  v112 = v247;
  *v111 = v248 & 1;
  *(v111 + 8) = v110;
  *(v111 + 16) = v112;
  v113 = v277;
  v114 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  v115 = *(v114 + 32);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v116 = v115(v113, v114);
  v117 = v116;
  if (v116)
  {
  }

  v118 = v251;
  *(v106 + v251[25]) = v117 != 0;
  v119 = v277;
  v120 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  (*(v120 + 200))(&v269, v119, v120);
  v121 = v224;
  if (*(&v270 + 1))
  {
    sub_21D0D0FD0(&v269, &v254);
    v122 = *(&v255 + 1);
    v123 = v256;
    __swift_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
    *(v106 + v118[26]) = (*(v123 + 8))(v122, v123) > 0;
    __swift_destroy_boxed_opaque_existential_0(&v254);
  }

  else
  {
    sub_21D0CF7E0(&v269, &qword_27CE5D100);
    *(v106 + v118[26]) = 2;
  }

  v124 = v230;
  v125 = v277;
  v126 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  *(v106 + v118[27]) = TTRReminderProtocol.priorityLevel.getter(v125, v126);
  v127 = v277;
  v128 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  v129 = (*(v128 + 24))(v127, v128);
  v130 = [v129 defaultReminderPriorityLevel];

  *(v106 + v118[28]) = v130;
  v131 = v277;
  v132 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  *(v106 + v118[29]) = (*(v132 + 120))(v131, v132) & 1;
  v133 = v277;
  v134 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  v135 = (*(v134 + 136))(v133, v134);
  v136 = v225;
  sub_21D0D3954(v246, v225, &unk_27CE5F2B0);
  if ((*(v223 + 48))(v136, 1, v121) == 1)
  {
    sub_21D0CF7E0(v136, &unk_27CE5F2B0);
    v137 = sub_21DBF563C();
    v138 = v233;
    (*(*(v137 - 8) + 56))(v233, 1, 1, v137);
  }

  else
  {
    v139 = *(v121 + 24);
    v140 = sub_21DBF563C();
    v141 = *(v140 - 8);
    v142 = v136 + v139;
    v138 = v233;
    (*(v141 + 16))(v233, v142, v140);
    sub_21D107038(v136, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
    (*(v141 + 56))(v138, 0, 1, v140);
  }

  v143 = v232;
  v144 = (v106 + v118[30]);
  v145 = _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV21recurrenceDescription4from11displayDateSSSgSaySo17REMRecurrenceRuleCGSg_10Foundation0L0VSgtFZ_0(v135, v138);
  v147 = v146;

  sub_21D0CF7E0(v138, &qword_27CE58D68);
  *v144 = v145;
  v144[1] = v147;
  v233 = v144;
  v248 = v147;
  sub_21D0D3954(v275, &v254, &qword_27CE59DC0);
  v148 = *(&v255 + 1);
  if (*(&v255 + 1))
  {
    v149 = v256;
    __swift_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
    v150 = (*(v149 + 32))(v148, v149);
    v152 = v151;
    __swift_destroy_boxed_opaque_existential_0(&v254);
  }

  else
  {
    sub_21D0CF7E0(&v254, &qword_27CE59DC0);
    v150 = 0;
    v152 = 0xE000000000000000;
  }

  v153 = v244;

  *v153 = v150;
  *(v153 + 8) = v152;
  *(v153 + 16) = 1;
  v154 = v277;
  v155 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  v156 = (*(v155 + 24))(v154, v155);
  LODWORD(v154) = [v156 supportsAssignments];

  if (!v154)
  {
    goto LABEL_38;
  }

  sub_21D0D3954(v275, &v269, &qword_27CE59DC0);
  v157 = *(&v270 + 1);
  if (!*(&v270 + 1))
  {
    v165 = &qword_27CE59DC0;
    v166 = &v269;
LABEL_37:
    sub_21D0CF7E0(v166, v165);
LABEL_38:
    v164 = 0;
    v163 = v251;
    goto LABEL_39;
  }

  v158 = v271;
  __swift_project_boxed_opaque_existential_1(&v269, *(&v270 + 1));
  (*(v158 + 96))(&v254, v157, v158);
  v159 = *(&v255 + 1);
  if (!*(&v255 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v269);
    v165 = &qword_27CE62630;
    v166 = &v254;
    goto LABEL_37;
  }

  v160 = v256;
  __swift_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
  v161 = (*(v160 + 8))(v159, v160);
  if (v161 >> 62)
  {
    v162 = sub_21DBFBD7C();
  }

  else
  {
    v162 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v163 = v251;

  v164 = v162 != 0;
  __swift_destroy_boxed_opaque_existential_0(&v254);
  __swift_destroy_boxed_opaque_existential_0(&v269);
LABEL_39:
  *(v106 + v163[33]) = v164;
  v167 = v277;
  v168 = v278;
  __swift_project_boxed_opaque_existential_1(v276, v277);
  v169 = (*(v168 + 24))(v167, v168);
  LOBYTE(v167) = [v169 supportsTextStyling];

  *(v106 + v163[36]) = v167;
  sub_21D0D3954(v275, &v269, &qword_27CE59DC0);
  v170 = *(&v270 + 1);
  if (*(&v270 + 1))
  {
    v171 = v271;
    __swift_project_boxed_opaque_existential_1(&v269, *(&v270 + 1));
    v172 = (*(v171 + 8))(v170, v171);
    __swift_destroy_boxed_opaque_existential_0(&v269);
  }

  else
  {
    sub_21D0CF7E0(&v269, &qword_27CE59DC0);
    v172 = 0;
  }

  v173 = v251;
  v174 = v251[16];
  v175 = v251[17];
  v176 = (v106 + v251[39]);
  *(v106 + v251[42]) = v172;
  *v176 = 0;
  v176[1] = 0;
  *(v106 + v174) = 0;
  *(v106 + v175) = 0;
  *(v106 + v173[19]) = 0;
  v177 = v227;
  sub_21D1576C8(*v227, v227[1], v227[2]);
  *v177 = 0;
  v177[1] = 0;
  v177[2] = 0;
  v178 = v231;
  v179 = *(v231 + 208);
  v266 = *(v231 + 192);
  v267 = v179;
  v268 = *(v231 + 224);
  v180 = *(v231 + 144);
  v262 = *(v231 + 128);
  v263 = v180;
  v181 = *(v231 + 176);
  v264 = *(v231 + 160);
  v265 = v181;
  v182 = *(v231 + 80);
  v258 = *(v231 + 64);
  v259 = v182;
  v183 = *(v231 + 112);
  v260 = *(v231 + 96);
  v261 = v183;
  v184 = *(v231 + 16);
  v254 = *v231;
  v255 = v184;
  v185 = *(v231 + 48);
  v256 = *(v231 + 32);
  v257 = v185;
  sub_21D0CF7E0(&v254, &unk_27CE5FB50);
  v186 = v292;
  *(v178 + 192) = v291;
  *(v178 + 208) = v186;
  *(v178 + 224) = v293;
  v187 = v288;
  *(v178 + 128) = v287;
  *(v178 + 144) = v187;
  v188 = v290;
  *(v178 + 160) = v289;
  *(v178 + 176) = v188;
  v189 = v284;
  *(v178 + 64) = v283;
  *(v178 + 80) = v189;
  v190 = v286;
  *(v178 + 96) = v285;
  *(v178 + 112) = v190;
  v191 = v280;
  *v178 = v279;
  *(v178 + 16) = v191;
  v192 = v282;
  *(v178 + 32) = v281;
  *(v178 + 48) = v192;
  v193 = v229;
  sub_21D6388A4(*v229);
  *v193 = 0;
  v193[1] = 0;
  v193[2] = 0;
  *(v106 + v173[43]) = 0;
  *(v106 + v173[45]) = 0;
  v194 = *(v143 + 16);
  if (v194)
  {
    v251 = 0;
    v195 = 0;
    v196 = v143 + ((*(v221 + 80) + 32) & ~*(v221 + 80));
    v197 = *(v221 + 72);
    v198 = v250;
    v231 = v197;
    do
    {
      sub_21D1055C4(v196, v124, type metadata accessor for TTRRemindersListViewModel.Reminder.Override);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          v209 = *v124;
          if (EnumCaseMultiPayload == 5)
          {

            *(v106 + v235) = v209;
            v250 = v209;
          }

          else
          {

            *(v106 + v234) = v209;
            v249 = v209;
          }
        }

        else if (EnumCaseMultiPayload == 7)
        {
          v199 = *v124;
          v200 = *(v124 + 8);

          v201 = v239;
          *v239 = v199;
          v201[1] = v200;
          v195 = v200;
        }

        else if (EnumCaseMultiPayload == 8)
        {
          v206 = *v124;
          v207 = *(v124 + 8);

          v208 = v238;
          *v238 = v206;
          v208[1] = v207;
          v251 = v207;
        }

        else
        {
          v218 = v243;
          *v243 = *v124;
          *(v218 + 8) = 0;
        }
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_21D0F02F4(v124, v106 + v245, &unk_27CE5F2B0);
        }

        else
        {
          *(v106 + v237) = *v124;
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v211 = *v124;
        v210 = *(v124 + 8);
        v212 = *(v124 + 16);
        v213 = v124;
        v214 = v198;
        v215 = v195;
        v216 = v244;

        *v216 = v211;
        *(v216 + 8) = v210;
        v106 = v252;
        *(v216 + 16) = v212;
        v195 = v215;
        v198 = v214;
        v124 = v213;
        v197 = v231;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v203 = *v124;
        v204 = *(v124 + 8);

        v205 = v233;
        *v233 = v203;
        v205[1] = v204;
        v248 = v204;
      }

      else
      {
        v217 = *v124;

        *(v106 + v236) = v217;
        v198 = v217;
      }

      v196 += v197;
      --v194;
    }

    while (v194);
  }

  sub_21D0CF7E0(v240, &unk_27CE5CD80);
  sub_21D0CF7E0(v246, &unk_27CE5F2B0);
  sub_21D0CF7E0(v275, &qword_27CE59DC0);
  sub_21D4ECC40(v241);
  return __swift_destroy_boxed_opaque_existential_0(v276);
}

uint64_t TTRRemindersListViewModel.Reminder.identifier.getter()
{
  v1 = [*(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 20)) stringRepresentation];
  v2 = sub_21DBFA16C();

  return v2;
}

uint64_t static TTRRemindersListViewModel.Reminder.displayDate(from:dateHidden:)@<X0>(void *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v6 = sub_21DBF563C();
  v111 = *(v6 - 8);
  v112 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v108 = v97 - v10;
  v11 = sub_21DBF604C();
  v106 = *(v11 - 1);
  v107 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF5C4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v104 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v103 = v97 - v18;
  MEMORY[0x28223BE20](v19);
  v109 = v97 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v21 - 8);
  v113 = v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = v97 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v97 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = (*(v29 + 104))(v28, v29);
  if (v30)
  {
    v31 = v30;
    v102 = v15;
    v34 = *(v15 + 56);
    v32 = v15 + 56;
    v33 = v34;
    v105 = v27;
    v34(v27, 1, 1, v14);
    v35 = [v31 isAllDay];
    v36 = v14;
    if (a2)
    {
      if (v35)
      {
        LODWORD(v108) = 0;
        v104 = 0;
        v37 = 0;
        v106 = 0;
        v107 = 0;
        goto LABEL_42;
      }

      v42 = [v31 isAllDay];
      v97[0] = v33;
      if (v42)
      {
        if (qword_27CE57140 != -1)
        {
          swift_once();
        }

        v41 = &qword_27CE66818;
      }

      else
      {
        if (qword_280D14230 != -1)
        {
          swift_once();
        }

        v41 = &qword_280D14238;
      }
    }

    else
    {
      v97[0] = v33;
      if (v35)
      {
        if (qword_27CE57138 != -1)
        {
          swift_once();
        }

        v41 = &qword_27CE66810;
      }

      else
      {
        if (qword_280D194D8 != -1)
        {
          swift_once();
        }

        v41 = &qword_280D194E0;
      }
    }

    v43 = *v41;
    v44 = [v31 isAllDay];
    v99 = v8;
    v97[1] = v32;
    if (a2)
    {
      if (v44)
      {
        if (qword_27CE57140 != -1)
        {
          swift_once();
        }

        v45 = &qword_27CE66818;
      }

      else
      {
        if (qword_280D14230 != -1)
        {
          swift_once();
        }

        v45 = &qword_280D14238;
      }
    }

    else if (v44)
    {
      if (qword_27CE57158 != -1)
      {
        swift_once();
      }

      v45 = &qword_27CE66828;
    }

    else
    {
      if (qword_280D14220 != -1)
      {
        swift_once();
      }

      v45 = &qword_280D14228;
    }

    v46 = *v45;
    v47 = objc_opt_self();
    v98 = v46;
    v48 = [v47 defaultTimeZone];
    v49 = v109;
    sub_21DBF5C2C();

    v51 = v106;
    v50 = v107;
    (*(v106 + 104))(v13, *MEMORY[0x277D44DC0], v107);
    LOBYTE(v48) = sub_21DBF603C();
    (*(v51 + 8))(v13, v50);
    v52 = v102;
    v100 = v36;
    if (v48)
    {
      v53 = [v31 timeZone];
      if (v53)
      {
        v107 = v43;
        LODWORD(v106) = a2;
        v54 = v104;
        v55 = v53;
        sub_21DBF5C2C();

        v56 = v103;
        (*(v52 + 32))(v103, v54, v36);
        v57 = v108;
        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
        v58 = sub_21DBF5BFC();
        v59 = *(v111 + 8);
        v60 = v112;
        v59(v57, v112);
        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
        v61 = sub_21DBF5BFC();
        v59(v57, v60);
        if (v58 != v61)
        {
          v87 = v52;
          v75 = v105;
          sub_21D0CF7E0(v105, &unk_27CE60DB0);
          v88 = v56;
          v89 = v100;
          (*(v87 + 16))(v75, v88, v100);
          (v97[0])(v75, 0, 1, v89);
          v90 = v101;
          sub_21D0D3954(v75, v101, &unk_27CE60DB0);
          if ((*(v87 + 48))(v90, 1, v89) == 1)
          {
            v91 = 0;
          }

          else
          {
            v91 = sub_21DBF5C0C();
            (*(v87 + 8))(v90, v89);
          }

          v8 = v99;
          v92 = v107;
          [v107 setTimeZone_];

          v93 = v98;
          v94 = v98;
          v95 = v109;
          sub_21DB13AA8(v31, v109, v106 & 1, v92, v93, v114);
          v106 = v114[1];
          v107 = v114[0];
          v37 = v114[3];
          v104 = v114[2];
          LODWORD(v108) = v115;

          v96 = *(v87 + 8);
          v96(v103, v89);
          v96(v95, v89);
          goto LABEL_43;
        }

        (*(v52 + 8))(v56, v100);
        v49 = v109;
        v43 = v107;
      }
    }

    v62 = sub_21DBF5C0C();
    [v43 setTimeZone_];

    v63 = sub_21DBF5C0C();
    v64 = v98;
    [v98 setTimeZone_];

    v65 = [v31 dateByAdjustingFloatingDateForDefaultTimeZone];
    v66 = v108;
    sub_21DBF55FC();

    v67 = sub_21DBF55BC();
    v68 = v43;
    v69 = [v43 stringFromDate_];

    v70 = sub_21DBFA16C();
    v106 = v71;
    v107 = v70;

    v72 = sub_21DBF55BC();
    v73 = [v64 stringFromDate_];

    v104 = sub_21DBFA16C();
    v37 = v74;

    (*(v111 + 8))(v66, v112);
    (*(v52 + 8))(v49, v100);
    LODWORD(v108) = 0;
    v8 = v99;
LABEL_42:
    v75 = v105;
LABEL_43:
    v76 = [v31 date];
    v77 = v8;
    sub_21DBF55FC();

    sub_21D0D3954(v75, v113, &unk_27CE60DB0);
    v78 = [v31 isAllDay];
    v79 = v110;
    v80 = v110[3];
    v81 = v110[4];
    __swift_project_boxed_opaque_existential_1(v110, v80);
    if ((*(v81 + 64))(v80, v81))
    {
      sub_21D0CF7E0(v75, &unk_27CE60DB0);

      v82 = 0;
    }

    else
    {
      v83 = v79[3];
      v84 = v79[4];
      __swift_project_boxed_opaque_existential_1(v79, v83);
      v82 = (*(v84 + 112))(v83, v84);

      sub_21D0CF7E0(v75, &unk_27CE60DB0);
    }

    v85 = v106;
    *a3 = v107;
    *(a3 + 1) = v85;
    *(a3 + 2) = v104;
    *(a3 + 3) = v37;
    v86 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
    (*(v111 + 32))(&a3[v86[6]], v77, v112);
    sub_21D0D523C(v113, &a3[v86[7]], &unk_27CE60DB0);
    a3[v86[8]] = v78;
    a3[v86[9]] = v82 & 1;
    a3[v86[10]] = v108;
    return (*(*(v86 - 1) + 56))(a3, 0, 1, v86);
  }

  v38 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v39 = *(*(v38 - 8) + 56);

  return v39(a3, 1, 1, v38);
}

uint64_t TTRReminderTitleWithHarvestedAttributes.init(title:highlightedRanges:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TTRRemindersListViewModel.AssignmentData.assignmentString.getter()
{
  if ((*(v0 + 224) & 2) == 0)
  {
    return 0;
  }

  v1 = *(v0 + 176);
  v26 = *(v0 + 160);
  v27 = v1;
  v2 = *(v0 + 208);
  v28 = *(v0 + 192);
  v29 = v2;
  v3 = *(v0 + 112);
  v22 = *(v0 + 96);
  v23 = v3;
  v4 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = v4;
  v5 = *(v0 + 48);
  v21[2] = *(v0 + 32);
  v21[3] = v5;
  v6 = *(v0 + 80);
  v21[4] = *(v0 + 64);
  v21[5] = v6;
  v7 = *(v0 + 16);
  v21[0] = *v0;
  v21[1] = v7;
  if (sub_21D157494(v21) == 1)
  {
    return 0;
  }

  v20[3] = v27;
  v20[4] = v28;
  v20[5] = v29;
  v19[5] = v23;
  v20[0] = v24;
  v20[1] = v25;
  v20[2] = v26;
  v9 = v23;
  if (v23)
  {
    v16 = v26;
    v17 = v27;
    v18 = v28;
    v14 = v24;
    v15 = v25;
    sub_21D1D9B34(v20, v19);
    v10 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
    countAndFlagsBits = v10._countAndFlagsBits;
    object = v10._object;
    v19[2] = v16;
    v19[3] = v17;
    v19[4] = v18;
    v19[0] = v14;
    v19[1] = v15;
    sub_21D1D9B90(v19);
    v9 = v29;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v13 = sub_21DACF058(v22, v9 & 1, countAndFlagsBits, object);

  return v13;
}

void static TTRRemindersListViewModel.reminderDescription(baseAttributes:dateAttributes:listNameToShow:dateString:recurrenceString:urgentIconString:assignmentString:ttrAccessibilityOverdueIconString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
  if (!a4)
  {
    v22 = 0x277CCA000uLL;
    if (!a6)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21DB15960(&qword_280D17790, type metadata accessor for Key);
  v19 = sub_21DBF9E5C();
  v20 = [v17 initWithString:v18 attributes:v19];

  swift_beginAccess();
  v21 = v20;
  MEMORY[0x223D42D80]();
  if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();
  v16 = v68;
  swift_endAccess();

  v22 = 0x277CCA000;
  if (a6)
  {
LABEL_7:
    v23 = v22;
    v24 = objc_allocWithZone(*(v22 + 2200));
    swift_bridgeObjectRetain_n();
    v25 = sub_21DBFA12C();
    type metadata accessor for Key(0);
    sub_21DB15960(&qword_280D17790, type metadata accessor for Key);
    v26 = sub_21DBF9E5C();
    v27 = [v24 &selRef:v25 constraintEqualToAnchor:v26];

    v28 = sub_21DB0D414(v27, a13, a14);
    swift_beginAccess();
    v29 = v28;
    MEMORY[0x223D42D80]();
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v16 = v68;
    swift_endAccess();

    swift_bridgeObjectRelease_n();
    v22 = v23;
  }

LABEL_10:
  if (a8)
  {
    v30 = objc_allocWithZone(*(v22 + 2200));
    v31 = sub_21DBFA12C();
    type metadata accessor for Key(0);
    sub_21DB15960(&qword_280D17790, type metadata accessor for Key);
    v32 = sub_21DBF9E5C();
    v33 = [v30 &selRef:v31 constraintEqualToAnchor:v32];

    swift_beginAccess();
    v34 = v33;
    MEMORY[0x223D42D80]();
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v16 = v68;
    swift_endAccess();
  }

  if (a10)
  {
    v35 = objc_allocWithZone(*(v22 + 2200));
    v36 = sub_21DBFA12C();
    type metadata accessor for Key(0);
    sub_21DB15960(&qword_280D17790, type metadata accessor for Key);
    v37 = sub_21DBF9E5C();
    v38 = [v35 &selRef:v36 constraintEqualToAnchor:v37];

    swift_beginAccess();
    v39 = v38;
    MEMORY[0x223D42D80]();
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v16 = v68;
    swift_endAccess();
  }

  if (a12)
  {
    v40 = objc_allocWithZone(*(v22 + 2200));
    v41 = sub_21DBFA12C();
    type metadata accessor for Key(0);
    sub_21DB15960(&qword_280D17790, type metadata accessor for Key);
    v42 = sub_21DBF9E5C();
    v43 = [v40 &selRef:v41 constraintEqualToAnchor:v42];

    swift_beginAccess();
    v44 = v43;
    MEMORY[0x223D42D80]();
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v16 = v68;
    swift_endAccess();
  }

  v45 = v16 >> 62;
  if (v16 >> 62)
  {
    if (!sub_21DBFBD7C())
    {
      goto LABEL_51;
    }

    if (sub_21DBFBD7C() == 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v46 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v46)
    {
      goto LABEL_51;
    }

    if (v46 == 1)
    {
LABEL_25:
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D44740](0, v16);
        goto LABEL_51;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        *(v16 + 32);
LABEL_51:

        return;
      }

      goto LABEL_59;
    }
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v47 = objc_allocWithZone(*(v22 + 2200));
  v48 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  sub_21DB15960(&qword_280D17790, type metadata accessor for Key);
  v49 = sub_21DBF9E5C();
  v50 = [v47 &selRef:v48 constraintEqualToAnchor:{v49, 0x800000021DC4CFE0}];

  if ((v16 & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x223D44740](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v51 = *(v16 + 32);
  }

  v52 = v51;
  v53 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  if (!v45)
  {
    v54 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v54 != 0;
    if (v54 >= v55)
    {
LABEL_37:
      if ((v16 & 0xC000000000000001) != 0 && v54 > 1)
      {
        sub_21D0D8CF0(0, &qword_280D177E0);
        sub_21DBF8E0C();
        v56 = v55;
        do
        {
          v57 = v56 + 1;
          sub_21DBFBF6C();
          v56 = v57;
        }

        while (v54 != v57);
        if (!v45)
        {
LABEL_42:
          v58 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
          v59 = __OFSUB__(v54, v55);
          v61 = v54 - v55;
          v60 = (v61 < 0) ^ v59 | (v61 == 0);
          if (!v61)
          {
            goto LABEL_50;
          }

LABEL_47:
          if (v60)
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v64 = (v58 + 8 * v55);
          do
          {
            v65 = *v64++;
            v66 = v65;
            [v53 appendAttributedString_];
            [v53 appendAttributedString_];

            --v61;
          }

          while (v61);
LABEL_50:

          swift_unknownObjectRelease();
          goto LABEL_51;
        }
      }

      else
      {
        sub_21DBF8E0C();
        if (!v45)
        {
          goto LABEL_42;
        }
      }

      sub_21DBFC3BC();
      v55 = v62;
      v61 = (v63 >> 1) - v62;
      v60 = (v63 >> 1) <= v62;
      if (v63 >> 1 == v62)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    goto LABEL_58;
  }

  v67 = sub_21DBFBD7C();
  if ((v67 & 0x8000000000000000) == 0)
  {
    v54 = v67;
    v55 = v67 != 0;
    if (sub_21DBFBD7C() >= v55)
    {
      if (sub_21DBFBD7C() >= v54)
      {
        goto LABEL_37;
      }

      __break(1u);
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_62:
  __break(1u);
}

__n128 TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_21DAF98D8(a1, a9, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v18 = a9 + v17[5];
  v19 = *(a2 + 80);
  *(v18 + 64) = *(a2 + 64);
  *(v18 + 80) = v19;
  *(v18 + 96) = *(a2 + 96);
  *(v18 + 106) = *(a2 + 106);
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v20;
  result = *(a2 + 32);
  v22 = *(a2 + 48);
  *(v18 + 32) = result;
  *(v18 + 48) = v22;
  *(a9 + v17[6]) = a3;
  *(a9 + v17[7]) = a4;
  *(a9 + v17[8]) = a5;
  *(a9 + v17[9]) = a6;
  *(a9 + v17[10]) = a7;
  *(a9 + v17[11]) = a8;
  return result;
}

uint64_t TTRRemindersListViewModel.ItemID.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_21DBF521C();
  swift_allocObject();
  sub_21DBF520C();
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21DB15960(&qword_280D14270, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21DBF51EC();

  return sub_21D17B8A8(a1, a2);
}

uint64_t TTRRemindersListViewModel.ItemID.dataRepresentation()()
{
  sub_21DBF525C();
  swift_allocObject();
  sub_21DBF524C();
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21DB15960(&qword_280D14278, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v0 = sub_21DBF522C();

  return v0;
}

uint64_t TTRRemindersListViewModel.LocationData.title.getter()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC08D00;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_21D17A884();
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  sub_21DBF8E0C();

  return sub_21DBFA17C();
}

uint64_t TTRRemindersListViewModel.ImageAttachment.init(attachmentID:fileURL:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  result = sub_21D0D523C(a2, a4 + *(v7 + 20), &qword_27CE5EA20);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t TTRRemindersListViewModel.LinkAttachment.init(attachmentID:url:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  v8 = *(v7 + 20);
  v9 = sub_21DBF54CC();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t TTRRemindersListViewModel.PersonData.init(name:contact:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

RemindersUICore::TTRRemindersListViewModel::AppLink __swiftcall TTRRemindersListViewModel.AppLink.init(icon:name:)(UIImage icon, Swift::String_optional name)
{
  *v2 = icon;
  *(v2 + 8) = name;
  result.name = name;
  result.icon = icon;
  return result;
}

__n128 TTRRemindersListViewModel.AssignmentData.init(assignment:visibleElements:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a1 + 176);
  *(a3 + 160) = *(a1 + 160);
  *(a3 + 176) = v4;
  v5 = *(a1 + 208);
  *(a3 + 192) = *(a1 + 192);
  *(a3 + 208) = v5;
  v6 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v6;
  v7 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v7;
  v8 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v8;
  v9 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v9;
  result = *a1;
  v11 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v11;
  *(a3 + 224) = v3;
  return result;
}

id TTRRemindersListViewModel.Item.reminderObjectID.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D1055C4(v1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
LABEL_6:
    sub_21D107038(v4, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) < 2)
  {
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return 0;
  }

LABEL_10:
  sub_21DAF98D8(v4, v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  if (swift_getEnumCaseMultiPayload() < 3)
  {
    sub_21DAF98D8(v7, v10, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v13 = *v10;
    sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    return v13;
  }

  return 0;
}

void *TTRRemindersListViewModel.Reminder.init(item:objectID:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v6 - 8);
  v102 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v74 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a1;
  sub_21D0D3954(a1, v10, &unk_27CE5CD80);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    (*(*(v17 - 8) + 56))(&v14[v16], 1, 1, v17);
    *v14 = a2;
    swift_storeEnumTagMultiPayload();
    v18 = v15(v10, 1, v11);
    v19 = a2;
    if (v18 != 1)
    {
      sub_21D0CF7E0(v10, &unk_27CE5CD80);
    }
  }

  else
  {
    sub_21DAF98D8(v10, v14, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  v101 = a2;
  if (qword_280D15938 != -1)
  {
    swift_once();
  }

  v100 = v14;
  v93 = HIBYTE(word_280D15940);
  v94 = word_280D15940;
  v92 = byte_280D15942;
  v20 = qword_280D15950;
  v91 = qword_280D15948;
  v89 = HIBYTE(word_280D15958);
  v90 = word_280D15958;
  v21 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v102, 1, 1, v21);
  v23 = qword_280D1BAC0;
  v95 = v20;
  sub_21DBF8E0C();
  if (v23 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v107 = xmmword_280D1BAC8;
  v108 = xmmword_280D1BAD8;
  v109 = xmmword_280D1BAE8;
  v110 = byte_280D1BAF8;
  v88 = TTRListColors.Color.nativeColor.getter();
  v103 = xmmword_280D1BAC8;
  v104 = xmmword_280D1BAD8;
  v105 = xmmword_280D1BAE8;
  v106 = byte_280D1BAF8;
  v87 = TTRListColors.Color.nativeColor.getter();
  v85 = [objc_opt_self() secondaryLabelColor];
  sub_21D639910(&v111);
  if (qword_280D15470 != -1)
  {
    swift_once();
  }

  v99 = byte_280D15478;
  v96 = unk_280D15488;
  v97 = qword_280D15480;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D0CF7E0(v98, &unk_27CE5CD80);
  v24 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v25 = v24[7];
  v26 = v24[10];
  v75 = (a3 + v24[9]);
  v76 = (a3 + v26);
  v77 = v25;
  v78 = v24[11];
  v22(a3 + v78, 1, 1, v21);
  v27 = v24[13];
  v74 = (a3 + v24[12]);
  v28 = a3 + v27;
  *(v28 + 48) = 0;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v29 = v24[15];
  v80 = v24[16];
  v81 = v29;
  v79 = v24[17];
  v30 = v24[23];
  *(a3 + v24[24]) = 2;
  v82 = (a3 + v30);
  v31 = v24[31];
  v83 = (a3 + v24[30]);
  v32 = a3 + v31;
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  v33 = a3 + v24[32];
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  v34 = a3 + v24[34];
  v35 = v124;
  *(v34 + 192) = v123;
  *(v34 + 208) = v35;
  *(v34 + 224) = v125;
  v36 = v120;
  *(v34 + 128) = v119;
  *(v34 + 144) = v36;
  v37 = v122;
  *(v34 + 160) = v121;
  *(v34 + 176) = v37;
  v38 = v116;
  *(v34 + 64) = v115;
  *(v34 + 80) = v38;
  v39 = v118;
  *(v34 + 96) = v117;
  *(v34 + 112) = v39;
  v40 = v112;
  *v34 = v111;
  *(v34 + 16) = v40;
  v41 = v114;
  *(v34 + 32) = v113;
  *(v34 + 48) = v41;
  v42 = (a3 + v24[37]);
  v84 = xmmword_21DC19C40;
  *v42 = xmmword_21DC19C40;
  v42[2] = 0;
  v42[3] = 0;
  v43 = a3 + v24[38];
  *v43 = 0;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  v44 = v24[40];
  v86 = (a3 + v24[39]);
  *(a3 + v44) = 2;
  v45 = v24[42];
  v98 = v24[41];
  *(a3 + v45) = 0;
  sub_21DAF98D8(v100, a3, type metadata accessor for TTRRemindersListViewModel.Item);
  *(a3 + v24[5]) = v101;
  v46 = a3 + v24[6];
  v47 = v93;
  *v46 = v94;
  *(v46 + 1) = v47;
  *(v46 + 2) = v92;
  v48 = v95;
  *(v46 + 8) = v91;
  *(v46 + 16) = v48;
  LOBYTE(v48) = v89;
  *(v46 + 24) = v90;
  *(v46 + 25) = v48;
  *(a3 + v77) = 0;
  *(a3 + v24[8]) = 0;
  v50 = v75;
  v49 = v76;
  *v75 = 0;
  v50[1] = 0;
  *v49 = 0;
  v49[1] = 0;
  sub_21D0F02F4(v102, a3 + v78, &unk_27CE5F2B0);
  v51 = v74;
  *v74 = 0;
  v51[1] = 0;
  sub_21D4B94BC(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24));
  *(v28 + 48) = 0;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  *(a3 + v24[14]) = 0;
  v52 = v80;
  *(a3 + v81) = 0;
  *(a3 + v52) = 0;
  *(a3 + v79) = 0;
  *(a3 + v24[18]) = 0;
  *(a3 + v24[19]) = 0;
  v53 = v87;
  *(a3 + v24[20]) = v88;
  *(a3 + v24[21]) = v53;
  *(a3 + v24[22]) = v85;
  v54 = v82;
  *v82 = 0;
  *(v54 + 8) = 1;
  *(a3 + v24[25]) = 0;
  *(a3 + v24[26]) = 2;
  *(a3 + v24[27]) = 0;
  *(a3 + v24[28]) = 0;
  *(a3 + v24[29]) = 0;
  v55 = v83;
  *v83 = 0;
  v55[1] = 0;

  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  sub_21D1576C8(*v33, *(v33 + 8), *(v33 + 16));
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  *(a3 + v24[33]) = 0;
  v56 = *(v34 + 208);
  v126[12] = *(v34 + 192);
  v126[13] = v56;
  v127 = *(v34 + 224);
  v57 = *(v34 + 144);
  v126[8] = *(v34 + 128);
  v126[9] = v57;
  v58 = *(v34 + 176);
  v126[10] = *(v34 + 160);
  v126[11] = v58;
  v59 = *(v34 + 80);
  v126[4] = *(v34 + 64);
  v126[5] = v59;
  v60 = *(v34 + 112);
  v126[6] = *(v34 + 96);
  v126[7] = v60;
  v61 = *(v34 + 16);
  v126[0] = *v34;
  v126[1] = v61;
  v62 = *(v34 + 48);
  v126[2] = *(v34 + 32);
  v126[3] = v62;
  sub_21D0CF7E0(v126, &unk_27CE5FB50);
  v63 = v124;
  *(v34 + 192) = v123;
  *(v34 + 208) = v63;
  *(v34 + 224) = v125;
  v64 = v120;
  *(v34 + 128) = v119;
  *(v34 + 144) = v64;
  v65 = v122;
  *(v34 + 160) = v121;
  *(v34 + 176) = v65;
  v66 = v116;
  *(v34 + 64) = v115;
  *(v34 + 80) = v66;
  v67 = v118;
  *(v34 + 96) = v117;
  *(v34 + 112) = v67;
  v68 = v112;
  *v34 = v111;
  *(v34 + 16) = v68;
  v69 = v114;
  *(v34 + 32) = v113;
  *(v34 + 48) = v69;
  v70 = a3 + v24[35];
  *v70 = v99;
  v71 = v96;
  *(v70 + 8) = v97;
  *(v70 + 16) = v71;
  *(a3 + v24[36]) = 0;
  sub_21DB159C8(*v42, v42[1]);
  *v42 = v84;
  v42[2] = 0;
  v42[3] = 0;
  result = sub_21D6388A4(*v43);
  *v43 = 0;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  v73 = v86;
  *v86 = 0;
  v73[1] = 0;
  *(a3 + v98) = 1;
  *(a3 + v24[43]) = 0;
  *(a3 + v24[45]) = 0;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 60));
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 string];
  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t sub_21DAFD730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v8 = *(v3 + 1);
  v7 = *(v3 + 2);
  v9 = v3[24];
  LOBYTE(v3) = v3[25];
  *a2 = v4;
  *(a2 + 1) = v5;
  *(a2 + 2) = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 25) = v3;
  return sub_21DBF8E0C();
}

uint64_t TTRRemindersListViewModel.Reminder.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v8 = *(v3 + 1);
  v7 = *(v3 + 2);
  v9 = v3[24];
  LOBYTE(v3) = v3[25];
  *a1 = v4;
  *(a1 + 1) = v5;
  *(a1 + 2) = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 25) = v3;

  return sub_21DBF8E0C();
}

uint64_t sub_21DAFD7DC(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 20)) stringRepresentation];
  v3 = sub_21DBFA16C();

  return v3;
}

void *sub_21DAFD838(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

void *TTRRemindersListViewModel.Reminder.attributedTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t sub_21DAFD8C8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRRemindersListViewModel.Reminder.completionDateString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 36));
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21DAFD940(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRRemindersListViewModel.Reminder.accessibleCompletionDateString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 40));
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21DAFDA34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_21D0D3954(v1 + *(a1 + 44), &v9 - v4, &unk_27CE5F2B0);
  v6 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_21D0CF7E0(v5, &unk_27CE5F2B0);
    return 0;
  }

  else
  {
    v7 = v5[*(v6 + 36)];
    sub_21D107038(v5, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  return v7;
}

uint64_t TTRRemindersListViewModel.Reminder.showsAsOverdue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  sub_21D0D3954(v0 + *(v4 + 44), v3, &unk_27CE5F2B0);
  v5 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_21D0CF7E0(v3, &unk_27CE5F2B0);
    return 0;
  }

  else
  {
    v6 = v3[*(v5 + 36)];
    sub_21D107038(v3, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  return v6;
}

uint64_t sub_21DAFDC90(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRRemindersListViewModel.Reminder.urgentIconString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 48));
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21DAFDD08(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 120));
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRRemindersListViewModel.Reminder.recurrenceDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 120));
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21DAFDD80(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_21D0D3954(v1 + *(a1 + 44), &v9 - v4, &unk_27CE5F2B0);
  v6 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_21D0CF7E0(v5, &unk_27CE5F2B0);
    return 0;
  }

  else
  {
    v7 = v5[*(v6 + 40)];
    sub_21D107038(v5, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  return v7;
}

uint64_t TTRRemindersListViewModel.Reminder.hasTimeZoneDifferentDayString.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  sub_21D0D3954(v0 + *(v4 + 44), v3, &unk_27CE5F2B0);
  v5 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_21D0CF7E0(v3, &unk_27CE5F2B0);
    return 0;
  }

  else
  {
    v6 = v3[*(v5 + 40)];
    sub_21D107038(v3, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  return v6;
}

id sub_21DAFDFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = *(v3 + 48);
  return sub_21DB159EC(v4, v5, v6, v7);
}

id TTRRemindersListViewModel.Reminder.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 52);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  return sub_21DB159EC(v4, v5, v6, v7);
}

void *sub_21DAFE068(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));
  v3 = v2;
  return v2;
}

void *TTRRemindersListViewModel.Reminder.attributedNotes.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 60));
  v2 = v1;
  return v1;
}

uint64_t TTRRemindersListViewModel.Reminder.linkAttachments.getter()
{
  type metadata accessor for TTRRemindersListViewModel.Reminder(0);

  return sub_21DBF8E0C();
}

uint64_t TTRRemindersListViewModel.Reminder.imageAttachments.getter()
{
  type metadata accessor for TTRRemindersListViewModel.Reminder(0);

  return sub_21DBF8E0C();
}

uint64_t TTRRemindersListViewModel.Reminder.flaggedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *a1 = *(v1 + *(result + 104));
  return result;
}

uint64_t sub_21DAFE22C(uint64_t a1)
{
  if (*(v1 + *(a1 + 92) + 8))
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = sub_21DBFABEC();
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:1];

  v6 = sub_21DBFA16C();
  return v6;
}

uint64_t TTRRemindersListViewModel.Reminder.subtaskCountString.getter()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  result = 0;
  if ((*(v0 + *(v1 + 92) + 8) & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = sub_21DBFABEC();
    v5 = [v3 localizedStringFromNumber:v4 numberStyle:1];

    v6 = sub_21DBFA16C();
    return v6;
  }

  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.subtaskCountDisplayStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *a1 = *(v1 + *(result + 96));
  return result;
}

id TTRRemindersListViewModel.Reminder.color.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 80));

  return v1;
}

id TTRRemindersListViewModel.Reminder.controlColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 84));

  return v1;
}

id TTRRemindersListViewModel.Reminder.completedStateTextColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 88));

  return v1;
}

uint64_t sub_21DAFE510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 124));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return sub_21DBF8E0C();
}

uint64_t TTRRemindersListViewModel.Reminder.listNameData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 124));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;

  return sub_21DBF8E0C();
}

id sub_21DAFE57C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2 + *(a1 + 152);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_21DB15A4C(v4);
}

id TTRRemindersListViewModel.Reminder.appLink.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 152);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_21DB15A4C(v4);
}

uint64_t sub_21DAFE5E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 128));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_21D157724(v4, v5, v6);
}

uint64_t TTRRemindersListViewModel.Reminder.person.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 128));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_21D157724(v4, v5, v6);
}

uint64_t sub_21DAFE684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 136));
  v4 = v3[11];
  v5 = v3[13];
  v37 = v3[12];
  v38 = v5;
  v6 = v3[7];
  v7 = v3[9];
  v33 = v3[8];
  v8 = v33;
  v34 = v7;
  v9 = v3[9];
  v10 = v3[11];
  v35 = v3[10];
  v11 = v35;
  v36 = v10;
  v12 = v3[3];
  v13 = v3[5];
  v29 = v3[4];
  v14 = v29;
  v30 = v13;
  v15 = v3[5];
  v16 = v3[7];
  v31 = v3[6];
  v17 = v31;
  v32 = v16;
  v18 = v3[1];
  v26[0] = *v3;
  v26[1] = v18;
  v19 = v3[3];
  v21 = *v3;
  v20 = v3[1];
  v27 = v3[2];
  v22 = v27;
  v28 = v19;
  v23 = v3[13];
  *(a2 + 192) = v37;
  *(a2 + 208) = v23;
  *(a2 + 128) = v8;
  *(a2 + 144) = v9;
  *(a2 + 160) = v11;
  *(a2 + 176) = v4;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  *(a2 + 96) = v17;
  *(a2 + 112) = v6;
  *a2 = v21;
  *(a2 + 16) = v20;
  v39 = *(v3 + 28);
  *(a2 + 224) = *(v3 + 28);
  *(a2 + 32) = v22;
  *(a2 + 48) = v12;
  return sub_21D0D3954(v26, v25, &unk_27CE5FB50);
}

uint64_t TTRRemindersListViewModel.Reminder.assignmentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 136));
  v4 = v3[11];
  v5 = v3[13];
  v37 = v3[12];
  v38 = v5;
  v6 = v3[7];
  v7 = v3[9];
  v33 = v3[8];
  v8 = v33;
  v34 = v7;
  v9 = v3[9];
  v10 = v3[11];
  v35 = v3[10];
  v11 = v35;
  v36 = v10;
  v12 = v3[3];
  v13 = v3[5];
  v29 = v3[4];
  v14 = v29;
  v30 = v13;
  v15 = v3[5];
  v16 = v3[7];
  v31 = v3[6];
  v17 = v31;
  v32 = v16;
  v18 = v3[1];
  v26[0] = *v3;
  v26[1] = v18;
  v19 = v3[3];
  v21 = *v3;
  v20 = v3[1];
  v27 = v3[2];
  v22 = v27;
  v28 = v19;
  v23 = v3[13];
  *(a1 + 192) = v37;
  *(a1 + 208) = v23;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 160) = v11;
  *(a1 + 176) = v4;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  *(a1 + 96) = v17;
  *(a1 + 112) = v6;
  *a1 = v21;
  *(a1 + 16) = v20;
  v39 = *(v3 + 28);
  *(a1 + 224) = *(v3 + 28);
  *(a1 + 32) = v22;
  *(a1 + 48) = v12;
  return sub_21D0D3954(v26, v25, &unk_27CE5FB50);
}

uint64_t sub_21DAFE838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 140);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

uint64_t TTRRemindersListViewModel.Reminder.hashtagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 140);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

uint64_t sub_21DAFE90C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 148));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_21DB15A90(v4, v5);
}

uint64_t TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 148));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21DB15A90(v4, v5);
}

void *sub_21DAFE978(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 168));
  v3 = v2;
  return v2;
}

void *TTRRemindersListViewModel.Reminder.listObjectID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 168));
  v2 = v1;
  return v1;
}

void TTRRemindersListViewModel.Reminder.priorityLevelDisplayString.getter()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v2 = *(v1 + 112);
  v3 = *(v0 + *(v1 + 108));
  if (*(v0 + v2) < v3)
  {
    if (v3 > 1)
    {
      if (v3 == 2 || v3 == 3)
      {
        return;
      }
    }

    else if (v3 <= 1)
    {
      return;
    }

    if (qword_27CE56D68 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE62E48);
    v5 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v5);
    sub_21DAEAB00("unknown priority level", 22, 2);
    __break(1u);
  }
}

uint64_t sub_21DAFEAF0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 156));
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRRemindersListViewModel.Reminder.siriFoundInAppsDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 156));
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListViewModel.Reminder.ttrAccessibilitySectionHeaderType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *a1 = *(v1 + *(result + 160));
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.iOS.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *a1 = *(v1 + *(result + 172));
  return result;
}

uint64_t sub_21DAFEBF0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE667F0);
  v1 = __swift_project_value_buffer(v0, qword_27CE667F0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderSuggestedLocation.identifier.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void *TTRReminderSuggestedLocation.image.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRReminderSuggestedLocation.subtitle.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderSuggestedLocation.init(identifier:image:title:subtitle:defaultProximity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t TTRReminderSuggestedLocation.ttrAccessibilityLabel.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D20;
  sub_21DBF8E0C();
  v5 = [v1 string];
  v6 = sub_21DBFA16C();
  v8 = v7;

  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v9 = sub_21DBFA07C();

  return v9;
}

uint64_t sub_21DAFEECC()
{
  result = sub_21DBFA12C();
  qword_280D177A0 = result;
  return result;
}

uint64_t sub_21DAFEF28()
{
  result = sub_21DBFA12C();
  qword_27CE66808 = result;
  return result;
}

uint64_t static TTRReminderTitleWithHarvestedAttributes.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  return sub_21D321D9C(v2, v3);
}

uint64_t sub_21DAFF000(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  return sub_21D321D9C(v2, v3);
}

id TTRRemindersListSectionMenuCapabilities.listOrCustomSmartList.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_21D1B1ED4(v2, v3);
}

id TTRRemindersListSectionMenuCapabilities.canSupportEditSections.getter()
{
  v1 = *(v0 + 8);
  if (v1 == 255)
  {
    return 0;
  }

  v2 = *v0;
  v3 = v2;
  if (v1)
  {
    v4 = [v3 accountCapabilities];
  }

  else
  {
    v6 = [v3 account];
    v4 = [v6 capabilities];
  }

  v5 = [v4 supportsSections];
  sub_21D157864(v2, v1);

  return v5;
}

uint64_t TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 9) = a2;
  return result;
}

void *TTRRemindersListSubtaskDisplayStyle.resolvedStyle(for:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    result = v3(&v5);
    LOBYTE(v3) = v5;
  }

  *a1 = v3 & 1;
  return result;
}

RemindersUICore::TTRRemindersListViewModel::SectionID::NamedID_optional __swiftcall TTRRemindersListViewModel.SectionID.NamedID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter()
{
  result = 0x5364656767616C66;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6553646567676174;
      break;
    case 5:
      result = 0x6365537961646F74;
      break;
    case 6:
    case 7:
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 8:
    case 0xA:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0xD000000000000016;
      break;
    case 0xE:
      result = 0xD00000000000001DLL;
      break;
    case 0xF:
      result = 0xD00000000000001ELL;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_21DAFF3F0()
{
  v0 = TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
  v2 = v1;
  if (v0 == TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21DBFC64C();
  }

  return v5 & 1;
}

uint64_t sub_21DAFF48C()
{
  sub_21DBFC7DC();
  TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21DAFF4F4()
{
  TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
  sub_21DBFA27C();
}

uint64_t sub_21DAFF558()
{
  sub_21DBFC7DC();
  TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

unint64_t sub_21DAFF5C8@<X0>(unint64_t *a1@<X8>)
{
  result = TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TTRRemindersListViewModel.SectionID.EraAndYear.init(dateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF4F2C();
  v6 = v5;
  v7 = sub_21DBF4F7C();
  v9 = v8;
  v10 = sub_21DBF509C();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9 & 1;
  return result;
}

RemindersUICore::TTRRemindersListViewModel::SectionID::EraAndYear __swiftcall TTRRemindersListViewModel.SectionID.EraAndYear.init(era:year:)(Swift::Int_optional era, Swift::Int_optional year)
{
  *v2 = era.value;
  *(v2 + 8) = era.is_nil;
  *(v2 + 16) = year.value;
  *(v2 + 24) = year.is_nil;
  result.year = year;
  result.era = era;
  return result;
}

uint64_t TTRRemindersListViewModel.SectionID.EraAndYear.makeDateComponents()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_21DBF5A2C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_21DBF5C4C();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_21DBF504C();
}

uint64_t TTRRemindersListViewModel.SectionID.EraAndYear.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    sub_21DBFC7FC();
    if (!v2)
    {
LABEL_3:
      sub_21DBFC7FC();
      return MEMORY[0x223D44FA0](v1);
    }
  }

  else
  {
    v4 = *v0;
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](v4);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_21DBFC7FC();
}

uint64_t TTRRemindersListViewModel.SectionID.EraAndYear.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_21DBFC7DC();
  if (v2 != 1)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](v1);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21DBFC7FC();
    return sub_21DBFC82C();
  }

  sub_21DBFC7FC();
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21DBFC7FC();
  MEMORY[0x223D44FA0](v3);
  return sub_21DBFC82C();
}

uint64_t sub_21DAFF9DC()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    sub_21DBFC7FC();
    if (!v2)
    {
LABEL_3:
      sub_21DBFC7FC();
      return MEMORY[0x223D44FA0](v1);
    }
  }

  else
  {
    v4 = *v0;
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](v4);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_21DBFC7FC();
}

uint64_t sub_21DAFFA5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_21DBFC7DC();
  if (v2 != 1)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](v1);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21DBFC7FC();
    return sub_21DBFC82C();
  }

  sub_21DBFC7FC();
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21DBFC7FC();
  MEMORY[0x223D44FA0](v3);
  return sub_21DBFC82C();
}

void TTRRemindersListViewModel.SectionID.hash(into:)()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D1055C4(v1, v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        (*(v3 + 32))(v5, v8, v2);
        v10 = 2;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        (*(v3 + 32))(v5, v8, v2);
        v10 = 3;
      }

      else
      {
        (*(v3 + 32))(v5, v8, v2);
        v10 = 4;
      }

LABEL_23:
      MEMORY[0x223D44FA0](v10);
      sub_21DB15960(&unk_280D171A8, MEMORY[0x277CC9578]);
      sub_21DBFA00C();
      (*(v3 + 8))(v5, v2);
      return;
    }

    if (!EnumCaseMultiPayload)
    {
      v13 = *v8;
      MEMORY[0x223D44FA0](0);
      v18[15] = v13;
      TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
      sub_21DBFA27C();

      return;
    }

    v11 = *v8;
    v12 = 1;
LABEL_21:
    MEMORY[0x223D44FA0](v12);
    sub_21DBFB64C();

    return;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      (*(v3 + 32))(v5, v8, v2);
      v10 = 5;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v10 = 6;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v11 = *v8;
    if (EnumCaseMultiPayload == 8)
    {
      v12 = 8;
    }

    else
    {
      v12 = 9;
    }

    goto LABEL_21;
  }

  v14 = *v8;
  v15 = v8[8];
  v16 = *(v8 + 2);
  v17 = v8[24];
  MEMORY[0x223D44FA0](7);
  if (v15 == 1)
  {
    sub_21DBFC7FC();
    if (!v17)
    {
LABEL_17:
      sub_21DBFC7FC();
      MEMORY[0x223D44FA0](v16);
      return;
    }
  }

  else
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](v14);
    if (!v17)
    {
      goto LABEL_17;
    }
  }

  sub_21DBFC7FC();
}

uint64_t TTRRemindersListViewModel.SectionHeader.title.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.SectionHeader(0) + 20));
  v4 = v3[5];
  v6 = v3[3];
  v19 = v3[4];
  v5 = v19;
  v20 = v4;
  v7 = v3[5];
  v21[0] = v3[6];
  *(v21 + 10) = *(v3 + 106);
  v8 = v3[3];
  v10 = v3[1];
  v17 = v3[2];
  v9 = v17;
  v18 = v8;
  v11 = v3[1];
  v16[0] = *v3;
  v12 = v16[0];
  v16[1] = v11;
  *(a1 + 106) = *(v3 + 106);
  v13 = v3[6];
  a1[5] = v7;
  a1[6] = v13;
  a1[3] = v6;
  a1[4] = v5;
  a1[1] = v10;
  a1[2] = v9;
  *a1 = v12;
  return sub_21D0D3954(v16, &v15, &qword_27CE5B090);
}

void *TTRRemindersListViewModel.SectionHeader.listObjectID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.SectionHeader(0) + 44));
  v2 = v1;
  return v1;
}

uint64_t (*static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter())@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v0 = sub_21DBF604C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D44DA0], v0, v2);
  v5 = sub_21DBF603C();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    return sub_21D3BD28C;
  }

  else
  {
    return sub_21DB001CC;
  }
}

uint64_t sub_21DB001CC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

BOOL static TTRRemindersListViewModel.SectionHeaderTitle.Separator.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TTRRemindersListViewModel.SectionHeaderTitle.text.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

id TTRRemindersListViewModel.SectionHeaderTitle.textStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 64);
  *(a1 + 48) = v8;
  return sub_21D2A7DB4(v2, v3, v4, v5, v6, v7, v8);
}

id TTRRemindersListViewModel.SectionHeaderTitle.disclosureColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 120);
  *(a1 + 48) = v8;
  return sub_21DB15AE4(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t TTRRemindersListViewModel.ListNameData.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

RemindersUICore::TTRRemindersListViewModel::ListNameData __swiftcall TTRRemindersListViewModel.ListNameData.init(name:isVisible:)(Swift::String name, Swift::Bool isVisible)
{
  *v2 = name;
  *(v2 + 16) = isVisible;
  result.name = name;
  result.isVisible = isVisible;
  return result;
}

uint64_t static TTRRemindersListViewModel.ListNameData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_21DBFC64C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t TTRRemindersListViewModel.AppLink.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t static TTRRemindersListViewModel.AppLink.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D0D8CF0(0, &qword_280D17680);
  if (sub_21DBFB63C())
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_21DBFC64C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21DB00478(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D0D8CF0(0, &qword_280D17680);
  if (sub_21DBFB63C())
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_21DBFC64C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t TTRRemindersListViewModel.AssignmentData.assignment.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[9];
  v33 = v1[10];
  v34 = v2;
  v4 = v1[11];
  v5 = v1[13];
  v35 = v1[12];
  v6 = v35;
  v36 = v5;
  v7 = v1[7];
  v9 = v1[5];
  v29 = v1[6];
  v8 = v29;
  v30 = v7;
  v10 = v1[7];
  v11 = v1[9];
  v31 = v1[8];
  v12 = v31;
  v32 = v11;
  v13 = v1[3];
  v15 = v1[1];
  v25 = v1[2];
  v14 = v25;
  v26 = v13;
  v16 = v1[3];
  v17 = v1[5];
  v27 = v1[4];
  v18 = v27;
  v28 = v17;
  v19 = v1[1];
  v24[0] = *v1;
  v20 = v24[0];
  v24[1] = v19;
  a1[10] = v33;
  a1[11] = v4;
  v21 = v1[13];
  a1[12] = v6;
  a1[13] = v21;
  a1[6] = v8;
  a1[7] = v10;
  a1[8] = v12;
  a1[9] = v3;
  a1[2] = v14;
  a1[3] = v16;
  a1[4] = v18;
  a1[5] = v9;
  *a1 = v20;
  a1[1] = v15;
  return sub_21D0D3954(v24, &v23, &qword_27CE608E0);
}

id TTRRemindersListViewModel.Reminder.objectID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 20));

  return v1;
}

uint64_t TTRRemindersListViewModel.Reminder.style.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];
  v8 = a1[25];
  v9 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 24);

  *v9 = v2;
  *(v9 + 1) = v3;
  *(v9 + 2) = v4;
  *(v9 + 8) = v5;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  *(v9 + 25) = v8;
  return result;
}

void TTRRemindersListViewModel.Reminder.attributedTitle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t TTRRemindersListViewModel.Reminder.isCompleted.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.completionDateString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.accessibleCompletionDateString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.urgentIconString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 TTRRemindersListViewModel.Reminder.location.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 52);
  sub_21D4B94BC(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v8;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.supportsLocation.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

void TTRRemindersListViewModel.Reminder.attributedNotes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 60);

  *(v1 + v3) = a1;
}

uint64_t TTRRemindersListViewModel.Reminder.linkAttachments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.imageAttachments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 68);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.showingLargeAttachments.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.totalImageCount.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

void TTRRemindersListViewModel.Reminder.color.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 80);

  *(v1 + v3) = a1;
}

void TTRRemindersListViewModel.Reminder.controlColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 84);

  *(v1 + v3) = a1;
}

void TTRRemindersListViewModel.Reminder.completedStateTextColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 88);

  *(v1 + v3) = a1;
}

uint64_t TTRRemindersListViewModel.Reminder.subtaskCount.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v6 = v2 + *(result + 92);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.subtaskCountDisplayStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 96)) = v2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.isSubtask.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.flaggedState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 104)) = v2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.priorityLevel.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.defaultPriorityLevel.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.isRecurrent.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 116)) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.recurrenceDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 120));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.listNameData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 124);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

__n128 TTRRemindersListViewModel.Reminder.person.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 128);
  sub_21D1576C8(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.supportsAssignment.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 132)) = a1;
  return result;
}

__n128 TTRRemindersListViewModel.Reminder.assignmentData.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 136);
  v4 = *(v3 + 208);
  v18[12] = *(v3 + 192);
  v18[13] = v4;
  v19 = *(v3 + 224);
  v5 = *(v3 + 144);
  v18[8] = *(v3 + 128);
  v18[9] = v5;
  v6 = *(v3 + 176);
  v18[10] = *(v3 + 160);
  v18[11] = v6;
  v7 = *(v3 + 80);
  v18[4] = *(v3 + 64);
  v18[5] = v7;
  v8 = *(v3 + 112);
  v18[6] = *(v3 + 96);
  v18[7] = v8;
  v9 = *(v3 + 16);
  v18[0] = *v3;
  v18[1] = v9;
  v10 = *(v3 + 48);
  v18[2] = *(v3 + 32);
  v18[3] = v10;
  sub_21D0CF7E0(v18, &unk_27CE5FB50);
  v11 = *(a1 + 208);
  *(v3 + 192) = *(a1 + 192);
  *(v3 + 208) = v11;
  *(v3 + 224) = *(a1 + 224);
  v12 = *(a1 + 144);
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = v12;
  v13 = *(a1 + 176);
  *(v3 + 160) = *(a1 + 160);
  *(v3 + 176) = v13;
  v14 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v14;
  v15 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v15;
  v16 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v16;
  result = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = result;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.hashtagData.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 140);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.supportsStylingInNote.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 144)) = a1;
  return result;
}

__n128 TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 148);
  sub_21DB159C8(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

__n128 TTRRemindersListViewModel.Reminder.appLink.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 152);
  sub_21D6388A4(*v3);
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.siriFoundInAppsDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 156));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.ttrAccessibilitySectionHeaderType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 160)) = v2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.hasShowInfoButton.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 164)) = a1;
  return result;
}

void TTRRemindersListViewModel.Reminder.listObjectID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 168);

  *(v1 + v3) = a1;
}

uint64_t TTRRemindersListViewModel.Reminder.iOS.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 172)) = v2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.watchOS.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *a1 = *(v1 + *(result + 180));
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.watchOS.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 180)) = v2;
  return result;
}

__n128 TTRRemindersListViewModel.Reminder.init(item:objectID:style:attributedTitle:isCompleted:completionDateString:accessibleCompletionDateString:displayDate:urgentIconString:location:supportsLocation:attributedNotes:linkAttachments:imageAttachments:showingLargeAttachments:totalImageCount:color:controlColor:completedStateTextColor:subtaskCount:subtaskCountDisplayStyle:isSubtask:flaggedState:priorityLevel:defaultPriorityLevel:isRecurrent:recurrenceDescription:listNameData:person:supportsAssignment:assignmentData:hashtagData:supportsStylingInNote:suggestedSectionDisplayStyle:appLink:siriFoundInAppsDescription:hasShowInfoButton:iOS:macOS:watchOS:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, char *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t *a34, __int128 *a35, char a36, uint64_t a37, char *a38, char a39, __int128 *a40, __n128 *a41, uint64_t a42, uint64_t a43, char a44, uint64_t *a45, uint64_t a46, char *a47)
{
  v102 = *a3;
  v101 = a3[1];
  v100 = a3[2];
  v99 = *(a3 + 1);
  v98 = *(a3 + 2);
  v97 = a3[24];
  v96 = a3[25];
  v107 = *a28;
  v114 = a34[1];
  v115 = *a34;
  v113 = *(a34 + 16);
  v117 = *a35;
  v116 = *(a35 + 2);
  v122 = *a38;
  v121 = *(a38 + 1);
  v120 = *(a38 + 2);
  v124 = *a41;
  v123 = a41[1].n128_u64[0];
  v125 = *a45;
  v126 = *a47;
  v94 = *(a14 + 5);
  v95 = *(a14 + 4);
  v93 = *(a14 + 48);
  v48 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v83 = (a9 + v48[9]);
  v84 = (a9 + v48[10]);
  v85 = v48[7];
  v49 = v48[11];
  v82 = v49;
  v50 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v118 = a40[1];
  v119 = *a40;
  v92 = *a14;
  v90 = a14[1];
  (*(*(v50 - 8) + 56))(a9 + v49, 1, 1, v50);
  v81 = (a9 + v48[12]);
  v51 = a9 + v48[13];
  *(v51 + 48) = 0;
  *(v51 + 16) = 0u;
  *(v51 + 32) = 0u;
  *v51 = 0u;
  v87 = v48[16];
  v88 = v48[15];
  v86 = v48[17];
  v89 = a9 + v48[23];
  *(a9 + v48[24]) = 2;
  v91 = (a9 + v48[30]);
  v52 = a9 + v48[31];
  *v52 = 0;
  *(v52 + 8) = 0;
  *(v52 + 16) = 0;
  v53 = a9 + v48[32];
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 16) = 0;
  v54 = a9 + v48[34];
  sub_21D639910(v127);
  v55 = v127[13];
  *(v54 + 192) = v127[12];
  *(v54 + 208) = v55;
  *(v54 + 224) = v128;
  v56 = v127[9];
  *(v54 + 128) = v127[8];
  *(v54 + 144) = v56;
  v57 = v127[11];
  *(v54 + 160) = v127[10];
  *(v54 + 176) = v57;
  v58 = v127[5];
  *(v54 + 64) = v127[4];
  *(v54 + 80) = v58;
  v59 = v127[7];
  *(v54 + 96) = v127[6];
  *(v54 + 112) = v59;
  v60 = v127[1];
  *v54 = v127[0];
  *(v54 + 16) = v60;
  v61 = v127[3];
  *(v54 + 32) = v127[2];
  *(v54 + 48) = v61;
  v62 = (a9 + v48[37]);
  *v62 = xmmword_21DC19C40;
  v62[2] = 0;
  v62[3] = 0;
  v63 = a9 + v48[38];
  *v63 = 0;
  *(v63 + 8) = 0;
  *(v63 + 16) = 0;
  v103 = (a9 + v48[39]);
  *(a9 + v48[40]) = 2;
  v104 = v48[41];
  *(a9 + v48[42]) = 0;
  sub_21DAF98D8(a1, a9, type metadata accessor for TTRRemindersListViewModel.Item);
  *(a9 + v48[5]) = a2;
  v64 = a9 + v48[6];
  *v64 = v102;
  *(v64 + 1) = v101;
  *(v64 + 2) = v100;
  *(v64 + 8) = v99;
  *(v64 + 16) = v98;
  *(v64 + 24) = v97;
  *(v64 + 25) = v96;
  *(a9 + v85) = a4;
  *(a9 + v48[8]) = a5;
  *v83 = a6;
  v83[1] = a7;
  *v84 = a8;
  v84[1] = a10;
  sub_21D0F02F4(a11, a9 + v82, &unk_27CE5F2B0);
  *v81 = a12;
  v81[1] = a13;
  sub_21D4B94BC(*v51, *(v51 + 8), *(v51 + 16), *(v51 + 24));
  *v51 = v92;
  *(v51 + 16) = v90;
  *(v51 + 32) = v95;
  *(v51 + 40) = v94;
  *(v51 + 48) = v93;
  *(a9 + v48[14]) = a15;
  *(a9 + v88) = a16;
  *(a9 + v87) = a17;
  *(a9 + v86) = a18;
  *(a9 + v48[18]) = a19;
  *(a9 + v48[19]) = a20;
  *(a9 + v48[20]) = a21;
  *(a9 + v48[21]) = a22;
  *(a9 + v48[22]) = a23;
  *v89 = a24;
  *(v89 + 8) = a25 & 1;
  *(a9 + v48[25]) = a27;
  *(a9 + v48[26]) = v107;
  *(a9 + v48[27]) = a29;
  *(a9 + v48[28]) = a30;
  *(a9 + v48[29]) = a31;
  *v91 = a32;
  v91[1] = a33;

  *v52 = v115;
  *(v52 + 8) = v114;
  *(v52 + 16) = v113;
  sub_21D1576C8(*v53, *(v53 + 8), *(v53 + 16));
  *v53 = v117;
  *(v53 + 16) = v116;
  *(a9 + v48[33]) = a36;
  v65 = *(v54 + 208);
  v129[12] = *(v54 + 192);
  v129[13] = v65;
  v130 = *(v54 + 224);
  v66 = *(v54 + 144);
  v129[8] = *(v54 + 128);
  v129[9] = v66;
  v67 = *(v54 + 176);
  v129[10] = *(v54 + 160);
  v129[11] = v67;
  v68 = *(v54 + 80);
  v129[4] = *(v54 + 64);
  v129[5] = v68;
  v69 = *(v54 + 112);
  v129[6] = *(v54 + 96);
  v129[7] = v69;
  v70 = *(v54 + 16);
  v129[0] = *v54;
  v129[1] = v70;
  v71 = *(v54 + 48);
  v129[2] = *(v54 + 32);
  v129[3] = v71;
  sub_21D0CF7E0(v129, &unk_27CE5FB50);
  v72 = *(a37 + 208);
  *(v54 + 192) = *(a37 + 192);
  *(v54 + 208) = v72;
  *(v54 + 224) = *(a37 + 224);
  v73 = *(a37 + 144);
  *(v54 + 128) = *(a37 + 128);
  *(v54 + 144) = v73;
  v74 = *(a37 + 176);
  *(v54 + 160) = *(a37 + 160);
  *(v54 + 176) = v74;
  v75 = *(a37 + 80);
  *(v54 + 64) = *(a37 + 64);
  *(v54 + 80) = v75;
  v76 = *(a37 + 112);
  *(v54 + 96) = *(a37 + 96);
  *(v54 + 112) = v76;
  v77 = *(a37 + 16);
  *v54 = *a37;
  *(v54 + 16) = v77;
  v78 = *(a37 + 48);
  *(v54 + 32) = *(a37 + 32);
  *(v54 + 48) = v78;
  v79 = a9 + v48[35];
  *v79 = v122;
  *(v79 + 8) = v121;
  *(v79 + 16) = v120;
  *(a9 + v48[36]) = a39;
  sub_21DB159C8(*v62, v62[1]);
  *v62 = v119;
  *(v62 + 1) = v118;
  sub_21D6388A4(*v63);
  result = v124;
  *v63 = v124;
  *(v63 + 16) = v123;
  *v103 = a42;
  v103[1] = a43;
  *(a9 + v104) = a44;
  *(a9 + v48[43]) = v125;
  *(a9 + v48[45]) = v126;
  return result;
}

uint64_t TTRRemindersListViewModel.DisplayDate.string.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListViewModel.DisplayDate.accessiblitySpeakableString.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListViewModel.DisplayDate.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.DisplayDate(0) + 24);
  v4 = sub_21DBF563C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRRemindersListViewModel.DisplayDate.init(string:accessiblitySpeakableString:date:timeZone:allDay:showsAsOverdue:hasTimeZoneDifferentDayString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, char a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v15 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v16 = v15[6];
  v17 = sub_21DBF563C();
  (*(*(v17 - 8) + 32))(&a9[v16], a5, v17);
  result = sub_21D0D523C(a6, &a9[v15[7]], &unk_27CE60DB0);
  a9[v15[8]] = a7;
  a9[v15[9]] = a8;
  a9[v15[10]] = a10;
  return result;
}

id TTRRemindersListViewModel.LocationData.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TTRRemindersListViewModel.LocationData.imageBackgroundColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t TTRRemindersListViewModel.LocationData.localizedLabelFormatString.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListViewModel.LocationData.locationName.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListViewModel.LocationData.init(image:imageBackgroundColor:localizedLabelFormatString:locationName:hasStrikethroughStyling:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
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

uint64_t TTRRemindersListViewModel.LocationData.ttrAccessibilityTitle.getter()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_21D17A884();
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  sub_21DBF8E0C();
  result = sub_21DBFA17C();
  if (v3 == 1)
  {

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF516C();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21DC08D20;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21DC08D00;
    *(v12 + 56) = v5;
    *(v12 + 64) = v6;
    *(v12 + 32) = v2;
    *(v12 + 40) = v1;
    sub_21DBF8E0C();
    *(v11 + 32) = sub_21DBFA17C();
    *(v11 + 40) = v13;
    *(v11 + 48) = v8;
    *(v11 + 56) = v10;
    if (qword_280D1B938 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
    v14 = sub_21DBFA07C();

    return v14;
  }

  return result;
}

uint64_t TTRRemindersListViewModel.PersonData.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void *TTRRemindersListViewModel.PersonData.contact.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *TTRRemindersListViewModel.LinkAttachment.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0) + 24));
  v2 = v1;
  return v1;
}

void *TTRRemindersListViewModel.ImageAttachment.image.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t TTRRemindersListViewModel.ReminderID.hash(into:)()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_21DBFB64C();
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  sub_21D0D3954(v0 + *(v8 + 20), v7, &unk_27CE5CD70);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_21DBFC7FC();
  }

  sub_21DAF98D8(v7, v4, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21DBFC7FC();
  TTRRemindersListViewModel.SectionID.hash(into:)();
  return sub_21D107038(v4, type metadata accessor for TTRRemindersListViewModel.SectionID);
}

uint64_t TTRRemindersListViewModel.ReminderID.hashValue.getter()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_21DBFC7DC();
  sub_21DBFB64C();
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  sub_21D0D3954(v0 + *(v8 + 20), v7, &unk_27CE5CD70);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21DAF98D8(v7, v4, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21DBFC7FC();
    TTRRemindersListViewModel.SectionID.hash(into:)();
    sub_21D107038(v4, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21DB02F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_21DBFB64C();
  sub_21D0D3954(v2 + *(a2 + 20), v10, &unk_27CE5CD70);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_21DBFC7FC();
  }

  sub_21DAF98D8(v10, v7, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21DBFC7FC();
  TTRRemindersListViewModel.SectionID.hash(into:)();
  return sub_21D107038(v7, type metadata accessor for TTRRemindersListViewModel.SectionID);
}

uint64_t sub_21DB0311C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_21DBFC7DC();
  sub_21DBFB64C();
  sub_21D0D3954(v2 + *(a2 + 20), v10, &unk_27CE5CD70);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21DAF98D8(v10, v7, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21DBFC7FC();
    TTRRemindersListViewModel.SectionID.hash(into:)();
    sub_21D107038(v7, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }

  return sub_21DBFC82C();
}

id TTRRemindersListViewModel.SharingStatus.highlightToShow.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t TTRRemindersListViewModel.CompletedRemindersState.countText.getter()
{
  v1 = *v0;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  v5 = sub_21DBFA13C();

  return v5;
}

RemindersUICore::TTRRemindersListViewModel::CompletedRemindersState __swiftcall TTRRemindersListViewModel.CompletedRemindersState.init(count:shown:canToggleVisibility:canClear:listColor:)(RemindersUICore::TTRRemindersListViewModel::CompletedRemindersState count, Swift::Bool shown, Swift::Bool canToggleVisibility, Swift::Bool canClear, UIColor listColor)
{
  *v5 = count.count;
  *(v5 + 8) = shown;
  *(v5 + 9) = canToggleVisibility;
  *(v5 + 10) = canClear;
  *(v5 + 16) = listColor;
  LOBYTE(count.listColor.super.isa) = canToggleVisibility;
  count.shown = shown;
  return count;
}

RemindersUICore::TTRRemindersListViewModel::CompletedRemindersState __swiftcall TTRRemindersListViewModel.CompletedRemindersState.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() blackColor];
  *v1 = 0;
  *(v1 + 7) = 0;
  *(v1 + 16) = v2;
  result.listColor.super.isa = v4;
  result.count = v2;
  result.shown = v3;
  result.canToggleVisibility = BYTE1(v3);
  result.canClear = BYTE2(v3);
  return result;
}

uint64_t sub_21DB035DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t TTRRemindersListViewModel.HashtagLabelSelectorState.init(labels:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0) + 20);
  v6 = sub_21DBF6C1C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t static TTRRemindersListViewModel.HashtagLabelSelectorState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (sub_21D1D57A4(*a1, *a2))
  {
    type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);

    JUMPOUT(0x223D3F370);
  }

  return 0;
}

uint64_t sub_21DB03754(uint64_t *a1, uint64_t *a2)
{
  if (sub_21D1D57A4(*a1, *a2))
  {

    JUMPOUT(0x223D3F370);
  }

  return 0;
}

uint64_t TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.description.getter()
{
  if (*v0)
  {
    return 7105633;
  }

  else
  {
    return 7958113;
  }
}

uint64_t TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.localizedOptionString.getter()
{
  if (*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

RemindersUICore::TTRRemindersListViewModel::HashtagsState::FilterOperatorOptions_optional __swiftcall TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

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

uint64_t sub_21DB039CC()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21DB03A34()
{
  sub_21DBFA27C();
}

uint64_t sub_21DB03A80()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21DB03AE4@<X0>(char *a1@<X8>)
{
  v2 = sub_21DBFC45C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_21DB03B44(uint64_t *a1@<X8>)
{
  v2 = 7958113;
  if (*v1)
  {
    v2 = 7105633;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_21DB03B6C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7105633;
  }

  else
  {
    v2 = 7958113;
  }

  if (*a2)
  {
    v3 = 7105633;
  }

  else
  {
    v3 = 7958113;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_21DBFC64C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_21DB03BE4()
{
  if (*v0)
  {
    return 7105633;
  }

  else
  {
    return 7958113;
  }
}

uint64_t TTRRemindersListViewModel.HashtagsState.selectionDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_21D157724(v4, v5, v6);
}

uint64_t TTRRemindersListViewModel.HashtagsState.selectedFilterOperator.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F780);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  sub_21D0D3954(v1, v5, &qword_27CE5A440);
  v9 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5A440);
    v10 = sub_21DBF6C1C();
    result = (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_11:
    v17 = 2;
    goto LABEL_12;
  }

  v12 = *(v9 + 20);
  v13 = sub_21DBF6C1C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, &v5[v12], v13);
  sub_21D107038(v5, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
  (*(v14 + 56))(v8, 0, 1, v13);
  result = (*(v14 + 88))(v8, v13);
  if (result == *MEMORY[0x277D45378])
  {
    (*(v14 + 96))(v8, v13);

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50) + 64);
    v16 = sub_21DBF6C0C();
    result = (*(*(v16 - 8) + 88))(&v8[v15], v16);
    if (result == *MEMORY[0x277D45388])
    {
      v17 = 0;
LABEL_12:
      *a1 = v17;
      return result;
    }

    if (result == *MEMORY[0x277D45390])
    {
      v17 = 1;
      goto LABEL_12;
    }
  }

  else if (result == *MEMORY[0x277D45398] || result == *MEMORY[0x277D45380])
  {
    goto LABEL_11;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

__n128 TTRRemindersListViewModel.HashtagsState.init(selectorState:selectionDescription:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v4 = a2[1].n128_u64[0];
  sub_21D0D523C(a1, a3, &qword_27CE5A440);
  v5 = (a3 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
  result = v7;
  *v5 = v7;
  v5[1].n128_u64[0] = v4;
  return result;
}

unint64_t TTRRemindersListViewModel.HashtagsState.description.getter()
{
  v1 = 0xD000000000000011;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0D3954(v0, v4, &qword_27CE5A440);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5A440);
  }

  else
  {
    sub_21DAF98D8(v4, v8, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
    v17 = *v8;
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
    v9 = sub_21DBFA07C();
    v11 = v10;

    v17 = 0;
    v18 = 0xE000000000000000;
    sub_21DBFBEEC();

    v17 = 0x203A736C6562616CLL;
    v18 = 0xE90000000000005BLL;
    MEMORY[0x223D42AA0](v9, v11);

    MEMORY[0x223D42AA0](0x7463656C6573205DLL, 0xED0000203A6E6F69);
    sub_21DBF6C1C();
    sub_21DB15960(&qword_27CE5F788, MEMORY[0x277D453A0]);
    v12 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v12);

    MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC77D20);
    TTRRemindersListViewModel.HashtagsState.selectedFilterOperator.getter(&v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66840);
    v13 = sub_21DBFBA5C();
    MEMORY[0x223D42AA0](v13);

    v1 = v17;
    sub_21D107038(v8, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
  }

  return v1;
}

RemindersUICore::TTRRemindersListViewModel::ItemID::NamedID_optional __swiftcall TTRRemindersListViewModel.ItemID.NamedID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TTRRemindersListViewModel.ItemID.NamedID.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD00000000000001DLL;
  if (v1 == 4)
  {
    v4 = 0x6D657449706974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7367617468736168;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21DB04534()
{
  sub_21DBFA27C();
}

void sub_21DB0465C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006D65744964;
  v4 = 0x6574656C706D6F63;
  v5 = 0x800000021DC43E00;
  v6 = 0xD00000000000001FLL;
  v7 = 0xE700000000000000;
  v8 = 0xD00000000000001DLL;
  if (v2 == 4)
  {
    v8 = 0x6D657449706974;
  }

  else
  {
    v7 = 0x800000021DC43E30;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000006D657449;
  v10 = 0x7367617468736168;
  if (v2 != 1)
  {
    v10 = 0xD000000000000012;
    v9 = 0x800000021DC43DE0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

void TTRRemindersListViewModel.ItemID.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D1055C4(v0, v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = *v13;
      MEMORY[0x223D44FA0](2);
      sub_21DBFB64C();
    }

    else
    {
      MEMORY[0x223D44FA0](3);
      sub_21DBFA27C();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21DAF98D8(v13, v6, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    MEMORY[0x223D44FA0](1);
    sub_21DBFB64C();
    sub_21D0D3954(&v6[*(v4 + 20)], v3, &unk_27CE5CD70);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {
      sub_21DBFC7FC();
    }

    else
    {
      sub_21DAF98D8(v3, v10, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DBFC7FC();
      TTRRemindersListViewModel.SectionID.hash(into:)();
      sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.SectionID);
    }

    sub_21D107038(v6, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  else
  {
    sub_21DAF98D8(v13, v10, type metadata accessor for TTRRemindersListViewModel.SectionID);
    MEMORY[0x223D44FA0](0);
    TTRRemindersListViewModel.SectionID.hash(into:)();
    sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }
}

uint64_t sub_21DB04BB4(void (*a1)(_BYTE *))
{
  sub_21DBFC7DC();
  a1(v3);
  return sub_21DBFC82C();
}

uint64_t sub_21DB04C14(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_21DBFC7DC();
  a3(v5);
  return sub_21DBFC82C();
}

uint64_t sub_21DB04C78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21DBFC7DC();
  a4(v6);
  return sub_21DBFC82C();
}

Swift::String __swiftcall TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.text(withTextFormat:)(RemindersUICore::TTRRemindersListViewModel::EmptyListMessagingType::TextFormat withTextFormat)
{
  if (*v1 <= 1u)
  {
    if (!*v1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    v2 = qword_280D1BAA8;
    if ((*withTextFormat & 1) == 0)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (*v1 == 2)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v2 = qword_280D1BAA8;
  if (*withTextFormat)
  {
LABEL_12:
    if (v2 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_16:
    swift_once();
  }

LABEL_15:
  v3 = sub_21DBF516C();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.secondaryText(currentLayout:)(RemindersUICore::TTRRemindersListLayout currentLayout)
{
  if (*v1 >= 2u)
  {
    if (*currentLayout == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_7;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_7:
      v2 = sub_21DBF516C();
      goto LABEL_10;
    }

    swift_once();
    goto LABEL_7;
  }

  v2 = 0;
  v3 = 0;
LABEL_10:
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

BOOL static TTRRemindersListViewModel.EmptyListMessagingType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

BOOL sub_21DB052F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t TTRRemindersListViewModel.ListInfo.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.ListInfo(0) + 20));
  sub_21DBF8E0C();
  return v1;
}

id TTRRemindersListViewModel.ListInfo.color.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.ListInfo(0) + 24));

  return v1;
}

uint64_t TTRRemindersListViewModel.ListInfo.listLayout.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.listLayout.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void TTRRemindersListViewModel.ListInfo.sharingInfo.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.ListInfo(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  sub_21DB15B5C(v4, v5);
}

uint64_t TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.collapsedStatesAutosaveName.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.ListInfo(0) + 88));
  sub_21DBF8E0C();
  return v1;
}