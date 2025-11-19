uint64_t sub_21C860BA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C860BD4(v4);
}

uint64_t sub_21C860BD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks;
  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks);

  v6 = sub_21C967BCC(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;

    return sub_21C8602F8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C860D48(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v4 = *(v2 + *a2);
}

uint64_t sub_21C860E00@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  *a3 = *(v5 + *a2);
}

uint64_t sub_21C860EB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C8617B8(v4, &OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks, sub_21C967BCC);
}

uint64_t sub_21C860F1C()
{
  swift_getKeyPath();
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8);

  return v1;
}

uint64_t sub_21C860FD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  a2[1] = v4;
}

uint64_t sub_21C861090(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C8610D0(v2, v3);
}

uint64_t sub_21C8610D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  v6 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText) == a1 && *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8), (sub_21CB86344() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;

    return sub_21C8602F8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C861240@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor;
  swift_beginAccess();
  return sub_21C6EF0A0(v5 + v3, a1);
}

uint64_t sub_21C861308(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor;
  swift_beginAccess();
  sub_21C6EF0A0(v1 + v7, v6);
  v8 = sub_21C864A20(v6, a1);
  sub_21C6EA794(v6, &qword_27CDEE678, &unk_21CBBA210);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
    sub_21CB810C4();
  }

  else
  {
    swift_beginAccess();
    sub_21C8650DC(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &qword_27CDEE678, &unk_21CBBA210);
}

uint64_t sub_21C8614EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor;
  swift_beginAccess();
  sub_21C8650DC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C861558(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v17 - v5);
  v8 = *a1;
  v7 = a1[1];
  v9 = *(v1 + 16);
  v10 = qword_27CDEA4C0;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v9, v17[1]);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v11 = type metadata accessor for PMWiFiNetwork();
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
  {
    sub_21C6EA794(v6, &qword_27CDEE678, &unk_21CBBA210);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:

    v15 = 1;
    return v15 & 1;
  }

  v13 = *v6;
  v12 = v6[1];

  sub_21C864EF0(v6);
  if (!v7)
  {
    if (!v12)
    {
      goto LABEL_15;
    }

LABEL_14:

    v15 = 0;
    return v15 & 1;
  }

  if (!v12)
  {
    goto LABEL_14;
  }

  if (v8 == v13 && v12 == v7)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_21CB86344();
  }

  swift_bridgeObjectRelease_n();
  return v15 & 1;
}

uint64_t sub_21C8617B8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = *(v3 + *a2);

  LOBYTE(a3) = a3(v8, a1);

  if (a3)
  {
    v9 = *(v3 + v6);
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C861918()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v1 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_21C8619D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_21C908530(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C861B28(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_21C861B98(uint64_t a1, char a2)
{
  v3 = v2;

  sub_21C8617B8(v6, &OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networksToForget, sub_21C7A2154);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_5:
    swift_getKeyPath();
    v15 = v3;
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);

    sub_21CB810D4();

    v15 = v3;
    swift_getKeyPath();
    sub_21CB810F4();

    v11 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration;
    swift_beginAccess();
    v12 = *(v3 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + v11);
    *(v3 + v11) = 0x8000000000000000;
    sub_21C8D4700(v8, sub_21C86503C, v3, a2 & 1, isUniquelyReferenced_nonNull_native);
    *(v3 + v11) = v14;
    swift_endAccess();
    v15 = v3;
    swift_getKeyPath();
    sub_21CB810E4();
  }

  v8 = sub_21CAC8BB8(v7, 0);
  v9 = sub_21C89774C(&v15, v8 + 4, v7, a1);

  result = sub_21C6F1E7C();
  if (v9 == v7)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_21C861DEC()
{
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C861E64()
{
  swift_getKeyPath();
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated);
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated + 8);

  return v1;
}

uint64_t sub_21C861F34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated);
  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_21C864DD0;
  a2[1] = v6;
}

uint64_t sub_21C862018(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_getKeyPath();
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);

  sub_21CB810C4();
}

uint64_t sub_21C862134(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{

  sub_21C864C90(a2, a3);
}

uint64_t sub_21C862188(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs;
  v5 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

  LOBYTE(a1) = sub_21C7A2154(a1, v5);

  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    sub_21CB810D4();

    v8 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated);
    v7 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated + 8);
    swift_getKeyPath();

    sub_21CB810D4();

    v9 = *(v2 + v4);

    v8(v10);
  }

  return result;
}

uint64_t sub_21C862320(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C86234C(v4);
}

uint64_t sub_21C86234C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs;
  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

  v6 = sub_21C7A2154(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_21C862188(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C8624B4()
{
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x277D84FA0];
  *(v0 + 16) = KeyPath;
  *(v0 + 24) = v2;
  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  v4 = *MEMORY[0x277CDF0D8];
  v5 = sub_21CB85114();
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  v6 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks) = v6;
  v7 = (v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor;
  v9 = type metadata accessor for PMWiFiNetwork();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networksToForget) = v2;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration) = sub_21CB12570(v6);
  v10 = (v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated);
  *v10 = nullsub_1;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs) = v2;
  sub_21CB81104();
  sub_21C862620();
  return v0;
}

uint64_t sub_21C862620()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE660, &unk_21CBC3820);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = *(v0 + 16);
  v8 = qword_27CDEA4C0;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v7, v11);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C6EADEC(&qword_27CDEE670, &qword_27CDEE660, &unk_21CBC3820);
  sub_21CB81E04();

  (*(v3 + 8))(v6, v2);
  swift_getKeyPath();
  v11 = v1;
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v11 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v11 = v1;
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C862938(uint64_t a1)
{
  v2 = sub_21CB85114();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v6, *MEMORY[0x277CDF0D8], v4);
  sub_21C85FFDC(v6);
  swift_getKeyPath();
  v18 = a1;
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v8 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networksToForget;
  v9 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networksToForget);
  swift_getKeyPath();
  v18 = a1;

  sub_21CB810D4();

  v18 = a1;
  swift_getKeyPath();
  sub_21CB810F4();

  v10 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs;
  v18 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

  sub_21C864780(v9);

  v11 = *(a1 + v10);
  *(a1 + v10) = v18;
  sub_21C862188(v11);

  v18 = a1;
  swift_getKeyPath();
  sub_21CB810E4();

  v12 = *(a1 + 16);
  v13 = qword_27CDEA4C0;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v12, v18);

  swift_getKeyPath();
  v18 = a1;
  sub_21CB810D4();

  v14 = *(a1 + v8);

  sub_21CB63F48(v15);
}

uint64_t sub_21C862C44(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_21C860BD4(v3);
  }

  return result;
}

