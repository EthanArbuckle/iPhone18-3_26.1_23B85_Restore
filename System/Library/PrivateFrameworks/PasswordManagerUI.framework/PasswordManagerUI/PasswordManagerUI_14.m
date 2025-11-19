unint64_t sub_21C87ED30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_21C8D4A08(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    v9 = *v2;
    result = sub_21CB10C54(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_21C8D61F4();
        v14 = v16;
      }

      result = sub_21CADB4FC(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_21C87EDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_21C8D4B50(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_21CB10A3C(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_21C8D6350();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_21CADB690(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_21C87EF70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__groupIDForInvitationAcceptanceFlow;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v4, a2, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C87F048(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_21C6EDBAC(a1, &v10 - v6, &unk_27CDF20B0, &unk_21CBA0090);
  v8 = *a2;
  return sub_21C87F798(v7);
}

uint64_t sub_21C87F170(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C880700(v4);
}

uint64_t sub_21C87F19C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);
  return result;
}

uint64_t sub_21C87F2B0()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7106A8(v0, v9, type metadata accessor for PMAppAccountsListModel.Configuration);
  v10 = (*(v2 + 48))(v9, 4, v1);
  if (v10 <= 1)
  {
    if (!v10)
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x21CF15F90](3);
      sub_21C713E38(&qword_27CDF8950, MEMORY[0x277D49978]);
      sub_21CB85494();
      return (*(v2 + 8))(v5, v1);
    }

    v11 = 0;
  }

  else if (v10 == 2)
  {
    v11 = 1;
  }

  else if (v10 == 3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 4;
  }

  return MEMORY[0x21CF15F90](v11);
}

uint64_t sub_21C87F4AC()
{
  sub_21CB86484();
  sub_21C87F2B0();
  return sub_21CB864D4();
}

uint64_t sub_21C87F4F0()
{
  sub_21CB86484();
  sub_21C87F2B0();
  return sub_21CB864D4();
}

uint64_t sub_21C87F530()
{
  v2 = *v0;
  v1 = v0[1];
  sub_21CB86484();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x21CF15F90](0);
        sub_21C89724C(v5, v2);
        sub_21C89724C(v5, v1);
        return sub_21CB864D4();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x21CF15F90](v3);
  return sub_21CB864D4();
}

uint64_t sub_21C87F5C8(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 1;
    return MEMORY[0x21CF15F90](v4);
  }

  if (v3 == 1)
  {
    v4 = 2;
    return MEMORY[0x21CF15F90](v4);
  }

  if (v3 == 2)
  {
    v4 = 3;
    return MEMORY[0x21CF15F90](v4);
  }

  v6 = v1[1];
  MEMORY[0x21CF15F90](0);
  sub_21C89724C(a1, v3);

  return sub_21C89724C(a1, v6);
}

uint64_t sub_21C87F668()
{
  v2 = *v0;
  v1 = v0[1];
  sub_21CB86484();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x21CF15F90](0);
        sub_21C89724C(v5, v2);
        sub_21C89724C(v5, v1);
        return sub_21CB864D4();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x21CF15F90](v3);
  return sub_21CB864D4();
}

uint64_t sub_21C87F6FC(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(v4)
  {
    case 0:
      return v5 == 0;
    case 1:
      return v5 == 1;
    case 2:
      return v5 == 2;
  }

  if (v5 < 3)
  {
    return 0;
  }

  v8 = a2[1];
  v9 = a1[1];
  if ((sub_21C7A2154(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_21C7A2154(v9, v8);
}

uint64_t sub_21C87F798(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__groupIDForInvitationAcceptanceFlow;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v7, v6, &unk_27CDF20B0, &unk_21CBA0090);
  v8 = sub_21C897AE0(v6, a1);
  sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  else
  {
    sub_21C6EDBAC(a1, v6, &unk_27CDF20B0, &unk_21CBA0090);
    swift_beginAccess();
    sub_21C815B54(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C87FA18(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C87FB1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB85114();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_21C713E38(&qword_27CDEE658, MEMORY[0x277CDF0E0]);
  v15[0] = a1;
  LOBYTE(a1) = sub_21CB85574();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_21C87FDF8(char a1)
{
  v2 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccountsSortOrder;
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccountsSortOrder);
  v4 = a1 & 1;
  result = sub_21CB80FD4();
  if (result)
  {
    *(v1 + v2) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C87FF18(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v7 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v6 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);
  v8 = v7 == a1 && v6 == a2;
  if (v8 || (v9 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText), v10 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8), (sub_21CB86344() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
    sub_21C880F84(v7, v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C880094(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText);
  v6 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText) == a1 && *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText + 8), (sub_21CB86344() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C880200(unsigned __int8 a1)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) == a1)
  {

    return sub_21C713C74(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C88033C(char a1)
{
  v2 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder;
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder);
  v4 = a1 & 1;
  if (sub_21CB80FD4())
  {
    v5 = *(v1 + v2);
    *(v1 + v2) = v4;

    return sub_21C710898();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C880484(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs;
  v5 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v7 = sub_21C7A2154(v6, a1);

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
    swift_getKeyPath();
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810D4();

    v9 = *(v2 + v4);

    v10 = sub_21C7A2154(v8, v9);

    if (v10)
    {
    }

    else
    {
      v14 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
      v13 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);
      swift_getKeyPath();

      sub_21CB810D4();

      v15 = *(v2 + v4);

      v14(v8, v15);

      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C88073C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__groupIDForInvitationAcceptanceFlow;
  swift_beginAccess();
  return sub_21C6EDBAC(v5 + v3, a1, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C880814(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__groupIDForInvitationAcceptanceFlow;
  swift_beginAccess();
  sub_21C898198(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C8808DC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  return *(v2 + *a2);
}

uint64_t sub_21C88097C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  swift_beginAccess();
  v4 = sub_21CB85114();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21C880A74(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  swift_beginAccess();
  v5 = sub_21CB85114();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_21C880B50(uint64_t a1, unsigned int *a2)
{
  v3 = sub_21CB85114();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v7, *a2, v5);
  return sub_21C87FB1C(v7);
}

uint64_t sub_21C880C70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C714B64(v4);
}

uint64_t sub_21C880C9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts);
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts) = a2;

  sub_21C710AE8(0);
  result = sub_21C715E9C();
  if (*(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C880DF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_21C880ED0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_21C880F84(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  result = a1;
  v6 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText) != result || *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8) != a2)
  {
    result = sub_21CB86344();
    if ((result & 1) == 0)
    {
      swift_getKeyPath();
      sub_21CB810D4();

      v8 = v6[1];
      v9 = *v6 & 0xFFFFFFFFFFFFLL;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v8) & 0xF;
      }

      if (!v9)
      {
        sub_21C880094(0, 0xE000000000000000);
      }

      return sub_21C715E9C();
    }
  }

  return result;
}

uint64_t sub_21C8810E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v4 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v5 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);
  *v3 = a2;
  v3[1] = a3;

  sub_21C880F84(v4, v5);
}

uint64_t sub_21C881154(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_21C88121C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_set_396Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_21C881338()
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask);
}

uint64_t sub_21C8813E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask);
}

uint64_t sub_21C881498(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask;
  if (!*(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask);

  v5 = sub_21CB85934();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_21C881628()
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  return *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);
}

BOOL sub_21C8816E4(uint64_t a1)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_21CB83834();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel___observationRegistrar;
  v51 = v1;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v19 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);
  if ((v19 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v20 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    return 0;
  }

  v45 = v10;
  v46 = v17;
  v43 = v6;
  v44 = v14;
  v22 = v48;
  v23 = v49;
  v47 = v18;
  v24 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__globalSearchModel);
  v25 = qword_27CDEA4C0;

  v26 = v2;
  if (v25 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v27 = sub_21C81C2B8(v24, v51);

  swift_getKeyPath();
  v51 = v27;
  sub_21C713E38(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel);
  sub_21CB810D4();

  v28 = *(v27 + 33);

  v29 = v50;
  if (v28 == 1)
  {
    v30 = v22;
    v31 = *(v22 + 104);
    v32 = v46;
    v33 = v23;
    v31(v46, *MEMORY[0x277CE0558], v23);
    (*(v30 + 56))(v32, 0, 1, v23);
    v34 = *(v7 + 48);
    v35 = v30;
    v36 = v45;
    sub_21C6EDBAC(v29, v45, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EDBAC(v32, v36 + v34, &qword_27CDEC390, &qword_21CBA40E0);
    v37 = *(v30 + 48);
    if (v37(v36, 1, v33) == 1)
    {
      sub_21C6EA794(v32, &qword_27CDEC390, &qword_21CBA40E0);
      if (v37(v36 + v34, 1, v33) == 1)
      {
        sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
        return 0;
      }

      goto LABEL_14;
    }

    v38 = v44;
    sub_21C6EDBAC(v36, v44, &qword_27CDEC390, &qword_21CBA40E0);
    if (v37(v36 + v34, 1, v33) == 1)
    {
      sub_21C6EA794(v46, &qword_27CDEC390, &qword_21CBA40E0);
      (*(v30 + 8))(v38, v33);
LABEL_14:
      sub_21C6EA794(v36, &qword_27CDEE530, &unk_21CBA9D80);
      goto LABEL_15;
    }

    v39 = v43;
    (*(v30 + 32))(v43, v36 + v34, v33);
    sub_21C713E38(&qword_27CDEE538, MEMORY[0x277CE0570]);
    v40 = sub_21CB85574();
    v41 = *(v35 + 8);
    v41(v39, v33);
    sub_21C6EA794(v46, &qword_27CDEC390, &qword_21CBA40E0);
    v41(v38, v33);
    sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
    if (v40)
    {
      return 0;
    }
  }

LABEL_15:
  swift_getKeyPath();
  v51 = v26;
  sub_21CB810D4();

  if ((*(v26 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) & 0xFE) == 2)
  {
    return 1;
  }

  swift_getKeyPath();
  v51 = v26;
  sub_21CB810D4();

  return *(*(v26 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts) + 16) > 0x15uLL;
}

uint64_t sub_21C881D68@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  *a3 = *(v5 + *a2);
}

uint64_t sub_21C881E40()
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts);
}

uint64_t sub_21C881EEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts);
}

uint64_t sub_21C881FA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts;
  if (!*(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts);

  v6 = sub_21C714F88(v5, a1);

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

void *sub_21C882110()
{
  swift_getKeyPath();
  v7 = v0;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts))
  {
    v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts);
  }

  else
  {
    swift_getKeyPath();
    v7 = v0;
    sub_21CB810D4();

    v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts);
    swift_bridgeObjectRetain_n();
    sub_21C715A80(&v7, sub_21C88F3F0, sub_21C889584);

    v1 = v7;
    if (v7[2] >= 6uLL)
    {
      v2 = *(type metadata accessor for PMAccount(0) - 8);
      sub_21CAC8DDC(v1, v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), 0, 0xBuLL);
      v4 = v3;

      v1 = v4;
    }

    sub_21C881FA0(v5);
  }

  return v1;
}

uint64_t sub_21C8822F8(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  v9 = sub_21CB80DD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  PMAccount.creationDate.getter(v8);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    PMAccount.lastModifiedDate.getter(v16);
    if (v17(v8, 1, v9) != 1)
    {
      sub_21C6EA794(v8, &unk_27CDED250, &qword_21CBA64C0);
    }
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
  }

  PMAccount.creationDate.getter(v6);
  if (v17(v6, 1, v9) == 1)
  {
    PMAccount.lastModifiedDate.getter(v14);
    if (v17(v6, 1, v9) != 1)
    {
      sub_21C6EA794(v6, &unk_27CDED250, &qword_21CBA64C0);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v6, v9);
  }

  v18 = sub_21CB80D34();
  v19 = *(v10 + 8);
  v19(v14, v9);
  v19(v16, v9);
  return v18 & 1;
}

id sub_21C882698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMAppAccountsListModel.WrappedPMAccount(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21C882728()
{
  v120 = sub_21CB80CF4();
  v146 = *(v120 - 8);
  v1 = *(v146 + 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v100 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB80B54();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v118 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_21CB80F84();
  v124 = *(v140 - 8);
  v6 = *(v124 + 64);
  MEMORY[0x28223BE20](v140);
  v117 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB80E54();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFB0, &qword_21CBAB740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v115 = &v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFB8, &qword_21CBAB748);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v114 = &v100 - v16;
  v113 = sub_21CB80D04();
  v105 = *(v113 - 8);
  v17 = *(v105 + 64);
  v18 = MEMORY[0x28223BE20](v113);
  v112 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v111 = &v100 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFC0, &qword_21CBAB750);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v100 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFC8, &unk_21CBAB758);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v139 = &v100 - v27;
  v138 = sub_21CB80944();
  v123 = *(v138 - 8);
  v28 = *(v123 + 64);
  MEMORY[0x28223BE20](v138);
  v137 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v136 = &v100 - v32;
  v145 = sub_21CB81024();
  v143 = *(v145 - 8);
  v33 = *(v143 + 64);
  MEMORY[0x28223BE20](v145);
  v144 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_21CB80DD4();
  v110 = *(v142 - 8);
  v35 = *(v110 + 64);
  v36 = MEMORY[0x28223BE20](v142);
  v135 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v100 - v38;
  v40 = sub_21CB80E64();
  v41 = *(v40 - 8);
  v42 = v41[8];
  MEMORY[0x28223BE20](v40);
  v44 = &v100 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_21CB80F24();
  v109 = *(v141 - 8);
  v45 = *(v109 + 64);
  v46 = MEMORY[0x28223BE20](v141);
  v131 = &v100 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v100 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v100 - v51;
  sub_21CB80F04();
  v53 = v41[13];
  v130 = *MEMORY[0x277CC9830];
  v129 = v41 + 13;
  v128 = v53;
  v53(v44);
  sub_21CB80E74();
  v127 = v41[1];
  v132 = v44;
  v134 = v40;
  v133 = v41 + 1;
  v127(v44, v40);
  sub_21CB80DA4();
  v151 = v0;
  v152 = v52;
  v101 = v52;
  v103 = v39;
  v153 = v39;
  v154 = v50;
  v102 = v50;

  v55 = sub_21C883DB4(v54, sub_21C897F24, v150);
  v56 = *(v55 + 16);
  v149 = v55;
  if (v56)
  {
    v57 = v55;
    v58 = sub_21CAC8A34(v56, 0);
    v59 = sub_21C8973A8(v155, v58 + 4, v56, v57);

    sub_21C6F1E7C();
    if (v59 != v56)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

  v155[0] = v58;

  sub_21C88791C(v155);

  v60 = v155[0];
  v61 = v149;
  v148 = *(v155[0] + 2);
  if (!v148)
  {
    v63 = MEMORY[0x277D84F90];
    v59 = v142;
LABEL_35:

    (*(v110 + 8))(v103, v59);
    v97 = *(v109 + 8);
    v98 = v141;
    v97(v102, v141);
    v97(v101, v98);
    return v63;
  }

  v62 = 0;
  v147 = v155[0] + 32;
  v143 += 8;
  v126 = "I.WrappedPMAccount";
  v125 = (v109 + 56);
  v124 += 56;
  v123 += 8;
  v122 = (v109 + 8);
  v121 = (v110 + 48);
  v107 = (v110 + 32);
  v106 = (v146 + 8);
  v105 += 8;
  v104 = (v110 + 8);
  v63 = MEMORY[0x277D84F90];
  v59 = v142;
  v146 = v155[0];
  v108 = v24;
  while (v62 < *(v60 + 2))
  {
    v64 = *&v147[8 * v62];
    if (v64 > 3001)
    {
      if (v64 == 3002)
      {
        v65 = v144;
LABEL_23:
        sub_21CB81014();
        v77 = sub_21CB81004();
        v79 = v80;
        (*v143)(v65, v145);
        if (!*(v61 + 16))
        {
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      if (v64 == 3003)
      {
        v65 = v144;
        goto LABEL_23;
      }
    }

    else
    {
      if (v64 == 3000)
      {
        v65 = v144;
        goto LABEL_23;
      }

      if (v64 == 3001)
      {
        v65 = v144;
        goto LABEL_23;
      }
    }

    v66 = v132;
    v67 = v134;
    v128(v132, v130, v134);
    v68 = v131;
    sub_21CB80E74();
    v127(v66, v67);
    v69 = v141;
    (*v125)(v139, 1, 1, v141);
    (*v124)(v24, 1, 1, v140);
    v70 = v137;
    sub_21CB80934();
    v71 = v136;
    sub_21CB80EE4();
    v72 = v70;
    v59 = v142;
    (*v123)(v72, v138);
    (*v122)(v68, v69);
    if ((*v121)(v71, 1, v59) == 1)
    {
      sub_21C6EA794(v71, &unk_27CDED250, &qword_21CBA64C0);
      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v73 = sub_21CB81C84();
      __swift_project_value_buffer(v73, qword_27CE186E0);
      v74 = sub_21CB81C64();
      v75 = sub_21CB85AF4();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_21C6E5000, v74, v75, "Failed to assign section title for saved account in sectionsSortedByDate.", v76, 2u);
        MEMORY[0x21CF16D90](v76, -1, -1);
      }

      v155[0] = v64;
      v77 = sub_21CB862F4();
      v79 = v78;
    }

    else
    {
      (*v107)(v135, v71, v59);
      v87 = sub_21CB80CB4();
      (*(*(v87 - 8) + 56))(v114, 1, 1, v87);
      v88 = sub_21CB80CA4();
      (*(*(v88 - 8) + 56))(v115, 1, 1, v88);
      sub_21CB80E44();
      sub_21CB80EC4();
      sub_21CB80F74();
      sub_21CB80B44();
      v89 = v112;
      sub_21CB80CC4();
      v90 = v119;
      sub_21CB80CE4();
      v91 = v111;
      sub_21CB80CD4();
      (*v106)(v90, v120);
      v92 = *v105;
      v93 = v89;
      v24 = v108;
      v94 = v113;
      (*v105)(v93, v113);
      sub_21C713E38(&qword_27CDEEFD0, MEMORY[0x277CC9428]);
      v95 = v135;
      sub_21CB80DB4();
      v96 = v94;
      v59 = v142;
      v92(v91, v96);
      v77 = v155[0];
      v79 = v155[1];
      (*v104)(v95, v59);
    }

    v61 = v149;
    if (!*(v149 + 16))
    {
      goto LABEL_37;
    }

LABEL_24:
    v81 = sub_21CB1098C(v64);
    if ((v82 & 1) == 0)
    {
      goto LABEL_38;
    }

    v83 = *(*(v61 + 56) + 8 * v81);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_21CA4F098(0, *(v63 + 2) + 1, 1, v63);
    }

    v85 = *(v63 + 2);
    v84 = *(v63 + 3);
    if (v85 >= v84 >> 1)
    {
      v63 = sub_21CA4F098((v84 > 1), v85 + 1, 1, v63);
    }

    ++v62;
    *(v63 + 2) = v85 + 1;
    v86 = &v63[24 * v85];
    *(v86 + 4) = v77;
    *(v86 + 5) = v79;
    *(v86 + 6) = v83;
    v61 = v149;
    v60 = v146;
    if (v148 == v62)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_21C883824@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(char *, uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v60 = a2;
  v55 = a4;
  v56 = a3;
  v59 = a5;
  v6 = sub_21CB80944();
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v44 - v15;
  v17 = sub_21CB80DD4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v61 = a1;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  if (*(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) == 2)
  {
    PMAccount.creationDate.getter(v16);
    v22 = *(v18 + 48);
    if (v22(v16, 1, v17) == 1)
    {
      PMAccount.lastModifiedDate.getter(v21);
      if (v22(v16, 1, v17) != 1)
      {
        sub_21C6EA794(v16, &unk_27CDED250, &qword_21CBA64C0);
      }
    }

    else
    {
      (*(v18 + 32))(v21, v16, v17);
    }
  }

  else
  {
    PMAccount.lastModifiedDate.getter(v21);
  }

  if (sub_21CB80E84())
  {
    v23 = 3003;
LABEL_17:
    result = (*(v18 + 8))(v21, v17);
    *v59 = v23;
    return result;
  }

  if (sub_21CB80EB4())
  {
    v23 = 3002;
    goto LABEL_17;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFD8, &qword_21CBAB768);
  v25 = sub_21CB80F14();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v49 = *(v26 + 80);
  v50 = v27;
  v51 = v24;
  v29 = swift_allocObject();
  v46 = xmmword_21CBA0690;
  *(v29 + 16) = xmmword_21CBA0690;
  v30 = *MEMORY[0x277CC9968];
  v47 = *(v26 + 104);
  v48 = v26 + 104;
  v47(v29 + v28, v30, v25);
  sub_21C8D82A0(v29);
  swift_setDeallocating();
  v31 = *(v26 + 8);
  v52 = v28;
  v53 = v25;
  v45 = v31;
  v31(v29 + v28, v25);
  swift_deallocClassInstance();
  sub_21CB80E94();

  v32 = sub_21CB80914();
  LOBYTE(v24) = v33;
  v34 = *(v58 + 8);
  v35 = v12;
  v36 = v57;
  v58 += 8;
  result = v34(v35, v57);
  if (v24)
  {
    __break(1u);
  }

  else
  {
    if (v32 < 8)
    {
      v23 = 3001;
      goto LABEL_17;
    }

    if (v32 < 0x1F)
    {
      v23 = 3000;
      goto LABEL_17;
    }

    v38 = v52;
    v39 = swift_allocObject();
    *(v39 + 16) = v46;
    v40 = *MEMORY[0x277CC9988];
    v60 = v34;
    v41 = v53;
    v47(v39 + v38, v40, v53);
    sub_21C8D82A0(v39);
    swift_setDeallocating();
    v45(v39 + v38, v41);
    swift_deallocClassInstance();
    v42 = v54;
    sub_21CB80EA4();

    v23 = sub_21CB80924();
    LOBYTE(v39) = v43;
    result = v60(v42, v36);
    if ((v39 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C883DB4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v42 = a3;
  v6 = type metadata accessor for PMAccount(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v35 - v10;
  v11 = MEMORY[0x277D84F98];
  v45 = MEMORY[0x277D84F98];
  v38 = *(a1 + 16);
  if (v38)
  {
    v12 = 0;
    v35 = xmmword_21CBA0690;
    v37 = a1;
    while (v12 < *(a1 + 16))
    {
      v13 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v14 = *(v40 + 72);
      v15 = v43;
      sub_21C7106A8(a1 + v13 + v14 * v12, v43, type metadata accessor for PMAccount);
      v41(&v44, v15);
      if (v4)
      {
        sub_21C7126DC(v43, type metadata accessor for PMAccount);

        goto LABEL_19;
      }

      v16 = v44;
      v18 = sub_21CB1098C(v44);
      v19 = v11[2];
      v20 = (v17 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_21;
      }

      v22 = v17;
      if (v11[3] < v21)
      {
        sub_21C8D0E6C(v21, 1);
        v11 = v45;
        v23 = sub_21CB1098C(v16);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_23;
        }

        v18 = v23;
      }

      if (v22)
      {
        v25 = v11[7];
        sub_21C8399BC(v43, v39, type metadata accessor for PMAccount);
        v26 = *(v25 + 8 * v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v25 + 8 * v18) = v26;
        v36 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_21CA4F1B8(0, v26[2] + 1, 1, v26);
          *(v25 + 8 * v18) = v26;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v26 = sub_21CA4F1B8(v28 > 1, v29 + 1, 1, v26);
          *(v25 + 8 * v18) = v26;
        }

        v26[2] = v29 + 1;
        sub_21C8399BC(v39, v26 + v13 + v29 * v14, type metadata accessor for PMAccount);
        v4 = v36;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
        v30 = swift_allocObject();
        *(v30 + 16) = v35;
        sub_21C8399BC(v43, v30 + v13, type metadata accessor for PMAccount);
        v11[(v18 >> 6) + 8] |= 1 << v18;
        *(v11[6] + 8 * v18) = v16;
        *(v11[7] + 8 * v18) = v30;
        v31 = v11[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_22;
        }

        v11[2] = v33;
      }

      ++v12;
      a1 = v37;
      if (v38 == v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_21CB863B4();
    __break(1u);
  }

  else
  {
LABEL_19:

    return v11;
  }

  return result;
}

uint64_t sub_21C884160(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v4 = *(v2 + *a2);
}

uint64_t sub_21C884204(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs;
  v4 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs) = a2;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);

  sub_21CB810D4();

  v5 = *(a1 + v3);

  v6 = sub_21C7A2154(v4, v5);

  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
    v8 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);
    swift_getKeyPath();

    sub_21CB810D4();

    v9 = *(a1 + v3);

    v7(v4, v9);
  }
}

uint64_t sub_21C8843A0()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v30 - v6);
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel___observationRegistrar;
  v39 = v1;
  v34 = sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  v35 = v8;
  sub_21CB810D4();

  v37 = v1;
  v9 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts);
  v10 = *(v9 + 16);
  v32 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs;

  v33 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v31 = v9;
    while (1)
    {
      if (v12 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v14 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v15 = *(v36 + 72);
      sub_21C7106A8(v9 + v14 + v15 * v12, v7, type metadata accessor for PMAccount);
      swift_getKeyPath();
      v16 = v37;
      v39 = v37;
      sub_21CB810D4();

      v17 = *(v16 + v32);
      if (*(v17 + 16))
      {
        v38 = v13;
        v18 = *v7;
        v19 = v7[1];
        v20 = *(v17 + 40);
        sub_21CB86484();

        sub_21CB854C4();
        v21 = sub_21CB864D4();
        v22 = -1 << *(v17 + 32);
        v23 = v21 & ~v22;
        if ((*(v17 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          while (1)
          {
            v25 = (*(v17 + 48) + 16 * v23);
            v26 = *v25 == v18 && v25[1] == v19;
            if (v26 || (sub_21CB86344() & 1) != 0)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v17 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          sub_21C8399BC(v7, v30, type metadata accessor for PMAccount);
          v13 = v38;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21C7B0C4C(0, *(v13 + 16) + 1, 1);
            v13 = v40;
          }

          v9 = v31;
          v29 = *(v13 + 16);
          v28 = *(v13 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_21C7B0C4C(v28 > 1, v29 + 1, 1);
            v13 = v40;
          }

          *(v13 + 16) = v29 + 1;
          result = sub_21C8399BC(v30, v13 + v14 + v29 * v15, type metadata accessor for PMAccount);
          goto LABEL_5;
        }

LABEL_3:

        v9 = v31;
        v13 = v38;
      }

      result = sub_21C7126DC(v7, type metadata accessor for PMAccount);
LABEL_5:
      if (++v12 == v33)
      {
        goto LABEL_23;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_23:

  return v13;
}

uint64_t sub_21C884770(uint64_t a1)
{
  v3 = type metadata accessor for PMAccount(0);
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v28 - v7);
  swift_getKeyPath();
  v34 = v1;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v9 = *(*(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts) + 16);

  v32 = v9;
  if (v9)
  {
    v11 = 0;
    v12 = a1 + 56;
    v30 = MEMORY[0x277D84F90];
    v31 = result;
    while (v11 < *(result + 16))
    {
      v13 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v14 = *(v33 + 72);
      sub_21C7106A8(result + v13 + v14 * v11, v8, type metadata accessor for PMAccount);
      if (!*(a1 + 16))
      {
        goto LABEL_3;
      }

      v15 = *v8;
      v16 = v8[1];
      v17 = *(a1 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      v18 = sub_21CB864D4();
      v19 = -1 << *(a1 + 32);
      v20 = v18 & ~v19;
      if ((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(a1 + 48) + 16 * v20);
          v23 = *v22 == v15 && v22[1] == v16;
          if (v23 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_21C8399BC(v8, v29, type metadata accessor for PMAccount);
        v24 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v24 + 16) + 1, 1);
          v24 = v35;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_21C7B0C4C(v26 > 1, v27 + 1, 1);
          v24 = v35;
        }

        *(v24 + 16) = v27 + 1;
        v30 = v24;
        sub_21C8399BC(v29, v24 + v13 + v27 * v14, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_3:
        sub_21C7126DC(v8, type metadata accessor for PMAccount);
      }

      ++v11;
      result = v31;
      if (v11 == v32)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
LABEL_22:

    return v30;
  }

  return result;
}

uint64_t sub_21C884AE0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_21C884B98(uint64_t a1, char a2)
{

  v5 = sub_21C87E898(v4);
  v7 = v6;
  v9 = v8;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__deleteAccountsAlertConfiguration;
  swift_beginAccess();
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + v10);
  *(v2 + v10) = 0x8000000000000000;
  sub_21C8D4880(v5, v7, v9, a2 & 1, isUniquelyReferenced_nonNull_native);
  *(v2 + v10) = v14;
  swift_endAccess();
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C884D24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v3, v6);

  sub_21C8329EC(a2);
}

uint64_t sub_21C884DE8()
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo + 8);

  return v1;
}