uint64_t sub_21C862CA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  v4 = sub_21CB85114();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks);

  v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks);

  v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor, &qword_27CDEE678, &unk_21CBBA210);
  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networksToForget);

  v9 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration);

  v10 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated + 8);

  v11 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

  v12 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel___observationRegistrar;
  v13 = sub_21CB81114();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t sub_21C862DF0()
{
  sub_21C862CA8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C862ED4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_21C862FC4(void **a1)
{
  v2 = *(type metadata accessor for PMWiFiNetwork() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21C8649F8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21C863150(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21C86306C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs) = *(v0 + 24);

  sub_21C862188(v2);
}

uint64_t sub_21C8630C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_21C8630FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  sub_21C864C90(v2, v3);
}

uint64_t sub_21C863150(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21CB862E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PMWiFiNetwork();
        v6 = sub_21CB85844();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PMWiFiNetwork() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21C8634E4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21C86327C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21C86327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v45 = type metadata accessor for PMWiFiNetwork();
  v8 = *(*(v45 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v45);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v43 = v18;
    v37 = v19;
    v23 = v18 + v19 * a3;
LABEL_6:
    v41 = v20;
    v42 = a3;
    v39 = v23;
    v40 = v22;
    while (1)
    {
      sub_21C84BF7C(v23, v17);
      sub_21C84BF7C(v20, v13);
      v24 = *(v17 + 2);
      v25 = *(v17 + 3);
      v26 = sub_21CB85634();
      v28 = v27;
      v29 = *(v13 + 2);
      v30 = *(v13 + 3);
      if (v26 == sub_21CB85634() && v28 == v31)
      {

        sub_21C864EF0(v13);
        result = sub_21C864EF0(v17);
LABEL_5:
        a3 = v42 + 1;
        v20 = v41 + v37;
        v22 = v40 - 1;
        v23 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        goto LABEL_6;
      }

      v33 = sub_21CB86344();

      sub_21C864EF0(v13);
      result = sub_21C864EF0(v17);
      if ((v33 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v34 = v44;
      sub_21C6F0E30(v23, v44);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21C6F0E30(v34, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21C8634E4(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v154 = a1;
  v167 = type metadata accessor for PMWiFiNetwork();
  v8 = *(*(v167 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v167);
  v158 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v166 = &v146 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v146 = &v146 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v146 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v164 = &v146 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v163 = &v146 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v153 = &v146 - v23;
  result = MEMORY[0x28223BE20](v22);
  v152 = &v146 - v26;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v30 = v25;
    v29 = MEMORY[0x277D84F90];
LABEL_110:
    v32 = *v154;
    if (!*v154)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_142:
      result = sub_21C864538(v29);
      v29 = result;
    }

    v169 = v29;
    v139 = *(v29 + 16);
    if (v139 >= 2)
    {
      while (1)
      {
        v140 = *a3;
        if (!*a3)
        {
          goto LABEL_146;
        }

        v141 = a3;
        a3 = v139 - 1;
        v142 = v29;
        v29 = *(v29 + 16 * v139);
        v143 = v142;
        v144 = *&v142[16 * v139 + 24];
        sub_21C863F14(v140 + *(v30 + 72) * v29, v140 + *(v30 + 72) * *&v142[16 * v139 + 16], v140 + *(v30 + 72) * v144, v32);
        if (v5)
        {
        }

        if (v144 < v29)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_21C864538(v143);
        }

        if (v139 - 2 >= *(v143 + 2))
        {
          goto LABEL_136;
        }

        v145 = &v143[16 * v139];
        *v145 = v29;
        v145[1] = v144;
        v169 = v143;
        result = sub_21C8644AC(v139 - 1);
        v29 = v169;
        v139 = *(v169 + 16);
        a3 = v141;
        if (v139 <= 1)
        {
        }
      }
    }
  }

  v147 = a4;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v155 = a3;
  v30 = v25;
  v148 = v25;
  v168 = v17;
  while (1)
  {
    v31 = v28;
    v32 = v28 + 1;
    if (v28 + 1 >= v27)
    {
      goto LABEL_36;
    }

    v160 = v27;
    v149 = v29;
    v33 = *a3;
    v34 = *(v30 + 72);
    v35 = v28 + 1;
    v36 = v152;
    sub_21C84BF7C(v33 + v34 * v32, v152);
    v162 = v34;
    v37 = v33 + v34 * v31;
    v38 = v153;
    sub_21C84BF7C(v37, v153);
    v39 = *(v36 + 16);
    v40 = *(v36 + 24);
    v32 = sub_21CB85634();
    v42 = v41;
    v43 = *(v38 + 16);
    v44 = *(v38 + 24);
    v46 = v32 == sub_21CB85634() && v42 == v45;
    v150 = v5;
    if (v46)
    {
      LODWORD(v161) = 0;
    }

    else
    {
      LODWORD(v161) = sub_21CB86344();
    }

    sub_21C864EF0(v153);
    result = sub_21C864EF0(v152);
    v151 = v31;
    v47 = v31 + 2;
    v48 = v162 * (v31 + 2);
    v49 = v33 + v48;
    v50 = v35;
    v51 = v162 * v35;
    v52 = v33 + v162 * v35;
    do
    {
      v53 = v47;
      v5 = v50;
      v54 = v51;
      v29 = v48;
      if (v47 >= v160)
      {
        break;
      }

      v165 = v47;
      v55 = v163;
      sub_21C84BF7C(v49, v163);
      v56 = v164;
      sub_21C84BF7C(v52, v164);
      v57 = *(v55 + 16);
      v58 = *(v55 + 24);
      v59 = sub_21CB85634();
      v61 = v60;
      v62 = *(v56 + 16);
      v63 = *(v56 + 24);
      v64 = sub_21CB85634();
      v30 = v65;
      v66 = v59 == v64 && v61 == v65;
      v32 = v66 ? 0 : sub_21CB86344();
      v53 = v165;

      sub_21C864EF0(v164);
      result = sub_21C864EF0(v163);
      v47 = v53 + 1;
      v49 += v162;
      v52 += v162;
      v50 = v5 + 1;
      v51 = v54 + v162;
      v48 = v29 + v162;
    }

    while (((v161 ^ v32) & 1) == 0);
    v17 = v168;
    if ((v161 & 1) == 0)
    {
      goto LABEL_34;
    }

    a3 = v151;
    if (v53 < v151)
    {
      goto LABEL_139;
    }

    if (v151 < v53)
    {
      v67 = v151 * v162;
      do
      {
        if (a3 != v5)
        {
          v69 = *v155;
          if (!*v155)
          {
            goto LABEL_145;
          }

          sub_21C6F0E30(v69 + v67, v158);
          if (v67 < v54 || v69 + v67 >= (v69 + v29))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v67 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_21C6F0E30(v158, v69 + v54);
        }

        ++a3;
        v54 -= v162;
        v29 -= v162;
        v67 += v162;
      }

      while (a3 < v5--);
LABEL_34:
      v32 = v53;
      v29 = v149;
      v5 = v150;
      a3 = v155;
      v30 = v148;
      v31 = v151;
      goto LABEL_36;
    }

    v32 = v53;
    v29 = v149;
    v5 = v150;
    v30 = v148;
    v31 = v151;
    a3 = v155;
LABEL_36:
    v70 = *(a3 + 8);
    if (v32 < v70)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_138;
      }

      if (v32 - v31 < v147)
      {
        v71 = v31 + v147;
        if (__OFADD__(v31, v147))
        {
          goto LABEL_140;
        }

        if (v71 >= v70)
        {
          v71 = *(a3 + 8);
        }

        if (v71 < v31)
        {
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (v32 != v71)
        {
          break;
        }
      }
    }

LABEL_59:
    if (v32 < v31)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v93 = a3;
    if ((result & 1) == 0)
    {
      result = sub_21C86467C(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v95 = *(v29 + 16);
    v94 = *(v29 + 24);
    a3 = v95 + 1;
    if (v95 >= v94 >> 1)
    {
      result = sub_21C86467C((v94 > 1), v95 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = a3;
    v96 = v29 + 16 * v95;
    *(v96 + 32) = v31;
    *(v96 + 40) = v32;
    v162 = v32;
    v32 = *v154;
    if (!*v154)
    {
      goto LABEL_147;
    }

    if (v95)
    {
      while (1)
      {
        v97 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v98 = *(v29 + 32);
          v99 = *(v29 + 40);
          v108 = __OFSUB__(v99, v98);
          v100 = v99 - v98;
          v101 = v108;
LABEL_79:
          if (v101)
          {
            goto LABEL_126;
          }

          v114 = (v29 + 16 * a3);
          v116 = *v114;
          v115 = v114[1];
          v117 = __OFSUB__(v115, v116);
          v118 = v115 - v116;
          v119 = v117;
          if (v117)
          {
            goto LABEL_129;
          }

          v120 = (v29 + 32 + 16 * v97);
          v122 = *v120;
          v121 = v120[1];
          v108 = __OFSUB__(v121, v122);
          v123 = v121 - v122;
          if (v108)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v118, v123))
          {
            goto LABEL_133;
          }

          if (v118 + v123 >= v100)
          {
            if (v100 < v123)
            {
              v97 = a3 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v124 = (v29 + 16 * a3);
        v126 = *v124;
        v125 = v124[1];
        v108 = __OFSUB__(v125, v126);
        v118 = v125 - v126;
        v119 = v108;
LABEL_93:
        if (v119)
        {
          goto LABEL_128;
        }

        v127 = v29 + 16 * v97;
        v129 = *(v127 + 32);
        v128 = *(v127 + 40);
        v108 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v108)
        {
          goto LABEL_131;
        }

        if (v130 < v118)
        {
          goto LABEL_3;
        }

LABEL_100:
        v135 = v97 - 1;
        if (v97 - 1 >= a3)
        {
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
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v93)
        {
          goto LABEL_144;
        }

        v136 = v29;
        v137 = v29 + 32;
        v29 = *(v29 + 32 + 16 * v135);
        a3 = *(v137 + 16 * v97 + 8);
        sub_21C863F14(*v93 + *(v30 + 72) * v29, *v93 + *(v30 + 72) * *(v137 + 16 * v97), *v93 + *(v30 + 72) * a3, v32);
        if (v5)
        {
        }

        if (a3 < v29)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v136 = sub_21C864538(v136);
        }

        if (v135 >= *(v136 + 2))
        {
          goto LABEL_123;
        }

        v138 = &v136[16 * v135];
        *(v138 + 4) = v29;
        *(v138 + 5) = a3;
        v169 = v136;
        result = sub_21C8644AC(v97);
        v29 = v169;
        a3 = *(v169 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v102 = v29 + 32 + 16 * a3;
      v103 = *(v102 - 64);
      v104 = *(v102 - 56);
      v108 = __OFSUB__(v104, v103);
      v105 = v104 - v103;
      if (v108)
      {
        goto LABEL_124;
      }

      v107 = *(v102 - 48);
      v106 = *(v102 - 40);
      v108 = __OFSUB__(v106, v107);
      v100 = v106 - v107;
      v101 = v108;
      if (v108)
      {
        goto LABEL_125;
      }

      v109 = (v29 + 16 * a3);
      v111 = *v109;
      v110 = v109[1];
      v108 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if (v108)
      {
        goto LABEL_127;
      }

      v108 = __OFADD__(v100, v112);
      v113 = v100 + v112;
      if (v108)
      {
        goto LABEL_130;
      }

      if (v113 >= v105)
      {
        v131 = (v29 + 32 + 16 * v97);
        v133 = *v131;
        v132 = v131[1];
        v108 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v108)
        {
          goto LABEL_134;
        }

        if (v100 < v134)
        {
          v97 = a3 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v93;
    v27 = v93[1];
    v28 = v162;
    v17 = v168;
    if (v162 >= v27)
    {
      goto LABEL_110;
    }
  }

  v149 = v29;
  v150 = v5;
  v72 = *a3;
  v73 = *(v30 + 72);
  v74 = *a3 + v73 * (v32 - 1);
  v75 = v31;
  v76 = -v73;
  v151 = v75;
  v77 = v75 - v32;
  v165 = v72;
  v156 = v73;
  v78 = v72 + v32 * v73;
  v79 = v146;
  v157 = v71;
  while (2)
  {
    v161 = v74;
    v162 = v32;
    v159 = v78;
    v160 = v77;
    v80 = v78;
LABEL_48:
    sub_21C84BF7C(v80, v17);
    sub_21C84BF7C(v74, v79);
    v81 = *(v17 + 2);
    v82 = *(v17 + 3);
    v83 = sub_21CB85634();
    v85 = v84;
    v86 = *(v79 + 16);
    v87 = *(v79 + 24);
    if (v83 == sub_21CB85634() && v85 == v88)
    {

      sub_21C864EF0(v79);
      sub_21C864EF0(v17);
LABEL_46:
      v32 = v162 + 1;
      v74 = v161 + v156;
      v77 = v160 - 1;
      v78 = v159 + v156;
      if (v162 + 1 != v157)
      {
        continue;
      }

      v32 = v157;
      v29 = v149;
      v5 = v150;
      a3 = v155;
      v30 = v148;
      v31 = v151;
      goto LABEL_59;
    }

    break;
  }

  v90 = sub_21CB86344();

  sub_21C864EF0(v79);
  result = sub_21C864EF0(v17);
  if ((v90 & 1) == 0)
  {
    v17 = v168;
    goto LABEL_46;
  }

  if (v165)
  {
    v91 = v166;
    sub_21C6F0E30(v80, v166);
    swift_arrayInitWithTakeFrontToBack();
    sub_21C6F0E30(v91, v74);
    v74 += v76;
    v80 += v76;
    v92 = __CFADD__(v77++, 1);
    v17 = v168;
    if (v92)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

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
  return result;
}

uint64_t sub_21C863F14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = a4;
  v68 = type metadata accessor for PMWiFiNetwork();
  v7 = *(*(v68 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v68);
  v67 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v66 = &v62 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v62 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v20 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v19 != -1)
  {
    v21 = (a2 - a1) / v19;
    v71 = a1;
    v22 = v64;
    v70 = v64;
    if (v21 < v20 / v19)
    {
      v23 = v21 * v19;
      if (v64 < a1 || a1 + v23 <= v64)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v64 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v22 = v64;
LABEL_17:
      v67 = v22 + v23;
      v69 = v22 + v23;
      if (v23 >= 1 && a2 < a3)
      {
        v65 = a3;
        while (1)
        {
          v26 = v19;
          v27 = a2;
          sub_21C84BF7C(a2, v17);
          sub_21C84BF7C(v22, v14);
          v28 = *(v17 + 2);
          v29 = *(v17 + 3);
          v30 = sub_21CB85634();
          v32 = v31;
          v33 = *(v14 + 2);
          v34 = *(v14 + 3);
          if (v30 == sub_21CB85634() && v32 == v35)
          {
            break;
          }

          v37 = sub_21CB86344();

          sub_21C864EF0(v14);
          sub_21C864EF0(v17);
          if ((v37 & 1) == 0)
          {
            goto LABEL_32;
          }

          v19 = v26;
          a2 += v26;
          if (a1 < v27 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v65;
          }

          else
          {
            v38 = v65;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

LABEL_38:
          a1 += v19;
          v71 = a1;
          if (v22 >= v67 || a2 >= v38)
          {
            goto LABEL_71;
          }
        }

        sub_21C864EF0(v14);
        sub_21C864EF0(v17);
LABEL_32:
        v19 = v26;
        v39 = v22;
        v22 += v26;
        if (a1 < v39 || a1 >= v22)
        {
          swift_arrayInitWithTakeFrontToBack();
          v38 = v65;
        }

        else
        {
          v38 = v65;
          if (a1 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v70 = v22;
        goto LABEL_38;
      }

      goto LABEL_71;
    }

    v24 = v20 / v19 * v19;
    if (v64 < a2 || a2 + v24 <= v64)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v64 == a2)
      {
LABEL_44:
        v40 = v22 + v24;
        if (v24 >= 1)
        {
          v41 = -v19;
          v42 = v22 + v24;
          do
          {
            v62 = v40;
            v43 = a2;
            v44 = a2 + v41;
            v45 = v40;
            v65 = v43;
            while (1)
            {
              if (v43 <= a1)
              {
                v71 = v43;
                v40 = v62;
                goto LABEL_70;
              }

              v46 = a3;
              v63 = v45;
              v47 = v41;
              v48 = v42 + v41;
              v49 = v66;
              sub_21C84BF7C(v42 + v41, v66);
              v50 = v44;
              v51 = v67;
              sub_21C84BF7C(v44, v67);
              v52 = *(v49 + 16);
              v53 = *(v49 + 24);
              v54 = sub_21CB85634();
              v56 = v55;
              v57 = *(v51 + 16);
              v58 = *(v51 + 24);
              v60 = v54 == sub_21CB85634() && v56 == v59;
              v61 = v60 ? 0 : sub_21CB86344();

              a3 = v46 + v47;
              sub_21C864EF0(v67);
              sub_21C864EF0(v66);
              if (v61)
              {
                break;
              }

              v45 = v48;
              v44 = v50;
              if (v46 < v42 || a3 >= v42)
              {
                swift_arrayInitWithTakeFrontToBack();
                v41 = v47;
              }

              else
              {
                v41 = v47;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v42 = v48;
              v43 = v65;
              if (v48 <= v64)
              {
                v40 = v48;
                v71 = v65;
                goto LABEL_70;
              }
            }

            a2 = v50;
            if (v46 < v65 || a3 >= v65)
            {
              swift_arrayInitWithTakeFrontToBack();
              v41 = v47;
            }

            else
            {
              v41 = v47;
              if (v46 != v65)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v63;
          }

          while (v42 > v64);
        }

        v71 = a2;
LABEL_70:
        v69 = v40;
LABEL_71:
        sub_21C864594(&v71, &v70, &v69, type metadata accessor for PMWiFiNetwork);
        return 1;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v64;
    goto LABEL_44;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_21C8644AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21C864538(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21C864594(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_21C86467C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB0B8, &qword_21CBAA1F0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_21C864780(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21CB4BC20(v12, v13, &v14);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21C8648B8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21CB4BAE4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21C864A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiNetwork();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEE690, &unk_21CBAA270);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_21C6EF0A0(a1, &v23 - v15);
  sub_21C6EF0A0(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_21C6EF0A0(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      sub_21C6F0E30(&v16[v18], v8);
      v21 = _s17PasswordManagerUI13PMWiFiNetworkV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_21C864EF0(v8);
      sub_21C864EF0(v12);
      sub_21C6EA794(v16, &qword_27CDEE678, &unk_21CBBA210);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    sub_21C864EF0(v12);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v16, qword_27CDEE690, &unk_21CBAA270);
    v20 = 1;
    return v20 & 1;
  }

  sub_21C6EA794(v16, &qword_27CDEE678, &unk_21CBBA210);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21C864C90(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v3 = v2;
  v4 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated);
  v5 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectionUpdated + 8);
  *v4 = a1;
  v4[1] = a2;

  swift_getKeyPath();
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v7 = *v4;
  v6 = v4[1];
  swift_getKeyPath();

  sub_21CB810D4();

  v8 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

  v7(v9);
}

uint64_t sub_21C864DD0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_21C864DFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_21C864E9C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks) = *(v0 + 24);

  return sub_21C8602F8();
}

uint64_t sub_21C864EF0(uint64_t a1)
{
  v2 = type metadata accessor for PMWiFiNetwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C864F4C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344() & 1;
  }
}

uint64_t sub_21C864FC4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;

  return sub_21C8602F8();
}

uint64_t keypath_set_39Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = *a2;

  return sub_21C8617B8(v10, a5, a6);
}

uint64_t sub_21C8650DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_21C86516C(uint64_t a1)
{
  type metadata accessor for PMAccount(319);
  if (v2 <= 0x3F)
  {
    sub_21C71ED98();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21C86520C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_21CB85C04() - 8);
  v5 = *(v4 + 80);
  v42 = (v5 + 40) & ~v5;
  v41 = *(v4 + 84);
  v40 = *(v4 + 64);
  v6 = *(sub_21CB85BB4() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 84);
  v9 = *(v6 + 64);
  v10 = *(sub_21CB85C44() - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 84);
  v13 = *(v10 + 64);
  v14 = *(sub_21CB85B74() - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 64);
  v17 = *(sub_21CB80DD4() - 8);
  v18 = *(*(a3 + 16) - 8);
  v19 = *(v18 + 84);
  v20 = *(v17 + 80);
  v21 = *(v18 + 80);
  if (v19 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = *(v18 + 84);
  }

  if (v41)
  {
    v23 = v40;
  }

  else
  {
    v23 = v40 + 1;
  }

  if (v8)
  {
    v24 = v9;
  }

  else
  {
    v24 = v9 + 1;
  }

  if (v12)
  {
    v25 = v13;
  }

  else
  {
    v25 = v13 + 1;
  }

  v26 = ((v11 + 16 + ((v16 + ((v15 + 48) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + v25;
  if (v26 <= ((((v42 + v23 + v7) & ~v7) + v24 + v11) & ~v11) + v25)
  {
    v26 = ((((v42 + v23 + v7) & ~v7) + v24 + v11) & ~v11) + v25;
  }

  if (*(v17 + 84))
  {
    v27 = *(v17 + 64);
  }

  else
  {
    v27 = *(v17 + 64) + 1;
  }

  v28 = ((v11 + 16 + ((v23 + ((v24 + v5 + ((v7 + ((((v20 + ((((((v27 + ((v20 + 64) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20) + v27) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7)) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + v25;
  if (v28 <= 8)
  {
    v28 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v29 = (((v26 + (((v7 | v5 | v11 | v15) & 0xF8 ^ 0x1F8) & ((v7 | v5 | v11 | v15) + 16)) + (v7 | v5 | v11 | v20 | 7) + 1) & ~(v7 | v5 | v11 | v20 | 7)) + v28 + 8) & 0xFFFFFFFFFFFFFFF8;
  v30 = v21 + 17;
  if (a2 <= v22)
  {
    goto LABEL_42;
  }

  v31 = ((v30 + ((v29 + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + *(v18 + 64);
  v32 = 8 * v31;
  if (v31 <= 3)
  {
    v35 = ((a2 - v22 + ~(-1 << v32)) >> v32) + 1;
    if (HIWORD(v35))
    {
      v33 = *(a1 + v31);
      if (!v33)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    if (v35 > 0xFF)
    {
      v33 = *(a1 + v31);
      if (!*(a1 + v31))
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    if (v35 < 2)
    {
LABEL_42:
      if ((v19 & 0x80000000) != 0)
      {
        v38 = *(v18 + 48);

        return v38((v30 + ((a1 + v29 + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21);
      }

      else
      {
        v37 = *(a1 + 1);
        if (v37 >= 0xFFFFFFFF)
        {
          LODWORD(v37) = -1;
        }

        return (v37 + 1);
      }
    }
  }

  v33 = *(a1 + v31);
  if (!*(a1 + v31))
  {
    goto LABEL_42;
  }

LABEL_31:
  v36 = (v33 - 1) << v32;
  if (v31 > 3)
  {
    v36 = 0;
  }

  if (v31)
  {
    if (v31 > 3)
    {
      LODWORD(v31) = 4;
    }

    if (v31 > 2)
    {
      if (v31 == 3)
      {
        LODWORD(v31) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v31) = *a1;
      }
    }

    else if (v31 == 1)
    {
      LODWORD(v31) = *a1;
    }

    else
    {
      LODWORD(v31) = *a1;
    }
  }

  return v22 + (v31 | v36) + 1;
}

void sub_21C8656DC(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_21CB85C04() - 8);
  v6 = *(v5 + 80);
  v45 = (v6 + 40) & ~v6;
  v44 = *(v5 + 84);
  v43 = *(v5 + 64);
  v7 = *(sub_21CB85BB4() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 84);
  v10 = *(v7 + 64);
  v11 = *(sub_21CB85C44() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 84);
  v14 = *(v11 + 64);
  v15 = *(sub_21CB85B74() - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(sub_21CB80DD4() - 8);
  v19 = *(*(a4 + 16) - 8);
  v20 = *(v19 + 84);
  v21 = *(v18 + 80);
  v22 = *(v18 + 84);
  v23 = *(v18 + 64);
  v24 = *(v19 + 80);
  if (v20 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = *(v19 + 84);
  }

  v26 = v43;
  if (!v44)
  {
    v26 = v43 + 1;
  }

  if (v9)
  {
    v27 = v10;
  }

  else
  {
    v27 = v10 + 1;
  }

  if (v13)
  {
    v28 = v14;
  }

  else
  {
    v28 = v14 + 1;
  }

  v29 = ((v12 + 16 + ((v17 + ((v16 + 48) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + v28;
  if (v29 <= ((((v45 + v26 + v8) & ~v8) + v27 + v12) & ~v12) + v28)
  {
    v29 = ((((v45 + v26 + v8) & ~v8) + v27 + v12) & ~v12) + v28;
  }

  if (!v22)
  {
    ++v23;
  }

  v30 = ((v12 + 16 + ((v26 + ((v27 + v6 + ((v8 + ((((v21 + ((((((v23 + ((v21 + 64) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v21) + v23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + v28;
  if (v30 <= 8)
  {
    v30 = 8;
  }

  v31 = v30 + ((v29 + (((v8 | v6 | v12 | v16) & 0xF8 ^ 0x1F8) & ((v8 | v6 | v12 | v16) + 16)) + (v8 | v6 | v12 | v21 | 7) + 1) & ~(v8 | v6 | v12 | v21 | 7));
  v32 = (v31 + 8) & 0xFFFFFFFFFFFFFFF8;
  v33 = ((v24 + 17 + ((v32 + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v24) + *(v19 + 64);
  if (a3 <= v25)
  {
    v35 = 0;
    v34 = a1;
  }

  else
  {
    v34 = a1;
    if (v33 <= 3)
    {
      v38 = ((a3 - v25 + ~(-1 << (8 * v33))) >> (8 * v33)) + 1;
      if (HIWORD(v38))
      {
        v35 = 4;
      }

      else
      {
        if (v38 < 0x100)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v38 >= 2)
        {
          v35 = v39;
        }

        else
        {
          v35 = 0;
        }
      }
    }

    else
    {
      v35 = 1;
    }
  }

  if (v25 < a2)
  {
    v36 = ~v25 + a2;
    if (v33 < 4)
    {
      v37 = (v36 >> (8 * v33)) + 1;
      if (v33)
      {
        v40 = v36 & ~(-1 << (8 * v33));
        bzero(v34, v33);
        if (v33 != 3)
        {
          if (v33 == 2)
          {
            *v34 = v40;
            if (v35 > 1)
            {
LABEL_61:
              if (v35 == 2)
              {
                *(v34 + v33) = v37;
              }

              else
              {
                *(v34 + v33) = v37;
              }

              return;
            }
          }

          else
          {
            *v34 = v36;
            if (v35 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *v34 = v40;
        *(v34 + 2) = BYTE2(v40);
      }

      if (v35 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(v34, v33);
      *v34 = v36;
      v37 = 1;
      if (v35 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v35)
    {
      *(v34 + v33) = v37;
    }

    return;
  }

  if (v35 > 1)
  {
    if (v35 != 2)
    {
      *(v34 + v33) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(v34 + v33) = 0;
  }

  else if (v35)
  {
    *(v34 + v33) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if ((v20 & 0x80000000) != 0)
  {
    v41 = *(v19 + 56);

    v41((v24 + 17 + ((v34 + v32 + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v24, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    v42 = (v31 + 8) & 0xFFFFFFF8;
    if (v42 != -32)
    {
      bzero(v34, (v42 + 32));
      *v34 = a2 & 0x7FFFFFFF;
    }
  }

  else
  {
    *(v34 + 1) = a2 - 1;
  }
}

unint64_t sub_21C865CB0()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [objc_opt_self() sharedManager];
  v10 = [v9 isAirDropPasswordsAvailable];

  if (!v10)
  {
    return 0;
  }

  v11 = type metadata accessor for PMAccount(0);
  sub_21C7B7408(v0 + *(v11 + 24), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80EB24(v8, v4);
    v12 = v4[*(v1 + 52)];
    sub_21C866D44(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v13 = *v8;
    v12 = [*v8 isOneTimeSharable];
  }

  return v12;
}

uint64_t sub_21C865E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = sub_21CB84DF4();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v30 = &v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  v13 = sub_21CB828F4();
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  MEMORY[0x28223BE20](v13);
  v29 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v31 = &v29 - v18;
  (*(v5 + 16))(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v17);
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v9;
  (*(v5 + 32))(v20 + v19, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v35 = v8;
  v36 = v9;
  v37 = v3;
  v21 = v30;
  sub_21CB84DA4();
  sub_21C865CB0();
  WitnessTable = swift_getWitnessTable();
  v23 = v29;
  sub_21CB848D4();
  (*(v32 + 8))(v21, v10);
  v24 = sub_21C866BD4();
  v38 = WitnessTable;
  v39 = v24;
  v25 = swift_getWitnessTable();
  v26 = v31;
  sub_21C72BE10(v23, v13, v25);
  v27 = *(v33 + 8);
  v27(v23, v13);
  sub_21C72BE10(v26, v13, v25);
  return (v27)(v26, v13);
}

uint64_t sub_21C8661E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAirDropAccountButton();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_21CB858E4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  sub_21CB858B4();
  v16 = sub_21CB858A4();
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v7 + 32))(&v18[v17], v10, v6);
  sub_21C822ECC(0, 0, v14, &unk_21CBAA300, v18);
}

uint64_t sub_21C8663E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_21CB81024();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for PMAccount.Storage(0);
  v6[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = sub_21CB858B4();
  v6[14] = sub_21CB858A4();

  return MEMORY[0x2822009F8](sub_21C8664EC, 0, 0);
}

uint64_t sub_21C8664EC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[5];
  v4 = type metadata accessor for PMAccount(0);
  sub_21C7B7408(v3 + *(v4 + 24), v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C866D44(v6, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v7 = *v6;
    [*v6 credentialTypes];
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v11 = v0[5];
  sub_21CB81014();
  sub_21CB81004();
  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21CBA0690;
  v13 = PMAccount.effectiveTitle.getter();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21C7C0050();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = sub_21CB85594();
  v18 = v17;

  v0[15] = v18;
  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_21C866714;

  return (sub_21CA8A084)(v16, v18);
}

uint64_t sub_21C866714()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v14 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_21C866948;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v8 = v2[14];
    v7 = v2[15];
    v9 = v2[13];

    v10 = sub_21CB85874();
    v12 = v11;
    v4 = sub_21C866858;
    v5 = v10;
    v6 = v12;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21C866858()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);

  v7 = (v6 + *(type metadata accessor for PMAirDropAccountButton() + 36));
  v8 = *v7;
  v9 = v7[1];
  LOBYTE(v7) = *(v7 + 16);
  *(v0 + 16) = v8;
  *(v0 + 24) = v9;
  *(v0 + 32) = v7;
  *(v0 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F34();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21C866948()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v5 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C8669CC, v5, v4);
}

uint64_t sub_21C8669CC()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_21C866A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAirDropAccountButton();
  sub_21C72BE10(a1 + *(v10 + 40), a2, a3);
  sub_21C72BE10(v9, a2, a3);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_21C866B44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for PMAirDropAccountButton() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C8661E0(v4, v1, v2);
}

unint64_t sub_21C866BD4()
{
  result = qword_27CDEBC80;
  if (!qword_27CDEBC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC80);
  }

  return result;
}

uint64_t sub_21C866C38(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for PMAirDropAccountButton() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21C702EFC;

  return sub_21C8663E0(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_21C866D44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C866DB8()
{
  result = qword_27CDEE718[0];
  if (!qword_27CDEE718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDEE718);
  }

  return result;
}

uint64_t sub_21C866E0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_21C6EDBAC(v2, &v16 - v11, &qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21C728F30(v12, a1);
  }

  v14 = *v12;
  sub_21CB85B04();
  v15 = sub_21CB83C94();
  sub_21CB81C14();

  sub_21CB82F74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21C866FDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x7472656C61;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0x800000021CB89F80;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x7472656C61;
  }

  if (*a2)
  {
    v7 = 0x800000021CB89F80;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21CB86344();
  }

  return v9 & 1;
}

uint64_t sub_21C867084()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

uint64_t sub_21C867108()
{
  *v0;
  sub_21CB854C4();
}

uint64_t sub_21C867178()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

uint64_t sub_21C8671F8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21CB86244();

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

void sub_21C867258(unint64_t *a1@<X8>)
{
  v2 = 0x800000021CB89F80;
  v3 = 0x7472656C61;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_21C867298(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_21CB83834() - 8);
  v7 = *(*(a3 + 32) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (*(v6 + 84))
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = *(v6 + 64) + 1;
  }

  v12 = 8;
  if (v11 > 8)
  {
    v12 = v11;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (!v8)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_38;
  }

  v15 = ((((v14 + ((v13 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v10 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_38;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v15)) == 0)
  {
LABEL_38:
    v23 = (a1 + v12 + 8) & 0xFFFFFFFFFFFFFFF8;
    if ((v9 & 0x80000000) != 0)
    {
      v25 = (*(*(*(a3 + 32) - 8) + 48))((((v23 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 18) & ~v13);
      if (v25 >= 2)
      {
        return v25 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v24 = *(v23 + 8);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    LODWORD(v16) = *a1;
  }

  return v10 + (v16 | v22) + 1;
}

void sub_21C8674AC(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_21CB83834() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(*(a4 + 32) - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  v15 = *(v12 + 80);
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14;
  }

  if (v10)
  {
    v17 = v11;
  }

  else
  {
    v17 = v11 + 1;
  }

  if (v17 <= 8)
  {
    v17 = 8;
  }

  if (v13)
  {
    v18 = *(v12 + 64);
  }

  else
  {
    v18 = *(v12 + 64) + 1;
  }

  v19 = ((((((v15 + (((v17 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v15) + v18) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    if (((((((v15 + (((v17 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 18) & ~v15) + v18) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = a3 - v16 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v8 = v21;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((((((v15 + (((v17 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 18) & ~v15) + v18) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v16;
    }

    else
    {
      v22 = 1;
    }

    if (((((((v15 + (((v17 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 18) & ~v15) + v18) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v16 + a2;
      bzero(a1, ((((((v15 + (((v17 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v15) + v18) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v23;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v19) = v22;
      }

      else
      {
        *(a1 + v19) = v22;
      }
    }

    else if (v8)
    {
      *(a1 + v19) = v22;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *(a1 + v19) = 0;
LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!v8)
  {
    goto LABEL_43;
  }

  *(a1 + v19) = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  v24 = ((a1 + v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  if ((v14 & 0x80000000) != 0)
  {
    v25 = ((((v24 + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 18) & ~v15);
    if (v14 >= a2)
    {
      v29 = *(v12 + 56);

      v29((((v24 + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 18) & ~v15, a2 + 1);
    }

    else
    {
      if (v18 <= 3)
      {
        v26 = ~(-1 << (8 * v18));
      }

      else
      {
        v26 = -1;
      }

      if (v18)
      {
        v27 = v26 & (~v14 + a2);
        if (v18 <= 3)
        {
          v28 = v18;
        }

        else
        {
          v28 = 4;
        }

        bzero(v25, v18);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *v25 = v27;
            v25[2] = BYTE2(v27);
          }

          else
          {
            *v25 = v27;
          }
        }

        else if (v28 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v24 = a2 & 0x7FFFFFFF;
    v24[1] = 0;
  }

  else
  {
    v24[1] = a2 - 1;
  }
}

unint64_t sub_21C8677A0()
{
  result = qword_27CDEE7A8;
  if (!qword_27CDEE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE7A8);
  }

  return result;
}

uint64_t sub_21C867804@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PMAppAccountsListModel(0);
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB850A4();
  v2 = type metadata accessor for PMAppAccountsList();
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v5 = v2[7];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v7 = (a1 + v5);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v21);

  type metadata accessor for PMGroupsStore();
  sub_21C87E764(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v8 = sub_21CB82674();
  v10 = v9;

  *v7 = v8;
  v7[1] = v10;
  v11 = (a1 + v2[8]);
  v12 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C704000(v12, v21);

  type metadata accessor for PMTipsStore();
  sub_21C87E764(&qword_27CDED870, type metadata accessor for PMTipsStore);
  v13 = sub_21CB82674();
  v15 = v14;

  *v11 = v13;
  v11[1] = v15;
  v16 = v2[9];
  *(a1 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v17 = v2[10];
  *(a1 + v17) = swift_getKeyPath();
  v18 = a1 + v2[11];
  type metadata accessor for PMGlobalAnimationNamespaceContainer();
  sub_21C87E764(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer);
  result = sub_21CB82084();
  *v18 = result;
  *(v18 + 8) = v20 & 1;
  *(a1 + v2[12]) = 0;
  return result;
}

uint64_t sub_21C867B48(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v65 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v63 - v12;
  v13 = *(a2 + 16);
  if (!v13)
  {
    return a1;
  }

  v14 = (a2 + 32);
  v63 = type metadata accessor for PMGroupMemberImageModel();
  v64 = v10;
  while (1)
  {
    v70 = a1;
    v67 = v14;
    v68 = v13;
    v17 = v14[5];
    v82 = v14[4];
    v83 = v17;
    v84 = v14[6];
    v18 = v14[1];
    v78 = *v14;
    v79 = v18;
    v19 = v14[3];
    v80 = v14[2];
    v81 = v19;
    v20 = *(v65 + 64);
    v21 = *(v63 + 48);
    v22 = *(v63 + 52);
    v23 = swift_allocObject();
    *(v23 + 144) = 0;

    sub_21C7A33F0(&v78, v77);
    sub_21CB81104();
    v24 = v80;
    *(v23 + 72) = v81;
    v25 = v83;
    *(v23 + 88) = v82;
    *(v23 + 104) = v25;
    *(v23 + 120) = v84;
    v26 = v79;
    *(v23 + 24) = v78;
    *(v23 + 40) = v26;
    *(v23 + 16) = v20;
    *(v23 + 56) = v24;
    *(v23 + 136) = a4;
    if (*(v23 + 144))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v63 - 2) = v23;
      *(&v63 - 1) = 0;
      v72 = v23;

      sub_21C7A33F0(&v78, v77);
      sub_21C87E764(&qword_27CDEECF8, type metadata accessor for PMGroupMemberImageModel);
      v28 = v66;
      sub_21CB810C4();
      v66 = v28;
    }

    else
    {

      sub_21C7A33F0(&v78, v77);
    }

    v29 = sub_21CB858E4();
    v30 = *(v29 - 8);
    v31 = v71;
    (*(v30 + 56))(v71, 1, 1, v29);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = v23;
    *(v32 + 40) = v20;
    v33 = v83;
    *(v32 + 112) = v82;
    *(v32 + 128) = v33;
    *(v32 + 144) = v84;
    v34 = v79;
    *(v32 + 48) = v78;
    *(v32 + 64) = v34;
    v35 = v81;
    *(v32 + 80) = v80;
    *(v32 + 96) = v35;
    *(v32 + 160) = a4;
    sub_21C6EDBAC(v31, v10, &qword_27CDF1D50, &qword_21CBA0C00);
    v36 = (*(v30 + 48))(v10, 1, v29);
    v69 = v20;

    sub_21C7A33F0(&v78, v77);

    if (v36 == 1)
    {
      sub_21C6EA794(v10, &qword_27CDF1D50, &qword_21CBA0C00);
    }

    else
    {
      sub_21CB858D4();
      (*(v30 + 8))(v10, v29);
    }

    v37 = *(v32 + 16);
    v38 = *(v32 + 24);
    swift_unknownObjectRetain();

    if (v37)
    {
      swift_getObjectType();
      v39 = sub_21CB85874();
      v41 = v40;
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    sub_21C6EA794(v71, &qword_27CDF1D50, &qword_21CBA0C00);
    v42 = swift_allocObject();
    *(v42 + 16) = &unk_21CBAAE68;
    *(v42 + 24) = v32;
    if (v41 | v39)
    {
      v73 = 0;
      v74 = 0;
      v75 = v39;
      v76 = v41;
    }

    v10 = v64;
    swift_task_create();

    v43 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v43;
    v45 = sub_21CB10D94(&v78);
    v47 = v43[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      break;
    }

    v51 = v46;
    if (v43[3] < v50)
    {
      sub_21C8D399C(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_21CB10D94(&v78);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_29;
      }

LABEL_21:
      a1 = v77[0];
      if (v51)
      {
        goto LABEL_3;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v61 = v45;
    sub_21C8D6A34();
    v45 = v61;
    a1 = v77[0];
    if (v51)
    {
LABEL_3:
      v15 = a1[7];
      v16 = *(v15 + 8 * v45);
      *(v15 + 8 * v45) = v23;

      sub_21C7A344C(&v78);
      goto LABEL_4;
    }

LABEL_22:
    a1[(v45 >> 6) + 8] |= 1 << v45;
    v53 = (a1[6] + 112 * v45);
    v55 = v79;
    v54 = v80;
    *v53 = v78;
    v53[1] = v55;
    v53[2] = v54;
    v56 = v81;
    v57 = v82;
    v58 = v84;
    v53[5] = v83;
    v53[6] = v58;
    v53[3] = v56;
    v53[4] = v57;
    *(a1[7] + 8 * v45) = v23;
    v59 = a1[2];
    v49 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v49)
    {
      goto LABEL_28;
    }

    a1[2] = v60;
LABEL_4:
    v14 = v67 + 7;
    v13 = v68 - 1;
    if (v68 == 1)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_21CB863B4();
  __break(1u);
  return result;
}

uint64_t sub_21C868188()
{
  v0 = sub_21CB820E4();
  __swift_allocate_value_buffer(v0, qword_27CDEE7B0);
  __swift_project_value_buffer(v0, qword_27CDEE7B0);
  return sub_21CB820B4();
}

uint64_t sub_21C8681EC@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED878, &unk_21CBAA6A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v111 = v100 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED880, &qword_21CBA7C10);
  v5 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v120 = v100 - v6;
  v7 = type metadata accessor for PMAppAccountsList();
  v124 = *(v7 - 8);
  v126 = *(v124 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v128 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v130 = *(v123 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x28223BE20](v123);
  v122 = v100 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7F8, &qword_21CBAA6B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v100 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE800, &qword_21CBAA6B8);
  v125 = *(v15 - 8);
  v16 = *(v125 + 8);
  MEMORY[0x28223BE20](v15);
  v18 = v100 - v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE808, &qword_21CBAA6C0);
  v129 = *(v103 - 8);
  v19 = *(v129 + 64);
  MEMORY[0x28223BE20](v103);
  v116 = (v100 - v20);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE810, &qword_21CBAA6C8);
  v105 = *(v104 - 8);
  v21 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  v117 = v100 - v22;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE818, &qword_21CBAA6D0);
  v107 = *(v106 - 8);
  v23 = *(v107 + 64);
  MEMORY[0x28223BE20](v106);
  v118 = v100 - v24;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE820, &qword_21CBAA6D8);
  v109 = *(v108 - 8);
  v25 = *(v109 + 64);
  MEMORY[0x28223BE20](v108);
  v119 = v100 - v26;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE828, &qword_21CBAA6E0);
  v113 = *(v112 - 8);
  v27 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  v121 = v100 - v28;
  sub_21C8694B8(v1, v14);
  v29 = v1;
  v135 = sub_21C878088();
  v136 = v30;
  v31 = sub_21C87B60C();
  v32 = sub_21C71F3FC();
  v33 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  sub_21C6EA794(v14, &qword_27CDEE7F8, &qword_21CBAA6B0);
  sub_21CB85184();
  v132 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8B8, &qword_21CBAA738);
  v135 = v11;
  v136 = v33;
  v137 = v31;
  v138 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v135 = v15;
  v136 = v33;
  v137 = OpaqueTypeConformance2;
  v138 = v32;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = MEMORY[0x277CE1350];
  v38 = MEMORY[0x277CE1340];
  v39 = v116;
  sub_21CB84974();
  (*(v125 + 1))(v18, v15);
  v131 = v1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8C0, &qword_21CBAA740);
  v135 = v15;
  v136 = v37;
  v137 = v34;
  v138 = OpaqueTypeConformance2;
  v139 = v38;
  v140 = v36;
  v101 = swift_getOpaqueTypeConformance2();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8C8, &qword_21CBAA748);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8D0, &qword_21CBAA750);
  v42 = sub_21C87BB48();
  v135 = v41;
  v136 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  v135 = v40;
  v136 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v103;
  sub_21CB84894();
  (*(v129 + 8))(v39, v45);
  v46 = v122;
  v47 = v123;
  v127 = v29;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v129 = *(v130 + 8);
  v130 += 8;
  (v129)(v46, v47);
  v125 = type metadata accessor for PMAppAccountsList;
  v48 = v128;
  sub_21C87D2B8(v29, v128, type metadata accessor for PMAppAccountsList);
  v124 = *(v124 + 80);
  v49 = (v124 + 16) & ~v124;
  v50 = swift_allocObject();
  v116 = type metadata accessor for PMAppAccountsList;
  sub_21C87BFAC(v48, v50 + v49, type metadata accessor for PMAppAccountsList);
  v100[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE900, &unk_21CBAA790);
  v135 = v45;
  v136 = v102;
  v137 = v101;
  v138 = v44;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = sub_21C87BC40();
  v53 = v104;
  v54 = v117;
  sub_21CB847B4();

  (*(v105 + 8))(v54, v53);
  v55 = v122;
  v56 = v123;
  v57 = v127;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (v129)(v55, v56);
  v100[1] = v133;
  LODWORD(v101) = v134;
  v58 = v128;
  sub_21C87D2B8(v57, v128, v125);
  v115 = v49;
  v59 = swift_allocObject();
  v60 = v116;
  sub_21C87BFAC(v58, v59 + v49, v116);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE910, &qword_21CBAA7C8);
  v135 = v53;
  v136 = v100[0];
  v137 = v51;
  v138 = v52;
  v104 = MEMORY[0x277CDEE28];
  v103 = swift_getOpaqueTypeConformance2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE918, &qword_21CBAA7D0);
  v62 = sub_21CB83994();
  v117 = v62;
  v63 = sub_21C6EADEC(&qword_27CDEE920, &qword_27CDEE918, &qword_21CBAA7D0);
  v135 = v61;
  v136 = v62;
  v137 = v63;
  v138 = MEMORY[0x277CDE2B8];
  v105 = MEMORY[0x277CDEB40];
  v64 = swift_getOpaqueTypeConformance2();
  v65 = v106;
  v66 = v118;
  sub_21CB847B4();

  (*(v107 + 8))(v66, v65);
  v67 = v122;
  v68 = v123;
  v69 = v127;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (v129)(v67, v68);
  v70 = v69;
  v71 = v128;
  sub_21C87D2B8(v70, v128, v125);
  v72 = v115;
  v73 = swift_allocObject();
  sub_21C87BFAC(v71, v73 + v72, v60);
  swift_getKeyPath();
  v74 = v111;
  sub_21CB84F44();

  v75 = swift_allocObject();
  *(v75 + 16) = sub_21C87BD38;
  *(v75 + 24) = v73;
  v107 = _s19IdentifiableGroupIDVMa();

  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE928, &qword_21CBAA828);
  v135 = v65;
  v136 = v102;
  v137 = v103;
  v138 = v64;
  v118 = swift_getOpaqueTypeConformance2();
  v76 = sub_21C87E764(&qword_27CDED9F0, _s19IdentifiableGroupIDVMa);
  v77 = sub_21C87BD58();
  v78 = v108;
  v79 = v119;
  sub_21CB847C4();

  sub_21C6EA794(v74, &qword_27CDED878, &unk_21CBAA6A0);
  sub_21C6EA794(v120, &qword_27CDED880, &qword_21CBA7C10);
  v80 = v78;
  (*(v109 + 8))(v79, v78);
  v81 = v127;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (v129)(v67, v68);
  LODWORD(v120) = v134;
  v82 = v128;
  sub_21C87D2B8(v81, v128, v125);
  v83 = v115;
  v84 = swift_allocObject();
  sub_21C87BFAC(v82, v84 + v83, v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDD0, &qword_21CBB0460);
  v135 = v80;
  v136 = v107;
  v137 = v110;
  v138 = v118;
  v139 = v76;
  v140 = v77;
  swift_getOpaqueTypeConformance2();
  v85 = type metadata accessor for PMGeneratedPasswordsLogView();
  v86 = sub_21C87E764(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
  v135 = v85;
  v136 = v117;
  v137 = v86;
  v138 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v87 = v114;
  v88 = v112;
  v89 = v121;
  sub_21CB847B4();

  (*(v113 + 8))(v89, v88);
  *(v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE940, &qword_21CBAA860) + 36)) = 1;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (v129)(v67, v68);
  v90 = v135;
  v91 = v136;
  v92 = v137;
  v93 = v138;
  v94 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE948, &qword_21CBAA890) + 36));
  *v94 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v95 = type metadata accessor for PMContentListSearchable();
  v96 = v95[5];
  *(v94 + v96) = swift_getKeyPath();
  v97 = v95[6];
  type metadata accessor for PMAppRootNavigationModel();
  sub_21C87E764(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  result = sub_21CB821F4();
  v99 = (v94 + v95[7]);
  *v99 = v90;
  v99[1] = v91;
  v99[2] = v92;
  v99[3] = v93;
  return result;
}

uint64_t sub_21C8694B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  MEMORY[0x28223BE20](v3);
  v95 = &v91 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8B0, &unk_21CBAA728);
  v6 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v106 = &v91 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC8, &qword_21CBAACC8);
  v8 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v101 = &v91 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBD0, &qword_21CBAACD0);
  v97 = *(v102 - 8);
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v102);
  v96 = &v91 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE860, &qword_21CBAA6F8);
  v12 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v103 = &v91 - v13;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBD8, &qword_21CBAACD8);
  v14 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v111 = &v91 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE848, &qword_21CBAA6F0);
  v16 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v91 = (&v91 - v17);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBE0, &unk_21CBAACE0);
  v93 = *(v110 - 8);
  v18 = *(v93 + 64);
  MEMORY[0x28223BE20](v110);
  v92 = &v91 - v19;
  v20 = sub_21CB83834();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v94 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v91 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v104 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v91 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v91 - v36;
  v38 = *(type metadata accessor for PMAppAccountsList() + 36);
  v105 = a1;
  sub_21C728D50(v37);
  (*(v21 + 104))(v34, *MEMORY[0x277CE0558], v20);
  (*(v21 + 56))(v34, 0, 1, v20);
  v39 = *(v25 + 56);
  sub_21C6EDBAC(v37, v28, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v34, &v28[v39], &qword_27CDEC390, &qword_21CBA40E0);
  v40 = *(v21 + 48);
  if (v40(v28, 1, v20) != 1)
  {
    sub_21C6EDBAC(v28, v104, &qword_27CDEC390, &qword_21CBA40E0);
    if (v40(&v28[v39], 1, v20) != 1)
    {
      v47 = v94;
      (*(v21 + 32))(v94, &v28[v39], v20);
      sub_21C87E764(&qword_27CDEE538, MEMORY[0x277CE0570]);
      v48 = v104;
      v49 = sub_21CB85574();
      v50 = *(v21 + 8);
      v50(v47, v20);
      sub_21C6EA794(v34, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v37, &qword_27CDEC390, &qword_21CBA40E0);
      v50(v48, v20);
      sub_21C6EA794(v28, &qword_27CDEC390, &qword_21CBA40E0);
      v43 = v106;
      v44 = v107;
      v42 = v105;
      v45 = &qword_27CDEE000;
      v46 = &qword_27CDEE000;
      if ((v49 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v34, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v37, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v21 + 8))(v104, v20);
    v43 = v106;
LABEL_6:
    sub_21C6EA794(v28, &qword_27CDEE530, &unk_21CBA9D80);
    v44 = v107;
    v45 = &qword_27CDEE000;
    v46 = &qword_27CDEE000;
    goto LABEL_9;
  }

  sub_21C6EA794(v34, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v37, &qword_27CDEC390, &qword_21CBA40E0);
  v41 = v40(&v28[v39], 1, v20);
  v42 = v105;
  v43 = v106;
  if (v41 != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v28, &qword_27CDEC390, &qword_21CBA40E0);
  v44 = v107;
  v45 = &qword_27CDEE000;
  v46 = &qword_27CDEE000;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v51 = v114;
  swift_getKeyPath();
  v52 = v45[488];
  v114 = v51;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v53 = *(v51 + v46[472]);

  v54 = *(v53 + 16);

  if (!v54)
  {
    v82 = sub_21CB85214();
    v83 = v91;
    *v91 = v82;
    *(v83 + 8) = v84;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBE8, &qword_21CBAACF0);
    sub_21C86A2A0(v42, v83 + *(v85 + 44));
    v86 = sub_21C6EADEC(&qword_27CDEE850, &qword_27CDEE848, &qword_21CBAA6F0);
    v87 = v92;
    v88 = v108;
    sub_21CB84294();
    sub_21C6EA794(v83, &qword_27CDEE848, &qword_21CBAA6F0);
    v89 = v93;
    v90 = v110;
    (*(v93 + 16))(v111, v87, v110);
    swift_storeEnumTagMultiPayload();
    v114 = v88;
    v115 = v86;
    swift_getOpaqueTypeConformance2();
    sub_21C87B78C();
    sub_21CB83494();
    return (*(v89 + 8))(v87, v90);
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v55 = v114;
  swift_getKeyPath();
  v56 = v45[488];
  v114 = v55;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v57 = *(v55 + v46[472]);

  v58 = *(v57 + 16);

  if (v58)
  {
    sub_21C86B768(v43);
    v59 = sub_21CB85214();
    v61 = v60;
    v62 = v43 + *(v44 + 36);
    if (sub_21C86C478())
    {
      sub_21CB85084();
      v63 = v114;
      swift_getKeyPath();
      v64 = v45[488];
      v114 = v63;
      sub_21CB810D4();

      v65 = *(v63 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
      v66 = *(v63 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

      v67 = v95;
      sub_21CB83784();

      v69 = v98;
      v68 = v99;
      (*(v98 + 32))(v62, v67, v99);
      v70 = 0;
    }

    else
    {
      v70 = 1;
      v69 = v98;
      v68 = v99;
    }

    (*(v69 + 56))(v62, v70, 1, v68);
    v77 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
    *v77 = v59;
    v77[1] = v61;
    sub_21C6EDBAC(v43, v101, &qword_27CDEE8B0, &unk_21CBAA728);
    swift_storeEnumTagMultiPayload();
    v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE868, &qword_21CBAA700);
    v79 = sub_21C87B854();
    v114 = v78;
    v115 = v79;
    swift_getOpaqueTypeConformance2();
    sub_21C87BA44();
    v76 = v103;
    sub_21CB83494();
    sub_21C6EA794(v43, &qword_27CDEE8B0, &unk_21CBAA728);
  }

  else
  {
    v71 = v96;
    sub_21C86B768(v96);
    v72 = v97;
    v73 = v102;
    (*(v97 + 16))(v101, v71, v102);
    swift_storeEnumTagMultiPayload();
    v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE868, &qword_21CBAA700);
    v75 = sub_21C87B854();
    v114 = v74;
    v115 = v75;
    swift_getOpaqueTypeConformance2();
    sub_21C87BA44();
    v76 = v103;
    sub_21CB83494();
    (*(v72 + 8))(v71, v73);
  }

  sub_21C6EDBAC(v76, v111, &qword_27CDEE860, &qword_21CBAA6F8);
  swift_storeEnumTagMultiPayload();
  v80 = sub_21C6EADEC(&qword_27CDEE850, &qword_27CDEE848, &qword_21CBAA6F0);
  v114 = v108;
  v115 = v80;
  swift_getOpaqueTypeConformance2();
  sub_21C87B78C();
  sub_21CB83494();
  return sub_21C6EA794(v76, &qword_27CDEE860, &qword_21CBAA6F8);
}

uint64_t sub_21C86A2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBF0, &qword_21CBAACF8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBF8, &qword_21CBAAD00);
  v9 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v57 = &v55 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC00, &qword_21CBAAD08);
  v11 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v58 = &v55 - v12;
  v13 = sub_21CB85C44();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC08, &unk_21CBAAD10);
  v18 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v63 = &v55 - v19;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC10, &unk_21CBC2B00);
  v20 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v22 = &v55 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC18, &qword_21CBAAD20);
  v23 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v25 = &v55 - v24;
  v26 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PMEmptyStateDetailView(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v60 = (&v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC20, &qword_21CBAAD28);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v65 = &v55 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v64 = &v55 - v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v67 = a1;
  sub_21CB85084();
  sub_21C87D2B8(v70 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v36, type metadata accessor for PMAppAccountsListModel.Configuration);

  v42 = (*(v14 + 48))(v36, 4, v13);
  if (v42 <= 1)
  {
    if (!v42)
    {
      v45 = *(v14 + 32);
      v55 = v17;
      v45(v17, v36, v13);
      (*(v14 + 16))(v29, v17, v13);
      (*(v14 + 56))(v29, 0, 6, v13);
      v46 = v60;
      sub_21C9E14F8(v29, 1, v60);
      sub_21C87D2B8(v46, v57, type metadata accessor for PMEmptyStateDetailView);
      swift_storeEnumTagMultiPayload();
      sub_21C87E764(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
      v47 = v58;
      sub_21CB83494();
      sub_21C6EDBAC(v47, v63, &qword_27CDEEC00, &qword_21CBAAD08);
      swift_storeEnumTagMultiPayload();
      sub_21C87CAD0();
      sub_21C87CB84();
      v44 = v64;
      sub_21CB83494();
      sub_21C6EA794(v47, &qword_27CDEEC00, &qword_21CBAAD08);
      sub_21C87DFE0(v46, type metadata accessor for PMEmptyStateDetailView);
      (*(v14 + 8))(v55, v13);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v42 == 2)
  {
    (*(v14 + 56))(v29, 2, 6, v13);
    v48 = v60;
    sub_21C9E14F8(v29, 1, v60);
    sub_21C87D2B8(v48, v22, type metadata accessor for PMEmptyStateDetailView);
    goto LABEL_9;
  }

  if (v42 == 3)
  {
LABEL_7:
    (*(v14 + 56))(v29, 1, 6, v13);
    v48 = v60;
    sub_21C9E14F8(v29, 1, v60);
    sub_21C87D2B8(v48, v22, type metadata accessor for PMEmptyStateDetailView);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    sub_21C87E764(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    sub_21CB83494();
    sub_21C6EDBAC(v25, v63, &qword_27CDEEC18, &qword_21CBAAD20);
    swift_storeEnumTagMultiPayload();
    sub_21C87CAD0();
    sub_21C87CB84();
    v44 = v64;
    sub_21CB83494();
    sub_21C6EA794(v25, &qword_27CDEEC18, &qword_21CBAAD20);
    sub_21C87DFE0(v48, type metadata accessor for PMEmptyStateDetailView);
    goto LABEL_10;
  }

  swift_storeEnumTagMultiPayload();
  sub_21C87E764(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
  v43 = v58;
  sub_21CB83494();
  sub_21C6EDBAC(v43, v63, &qword_27CDEEC00, &qword_21CBAAD08);
  swift_storeEnumTagMultiPayload();
  sub_21C87CAD0();
  sub_21C87CB84();
  v44 = v64;
  sub_21CB83494();
  sub_21C6EA794(v43, &qword_27CDEEC00, &qword_21CBAAD08);
LABEL_10:
  *v8 = sub_21CB832E4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC40, &qword_21CBAAD30);
  sub_21C86ACB8(v67, &v8[*(v49 + 44)]);
  v50 = v65;
  sub_21C6EDBAC(v44, v65, &qword_27CDEEC20, &qword_21CBAAD28);
  v51 = v69;
  sub_21C6EDBAC(v8, v69, &qword_27CDEEBF0, &qword_21CBAACF8);
  v52 = v68;
  sub_21C6EDBAC(v50, v68, &qword_27CDEEC20, &qword_21CBAAD28);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC48, &qword_21CBAAD38);
  sub_21C6EDBAC(v51, v52 + *(v53 + 48), &qword_27CDEEBF0, &qword_21CBAACF8);
  sub_21C6EA794(v8, &qword_27CDEEBF0, &qword_21CBAACF8);
  sub_21C6EA794(v44, &qword_27CDEEC20, &qword_21CBAAD28);
  sub_21C6EA794(v51, &qword_27CDEEBF0, &qword_21CBAACF8);
  return sub_21C6EA794(v50, &qword_27CDEEC20, &qword_21CBAAD28);
}

uint64_t sub_21C86ACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC50, &qword_21CBAAD40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC58, &qword_21CBAAD48);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC60, &qword_21CBAAD50);
  sub_21C87CC48();
  sub_21CB83F34();
  sub_21CB85214();
  sub_21CB82AC4();
  (*(v4 + 32))(v15, v7, v3);
  v19 = &v15[*(v9 + 44)];
  v20 = v34;
  *(v19 + 4) = v33;
  *(v19 + 5) = v20;
  *(v19 + 6) = v35;
  v21 = v30;
  *v19 = v29;
  *(v19 + 1) = v21;
  v22 = v32;
  *(v19 + 2) = v31;
  *(v19 + 3) = v22;
  sub_21C716934(v15, v18, &qword_27CDEEC58, &qword_21CBAAD48);
  sub_21C6EDBAC(v18, v12, &qword_27CDEEC58, &qword_21CBAAD48);
  v23 = v27;
  sub_21C6EDBAC(v12, v27, &qword_27CDEEC58, &qword_21CBAAD48);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC80, &qword_21CBAAD60) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_21C6EA794(v18, &qword_27CDEEC58, &qword_21CBAAD48);
  return sub_21C6EA794(v12, &qword_27CDEEC58, &qword_21CBAAD48);
}

uint64_t sub_21C86AF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC88, &qword_21CBAAD68);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for PMSharingGroup();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21CB85C44();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v22 = a1;
  sub_21CB85084();
  v23 = v50;
  swift_getKeyPath();
  v50 = v23;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v24 = *(v23 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v25 = *(v23 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    v42 = v10;
    v27 = v9;
    v28 = v43;
    v29 = v44;
    v30 = v22;
    sub_21CB85084();
    sub_21C87D2B8(v50 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v17, type metadata accessor for PMAppAccountsListModel.Configuration);

    v32 = v45;
    v31 = v46;
    if ((*(v45 + 48))(v17, 4, v46))
    {
      sub_21C87DFE0(v17, type metadata accessor for PMAppAccountsListModel.Configuration);
    }

    else
    {
      (*(v32 + 32))(v21, v17, v31);
      v33 = *(v30 + *(type metadata accessor for PMAppAccountsList() + 28) + 8);
      sub_21CA1D444(v21, v27);
      if ((*(v28 + 48))(v27, 1, v42) != 1)
      {
        sub_21C87BFAC(v27, v13, type metadata accessor for PMSharingGroup);
        sub_21C86B484(v13);
        sub_21C87DFE0(v13, type metadata accessor for PMSharingGroup);
        (*(v32 + 8))(v21, v31);
        v37 = v47;
        v39 = v48;
        v40 = v49;
        (*(v47 + 32))(v49, v29, v48);
        v36 = v39;
        v35 = v40;
        v34 = 0;
        return (*(v37 + 56))(v35, v34, 1, v36);
      }

      (*(v32 + 8))(v21, v31);
      sub_21C6EA794(v27, &qword_27CDF7670, &unk_21CBAA8F0);
    }
  }

  v34 = 1;
  v36 = v48;
  v35 = v49;
  v37 = v47;
  return (*(v37 + 56))(v35, v34, 1, v36);
}

uint64_t sub_21C86B484(uint64_t a1)
{
  v3 = type metadata accessor for PMAppAccountsList();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMSharingGroup();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_21C87D2B8(a1, v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSharingGroup);
  sub_21C87D2B8(v1, v7, type metadata accessor for PMAppAccountsList);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v5 + 80) + v11) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_21C87BFAC(v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11, type metadata accessor for PMSharingGroup);
  sub_21C87BFAC(v7, v13 + v12, type metadata accessor for PMAppAccountsList);
  KeyPath = swift_getKeyPath();
  v27 = 1;
  v26 = 1;
  v25 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 1;
  v21 = sub_21C87CD50;
  v22 = v13;
  v23 = KeyPath;
  v24 = 0;
  v17[1] = 0x756F724774696465;
  v17[2] = 0xE900000000000070;
  v17[3] = 0;
  v15 = *(v1 + *(v4 + 56));
  sub_21CB852C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC70, &qword_21CBAAD58);
  sub_21C6EADEC(&qword_27CDEEC78, &qword_27CDEEC70, &qword_21CBAAD58);
  sub_21CB845E4();
}

uint64_t sub_21C86B768@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v113 = sub_21CB85114();
  v111 = *(v113 - 8);
  v2 = *(v111 + 64);
  MEMORY[0x28223BE20](v113);
  v112 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v110 = &v87 - v5;
  *&v103 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v6 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  *&v104 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v87 - v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v10 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v95 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDCD8, &unk_21CBB0390);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v87 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v87 - v22;
  v24 = type metadata accessor for PMAppAccountsList();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v107 = v27;
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v28;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE878, &qword_21CBAA708);
  v29 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v98 = (&v87 - v30);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE868, &qword_21CBAA700);
  v31 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v115 = &v87 - v32;
  v108 = type metadata accessor for PMAppAccountsList;
  sub_21C87D2B8(v1, v28, type metadata accessor for PMAppAccountsList);
  v106 = *(v25 + 80);
  v33 = (v106 + 16) & ~v106;
  v102 = v33;
  v96 = swift_allocObject();
  v105 = type metadata accessor for PMAppAccountsList;
  sub_21C87BFAC(v28, v96 + v33, type metadata accessor for PMAppAccountsList);
  v93 = v23;
  v92 = v1;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v34 = *(v20 + 8);
  v116 = v20 + 8;
  v117 = v34;
  v91 = v19;
  v34(v23, v19);
  v36 = v128;
  v35 = v129;
  v37 = v130;
  v120 = 0;
  swift_getKeyPath();
  v125 = v36;
  v126 = v35;
  v127 = v37;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v90 = v122;
  v89 = v123;
  v88 = v124;

  sub_21CB85084();
  v87 = v121;
  v38 = v15[11];
  v39 = type metadata accessor for PMAccount(0);
  v40 = *(*(v39 - 8) + 56);
  v41 = v95;
  v40(v95, 1, 1, v39);
  sub_21C6EDBAC(v41, v97, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CB84D44();
  sub_21C6EA794(v41, &unk_27CDEBE60, &unk_21CB9FF40);
  v42 = v15[12];
  v43 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v44 = v100;
  (*(*(v43 - 8) + 56))(v100, 1, 1, v43);
  v40((v44 + *(v103 + 20)), 1, 1, v39);
  sub_21C87D2B8(v44, v104, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  sub_21CB84D44();
  sub_21C87DFE0(v44, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v45 = v15[15];
  v46 = &v18[v15[14]];
  *&v18[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v47 = &v18[v15[16]];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  v48 = v89;
  *v18 = v90;
  *(v18 + 1) = v48;
  *(v18 + 4) = v88;
  v49 = &v18[v15[13]];
  v50 = v87;
  *v49 = sub_21C87D2B4;
  *(v49 + 1) = v50;
  *v46 = 0;
  *(v46 + 1) = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED00, &qword_21CBAAED0);
  v52 = v98;
  sub_21C6EDBAC(v18, v98 + *(v51 + 36), &qword_27CDEDCD8, &unk_21CBB0390);
  v53 = v96;
  *v52 = sub_21C87D208;
  v52[1] = v53;
  sub_21C6EA794(v18, &qword_27CDEDCD8, &unk_21CBB0390);
  v54 = v93;
  v55 = v91;
  v56 = v92;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v117(v54, v55);
  v57 = v128;
  v58 = v129;
  v59 = v130;
  v119 = 0;
  swift_getKeyPath();
  v125 = v57;
  v126 = v58;
  v127 = v59;
  sub_21CB84F44();

  v104 = v122;
  v103 = v123;
  v60 = v124;

  v61 = v101;
  sub_21C87D2B8(v56, v101, v108);
  v62 = v102;
  v63 = swift_allocObject();
  sub_21C87BFAC(v61, v63 + v62, v105);
  v64 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED08, &qword_21CBAAEE8) + 36);
  v65 = v103;
  *v64 = v104;
  *(v64 + 1) = v65;
  *(v64 + 4) = v60;
  *(v64 + 5) = &unk_21CBAAEE0;
  *(v64 + 6) = v63;
  sub_21CB85084();
  v66 = v122;
  v67 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE890, &qword_21CBAA710);
  sub_21C87D2B8(v66 + v67, v52 + *(v68 + 52), type metadata accessor for PMAppAccountsListModel.Configuration);

  KeyPath = swift_getKeyPath();
  v70 = v52 + *(v109 + 36);
  *v70 = KeyPath;
  v70[8] = 0;
  sub_21CB85084();
  v71 = v122;
  type metadata accessor for PMAppAccountsListModel(0);
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB81124();
  *&v122 = v71;
  sub_21C87B960();
  v72 = v115;
  sub_21CB84394();

  sub_21C6EA794(v52, &qword_27CDEE878, &qword_21CBAA708);

  v73 = swift_getKeyPath();
  v74 = &v72[*(v118 + 36)];
  v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v117(v54, v55);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v76 - 8) + 56))(v74 + v75, 0, 1, v76);
  *v74 = v73;
  sub_21CB85084();
  v77 = v122;
  swift_getKeyPath();
  *&v122 = v77;
  sub_21CB810D4();

  v78 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  swift_beginAccess();
  v79 = v111;
  v80 = v77 + v78;
  v81 = v110;
  v82 = v113;
  (*(v111 + 16))(v110, v80, v113);

  v83 = v112;
  (*(v79 + 104))(v112, *MEMORY[0x277CDF0D0], v82);
  sub_21CB850F4();
  v84 = *(v79 + 8);
  v84(v83, v82);
  v84(v81, v82);
  sub_21C87B854();
  v85 = v115;
  sub_21CB84674();
  return sub_21C6EA794(v85, &qword_27CDEE868, &qword_21CBAA700);
}

BOOL sub_21C86C478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v0 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v1 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  type metadata accessor for PMGeneratedPasswordsSearchResultsModel();
  swift_allocObject();
  v2 = sub_21C7D56B0(v0, v1);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21CB810D4();

  v3 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v4 = *(v3 + 16);

  if (v4)
  {

    return 0;
  }

  else
  {
    v6 = v2[3];

    return v6 == 0;
  }
}

uint64_t sub_21C86C630()
{
  sub_21C86C71C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE800, &qword_21CBAA6B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE7F8, &qword_21CBAA6B0);
  sub_21C87B60C();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CB84444();
}

uint64_t sub_21C86C71C()
{
  v1 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v85 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v87 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v82 - v9;
  MEMORY[0x28223BE20](v10);
  v89 = &v82 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v82 - v13;
  MEMORY[0x28223BE20](v15);
  v93 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v92 = &v82 - v18;
  v19 = sub_21CB85114();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v82 - v25;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v91 = v0;
  sub_21CB85084();
  v27 = v95;
  swift_getKeyPath();
  v95 = v27;
  v86 = sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v28 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  swift_beginAccess();
  (*(v20 + 16))(v26, v27 + v28, v19);

  (*(v20 + 104))(v23, *MEMORY[0x277CDF0D0], v19);
  LOBYTE(v28) = sub_21CB850F4();
  v29 = *(v20 + 8);
  v29(v23, v19);
  v29(v26, v19);
  if (v28)
  {
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v85 = sub_21CB81034();
    v30 = *(v85 - 8);
    v31 = *(v30 + 72);
    v84 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    sub_21CB81014();
    v33 = v89;
    sub_21CB81014();
    v34 = v88;
    sub_21CB81014();
    v35 = v87;
    sub_21CB81014();
    v36 = v84;
    sub_21CB80FE4();
    v37 = *(v5 + 8);
    v37(v35, v4);
    v37(v34, v4);
    v37(v33, v4);
    v37(v14, v4);
    swift_setDeallocating();
    (*(v30 + 8))(v32 + v36, v85);
    swift_deallocClassInstance();
    v38 = v92;
    sub_21CB81004();
    v37(v93, v4);
    v37(v38, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v40 = v94;
    swift_getKeyPath();
    v94 = v40;
    sub_21CB810D4();

    v41 = *(v40 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

    v43 = sub_21C884770(v42);

    v44 = *(v43 + 16);

    v45 = MEMORY[0x277D83C10];
    *(v39 + 56) = MEMORY[0x277D83B88];
    *(v39 + 64) = v45;
    *(v39 + 32) = v44;
LABEL_12:
    v50 = sub_21CB85594();

    return v50;
  }

  v82 = v14;
  v83 = v5;
  v46 = v92;
  v84 = v4;
  sub_21CB85084();
  v47 = v85;
  sub_21C87D2B8(v94 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v85, type metadata accessor for PMAppAccountsListModel.Configuration);

  v48 = sub_21CB85C44();
  v49 = (*(*(v48 - 8) + 48))(v47, 4, v48);
  if (v49 <= 1)
  {
    if (!v49)
    {
      sub_21C87DFE0(v47, type metadata accessor for PMAppAccountsListModel.Configuration);
    }

    goto LABEL_9;
  }

  if (v49 == 2)
  {
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v63 = sub_21CB81034();
    v64 = *(v63 - 8);
    v65 = *(v64 + 72);
    v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v67 = swift_allocObject();
    v68 = v82;
    sub_21CB81014();
    v69 = v89;
    sub_21CB81014();
    v70 = v88;
    sub_21CB81014();
    v71 = v87;
    sub_21CB81014();
    sub_21CB80FE4();
    v72 = *(v83 + 8);
    v73 = v71;
    v74 = v84;
    v72(v73, v84);
    v72(v70, v74);
    v72(v69, v74);
    v72(v68, v74);
    swift_setDeallocating();
    (*(v64 + 8))(v67 + v66, v63);
    swift_deallocClassInstance();
    v75 = v92;
    sub_21CB81004();
    v72(v93, v74);
    v72(v75, v74);
    goto LABEL_11;
  }

  if (v49 == 3)
  {
LABEL_9:
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v85 = sub_21CB81034();
    v51 = *(v85 - 8);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    v55 = v82;
    sub_21CB81014();
    v56 = v89;
    sub_21CB81014();
    v57 = v88;
    sub_21CB81014();
    v58 = v87;
    sub_21CB81014();
    sub_21CB80FE4();
    v59 = *(v83 + 8);
    v60 = v58;
    v61 = v46;
    v62 = v84;
    v59(v60, v84);
    v59(v57, v62);
    v59(v56, v62);
    v59(v55, v62);
    swift_setDeallocating();
    (*(v51 + 8))(v54 + v53, v85);
    swift_deallocClassInstance();
    sub_21CB81004();
    v59(v93, v62);
    v59(v61, v62);
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v77 = v94;
    swift_getKeyPath();
    v94 = v77;
    sub_21CB810D4();

    v78 = *(v77 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

    v79 = *(v78 + 16);

    v80 = MEMORY[0x277D83C10];
    *(v76 + 56) = MEMORY[0x277D83B88];
    *(v76 + 64) = v80;
    *(v76 + 32) = v79;
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_21C86D3B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8C8, &qword_21CBAA748);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  sub_21C86D4E8(v9 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8D0, &qword_21CBAA750);
  v6 = sub_21C87BB48();
  v9[0] = v5;
  v9[1] = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v4, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C86D4E8@<X0>(uint64_t a1@<X8>)
{
  v145 = a1;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE978, &qword_21CBAA940);
  v2 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v120 = &v108 - v3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8F8, &qword_21CBAA760);
  v125 = *(v141 - 8);
  v4 = *(v125 + 64);
  MEMORY[0x28223BE20](v141);
  v124 = &v108 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE980, &qword_21CBAA948);
  v121 = *(v122 - 8);
  v6 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v118 = *(v139 - 8);
  v8 = *(v118 + 64);
  MEMORY[0x28223BE20](v139);
  v138 = &v108 - v9;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE988, &qword_21CBAA958);
  v116 = *(v137 - 8);
  v10 = *(v116 + 64);
  MEMORY[0x28223BE20](v137);
  v147 = &v108 - v11;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE990, &qword_21CBAA960);
  v12 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v108 - v13;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8E8, &qword_21CBAA758);
  v136 = *(v144 - 8);
  v14 = *(v136 + 64);
  MEMORY[0x28223BE20](v144);
  v135 = &v108 - v15;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE998, &qword_21CBAA968);
  v127 = *(v130 - 8);
  v16 = *(v127 + 64);
  MEMORY[0x28223BE20](v130);
  v111 = &v108 - v17;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9A0, &qword_21CBAA970);
  v110 = *(v128 - 8);
  v18 = *(v110 + 64);
  MEMORY[0x28223BE20](v128);
  v109 = &v108 - v19;
  v20 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v115 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v114 = &v108 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9A8, &qword_21CBAA978);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v117 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v132 = &v108 - v29;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9B0, &qword_21CBAA980);
  v129 = *(v131 - 8);
  v30 = *(v129 + 64);
  MEMORY[0x28223BE20](v131);
  v113 = &v108 - v31;
  v32 = sub_21CB83604();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9B8, &qword_21CBAA988);
  v126 = *(v140 - 8);
  v34 = *(v126 + 64);
  MEMORY[0x28223BE20](v140);
  v146 = &v108 - v35;
  v36 = sub_21CB85114();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v108 - v42;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE8D0, &qword_21CBAA750);
  v44 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v108 - v45;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v46 = v1;
  sub_21CB85084();
  v47 = v150;
  swift_getKeyPath();
  v150 = v47;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v48 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  swift_beginAccess();
  (*(v37 + 16))(v43, v47 + v48, v36);

  (*(v37 + 104))(v40, *MEMORY[0x277CDF0D8], v36);
  LOBYTE(v48) = sub_21CB850F4();
  v49 = *(v37 + 8);
  v49(v40, v36);
  v49(v43, v36);
  if (v48)
  {
    v50 = sub_21CB835A4();
    MEMORY[0x28223BE20](v50);
    *(&v108 - 2) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
    sub_21C844588();
    sub_21CB82AA4();
    sub_21CB85084();
    v51 = v148;
    swift_getKeyPath();
    v148 = v51;
    sub_21CB810D4();

    v52 = *(v51 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts);

    v53 = *(v52 + 16);

    v54 = sub_21CB835F4();
    MEMORY[0x28223BE20](v54);
    *(&v108 - 16) = v53 != 0;
    *(&v108 - 1) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9F0, &qword_21CBAAA00);
    sub_21C6EADEC(&qword_27CDEE9F8, &qword_27CDEE9F0, &qword_21CBAAA00);
    v55 = v113;
    sub_21CB82AA4();
    sub_21CB85084();
    v56 = v114;
    sub_21C87D2B8(v148 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v114, type metadata accessor for PMAppAccountsListModel.Configuration);

    v57 = sub_21CB85C44();
    v58 = v115;
    (*(*(v57 - 8) + 56))(v115, 2, 4, v57);
    LOBYTE(v52) = sub_21C71382C(v56, v58);
    sub_21C87DFE0(v58, type metadata accessor for PMAppAccountsListModel.Configuration);
    sub_21C87DFE0(v56, type metadata accessor for PMAppAccountsListModel.Configuration);
    v59 = v46;
    v60 = v55;
    v61 = v146;
    if ((v52 & 1) != 0 || ![objc_opt_self() shouldAllowAddingNewPasswords])
    {
      v90 = v117;
      v91 = v130;
      (*(v127 + 56))(v117, 1, 1, v130);
      v92 = sub_21C6EADEC(&qword_27CDEEA00, &qword_27CDEE9A0, &qword_21CBAA970);
      v148 = v128;
      v149 = v92;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v71 = v132;
      MEMORY[0x21CF13220](v90, v91, OpaqueTypeConformance2);
      sub_21C6EA794(v90, &qword_27CDEE9A8, &qword_21CBAA978);
    }

    else
    {
      v62 = sub_21CB835F4();
      MEMORY[0x28223BE20](v62);
      *(&v108 - 2) = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA08, &qword_21CBAAA08);
      sub_21C6EADEC(&qword_27CDEEA10, &qword_27CDEEA08, &qword_21CBAAA08);
      v63 = v109;
      sub_21CB82AA4();
      v64 = sub_21C6EADEC(&qword_27CDEEA00, &qword_27CDEE9A0, &qword_21CBAA970);
      v65 = v111;
      v66 = v128;
      MEMORY[0x21CF131E0](v63, v128, v64);
      v67 = v127;
      v68 = v117;
      v69 = v130;
      (*(v127 + 16))(v117, v65, v130);
      (*(v67 + 56))(v68, 0, 1, v69);
      v148 = v66;
      v149 = v64;
      v70 = swift_getOpaqueTypeConformance2();
      v71 = v132;
      MEMORY[0x21CF13220](v68, v69, v70);
      sub_21C6EA794(v68, &qword_27CDEE9A8, &qword_21CBAA978);
      (*(v67 + 8))(v65, v69);
      (*(v110 + 8))(v63, v66);
    }

    v94 = v144;
    v95 = v133;
    v96 = *(v134 + 48);
    v97 = *(v134 + 64);
    v98 = v126;
    (*(v126 + 16))(v133, v61, v140);
    v99 = v129;
    v100 = &v95[v96];
    v101 = v60;
    v102 = v131;
    (*(v129 + 16))(v100, v60, v131);
    sub_21C6EDBAC(v71, &v95[v97], &qword_27CDEE9A8, &qword_21CBAA978);
    v103 = v135;
    sub_21CB83394();
    v104 = sub_21C6EADEC(&qword_27CDEE8E0, &qword_27CDEE8E8, &qword_21CBAA758);
    v105 = sub_21C6EADEC(&qword_27CDEE8F0, &qword_27CDEE8F8, &qword_21CBAA760);
    v89 = v142;
    MEMORY[0x21CF131F0](v103, v94, v141, v104, v105);
    (*(v136 + 8))(v103, v94);
    sub_21C6EA794(v71, &qword_27CDEE9A8, &qword_21CBAA978);
    (*(v99 + 8))(v101, v102);
    (*(v98 + 8))(v146, v140);
  }

  else
  {
    v72 = sub_21CB83594();
    MEMORY[0x28223BE20](v72);
    *(&v108 - 2) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9C0, &qword_21CBAA9B8);
    sub_21C87C01C();
    sub_21CB82194();
    v73 = sub_21CB835D4();
    MEMORY[0x28223BE20](v73);
    *(&v108 - 2) = v46;
    type metadata accessor for PMPlatformRoleButton();
    sub_21C87E764(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
    v74 = v138;
    sub_21CB82194();
    v75 = sub_21CB835F4();
    MEMORY[0x28223BE20](v75);
    *(&v108 - 2) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9E0, &qword_21CBAA9D0);
    sub_21C6EADEC(&qword_27CDEE9E8, &qword_27CDEE9E0, &qword_21CBAA9D0);
    v76 = v119;
    sub_21CB82AA4();
    v77 = *(v123 + 48);
    v78 = *(v123 + 64);
    v79 = v116;
    v80 = v120;
    (*(v116 + 16))(v120, v147, v137);
    v81 = v118;
    (*(v118 + 16))(&v80[v77], v74, v139);
    v82 = v121;
    v83 = v122;
    (*(v121 + 16))(&v80[v78], v76, v122);
    v84 = v124;
    sub_21CB83394();
    v85 = sub_21C6EADEC(&qword_27CDEE8E0, &qword_27CDEE8E8, &qword_21CBAA758);
    v86 = sub_21C6EADEC(&qword_27CDEE8F0, &qword_27CDEE8F8, &qword_21CBAA760);
    v87 = v141;
    v88 = v142;
    MEMORY[0x21CF13200](v84, v144, v141, v85, v86);
    (*(v125 + 8))(v84, v87);
    (*(v82 + 8))(v76, v83);
    (*(v81 + 8))(v138, v139);
    (*(v79 + 8))(v147, v137);
    v89 = v88;
  }

  v106 = sub_21C87BB48();
  MEMORY[0x21CF131E0](v89, v143, v106);
  return sub_21C6EA794(v89, &qword_27CDEE8D0, &qword_21CBAA750);
}

uint64_t sub_21C86E8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_21CB83994();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v3);
  v65 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_21CB82644();
  v59 = *(v60 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v64 = type metadata accessor for PMAppAccountsList();
  v57 = *(v64 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v64);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMEditGroupFlow();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB90, &qword_21CBA5268);
  v17 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v63 = &v56 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE970, &unk_21CBAA930);
  v68 = *(v19 - 8);
  v69 = v19;
  v20 = *(v68 + 64);
  MEMORY[0x28223BE20](v19);
  v61 = &v56 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v56 - v24;
  v26 = type metadata accessor for PMSharingGroup();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C86F0C0(v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_21C6EA794(v25, &qword_27CDF7670, &unk_21CBAA8F0);
    v31 = 1;
    v33 = v69;
    v32 = v70;
    v34 = v68;
  }

  else
  {
    sub_21C87BFAC(v25, v30, type metadata accessor for PMSharingGroup);
    sub_21C87D2B8(v30, v16, type metadata accessor for PMSharingGroup);
    sub_21C87D2B8(a1, &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
    v35 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v36 = swift_allocObject();
    sub_21C87BFAC(v12, v36 + v35, type metadata accessor for PMAppAccountsList);
    v37 = &v16[v13[6]];
    *(v37 + 3) = &type metadata for PMIMessageAvailabilityProviderMain;
    *(v37 + 4) = &off_282E572E8;
    v38 = &v16[v13[5]];
    *v38 = sub_21C87BF3C;
    v38[1] = v36;
    v39 = v13[7];
    *&v73 = &unk_282E48D50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBA0, &qword_21CBA5280);
    sub_21C6EADEC(&qword_27CDECBA8, &qword_27CDECBA0, &qword_21CBA5280);
    sub_21C8158AC();
    sub_21CB82654();
    v40 = v59;
    v41 = v60;
    (*(v59 + 16))(v58, v10, v60);
    sub_21CB84D44();
    (*(v40 + 8))(v10, v41);
    v42 = v13[8];
    *&v16[v42] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
    swift_storeEnumTagMultiPayload();
    sub_21CB85214();
    sub_21CB82AC4();
    v43 = v63;
    sub_21C87BFAC(v16, v63, type metadata accessor for PMEditGroupFlow);
    v44 = (v43 + *(v62 + 36));
    v45 = v78;
    v44[4] = v77;
    v44[5] = v45;
    v44[6] = v79;
    v46 = v74;
    *v44 = v73;
    v44[1] = v46;
    v47 = v76;
    v44[2] = v75;
    v44[3] = v47;
    v71 = 0x756F724774696465;
    v72 = 0xE900000000000070;
    v48 = *(a1 + *(v64 + 48));
    sub_21CB852C4();
    v49 = v65;
    sub_21CB834F4();
    sub_21C815788();
    v50 = v61;
    v51 = v67;
    sub_21CB84524();
    (*(v66 + 8))(v49, v51);
    sub_21C6EA794(v43, &qword_27CDECB90, &qword_21CBA5268);
    sub_21C87DFE0(v30, type metadata accessor for PMSharingGroup);
    v53 = v68;
    v52 = v69;
    v54 = v70;
    (*(v68 + 32))(v70, v50, v69);
    v31 = 0;
    v32 = v54;
    v33 = v52;
    v34 = v53;
  }

  return (*(v34 + 56))(v32, v31, 1, v33);
}

uint64_t sub_21C86F0C0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C87D2B8(v15[1] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v6, type metadata accessor for PMAppAccountsListModel.Configuration);

  if ((*(v8 + 48))(v6, 4, v7))
  {
    sub_21C87DFE0(v6, type metadata accessor for PMAppAccountsListModel.Configuration);
    v12 = type metadata accessor for PMSharingGroup();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + *(type metadata accessor for PMAppAccountsList() + 28) + 8);
    sub_21CA1D444(v11, a1);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_21C86F2EC(uint64_t result)
{
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
    sub_21CB85084();
    v2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
    v1 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);

    v2(2, 0);
  }

  return result;
}

uint64_t sub_21C86F380(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21CB83994();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE918, &qword_21CBAA7D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v27 = a1;
  type metadata accessor for PMMoveAccountsList();
  sub_21C87E764(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList);
  sub_21CB82924();
  v29 = 0x756F636341646461;
  v30 = 0xEA0000000000746ELL;
  v15 = (a1 + *(type metadata accessor for PMAppAccountsList() + 44));
  v16 = *v15;
  v17 = *(v15 + 8);

  if ((v17 & 1) == 0)
  {
    sub_21CB85B04();
    v18 = sub_21CB83C94();
    v24 = v2;
    v19 = v18;
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v25 + 8))(v5, v24);
    v16 = v28;
  }

  v20 = *(v16 + 16);

  sub_21CB834F4();
  sub_21C6EADEC(&qword_27CDEE920, &qword_27CDEE918, &qword_21CBAA7D0);
  v21 = v26;
  sub_21CB84524();
  (*(v6 + 8))(v9, v21);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21C86F724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAppAccountsList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21C86F0C0(a2);
  sub_21C87D2B8(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21C87BFAC(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PMAppAccountsList);
  v9 = type metadata accessor for PMMoveAccountsList();
  *(a2 + v9[5]) = 1;
  v10 = (a2 + v9[6]);
  *v10 = sub_21C87BF04;
  v10[1] = v8;
  v11 = (a2 + v9[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD0, &unk_21CBB9040);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v15[1] = v12;
  result = sub_21CB84D44();
  v14 = v15[3];
  *v11 = v15[2];
  v11[1] = v14;
  return result;
}

uint64_t sub_21C86F8B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isMoveAccountsSheetPresented))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isMoveAccountsSheetPresented) = 0;
  }
}

uint64_t sub_21C86F9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v40 = a3;
  v4 = sub_21CB82644();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for PMGroupInvitationAcceptanceFlow();
  v39 = *(v11 - 1);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = type metadata accessor for PMSharingGroup();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + *(type metadata accessor for PMAppAccountsList() + 28) + 8);
  sub_21CA1D444(v38, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_21C6EA794(v18, &qword_27CDF7670, &unk_21CBAA8F0);
    v25 = 1;
    v26 = v40;
  }

  else
  {
    sub_21C87BFAC(v18, v23, type metadata accessor for PMSharingGroup);
    sub_21C87D2B8(v23, v14, type metadata accessor for PMSharingGroup);
    v27 = v11[5];
    v41 = &unk_282E48D78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE950, &qword_21CBB8DF0);
    sub_21C6EADEC(&qword_27CDEE958, &qword_27CDEE950, &qword_21CBB8DF0);
    sub_21C87BEA8();
    sub_21CB82654();
    v28 = v37;
    (*(v37 + 16))(v7, v10, v4);
    sub_21CB84D44();
    (*(v28 + 8))(v10, v4);
    v29 = v11[6];
    *&v14[v29] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
    swift_storeEnumTagMultiPayload();
    v30 = &v14[v11[7]];
    KeyPath = swift_getKeyPath();
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(KeyPath, v41);

    type metadata accessor for PMAccountsState();
    sub_21C87E764(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
    v32 = sub_21CB82674();
    v34 = v33;

    *v30 = v32;
    v30[1] = v34;
    sub_21C87DFE0(v23, type metadata accessor for PMSharingGroup);
    v26 = v40;
    sub_21C87BFAC(v14, v40, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v25 = 0;
  }

  return (*(v39 + 56))(v26, v25, 1, v11);
}

uint64_t sub_21C86FF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = sub_21CB83994();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMGeneratedPasswordsLogView();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v28 = a1;
  sub_21CB85084();
  v11 = v33;
  swift_getKeyPath();
  *&v33 = v11;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v12 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);
  v27 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);

  swift_unknownObjectWeakInit();
  v13 = v7[5];
  *&v10[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v14 = v7[6];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v16 = &v10[v14];
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v33);

  type metadata accessor for PMGeneratedPasswordStore();
  sub_21C87E764(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
  v17 = sub_21CB82674();
  v19 = v18;

  *v16 = v17;
  v16[1] = v19;
  v20 = &v10[v7[8]];
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_21CB84D44();
  v21 = &v10[v7[9]];
  v31 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  v22 = *(&v33 + 1);
  *v21 = v33;
  *(v21 + 1) = v22;
  v23 = v7[10];
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *&v10[v23] = v33;
  swift_unknownObjectWeakAssign();

  v10[v7[7]] = 1;
  *v20 = v27;
  *(v20 + 1) = v12;
  *(v20 + 2) = 0;
  *&v33 = 0xD000000000000012;
  *(&v33 + 1) = 0x800000021CB8F740;
  v24 = *(v28 + *(type metadata accessor for PMAppAccountsList() + 48));
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C87E764(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
  v25 = v30;
  sub_21CB84524();
  (*(v3 + 8))(v6, v25);
  return sub_21C87DFE0(v10, type metadata accessor for PMGeneratedPasswordsLogView);
}

uint64_t sub_21C870390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v135 = a1;
  v121 = a3;
  v4 = sub_21CB82964();
  v5 = *(v4 - 8);
  v137 = v4;
  v138 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v133 = v7;
  v134 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAppAccountsList();
  v9 = v8 - 8;
  v130 = *(v8 - 8);
  v10 = *(v130 + 64);
  MEMORY[0x28223BE20](v8);
  v128 = v11;
  v131 = (&v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v104 = &v103 - v14;
  v129 = sub_21CB83A14();
  v112 = *(v129 - 8);
  v15 = *(v112 + 64);
  MEMORY[0x28223BE20](v129);
  v111 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v103 - v20;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED10, &qword_21CBAAF50);
  v107 = *(v109 - 8);
  v22 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v24 = &v103 - v23;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED18, &qword_21CBAAF58);
  v108 = *(v110 - 8);
  v25 = *(v108 + 64);
  MEMORY[0x28223BE20](v110);
  v106 = &v103 - v26;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED20, &qword_21CBAAF60);
  v123 = *(v124 - 1);
  v27 = *(v123 + 8);
  MEMORY[0x28223BE20](v124);
  v132 = &v103 - v28;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED28, &qword_21CBAAF68);
  v29 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  OpaqueTypeConformance2 = &v103 - v30;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED30, &qword_21CBAAF70);
  v113 = *(v114 - 8);
  v31 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v127 = &v103 - v32;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED38, &qword_21CBAAF78);
  v116 = *(v118 - 8);
  v33 = *(v116 + 64);
  MEMORY[0x28223BE20](v118);
  v115 = &v103 - v34;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED40, &qword_21CBAAF80);
  v119 = *(v120 - 8);
  v35 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v117 = &v103 - v36;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v18 + 8))(v21, v17);
  v139 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED48, &qword_21CBAAF88);
  sub_21C6EADEC(&qword_27CDEED50, &qword_27CDEED48, &qword_21CBAAF88);
  v105 = v24;
  v37 = a2;
  sub_21CB83F14();
  v136 = v17;
  sub_21CB85084();
  v38 = a2 + *(v9 + 44);
  v39 = v104;
  sub_21C728D50(v104);
  LOBYTE(v9) = sub_21C8816E4(v39);

  sub_21C6EA794(v39, &qword_27CDEC390, &qword_21CBA40E0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_21CB85084();
  v40 = v140;
  swift_getKeyPath();
  v140 = v40;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v41 = *(v40 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);

  if ((v41 & 0xFE) != 2)
  {
    v42 = v111;
    sub_21CB83514();
  }

  else
  {
LABEL_3:
    v42 = v111;
    sub_21CB83A04();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED58, &qword_21CBAAF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA15B0;
  v44 = sub_21CB83CC4();
  *(inited + 32) = v44;
  v45 = sub_21CB83CA4();
  *(inited + 33) = v45;
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v44)
  {
    sub_21CB83CB4();
  }

  sub_21CB83CB4();
  if (sub_21CB83CB4() != v45)
  {
    sub_21CB83CB4();
  }

  v46 = v130;
  v47 = sub_21C6EADEC(&qword_27CDEED60, &qword_27CDEED10, &qword_21CBAAF50);
  v48 = v106;
  v49 = v109;
  v50 = v105;
  sub_21CB84364();
  (*(v112 + 8))(v42, v129);
  (*(v107 + 8))(v50, v49);
  v140 = v49;
  v141 = v47;
  swift_getOpaqueTypeConformance2();
  v51 = v110;
  sub_21CB845F4();
  (*(v108 + 8))(v48, v51);
  sub_21CB85084();
  v52 = v140;
  swift_getKeyPath();
  v140 = v52;
  v129 = sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v53 = *(v52 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v55 = sub_21C884770(v54);

  v56 = *(v55 + 16);

  if (v56)
  {
    v57 = v131;
    sub_21C87D2B8(v37, v131, type metadata accessor for PMAppAccountsList);
    v58 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v56 = swift_allocObject();
    sub_21C87BFAC(v57, v56 + v58, type metadata accessor for PMAppAccountsList);
    v59 = sub_21C87DB4C;
    v60 = v134;
  }

  else
  {
    v59 = 0;
    v60 = v134;
    v57 = v131;
  }

  v61 = OpaqueTypeConformance2;
  (*(v123 + 4))(OpaqueTypeConformance2, v132, v124);
  v62 = &v61[*(v126 + 36)];
  *v62 = v59;
  v62[1] = v56;
  sub_21CB85084();
  v63 = v140;
  swift_getKeyPath();
  v140 = v63;
  sub_21CB810D4();

  v64 = v37;
  v122 = v37;
  v65 = *(v63 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
  v66 = *(v63 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo + 8);

  v140 = v65;
  v141 = v66;
  v67 = v137;
  v68 = v138;
  v131 = *(v138 + 16);
  v132 = (v138 + 16);
  (v131)(v60, v135, v137);
  v124 = type metadata accessor for PMAppAccountsList;
  sub_21C87D2B8(v64, v57, type metadata accessor for PMAppAccountsList);
  v69 = v67;
  v70 = *(v68 + 80);
  v71 = (v70 + 16) & ~v70;
  v72 = *(v46 + 80);
  v111 = (v71 + v133);
  v73 = (v71 + v133 + v72) & ~v72;
  v110 = v70 | 7;
  v74 = swift_allocObject();
  v130 = *(v138 + 32);
  v138 += 32;
  v112 = v71;
  (v130)(v74 + v71, v60, v69);
  v123 = type metadata accessor for PMAppAccountsList;
  sub_21C87BFAC(v57, v74 + v73, type metadata accessor for PMAppAccountsList);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  v107 = sub_21C87D4E4();
  v109 = sub_21C87D624();
  v75 = v126;
  v76 = OpaqueTypeConformance2;
  sub_21CB84924();

  sub_21C6EA794(v76, &qword_27CDEED28, &qword_21CBAAF68);
  v77 = v122;
  sub_21CB85084();
  v78 = v140;
  swift_getKeyPath();
  v140 = v78;
  sub_21CB810D4();

  LOBYTE(v73) = *(v78 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);

  v144 = v73;
  sub_21C87D2B8(v77, v57, v124);
  v79 = v134;
  v80 = v137;
  (v131)(v134, v135, v137);
  v81 = v57;
  v82 = (v72 + 16) & ~v72;
  v83 = (v128 + v70 + v82) & ~v70;
  v128 = v70 | v72;
  v84 = swift_allocObject();
  sub_21C87BFAC(v57, v84 + v82, v123);
  (v130)(v84 + v83, v79, v80);
  v140 = v75;
  v141 = v108;
  v142 = v107;
  v143 = v109;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v126 = sub_21C87D6CC();
  v85 = v115;
  v86 = v114;
  v87 = v127;
  sub_21CB84934();

  (*(v113 + 8))(v87, v86);
  v88 = v122;
  sub_21CB85084();
  v89 = v140;
  swift_getKeyPath();
  v140 = v89;
  sub_21CB810D4();
  v90 = v135;

  LOBYTE(v87) = *(v89 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder);

  v144 = v87;
  sub_21C87D2B8(v88, v81, v124);
  v91 = v137;
  (v131)(v79, v90, v137);
  v92 = swift_allocObject();
  sub_21C87BFAC(v81, v92 + v82, v123);
  (v130)(v92 + v83, v79, v91);
  v140 = v86;
  v141 = &type metadata for PMSortOption;
  v142 = OpaqueTypeConformance2;
  v143 = v126;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = sub_21C87DA88();
  v95 = v117;
  v96 = v118;
  sub_21CB84934();

  (*(v116 + 8))(v85, v96);
  if (qword_27CDEA3B0 != -1)
  {
    swift_once();
  }

  v97 = sub_21CB820E4();
  __swift_project_value_buffer(v97, qword_27CDEE7B0);
  v98 = v134;
  v99 = v137;
  (v131)(v134, v90, v137);
  v100 = swift_allocObject();
  (v130)(v100 + v112, v98, v99);
  v140 = v96;
  v141 = MEMORY[0x277CC9B58];
  v142 = v93;
  v143 = v94;
  swift_getOpaqueTypeConformance2();
  v101 = v120;
  sub_21CB84814();

  return (*(v119 + 8))(v95, v101);
}

void sub_21C8716AC(uint64_t a1, uint64_t *a2)
{
  if (a2[1])
  {
    v4 = *a2;
    v5 = a2[1];
    sub_21CB82954();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
    sub_21CB85084();
    v2 = (v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
    if (*(v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo + 8))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
      sub_21CB810C4();
    }

    else
    {
      *v2 = 0;
      v2[1] = 0;
    }
  }
}

uint64_t sub_21C871834()
{
  v0 = type metadata accessor for PMAccount(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v5 = v15;
  swift_getKeyPath();
  v15 = v5;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v6 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v7 = sub_21C713194(v6);
  v9 = v8;

  if (v9)
  {
    v15 = v7;
    v16 = v9;
    sub_21CB85384();
    sub_21CB82954();
  }

  else
  {
    sub_21CB85084();
    v10 = v15;
    swift_getKeyPath();
    v15 = v10;
    sub_21CB810D4();

    v11 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

    if (*(v11 + 16))
    {
      sub_21C87D2B8(v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v4, type metadata accessor for PMAccount);

      v12 = *v4;
      v13 = v4[1];

      sub_21C87DFE0(v4, type metadata accessor for PMAccount);
      v15 = v12;
      v16 = v13;
      sub_21CB85374();
      sub_21CB82954();
    }
  }
}

uint64_t sub_21C871AFC(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v39 = a1;
  v45 = sub_21CB853D4();
  v48 = *(v45 - 8);
  v2 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB85404();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21CB82964();
  v7 = *(v35 - 8);
  v36 = *(v7 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB82124();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB85424();
  v41 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v37 = &v34 - v19;
  sub_21C8582C0();
  v38 = sub_21CB85CF4();
  sub_21CB85414();
  sub_21CB85434();
  v20 = v14 + 8;
  v21 = *(v14 + 8);
  v40 = v20;
  v21(v17, v13);
  (*(v10 + 16))(v12, v39, v9);
  v23 = v34;
  v22 = v35;
  (*(v7 + 16))(v34, v42, v35);
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = (v11 + *(v7 + 80) + v24) & ~*(v7 + 80);
  v26 = swift_allocObject();
  (*(v10 + 32))(v26 + v24, v12, v9);
  (*(v7 + 32))(v26 + v25, v23, v22);
  aBlock[4] = sub_21C87DBB8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_9;
  v27 = _Block_copy(aBlock);

  v28 = v43;
  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C87E764(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  v30 = v44;
  v29 = v45;
  sub_21CB85F14();
  v32 = v37;
  v31 = v38;
  MEMORY[0x21CF157D0](v37, v28, v30, v27);
  _Block_release(v27);

  (*(v48 + 8))(v30, v29);
  (*(v46 + 8))(v28, v47);
  return (v21)(v32, v41);
}

uint64_t sub_21C872088(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v1);
  return sub_21CB864D4();
}

unint64_t sub_21C8720D0@<X0>(unint64_t result@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_21CB109D0(*a2), (v5 & 1) != 0))
  {
    v6 = (*(v4 + 56) + 24 * result);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];

    result = v9;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a3 = v7;
  a3[1] = v8;
  a3[2] = v9;
  return result;
}

unint64_t sub_21C872150(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_21C7FB8AC(*a1, v5, v6);
  return sub_21C87EC3C(v4, v5, v6, v3);
}

uint64_t sub_21C8721B0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_21CB858B4();
  v2[5] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C872248, v4, v3);
}

uint64_t sub_21C872248()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_21CB85254();
  sub_21CB82524();

  sub_21CB85084();
  v6 = v0[2];
  sub_21CB85254();
  sub_21CB82524();

  v7 = v0[1];

  return v7();
}

uint64_t sub_21C87238C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v125 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow();
  v3 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v124 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED88, &qword_21CBAAFC0);
  v149 = *(v5 - 8);
  v150 = v5;
  v6 = *(v149 + 64);
  MEMORY[0x28223BE20](v5);
  v123 = &v123 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED90, &qword_21CBAAFC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v151 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v155 = &v123 - v12;
  v132 = sub_21CB81024();
  v131 = *(v132 - 8);
  v13 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v130 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v154 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v153 = &v123 - v19;
  v144 = type metadata accessor for PMAppAccountsCollectionView();
  v20 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v22 = (&v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED98, &qword_21CBAAFD0);
  v134 = *(v145 - 8);
  v23 = *(v134 + 64);
  MEMORY[0x28223BE20](v145);
  v133 = &v123 - v24;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDA0, &qword_21CBAAFD8);
  v25 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v143 = &v123 - v26;
  v27 = type metadata accessor for PMAppAccountsList();
  v139 = *(v27 - 8);
  v28 = *(v139 + 64);
  MEMORY[0x28223BE20](v27);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDA8, &qword_21CBAAFE0);
  v127 = *(v140 - 8);
  v29 = *(v127 + 64);
  MEMORY[0x28223BE20](v140);
  v126 = &v123 - v30;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDB0, &qword_21CBAAFE8);
  v129 = *(v142 - 8);
  v31 = *(v129 + 64);
  MEMORY[0x28223BE20](v142);
  v128 = &v123 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v123 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDB8, &qword_21CBAAFF0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v148 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v157 = &v123 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDC0, &qword_21CBAAFF8);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v147 = &v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v146 = &v123 - v46;
  sub_21C8739BC((&v123 - v46));
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v135 = v27;
  v47 = a1 + *(v27 + 36);
  sub_21C728D50(v36);
  LOBYTE(v47) = sub_21C8816E4(v36);

  sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
  v137 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v28;
  v138 = a1;
  if (v47)
  {
    sub_21CB85084();
    v48 = v158;
    swift_getKeyPath();
    v158 = v48;
    sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810D4();

    v49 = *(v48 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedSections);

    v158 = v49;
    swift_getKeyPath();
    sub_21C87D2B8(a1, &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
    v50 = *(v139 + 80);
    v51 = swift_allocObject();
    sub_21C87BFAC(&v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + ((v50 + 16) & ~v50), type metadata accessor for PMAppAccountsList);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE20, &qword_21CBAB0C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDE0, &qword_21CBAB028);
    sub_21C6EADEC(&qword_27CDEEE28, &qword_27CDEEE20, &qword_21CBAB0C0);
    sub_21C87DD58();
    v52 = v126;
    sub_21CB84FD4();
    sub_21CB82334();
    v53 = sub_21C87DCD4();
    v54 = v128;
    v55 = v140;
    sub_21CB84514();
    (*(v127 + 8))(v52, v55);
    v56 = v129;
    v57 = v142;
    (*(v129 + 16))(v143, v54, v142);
    swift_storeEnumTagMultiPayload();
    v158 = v55;
    v159 = v53;
    swift_getOpaqueTypeConformance2();
    v58 = sub_21C87E764(&qword_27CDEEDC8, type metadata accessor for PMAppAccountsCollectionView);
    v158 = v144;
    v159 = v58;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v56 + 8))(v54, v57);
    v139 = v50;
  }

  else
  {
    sub_21CB85084();
    v59 = v158;
    swift_getKeyPath();
    v158 = v59;
    sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810D4();

    v129 = *(v59 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

    sub_21CB85084();
    v60 = v153;
    sub_21C87D2B8(v158 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v153, type metadata accessor for PMAppAccountsListModel.Configuration);

    v61 = sub_21CB85C44();
    v62 = v154;
    (*(*(v61 - 8) + 56))(v154, 1, 4, v61);
    LOBYTE(v59) = sub_21C71382C(v60, v62);
    sub_21C87DFE0(v62, type metadata accessor for PMAppAccountsListModel.Configuration);
    sub_21C87DFE0(v60, type metadata accessor for PMAppAccountsListModel.Configuration);
    if ((v59 & 1) == 0)
    {
      goto LABEL_8;
    }

    v63 = *(a1 + *(v135 + 40));
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v64 = sub_21C81C2B8(v63, v158);

    swift_getKeyPath();
    v158 = v64;
    sub_21C87E764(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel);
    sub_21CB810D4();

    v65 = *(v64 + 33);

    if (v65 == 1)
    {
      sub_21CB85084();
      v66 = sub_21C882110();
    }

    else
    {
LABEL_8:
      v66 = MEMORY[0x277D84F90];
    }

    v67 = v130;
    sub_21CB81014();
    v68 = sub_21CB81004();
    v70 = v69;
    (*(v131 + 8))(v67, v132);
    sub_21CB85084();
    v71 = v158;
    swift_getKeyPath();
    v158 = v71;
    sub_21CB810D4();

    v73 = *(v71 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText);
    v72 = *(v71 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText + 8);

    v74 = v137;
    sub_21C87D2B8(a1, v137, type metadata accessor for PMAppAccountsList);
    v75 = (*(v139 + 80) + 16) & ~*(v139 + 80);
    v139 = *(v139 + 80);
    v76 = swift_allocObject();
    sub_21C87BFAC(v74, v76 + v75, type metadata accessor for PMAppAccountsList);
    *v22 = v129;
    v22[1] = v66;
    v22[2] = v68;
    v22[3] = v70;
    v22[4] = v73;
    v22[5] = v72;
    v22[6] = sub_21C87E7E4;
    v22[7] = v76;
    v77 = v144;
    v78 = *(v144 + 36);
    *(v22 + v78) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    sub_21CB82334();
    v79 = sub_21C87E764(&qword_27CDEEDC8, type metadata accessor for PMAppAccountsCollectionView);
    v80 = v133;
    sub_21CB84514();
    sub_21C87DFE0(v22, type metadata accessor for PMAppAccountsCollectionView);
    v81 = v134;
    v82 = v145;
    (*(v134 + 16))(v143, v80, v145);
    swift_storeEnumTagMultiPayload();
    v83 = sub_21C87DCD4();
    v158 = v140;
    v159 = v83;
    swift_getOpaqueTypeConformance2();
    v158 = v77;
    v159 = v79;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v81 + 8))(v80, v82);
  }

  v84 = v138;
  sub_21CB85084();
  v85 = v158;
  swift_getKeyPath();
  v158 = v85;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v86 = *(v85 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v87 = *(v85 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v88 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v88 = v86 & 0xFFFFFFFFFFFFLL;
  }

  v89 = v155;
  if (v88)
  {
    v90 = v84;
    sub_21CB85084();
    v91 = v153;
    sub_21C87D2B8(v158 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v153, type metadata accessor for PMAppAccountsListModel.Configuration);

    v92 = sub_21CB85C44();
    v93 = *(*(v92 - 8) + 56);
    v94 = v154;
    v93(v154, 1, 4, v92);
    v95 = sub_21C71382C(v91, v94);
    sub_21C87DFE0(v94, type metadata accessor for PMAppAccountsListModel.Configuration);
    sub_21C87DFE0(v91, type metadata accessor for PMAppAccountsListModel.Configuration);
    if (v95 & 1) != 0 || (sub_21CB85084(), sub_21C87D2B8(v158 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v91, type metadata accessor for PMAppAccountsListModel.Configuration), , v93(v94, 3, 4, v92), v96 = sub_21C71382C(v91, v94), sub_21C87DFE0(v94, type metadata accessor for PMAppAccountsListModel.Configuration), sub_21C87DFE0(v91, type metadata accessor for PMAppAccountsListModel.Configuration), (v96))
    {
      sub_21CB85084();
      v97 = v158;
      swift_getKeyPath();
      v98 = v90;
      v158 = v97;
      sub_21CB810D4();

      v99 = *(v97 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
      v100 = *(v97 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

      v101 = v137;
      sub_21C87D2B8(v98, v137, type metadata accessor for PMAppAccountsList);
      v102 = (v139 + 16) & ~v139;
      v103 = swift_allocObject();
      sub_21C87BFAC(v101, v103 + v102, type metadata accessor for PMAppAccountsList);
      KeyPath = swift_getKeyPath();
      v105 = v124;
      *(v124 + 2) = KeyPath;
      *(v105 + 24) = 0;
      v106 = v125;
      v107 = *(v125 + 24);
      *(v105 + v107) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
      swift_storeEnumTagMultiPayload();
      v108 = (v105 + *(v106 + 28));
      *v108 = v99;
      v108[1] = v100;
      type metadata accessor for PMGeneratedPasswordsSearchResultsModel();
      swift_allocObject();

      sub_21C7D56B0(v99, v100);
      sub_21C87E764(&qword_27CDEDC18, type metadata accessor for PMGeneratedPasswordsSearchResultsModel);
      *v105 = sub_21CB82674();
      *(v105 + 8) = v109;
      v110 = (v105 + *(v106 + 32));
      *v110 = sub_21C87DF54;
      v110[1] = v103;
      v158 = 0xD000000000000012;
      v159 = 0x800000021CB8F740;
      v111 = *(v98 + *(v135 + 48));
      sub_21CB852C4();
      sub_21C87E764(&qword_27CDEDB30, type metadata accessor for PMGeneratedPasswordsSearchResultsRow);
      v112 = v123;
      sub_21CB845E4();
      sub_21C87DFE0(v105, type metadata accessor for PMGeneratedPasswordsSearchResultsRow);
      v114 = v149;
      v113 = v150;
      v89 = v155;
      (*(v149 + 32))(v155, v112, v150);
      v115 = 0;
    }

    else
    {
      v115 = 1;
      v114 = v149;
      v113 = v150;
      v89 = v155;
    }
  }

  else
  {
    v115 = 1;
    v114 = v149;
    v113 = v150;
  }

  (*(v114 + 56))(v89, v115, 1, v113);
  v117 = v146;
  v116 = v147;
  sub_21C6EDBAC(v146, v147, &qword_27CDEEDC0, &qword_21CBAAFF8);
  v118 = v148;
  sub_21C6EDBAC(v157, v148, &qword_27CDEEDB8, &qword_21CBAAFF0);
  v119 = v151;
  sub_21C6EDBAC(v89, v151, &qword_27CDEED90, &qword_21CBAAFC8);
  v120 = v152;
  sub_21C6EDBAC(v116, v152, &qword_27CDEEDC0, &qword_21CBAAFF8);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE10, &qword_21CBAB048);
  sub_21C6EDBAC(v118, v120 + *(v121 + 48), &qword_27CDEEDB8, &qword_21CBAAFF0);
  sub_21C6EDBAC(v119, v120 + *(v121 + 64), &qword_27CDEED90, &qword_21CBAAFC8);
  sub_21C6EA794(v89, &qword_27CDEED90, &qword_21CBAAFC8);
  sub_21C6EA794(v157, &qword_27CDEEDB8, &qword_21CBAAFF0);
  sub_21C6EA794(v117, &qword_27CDEEDC0, &qword_21CBAAFF8);
  sub_21C6EA794(v119, &qword_27CDEED90, &qword_21CBAAFC8);
  sub_21C6EA794(v118, &qword_27CDEEDB8, &qword_21CBAAFF0);
  return sub_21C6EA794(v116, &qword_27CDEEDC0, &qword_21CBAAFF8);
}

uint64_t sub_21C8739BC@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC88, &qword_21CBAAD68);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v55 - v8;
  v9 = type metadata accessor for PMSharingGroup();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = *(v59 + 64);
  MEMORY[0x28223BE20](v9);
  v57 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC60, &qword_21CBAAD50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v67 = v1;
  sub_21CB85084();
  v25 = v75;
  swift_getKeyPath();
  *&v75 = v25;
  v62 = sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v26 = *(v25 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v27 = *(v25 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    v29 = *(v67 + *(type metadata accessor for PMAppAccountsList() + 32) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v77[0] = v71;
    v77[1] = v72;
    v78 = v73;
    v79 = v74;
    v75 = v69;
    v76 = v70;
    v30 = *(&v69 + 1);
    if (*(&v69 + 1))
    {
      v71 = v77[1];
      v72 = v78;
      *&v73 = v79;
      v69 = v76;
      v70 = v77[0];
      if (v75 != 2 && v75 != 3)
      {
        v56 = v75;
        sub_21CB85084();
        sub_21C87D2B8(v85 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v24, type metadata accessor for PMAppAccountsListModel.Configuration);

        v31 = sub_21CB85C44();
        (*(*(v31 - 8) + 56))(v21, 1, 4, v31);
        v32 = sub_21C71382C(v24, v21);
        sub_21C87DFE0(v21, type metadata accessor for PMAppAccountsListModel.Configuration);
        sub_21C87DFE0(v24, type metadata accessor for PMAppAccountsListModel.Configuration);
        if (v32)
        {
          v33 = swift_allocObject();
          *(v33 + 16) = v56;
          *(v33 + 24) = v30;
          v34 = v72;
          *(v33 + 64) = v71;
          *(v33 + 80) = v34;
          *(v33 + 96) = v73;
          v35 = v70;
          *(v33 + 32) = v69;
          *(v33 + 48) = v35;
          KeyPath = swift_getKeyPath();
          LOBYTE(v83[0]) = 1;
          LOBYTE(v80) = 1;
          v68 = 0;
          *&v85 = 0;
          BYTE8(v85) = 1;
          *&v86 = 0;
          WORD4(v86) = 1;
          *&v87[0] = sub_21C87E154;
          *(&v87[0] + 1) = v33;
          *&v87[1] = KeyPath;
          BYTE8(v87[1]) = 0;

          goto LABEL_11;
        }
      }

      sub_21C6EA794(&v75, &unk_27CDED230, &unk_21CBA6460);
    }
  }

  v86 = 0u;
  memset(v87, 0, 25);
  v85 = 0u;
LABEL_11:
  sub_21CB85084();
  v37 = v75;
  swift_getKeyPath();
  *&v75 = v37;
  sub_21CB810D4();

  v38 = *(v37 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v39 = *(v37 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v41 = 1;
    v43 = v64;
    v42 = v65;
  }

  else
  {
    v44 = v61;
    sub_21C86F0C0(v61);
    v45 = (*(v59 + 48))(v44, 1, v60);
    v43 = v64;
    if (v45 == 1)
    {
      sub_21C6EA794(v44, &qword_27CDF7670, &unk_21CBAA8F0);
      v41 = 1;
      v42 = v65;
    }

    else
    {
      v46 = v57;
      sub_21C87BFAC(v44, v57, type metadata accessor for PMSharingGroup);
      v47 = v58;
      sub_21C86B484(v46);
      sub_21C87DFE0(v46, type metadata accessor for PMSharingGroup);
      v48 = v65;
      (*(v43 + 32))(v17, v47, v65);
      v42 = v48;
      v41 = 0;
    }
  }

  (*(v43 + 56))(v17, v41, 1, v42);
  v80 = v85;
  v81 = v86;
  v82[0] = v87[0];
  *(v82 + 9) = *(v87 + 9);
  v49 = v63;
  sub_21C6EDBAC(v17, v63, &qword_27CDEEC60, &qword_21CBAAD50);
  v50 = v81;
  v83[0] = v80;
  v83[1] = v81;
  v51 = v82[0];
  v84[0] = v82[0];
  v52 = *(v82 + 9);
  *(v84 + 9) = *(v82 + 9);
  *a1 = v80;
  a1[1] = v50;
  a1[2] = v51;
  *(a1 + 41) = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE38, &qword_21CBAB100);
  sub_21C6EDBAC(v49, a1 + *(v53 + 48), &qword_27CDEEC60, &qword_21CBAAD50);
  sub_21C6EDBAC(v83, &v75, &qword_27CDEEE40, &qword_21CBAB108);
  sub_21C6EA794(&v85, &qword_27CDEEE40, &qword_21CBAB108);
  sub_21C6EA794(v17, &qword_27CDEEC60, &qword_21CBAAD50);
  sub_21C6EA794(v49, &qword_27CDEEC60, &qword_21CBAAD50);
  v75 = v80;
  v76 = v81;
  v77[0] = v82[0];
  *(v77 + 9) = *(v82 + 9);
  return sub_21C6EA794(&v75, &qword_27CDEEE40, &qword_21CBAB108);
}

uint64_t sub_21C8741C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE30, &unk_21CBAB0C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDF0, &unk_21CBAB030);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v30 = *a1;
  v31 = v15;
  v32 = v16;
  v33 = a2;
  sub_21C8747DC(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  type metadata accessor for PMAppAccountsCollectionView();
  sub_21C87DED8();
  sub_21C87E764(&qword_27CDEEDC8, type metadata accessor for PMAppAccountsCollectionView);
  sub_21CB85034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v17 = v34[0];
  swift_getKeyPath();
  v34[0] = v17;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  LOBYTE(a2) = *(v17 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);

  if ((a2 & 0xFE) == 2 || (, !v15))
  {
    v24 = sub_21CB83004();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  }

  else
  {
    v34[0] = v14;
    v34[1] = v15;
    sub_21C71F3FC();
    *v8 = sub_21CB84054();
    *(v8 + 1) = v18;
    v8[16] = v19 & 1;
    *(v8 + 3) = v20;
    v21 = *MEMORY[0x277CDDDD0];
    v22 = sub_21CB83004();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v8, v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEDE0, &qword_21CBAB028);
  v26 = v29;
  sub_21C716934(v8, v29 + *(v25 + 36), &qword_27CDEEE30, &unk_21CBAB0C8);
  return (*(v10 + 32))(v26, v13, v9);
}

uint64_t sub_21C874594@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = type metadata accessor for PMAppAccountsList();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v10 = *(v17 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText);
  v9 = *(v17 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText + 8);

  sub_21C87D2B8(a2, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_21C87BFAC(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PMAppAccountsList);
  v13 = MEMORY[0x277D84F90];
  *a3 = a1;
  a3[1] = v13;
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  a3[4] = v10;
  a3[5] = v9;
  a3[6] = sub_21C87E0CC;
  a3[7] = v12;
  v14 = *(type metadata accessor for PMAppAccountsCollectionView() + 36);
  *(a3 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C8747DC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  if ((sub_21CB85174() & 1) == 0)
  {

    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v2 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);

  if ((v2 & 0xFE) == 2)
  {
LABEL_5:
    sub_21C71F3FC();

    result = sub_21CB84054();
    v5 = v7 & 1;
    goto LABEL_6;
  }

  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
LABEL_6:
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_21C874924(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v2 = *(type metadata accessor for PMAccount(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21CBA0690;
  sub_21C87D2B8(a1, v5 + v4, type metadata accessor for PMAccount);
  sub_21C884B98(v5, 0);
}

uint64_t sub_21C874A40(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for PMAppAccountsList() + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v2 = sub_21C81C2B8(v1, v5);

  if (*(v2 + 32))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v5 = v2;
    sub_21C87E764(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel);
    sub_21CB810C4();
  }

  else
  {
    *(v2 + 32) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  *(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isGeneratedPasswordsSheetPresented) = (*(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isGeneratedPasswordsSheetPresented) & 1) == 0;
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C874CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 88) = xmmword_21CBA7B60;
  *(a2 + 104) = 1;
  KeyPath = swift_getKeyPath();
  sub_21C844C40(a1, v14);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C704000(KeyPath, v14[0]);

  type metadata accessor for PMTipsStore();
  sub_21C87E764(&qword_27CDED870, type metadata accessor for PMTipsStore);
  v7 = sub_21CB82674();
  v9 = v8;

  *(a2 + 112) = v7;
  *(a2 + 120) = v9;
  type metadata accessor for PMPasswordManagerState();
  sub_21C87E764(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  *(a2 + 128) = sub_21CB82B84();
  *(a2 + 136) = v10;
  sub_21CB84D44();
  v11 = v14[1];
  *(a2 + 144) = v14[0];
  *(a2 + 152) = v11;
  v12 = *(type metadata accessor for PMTipView() + 44);
  type metadata accessor for PMAppRootNavigationModel();
  sub_21C87E764(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  return sub_21CB821F4();
}

uint64_t sub_21C874EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAppAccountsList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21C87D2B8(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21C87BFAC(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PMAppAccountsList);
  sub_21CB84DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v9 = v17;
  swift_getKeyPath();
  v17 = v9;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v10 = *(v9 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts);

  v11 = *(v10 + 16);

  LOBYTE(v6) = v11 == 0;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_21C87E800;
  v15[2] = v13;
  return result;
}

uint64_t sub_21C875168@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C87528C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_21CB831C4();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA88, &qword_21CBAAA98);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA90, &qword_21CBAAAA0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA98, &qword_21CBAAAA8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v43 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - v25;
  if (a1)
  {
    sub_21C8756F8(v20);
    v27 = v8;
    v28 = v14[2];
    v28(v17, v20, v13);
    v28(v12, v17, v13);
    v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAA8, &qword_21CBAAAB8) + 48)];
    *v29 = 0;
    v29[8] = 1;
    v30 = v14[1];
    v30(v20, v13);
    v30(v17, v13);
    sub_21C716934(v12, v26, &qword_27CDEEA88, &qword_21CBAAA98);
    (*(v9 + 56))(v26, 0, 1, v27);
  }

  else
  {
    (*(v9 + 56))(&v41 - v25, 1, 1, v8);
  }

  v31 = v44;
  sub_21CB831B4();
  v32 = v43;
  v42 = v26;
  sub_21C6EDBAC(v26, v43, &qword_27CDEEA98, &qword_21CBAAAA8);
  v34 = v47;
  v33 = v48;
  v35 = *(v47 + 16);
  v36 = v45;
  v35(v45, v31, v48);
  v37 = v46;
  sub_21C6EDBAC(v32, v46, &qword_27CDEEA98, &qword_21CBAAAA8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAA0, &qword_21CBAAAB0);
  v35((v37 + *(v38 + 48)), v36, v33);
  v39 = *(v34 + 8);
  v39(v31, v33);
  sub_21C6EA794(v42, &qword_27CDEEA98, &qword_21CBAAAA8);
  v39(v36, v33);
  return sub_21C6EA794(v32, &qword_27CDEEA98, &qword_21CBAAAA8);
}

uint64_t sub_21C8756F8@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v31 = sub_21CB81024();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAB0, &qword_21CBAAAC0);
  v32 = *(v30 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAB8, &qword_21CBAAAC8);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v29 = &v29 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAC0, &qword_21CBAAAD0);
  v12 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v29 - v13;
  v38 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAC8, &qword_21CBAAAD8);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEEAD0, &qword_27CDEEAC8, &qword_21CBAAAD8);
  sub_21CB83F54();
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*(v2 + 8))(v5, v31);
  v39 = v14;
  v40 = v16;
  sub_21C6EADEC(&qword_27CDEEAD8, &qword_27CDEEAB0, &qword_21CBAAAC0);
  sub_21C71F3FC();
  v17 = v29;
  v18 = v30;
  sub_21CB846E4();

  (*(v32 + 8))(v8, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v19 = v39;
  swift_getKeyPath();
  v39 = v19;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v20 = *(v19 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v21 = *(v19 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v22 != 0;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = v33;
  (*(v35 + 32))(v33, v17, v36);
  v27 = (v26 + *(v34 + 36));
  *v27 = KeyPath;
  v27[1] = sub_21C735744;
  v27[2] = v25;
  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAE0, &qword_21CBAAB10);
  sub_21C87C4DC();
  sub_21C87C618();
  sub_21CB84974();
  return sub_21C6EA794(v26, &qword_27CDEEAC0, &qword_21CBAAAD0);
}

uint64_t sub_21C875C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB82F84();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA18, &qword_21CBAAA10);
  v8 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA20, &qword_21CBAAA18);
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  sub_21C875FEC(v10);
  v32 = 0x756F636341646461;
  v33 = 0xEA0000000000746ELL;
  v19 = (a1 + *(type metadata accessor for PMAppAccountsList() + 44));
  v20 = *v19;
  v21 = *(v19 + 8);

  if ((v21 & 1) == 0)
  {
    sub_21CB85B04();
    v28 = v4;
    v22 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v29 + 8))(v7, v28);
    v20 = v31;
  }

  v23 = *(v20 + 16);

  sub_21C87C1D0();
  sub_21CB845E4();
  sub_21C6EA794(v10, &qword_27CDEEA18, &qword_21CBAAA10);
  v24 = v12[2];
  v24(v15, v18, v11);
  *a2 = 0;
  *(a2 + 8) = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA58, &qword_21CBAAA38);
  v24((a2 + *(v25 + 48)), v15, v11);
  v26 = v12[1];
  v26(v18, v11);
  return (v26)(v15, v11);
}

uint64_t sub_21C875FEC@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA38, &qword_21CBAAA20);
  v38 = *(v42 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v42);
  v4 = &v37 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA60, &qword_21CBAAA40);
  v40 = *(v43 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v43);
  v39 = &v37 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA68, &unk_21CBAAA48);
  v7 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v9 = (&v37 - v8);
  v10 = type metadata accessor for PMAppAccountsList();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C87D2B8(v45 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v19, type metadata accessor for PMAppAccountsListModel.Configuration);

  v20 = sub_21CB85C44();
  (*(*(v20 - 8) + 56))(v16, 1, 4, v20);
  v21 = sub_21C71382C(v19, v16);
  sub_21C87DFE0(v16, type metadata accessor for PMAppAccountsListModel.Configuration);
  v22 = sub_21C87DFE0(v19, type metadata accessor for PMAppAccountsListModel.Configuration);
  if (v21)
  {
    sub_21C87D2B8(v1, &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
    v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v24 = swift_allocObject();
    sub_21C87BFAC(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for PMAppAccountsList);
    *v9 = sub_21C87E7DC;
    v9[1] = v24;
    swift_storeEnumTagMultiPayload();
    sub_21C87C30C();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEA40, &unk_21CBAAA28);
    v26 = sub_21C6EADEC(&qword_27CDEEA48, &qword_27CDEEA38, &qword_21CBAAA20);
    v27 = sub_21C87C360();
    v45 = v42;
    v46 = MEMORY[0x277CE1350];
    v47 = v25;
    v48 = v26;
    v49 = MEMORY[0x277CE1340];
    v50 = v27;
    swift_getOpaqueTypeConformance2();
    return sub_21CB83494();
  }

  else
  {
    MEMORY[0x28223BE20](v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA70, &qword_21CBAAA58);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEEA78, &qword_27CDEEA70, &qword_21CBAAA58);
    sub_21CB83F54();
    sub_21CB85184();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA40, &unk_21CBAAA28);
    v30 = sub_21C6EADEC(&qword_27CDEEA48, &qword_27CDEEA38, &qword_21CBAAA20);
    v31 = sub_21C87C360();
    v32 = MEMORY[0x277CE1350];
    v33 = v39;
    v34 = v42;
    sub_21CB84974();
    (*(v38 + 8))(v4, v34);
    v35 = v40;
    v36 = v43;
    (*(v40 + 16))(v9, v33, v43);
    swift_storeEnumTagMultiPayload();
    sub_21C87C30C();
    v45 = v34;
    v46 = v32;
    v47 = v29;
    v48 = v30;
    v49 = MEMORY[0x277CE1340];
    v50 = v31;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v35 + 8))(v33, v36);
  }
}

uint64_t sub_21C8766F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC0, &qword_21CBAAC90);
  v3 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v43 - v4;
  v5 = type metadata accessor for PMAppAccountsList();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_21CB81024();
  v46 = *(v48 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9D8, &unk_21CBAA9C0);
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v47 = a1;
  sub_21CB85084();
  v18 = v57;
  swift_getKeyPath();
  v57 = v18;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v19 = *(v18 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v20 = *(v18 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = 1;
    v23 = v56;
  }

  else
  {
    v43 = v17;
    v44 = v13;
    v45 = v10;
    v24 = v47;
    sub_21CB85084();
    v25 = v57;
    swift_getKeyPath();
    v57 = v25;
    sub_21CB810D4();

    v26 = *(v25 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

    v27 = *(v26 + 16);

    sub_21CB85084();
    v28 = v57;
    swift_getKeyPath();
    v57 = v28;
    sub_21CB810D4();

    v29 = *(v28 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

    v30 = *(v29 + 16);

    v31 = (v46 + 8);
    sub_21CB81014();
    v32 = sub_21CB81004();
    v34 = v33;
    (*v31)(v9, v48);
    v57 = v32;
    v58 = v34;
    v35 = v51;
    sub_21C87D2B8(v24, v51, type metadata accessor for PMAppAccountsList);
    v36 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v37 = swift_allocObject();
    sub_21C87BFAC(v35, v37 + v36, type metadata accessor for PMAppAccountsList);
    sub_21C71F3FC();
    v38 = v44;
    sub_21CB84DE4();
    v39 = v52;
    v40 = v45;
    v41 = v43;
    (*(v52 + 16))(v53, v38, v45);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB83494();
    (*(v39 + 8))(v38, v40);
    v23 = v56;
    sub_21C716934(v41, v56, &qword_27CDEE9D8, &unk_21CBAA9C0);
    v22 = 0;
  }

  return (*(v54 + 56))(v23, v22, 1, v55);
}

uint64_t sub_21C876E30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  v0 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs;
  v1 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);
  *(v8 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs) = MEMORY[0x277D84FA0];
  swift_getKeyPath();
  sub_21CB810D4();

  v2 = *(v8 + v0);

  v3 = sub_21C7A2154(v1, v2);

  if ((v3 & 1) == 0)
  {
    v5 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
    v4 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);
    swift_getKeyPath();

    sub_21CB810D4();

    v6 = *(v8 + v0);

    v5(v1, v6);
  }

  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C877070()
{
  v0 = type metadata accessor for PMAccount(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v5 = v20;
  sub_21CB85084();
  v6 = v20;
  swift_getKeyPath();
  v20 = v6;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v7 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v8 = *(v7 + 16);
  if (v8)
  {
    v19 = v5;
    v20 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v8, 0);
    v9 = v20;
    v10 = v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v11 = *(v1 + 72);
    do
    {
      sub_21C87D2B8(v10, v4, type metadata accessor for PMAccount);
      v13 = *v4;
      v12 = v4[1];

      sub_21C87DFE0(v4, type metadata accessor for PMAccount);
      v20 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21C7B0C0C((v14 > 1), v15 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v17 = sub_21CB009AC(v9);

  sub_21C880484(v17);
}

uint64_t sub_21C877308@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v3 = type metadata accessor for PMAppAccountsList();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMPlatformRoleButton();
  v12 = a2 + *(v11 + 20);
  sub_21CB81F04();
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  sub_21C87D2B8(v21, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  result = sub_21C87BFAC(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMAppAccountsList);
  *a2 = v13;
  a2[1] = v15;
  v19 = (a2 + *(v11 + 24));
  *v19 = sub_21C87CA88;
  v19[1] = v17;
  return result;
}

uint64_t sub_21C87751C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8775A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_21CB831C4();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3);
  v73 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  *&v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v12 = type metadata accessor for PMAppAccountsList();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = v15;
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB98, &qword_21CBACD60);
  v22 = *(v21 - 8);
  v70 = v21 - 8;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v71 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v62 - v26;
  sub_21CB81ED4();
  v28 = sub_21CB81F14();
  (*(*(v28 - 8) + 56))(v20, 0, 1, v28);
  v68 = type metadata accessor for PMAppAccountsList;
  v65 = v16;
  sub_21C87D2B8(a1, v16, type metadata accessor for PMAppAccountsList);
  v29 = *(v13 + 80);
  v64 = (v29 + 16) & ~v29;
  v30 = swift_allocObject();
  v66 = type metadata accessor for PMAppAccountsList;
  sub_21C87BFAC(v16, v30 + ((v29 + 16) & ~v29), type metadata accessor for PMAppAccountsList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84D94();
  sub_21CB85084();
  v31 = v78;
  swift_getKeyPath();
  *&v78 = v31;
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v32 = *(v31 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v34 = sub_21C884770(v33);

  v35 = *(v34 + 16);

  LOBYTE(v32) = v35 == 0;
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  v38 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80) + 36)];
  *v38 = KeyPath;
  v38[1] = sub_21C87E800;
  v38[2] = v37;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v69 + 8))(v11, v8);
  v39 = v84;
  v40 = v85;
  v41 = v86;
  v77 = 1;
  swift_getKeyPath();
  v81 = v39;
  v82 = v40;
  v83 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v69 = v78;
  v62 = v79;
  v42 = v80;

  v43 = v65;
  sub_21C87D2B8(a1, v65, v68);
  v44 = v64;
  v45 = swift_allocObject();
  sub_21C87BFAC(v43, v45 + v44, v66);
  v46 = *(v70 + 44);
  v63 = v27;
  v47 = &v27[v46];
  v48 = v62;
  *v47 = v69;
  *(v47 + 1) = v48;
  *(v47 + 4) = v42;
  *(v47 + 5) = &unk_21CBAAC80;
  *(v47 + 6) = v45;
  v49 = v72;
  sub_21CB831B4();
  v50 = v27;
  v51 = v71;
  sub_21C6EDBAC(v50, v71, &qword_27CDEEB98, &qword_21CBACD60);
  LOBYTE(v78) = 1;
  v53 = v73;
  v52 = v74;
  v54 = *(v74 + 16);
  v55 = v75;
  v54(v73, v49, v75);
  v56 = v76;
  sub_21C6EDBAC(v51, v76, &qword_27CDEEB98, &qword_21CBACD60);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB8, &qword_21CBAAC88);
  v58 = v56 + *(v57 + 48);
  v59 = v78;
  *v58 = 0;
  *(v58 + 8) = v59;
  v54((v56 + *(v57 + 64)), v53, v55);
  v60 = *(v52 + 8);
  v60(v49, v55);
  sub_21C6EA794(v63, &qword_27CDEEB98, &qword_21CBACD60);
  v60(v53, v55);
  return sub_21C6EA794(v51, &qword_27CDEEB98, &qword_21CBACD60);
}

uint64_t sub_21C877D5C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v3 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v5 = sub_21C884770(v4);

  sub_21C884B98(v5, a2);
}

uint64_t sub_21C877EAC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_21CB858B4();
  v2[5] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C877F44, v4, v3);
}

uint64_t sub_21C877F44()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_21CB85254();
  sub_21CB82524();

  sub_21CB85084();
  v6 = v0[2];
  sub_21CB85254();
  sub_21CB82524();

  v7 = v0[1];

  return v7();
}

uint64_t sub_21C878088()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v29 - v3;
  v5 = sub_21CB85C44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB81024();
  v29[0] = *(v10 - 8);
  v11 = *(v29[0] + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  v17 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C87D2B8(v29[1] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v20, type metadata accessor for PMAppAccountsListModel.Configuration);

  v21 = (*(v6 + 48))(v20, 4, v5);
  if (v21 <= 1)
  {
    if (!v21)
    {
      (*(v6 + 32))(v9, v20, v5);
      v23 = *(v0 + *(type metadata accessor for PMAppAccountsList() + 28) + 8);
      sub_21CA1D444(v9, v4);
      v24 = type metadata accessor for PMSharingGroup();
      if ((*(*(v24 - 8) + 48))(v4, 1, v24) == 1)
      {
        sub_21C6EA794(v4, &qword_27CDF7670, &unk_21CBAA8F0);
        v22 = 0;
      }

      else
      {
        v26 = &v4[*(v24 + 20)];
        v22 = *v26;
        v27 = v26[1];

        sub_21C87DFE0(v4, type metadata accessor for PMSharingGroup);
      }

      (*(v6 + 8))(v9, v5);
      return v22;
    }

LABEL_12:
    sub_21CB81014();
    sub_21CB81014();
    v22 = sub_21CB80FF4();
    v25 = *(v29[0] + 8);
    v25(v13, v10);
    v25(v16, v10);
    return v22;
  }

  if (v21 == 2)
  {
    goto LABEL_12;
  }

  if (v21 != 3)
  {
    return 0;
  }

  if (qword_27CDEA4A0 != -1)
  {
    swift_once();
  }

  v22 = qword_27CE18758;

  return v22;
}

uint64_t sub_21C878514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_21CB832E4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC90, &qword_21CBAADA0) + 44);
  *v6 = sub_21CB83074();
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC98, &qword_21CBAADA8);
  return sub_21C8785A4(a1, a2, v6 + *(v7 + 44));
}

uint64_t sub_21C8785A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v5 = type metadata accessor for PMAppAccountsList();
  v47 = *(v5 - 8);
  v6 = *(v47 + 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEECA0, &qword_21CBAADB0);
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v51 = &v41[-v11];
  v12 = *(a1 + *(type metadata accessor for PMSharingGroup() + 24));
  sub_21CB13134(MEMORY[0x277D84F90]);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C328(KeyPath, v59);

  type metadata accessor for PMGroupMemberImageCache();
  sub_21C87E764(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache);
  v14 = sub_21CB82674();
  v16 = v15;

  *(&v54 + 1) = v14;
  *&v55 = v16;
  *(&v55 + 1) = swift_getKeyPath();
  v56 = 0;
  *&v52[0] = v12;
  *(v52 + 8) = xmmword_21CBAA500;
  *(&v52[1] + 1) = 5;
  *&v53 = 0x3FE0000000000000;
  BYTE8(v53) = 1;

  v17 = sub_21C867B48(MEMORY[0x277D84F98], v12, v52, 40.0);

  *&v54 = v17;
  v45 = sub_21CB832F4();
  sub_21C87906C(a1, &v59);
  v18 = *(&v59 + 1);
  v42 = v60;
  v43 = v59;
  v44 = *(&v60 + 1);
  v19 = v46;
  sub_21C87D2B8(v46, &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PMAppAccountsList);
  v20 = (v47[80] + 16) & ~v47[80];
  v21 = swift_allocObject();
  v22 = sub_21C87BFAC(&v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20, type metadata accessor for PMAppAccountsList);
  v47 = v41;
  MEMORY[0x28223BE20](v22);
  *&v41[-16] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEECB0, &qword_21CBAAE00);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECB8, &qword_21CBAAE08);
  v24 = sub_21CB83094();
  v25 = sub_21C6EADEC(&qword_27CDEECC0, &qword_27CDEECB8, &qword_21CBAAE08);
  v26 = sub_21C87E764(&qword_27CDEC0A8, MEMORY[0x277CDDE78]);
  *&v59 = v23;
  *(&v59 + 1) = v24;
  *&v60 = v25;
  *(&v60 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v51;
  sub_21CB84DA4();
  v28 = v48;
  v30 = v49;
  v29 = v50;
  v47 = *(v49 + 16);
  (v47)(v48, v27, v50);
  v31 = v54;
  v57[2] = v53;
  v57[3] = v54;
  v32 = v55;
  v57[4] = v55;
  v33 = v56;
  v58 = v56;
  v34 = v52[0];
  v35 = v52[1];
  v57[0] = v52[0];
  v57[1] = v52[1];
  *(a3 + 32) = v53;
  *(a3 + 48) = v31;
  *(a3 + 64) = v32;
  *(a3 + 80) = v33;
  *a3 = v34;
  *(a3 + 16) = v35;
  v36 = v44;
  *(a3 + 88) = v45;
  *(a3 + 96) = 0;
  *(a3 + 104) = 1;
  v37 = v43;
  *(a3 + 112) = v43;
  *(a3 + 120) = v18;
  LOBYTE(v27) = v42;
  *(a3 + 128) = v42;
  *(a3 + 136) = v36;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEECC8, &qword_21CBAAE10);
  (v47)(a3 + *(v38 + 80), v28, v29);
  sub_21C87CED0(v57, &v59);
  sub_21C79B058(v37, v18, v27);
  v39 = *(v30 + 8);

  v39(v51, v29);
  v39(v28, v29);
  sub_21C74A72C(v37, v18, v27);

  v61 = v53;
  v62 = v54;
  v63 = v55;
  v64 = v56;
  v59 = v52[0];
  v60 = v52[1];
  return sub_21C87CF2C(&v59);
}