uint64_t sub_21C884EA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
  a2[1] = v4;
}

uint64_t sub_21C884F5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C884F9C(v2, v3);
}

uint64_t sub_21C884F9C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
  v6 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo + 8);
      if (sub_21CB86344())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21C885118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
  v4 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo + 8);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_21C885160()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(*v0 + 16);
  if (!v8)
  {
    return result;
  }

  v9 = v8 - 1;
  if (v8 == 1)
  {
    return result;
  }

  v10 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_17:
    result = sub_21CAA108C(v7);
    v7 = result;
  }

  v11 = 1;
  while (1)
  {
    v13 = v11 - 1;
    if (v11 - 1 == v9)
    {
      goto LABEL_6;
    }

    v14 = v7[2];
    if (v13 >= v14)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v15 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v16 = *(v2 + 72);
    v17 = &v15[v16 * v13];
    sub_21C7106A8(v17, v6, type metadata accessor for PMAccount);
    if (v9 >= v14)
    {
      goto LABEL_16;
    }

    result = sub_21C839958(&v15[v16 * v9], v17);
    if (v9 >= v7[2])
    {
      break;
    }

    result = sub_21C897944(v6, &v15[v16 * v9]);
LABEL_6:
    if (v11++ >= --v9)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v7;
  return result;
}

uint64_t sub_21C8852EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  swift_getKeyPath();
  v11 = v0;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask))
  {

    sub_21CB85944();
  }

  sub_21CB858C4();
  v5 = sub_21CB858E4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v8 = sub_21C9E6C0C(0, 0, v4, &unk_21CBAB5D0, v7);
  sub_21C6EA794(v4, &qword_27CDF1D50, &qword_21CBA0C00);
  return sub_21C881498(v8);
}

uint64_t sub_21C8854EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for PMAccount.MockData(0);
  v4[19] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for PMAccount.Storage(0);
  v4[21] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v9 = type metadata accessor for PMAccount(0);
  v4[24] = v9;
  v10 = *(v9 - 8);
  v4[25] = v10;
  v11 = *(v10 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C885630, 0, 0);
}

uint64_t sub_21C885630()
{
  v1 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[29] = Strong;
  if (!Strong)
  {
LABEL_4:
    v4 = v0[27];
    v3 = v0[28];
    v5 = v0[26];
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[20];

    v9 = v0[1];

    return v9();
  }

  if (sub_21CB85954())
  {

    goto LABEL_4;
  }

  v0[30] = sub_21CB858B4();
  v0[31] = sub_21CB858A4();
  v12 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C885788, v12, v11);
}

uint64_t sub_21C885788()
{
  v1 = v0[31];
  v2 = v0[29];

  swift_getKeyPath();
  v0[16] = v2;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v3 = v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText;
  v0[32] = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v0[33] = *(v3 + 8);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccounts;
  swift_beginAccess();
  v0[34] = *(v2 + v4);
  v5 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__autoFillQuirksManager);
  v6 = qword_27CDEA4C0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v7 = sub_21C81C2D0(v5, v0[17]);

  v0[35] = [v7 associatedDomainsManager];

  return MEMORY[0x2822009F8](sub_21C885960, 0, 0);
}

uint64_t sub_21C885960()
{
  if ((sub_21CB85954() & 1) == 0)
  {
    v4 = *(v0 + 272);
    v74 = *(v4 + 16);
    if (v74)
    {
      v5 = *(v0 + 224);
      v6 = *(v0 + 192);
      v7 = *(v0 + 184);
      v8 = *(v0 + 168);
      v9 = *(*(v0 + 200) + 80);
      v68 = *(v0 + 272);
      v70 = (v9 + 32) & ~v9;
      v72 = v4 + v70;
      sub_21C7106A8(v4 + v70, v5, type metadata accessor for PMAccount);
      v73 = v6;
      sub_21C7106A8(v5 + *(v6 + 24), v7, type metadata accessor for PMAccount.Storage);
      LODWORD(v8) = swift_getEnumCaseMultiPayload();
      sub_21C7126DC(v7, type metadata accessor for PMAccount.Storage);
      v10 = sub_21C7126DC(v5, type metadata accessor for PMAccount);
      if (v8 == 1)
      {
        v13 = 0;
        v71 = *(v0 + 200);
        v67 = *(v0 + 160);
        v69 = *(v0 + 152);
        matched = MEMORY[0x277D84F90];
        v15 = v4;
        while (v13 < *(v15 + 16))
        {
          v16 = *(v0 + 216);
          v18 = *(v0 + 168);
          v17 = *(v0 + 176);
          v19 = *(v71 + 72);
          sub_21C7106A8(v72 + v19 * v13, v16, type metadata accessor for PMAccount);
          sub_21C7106A8(v16 + *(v73 + 24), v17, type metadata accessor for PMAccount.Storage);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v21 = *(v0 + 176);
          if (EnumCaseMultiPayload == 1)
          {
            v22 = *(v0 + 160);
            sub_21C8399BC(v21, v22, type metadata accessor for PMAccount.MockData);
            v23 = (v22 + *(v69 + 44));
            if (v23[1])
            {
              v24 = *v23;
              v25 = v23[1];
            }

            else
            {
              v28 = *(v67 + 32);
              v29 = *(v67 + 40);
            }

            v30 = *(v0 + 160);

            sub_21C7126DC(v30, type metadata accessor for PMAccount.MockData);
          }

          else
          {
            v26 = *v21;
            v27 = [*v21 effectiveTitle];
            sub_21CB855C4();
          }

          v31 = *(v0 + 256);
          v32 = *(v0 + 264);
          v33 = sub_21CB85634();
          v35 = v34;

          *(v0 + 64) = v33;
          *(v0 + 72) = v35;
          *(v0 + 80) = v31;
          *(v0 + 88) = v32;
          sub_21C71F3FC();
          LOBYTE(v33) = sub_21CB85ED4();

          if (v33)
          {
            goto LABEL_18;
          }

          v36 = *(v0 + 216);
          PMAccount.userName.getter();
          if (!v37)
          {
            goto LABEL_6;
          }

          v39 = *(v0 + 256);
          v38 = *(v0 + 264);
          v40 = sub_21CB85634();
          v42 = v41;

          *(v0 + 96) = v40;
          *(v0 + 104) = v42;
          *(v0 + 112) = v39;
          *(v0 + 120) = v38;
          v15 = v68;
          v43 = sub_21CB85ED4();

          if (v43)
          {
LABEL_18:
            sub_21C8399BC(*(v0 + 216), *(v0 + 208), type metadata accessor for PMAccount);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_21C7B0C4C(0, *(matched + 16) + 1, 1);
            }

            v45 = *(matched + 16);
            v44 = *(matched + 24);
            if (v45 >= v44 >> 1)
            {
              sub_21C7B0C4C(v44 > 1, v45 + 1, 1);
            }

            v46 = *(v0 + 208);
            *(matched + 16) = v45 + 1;
            v10 = sub_21C8399BC(v46, matched + v70 + v45 * v19, type metadata accessor for PMAccount);
          }

          else
          {
LABEL_6:
            v10 = sub_21C7126DC(*(v0 + 216), type metadata accessor for PMAccount);
          }

          if (v74 == ++v13)
          {
            v51 = *(v0 + 272);
            goto LABEL_26;
          }
        }

        __break(1u);
        return MEMORY[0x2822009F8](v10, v11, v12);
      }

      v4 = *(v0 + 272);
    }

    v47 = *(v0 + 280);
    v49 = *(v0 + 256);
    v48 = *(v0 + 264);
    v50 = v47;
    matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v4, v49, v48, v47);

LABEL_26:

    *(v0 + 288) = matched;
    if (sub_21CB85954())
    {
      v52 = *(v0 + 280);
      v53 = *(v0 + 264);
      v54 = *(v0 + 232);

      goto LABEL_28;
    }

    v63 = *(v0 + 240);
    *(v0 + 296) = sub_21CB858A4();
    v64 = sub_21CB85874();
    v66 = v65;
    v10 = sub_21C885F00;
    v11 = v64;
    v12 = v66;

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);

LABEL_28:
  v56 = *(v0 + 216);
  v55 = *(v0 + 224);
  v57 = *(v0 + 208);
  v59 = *(v0 + 176);
  v58 = *(v0 + 184);
  v60 = *(v0 + 160);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_21C885F00()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];

  sub_21C71273C(v2);
  sub_21C880094(v4, v3);

  return MEMORY[0x2822009F8](sub_21C885F8C, 0, 0);
}

uint64_t sub_21C885F8C()
{
  v1 = v0[35];
  v2 = v0[29];

  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[20];

  v9 = v0[1];

  return v9();
}

uint64_t sub_21C886040(uint64_t *a1)
{
  v26 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v4 = (v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for PMAccount(0);
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v25);
  v23 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22[1] = result;
    v24 = *(v11 + 16);
    if (v24)
    {
      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v16 = *(v5 + 72);
        sub_21C7106A8(v11 + v15 + v16 * v13, v10, type metadata accessor for PMAccount);
        sub_21C7106A8(&v10[*(v25 + 24)], v4, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C7126DC(v4, type metadata accessor for PMAccount.Storage);
        }

        else
        {
          v17 = *v4;
          v18 = [*v4 canBeExportedViaCredentialExchange];

          if (v18)
          {
            sub_21C8399BC(v10, v23, type metadata accessor for PMAccount);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v27 = v14;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21C7B0C4C(0, *(v14 + 16) + 1, 1);
              v14 = v27;
            }

            v21 = *(v14 + 16);
            v20 = *(v14 + 24);
            if (v21 >= v20 >> 1)
            {
              sub_21C7B0C4C(v20 > 1, v21 + 1, 1);
              v14 = v27;
            }

            *(v14 + 16) = v21 + 1;
            result = sub_21C8399BC(v23, v14 + v15 + v21 * v16, type metadata accessor for PMAccount);
            goto LABEL_6;
          }
        }

        result = sub_21C7126DC(v10, type metadata accessor for PMAccount);
LABEL_6:
        if (v24 == ++v13)
        {
          goto LABEL_16;
        }
      }
    }

    v14 = MEMORY[0x277D84F90];
LABEL_16:
    sub_21C714B64(v14);
  }

  return result;
}

uint64_t sub_21C886364(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(v4 + 16) && (v6 = sub_21CB10A54(a3), (v7 & 1) != 0))
    {
      v8 = *(*(v4 + 56) + 8 * v6);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    sub_21C714B64(v9);
  }

  return result;
}

uint64_t sub_21C8863FC(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    v25 = v5;
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810D4();

    v6 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs;
    v7 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);
    v8 = *a1;
    v9 = a1[1];

    v10 = sub_21C8FFAE0(v8, v9, v7);

    if (v10)
    {
      swift_getKeyPath();
      sub_21CB810D4();

      v25 = v5;
      swift_getKeyPath();
      sub_21CB810F4();

      v25 = *(v5 + v6);

      sub_21CB4BAE4(v8, v9);

      v11 = *(v5 + v6);
      *(v5 + v6) = v25;
      swift_getKeyPath();
      v26 = v5;
      sub_21CB810D4();

      v12 = *(v5 + v6);

      v13 = sub_21C7A2154(v11, v12);

      if ((v13 & 1) == 0)
      {
        v15 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
        v14 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);
        swift_getKeyPath();
        v26 = v5;

        sub_21CB810D4();

        v16 = *(v5 + v6);

        v15(v11, v16);
      }

      v25 = v5;
      swift_getKeyPath();
      sub_21CB810E4();

      v18 = *a2;
      v17 = a2[1];
      swift_getKeyPath();

      sub_21CB810D4();

      v25 = v5;
      swift_getKeyPath();
      sub_21CB810F4();

      v26 = *(v5 + v6);

      sub_21CA94078(&v25, v18, v17);

      v19 = *(v5 + v6);
      *(v5 + v6) = v26;
      swift_getKeyPath();
      sub_21CB810D4();

      v20 = *(v5 + v6);

      v21 = sub_21C7A2154(v19, v20);

      if ((v21 & 1) == 0)
      {
        v23 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
        v22 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);
        swift_getKeyPath();

        sub_21CB810D4();

        v24 = *(v5 + v6);

        v23(v19, v24);
      }

      v26 = v5;
      swift_getKeyPath();
      sub_21CB810E4();
    }
  }

  return result;
}

uint64_t sub_21C88687C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v40 = a1;
  v2 = type metadata accessor for PMAccount.MockData(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = sub_21CB80DD4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v37 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v37 - v24;
  v26 = type metadata accessor for PMAccount(0);
  sub_21C7106A8(v40 + *(v26 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C8399BC(v9, v5, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v5[*(v2 + 32)], v18, &unk_27CDED250, &qword_21CBA64C0);
    sub_21C7126DC(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v27 = *v9;
    v28 = [*v9 creationDate];
    if (v28)
    {
      v29 = v28;
      sub_21CB80D94();

      v30 = 0;
      v27 = v29;
    }

    else
    {
      v30 = 1;
    }

    (*(v20 + 56))(v16, v30, 1, v19);
    sub_21C6F1098(v16, v18);
  }

  v31 = *(v20 + 48);
  if (v31(v18, 1, v19) != 1)
  {
    v32 = *(v20 + 32);
    v32(v25, v18, v19);
    v18 = v38;
    PMAccount.creationDate.getter(v38);
    if (v31(v18, 1, v19) != 1)
    {
      v34 = v37;
      v32(v37, v18, v19);
      v33 = sub_21CB80D34();
      v35 = *(v20 + 8);
      v35(v34, v19);
      v35(v25, v19);
      return v33 & 1;
    }

    (*(v20 + 8))(v25, v19);
  }

  sub_21C6EA794(v18, &unk_27CDED250, &qword_21CBA64C0);
  v33 = 1;
  return v33 & 1;
}

void sub_21C886CB8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportError);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportError) = a1;
  v5 = a1;

  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v6 = v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived;
  v7 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived);
  if (v7)
  {
    v8 = *(v6 + 8);

    v7(v9);

    sub_21C71B710(v7);
  }

  else
  {
  }
}

void *sub_21C886DBC()
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportError);
  v2 = v1;
  return v1;
}

id sub_21C886E70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportError);
  *a2 = v4;
  return v4;
}

uint64_t sub_21C886F44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810C4();
}

uint64_t sub_21C887048()
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived);
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived + 8);
  sub_21C71DD5C(v1);
  return v1;
}

uint64_t sub_21C887108@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived);
  v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21C85BB5C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21C71DD5C(v4);
}

uint64_t sub_21C887200(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21C7A2124;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21C71DD5C(v3);
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810C4();
  sub_21C71B710(v6);
}

uint64_t sub_21C88735C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived);
  v4 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived);
  v5 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_21C71DD5C(a2);
  return sub_21C71B710(v4);
}