uint64_t sub_21C878B9C(uint64_t a1)
{
  v2 = sub_21CB83094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEECB8, &qword_21CBAAE08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-v10];
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEECD0, &qword_21CBAAE18);
  sub_21C87CF88();
  sub_21CB84C84();
  sub_21CB83084();
  sub_21C6EADEC(&qword_27CDEECC0, &qword_27CDEECB8, &qword_21CBAAE08);
  sub_21C87E764(&qword_27CDEC0A8, MEMORY[0x277CDDE78]);
  sub_21CB840E4();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_21C878E10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C878F34@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_21CB84BB4();
  v7 = sub_21CB84A74();
  v8 = sub_21CB83DC4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = sub_21CB83E14();
  sub_21C6EA794(v5, &qword_27CDEBB58, &qword_21CBAF8A0);
  result = swift_getKeyPath();
  *a1 = v6;
  a1[1] = v7;
  a1[2] = result;
  a1[3] = v9;
  return result;
}

uint64_t sub_21C87906C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v16);
  v39 = &v37 - v17;
  MEMORY[0x28223BE20](v18);
  v40 = &v37 - v19;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v38 = sub_21CB81034();
  v20 = *(v38 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v24 = *(v3 + 8);
  v24(v6, v2);
  v24(v9, v2);
  v24(v12, v2);
  v24(v15, v2);
  swift_setDeallocating();
  (*(v20 + 8))(v23 + v22, v38);
  swift_deallocClassInstance();
  v25 = v40;
  sub_21CB81004();
  v24(v39, v2);
  v24(v25, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_21CBA0690;
  v27 = *(*(v41 + *(type metadata accessor for PMSharingGroup() + 24)) + 16);
  v28 = MEMORY[0x277D83C10];
  *(v26 + 56) = MEMORY[0x277D83B88];
  *(v26 + 64) = v28;
  *(v26 + 32) = v27;
  v29 = sub_21CB85594();
  v31 = v30;

  v43 = v29;
  v44 = v31;
  sub_21C71F3FC();
  result = sub_21CB84054();
  v33 = v42;
  *v42 = result;
  v33[1] = v34;
  *(v33 + 16) = v35 & 1;
  v33[3] = v36;
  return result;
}

uint64_t sub_21C87949C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for PMAppAccountsList();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_21C87D2B8(a1, &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
  v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v17 = swift_allocObject();
  sub_21C87BFAC(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMAppAccountsList);
  v18 = sub_21C87995C();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    sub_21C87D2B8(a1, &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsList);
    v22 = swift_allocObject();
    v23 = sub_21C87BFAC(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v16, type metadata accessor for PMAppAccountsList);
    MEMORY[0x28223BE20](v23);
    *(&v34 - 2) = v20;
    *(&v34 - 1) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    v24 = v34;
    sub_21CB84DA4();

    v25 = v35;
    v26 = v24;
    v27 = v36;
    (*(v35 + 32))(v12, v26, v36);
    v28 = 0;
    v29 = v27;
    v30 = v25;
  }

  else
  {
    v28 = 1;
    v30 = v35;
    v29 = v36;
  }

  (*(v30 + 56))(v12, v28, 1, v29);
  sub_21C6EDBAC(v12, v9, &qword_27CDEB8C0, &unk_21CBA26A0);
  v31 = v37;
  *v37 = sub_21C87C4A0;
  v31[1] = v17;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA80, &qword_21CBAAA90);
  sub_21C6EDBAC(v9, v31 + *(v32 + 48), &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C7335A8(sub_21C87C4A0, v17);
  sub_21C6EA794(v12, &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v9, &qword_27CDEB8C0, &unk_21CBA26A0);
  return sub_21C71B710(sub_21C87C4A0);
}

uint64_t sub_21C8798D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v1 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
  v0 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);

  v1(1, 0);
}

uint64_t sub_21C87995C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  v8 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C87D2B8(v16[1] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v11, type metadata accessor for PMAppAccountsListModel.Configuration);

  v12 = sub_21CB85C44();
  v13 = 0;
  if (!(*(*(v12 - 8) + 48))(v11, 4, v12))
  {
    sub_21CB81014();
    sub_21CB81014();
    v13 = sub_21CB80FF4();
    v14 = *(v1 + 8);
    v14(v4, v0);
    v14(v7, v0);
  }

  sub_21C87DFE0(v11, type metadata accessor for PMAppAccountsListModel.Configuration);
  return v13;
}

uint64_t sub_21C879BC0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  if (*(v5 + *a2) == 1)
  {
    *(v5 + *a2) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C879D00()
{
  sub_21C71F3FC();

  return sub_21CB84CB4();
}

uint64_t sub_21C879DA8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C879ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA38, &qword_21CBAAA20);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEA40, &unk_21CBAAA28);
  v7 = a2 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 2;
  return result;
}

uint64_t sub_21C879F84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a1;
  v98 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAF8, &qword_21CBAAB18);
  v96 = *(v93 - 8);
  v2 = *(v96 + 64);
  MEMORY[0x28223BE20](v93);
  v90 = &v71 - v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB00, &qword_21CBAAB20);
  v97 = *(v95 - 8);
  v4 = *(v97 + 64);
  MEMORY[0x28223BE20](v95);
  v89 = &v71 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB08, &qword_21CBAAB28);
  v92 = *(v94 - 8);
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v102 = &v71 - v9;
  v86 = sub_21CB82FC4();
  v104 = *(v86 - 8);
  v10 = *(v104 + 64);
  MEMORY[0x28223BE20](v86);
  v99 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v71 - v15;
  v17 = sub_21CB81024();
  v78 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB10, &qword_21CBAAB30);
  v83 = *(v82 - 8);
  v22 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  v24 = &v71 - v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB18, &qword_21CBAAB38);
  v85 = *(v84 - 8);
  v25 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  v27 = &v71 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB20, &qword_21CBAAB40);
  v101 = *(v88 - 8);
  v28 = v101[8];
  MEMORY[0x28223BE20](v88);
  v87 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v103 = &v71 - v31;
  sub_21CB81014();
  v32 = sub_21CB81004();
  v34 = v33;
  v35 = *(v18 + 8);
  v77 = v18 + 8;
  v79 = v35;
  v35(v21, v17);
  v113 = v32;
  v114 = v34;
  sub_21CB85094();
  swift_getKeyPath();
  v72 = v12;
  v73 = v16;
  sub_21CB850B4();

  v36 = *(v13 + 8);
  v74 = v13 + 8;
  v76 = v36;
  v36(v16, v12);
  v110 = v106;
  v111 = v107;
  v112 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB28, &qword_21CBAAB70);
  sub_21C87C6D0();
  sub_21C87C724();
  v81 = sub_21C71F3FC();
  v37 = v24;
  sub_21CB84E64();
  v38 = v99;
  sub_21CB82FB4();
  v80 = MEMORY[0x277CDF038];
  v39 = sub_21C6EADEC(&qword_27CDEEB40, &qword_27CDEEB10, &qword_21CBAAB30);
  v40 = MEMORY[0x277CDDDA0];
  v41 = v27;
  v42 = v82;
  v43 = v86;
  sub_21CB84194();
  v44 = *(v104 + 8);
  v104 += 8;
  v75 = v44;
  v44(v38, v43);
  (*(v83 + 8))(v37, v42);
  v106 = v42;
  v107 = v43;
  v108 = v39;
  v109 = v40;
  swift_getOpaqueTypeConformance2();
  v45 = v84;
  sub_21CB847F4();
  (*(v85 + 8))(v41, v45);
  sub_21CB81014();
  v46 = sub_21CB81004();
  v48 = v47;
  v79(v21, v78);
  v113 = v46;
  v114 = v48;
  v49 = v73;
  v50 = v72;
  v51 = v100;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v76(v49, v50);
  v110 = v106;
  v111 = v107;
  v112 = v108;
  v105 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB48, &qword_21CBAABA0);
  sub_21C87C7DC();
  sub_21C6EADEC(&qword_27CDEEB58, &qword_27CDEEB48, &qword_21CBAABA0);
  v52 = v90;
  sub_21CB84E64();
  v53 = v99;
  sub_21CB82FB4();
  v54 = sub_21C6EADEC(&qword_27CDEEB60, &qword_27CDEEAF8, &qword_21CBAAB18);
  v55 = v89;
  v56 = v93;
  sub_21CB84194();
  v75(v53, v43);
  (*(v96 + 8))(v52, v56);
  v106 = v56;
  v107 = v43;
  v108 = v54;
  v109 = v40;
  swift_getOpaqueTypeConformance2();
  v57 = v102;
  v58 = v95;
  sub_21CB847F4();
  (*(v97 + 8))(v55, v58);
  v59 = v101[2];
  v60 = v87;
  v61 = v88;
  v59(v87, v103, v88);
  v62 = v92;
  v63 = *(v92 + 16);
  v64 = v91;
  v65 = v94;
  v63(v91, v57, v94);
  v66 = v98;
  v59(v98, v60, v61);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB68, &qword_21CBAABA8);
  v63(&v66[*(v67 + 48)], v64, v65);
  v68 = *(v62 + 8);
  v68(v102, v65);
  v69 = v101[1];
  v69(v103, v61);
  v68(v64, v65);
  return (v69)(v60, v61);
}