uint64_t sub_21C8873B4()
{
  sub_21C712E50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C88743C()
{
  result = type metadata accessor for PMAccount(319);
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

uint64_t sub_21C8874D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_id;
  v5 = sub_21CB80E34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21C887554()
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v3 = sub_21C713194(v2);

  return v3;
}

uint64_t sub_21C887620()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI28PMAppAccountsSearchListModel___observationRegistrar;
  v2 = sub_21CB81114();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_21C887690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21C8876D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI22PMAppAccountsListModelC6ActionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C887730(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C88778C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_21C8877DC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_21C887880()
{
  result = qword_27CDEEFA0;
  if (!qword_27CDEEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEFA0);
  }

  return result;
}

uint64_t sub_21C88791C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21C8649E4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_21CB862E4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_21CB85844();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_21C8917FC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_21C887A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v104 = &v95[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v118 = &v95[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v103 = &v95[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v95[-v16];
  v115 = type metadata accessor for PMAccount.MockData(0);
  v18 = *(*(v115 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v115);
  v113 = &v95[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v114 = &v95[-v21];
  v122 = type metadata accessor for PMAccount.Storage(0);
  v22 = *(*(v122 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v122);
  v25 = &v95[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v123 = &v95[-v26];
  v120 = sub_21CB80DD4();
  v27 = *(v120 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v120);
  v105 = &v95[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v112 = &v95[-v32];
  MEMORY[0x28223BE20](v31);
  v34 = &v95[-v33];
  v124 = type metadata accessor for PMAccount(0);
  v35 = *(*(v124 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v124);
  v109 = &v95[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v36);
  v125 = &v95[-v39];
  result = MEMORY[0x28223BE20](v38);
  v121 = &v95[-v42];
  v97 = a2;
  if (a3 != a2)
  {
    v43 = *a4;
    v44 = *(v41 + 72);
    v116 = (v27 + 32);
    v119 = (v27 + 48);
    v110 = (v27 + 56);
    v111 = (v27 + 8);
    v45 = v43 + v44 * (a3 - 1);
    v107 = -v44;
    v108 = v43;
    v46 = a1 - a3;
    v96 = v44;
    v47 = v43 + v44 * a3;
    v117 = v17;
    v106 = v34;
    v102 = v25;
LABEL_5:
    v101 = a3;
    v98 = v47;
    v99 = v46;
    v100 = v45;
    while (1)
    {
      v48 = v121;
      sub_21C7106A8(v47, v121, type metadata accessor for PMAccount);
      sub_21C7106A8(v45, v125, type metadata accessor for PMAccount);
      sub_21C7106A8(&v48[*(v124 + 24)], v123, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v58 = *v123;
      v59 = [*v123 lastModifiedDate];
      if (v59)
      {
        v60 = v59;
        v61 = v105;
        sub_21CB80D94();

        v62 = *v116;
        v63 = v103;
        v64 = v61;
        v65 = v120;
        (*v116)(v103, v64, v120);
        (*v110)(v63, 0, 1, v65);
        v62(v34, v63, v65);
        v54 = v118;
        v56 = v119;
        v55 = v113;
        goto LABEL_16;
      }

      v66 = v103;
      v67 = v120;
      (*v110)(v103, 1, 1, v120);
      sub_21CB80D14();

      v68 = v67;
      v56 = v119;
      v69 = (*v119)(v66, 1, v68);
      v54 = v118;
      v55 = v113;
      if (v69 != 1)
      {
        v57 = v103;
LABEL_15:
        sub_21C6EA794(v57, &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_16:
      sub_21C7106A8(&v125[*(v124 + 24)], v25, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C8399BC(v25, v55, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v55 + *(v115 + 32), v54, &unk_27CDED250, &qword_21CBA64C0);
        v70 = v55;
        v71 = *v56;
        v72 = v120;
        if (v71(v54, 1, v120) != 1)
        {
          sub_21C7126DC(v70, type metadata accessor for PMAccount.MockData);
          v75 = v112;
          (*v116)(v112, v54, v72);
          v25 = v102;
          goto LABEL_26;
        }

        v73 = v112;
        sub_21CB80DA4();
        sub_21C7126DC(v70, type metadata accessor for PMAccount.MockData);
        v74 = v71(v54, 1, v72);
        v75 = v73;
        v34 = v106;
        v25 = v102;
        if (v74 == 1)
        {
          goto LABEL_26;
        }

        v76 = v118;
        goto LABEL_25;
      }

      v77 = *v25;
      v78 = [*v25 lastModifiedDate];
      if (v78)
      {
        v79 = v105;
        v80 = v78;
        sub_21CB80D94();

        v81 = *v116;
        v82 = v104;
        v83 = v79;
        v72 = v120;
        (*v116)(v104, v83, v120);
        (*v110)(v82, 0, 1, v72);
        v84 = v112;
        v81(v112, v82, v72);
        v75 = v84;
        v34 = v106;
        goto LABEL_26;
      }

      v85 = v104;
      v72 = v120;
      (*v110)(v104, 1, 1, v120);
      v86 = v112;
      sub_21CB80D14();

      v87 = v85;
      v75 = v86;
      v88 = (*v119)(v87, 1, v72);
      v34 = v106;
      if (v88 != 1)
      {
        v76 = v104;
LABEL_25:
        sub_21C6EA794(v76, &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_26:
      v89 = sub_21CB80D34();
      v90 = v75;
      v91 = v89;
      v92 = *v111;
      (*v111)(v90, v72);
      v92(v34, v72);
      sub_21C7126DC(v125, type metadata accessor for PMAccount);
      result = sub_21C7126DC(v121, type metadata accessor for PMAccount);
      v17 = v117;
      if ((v91 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v108)
      {
        __break(1u);
        return result;
      }

      v93 = v109;
      sub_21C8399BC(v47, v109, type metadata accessor for PMAccount);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21C8399BC(v93, v45, type metadata accessor for PMAccount);
      v45 += v107;
      v47 += v107;
      if (__CFADD__(v46++, 1))
      {
LABEL_4:
        a3 = v101 + 1;
        v45 = v100 + v96;
        v46 = v99 - 1;
        v47 = v98 + v96;
        if (v101 + 1 == v97)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v49 = v114;
    sub_21C8399BC(v123, v114, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v49[*(v115 + 32)], v17, &unk_27CDED250, &qword_21CBA64C0);
    v50 = v119;
    v51 = v120;
    v52 = *v119;
    if ((*v119)(v17, 1, v120) != 1)
    {
      sub_21C7126DC(v114, type metadata accessor for PMAccount.MockData);
      (*v116)(v34, v17, v51);
      v54 = v118;
      v55 = v113;
      v56 = v50;
      goto LABEL_16;
    }

    sub_21CB80DA4();
    sub_21C7126DC(v114, type metadata accessor for PMAccount.MockData);
    v53 = v52(v17, 1, v51);
    v54 = v118;
    v55 = v113;
    v56 = v50;
    if (v53 == 1)
    {
      goto LABEL_16;
    }

    v57 = v117;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_21C8884E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v96 = type metadata accessor for PMAccount.MockData(0);
  v8 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAccount.Storage(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v80 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v103 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v80 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v89 = &v80 - v24;
  MEMORY[0x28223BE20](v23);
  v105 = &v80 - v25;
  v26 = sub_21CB80DD4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v87 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v102 = &v80 - v31;
  v108 = type metadata accessor for PMAccount(0);
  v32 = *(*(v108 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v108);
  v99 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v109 = &v80 - v36;
  result = MEMORY[0x28223BE20](v35);
  v107 = &v80 - v39;
  v82 = a2;
  if (a3 != a2)
  {
    v40 = *a4;
    v41 = *(v38 + 72);
    v104 = (v27 + 48);
    v92 = (v27 + 32);
    v93 = (v27 + 56);
    v88 = (v27 + 8);
    v42 = v40 + v41 * (a3 - 1);
    v97 = -v41;
    v98 = v40;
    v43 = a1 - a3;
    v81 = v41;
    v44 = v40 + v41 * a3;
    v91 = v10;
    v100 = v16;
    v101 = v14;
    v94 = v26;
LABEL_5:
    v86 = a3;
    v83 = v44;
    v84 = v43;
    v45 = v43;
    v85 = v42;
    while (1)
    {
      v46 = v107;
      sub_21C7106A8(v44, v107, type metadata accessor for PMAccount);
      sub_21C7106A8(v42, v109, type metadata accessor for PMAccount);
      sub_21C7106A8(v46 + *(v108 + 24), v16, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v106 = v45;
      if (EnumCaseMultiPayload == 1)
      {
        v48 = v14;
        v49 = v10;
        v50 = v95;
        sub_21C8399BC(v16, v95, type metadata accessor for PMAccount.MockData);
        v51 = v26;
        v52 = v105;
        sub_21C6EDBAC(v50 + *(v96 + 32), v105, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v50, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v53 = *v16;
        v54 = [*v16 creationDate];
        if (v54)
        {
          v55 = v54;
          v56 = v89;
          sub_21CB80D94();

          v57 = 0;
          v53 = v55;
          v48 = v101;
        }

        else
        {
          v57 = 1;
          v48 = v101;
          v56 = v89;
        }

        v52 = v105;

        v51 = v94;
        (*v93)(v56, v57, 1, v94);
        sub_21C6F1098(v56, v52);
        v49 = v91;
      }

      v58 = v103;
      v59 = *v104;
      v60 = (*v104)(v52, 1, v51);
      v61 = v52;
      v26 = v51;
      v10 = v49;
      v14 = v48;
      if (v60 == 1)
      {
        goto LABEL_21;
      }

      v62 = *v92;
      (*v92)(v102, v105, v26);
      sub_21C7106A8(v109 + *(v108 + 24), v48, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = v95;
        sub_21C8399BC(v48, v95, type metadata accessor for PMAccount.MockData);
        v64 = v90;
        sub_21C6EDBAC(v63 + *(v96 + 32), v90, &unk_27CDED250, &qword_21CBA64C0);
        v65 = v63;
        v66 = v64;
        v14 = v48;
        sub_21C7126DC(v65, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v67 = *v48;
        v68 = [*v48 creationDate];
        if (v68)
        {
          v69 = v68;
          sub_21CB80D94();

          v70 = 0;
          v67 = v69;
          v10 = v91;
        }

        else
        {
          v70 = 1;
        }

        v71 = v70;
        v26 = v94;
        (*v93)(v58, v71, 1, v94);
        v72 = v58;
        v66 = v90;
        sub_21C6F1098(v72, v90);
        v14 = v101;
      }

      if (v59(v66, 1, v26) == 1)
      {
        break;
      }

      v74 = v87;
      v62(v87, v66, v26);
      v75 = v102;
      v76 = sub_21CB80D34();
      v77 = *v88;
      (*v88)(v74, v26);
      v77(v75, v26);
      sub_21C7126DC(v109, type metadata accessor for PMAccount);
      v14 = v101;
      result = sub_21C7126DC(v107, type metadata accessor for PMAccount);
      v16 = v100;
      v73 = v106;
      if ((v76 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_23:
      if (!v98)
      {
        __break(1u);
        return result;
      }

      v78 = v99;
      sub_21C8399BC(v44, v99, type metadata accessor for PMAccount);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21C8399BC(v78, v42, type metadata accessor for PMAccount);
      v42 += v97;
      v44 += v97;
      v79 = __CFADD__(v73, 1);
      v45 = v73 + 1;
      if (v79)
      {
LABEL_4:
        a3 = v86 + 1;
        v42 = v85 + v81;
        v43 = v84 - 1;
        v44 = v83 + v81;
        if (v86 + 1 == v82)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    (*v88)(v102, v26);
    v61 = v66;
LABEL_21:
    sub_21C6EA794(v61, &unk_27CDED250, &qword_21CBA64C0);
    sub_21C7126DC(v109, type metadata accessor for PMAccount);
    result = sub_21C7126DC(v107, type metadata accessor for PMAccount);
    v16 = v100;
    v73 = v106;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_21C888DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v52 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v52);
  v51 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = (&v40 - v11);
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  result = MEMORY[0x28223BE20](v18);
  v24 = &v40 - v23;
  v42 = a2;
  if (a3 != a2)
  {
    v25 = result;
    v26 = *a4;
    v27 = *(v22 + 72);
    v28 = *a4 + v27 * (a3 - 1);
    v49 = -v27;
    v50 = v26;
    v29 = a1 - a3;
    v41 = v27;
    v30 = v26 + v27 * a3;
    v48 = v12;
LABEL_5:
    v45 = v28;
    v46 = a3;
    v43 = v30;
    v44 = v29;
    v31 = v28;
    while (1)
    {
      sub_21C7106A8(v30, v24, type metadata accessor for PMAccount);
      sub_21C7106A8(v31, v20, type metadata accessor for PMAccount);
      sub_21C7106A8(&v24[*(v25 + 24)], v12, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = v12;
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_9;
      }

      v34 = *v12;
      v35 = v20;
      sub_21C7106A8(&v20[*(v25 + 24)], v51, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v36 = v17;
      v37 = v25;
      v38 = *v51;
      v47 = [v34 compare:v38 byType:1];

      v25 = v37;
      v17 = v36;

      sub_21C7126DC(v35, type metadata accessor for PMAccount);
      result = sub_21C7126DC(v24, type metadata accessor for PMAccount);
      v20 = v35;
      v12 = v48;
      if (v47 != -1)
      {
        goto LABEL_4;
      }

LABEL_11:
      if (!v50)
      {
        __break(1u);
        return result;
      }

      sub_21C8399BC(v30, v17, type metadata accessor for PMAccount);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21C8399BC(v17, v31, type metadata accessor for PMAccount);
      v31 += v49;
      v30 += v49;
      if (__CFADD__(v29++, 1))
      {
LABEL_4:
        a3 = v46 + 1;
        v28 = v45 + v41;
        v29 = v44 - 1;
        v30 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v33 = v51;
    v12 = v48;
LABEL_9:
    sub_21C7126DC(v33, type metadata accessor for PMAccount.Storage);
    sub_21C7126DC(v20, type metadata accessor for PMAccount);
    result = sub_21C7126DC(v24, type metadata accessor for PMAccount);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_21C8891A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v52 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v52);
  v51 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = (&v40 - v11);
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  result = MEMORY[0x28223BE20](v18);
  v24 = &v40 - v23;
  v42 = a2;
  if (a3 != a2)
  {
    v25 = result;
    v26 = *a4;
    v27 = *(v22 + 72);
    v28 = *a4 + v27 * (a3 - 1);
    v49 = -v27;
    v50 = v26;
    v29 = a1 - a3;
    v41 = v27;
    v30 = v26 + v27 * a3;
    v48 = v12;
LABEL_5:
    v45 = v28;
    v46 = a3;
    v43 = v30;
    v44 = v29;
    v31 = v28;
    while (1)
    {
      sub_21C7106A8(v30, v24, type metadata accessor for PMAccount);
      sub_21C7106A8(v31, v20, type metadata accessor for PMAccount);
      sub_21C7106A8(&v24[*(v25 + 24)], v12, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = v12;
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_9;
      }

      v34 = *v12;
      v35 = v20;
      sub_21C7106A8(&v20[*(v25 + 24)], v51, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v36 = v17;
      v37 = v25;
      v38 = *v51;
      v47 = [v34 compare_];

      v25 = v37;
      v17 = v36;

      sub_21C7126DC(v35, type metadata accessor for PMAccount);
      result = sub_21C7126DC(v24, type metadata accessor for PMAccount);
      v20 = v35;
      v12 = v48;
      if (v47 != -1)
      {
        goto LABEL_4;
      }

LABEL_11:
      if (!v50)
      {
        __break(1u);
        return result;
      }

      sub_21C8399BC(v30, v17, type metadata accessor for PMAccount);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21C8399BC(v17, v31, type metadata accessor for PMAccount);
      v31 += v49;
      v30 += v49;
      if (__CFADD__(v29++, 1))
      {
LABEL_4:
        a3 = v46 + 1;
        v28 = v45 + v41;
        v29 = v44 - 1;
        v30 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v33 = v51;
    v12 = v48;
LABEL_9:
    sub_21C7126DC(v33, type metadata accessor for PMAccount.Storage);
    sub_21C7126DC(v20, type metadata accessor for PMAccount);
    result = sub_21C7126DC(v24, type metadata accessor for PMAccount);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_21C889584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v155 = type metadata accessor for PMAccount.MockData(0);
  v8 = *(*(v155 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v155);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v135 = &v126 - v13;
  MEMORY[0x28223BE20](v12);
  v150 = &v126 - v14;
  v165 = type metadata accessor for PMAccount.Storage(0);
  v15 = *(*(v165 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v165);
  v141 = (&v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v153 = (&v126 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v140 = (&v126 - v21);
  MEMORY[0x28223BE20](v20);
  v23 = (&v126 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v137 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v139 = &v126 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v151 = &v126 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v149 = &v126 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v136 = &v126 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v134 = &v126 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v126 - v39;
  MEMORY[0x28223BE20](v38);
  v157 = &v126 - v41;
  v148 = sub_21CB80DD4();
  v42 = *(v148 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v148);
  v162 = &v126 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v138 = &v126 - v47;
  MEMORY[0x28223BE20](v46);
  v161 = &v126 - v48;
  v164 = type metadata accessor for PMAccount(0);
  v49 = *(*(v164 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v164);
  v144 = &v126 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v152 = &v126 - v53;
  result = MEMORY[0x28223BE20](v52);
  v163 = &v126 - v56;
  v128 = a2;
  if (a3 != a2)
  {
    v57 = *a4;
    v58 = *(v55 + 72);
    v154 = (v42 + 56);
    v59 = (v42 + 48);
    v156 = (v42 + 32);
    v145 = (v42 + 8);
    v60 = v57 + v58 * (a3 - 1);
    v142 = -v58;
    v61 = a1 - a3;
    v143 = v57;
    v127 = v58;
    v62 = v57 + v58 * a3;
    v146 = v40;
    v147 = v23;
    v133 = v11;
    v160 = v59;
LABEL_5:
    v132 = a3;
    v129 = v62;
    v130 = v61;
    v131 = v60;
    v63 = v152;
    while (1)
    {
      v159 = v61;
      v64 = v163;
      sub_21C7106A8(v62, v163, type metadata accessor for PMAccount);
      sub_21C7106A8(v60, v63, type metadata accessor for PMAccount);
      v65 = *(v164 + 24);
      sub_21C7106A8(v64 + v65, v23, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v66 = v150;
        sub_21C8399BC(v23, v150, type metadata accessor for PMAccount.MockData);
        v67 = v157;
        sub_21C6EDBAC(v66 + *(v155 + 32), v157, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v66, type metadata accessor for PMAccount.MockData);
        v68 = v160;
        v69 = v148;
      }

      else
      {
        v70 = *v23;
        v71 = [v70 creationDate];
        v69 = v148;
        if (v71)
        {
          v72 = v71;
          sub_21CB80D94();

          v73 = 0;
          v70 = v72;
        }

        else
        {
          v73 = 1;
        }

        v68 = v160;

        (*v154)(v40, v73, 1, v69);
        v67 = v157;
        sub_21C6F1098(v40, v157);
      }

      v74 = *v68;
      v75 = (*v68)(v67, 1, v69);
      v76 = v153;
      v77 = v67;
      v78 = v151;
      if (v75 != 1)
      {
        (*v156)(v161, v77, v69);
        goto LABEL_26;
      }

      v79 = v163 + v65;
      v80 = v140;
      sub_21C7106A8(v79, v140, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v85 = *v80;
      v86 = [*v80 lastModifiedDate];
      if (v86)
      {
        v87 = v138;
        v88 = v86;
        sub_21CB80D94();

        v89 = *v156;
        v90 = v136;
        v91 = v87;
        v63 = v152;
        (*v156)(v136, v91, v69);
        (*v154)(v90, 0, 1, v69);
        v89(v161, v90, v69);
        v76 = v153;
        goto LABEL_24;
      }

      v92 = v136;
      (*v154)(v136, 1, 1, v69);
      sub_21CB80D14();

      if (v74(v92, 1, v69) != 1)
      {
        v84 = v136;
LABEL_23:
        sub_21C6EA794(v84, &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_24:
      if (v74(v157, 1, v69) != 1)
      {
        sub_21C6EA794(v157, &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_26:
      v93 = *(v164 + 24);
      sub_21C7106A8(v63 + v93, v76, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v94 = v76;
        v95 = v150;
        sub_21C8399BC(v94, v150, type metadata accessor for PMAccount.MockData);
        v96 = v149;
        sub_21C6EDBAC(v95 + *(v155 + 32), v149, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v95, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v97 = *v76;
        v98 = [*v76 creationDate];
        if (v98)
        {
          v99 = v98;
          sub_21CB80D94();

          v100 = 0;
          v97 = v99;
          v78 = v151;
        }

        else
        {
          v100 = 1;
        }

        (*v154)(v78, v100, 1, v69);
        v101 = v78;
        v96 = v149;
        sub_21C6F1098(v101, v149);
      }

      v102 = v74(v96, 1, v69);
      v158 = v62;
      if (v102 != 1)
      {
        v108 = v63;
        (*v156)(v162, v96, v69);
        goto LABEL_46;
      }

      v103 = v141;
      sub_21C7106A8(v63 + v93, v141, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v104 = v103;
        v105 = v133;
        sub_21C8399BC(v104, v133, type metadata accessor for PMAccount.MockData);
        v106 = v139;
        sub_21C6EDBAC(v105 + *(v155 + 32), v139, &unk_27CDED250, &qword_21CBA64C0);
        if (v74(v106, 1, v69) != 1)
        {
          sub_21C7126DC(v105, type metadata accessor for PMAccount.MockData);
          (*v156)(v162, v106, v69);
          goto LABEL_44;
        }

        sub_21CB80DA4();
        sub_21C7126DC(v105, type metadata accessor for PMAccount.MockData);
        if (v74(v106, 1, v69) == 1)
        {
          goto LABEL_44;
        }

        v107 = &v167;
        goto LABEL_43;
      }

      v109 = *v103;
      v110 = [*v103 lastModifiedDate];
      if (v110)
      {
        v111 = v138;
        v112 = v110;
        sub_21CB80D94();

        v113 = *v156;
        v114 = v137;
        v115 = v111;
        v63 = v152;
        (*v156)(v137, v115, v69);
        (*v154)(v114, 0, 1, v69);
        v113(v162, v114, v69);
        goto LABEL_44;
      }

      v116 = v137;
      (*v154)(v137, 1, 1, v69);
      sub_21CB80D14();

      if (v74(v116, 1, v69) != 1)
      {
        v107 = &v166;
LABEL_43:
        sub_21C6EA794(*(v107 - 32), &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_44:
      v108 = v63;
      if (v74(v96, 1, v69) != 1)
      {
        sub_21C6EA794(v96, &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_46:
      v117 = v161;
      v118 = v162;
      v119 = sub_21CB80D34();
      v120 = *v145;
      (*v145)(v118, v69);
      v120(v117, v69);
      sub_21C7126DC(v108, type metadata accessor for PMAccount);
      result = sub_21C7126DC(v163, type metadata accessor for PMAccount);
      v40 = v146;
      v23 = v147;
      v121 = v158;
      v122 = v159;
      if ((v119 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v143)
      {
        __break(1u);
        return result;
      }

      v123 = v144;
      sub_21C8399BC(v158, v144, type metadata accessor for PMAccount);
      swift_arrayInitWithTakeFrontToBack();
      v124 = v123;
      v63 = v152;
      result = sub_21C8399BC(v124, v60, type metadata accessor for PMAccount);
      v60 += v142;
      v62 = v121 + v142;
      v125 = __CFADD__(v122, 1);
      v61 = v122 + 1;
      if (v125)
      {
LABEL_4:
        a3 = v132 + 1;
        v60 = v131 + v127;
        v61 = v130 - 1;
        v62 = v129 + v127;
        if (v132 + 1 == v128)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v81 = v135;
    sub_21C8399BC(v80, v135, type metadata accessor for PMAccount.MockData);
    v82 = v134;
    sub_21C6EDBAC(v81 + *(v155 + 32), v134, &unk_27CDED250, &qword_21CBA64C0);
    if (v74(v82, 1, v69) != 1)
    {
      sub_21C7126DC(v81, type metadata accessor for PMAccount.MockData);
      (*v156)(v161, v82, v69);
      v76 = v153;
      goto LABEL_24;
    }

    sub_21CB80DA4();
    sub_21C7126DC(v81, type metadata accessor for PMAccount.MockData);
    v83 = v74(v82, 1, v69);
    v76 = v153;
    if (v83 == 1)
    {
      goto LABEL_24;
    }

    v84 = v82;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_21C88A474(char **a1, uint64_t a2, unint64_t *a3, char *a4)
{
  v5 = v4;
  v253 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v278 = &v248 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v248 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v277 = &v248 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v248 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v259 = &v248 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v248 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v258 = &v248 - v26;
  MEMORY[0x28223BE20](v25);
  v273 = &v248 - v27;
  v291 = type metadata accessor for PMAccount.MockData(0);
  v28 = *(*(v291 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v291);
  v288 = &v248 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v276 = &v248 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v266 = &v248 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v248 - v35;
  v298 = type metadata accessor for PMAccount.Storage(0);
  v37 = *(*(v298 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v298);
  v287 = (&v248 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x28223BE20](v38);
  v286 = (&v248 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v265 = (&v248 - v43);
  MEMORY[0x28223BE20](v42);
  v264 = (&v248 - v44);
  v300 = sub_21CB80DD4();
  v45 = *(v300 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v300);
  v285 = &v248 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v293 = &v248 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v263 = &v248 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v262 = &v248 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v251 = &v248 - v56;
  MEMORY[0x28223BE20](v55);
  v281 = &v248 - v57;
  v289 = type metadata accessor for PMAccount(0);
  v269 = *(v289 - 8);
  v58 = *(v269 + 64);
  v59 = MEMORY[0x28223BE20](v289);
  v256 = &v248 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v284 = &v248 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v299 = &v248 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v297 = &v248 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v275 = &v248 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v272 = &v248 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v250 = &v248 - v72;
  result = MEMORY[0x28223BE20](v71);
  v249 = &v248 - v74;
  v271 = a3;
  v75 = a3[1];
  if (v75 < 1)
  {
    v77 = MEMORY[0x277D84F90];
LABEL_140:
    a4 = *v253;
    if (!*v253)
    {
      goto LABEL_179;
    }

    v45 = v77;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v45;
LABEL_143:
      v301 = result;
      v45 = *(result + 16);
      if (v45 >= 2)
      {
        while (*v271)
        {
          v244 = *(result + 16 * v45);
          v245 = result;
          v246 = *(result + 16 * (v45 - 1) + 40);
          sub_21C891D48(*v271 + *(v269 + 72) * v244, *v271 + *(v269 + 72) * *(result + 16 * (v45 - 1) + 32), *v271 + *(v269 + 72) * v246, a4);
          if (v5)
          {
          }

          if (v246 < v244)
          {
            goto LABEL_166;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v245 = sub_21C864538(v245);
          }

          if (v45 - 2 >= *(v245 + 2))
          {
            goto LABEL_167;
          }

          v247 = &v245[16 * v45];
          *v247 = v244;
          *(v247 + 1) = v246;
          v301 = v245;
          sub_21C8644AC(v45 - 1);
          result = v301;
          v45 = *(v301 + 16);
          if (v45 <= 1)
          {
          }
        }

        goto LABEL_177;
      }
    }

LABEL_173:
    result = sub_21C864538(v45);
    goto LABEL_143;
  }

  v260 = v24;
  v279 = v19;
  v280 = v14;
  v248 = a4;
  v76 = 0;
  v292 = (v45 + 8);
  v295 = (v45 + 32);
  v290 = (v45 + 56);
  v77 = MEMORY[0x277D84F90];
  v296 = (v45 + 48);
  v78 = v273;
  v294 = v36;
  v79 = v293;
  v80 = v289;
LABEL_4:
  v257 = v77;
  v254 = v76;
  if (v76 + 1 >= v75)
  {
    v141 = v76 + 1;
    goto LABEL_47;
  }

  v274 = v75;
  v252 = v5;
  v82 = *(v269 + 72);
  v83 = *v271 + v82 * (v76 + 1);
  v282 = *v271;
  v81 = v282;
  v283 = v83;
  v84 = v249;
  sub_21C7106A8(v83, v249, type metadata accessor for PMAccount);
  v85 = v81 + v82 * v76;
  v86 = v250;
  sub_21C7106A8(v85, v250, type metadata accessor for PMAccount);
  v87 = v281;
  v88 = v84;
  PMAccount.lastModifiedDate.getter(v281);
  v89 = v251;
  PMAccount.lastModifiedDate.getter(v251);
  LODWORD(v268) = sub_21CB80D34();
  a4 = *v292;
  v90 = v89;
  v91 = v300;
  (*v292)(v90, v300);
  v92 = v87;
  v79 = v293;
  v267 = a4;
  (a4)(v92, v91);
  v45 = type metadata accessor for PMAccount;
  sub_21C7126DC(v86, type metadata accessor for PMAccount);
  sub_21C7126DC(v88, type metadata accessor for PMAccount);
  v93 = v254 + 2;
  v270 = v82;
  result = v282 + v82 * (v254 + 2);
  v94 = v283;
  v95 = v262;
  do
  {
    if (v274 == v93)
    {
      v141 = v274;
      goto LABEL_32;
    }

    v282 = result;
    v283 = v93;
    v101 = v272;
    sub_21C7106A8(result, v272, type metadata accessor for PMAccount);
    sub_21C7106A8(v94, v275, type metadata accessor for PMAccount);
    v102 = v264;
    sub_21C7106A8(v101 + *(v289 + 24), v264, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v104 = v296;
    if (EnumCaseMultiPayload == 1)
    {
      sub_21C8399BC(v102, v36, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(&v36[*(v291 + 32)], v78, &unk_27CDED250, &qword_21CBA64C0);
      v105 = *v104;
      if ((*v104)(v78, 1, v300) == 1)
      {
        v106 = v95;
        sub_21CB80DA4();
        sub_21C7126DC(v36, type metadata accessor for PMAccount.MockData);
        v107 = v105(v78, 1, v300);
        v108 = v266;
        if (v107 == 1)
        {
          goto LABEL_20;
        }

        v109 = v78;
        goto LABEL_19;
      }

      sub_21C7126DC(v36, type metadata accessor for PMAccount.MockData);
      v106 = v95;
      (*v295)(v95, v78, v300);
LABEL_16:
      v108 = v266;
      goto LABEL_20;
    }

    v110 = *v102;
    v111 = [v110 lastModifiedDate];
    if (v111)
    {
      v112 = v281;
      v113 = v111;
      sub_21CB80D94();

      v114 = *v295;
      v115 = v258;
      v116 = v300;
      (*v295)(v258, v112, v300);
      (*v290)(v115, 0, 1, v116);
      v117 = v116;
      v106 = v95;
      v114(v95, v115, v117);
      v104 = v296;
      goto LABEL_16;
    }

    v118 = v258;
    v119 = v300;
    (*v290)(v258, 1, 1, v300);
    sub_21CB80D14();

    v120 = v119;
    v106 = v95;
    v121 = (*v104)(v118, 1, v120);
    v108 = v266;
    if (v121 == 1)
    {
      goto LABEL_20;
    }

    v109 = v258;
LABEL_19:
    sub_21C6EA794(v109, &unk_27CDED250, &qword_21CBA64C0);
LABEL_20:
    v122 = v265;
    sub_21C7106A8(v275 + *(v289 + 24), v265, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C8399BC(v122, v108, type metadata accessor for PMAccount.MockData);
      v123 = v260;
      sub_21C6EDBAC(v108 + *(v291 + 32), v260, &unk_27CDED250, &qword_21CBA64C0);
      v124 = v108;
      v125 = *v104;
      if ((*v104)(v123, 1, v300) != 1)
      {
        sub_21C7126DC(v124, type metadata accessor for PMAccount.MockData);
        v96 = v263;
        (*v295)(v263, v123, v300);
        v79 = v293;
        v36 = v294;
        goto LABEL_7;
      }

      v126 = v263;
      sub_21CB80DA4();
      sub_21C7126DC(v124, type metadata accessor for PMAccount.MockData);
      v127 = v125(v123, 1, v300);
      v96 = v126;
      v106 = v262;
      v79 = v293;
      v36 = v294;
      if (v127 != 1)
      {
        v128 = &v292;
LABEL_28:
        sub_21C6EA794(*(v128 - 32), &unk_27CDED250, &qword_21CBA64C0);
      }
    }

    else
    {
      v129 = *v122;
      v130 = [*v122 lastModifiedDate];
      if (v130)
      {
        v131 = v281;
        v132 = v130;
        sub_21CB80D94();

        v133 = *v295;
        v134 = v259;
        v135 = v300;
        (*v295)(v259, v131, v300);
        (*v290)(v134, 0, 1, v135);
        v136 = v263;
        v133(v263, v134, v135);
        v96 = v136;
        v106 = v262;
        v79 = v293;
        goto LABEL_7;
      }

      v137 = v259;
      v138 = v300;
      (*v290)(v259, 1, 1, v300);
      v139 = v263;
      sub_21CB80D14();

      v96 = v139;
      v140 = (*v104)(v137, 1, v138);
      v106 = v262;
      v79 = v293;
      if (v140 != 1)
      {
        v128 = &v291;
        goto LABEL_28;
      }
    }

LABEL_7:
    v97 = sub_21CB80D34();
    v98 = v96;
    v45 = v97;
    v99 = v300;
    a4 = v292;
    v100 = v267;
    v267(v98, v300);
    v95 = v106;
    v100(v106, v99);
    sub_21C7126DC(v275, type metadata accessor for PMAccount);
    sub_21C7126DC(v272, type metadata accessor for PMAccount);
    v93 = (v283 + 1);
    result = v282 + v270;
    v94 += v270;
    v78 = v273;
  }

  while (((v268 ^ v45) & 1) == 0);
  v141 = v283;
LABEL_32:
  v5 = v252;
  v76 = v254;
  if ((v268 & 1) == 0)
  {
    goto LABEL_45;
  }

  if (v141 < v254)
  {
    goto LABEL_170;
  }

  if (v254 < v141)
  {
    v142 = v270 * (v141 - 1);
    v143 = v141 * v270;
    a4 = v141;
    v144 = v254;
    v145 = v254 * v270;
    do
    {
      if (v144 != --v141)
      {
        v45 = *v271;
        if (!*v271)
        {
          goto LABEL_176;
        }

        sub_21C8399BC(v45 + v145, v256, type metadata accessor for PMAccount);
        if (v145 < v142 || v45 + v145 >= v45 + v143)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v145 != v142)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        result = sub_21C8399BC(v256, v45 + v142, type metadata accessor for PMAccount);
      }

      ++v144;
      v142 -= v270;
      v143 -= v270;
      v145 += v270;
    }

    while (v144 < v141);
    v5 = v252;
    v78 = v273;
    v79 = v293;
    v36 = v294;
    v80 = v289;
    v141 = a4;
    v76 = v254;
  }

  else
  {
LABEL_45:
    v80 = v289;
  }

LABEL_47:
  v146 = v271[1];
  if (v141 >= v146)
  {
    goto LABEL_56;
  }

  if (__OFSUB__(v141, v76))
  {
    goto LABEL_169;
  }

  if (v141 - v76 >= v248)
  {
LABEL_56:
    a4 = v141;
    if (v141 < v76)
    {
      goto LABEL_168;
    }

    goto LABEL_57;
  }

  if (__OFADD__(v76, v248))
  {
    goto LABEL_171;
  }

  if (&v248[v76] >= v146)
  {
    a4 = v271[1];
  }

  else
  {
    a4 = &v248[v76];
  }

  if (a4 < v76)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if (v141 == a4)
  {
    goto LABEL_56;
  }

  v252 = v5;
  v195 = *v271;
  v196 = *(v269 + 72);
  v197 = *v271 + v196 * (v141 - 1);
  v282 = -v196;
  v283 = v195;
  v198 = v76 - v141;
  v255 = v196;
  v45 = v195 + v141 * v196;
  v261 = a4;
  while (2)
  {
    v274 = v141;
    v267 = v45;
    v268 = v198;
    v199 = v198;
    v270 = v197;
    v200 = v197;
LABEL_111:
    v201 = v297;
    sub_21C7106A8(v45, v297, type metadata accessor for PMAccount);
    sub_21C7106A8(v200, v299, type metadata accessor for PMAccount);
    v202 = v286;
    sub_21C7106A8(v201 + *(v80 + 24), v286, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v203 = v276;
      sub_21C8399BC(v202, v276, type metadata accessor for PMAccount.MockData);
      v204 = v279;
      sub_21C6EDBAC(v203 + *(v291 + 32), v279, &unk_27CDED250, &qword_21CBA64C0);
      v205 = v296;
      v206 = *v296;
      if ((*v296)(v204, 1, v300) == 1)
      {
        sub_21CB80DA4();
        sub_21C7126DC(v203, type metadata accessor for PMAccount.MockData);
        v207 = v206(v204, 1, v300);
        v208 = v288;
        if (v207 != 1)
        {
          v209 = &v303;
          goto LABEL_120;
        }
      }

      else
      {
        sub_21C7126DC(v203, type metadata accessor for PMAccount.MockData);
        (*v295)(v79, v204, v300);
        v208 = v288;
      }
    }

    else
    {
      v210 = *v202;
      v211 = [*v202 lastModifiedDate];
      if (v211)
      {
        v212 = v211;
        v213 = v281;
        sub_21CB80D94();

        v214 = *v295;
        v215 = v277;
        v216 = v213;
        v80 = v289;
        v217 = v300;
        (*v295)(v277, v216, v300);
        (*v290)(v215, 0, 1, v217);
        v214(v79, v215, v217);
        v208 = v288;
        v205 = v296;
      }

      else
      {
        v218 = v277;
        v219 = v300;
        (*v290)(v277, 1, 1, v300);
        sub_21CB80D14();

        v205 = v296;
        v220 = (*v296)(v218, 1, v219);
        v208 = v288;
        if (v220 != 1)
        {
          v209 = &v302;
LABEL_120:
          sub_21C6EA794(*(v209 - 32), &unk_27CDED250, &qword_21CBA64C0);
        }
      }
    }

    v221 = v287;
    sub_21C7106A8(v299 + *(v80 + 24), v287, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v222 = v300;
      sub_21C8399BC(v221, v208, type metadata accessor for PMAccount.MockData);
      v223 = v280;
      sub_21C6EDBAC(v208 + *(v291 + 32), v280, &unk_27CDED250, &qword_21CBA64C0);
      v224 = v208;
      v225 = *v205;
      if ((*v205)(v223, 1, v222) == 1)
      {
        v226 = v285;
        sub_21CB80DA4();
        sub_21C7126DC(v224, type metadata accessor for PMAccount.MockData);
        v227 = v225(v223, 1, v222);
        v79 = v293;
        v80 = v289;
        if (v227 != 1)
        {
          v228 = v280;
          goto LABEL_130;
        }
      }

      else
      {
        sub_21C7126DC(v224, type metadata accessor for PMAccount.MockData);
        v226 = v285;
        (*v295)(v285, v223, v222);
        v80 = v289;
        v79 = v293;
      }
    }

    else
    {
      v229 = *v221;
      v230 = [v229 lastModifiedDate];
      if (v230)
      {
        v231 = v281;
        v232 = v230;
        sub_21CB80D94();

        v233 = *v295;
        v234 = v278;
        v235 = v300;
        (*v295)(v278, v231, v300);
        (*v290)(v234, 0, 1, v235);
        v226 = v285;
        v233(v285, v234, v235);
        v79 = v293;
      }

      else
      {
        v236 = v278;
        v237 = v300;
        (*v290)(v278, 1, 1, v300);
        v226 = v285;
        sub_21CB80D14();

        v238 = (*v296)(v236, 1, v237);
        v79 = v293;
        if (v238 != 1)
        {
          v228 = v278;
LABEL_130:
          sub_21C6EA794(v228, &unk_27CDED250, &qword_21CBA64C0);
        }
      }
    }

    v239 = sub_21CB80D34();
    v240 = *v292;
    v241 = v300;
    (*v292)(v226, v300);
    (v240)(v79, v241);
    sub_21C7126DC(v299, type metadata accessor for PMAccount);
    result = sub_21C7126DC(v297, type metadata accessor for PMAccount);
    if ((v239 & 1) == 0)
    {
      v36 = v294;
LABEL_109:
      v141 = v274 + 1;
      v197 = v270 + v255;
      v198 = v268 - 1;
      v45 = v267 + v255;
      a4 = v261;
      if ((v274 + 1) != v261)
      {
        continue;
      }

      v5 = v252;
      v78 = v273;
      if (v261 < v254)
      {
        goto LABEL_168;
      }

LABEL_57:
      result = swift_isUniquelyReferenced_nonNull_native();
      v261 = a4;
      if (result)
      {
        v77 = v257;
      }

      else
      {
        result = sub_21C86467C(0, *(v257 + 2) + 1, 1, v257);
        v77 = result;
      }

      v148 = *(v77 + 2);
      v147 = *(v77 + 3);
      v45 = v148 + 1;
      a4 = v276;
      if (v148 >= v147 >> 1)
      {
        result = sub_21C86467C((v147 > 1), v148 + 1, 1, v77);
        v77 = result;
      }

      *(v77 + 2) = v45;
      v149 = &v77[16 * v148];
      v150 = v261;
      *(v149 + 4) = v254;
      *(v149 + 5) = v150;
      v283 = *v253;
      if (!v283)
      {
        goto LABEL_178;
      }

      if (v148)
      {
        while (2)
        {
          v151 = v45 - 1;
          if (v45 >= 4)
          {
            v156 = &v77[16 * v45 + 32];
            v157 = *(v156 - 64);
            v158 = *(v156 - 56);
            v162 = __OFSUB__(v158, v157);
            v159 = v158 - v157;
            if (v162)
            {
              goto LABEL_155;
            }

            v161 = *(v156 - 48);
            v160 = *(v156 - 40);
            v162 = __OFSUB__(v160, v161);
            v154 = v160 - v161;
            v155 = v162;
            if (v162)
            {
              goto LABEL_156;
            }

            v163 = &v77[16 * v45];
            v165 = *v163;
            v164 = *(v163 + 1);
            v162 = __OFSUB__(v164, v165);
            v166 = v164 - v165;
            if (v162)
            {
              goto LABEL_158;
            }

            v162 = __OFADD__(v154, v166);
            v167 = v154 + v166;
            if (v162)
            {
              goto LABEL_161;
            }

            if (v167 >= v159)
            {
              v185 = &v77[16 * v151 + 32];
              v187 = *v185;
              v186 = *(v185 + 1);
              v162 = __OFSUB__(v186, v187);
              v188 = v186 - v187;
              if (v162)
              {
                goto LABEL_165;
              }

              if (v154 < v188)
              {
                v151 = v45 - 2;
              }
            }

            else
            {
LABEL_76:
              if (v155)
              {
                goto LABEL_157;
              }

              v168 = &v77[16 * v45];
              v170 = *v168;
              v169 = *(v168 + 1);
              v171 = __OFSUB__(v169, v170);
              v172 = v169 - v170;
              v173 = v171;
              if (v171)
              {
                goto LABEL_160;
              }

              v174 = &v77[16 * v151 + 32];
              v176 = *v174;
              v175 = *(v174 + 1);
              v162 = __OFSUB__(v175, v176);
              v177 = v175 - v176;
              if (v162)
              {
                goto LABEL_163;
              }

              if (__OFADD__(v172, v177))
              {
                goto LABEL_164;
              }

              if (v172 + v177 < v154)
              {
                goto LABEL_90;
              }

              if (v154 < v177)
              {
                v151 = v45 - 2;
              }
            }
          }

          else
          {
            if (v45 == 3)
            {
              v152 = *(v77 + 4);
              v153 = *(v77 + 5);
              v162 = __OFSUB__(v153, v152);
              v154 = v153 - v152;
              v155 = v162;
              goto LABEL_76;
            }

            v178 = &v77[16 * v45];
            v180 = *v178;
            v179 = *(v178 + 1);
            v162 = __OFSUB__(v179, v180);
            v172 = v179 - v180;
            v173 = v162;
LABEL_90:
            if (v173)
            {
              goto LABEL_159;
            }

            v181 = &v77[16 * v151];
            v183 = *(v181 + 4);
            v182 = *(v181 + 5);
            v162 = __OFSUB__(v182, v183);
            v184 = v182 - v183;
            if (v162)
            {
              goto LABEL_162;
            }

            if (v184 < v172)
            {
              break;
            }
          }

          v189 = v151 - 1;
          if (v151 - 1 >= v45)
          {
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
            goto LABEL_172;
          }

          if (!*v271)
          {
            goto LABEL_175;
          }

          v190 = v79;
          v191 = v77;
          v45 = *&v77[16 * v189 + 32];
          v192 = *&v77[16 * v151 + 40];
          sub_21C891D48(*v271 + *(v269 + 72) * v45, *v271 + *(v269 + 72) * *&v77[16 * v151 + 32], *v271 + *(v269 + 72) * v192, v283);
          if (v5)
          {
          }

          if (v192 < v45)
          {
            goto LABEL_153;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v193 = v191;
          }

          else
          {
            v193 = sub_21C864538(v191);
          }

          if (v189 >= *(v193 + 2))
          {
            goto LABEL_154;
          }

          v79 = v190;
          v194 = &v193[16 * v189];
          *(v194 + 4) = v45;
          *(v194 + 5) = v192;
          v301 = v193;
          result = sub_21C8644AC(v151);
          v77 = v301;
          v45 = *(v301 + 16);
          v78 = v273;
          v36 = v294;
          if (v45 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v75 = v271[1];
      v76 = v261;
      if (v261 >= v75)
      {
        goto LABEL_140;
      }

      goto LABEL_4;
    }

    break;
  }

  v36 = v294;
  if (v283)
  {
    v242 = v284;
    sub_21C8399BC(v45, v284, type metadata accessor for PMAccount);
    swift_arrayInitWithTakeFrontToBack();
    sub_21C8399BC(v242, v200, type metadata accessor for PMAccount);
    v200 += v282;
    v45 += v282;
    if (__CFADD__(v199++, 1))
    {
      goto LABEL_109;
    }

    goto LABEL_111;
  }

  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
  return result;
}

uint64_t sub_21C88BF88(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v219 = a4;
  v216 = a1;
  v250 = type metadata accessor for PMAccount.MockData(0);
  v5 = *(*(v250 - 8) + 64);
  MEMORY[0x28223BE20](v250);
  v249 = &v213 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v213 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v231 = (&v213 - v16);
  MEMORY[0x28223BE20](v15);
  v230 = (&v213 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v213 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v243 = &v213 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v213 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v255 = &v213 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v218 = &v213 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v213 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v213 - v36;
  MEMORY[0x28223BE20](v35);
  v234 = &v213 - v38;
  v259 = sub_21CB80DD4();
  v39 = *(v259 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v259);
  v240 = &v213 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v254 = &v213 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v217 = &v213 - v46;
  MEMORY[0x28223BE20](v45);
  v229 = &v213 - v47;
  v48 = type metadata accessor for PMAccount(0);
  v232 = *(v48 - 8);
  v49 = *(v232 + 64);
  v50 = MEMORY[0x28223BE20](v48);
  v223 = &v213 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v253 = &v213 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v261 = &v213 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v260 = &v213 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v238 = &v213 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v235 = &v213 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v214 = &v213 - v63;
  result = MEMORY[0x28223BE20](v62);
  v213 = &v213 - v65;
  v66 = a3[1];
  v67 = a3;
  v224 = a3;
  if (v66 < 1)
  {
    v69 = MEMORY[0x277D84F90];
    v73 = v67;
LABEL_134:
    v7 = *v216;
    v75 = v237;
    if (!*v216)
    {
      goto LABEL_174;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_168:
      result = sub_21C864538(v69);
      v69 = result;
    }

    v262 = v69;
    v208 = *(v69 + 2);
    if (v208 >= 2)
    {
      while (1)
      {
        v209 = *v73;
        if (!*v73)
        {
          goto LABEL_172;
        }

        v73 = v208 - 1;
        v210 = *&v69[16 * v208];
        v211 = *&v69[16 * v208 + 24];
        sub_21C893180(v209 + *(v232 + 72) * v210, v209 + *(v232 + 72) * *&v69[16 * v208 + 16], v209 + *(v232 + 72) * v211, v7);
        if (v75)
        {
        }

        if (v211 < v210)
        {
          goto LABEL_161;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_21C864538(v69);
        }

        if (v208 - 2 >= *(v69 + 2))
        {
          goto LABEL_162;
        }

        v212 = &v69[16 * v208];
        *v212 = v210;
        *(v212 + 1) = v211;
        v262 = v69;
        result = sub_21C8644AC(v73);
        v69 = v262;
        v208 = *(v262 + 2);
        v73 = v224;
        if (v208 <= 1)
        {
        }
      }
    }
  }

  v68 = v66;
  v257 = (v39 + 48);
  v247 = (v39 + 32);
  v248 = (v39 + 56);
  v69 = MEMORY[0x277D84F90];
  v70 = (v39 + 8);
  v71 = 0;
  v244 = v70;
  v245 = v14;
  v258 = v7;
  v242 = v11;
  v239 = v22;
  v241 = v27;
  v72 = v255;
  v222 = v34;
  v221 = v37;
  v256 = result;
  v73 = v67;
  v74 = result;
  while (1)
  {
    v236 = v68;
    v233 = v69;
    v75 = v237;
    if (v71 + 1 >= v68)
    {
      v114 = v71 + 1;
      v115 = v219;
      v116 = v71;
      goto LABEL_45;
    }

    v76 = *v73;
    v77 = *(v232 + 72);
    v252 = *v73 + v77 * (v71 + 1);
    v78 = v213;
    sub_21C7106A8(v252, v213, type metadata accessor for PMAccount);
    v79 = v214;
    sub_21C7106A8(v76 + v77 * v71, v214, type metadata accessor for PMAccount);
    LODWORD(v251) = sub_21C88687C(v78, v79);
    if (v75)
    {
      sub_21C7126DC(v79, type metadata accessor for PMAccount);
      sub_21C7126DC(v78, type metadata accessor for PMAccount);
    }

    v237 = 0;
    v7 = type metadata accessor for PMAccount;
    sub_21C7126DC(v79, type metadata accessor for PMAccount);
    result = sub_21C7126DC(v78, type metadata accessor for PMAccount);
    v215 = v71;
    v80 = v71 + 2;
    v81 = v76 + v77 * (v71 + 2);
    v82 = v236;
    v246 = v77;
    while (1)
    {
      v84 = v234;
      if (v82 == v80)
      {
        break;
      }

      v85 = v235;
      sub_21C7106A8(v81, v235, type metadata accessor for PMAccount);
      sub_21C7106A8(v252, v238, type metadata accessor for PMAccount);
      v86 = v230;
      sub_21C7106A8(v85 + *(v256 + 24), v230, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v87 = v86;
        v88 = v249;
        sub_21C8399BC(v87, v249, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v88 + *(v250 + 32), v84, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v88, type metadata accessor for PMAccount.MockData);
        v89 = v231;
        v90 = v259;
      }

      else
      {
        v91 = *v86;
        v92 = [*v86 creationDate];
        if (v92)
        {
          v93 = v221;
          v94 = v92;
          sub_21CB80D94();

          v95 = 0;
          v91 = v94;
          v89 = v231;
        }

        else
        {
          v95 = 1;
          v89 = v231;
          v93 = v221;
        }

        v90 = v259;
        (*v248)(v93, v95, 1, v259);
        v84 = v234;
        sub_21C6F1098(v93, v234);
      }

      v96 = *v257;
      if ((*v257)(v84, 1, v90) == 1)
      {
        sub_21C6EA794(v84, &unk_27CDED250, &qword_21CBA64C0);
        v83 = 1;
        v69 = v233;
      }

      else
      {
        v97 = *v247;
        (*v247)(v229, v84, v90);
        sub_21C7106A8(v238 + *(v256 + 24), v89, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v98 = v89;
          v99 = v249;
          sub_21C8399BC(v98, v249, type metadata accessor for PMAccount.MockData);
          v100 = v222;
          sub_21C6EDBAC(v99 + *(v250 + 32), v222, &unk_27CDED250, &qword_21CBA64C0);
          sub_21C7126DC(v99, type metadata accessor for PMAccount.MockData);
          v101 = v259;
          v69 = v233;
        }

        else
        {
          v102 = *v89;
          v103 = [*v89 creationDate];
          if (v103)
          {
            v104 = v218;
            v105 = v103;
            sub_21CB80D94();

            v106 = 0;
            v102 = v105;
            v107 = v104;
            v100 = v222;
            v69 = v233;
          }

          else
          {
            v106 = 1;
            v107 = v218;
            v69 = v233;
            v100 = v222;
          }

          v108 = v106;
          v101 = v259;
          (*v248)(v107, v108, 1, v259);
          sub_21C6F1098(v107, v100);
        }

        v109 = v96(v100, 1, v101);
        v110 = v101;
        if (v109 != 1)
        {
          v111 = v217;
          v97(v217, v100, v101);
          v112 = v229;
          v83 = sub_21CB80D34();
          v113 = *v244;
          (*v244)(v111, v110);
          v113(v112, v110);
          v82 = v236;
          v14 = v245;
          v77 = v246;
          goto LABEL_10;
        }

        (*v244)(v229, v101);
        sub_21C6EA794(v100, &unk_27CDED250, &qword_21CBA64C0);
        v83 = 1;
        v14 = v245;
        v77 = v246;
      }

      v82 = v236;
LABEL_10:
      v7 = type metadata accessor for PMAccount;
      sub_21C7126DC(v238, type metadata accessor for PMAccount);
      result = sub_21C7126DC(v235, type metadata accessor for PMAccount);
      ++v80;
      v81 += v77;
      v252 += v77;
      if ((v251 ^ v83))
      {
        v236 = v80 - 1;
        break;
      }
    }

    v73 = v224;
    v115 = v219;
    v75 = v237;
    v116 = v215;
    if ((v251 & 1) == 0)
    {
      v114 = v236;
LABEL_43:
      v72 = v255;
      v74 = v256;
      goto LABEL_45;
    }

    v114 = v236;
    if (v236 < v215)
    {
      goto LABEL_167;
    }

    if (v215 >= v236)
    {
      goto LABEL_43;
    }

    v7 = v77 * (v236 - 1);
    v117 = v236 * v77;
    v118 = v236;
    v119 = v215;
    v120 = v215 * v77;
    do
    {
      if (v119 != --v118)
      {
        v121 = *v224;
        if (!*v224)
        {
          goto LABEL_171;
        }

        sub_21C8399BC(v121 + v120, v223, type metadata accessor for PMAccount);
        if (v120 < v7 || v121 + v120 >= v121 + v117)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v120 != v7)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        result = sub_21C8399BC(v223, v121 + v7, type metadata accessor for PMAccount);
        v115 = v219;
        v69 = v233;
      }

      ++v119;
      v7 -= v77;
      v117 -= v77;
      v120 += v77;
    }

    while (v119 < v118);
    v73 = v224;
    v14 = v245;
    v114 = v236;
    v72 = v255;
    v74 = v256;
    v116 = v215;
LABEL_45:
    v122 = *(v73 + 8);
    if (v114 >= v122)
    {
LABEL_54:
      v125 = v114;
      if (v114 < v116)
      {
        goto LABEL_163;
      }

      goto LABEL_83;
    }

    v236 = v114;
    v176 = __OFSUB__(v114, v116);
    v123 = v114 - v116;
    if (v176)
    {
      goto LABEL_164;
    }

    if (v123 >= v115)
    {
      v125 = v236;
      if (v236 < v116)
      {
        goto LABEL_163;
      }

      goto LABEL_83;
    }

    if (__OFADD__(v116, v115))
    {
      goto LABEL_165;
    }

    if (v116 + v115 >= v122)
    {
      v124 = v122;
    }

    else
    {
      v124 = v116 + v115;
    }

    if (v124 < v116)
    {
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v114 = v236;
    if (v236 == v124)
    {
      goto LABEL_54;
    }

    v237 = v75;
    v126 = *v73;
    v127 = *(v232 + 72);
    v128 = *v73 + v127 * (v236 - 1);
    v251 = -v127;
    v215 = v116;
    v129 = v116 - v236;
    v252 = v126;
    v220 = v127;
    v130 = v126 + v236 * v127;
    v225 = v124;
LABEL_60:
    v226 = v130;
    v131 = v130;
    v227 = v129;
    v228 = v128;
LABEL_61:
    v132 = v260;
    sub_21C7106A8(v131, v260, type metadata accessor for PMAccount);
    sub_21C7106A8(v128, v261, type metadata accessor for PMAccount);
    sub_21C7106A8(v132 + *(v74 + 24), v14, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v133 = v249;
      sub_21C8399BC(v14, v249, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v133 + *(v250 + 32), v72, &unk_27CDED250, &qword_21CBA64C0);
      sub_21C7126DC(v133, type metadata accessor for PMAccount.MockData);
      v134 = v259;
    }

    else
    {
      v135 = *v14;
      v136 = [*v14 creationDate];
      if (v136)
      {
        v137 = v136;
        v138 = v241;
        sub_21CB80D94();

        v139 = 0;
        v135 = v137;
      }

      else
      {
        v139 = 1;
        v138 = v241;
      }

      v134 = v259;
      (*v248)(v138, v139, 1, v259);
      v72 = v255;
      sub_21C6F1098(v138, v255);
      v74 = v256;
    }

    v140 = *v257;
    v141 = (*v257)(v72, 1, v134);
    v142 = v72;
    if (v141 == 1)
    {
LABEL_76:
      sub_21C6EA794(v142, &unk_27CDED250, &qword_21CBA64C0);
      sub_21C7126DC(v261, type metadata accessor for PMAccount);
      result = sub_21C7126DC(v260, type metadata accessor for PMAccount);
    }

    else
    {
      v143 = *v247;
      (*v247)(v254, v72, v134);
      v144 = v242;
      sub_21C7106A8(v261 + *(v74 + 24), v242, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v246 = v143;
      if (EnumCaseMultiPayload == 1)
      {
        v146 = v72;
        v147 = v74;
        v148 = v144;
        v149 = v249;
        sub_21C8399BC(v148, v249, type metadata accessor for PMAccount.MockData);
        v150 = v243;
        sub_21C6EDBAC(v149 + *(v250 + 32), v243, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v149, type metadata accessor for PMAccount.MockData);
        v151 = v259;
      }

      else
      {
        v152 = *v144;
        v153 = [*v144 creationDate];
        if (v153)
        {
          v154 = v239;
          v155 = v153;
          sub_21CB80D94();

          v156 = 0;
          v152 = v155;
        }

        else
        {
          v156 = 1;
          v154 = v239;
        }

        v151 = v259;
        (*v248)(v154, v156, 1, v259);
        v150 = v243;
        sub_21C6F1098(v154, v243);
        v146 = v255;
        v147 = v256;
      }

      if (v140(v150, 1, v151) == 1)
      {
        (*v244)(v254, v151);
        v142 = v150;
        v74 = v147;
        v72 = v146;
        v14 = v245;
        goto LABEL_76;
      }

      v157 = v240;
      v246(v240, v150, v151);
      v158 = v254;
      LODWORD(v246) = sub_21CB80D34();
      v159 = *v244;
      v74 = v256;
      (*v244)(v157, v151);
      v159(v158, v151);
      v7 = type metadata accessor for PMAccount;
      sub_21C7126DC(v261, type metadata accessor for PMAccount);
      v72 = v255;
      result = sub_21C7126DC(v260, type metadata accessor for PMAccount);
      v14 = v245;
      if ((v246 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    if (!v252)
    {
      break;
    }

    v7 = type metadata accessor for PMAccount;
    v160 = v253;
    sub_21C8399BC(v131, v253, type metadata accessor for PMAccount);
    swift_arrayInitWithTakeFrontToBack();
    sub_21C8399BC(v160, v128, type metadata accessor for PMAccount);
    v128 += v251;
    v131 += v251;
    if (!__CFADD__(v129++, 1))
    {
      goto LABEL_61;
    }

LABEL_59:
    v128 = v228 + v220;
    v129 = v227 - 1;
    v130 = v226 + v220;
    ++v236;
    v125 = v225;
    if (v236 != v225)
    {
      goto LABEL_60;
    }

    v75 = v237;
    v73 = v224;
    v69 = v233;
    v116 = v215;
    if (v225 < v215)
    {
      goto LABEL_163;
    }

LABEL_83:
    result = swift_isUniquelyReferenced_nonNull_native();
    v225 = v125;
    if ((result & 1) == 0)
    {
      result = sub_21C86467C(0, *(v69 + 2) + 1, 1, v69);
      v69 = result;
    }

    v7 = *(v69 + 2);
    v162 = *(v69 + 3);
    v163 = v7 + 1;
    if (v7 >= v162 >> 1)
    {
      result = sub_21C86467C((v162 > 1), v7 + 1, 1, v69);
      v69 = result;
    }

    *(v69 + 2) = v163;
    v164 = &v69[16 * v7];
    v165 = v225;
    *(v164 + 4) = v116;
    *(v164 + 5) = v165;
    v252 = *v216;
    if (!v252)
    {
      goto LABEL_173;
    }

    v237 = v75;
    if (v7)
    {
      while (2)
      {
        v75 = v163 - 1;
        if (v163 >= 4)
        {
          v170 = &v69[16 * v163 + 32];
          v171 = *(v170 - 64);
          v172 = *(v170 - 56);
          v176 = __OFSUB__(v172, v171);
          v173 = v172 - v171;
          if (v176)
          {
            goto LABEL_150;
          }

          v175 = *(v170 - 48);
          v174 = *(v170 - 40);
          v176 = __OFSUB__(v174, v175);
          v168 = v174 - v175;
          v169 = v176;
          if (v176)
          {
            goto LABEL_151;
          }

          v177 = &v69[16 * v163];
          v179 = *v177;
          v178 = *(v177 + 1);
          v176 = __OFSUB__(v178, v179);
          v180 = v178 - v179;
          if (v176)
          {
            goto LABEL_153;
          }

          v176 = __OFADD__(v168, v180);
          v181 = v168 + v180;
          if (v176)
          {
            goto LABEL_156;
          }

          if (v181 >= v173)
          {
            v199 = &v69[16 * v75 + 32];
            v201 = *v199;
            v200 = *(v199 + 1);
            v176 = __OFSUB__(v200, v201);
            v202 = v200 - v201;
            if (v176)
            {
              goto LABEL_160;
            }

            if (v168 < v202)
            {
              v75 = v163 - 2;
            }
          }

          else
          {
LABEL_102:
            if (v169)
            {
              goto LABEL_152;
            }

            v182 = &v69[16 * v163];
            v184 = *v182;
            v183 = *(v182 + 1);
            v185 = __OFSUB__(v183, v184);
            v186 = v183 - v184;
            v187 = v185;
            if (v185)
            {
              goto LABEL_155;
            }

            v188 = &v69[16 * v75 + 32];
            v190 = *v188;
            v189 = *(v188 + 1);
            v176 = __OFSUB__(v189, v190);
            v191 = v189 - v190;
            if (v176)
            {
              goto LABEL_158;
            }

            if (__OFADD__(v186, v191))
            {
              goto LABEL_159;
            }

            if (v186 + v191 < v168)
            {
              goto LABEL_116;
            }

            if (v168 < v191)
            {
              v75 = v163 - 2;
            }
          }
        }

        else
        {
          if (v163 == 3)
          {
            v166 = *(v69 + 4);
            v167 = *(v69 + 5);
            v176 = __OFSUB__(v167, v166);
            v168 = v167 - v166;
            v169 = v176;
            goto LABEL_102;
          }

          v192 = &v69[16 * v163];
          v194 = *v192;
          v193 = *(v192 + 1);
          v176 = __OFSUB__(v193, v194);
          v186 = v193 - v194;
          v187 = v176;
LABEL_116:
          if (v187)
          {
            goto LABEL_154;
          }

          v195 = &v69[16 * v75];
          v197 = *(v195 + 4);
          v196 = *(v195 + 5);
          v176 = __OFSUB__(v196, v197);
          v198 = v196 - v197;
          if (v176)
          {
            goto LABEL_157;
          }

          if (v198 < v186)
          {
            break;
          }
        }

        v7 = v75 - 1;
        if (v75 - 1 >= v163)
        {
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
          goto LABEL_166;
        }

        v203 = *v73;
        if (!*v73)
        {
          goto LABEL_170;
        }

        v204 = v73;
        v205 = *&v69[16 * v7 + 32];
        v73 = *&v69[16 * v75 + 40];
        v206 = v237;
        sub_21C893180(v203 + *(v232 + 72) * v205, v203 + *(v232 + 72) * *&v69[16 * v75 + 32], v203 + *(v232 + 72) * v73, v252);
        v237 = v206;
        if (v206)
        {
        }

        if (v73 < v205)
        {
          goto LABEL_148;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_21C864538(v69);
        }

        if (v7 >= *(v69 + 2))
        {
          goto LABEL_149;
        }

        v207 = &v69[16 * v7];
        *(v207 + 4) = v205;
        *(v207 + 5) = v73;
        v262 = v69;
        result = sub_21C8644AC(v75);
        v69 = v262;
        v163 = *(v262 + 2);
        v73 = v204;
        if (v163 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v68 = *(v73 + 8);
    v71 = v225;
    if (v225 >= v68)
    {
      goto LABEL_134;
    }
  }

  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
  return result;
}

uint64_t sub_21C88D6A4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v156 = a1;
  v6 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v178 = (&v151 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v151 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v151 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v151 = (&v151 - v20);
  MEMORY[0x28223BE20](v19);
  v153 = (&v151 - v21);
  v22 = type metadata accessor for PMAccount(0);
  v166 = *(v22 - 8);
  v23 = *(v166 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v160 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v175 = &v151 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v151 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v33 = MEMORY[0x28223BE20](v32);
  v171 = &v151 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  result = MEMORY[0x28223BE20](v35);
  v152 = &v151 - v40;
  v168 = a3;
  v41 = *(a3 + 8);
  if (v41 < 1)
  {
    v43 = MEMORY[0x277D84F90];
LABEL_116:
    a3 = *v156;
    if (!*v156)
    {
      goto LABEL_154;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v10 = v172;
    if (result)
    {
LABEL_118:
      v180 = v43;
      v147 = *(v43 + 2);
      if (v147 >= 2)
      {
        while (*v168)
        {
          v148 = *&v43[16 * v147];
          v149 = *&v43[16 * v147 + 24];
          sub_21C894220(*v168 + *(v166 + 72) * v148, *v168 + *(v166 + 72) * *&v43[16 * v147 + 16], *v168 + *(v166 + 72) * v149, a3);
          if (v10)
          {
          }

          if (v149 < v148)
          {
            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_21C864538(v43);
          }

          if (v147 - 2 >= *(v43 + 2))
          {
            goto LABEL_142;
          }

          v150 = &v43[16 * v147];
          *v150 = v148;
          *(v150 + 1) = v149;
          v180 = v43;
          result = sub_21C8644AC(v147 - 1);
          v43 = v180;
          v147 = *(v180 + 2);
          if (v147 <= 1)
          {
          }
        }

        goto LABEL_152;
      }
    }

LABEL_148:
    result = sub_21C864538(v43);
    v43 = result;
    goto LABEL_118;
  }

  v170 = v38;
  v176 = v37;
  v173 = result;
  v162 = v18;
  v159 = v15;
  v42 = 0;
  v43 = MEMORY[0x277D84F90];
  v155 = a4;
  v179 = v6;
  v177 = v10;
  v44 = v39;
  v154 = v39;
  while (2)
  {
    v45 = v42;
    v46 = (v42 + 1);
    v165 = v43;
    v158 = v42;
    if ((v42 + 1) >= v41)
    {
      goto LABEL_38;
    }

    v163 = v41;
    v47 = v42;
    v48 = *v168;
    v49 = *(v166 + 72);
    v50 = v46;
    v51 = v152;
    sub_21C7106A8(*v168 + v49 * v46, v152, type metadata accessor for PMAccount);
    v167 = v49;
    sub_21C7106A8(v48 + v49 * v47, v44, type metadata accessor for PMAccount);
    v52 = v173;
    v53 = v153;
    sub_21C7106A8(v51 + *(v173 + 24), v153, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = v53;
    }

    else
    {
      v55 = *v53;
      v56 = v44 + *(v52 + 24);
      v57 = v151;
      sub_21C7106A8(v56, v151, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v59 = *v57;
        v60 = [v55 compare:v59 byType:1];

        v61 = v60 + 1 == 0;
        v43 = v165;
        v58 = v61;
        goto LABEL_13;
      }

      v54 = v57;
    }

    sub_21C7126DC(v54, type metadata accessor for PMAccount.Storage);
    v58 = 1;
LABEL_13:
    LODWORD(v164) = v58;
    sub_21C7126DC(v44, type metadata accessor for PMAccount);
    result = sub_21C7126DC(v51, type metadata accessor for PMAccount);
    v62 = v158 + 2;
    v63 = v167 * (v158 + 2);
    a3 = v48 + v63;
    v64 = (v167 * v50);
    v65 = v48 + v167 * v50;
    do
    {
      v67 = v62;
      v68 = v50;
      v10 = v64;
      v69 = v63;
      if (v62 >= v163)
      {
        break;
      }

      v174 = v50;
      v169 = v62;
      v70 = v171;
      sub_21C7106A8(a3, v171, type metadata accessor for PMAccount);
      v71 = v170;
      sub_21C7106A8(v65, v170, type metadata accessor for PMAccount);
      v72 = v173;
      v73 = v162;
      sub_21C7106A8(v70 + *(v173 + 24), v162, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v161 = *v73;
        v73 = v159;
        sub_21C7106A8(v71 + *(v72 + 24), v159, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v74 = *v73;
          v75 = v161;
          v76 = [v161 compare:v74 byType:1];

          v66 = v76 == -1;
          goto LABEL_16;
        }
      }

      sub_21C7126DC(v73, type metadata accessor for PMAccount.Storage);
      v66 = 1;
LABEL_16:
      v67 = v169;
      sub_21C7126DC(v170, type metadata accessor for PMAccount);
      result = sub_21C7126DC(v171, type metadata accessor for PMAccount);
      v62 = v67 + 1;
      a3 += v167;
      v65 += v167;
      v68 = v174;
      v50 = v174 + 1;
      v64 = (v10 + v167);
      v63 = v69 + v167;
      v43 = v165;
    }

    while (v164 == v66);
    if (v164)
    {
      v45 = v158;
      a4 = v155;
      if (v67 < v158)
      {
        goto LABEL_145;
      }

      if (v158 >= v67)
      {
        v46 = v67;
      }

      else
      {
        v77 = v158 * v167;
        v78 = v158;
        do
        {
          if (v78 != v68)
          {
            v174 = v68;
            v80 = *v168;
            if (!*v168)
            {
              goto LABEL_151;
            }

            a3 = v80 + v77;
            sub_21C8399BC(v80 + v77, v160, type metadata accessor for PMAccount);
            if (v77 < v10 || a3 >= v80 + v69)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v77 != v10)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_21C8399BC(v160, v10 + v80, type metadata accessor for PMAccount);
            v45 = v158;
            v68 = v174;
          }

          ++v78;
          v10 = (v10 - v167);
          v69 -= v167;
          v77 += v167;
        }

        while (v78 < v68--);
        v46 = v67;
        a4 = v155;
      }

      v10 = v177;
    }

    else
    {
      v46 = v67;
      a4 = v155;
      v10 = v177;
      v45 = v158;
    }

LABEL_38:
    v81 = v168[1];
    if (v46 >= v81)
    {
      v42 = v46;
LABEL_61:
      if (v42 < v45)
      {
        goto LABEL_143;
      }

      goto LABEL_62;
    }

    v42 = v46;
    v115 = __OFSUB__(v46, v45);
    v82 = v46 - v45;
    if (v115)
    {
      goto LABEL_144;
    }

    if (v82 >= a4)
    {
      goto LABEL_61;
    }

    if (__OFADD__(v45, a4))
    {
      goto LABEL_146;
    }

    if (&v45[a4] >= v81)
    {
      v83 = v168[1];
    }

    else
    {
      v83 = &v45[a4];
    }

    if (v83 < v45)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    if (v42 == v83)
    {
      goto LABEL_61;
    }

    v84 = v42;
    v85 = *(v166 + 72);
    v86 = *v168 + v85 * (v42 - 1);
    v87 = v45;
    v88 = -v85;
    v89 = v87 - v42;
    v174 = *v168;
    v157 = v85;
    a3 = v174 + v84 * v85;
    v161 = v83;
LABEL_50:
    v169 = v84;
    v163 = a3;
    v164 = v89;
    v167 = v86;
    v90 = v173;
LABEL_51:
    sub_21C7106A8(a3, v31, type metadata accessor for PMAccount);
    v91 = v176;
    sub_21C7106A8(v86, v176, type metadata accessor for PMAccount);
    v92 = v178;
    sub_21C7106A8(&v31[*(v90 + 24)], v178, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v94 = v92;
    v95 = v90;
    if (EnumCaseMultiPayload == 1)
    {
LABEL_54:
      sub_21C7126DC(v94, type metadata accessor for PMAccount.Storage);
      sub_21C7126DC(v91, type metadata accessor for PMAccount);
      result = sub_21C7126DC(v31, type metadata accessor for PMAccount);
    }

    else
    {
      v96 = *v178;
      sub_21C7106A8(v91 + *(v90 + 24), v10, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v94 = v10;
        v95 = v173;
        goto LABEL_54;
      }

      v97 = *v10;
      v98 = [v96 compare:v97 byType:1];

      sub_21C7126DC(v91, type metadata accessor for PMAccount);
      result = sub_21C7126DC(v31, type metadata accessor for PMAccount);
      v95 = v173;
      if (v98 != -1)
      {
        v10 = v177;
LABEL_49:
        v84 = v169 + 1;
        v86 = v167 + v157;
        v89 = v164 - 1;
        a3 = v163 + v157;
        if ((v169 + 1) == v161)
        {
          v42 = v161;
          v43 = v165;
          v45 = v158;
          if (v161 < v158)
          {
            goto LABEL_143;
          }

LABEL_62:
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_21C86467C(0, *(v43 + 2) + 1, 1, v43);
            v43 = result;
          }

          a3 = *(v43 + 2);
          v101 = *(v43 + 3);
          v102 = a3 + 1;
          if (a3 >= v101 >> 1)
          {
            result = sub_21C86467C((v101 > 1), a3 + 1, 1, v43);
            v43 = result;
          }

          *(v43 + 2) = v102;
          v103 = &v43[16 * a3];
          *(v103 + 4) = v45;
          *(v103 + 5) = v42;
          if (!*v156)
          {
            goto LABEL_153;
          }

          if (!a3)
          {
LABEL_3:
            v41 = v168[1];
            a4 = v155;
            v44 = v154;
            if (v42 >= v41)
            {
              goto LABEL_116;
            }

            continue;
          }

          v104 = *v156;
          while (2)
          {
            a3 = v102 - 1;
            if (v102 >= 4)
            {
              v109 = &v43[16 * v102 + 32];
              v110 = *(v109 - 64);
              v111 = *(v109 - 56);
              v115 = __OFSUB__(v111, v110);
              v112 = v111 - v110;
              if (v115)
              {
                goto LABEL_130;
              }

              v114 = *(v109 - 48);
              v113 = *(v109 - 40);
              v115 = __OFSUB__(v113, v114);
              v107 = v113 - v114;
              v108 = v115;
              if (v115)
              {
                goto LABEL_131;
              }

              v116 = &v43[16 * v102];
              v118 = *v116;
              v117 = *(v116 + 1);
              v115 = __OFSUB__(v117, v118);
              v119 = v117 - v118;
              if (v115)
              {
                goto LABEL_133;
              }

              v115 = __OFADD__(v107, v119);
              v120 = v107 + v119;
              if (v115)
              {
                goto LABEL_136;
              }

              if (v120 >= v112)
              {
                v138 = &v43[16 * a3 + 32];
                v140 = *v138;
                v139 = *(v138 + 1);
                v115 = __OFSUB__(v139, v140);
                v141 = v139 - v140;
                if (v115)
                {
                  goto LABEL_140;
                }

                if (v107 < v141)
                {
                  a3 = v102 - 2;
                }
              }

              else
              {
LABEL_82:
                if (v108)
                {
                  goto LABEL_132;
                }

                v121 = &v43[16 * v102];
                v123 = *v121;
                v122 = *(v121 + 1);
                v124 = __OFSUB__(v122, v123);
                v125 = v122 - v123;
                v126 = v124;
                if (v124)
                {
                  goto LABEL_135;
                }

                v127 = &v43[16 * a3 + 32];
                v129 = *v127;
                v128 = *(v127 + 1);
                v115 = __OFSUB__(v128, v129);
                v130 = v128 - v129;
                if (v115)
                {
                  goto LABEL_138;
                }

                if (__OFADD__(v125, v130))
                {
                  goto LABEL_139;
                }

                if (v125 + v130 < v107)
                {
                  goto LABEL_96;
                }

                if (v107 < v130)
                {
                  a3 = v102 - 2;
                }
              }
            }

            else
            {
              if (v102 == 3)
              {
                v105 = *(v43 + 4);
                v106 = *(v43 + 5);
                v115 = __OFSUB__(v106, v105);
                v107 = v106 - v105;
                v108 = v115;
                goto LABEL_82;
              }

              v131 = &v43[16 * v102];
              v133 = *v131;
              v132 = *(v131 + 1);
              v115 = __OFSUB__(v132, v133);
              v125 = v132 - v133;
              v126 = v115;
LABEL_96:
              if (v126)
              {
                goto LABEL_134;
              }

              v134 = &v43[16 * a3];
              v136 = *(v134 + 4);
              v135 = *(v134 + 5);
              v115 = __OFSUB__(v135, v136);
              v137 = v135 - v136;
              if (v115)
              {
                goto LABEL_137;
              }

              if (v137 < v125)
              {
                goto LABEL_3;
              }
            }

            v142 = a3 - 1;
            if (a3 - 1 >= v102)
            {
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
              goto LABEL_147;
            }

            if (!*v168)
            {
              goto LABEL_150;
            }

            v143 = *&v43[16 * v142 + 32];
            v144 = *&v43[16 * a3 + 40];
            v145 = v172;
            sub_21C894220(*v168 + *(v166 + 72) * v143, *v168 + *(v166 + 72) * *&v43[16 * a3 + 32], *v168 + *(v166 + 72) * v144, v104);
            v172 = v145;
            if (v145)
            {
            }

            if (v144 < v143)
            {
              goto LABEL_128;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_21C864538(v43);
            }

            if (v142 >= *(v43 + 2))
            {
              goto LABEL_129;
            }

            v146 = &v43[16 * v142];
            *(v146 + 4) = v143;
            *(v146 + 5) = v144;
            v180 = v43;
            result = sub_21C8644AC(a3);
            v43 = v180;
            v102 = *(v180 + 2);
            if (v102 <= 1)
            {
              goto LABEL_3;
            }

            continue;
          }
        }

        goto LABEL_50;
      }
    }

    break;
  }

  if (v174)
  {
    v99 = v175;
    sub_21C8399BC(a3, v175, type metadata accessor for PMAccount);
    swift_arrayInitWithTakeFrontToBack();
    sub_21C8399BC(v99, v86, type metadata accessor for PMAccount);
    v86 += v88;
    a3 += v88;
    v100 = __CFADD__(v89++, 1);
    v10 = v177;
    v90 = v95;
    if (v100)
    {
      goto LABEL_49;
    }

    goto LABEL_51;
  }

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
  return result;
}

uint64_t sub_21C88E528(int64_t *a1, uint64_t a2, int64_t a3, int64_t a4)
{
  v158 = a1;
  v6 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v151 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v162 = (&v151 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v164 = (&v151 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v152 = (&v151 - v19);
  MEMORY[0x28223BE20](v18);
  v154 = (&v151 - v20);
  v176 = type metadata accessor for PMAccount(0);
  v167 = *(v176 - 8);
  v21 = *(v167 + 64);
  v22 = MEMORY[0x28223BE20](v176);
  v163 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v180 = &v151 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v151 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v151 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v33 = MEMORY[0x28223BE20](v32);
  v171 = &v151 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v153 = &v151 - v36;
  result = MEMORY[0x28223BE20](v35);
  v156 = &v151 - v39;
  v40 = *(a3 + 8);
  if (v40 < 1)
  {
    v42 = MEMORY[0x277D84F90];
LABEL_112:
    a4 = *v158;
    if (!*v158)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v44 = v172;
    if (result)
    {
      v147 = v42;
LABEL_115:
      v42 = v44;
      v182 = v147;
      v44 = *(v147 + 2);
      if (v44 >= 2)
      {
        while (*a3)
        {
          v148 = *&v147[16 * v44];
          v149 = *&v147[16 * v44 + 24];
          sub_21C894A14(*a3 + *(v167 + 72) * v148, *a3 + *(v167 + 72) * *&v147[16 * v44 + 16], *a3 + *(v167 + 72) * v149, a4);
          if (v42)
          {
          }

          if (v149 < v148)
          {
            goto LABEL_139;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = sub_21C864538(v147);
          }

          if (v44 - 2 >= *(v147 + 2))
          {
            goto LABEL_140;
          }

          v150 = &v147[16 * v44];
          *v150 = v148;
          *(v150 + 1) = v149;
          v182 = v147;
          result = sub_21C8644AC(v44 - 1);
          v147 = v182;
          v44 = *(v182 + 2);
          if (v44 <= 1)
          {
          }
        }

        goto LABEL_150;
      }
    }

LABEL_146:
    result = sub_21C864538(v42);
    v147 = result;
    goto LABEL_115;
  }

  v170 = v38;
  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  v168 = a3;
  v157 = a4;
  v174 = v10;
  v175 = v6;
  v181 = v28;
  v177 = v31;
  while (2)
  {
    v43 = a3;
    v44 = v41;
    a3 = (v41 + 1);
    v159 = v41;
    if ((v41 + 1) >= v40)
    {
      goto LABEL_38;
    }

    v165 = v40;
    v45 = *v43;
    v46 = *(v167 + 72);
    v173 = (v41 + 1);
    v47 = v45 + v46 * a3;
    v48 = v156;
    sub_21C7106A8(v47, v156, type metadata accessor for PMAccount);
    v169 = v46;
    v49 = v45 + v46 * v44;
    v50 = v45;
    v51 = v153;
    sub_21C7106A8(v49, v153, type metadata accessor for PMAccount);
    v52 = v176;
    v53 = v154;
    sub_21C7106A8(v48 + *(v176 + 24), v154, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = v53;
    }

    else
    {
      v55 = *v53;
      v56 = v51 + *(v52 + 24);
      v57 = v152;
      sub_21C7106A8(v56, v152, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v59 = *v57;
        v60 = [v55 compare_];

        v61 = v60 + 1 == 0;
        v28 = v181;
        v58 = v61;
        goto LABEL_13;
      }

      v54 = v57;
    }

    sub_21C7126DC(v54, type metadata accessor for PMAccount.Storage);
    v58 = 1;
LABEL_13:
    LODWORD(v166) = v58;
    v155 = v42;
    sub_21C7126DC(v51, type metadata accessor for PMAccount);
    result = sub_21C7126DC(v156, type metadata accessor for PMAccount);
    v62 = v159 + 2;
    v63 = v169 * (v159 + 2);
    v64 = v50 + v63;
    v65 = v173;
    v66 = (v169 * v173);
    v67 = v50 + v169 * v173;
    do
    {
      v69 = v62;
      v70 = v65;
      v42 = v66;
      a3 = v63;
      v178 = v62;
      if (v62 >= v165)
      {
        break;
      }

      v179 = v65;
      v71 = v171;
      sub_21C7106A8(v64, v171, type metadata accessor for PMAccount);
      v72 = v170;
      sub_21C7106A8(v67, v170, type metadata accessor for PMAccount);
      v73 = v176;
      v74 = v164;
      sub_21C7106A8(v71 + *(v176 + 24), v164, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v173 = *v74;
        v74 = v162;
        sub_21C7106A8(v72 + *(v73 + 24), v162, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v75 = *v74;
          v76 = v173;
          v77 = [v173 compare_];

          v68 = v77 == -1;
          goto LABEL_16;
        }
      }

      sub_21C7126DC(v74, type metadata accessor for PMAccount.Storage);
      v68 = 1;
LABEL_16:
      v31 = v177;
      v69 = v178;
      sub_21C7126DC(v170, type metadata accessor for PMAccount);
      result = sub_21C7126DC(v171, type metadata accessor for PMAccount);
      v62 = v69 + 1;
      v64 += v169;
      v67 += v169;
      v70 = v179;
      v65 = v179 + 1;
      v66 = &v42[v169];
      v63 = a3 + v169;
      v28 = v181;
    }

    while (v166 == v68);
    if (!v166)
    {
      a3 = v69;
      v43 = v168;
      a4 = v157;
      v6 = v175;
      v42 = v155;
      goto LABEL_37;
    }

    v44 = v159;
    a4 = v157;
    if (v69 < v159)
    {
      goto LABEL_143;
    }

    if (v159 >= v69)
    {
      a3 = v69;
      v43 = v168;
      v6 = v175;
      v42 = v155;
    }

    else
    {
      v78 = v159;
      v79 = (v159 * v169);
      v6 = v175;
      do
      {
        if (v78 != v70)
        {
          v179 = v70;
          v81 = v6;
          v82 = *v168;
          if (!*v168)
          {
            goto LABEL_149;
          }

          sub_21C8399BC(&v79[v82], v163, type metadata accessor for PMAccount);
          if (v79 < v42 || &v79[v82] >= v82 + a3)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v79 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_21C8399BC(v163, &v42[v82], type metadata accessor for PMAccount);
          v6 = v81;
          v69 = v178;
          v70 = v179;
        }

        ++v78;
        v42 -= v169;
        a3 -= v169;
        v79 += v169;
      }

      while (v78 < v70--);
      a3 = v69;
      v43 = v168;
      a4 = v157;
      v42 = v155;
      v31 = v177;
LABEL_37:
      v44 = v159;
    }

LABEL_38:
    v83 = v43[1];
    if (a3 >= v83)
    {
      goto LABEL_59;
    }

    if (__OFSUB__(a3, v44))
    {
      goto LABEL_142;
    }

    if ((a3 - v44) >= a4)
    {
      goto LABEL_59;
    }

    v84 = (v44 + a4);
    if (__OFADD__(v44, a4))
    {
      goto LABEL_144;
    }

    if (v84 >= v83)
    {
      v84 = v83;
    }

    if (v84 < v44)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (a3 == v84)
    {
LABEL_59:
      if (a3 < v44)
      {
        goto LABEL_141;
      }

      v173 = a3;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21C86467C(0, *(v42 + 2) + 1, 1, v42);
        v42 = result;
      }

      v103 = *(v42 + 2);
      v102 = *(v42 + 3);
      v44 = v103 + 1;
      v41 = v173;
      if (v103 >= v102 >> 1)
      {
        result = sub_21C86467C((v102 > 1), v103 + 1, 1, v42);
        v41 = v173;
        v42 = result;
      }

      *(v42 + 2) = v44;
      v104 = &v42[16 * v103];
      *(v104 + 4) = v159;
      *(v104 + 5) = v41;
      if (!*v158)
      {
        goto LABEL_151;
      }

      if (!v103)
      {
LABEL_3:
        a3 = v168;
        v40 = v168[1];
        a4 = v157;
        if (v41 >= v40)
        {
          goto LABEL_112;
        }

        continue;
      }

      a3 = *v158;
      while (1)
      {
        a4 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v105 = *(v42 + 4);
          v106 = *(v42 + 5);
          v115 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          v108 = v115;
LABEL_80:
          if (v108)
          {
            goto LABEL_130;
          }

          v121 = &v42[16 * v44];
          v123 = *v121;
          v122 = *(v121 + 1);
          v124 = __OFSUB__(v122, v123);
          v125 = v122 - v123;
          v126 = v124;
          if (v124)
          {
            goto LABEL_133;
          }

          v127 = &v42[16 * a4 + 32];
          v129 = *v127;
          v128 = *(v127 + 1);
          v115 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v115)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v125, v130))
          {
            goto LABEL_137;
          }

          if (v125 + v130 >= v107)
          {
            if (v107 < v130)
            {
              a4 = v44 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v131 = &v42[16 * v44];
        v133 = *v131;
        v132 = *(v131 + 1);
        v115 = __OFSUB__(v132, v133);
        v125 = v132 - v133;
        v126 = v115;
LABEL_94:
        if (v126)
        {
          goto LABEL_132;
        }

        v134 = &v42[16 * a4];
        v136 = *(v134 + 4);
        v135 = *(v134 + 5);
        v115 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v115)
        {
          goto LABEL_135;
        }

        if (v137 < v125)
        {
          goto LABEL_3;
        }

LABEL_101:
        v142 = a4 - 1;
        if (a4 - 1 >= v44)
        {
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
          goto LABEL_145;
        }

        if (!*v168)
        {
          goto LABEL_148;
        }

        v143 = v6;
        v44 = *&v42[16 * v142 + 32];
        v144 = *&v42[16 * a4 + 40];
        v145 = v172;
        sub_21C894A14(*v168 + *(v167 + 72) * v44, *v168 + *(v167 + 72) * *&v42[16 * a4 + 32], *v168 + *(v167 + 72) * v144, a3);
        v172 = v145;
        if (v145)
        {
        }

        if (v144 < v44)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_21C864538(v42);
        }

        if (v142 >= *(v42 + 2))
        {
          goto LABEL_127;
        }

        v146 = &v42[16 * v142];
        *(v146 + 4) = v44;
        *(v146 + 5) = v144;
        v182 = v42;
        result = sub_21C8644AC(a4);
        v42 = v182;
        v44 = *(v182 + 2);
        v31 = v177;
        v6 = v143;
        v41 = v173;
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v109 = &v42[16 * v44 + 32];
      v110 = *(v109 - 64);
      v111 = *(v109 - 56);
      v115 = __OFSUB__(v111, v110);
      v112 = v111 - v110;
      if (v115)
      {
        goto LABEL_128;
      }

      v114 = *(v109 - 48);
      v113 = *(v109 - 40);
      v115 = __OFSUB__(v113, v114);
      v107 = v113 - v114;
      v108 = v115;
      if (v115)
      {
        goto LABEL_129;
      }

      v116 = &v42[16 * v44];
      v118 = *v116;
      v117 = *(v116 + 1);
      v115 = __OFSUB__(v117, v118);
      v119 = v117 - v118;
      if (v115)
      {
        goto LABEL_131;
      }

      v115 = __OFADD__(v107, v119);
      v120 = v107 + v119;
      if (v115)
      {
        goto LABEL_134;
      }

      if (v120 >= v112)
      {
        v138 = &v42[16 * a4 + 32];
        v140 = *v138;
        v139 = *(v138 + 1);
        v115 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v115)
        {
          goto LABEL_138;
        }

        if (v107 < v141)
        {
          a4 = v44 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

    break;
  }

  v155 = v42;
  v85 = *v168;
  v86 = *(v167 + 72);
  v87 = *v168 + v86 * (a3 - 1);
  v178 = -v86;
  v179 = v85;
  v88 = v44 - a3;
  v160 = v86;
  a4 = &v85[a3 * v86];
  v161 = v84;
LABEL_48:
  v173 = a3;
  v165 = a4;
  v166 = v88;
  v169 = v87;
  v89 = v87;
  v90 = v176;
  while (1)
  {
    sub_21C7106A8(a4, v31, type metadata accessor for PMAccount);
    sub_21C7106A8(v89, v28, type metadata accessor for PMAccount);
    sub_21C7106A8(&v31[*(v90 + 24)], v13, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v92 = v13;
    v93 = v90;
    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_52;
    }

    v94 = v13;
    v95 = *v13;
    v96 = v174;
    sub_21C7106A8(&v28[*(v90 + 24)], v174, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v92 = v96;
      v93 = v176;
      v13 = v94;
      v6 = v175;
      v31 = v177;
LABEL_52:
      sub_21C7126DC(v92, type metadata accessor for PMAccount.Storage);
      sub_21C7126DC(v28, type metadata accessor for PMAccount);
      result = sub_21C7126DC(v31, type metadata accessor for PMAccount);
      goto LABEL_54;
    }

    v97 = *v96;
    v98 = [v95 compare_];

    sub_21C7126DC(v28, type metadata accessor for PMAccount);
    v31 = v177;
    result = sub_21C7126DC(v177, type metadata accessor for PMAccount);
    v93 = v176;
    v13 = v94;
    v6 = v175;
    if (v98 != -1)
    {
      goto LABEL_47;
    }

LABEL_54:
    if (!v179)
    {
      break;
    }

    v99 = v180;
    sub_21C8399BC(a4, v180, type metadata accessor for PMAccount);
    swift_arrayInitWithTakeFrontToBack();
    v100 = v99;
    v28 = v181;
    sub_21C8399BC(v100, v89, type metadata accessor for PMAccount);
    v89 += v178;
    a4 += v178;
    v101 = __CFADD__(v88++, 1);
    v90 = v93;
    if (v101)
    {
LABEL_47:
      a3 = v173 + 1;
      v87 = v169 + v160;
      v88 = v166 - 1;
      a4 = v165 + v160;
      if ((v173 + 1) == v161)
      {
        a3 = v161;
        v42 = v155;
        v44 = v159;
        goto LABEL_59;
      }

      goto LABEL_48;
    }
  }

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
  return result;
}

uint64_t sub_21C88F3F0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v310 = a1;
  v362 = type metadata accessor for PMAccount.MockData(0);
  v6 = *(*(v362 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v362);
  v9 = &v306 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v341 = &v306 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v311 = &v306 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v327 = &v306 - v15;
  MEMORY[0x28223BE20](v14);
  v356 = &v306 - v16;
  v17 = type metadata accessor for PMAccount.Storage(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v354 = (&v306 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v357 = (&v306 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v349 = (&v306 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v353 = (&v306 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v320 = (&v306 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v329 = (&v306 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = (&v306 - v32);
  MEMORY[0x28223BE20](v31);
  v326 = (&v306 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v344 = &v306 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v340 = &v306 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v306 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v364 = &v306 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v343 = &v306 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v339 = &v306 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v348 = &v306 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v358 = &v306 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v313 = &v306 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v316 = &v306 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v331 = &v306 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v332 = &v306 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v312 = &v306 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v315 = &v306 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v319 = &v306 - v67;
  MEMORY[0x28223BE20](v66);
  v333 = &v306 - v68;
  v370 = sub_21CB80DD4();
  v69 = *(v370 - 8);
  v70 = *(v69 + 64);
  v71 = MEMORY[0x28223BE20](v370);
  v367 = &v306 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v366 = &v306 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v336 = &v306 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v346 = &v306 - v78;
  MEMORY[0x28223BE20](v77);
  v335 = &v306 - v79;
  v80 = type metadata accessor for PMAccount(0);
  v330 = *(v80 - 8);
  v81 = *(v330 + 64);
  v82 = MEMORY[0x28223BE20](v80);
  v321 = &v306 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x28223BE20](v82);
  v352 = &v306 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v372 = &v306 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v369 = &v306 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v347 = &v306 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v345 = &v306 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  result = MEMORY[0x28223BE20](v94);
  v334 = a3;
  v98 = a3[1];
  if (v98 < 1)
  {
    v100 = MEMORY[0x277D84F90];
LABEL_182:
    v98 = *v310;
    if (!*v310)
    {
      goto LABEL_223;
    }

    v69 = v100;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v342;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v69;
LABEL_185:
      v373 = result;
      v69 = *(result + 16);
      if (v69 >= 2)
      {
        while (*v334)
        {
          v302 = *(result + 16 * v69);
          v303 = result;
          v304 = *(result + 16 * (v69 - 1) + 40);
          sub_21C8951E8(*v334 + *(v330 + 72) * v302, *v334 + *(v330 + 72) * *(result + 16 * (v69 - 1) + 32), (*v334 + *(v330 + 72) * v304), v98);
          if (v80)
          {
          }

          if (v304 < v302)
          {
            goto LABEL_210;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v303 = sub_21C864538(v303);
          }

          if (v69 - 2 >= *(v303 + 2))
          {
            goto LABEL_211;
          }

          v305 = &v303[16 * v69];
          *v305 = v302;
          *(v305 + 1) = v304;
          v373 = v303;
          sub_21C8644AC(v69 - 1);
          result = v373;
          v69 = *(v373 + 16);
          if (v69 <= 1)
          {
          }
        }

        goto LABEL_221;
      }
    }

LABEL_217:
    result = sub_21C864538(v69);
    goto LABEL_185;
  }

  v308 = &v306 - v96;
  v307 = v97;
  v99 = 0;
  v361 = (v69 + 56);
  v371 = (v69 + 48);
  v363 = (v69 + 32);
  v355 = (v69 + 8);
  v100 = MEMORY[0x277D84F90];
  v309 = a4;
  v338 = v9;
  v359 = v17;
  v318 = v33;
  v360 = v43;
  v368 = v80;
  while (2)
  {
    v322 = v100;
    v314 = v99;
    if (v99 + 1 >= v98)
    {
      v98 = v99 + 1;
      goto LABEL_66;
    }

    v101 = v99;
    v102 = *v334;
    v103 = *(v330 + 72);
    v365 = *v334 + v103 * (v99 + 1);
    v104 = v308;
    sub_21C7106A8(v365, v308, type metadata accessor for PMAccount);
    v351 = v102;
    v105 = v102 + v103 * v101;
    v106 = v307;
    sub_21C7106A8(v105, v307, type metadata accessor for PMAccount);
    v107 = v342;
    LODWORD(v328) = sub_21C8822F8(v104, v106);
    if (v107)
    {
      sub_21C7126DC(v106, type metadata accessor for PMAccount);
      sub_21C7126DC(v308, type metadata accessor for PMAccount);
    }

    v69 = type metadata accessor for PMAccount;
    sub_21C7126DC(v106, type metadata accessor for PMAccount);
    sub_21C7126DC(v308, type metadata accessor for PMAccount);
    v108 = v101 + 2;
    result = v351 + v103 * (v101 + 2);
    v342 = 0;
    v109 = v103;
    v350 = v103;
    v110 = v365;
    v337 = v98;
    while (v98 != v108)
    {
      v365 = v108;
      v351 = result;
      v115 = v345;
      sub_21C7106A8(result, v345, type metadata accessor for PMAccount);
      sub_21C7106A8(v110, v347, type metadata accessor for PMAccount);
      v116 = *(v80 + 24);
      v117 = v326;
      sub_21C7106A8(v115 + v116, v326, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v118 = v117;
        v119 = v356;
        sub_21C8399BC(v118, v356, type metadata accessor for PMAccount.MockData);
        v120 = v333;
        sub_21C6EDBAC(v119 + *(v362 + 32), v333, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v119, type metadata accessor for PMAccount.MockData);
        v121 = v327;
        v122 = v370;
      }

      else
      {
        v123 = *v117;
        v124 = [v123 creationDate];
        v121 = v327;
        if (v124)
        {
          v125 = v319;
          v126 = v124;
          sub_21CB80D94();

          v127 = 0;
          v123 = v126;
        }

        else
        {
          v127 = 1;
          v125 = v319;
        }

        v122 = v370;
        (*v361)(v125, v127, 1, v370);
        v120 = v333;
        sub_21C6F1098(v125, v333);
        v17 = v359;
      }

      v128 = *v371;
      v129 = (*v371)(v120, 1, v122);
      v130 = v329;
      if (v129 != 1)
      {
        (*v363)(v335, v120, v122);
        v43 = v360;
        v135 = v331;
        v136 = v368;
        goto LABEL_31;
      }

      v131 = v318;
      sub_21C7106A8(v345 + v116, v318, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C8399BC(v131, v121, type metadata accessor for PMAccount.MockData);
        v132 = v315;
        sub_21C6EDBAC(v121 + *(v362 + 32), v315, &unk_27CDED250, &qword_21CBA64C0);
        v133 = v370;
        if (v128(v132, 1, v370) != 1)
        {
          sub_21C7126DC(v121, type metadata accessor for PMAccount.MockData);
          (*v363)(v335, v132, v133);
          goto LABEL_25;
        }

        sub_21CB80DA4();
        sub_21C7126DC(v121, type metadata accessor for PMAccount.MockData);
        v134 = v128(v132, 1, v133);
        v43 = v360;
        v135 = v331;
        v136 = v368;
        if (v134 == 1)
        {
          goto LABEL_29;
        }

        v137 = &v347;
        goto LABEL_28;
      }

      v138 = *v131;
      v139 = [*v131 lastModifiedDate];
      v133 = v370;
      if (v139)
      {
        v140 = v346;
        v141 = v139;
        sub_21CB80D94();

        v142 = *v363;
        v143 = v312;
        (*v363)(v312, v140, v133);
        (*v361)(v143, 0, 1, v133);
        v142(v335, v143, v133);
        v130 = v329;
LABEL_25:
        v43 = v360;
        v135 = v331;
        v136 = v368;
        goto LABEL_29;
      }

      v144 = v312;
      (*v361)(v312, 1, 1, v370);
      sub_21CB80D14();

      v145 = v128(v144, 1, v133);
      v130 = v329;
      v43 = v360;
      v135 = v331;
      v136 = v368;
      if (v145 != 1)
      {
        v137 = &v344;
LABEL_28:
        sub_21C6EA794(*(v137 - 32), &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_29:
      if (v128(v333, 1, v133) != 1)
      {
        sub_21C6EA794(v333, &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_31:
      v146 = *(v136 + 24);
      sub_21C7106A8(v347 + v146, v130, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v147 = v130;
        v148 = v356;
        sub_21C8399BC(v147, v356, type metadata accessor for PMAccount.MockData);
        v149 = v332;
        sub_21C6EDBAC(v148 + *(v362 + 32), v332, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v148, type metadata accessor for PMAccount.MockData);
        v150 = v370;
      }

      else
      {
        v151 = *v130;
        v152 = [v151 creationDate];
        if (v152)
        {
          v153 = v152;
          sub_21CB80D94();

          v154 = 0;
          v151 = v153;
          v135 = v331;
        }

        else
        {
          v154 = 1;
        }

        v150 = v370;
        (*v361)(v135, v154, 1, v370);
        v155 = v135;
        v149 = v332;
        sub_21C6F1098(v155, v332);
        v17 = v359;
      }

      if (v128(v149, 1, v150) == 1)
      {
        v156 = v320;
        sub_21C7106A8(v347 + v146, v320, type metadata accessor for PMAccount.Storage);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v325 = v128;
        if (EnumCaseMultiPayload == 1)
        {
          v158 = v156;
          v159 = v311;
          sub_21C8399BC(v158, v311, type metadata accessor for PMAccount.MockData);
          v160 = v316;
          sub_21C6EDBAC(v159 + *(v362 + 32), v316, &unk_27CDED250, &qword_21CBA64C0);
          v150 = v370;
          if (v128(v160, 1, v370) == 1)
          {
            sub_21CB80DA4();
            sub_21C7126DC(v159, type metadata accessor for PMAccount.MockData);
            if (v128(v160, 1, v150) != 1)
            {
              v161 = &v348;
              goto LABEL_47;
            }
          }

          else
          {
            sub_21C7126DC(v159, type metadata accessor for PMAccount.MockData);
            (*v363)(v336, v160, v150);
          }
        }

        else
        {
          v162 = *v156;
          v163 = [v162 lastModifiedDate];
          if (v163)
          {
            v164 = v346;
            v165 = v163;
            sub_21CB80D94();

            v166 = *v363;
            v167 = v313;
            v150 = v370;
            (*v363)(v313, v164, v370);
            (*v361)(v167, 0, 1, v150);
            v166(v336, v167, v150);
          }

          else
          {
            v168 = v313;
            v150 = v370;
            (*v361)(v313, 1, 1, v370);
            sub_21CB80D14();

            if (v128(v168, 1, v150) != 1)
            {
              v161 = &v345;
LABEL_47:
              sub_21C6EA794(*(v161 - 32), &unk_27CDED250, &qword_21CBA64C0);
            }
          }
        }

        v111 = v110;
        v169 = v332;
        if ((v325)(v332, 1, v150) != 1)
        {
          sub_21C6EA794(v169, &unk_27CDED250, &qword_21CBA64C0);
        }

        goto LABEL_8;
      }

      v111 = v110;
      (*v363)(v336, v149, v150);
LABEL_8:
      v112 = v335;
      v113 = v336;
      v69 = sub_21CB80D34();
      v114 = *v355;
      (*v355)(v113, v150);
      v114(v112, v150);
      sub_21C7126DC(v347, type metadata accessor for PMAccount);
      sub_21C7126DC(v345, type metadata accessor for PMAccount);
      v108 = v365 + 1;
      v109 = v350;
      result = v351 + v350;
      v110 = v111 + v350;
      v80 = v368;
      v98 = v337;
      if ((v328 ^ v69))
      {
        v98 = v365;
        break;
      }
    }

    a4 = v309;
    if ((v328 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (v98 < v314)
    {
LABEL_216:
      __break(1u);
      goto LABEL_217;
    }

    if (v314 < v98)
    {
      v170 = v109 * (v98 - 1);
      v171 = v98 * v109;
      v172 = v98;
      v173 = v314;
      v174 = v314 * v109;
      do
      {
        if (v173 != --v172)
        {
          v175 = *v334;
          if (!*v334)
          {
            goto LABEL_220;
          }

          v69 = v175 + v174;
          sub_21C8399BC(v175 + v174, v321, type metadata accessor for PMAccount);
          if (v174 < v170 || v69 >= v175 + v171)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v174 != v170)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_21C8399BC(v321, v175 + v170, type metadata accessor for PMAccount);
          v43 = v360;
          v109 = v350;
        }

        ++v173;
        v170 -= v109;
        v171 -= v109;
        v174 += v109;
      }

      while (v173 < v172);
      a4 = v309;
      v80 = v368;
    }

LABEL_66:
    v176 = v334[1];
    if (v98 >= v176)
    {
      goto LABEL_76;
    }

    if (__OFSUB__(v98, v314))
    {
      goto LABEL_213;
    }

    if (v98 - v314 >= a4)
    {
LABEL_76:
      v180 = v98;
LABEL_77:
      v178 = v314;
LABEL_78:
      if (v180 < v178)
      {
        goto LABEL_212;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v323 = v180;
      if (result)
      {
        v100 = v322;
      }

      else
      {
        result = sub_21C86467C(0, *(v322 + 2) + 1, 1, v322);
        v100 = result;
      }

      v182 = *(v100 + 2);
      v181 = *(v100 + 3);
      v69 = v182 + 1;
      if (v182 >= v181 >> 1)
      {
        result = sub_21C86467C((v181 > 1), v182 + 1, 1, v100);
        v100 = result;
      }

      *(v100 + 2) = v69;
      v183 = &v100[16 * v182];
      v184 = v323;
      *(v183 + 4) = v178;
      *(v183 + 5) = v184;
      if (!*v310)
      {
        goto LABEL_222;
      }

      if (!v182)
      {
LABEL_3:
        v98 = v334[1];
        v99 = v323;
        a4 = v309;
        if (v323 >= v98)
        {
          goto LABEL_182;
        }

        continue;
      }

      v185 = *v310;
      while (1)
      {
        v186 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v187 = *(v100 + 4);
          v188 = *(v100 + 5);
          v197 = __OFSUB__(v188, v187);
          v189 = v188 - v187;
          v190 = v197;
LABEL_99:
          if (v190)
          {
            goto LABEL_201;
          }

          v203 = &v100[16 * v69];
          v205 = *v203;
          v204 = *(v203 + 1);
          v206 = __OFSUB__(v204, v205);
          v207 = v204 - v205;
          v208 = v206;
          if (v206)
          {
            goto LABEL_204;
          }

          v209 = &v100[16 * v186 + 32];
          v211 = *v209;
          v210 = *(v209 + 1);
          v197 = __OFSUB__(v210, v211);
          v212 = v210 - v211;
          if (v197)
          {
            goto LABEL_207;
          }

          if (__OFADD__(v207, v212))
          {
            goto LABEL_208;
          }

          if (v207 + v212 >= v189)
          {
            if (v189 < v212)
            {
              v186 = v69 - 2;
            }

            goto LABEL_120;
          }

          goto LABEL_113;
        }

        v213 = &v100[16 * v69];
        v215 = *v213;
        v214 = *(v213 + 1);
        v197 = __OFSUB__(v214, v215);
        v207 = v214 - v215;
        v208 = v197;
LABEL_113:
        if (v208)
        {
          goto LABEL_203;
        }

        v216 = &v100[16 * v186];
        v218 = *(v216 + 4);
        v217 = *(v216 + 5);
        v197 = __OFSUB__(v217, v218);
        v219 = v217 - v218;
        if (v197)
        {
          goto LABEL_206;
        }

        if (v219 < v207)
        {
          goto LABEL_3;
        }

LABEL_120:
        v224 = v186 - 1;
        if (v186 - 1 >= v69)
        {
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
          goto LABEL_215;
        }

        if (!*v334)
        {
          goto LABEL_219;
        }

        v98 = v100;
        v69 = *&v100[16 * v224 + 32];
        v225 = *&v100[16 * v186 + 40];
        v226 = v342;
        sub_21C8951E8(*v334 + *(v330 + 72) * v69, *v334 + *(v330 + 72) * *&v100[16 * v186 + 32], (*v334 + *(v330 + 72) * v225), v185);
        v342 = v226;
        if (v226)
        {
        }

        if (v225 < v69)
        {
          goto LABEL_197;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_21C864538(v98);
        }

        if (v224 >= *(v98 + 16))
        {
          goto LABEL_198;
        }

        v227 = v98 + 16 * v224;
        *(v227 + 32) = v69;
        *(v227 + 40) = v225;
        v373 = v98;
        result = sub_21C8644AC(v186);
        v100 = v373;
        v69 = *(v373 + 16);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v191 = &v100[16 * v69 + 32];
      v192 = *(v191 - 64);
      v193 = *(v191 - 56);
      v197 = __OFSUB__(v193, v192);
      v194 = v193 - v192;
      if (v197)
      {
        goto LABEL_199;
      }

      v196 = *(v191 - 48);
      v195 = *(v191 - 40);
      v197 = __OFSUB__(v195, v196);
      v189 = v195 - v196;
      v190 = v197;
      if (v197)
      {
        goto LABEL_200;
      }

      v198 = &v100[16 * v69];
      v200 = *v198;
      v199 = *(v198 + 1);
      v197 = __OFSUB__(v199, v200);
      v201 = v199 - v200;
      if (v197)
      {
        goto LABEL_202;
      }

      v197 = __OFADD__(v189, v201);
      v202 = v189 + v201;
      if (v197)
      {
        goto LABEL_205;
      }

      if (v202 >= v194)
      {
        v220 = &v100[16 * v186 + 32];
        v222 = *v220;
        v221 = *(v220 + 1);
        v197 = __OFSUB__(v221, v222);
        v223 = v221 - v222;
        if (v197)
        {
          goto LABEL_209;
        }

        if (v189 < v223)
        {
          v186 = v69 - 2;
        }

        goto LABEL_120;
      }

      goto LABEL_99;
    }

    break;
  }

  v177 = v314 + a4;
  if (__OFADD__(v314, a4))
  {
    goto LABEL_214;
  }

  v178 = v314;
  if (v177 >= v176)
  {
    v179 = v334[1];
  }

  else
  {
    v179 = v177;
  }

  if (v179 < v314)
  {
LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

  if (v98 == v179)
  {
    v180 = v98;
    goto LABEL_78;
  }

  v228 = *v334;
  v229 = *(v330 + 72);
  v230 = *v334 + v229 * (v98 - 1);
  v350 = -v229;
  v231 = (v314 - v98);
  v351 = v228;
  v317 = v229;
  v69 = v228 + v98 * v229;
  v323 = v179;
  while (2)
  {
    v337 = v98;
    v324 = v69;
    v325 = v231;
    v232 = v231;
    v328 = v230;
    v233 = v230;
    v234 = v358;
LABEL_133:
    v365 = v232;
    v235 = v369;
    sub_21C7106A8(v69, v369, type metadata accessor for PMAccount);
    sub_21C7106A8(v233, v372, type metadata accessor for PMAccount);
    v236 = *(v80 + 24);
    v237 = v353;
    sub_21C7106A8(v235 + v236, v353, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v238 = v237;
      v239 = v356;
      sub_21C8399BC(v238, v356, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v239 + *(v362 + 32), v234, &unk_27CDED250, &qword_21CBA64C0);
      sub_21C7126DC(v239, type metadata accessor for PMAccount.MockData);
      v240 = v370;
    }

    else
    {
      v241 = *v237;
      v242 = [*v237 creationDate];
      if (v242)
      {
        v243 = v242;
        v244 = v348;
        sub_21CB80D94();

        v245 = 0;
        v241 = v243;
      }

      else
      {
        v245 = 1;
        v244 = v348;
      }

      v240 = v370;
      (*v361)(v244, v245, 1, v370);
      sub_21C6F1098(v244, v234);
      v17 = v359;
      v43 = v360;
    }

    v246 = *v371;
    v247 = (*v371)(v234, 1, v240);
    v248 = v357;
    if (v247 == 1)
    {
      v249 = v369 + v236;
      v250 = v349;
      sub_21C7106A8(v249, v349, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v251 = v341;
        sub_21C8399BC(v250, v341, type metadata accessor for PMAccount.MockData);
        v252 = v339;
        sub_21C6EDBAC(v251 + *(v362 + 32), v339, &unk_27CDED250, &qword_21CBA64C0);
        v253 = v370;
        if (v246(v252, 1, v370) == 1)
        {
          sub_21CB80DA4();
          sub_21C7126DC(v251, type metadata accessor for PMAccount.MockData);
          v254 = v246(v252, 1, v253);
          v248 = v357;
          if (v254 != 1)
          {
            v255 = v252;
            goto LABEL_150;
          }
        }

        else
        {
          sub_21C7126DC(v251, type metadata accessor for PMAccount.MockData);
          (*v363)(v366, v252, v253);
          v248 = v357;
        }
      }

      else
      {
        v256 = *v250;
        v257 = [*v250 lastModifiedDate];
        if (v257)
        {
          v258 = v346;
          v259 = v257;
          sub_21CB80D94();

          v260 = *v363;
          v261 = v343;
          v253 = v370;
          (*v363)(v343, v258, v370);
          (*v361)(v261, 0, 1, v253);
          v260(v366, v261, v253);
          v248 = v357;
          v17 = v359;
        }

        else
        {
          v262 = v343;
          v253 = v370;
          (*v361)(v343, 1, 1, v370);
          sub_21CB80D14();

          v263 = v246(v262, 1, v253);
          v17 = v359;
          if (v263 != 1)
          {
            v255 = v343;
LABEL_150:
            sub_21C6EA794(v255, &unk_27CDED250, &qword_21CBA64C0);
          }
        }
      }

      v264 = v358;
      if (v246(v358, 1, v253) != 1)
      {
        sub_21C6EA794(v264, &unk_27CDED250, &qword_21CBA64C0);
      }
    }

    else
    {
      (*v363)(v366, v234, v240);
    }

    v265 = *(v368 + 24);
    sub_21C7106A8(v372 + v265, v248, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v266 = v248;
      v267 = v356;
      sub_21C8399BC(v266, v356, type metadata accessor for PMAccount.MockData);
      v268 = v364;
      sub_21C6EDBAC(v267 + *(v362 + 32), v364, &unk_27CDED250, &qword_21CBA64C0);
      sub_21C7126DC(v267, type metadata accessor for PMAccount.MockData);
      v269 = v354;
      v270 = v370;
    }

    else
    {
      v271 = v364;
      v272 = *v248;
      v273 = [*v248 creationDate];
      if (v273)
      {
        v274 = v273;
        sub_21CB80D94();

        v275 = 0;
        v272 = v274;
      }

      else
      {
        v275 = 1;
      }

      v269 = v354;

      v276 = v275;
      v270 = v370;
      (*v361)(v43, v276, 1, v370);
      v277 = v43;
      v268 = v271;
      sub_21C6F1098(v277, v271);
      v17 = v359;
    }

    v278 = v246(v268, 1, v270);
    v279 = v268;
    v280 = v270;
    if (v278 == 1)
    {
      sub_21C7106A8(v372 + v265, v269, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v281 = v269;
        v282 = v338;
        sub_21C8399BC(v281, v338, type metadata accessor for PMAccount.MockData);
        v283 = v340;
        sub_21C6EDBAC(v282 + *(v362 + 32), v340, &unk_27CDED250, &qword_21CBA64C0);
        if (v246(v283, 1, v270) == 1)
        {
          sub_21CB80DA4();
          sub_21C7126DC(v282, type metadata accessor for PMAccount.MockData);
          if (v246(v283, 1, v270) != 1)
          {
            v284 = v283;
            goto LABEL_170;
          }
        }

        else
        {
          sub_21C7126DC(v282, type metadata accessor for PMAccount.MockData);
          (*v363)(v367, v283, v270);
        }
      }

      else
      {
        v286 = *v269;
        v287 = [*v269 lastModifiedDate];
        if (v287)
        {
          v288 = v346;
          v289 = v287;
          sub_21CB80D94();

          v290 = *v363;
          v291 = v344;
          (*v363)(v344, v288, v280);
          (*v361)(v291, 0, 1, v280);
          v290(v367, v291, v280);
          v17 = v359;
        }

        else
        {
          v292 = v344;
          (*v361)(v344, 1, 1, v270);
          sub_21CB80D14();

          v293 = v246(v292, 1, v270);
          v17 = v359;
          if (v293 != 1)
          {
            v284 = v344;
LABEL_170:
            sub_21C6EA794(v284, &unk_27CDED250, &qword_21CBA64C0);
          }
        }
      }

      v285 = v17;
      if (v246(v364, 1, v280) != 1)
      {
        sub_21C6EA794(v364, &unk_27CDED250, &qword_21CBA64C0);
      }
    }

    else
    {
      v285 = v17;
      (*v363)(v367, v279, v270);
    }

    v295 = v366;
    v294 = v367;
    v296 = sub_21CB80D34();
    v297 = *v355;
    (*v355)(v294, v280);
    v297(v295, v280);
    sub_21C7126DC(v372, type metadata accessor for PMAccount);
    result = sub_21C7126DC(v369, type metadata accessor for PMAccount);
    if ((v296 & 1) == 0)
    {
      v43 = v360;
      v80 = v368;
      v17 = v285;
LABEL_131:
      v98 = v337 + 1;
      v230 = v328 + v317;
      v231 = v325 - 1;
      v69 = v324 + v317;
      v180 = v323;
      if (v337 + 1 == v323)
      {
        goto LABEL_77;
      }

      continue;
    }

    break;
  }

  v80 = v368;
  v298 = v365;
  if (v351)
  {
    v17 = v285;
    v299 = v352;
    sub_21C8399BC(v69, v352, type metadata accessor for PMAccount);
    swift_arrayInitWithTakeFrontToBack();
    sub_21C8399BC(v299, v233, type metadata accessor for PMAccount);
    v233 += v350;
    v69 += v350;
    v300 = __CFADD__(v298, 1);
    v232 = v298 + 1;
    v43 = v360;
    v234 = v358;
    if (v300)
    {
      goto LABEL_131;
    }

    goto LABEL_133;
  }

  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
  return result;
}

uint64_t sub_21C8917FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_21C864538(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_21C897058((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21C86467C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_21C86467C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_21C897058((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

unint64_t sub_21C891D48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v176 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v161 = &v157[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v157[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v160 = &v157[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v157[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v167 = &v157[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v168 = &v157[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v166 = &v157[-v24];
  MEMORY[0x28223BE20](v23);
  v164 = &v157[-v25];
  v179 = type metadata accessor for PMAccount.MockData(0);
  v26 = *(*(v179 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v179);
  v29 = &v157[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v27);
  v159 = &v157[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v163 = &v157[-v33];
  MEMORY[0x28223BE20](v32);
  v162 = &v157[-v34];
  v185 = type metadata accessor for PMAccount.Storage(0);
  v35 = *(*(v185 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v185);
  v171 = &v157[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v36);
  v170 = &v157[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v174 = &v157[-v41];
  MEMORY[0x28223BE20](v40);
  v173 = &v157[-v42];
  v43 = sub_21CB80DD4();
  v184 = *(v43 - 8);
  v44 = *(v184 + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v169 = &v157[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = MEMORY[0x28223BE20](v45);
  v165 = &v157[-v48];
  v49 = MEMORY[0x28223BE20](v47);
  v175 = &v157[-v50];
  v51 = MEMORY[0x28223BE20](v49);
  v172 = &v157[-v52];
  MEMORY[0x28223BE20](v51);
  v182 = &v157[-v53];
  v186 = type metadata accessor for PMAccount(0);
  v54 = *(*(v186 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v186);
  v180 = &v157[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = MEMORY[0x28223BE20](v55);
  v177 = &v157[-v58];
  v59 = MEMORY[0x28223BE20](v57);
  v61 = &v157[-v60];
  result = MEMORY[0x28223BE20](v59);
  v181 = &v157[-v63];
  v178 = *(v64 + 72);
  if (!v178)
  {
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    return result;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v178 == -1)
  {
    goto LABEL_99;
  }

  v65 = v176 - a2;
  if (v176 - a2 == 0x8000000000000000 && v178 == -1)
  {
    goto LABEL_100;
  }

  v66 = (a2 - a1) / v178;
  v189 = a1;
  v188 = a4;
  if (v66 >= v65 / v178)
  {
    v69 = v65 / v178 * v178;
    if (a4 < a2 || a2 + v69 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      result = a2;
      v70 = v176;
    }

    else
    {
      v70 = v176;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
        result = a2;
      }
    }

    if (v69 < 1)
    {
      v113 = (a4 + v69);
      goto LABEL_95;
    }

    v166 = v29;
    v167 = v13;
    v110 = -v178;
    v178 = v184 + 32;
    v174 = (v184 + 56);
    v173 = (v184 + 48);
    v172 = (v184 + 8);
    v111 = (a4 + v69);
    v112 = v165;
    v113 = (a4 + v69);
    v183 = a4;
    v158 = v18;
    v182 = v110;
    while (1)
    {
      v164 = v113;
      v114 = result + v110;
      v184 = result + v110;
      v176 = result;
      while (1)
      {
        if (result <= a1)
        {
          v189 = result;
          v187 = v164;
          goto LABEL_97;
        }

        v115 = v70;
        v168 = v113;
        v116 = &v111[v110];
        v117 = v177;
        sub_21C7106A8(&v111[v110], v177, type metadata accessor for PMAccount);
        sub_21C7106A8(v114, v180, type metadata accessor for PMAccount);
        v118 = v170;
        sub_21C7106A8(&v117[*(v186 + 24)], v170, type metadata accessor for PMAccount.Storage);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v181 = v116;
        if (EnumCaseMultiPayload == 1)
        {
          v120 = v159;
          sub_21C8399BC(v118, v159, type metadata accessor for PMAccount.MockData);
          v121 = v158;
          sub_21C6EDBAC(&v120[*(v179 + 32)], v158, &unk_27CDED250, &qword_21CBA64C0);
          v122 = v173;
          v123 = *v173;
          if ((*v173)(v121, 1, v43) != 1)
          {
            sub_21C7126DC(v120, type metadata accessor for PMAccount.MockData);
            (*v178)(v112, v121, v43);
            goto LABEL_72;
          }

          sub_21CB80DA4();
          sub_21C7126DC(v120, type metadata accessor for PMAccount.MockData);
          if (v123(v121, 1, v43) == 1)
          {
            goto LABEL_72;
          }

          v124 = v121;
          goto LABEL_71;
        }

        v125 = *v118;
        v126 = [v125 lastModifiedDate];
        if (v126)
        {
          v127 = v175;
          v128 = v126;
          sub_21CB80D94();

          v129 = *v178;
          v130 = v160;
          (*v178)(v160, v127, v43);
          (*v174)(v130, 0, 1, v43);
          v129(v112, v130, v43);
          v122 = v173;
          goto LABEL_72;
        }

        v131 = v160;
        (*v174)(v160, 1, 1, v43);
        sub_21CB80D14();

        v122 = v173;
        if ((*v173)(v131, 1, v43) != 1)
        {
          v124 = v160;
LABEL_71:
          sub_21C6EA794(v124, &unk_27CDED250, &qword_21CBA64C0);
        }

LABEL_72:
        v132 = v171;
        sub_21C7106A8(v180 + *(v186 + 24), v171, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v133 = v166;
          sub_21C8399BC(v132, v166, type metadata accessor for PMAccount.MockData);
          v134 = v167;
          sub_21C6EDBAC(&v133[*(v179 + 32)], v167, &unk_27CDED250, &qword_21CBA64C0);
          v135 = *v122;
          if ((*v122)(v134, 1, v43) != 1)
          {
            sub_21C7126DC(v133, type metadata accessor for PMAccount.MockData);
            v138 = v169;
            (*v178)(v169, v134, v43);
            goto LABEL_82;
          }

          v136 = v169;
          sub_21CB80DA4();
          sub_21C7126DC(v133, type metadata accessor for PMAccount.MockData);
          v137 = v135(v134, 1, v43);
          v138 = v136;
          v112 = v165;
          if (v137 == 1)
          {
            goto LABEL_82;
          }

          v139 = &v191;
          goto LABEL_81;
        }

        v140 = *v132;
        v141 = [v140 lastModifiedDate];
        if (v141)
        {
          v142 = v175;
          v143 = v141;
          sub_21CB80D94();

          v144 = *v178;
          v145 = v161;
          (*v178)(v161, v142, v43);
          (*v174)(v145, 0, 1, v43);
          v146 = v169;
          v144(v169, v145, v43);
          v138 = v146;
          v112 = v165;
          goto LABEL_82;
        }

        v147 = v161;
        (*v174)(v161, 1, 1, v43);
        v148 = v169;
        sub_21CB80D14();

        v138 = v148;
        v149 = (*v122)(v147, 1, v43);
        v112 = v165;
        if (v149 != 1)
        {
          v139 = &v190;
LABEL_81:
          sub_21C6EA794(*(v139 - 32), &unk_27CDED250, &qword_21CBA64C0);
        }

LABEL_82:
        v70 = &v182[v115];
        v150 = sub_21CB80D34();
        v151 = v138;
        v152 = v150;
        v153 = *v172;
        (*v172)(v151, v43);
        v153(v112, v43);
        sub_21C7126DC(v180, type metadata accessor for PMAccount);
        sub_21C7126DC(v177, type metadata accessor for PMAccount);
        if (v152)
        {
          break;
        }

        v154 = v181;
        v113 = v181;
        if (v115 < v111 || v70 >= v111)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v115 != v111)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v111 = v113;
        v114 = v184;
        v110 = v182;
        result = v176;
        if (v154 <= v183)
        {
          goto LABEL_95;
        }
      }

      if (v115 < v176 || v70 >= v176)
      {
        v156 = v184;
        swift_arrayInitWithTakeFrontToBack();
        result = v156;
        v155 = v183;
        v113 = v168;
      }

      else
      {
        v155 = v183;
        result = v184;
        v113 = v168;
        if (v115 != v176)
        {
          swift_arrayInitWithTakeBackToFront();
          result = v184;
        }
      }

      v110 = v182;
      if (v111 <= v155)
      {
LABEL_95:
        v189 = result;
        v187 = v113;
        goto LABEL_97;
      }
    }
  }

  v67 = v66 * v178;
  if (a4 < a1 || a1 + v67 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    result = a2;
    v68 = v168;
  }

  else
  {
    v68 = v168;
    if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
      result = a2;
    }
  }

  v177 = (a4 + v67);
  v187 = (a4 + v67);
  if (v67 >= 1 && result < v176)
  {
    v180 = (v184 + 32);
    v71 = (v184 + 48);
    v169 = (v184 + 8);
    v170 = (v184 + 56);
    v171 = v61;
    while (1)
    {
      v183 = a4;
      v184 = result;
      v72 = v181;
      sub_21C7106A8(result, v181, type metadata accessor for PMAccount);
      sub_21C7106A8(a4, v61, type metadata accessor for PMAccount);
      v73 = v173;
      sub_21C7106A8(&v72[*(v186 + 24)], v173, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v78 = *v73;
      v79 = [*v73 lastModifiedDate];
      if (v79)
      {
        v80 = v79;
        v81 = v175;
        sub_21CB80D94();

        v82 = *v180;
        v83 = v166;
        v68 = v168;
        (*v180)(v166, v81, v43);
        (*v170)(v83, 0, 1, v43);
        v82(v182, v83, v43);
        goto LABEL_29;
      }

      v84 = v166;
      (*v170)(v166, 1, 1, v43);
      sub_21CB80D14();

      if ((*v71)(v84, 1, v43) != 1)
      {
        v77 = v166;
LABEL_28:
        sub_21C6EA794(v77, &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_29:
      v85 = v174;
      sub_21C7106A8(v61 + *(v186 + 24), v174, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v86 = v163;
        sub_21C8399BC(v85, v163, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(&v86[*(v179 + 32)], v68, &unk_27CDED250, &qword_21CBA64C0);
        v87 = *v71;
        if ((*v71)(v68, 1, v43) == 1)
        {
          v88 = v172;
          sub_21CB80DA4();
          sub_21C7126DC(v86, type metadata accessor for PMAccount.MockData);
          v89 = v87(v68, 1, v43);
          v90 = v88;
          v91 = v178;
          if (v89 != 1)
          {
            v92 = v68;
LABEL_38:
            sub_21C6EA794(v92, &unk_27CDED250, &qword_21CBA64C0);
          }
        }

        else
        {
          sub_21C7126DC(v86, type metadata accessor for PMAccount.MockData);
          v90 = v172;
          (*v180)(v172, v68, v43);
          v91 = v178;
        }
      }

      else
      {
        v93 = *v85;
        v94 = [*v85 lastModifiedDate];
        if (v94)
        {
          v95 = v175;
          v96 = v94;
          sub_21CB80D94();

          v97 = *v180;
          v98 = v167;
          v68 = v168;
          (*v180)(v167, v95, v43);
          (*v170)(v98, 0, 1, v43);
          v99 = v172;
          v97(v172, v98, v43);
          v90 = v99;
          v91 = v178;
        }

        else
        {
          v100 = v167;
          (*v170)(v167, 1, 1, v43);
          v101 = v172;
          sub_21CB80D14();

          v102 = v100;
          v90 = v101;
          v103 = (*v71)(v102, 1, v43);
          v91 = v178;
          if (v103 != 1)
          {
            v92 = v167;
            goto LABEL_38;
          }
        }
      }

      v104 = v182;
      v105 = sub_21CB80D34();
      v106 = v90;
      v107 = v105;
      v108 = *v169;
      (*v169)(v106, v43);
      v108(v104, v43);
      v61 = v171;
      sub_21C7126DC(v171, type metadata accessor for PMAccount);
      sub_21C7126DC(v181, type metadata accessor for PMAccount);
      if (v107)
      {
        a4 = v183;
        v109 = v184 + v91;
        if (a1 < v184 || a1 >= v109)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v184)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        result = v109;
      }

      else
      {
        a4 = v183 + v91;
        if (a1 < v183 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v183)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v188 = a4;
        result = v184;
      }

      a1 += v91;
      v189 = a1;
      if (a4 >= v177 || result >= v176)
      {
        goto LABEL_97;
      }
    }

    v74 = v162;
    sub_21C8399BC(v73, v162, type metadata accessor for PMAccount.MockData);
    v75 = v164;
    sub_21C6EDBAC(&v74[*(v179 + 32)], v164, &unk_27CDED250, &qword_21CBA64C0);
    v76 = *v71;
    if ((*v71)(v75, 1, v43) != 1)
    {
      sub_21C7126DC(v74, type metadata accessor for PMAccount.MockData);
      (*v180)(v182, v75, v43);
      goto LABEL_29;
    }

    sub_21CB80DA4();
    sub_21C7126DC(v74, type metadata accessor for PMAccount.MockData);
    if (v76(v75, 1, v43) == 1)
    {
      goto LABEL_29;
    }

    v77 = v75;
    goto LABEL_28;
  }

LABEL_97:
  sub_21C864564(&v189, &v188, &v187);
  return 1;
}