uint64_t sub_21C87AB28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB80, &qword_21CBAABC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEEB88, &qword_27CDEEB80, &qword_21CBAABC8);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C87C830();
  return sub_21CB84FF4();
}

uint64_t sub_21C87AC50(unsigned __int8 *a1)
{
  sub_21CB3FC5C(*a1);
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C87AD38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v65 = sub_21CB81024();
  v55 = *(v65 - 8);
  v3 = v55[8];
  MEMORY[0x28223BE20](v65);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v66 = *(v64 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB70, &unk_21CBAABB0);
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v61 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = &v51 - v16;
  MEMORY[0x28223BE20](v17);
  v56 = &v51 - v18;
  MEMORY[0x28223BE20](v19);
  v58 = &v51 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  MEMORY[0x28223BE20](v24);
  v63 = &v51 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v57 = a1;
  sub_21CB85084();
  v26 = v67;
  swift_getKeyPath();
  v67 = v26;
  v54 = sub_21C87E764(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v27 = *(v26 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);

  v28 = v55 + 1;
  sub_21CB81014();
  v29 = sub_21CB81004();
  v31 = v30;
  v32 = *v28;
  v55 = v28;
  v52 = v32;
  v32(v5, v65);
  v67 = v29;
  v68 = v31;
  v53 = sub_21C71F3FC();
  sub_21CB84CB4();
  v33 = *(v66 + 32);
  v66 += 32;
  v51 = v33;
  v33(v23, v10, v64);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4F0, &unk_21CB9E600);
  *&v23[*(v34 + 36)] = 256;
  v35 = v12[4];
  v35(v63, v23, v11);
  sub_21CB85084();
  v36 = v67;
  swift_getKeyPath();
  v67 = v36;
  sub_21CB810D4();

  LOBYTE(v31) = *(v36 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);

  sub_21CB81014();
  v37 = sub_21CB81004();
  v39 = v38;
  v52(v5, v65);
  v67 = v37;
  v68 = v39;
  v40 = v59;
  sub_21CB84CB4();
  v41 = v56;
  v51(v56, v40, v64);
  *&v41[*(v34 + 36)] = 257;
  v42 = v58;
  v35(v58, v41, v11);
  v43 = v12[2];
  v44 = v60;
  v45 = v63;
  v43(v60, v63, v11);
  v46 = v61;
  v43(v61, v42, v11);
  v47 = v62;
  v43(v62, v44, v11);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB78, &qword_21CBAABC0);
  v43(&v47[*(v48 + 48)], v46, v11);
  v49 = v12[1];
  v49(v42, v11);
  v49(v45, v11);
  v49(v46, v11);
  return (v49)(v44, v11);
}

uint64_t sub_21C87B410()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C87B544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_21C6EDBAC(a1, a2, &qword_27CDEEAC0, &qword_21CBAAAD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEAE0, &qword_21CBAAB10);
  v6 = a2 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 2;
  return result;
}

unint64_t sub_21C87B60C()
{
  result = qword_27CDEE830;
  if (!qword_27CDEE830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE7F8, &qword_21CBAA6B0);
    sub_21C87B690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE830);
  }

  return result;
}

unint64_t sub_21C87B690()
{
  result = qword_27CDEE838;
  if (!qword_27CDEE838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE840, &qword_21CBAA6E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE848, &qword_21CBAA6F0);
    sub_21C6EADEC(&qword_27CDEE850, &qword_27CDEE848, &qword_21CBAA6F0);
    swift_getOpaqueTypeConformance2();
    sub_21C87B78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE838);
  }

  return result;
}

unint64_t sub_21C87B78C()
{
  result = qword_27CDEE858;
  if (!qword_27CDEE858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE860, &qword_21CBAA6F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE868, &qword_21CBAA700);
    sub_21C87B854();
    swift_getOpaqueTypeConformance2();
    sub_21C87BA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE858);
  }

  return result;
}

unint64_t sub_21C87B854()
{
  result = qword_27CDEE870;
  if (!qword_27CDEE870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE868, &qword_21CBAA700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE878, &qword_21CBAA708);
    type metadata accessor for PMAppAccountsListModel(255);
    sub_21C87B960();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE870);
  }

  return result;
}

unint64_t sub_21C87B960()
{
  result = qword_27CDEE880;
  if (!qword_27CDEE880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE878, &qword_21CBAA708);
    sub_21C6EADEC(&qword_27CDEE888, &qword_27CDEE890, &qword_21CBAA710);
    sub_21C6EADEC(&qword_27CDEE898, &qword_27CDEE8A0, &unk_21CBAA718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE880);
  }

  return result;
}

unint64_t sub_21C87BA44()
{
  result = qword_27CDEE8A8;
  if (!qword_27CDEE8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8B0, &unk_21CBAA728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE868, &qword_21CBAA700);
    sub_21C87B854();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE8A8);
  }

  return result;
}

unint64_t sub_21C87BB48()
{
  result = qword_27CDEE8D8;
  if (!qword_27CDEE8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8D0, &qword_21CBAA750);
    sub_21C6EADEC(&qword_27CDEE8E0, &qword_27CDEE8E8, &qword_21CBAA758);
    sub_21C6EADEC(&qword_27CDEE8F0, &qword_27CDEE8F8, &qword_21CBAA760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE8D8);
  }

  return result;
}

unint64_t sub_21C87BC40()
{
  result = qword_27CDEE908;
  if (!qword_27CDEE908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE900, &unk_21CBAA790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB90, &qword_21CBA5268);
    sub_21CB83994();
    sub_21C815788();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE908);
  }

  return result;
}

unint64_t sub_21C87BD58()
{
  result = qword_27CDEE930;
  if (!qword_27CDEE930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE928, &qword_21CBAA828);
    sub_21C87E764(&qword_27CDEE938, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE930);
  }

  return result;
}

uint64_t sub_21C87BE24(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppAccountsList() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21C87BEA8()
{
  result = qword_27CDEE960;
  if (!qword_27CDEE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE960);
  }

  return result;
}

uint64_t sub_21C87BF3C(char a1)
{
  v2 = *(*(type metadata accessor for PMAppAccountsList() - 8) + 80);

  return sub_21C86F2EC(a1 & 1);
}

uint64_t sub_21C87BFAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C87C01C()
{
  result = qword_27CDEE9C8;
  if (!qword_27CDEE9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE9C0, &qword_21CBAA9B8);
    sub_21C87C0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE9C8);
  }

  return result;
}

unint64_t sub_21C87C0A0()
{
  result = qword_27CDEE9D0;
  if (!qword_27CDEE9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE9D0);
  }

  return result;
}

uint64_t sub_21C87C174@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E44();
  *a1 = result;
  return result;
}

unint64_t sub_21C87C1D0()
{
  result = qword_27CDEEA28;
  if (!qword_27CDEEA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEA18, &qword_21CBAAA10);
    sub_21C87C30C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEA38, &qword_21CBAAA20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEA40, &unk_21CBAAA28);
    sub_21C6EADEC(&qword_27CDEEA48, &qword_27CDEEA38, &qword_21CBAAA20);
    sub_21C87C360();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEA28);
  }

  return result;
}

unint64_t sub_21C87C30C()
{
  result = qword_27CDEEA30;
  if (!qword_27CDEEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEA30);
  }

  return result;
}

unint64_t sub_21C87C360()
{
  result = qword_27CDEEA50;
  if (!qword_27CDEEA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEA40, &unk_21CBAAA28);
    sub_21C6EADEC(&qword_27CDEEA48, &qword_27CDEEA38, &qword_21CBAAA20);
    sub_21C6EADEC(&qword_27CDEB758, &qword_27CDEB760, &qword_21CBA2520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEA50);
  }

  return result;
}

uint64_t sub_21C87C4CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21C879D00();
}

unint64_t sub_21C87C4DC()
{
  result = qword_27CDEEAE8;
  if (!qword_27CDEEAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEAC0, &qword_21CBAAAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEAB0, &qword_21CBAAAC0);
    sub_21C6EADEC(&qword_27CDEEAD8, &qword_27CDEEAB0, &qword_21CBAAAC0);
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEAE8);
  }

  return result;
}

unint64_t sub_21C87C618()
{
  result = qword_27CDEEAF0;
  if (!qword_27CDEEAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEAE0, &qword_21CBAAB10);
    sub_21C87C4DC();
    sub_21C6EADEC(&qword_27CDEB758, &qword_27CDEB760, &qword_21CBA2520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEAF0);
  }

  return result;
}

unint64_t sub_21C87C6D0()
{
  result = qword_27CDEEB30;
  if (!qword_27CDEEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEB30);
  }

  return result;
}

unint64_t sub_21C87C724()
{
  result = qword_27CDEEB38;
  if (!qword_27CDEEB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEB28, &qword_21CBAAB70);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEB38);
  }

  return result;
}

unint64_t sub_21C87C7DC()
{
  result = qword_27CDEEB50;
  if (!qword_27CDEEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEB50);
  }

  return result;
}

unint64_t sub_21C87C830()
{
  result = qword_27CDEEB90;
  if (!qword_27CDEEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEB90);
  }

  return result;
}

unint64_t sub_21C87C924()
{
  result = qword_27CDEEBA8;
  if (!qword_27CDEEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEBA8);
  }

  return result;
}

uint64_t sub_21C87C978(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppAccountsList() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21C877EAC(a1, v1 + v5);
}

unint64_t sub_21C87CAD0()
{
  result = qword_27CDEEC30;
  if (!qword_27CDEEC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEC18, &qword_21CBAAD20);
    sub_21C87E764(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEC30);
  }

  return result;
}

unint64_t sub_21C87CB84()
{
  result = qword_27CDEEC38;
  if (!qword_27CDEEC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEC00, &qword_21CBAAD08);
    sub_21C87E764(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEC38);
  }

  return result;
}

unint64_t sub_21C87CC48()
{
  result = qword_27CDEEC68;
  if (!qword_27CDEEC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEC60, &qword_21CBAAD50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEC70, &qword_21CBAAD58);
    sub_21C6EADEC(&qword_27CDEEC78, &qword_27CDEEC70, &qword_21CBAAD58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEC68);
  }

  return result;
}

uint64_t sub_21C87CD50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMSharingGroup() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAppAccountsList() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21C878514(v1 + v4, v7, a1);
}

unint64_t sub_21C87CF88()
{
  result = qword_27CDEECD8;
  if (!qword_27CDEECD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECD0, &qword_21CBAAE18);
    sub_21C87D040();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEECD8);
  }

  return result;
}

unint64_t sub_21C87D040()
{
  result = qword_27CDEECE0;
  if (!qword_27CDEECE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECE8, &unk_21CBAAE20);
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEECE0);
  }

  return result;
}

uint64_t sub_21C87D118(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[20];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21CA4269C(v8, a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_21C87D220(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PMAppAccountsList() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_21C87D2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C87D320(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppAccountsList() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21C8721B0(a1, v1 + v5);
}

void sub_21C87D400(uint64_t a1, uint64_t *a2)
{
  v5 = *(sub_21CB82964() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PMAppAccountsList() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_21C8716AC(a1, a2);
}

unint64_t sub_21C87D4E4()
{
  result = qword_27CDEED68;
  if (!qword_27CDEED68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEED28, &qword_21CBAAF68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEED18, &qword_21CBAAF58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEED10, &qword_21CBAAF50);
    sub_21C6EADEC(&qword_27CDEED60, &qword_27CDEED10, &qword_21CBAAF50);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C847DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEED68);
  }

  return result;
}

unint64_t sub_21C87D624()
{
  result = qword_27CDEED70;
  if (!qword_27CDEED70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED260, &qword_21CBA1C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEED70);
  }

  return result;
}

unint64_t sub_21C87D6CC()
{
  result = qword_27CDEED78;
  if (!qword_27CDEED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEED78);
  }

  return result;
}

uint64_t objectdestroy_227Tm()
{
  v1 = type metadata accessor for PMAppAccountsList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v24 = *(*(v1 - 1) + 64);
  v26 = sub_21CB82964();
  v4 = *(v26 - 8);
  v5 = *(v4 + 80);
  v25 = *(v4 + 64);
  v6 = v0 + v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB82834();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB82A34();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  else
  {
    v13 = *(v6 + v11);
  }

  v14 = *(v6 + v1[7] + 8);

  v15 = *(v6 + v1[8] + 8);

  v16 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB83834();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v6 + v16, 1, v17))
    {
      (*(v18 + 8))(v6 + v16, v17);
    }
  }

  else
  {
    v19 = *(v6 + v16);
  }

  v20 = (v3 + v24 + v5) & ~v5;
  v21 = *(v6 + v1[10]);

  v22 = *(v6 + v1[11]);

  (*(v4 + 8))(v0 + v20, v26);

  return MEMORY[0x2821FE8E8](v0, v20 + v25, v2 | v5 | 7);
}

unint64_t sub_21C87DA88()
{
  result = qword_27CDEED80;
  if (!qword_27CDEED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEED80);
  }

  return result;
}

uint64_t sub_21C87DADC(uint64_t a1)
{
  v3 = *(sub_21CB82964() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C871AFC(a1, v4);
}

uint64_t sub_21C87DBE4(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_21CB82964() - 8);
  return a2(v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80)));
}

unint64_t sub_21C87DCD4()
{
  result = qword_27CDEEDD0;
  if (!qword_27CDEEDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEDA8, &qword_21CBAAFE0);
    sub_21C87DD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEDD0);
  }

  return result;
}

unint64_t sub_21C87DD58()
{
  result = qword_27CDEEDD8;
  if (!qword_27CDEEDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEDE0, &qword_21CBAB028);
    sub_21C87DE10();
    sub_21C6EADEC(&qword_27CDEEE00, &qword_27CDEEE08, &qword_21CBAB040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEDD8);
  }

  return result;
}

unint64_t sub_21C87DE10()
{
  result = qword_27CDEEDE8;
  if (!qword_27CDEEDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEDF0, &unk_21CBAB030);
    sub_21C87DED8();
    sub_21C87E764(&qword_27CDEEDC8, type metadata accessor for PMAppAccountsCollectionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEDE8);
  }

  return result;
}

unint64_t sub_21C87DED8()
{
  result = qword_27CDEEDF8;
  if (!qword_27CDEEDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF4130, &qword_21CBB1B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEDF8);
  }

  return result;
}

uint64_t sub_21C87DF6C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppAccountsList() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C87DFE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C87E040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAppAccountsList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C8741C4(a1, v6, a2);
}

uint64_t sub_21C87E0C0@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_21C874594(v1[4], v1[5], a1);
}

unint64_t sub_21C87E15C()
{
  result = qword_27CDEEE48;
  if (!qword_27CDEEE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE948, &qword_21CBAA890);
    sub_21C87E218();
    sub_21C87E764(&qword_27CDEEE60, type metadata accessor for PMContentListSearchable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEE48);
  }

  return result;
}

unint64_t sub_21C87E218()
{
  result = qword_27CDEEE50;
  if (!qword_27CDEEE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE940, &qword_21CBAA860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE828, &qword_21CBAA6E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDD0, &qword_21CBB0460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE820, &qword_21CBAA6D8);
    _s19IdentifiableGroupIDVMa();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE928, &qword_21CBAA828);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE818, &qword_21CBAA6D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE910, &qword_21CBAA7C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE810, &qword_21CBAA6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE900, &unk_21CBAA790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE808, &qword_21CBAA6C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8C0, &qword_21CBAA740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE800, &qword_21CBAA6B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8B8, &qword_21CBAA738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE7F8, &qword_21CBAA6B0);
    sub_21C87B60C();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8C8, &qword_21CBAA748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE8D0, &qword_21CBAA750);
    sub_21C87BB48();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C87BC40();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE918, &qword_21CBAA7D0);
    sub_21CB83994();
    sub_21C6EADEC(&qword_27CDEE920, &qword_27CDEE918, &qword_21CBAA7D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C87E764(&qword_27CDED9F0, _s19IdentifiableGroupIDVMa);
    sub_21C87BD58();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PMGeneratedPasswordsLogView();
    sub_21C87E764(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C87E710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEE50);
  }

  return result;
}

unint64_t sub_21C87E710()
{
  result = qword_27CDEEE58;
  if (!qword_27CDEEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEE58);
  }

  return result;
}

uint64_t sub_21C87E764(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C87E804@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 48);
  swift_unknownObjectRetain();
  v8 = v7(ObjectType, v5);
  result = swift_unknownObjectRelease();
  *a2 = v8;
  return result;
}

uint64_t sub_21C87E898(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84F90];
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v8 + 24);
    v15 = *(v9 + 72);

    do
    {
      sub_21C7106A8(v13, v11, type metadata accessor for PMAccount);
      sub_21C7106A8(&v11[v14], v5, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7126DC(v5, type metadata accessor for PMAccount.Storage);
        sub_21C7126DC(v11, type metadata accessor for PMAccount);
      }

      else
      {
        v16 = *v5;
        v17 = sub_21C7126DC(v11, type metadata accessor for PMAccount);
        MEMORY[0x21CF15300](v17);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21CB85834();
        }

        sub_21CB85854();
      }

      v13 += v15;
      --v12;
    }

    while (v12);
  }

  v18 = objc_opt_self();
  sub_21C897E98();

  v19 = sub_21CB85814();

  [v18 configurationForDeletingSavedAccounts_];

  return a1;
}

unint64_t sub_21C87EB50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    result = sub_21C8D4700(a1, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
  }

  else
  {
    v13 = *v4;
    result = sub_21CB109D0(a4 & 1);
    if (v14)
    {
      v15 = result;
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v23 = *v5;
      if (!v17)
      {
        sub_21C8D5EEC();
        v18 = v23;
      }

      v19 = (*(v18 + 56) + 24 * v15);
      v20 = *v19;
      v21 = v19[2];

      result = sub_21CADB35C(v15, v18);
      *v5 = v18;
    }
  }

  return result;
}

unint64_t sub_21C87EC3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    result = sub_21C8D4880(a1, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
  }

  else
  {
    v13 = *v4;
    result = sub_21CB109D0(a4 & 1);
    if (v14)
    {
      v15 = result;
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v23 = *v5;
      if (!v17)
      {
        sub_21C8D606C();
        v18 = v23;
      }

      v19 = *(v18 + 56) + 24 * v15;
      v20 = *v19;
      v21 = *(v19 + 8);

      result = sub_21CADB35C(v15, v18);
      *v5 = v18;
    }
  }

  return result;
}