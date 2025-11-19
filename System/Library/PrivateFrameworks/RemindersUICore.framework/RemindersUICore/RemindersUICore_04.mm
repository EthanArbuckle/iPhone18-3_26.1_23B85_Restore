uint64_t sub_21D127E84()
{
  v1 = (type metadata accessor for TTRTableViewDiff(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_21DBF5B9C();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  v6(v4 + v1[8], v5);

  v6(v4 + v1[10], v5);

  return swift_deallocObject();
}

uint64_t sub_21D128014()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D128074@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1280C4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D12811C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D12816C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D1281E4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

id sub_21D128264@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v4.receiver = *a1;
  v4.super_class = type metadata accessor for TTRIOutlineDisclosureButton();
  result = objc_msgSendSuper2(&v4, sel_isSelected);
  *a2 = result;
  return result;
}

id sub_21D1282B0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 changesSelectionAsPrimaryAction];
  *a2 = result;
  return result;
}

uint64_t sub_21D1282F8()
{

  return swift_deallocObject();
}

uint64_t sub_21D128330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D1283EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D1284A8()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D1284E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D1285A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D12866C()
{
  v1 = sub_21DBF813C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D128708()
{

  return swift_deallocObject();
}

uint64_t sub_21D128760()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D1287FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D128834()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21D128874()
{

  return swift_deallocObject();
}

uint64_t sub_21D1288AC()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_21D1288FC()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_21D128994()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_21D1289D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D128A24(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_21D128A88(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D128A98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_21D128AE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_21D128B50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_21DBF8E0C();
}

uint64_t sub_21D128BB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_isMultiSelected;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21D128C14()
{

  return swift_deallocObject();
}

id sub_21D128C60()
{
  v1 = [*v0 spatialEventTrigger];

  return v1;
}

uint64_t sub_21D128C9C()
{

  return swift_deallocObject();
}

uint64_t sub_21D128D04()
{

  return swift_deallocObject();
}

uint64_t sub_21D128D7C()
{

  return swift_deallocObject();
}

__n128 sub_21D128E04(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void *sub_21D128E10(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D128E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D128F34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF54CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D12900C()
{

  return swift_deallocObject();
}

uint64_t sub_21D129078()
{

  return swift_deallocObject();
}

uint64_t _s15RemindersUICore26TTRReminderLocationOptionsVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = v3;
  v6 = v4;
  return a1;
}

__n128 sub_21D129118(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D129138()
{

  return swift_deallocObject();
}

uint64_t sub_21D129170()
{

  return swift_deallocObject();
}

uint64_t sub_21D1291A8()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D1291E0()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for TTRIMenuItem() - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[12], v1);

  return swift_deallocObject();
}

uint64_t sub_21D1292FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF78CC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D129368(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF78CC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D1293D8()
{

  return swift_deallocObject();
}

void *_s15RemindersUICore41TTRIReminderCellQuickBarLocationViewModelVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D129468()
{

  return swift_deallocObject();
}

uint64_t sub_21D1294CC()
{

  return swift_deallocObject();
}

uint64_t sub_21D129510()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D129548()
{

  return swift_deallocObject();
}

uint64_t sub_21D129588@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1295E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D129650@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_accessibilityDifferentiateWithoutColorsIcon);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_21DBF8E0C();
}

void sub_21D1296A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21DBF8E0C();
  sub_21D369E00(v1, v2);
}

id sub_21D1296E8@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label) numberOfLines];
  *a2 = result == 0;
  return result;
}

uint64_t sub_21D129760()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t _s15RemindersUICore37TTRRemindersBoardCellInfoButtonStatesVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D129824()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_21D1298B0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_21D129944()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v0 + 32);
  if (v4)
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 144) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_21D129A40()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_21DBF509C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_21D129BD0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_21D129C64()
{
  v1 = *(v0 + 16);
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  (*(v5 + 8))(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_21D129D68()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_21D129E54()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D129F28()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D129FF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D12A03C()
{

  return swift_deallocObject();
}

uint64_t sub_21D12A090()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D12A0C8()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D12A100()
{

  return swift_deallocObject();
}

uint64_t sub_21D12A144()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *_s15RemindersUICore32TTRUserActivityMetadataInteratorC17BlankAppIconEntryVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = v3;
  return a1;
}

void *_s15RemindersUICore32TTRUserActivityMetadataInteratorC15OperationParamsVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  return a1;
}

uint64_t sub_21D12A1EC()
{

  return swift_deallocObject();
}

uint64_t sub_21D12A224@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D12A274(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D12A2E4()
{

  return swift_deallocObject();
}

uint64_t sub_21D12A368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21D3D07F8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21D12A3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21D3D08A0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21D12A430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21D3D084C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21D12A494@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DBF95DC();
  *a1 = result;
  return result;
}

uint64_t sub_21D12A86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 40);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_21D12A9B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21D12ABD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21D12AD00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF65CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21D12AE30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21D12AF64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_21DBF65CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21D12B098(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[12];
LABEL_13:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_14;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[13];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[15];

  return v19(v20, a2, v18);
}

uint64_t sub_21D12B290(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5]) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[12];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[15];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_21D12B47C()
{
  v1 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_21DBF65CC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0);

  v6 = v1[12];
  v7 = sub_21DBF774C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = v1[13];
  v10 = sub_21DBF56BC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  v12 = v1[15];
  v13 = sub_21DBF563C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v3 + v12, v13);
  }

  v16 = v1[16];
  if (!v15(v3 + v16, 1, v13))
  {
    (*(v14 + 8))(v3 + v16, v13);
  }

  sub_21D3C8A88(*(v3 + v1[18]), *(v3 + v1[18] + 8));

  sub_21D3C8A88(*(v3 + v1[23]), *(v3 + v1[23] + 8));

  return swift_deallocObject();
}

uint64_t sub_21D12B8A8@<X0>(uint64_t a1@<X8>)
{
  result = sub_21DBF969C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21D12B90C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DBF967C();
  *a1 = result;
  return result;
}

uint64_t sub_21D12B9D0()
{
  v1 = sub_21DBF56BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
  v6 = *(*(v5 - 1) + 80);
  swift_unknownObjectRelease();
  v20 = *(v2 + 8);
  v20(v0 + v3, v1);
  v7 = v0 + ((v3 + v4 + v6) & ~v6);
  v8 = sub_21DBF65CC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0);

  v10 = v5[12];
  v11 = sub_21DBF774C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = v5[13];
  if (!(*(v2 + 48))(v7 + v13, 1, v1))
  {
    v20(v7 + v13, v1);
  }

  v14 = v5[15];
  v15 = sub_21DBF563C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v7 + v14, 1, v15))
  {
    (*(v16 + 8))(v7 + v14, v15);
  }

  v18 = v5[16];
  if (!v17(v7 + v18, 1, v15))
  {
    (*(v16 + 8))(v7 + v18, v15);
  }

  sub_21D3C8A88(*(v7 + v5[18]), *(v7 + v5[18] + 8));

  sub_21D3C8A88(*(v7 + v5[23]), *(v7 + v5[23] + 8));

  return swift_deallocObject();
}

uint64_t sub_21D12BDE0()
{
  v1 = type metadata accessor for TTRSpotlightListView.ListView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  v4 = sub_21DBF65CC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[8];
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  sub_21D3C8A88(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  sub_21D3C8A88(*(v2 + v1[15]), *(v2 + v1[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_21D12BFD4()
{
  v1 = sub_21DBF56BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for TTRSpotlightListView.ListView(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  swift_unknownObjectRelease();
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  v8 = v0 + v6;

  v9 = v5[6];
  v10 = sub_21DBF65CC();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  v11 = v5[8];
  if (!(*(v2 + 48))(v8 + v11, 1, v1))
  {
    v7(v8 + v11, v1);
  }

  sub_21D3C8A88(*(v8 + v5[10]), *(v8 + v5[10] + 8));

  sub_21D3C8A88(*(v8 + v5[15]), *(v8 + v5[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_21D12C228()
{
  v1 = type metadata accessor for TTRSpotlightListView.ListView(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  v5 = v1[6];
  v6 = sub_21DBF65CC();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  v7 = v1[8];
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  sub_21D3C8A88(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  sub_21D3C8A88(*(v4 + v1[15]), *(v4 + v1[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_21D12C438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B880);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_21D12C590(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B880);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21D12C724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21D12C7F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21D12C8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B880);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_21D12C950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B880);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t _s15RemindersUICore9ListBadgeV14IconBackgroundVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_21D12CAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21DBF54CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D12CB98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21DBF54CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D12CC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D12CCF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D12CDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D12CE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D12CE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D12CF54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D12D01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21DBF54CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D12D0C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21DBF54CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D12D16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21DBF54CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D12D218(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21DBF54CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

_BYTE *sub_21D12D300@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = 0xE90000000000006CLL;
  v4 = 0xD000000000000012;
  v5 = 0x800000021DC43A70;
  if (v2 != 1)
  {
    v4 = 0xD000000000000018;
    v5 = 0x800000021DC43A90;
  }

  v6 = v2 == 0;
  if (*result)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x65646F4D65736162;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a2 = v7;
  a2[1] = v3;
  return result;
}

uint64_t sub_21D12D368()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D12D3A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D12D3F8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D12D450()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12D4A0()
{

  return swift_deallocObject();
}

uint64_t sub_21D12D4D8()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21D12D518()
{

  return swift_deallocObject();
}

uint64_t sub_21D12D568()
{

  return swift_deallocObject();
}

uint64_t sub_21D12D5A4()
{

  return swift_deallocObject();
}

uint64_t sub_21D12D600()
{

  return swift_deallocObject();
}

uint64_t sub_21D12D674@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D12D6C4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D12D720()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D12D758()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_21D12D864()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D12D980()
{

  return swift_deallocObject();
}

uint64_t sub_21D12D9CC()
{

  return swift_deallocObject();
}

uint64_t sub_21D12DA0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D12DA5C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D12DAC4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + v2);
  if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {

    v6 = *(type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0) + 20);
    v7 = sub_21DBF74FC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21D12DC70()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {

    v9 = *(type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0) + 20);
    v10 = sub_21DBF74FC();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  v12 = sub_21DBF76AC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v5, 1, v12))
  {
    (*(v13 + 8))(v0 + v5, v12);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12DEF0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF757C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12E048()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF757C();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12E274()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF745C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12E3CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF745C();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12E5F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF713C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12E750()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF713C();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12E97C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF6DBC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12EAD4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF6DBC();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12ED00()
{

  sub_21D43A134(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_21D12ED54()
{

  sub_21D43A134(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21D12ED98()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF700C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12EEF0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF700C();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12F11C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF6C5C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12F274()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF6C5C();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12F4A0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF6E4C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12F5F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF6E4C();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12F824()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF6DBC();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21D12F9D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF6DBC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1, v7))
    {
      (*(v8 + 8))(v6, v7);
    }
  }

  v9 = sub_21DBF76AC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v5, 1, v9))
  {
    (*(v10 + 8))(v0 + v5, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12FC50()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF729C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12FDA8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF729C();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D12FFD4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF69DC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    v5 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  }

  return swift_deallocObject();
}

uint64_t sub_21D130130()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF706C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D130288()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF706C();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D1304B4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF6F2C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D13060C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF6F2C();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D130838()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF773C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D130990()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF773C();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D130BC4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF75EC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D130D1C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF75EC();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D130F48()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v3 = sub_21DBF760C();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v0 + v2, 1, v3))
    {
      (*(v4 + 8))(v0 + v2, v3);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21D1310CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v3 = sub_21DBF760C();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v0 + v2, 1, v3))
    {
      (*(v4 + 8))(v0 + v2, v3);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21D131230()
{

  return swift_deallocObject();
}

uint64_t sub_21D131268()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D131338()
{

  return swift_deallocObject();
}

uint64_t sub_21D131370()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF73CC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D1314C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF73CC();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

__n128 sub_21D131A38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D131A44()
{

  return swift_deallocObject();
}

uint64_t sub_21D131A94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21D440628();
  *a1 = result & 1;
  return result;
}

__n128 sub_21D131AF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_21D131B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D131C30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

id sub_21D131CEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_21D131D48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D131D80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D131DC0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for TTRDateChangeType();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_21D131E64(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for TTRDateChangeType();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D131F3C()
{

  return swift_deallocObject();
}

uint64_t sub_21D131F84()
{

  return swift_deallocObject();
}

uint64_t sub_21D131FC0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_21DBF509C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_21D1320E0()
{
  v1 = sub_21DBF509C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D1321A8()
{
  v1 = sub_21DBF509C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D13226C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D1322CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D132344(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21D1323D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D13248C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF5B9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D132544@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D132594(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D1325F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13262C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13266C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21D132734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_21D1327F4()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D132830@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13288C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D132930()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D13296C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1329C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21D132A20(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_21D132A94()
{

  return swift_deallocObject();
}

uint64_t sub_21D132AE0()
{

  return swift_deallocObject();
}

uint64_t sub_21D132B18()
{

  return swift_deallocObject();
}

uint64_t sub_21D132B58()
{

  return swift_deallocObject();
}

uint64_t *_s15RemindersUICore20TTRIQuickBarProviderC16IntegrationPointOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_21D47C69C(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_21D132BE4()
{

  return swift_deallocObject();
}

uint64_t sub_21D132C30()
{

  return swift_deallocObject();
}

uint64_t sub_21D132C70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_21D132CC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D132D08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D132D40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D132D78()
{

  return swift_deallocObject();
}

uint64_t sub_21D132E44()
{

  return swift_deallocObject();
}

uint64_t sub_21D132E7C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D132EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21D132F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21D13310C()
{

  return swift_deallocObject();
}

uint64_t sub_21D133154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21D133278(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21D13339C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1333D4()
{

  return swift_deallocObject();
}

uint64_t sub_21D13340C()
{

  return swift_deallocObject();
}

uint64_t sub_21D133444()
{

  return swift_deallocObject();
}

uint64_t sub_21D133490()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D1334C8()
{

  return swift_deallocObject();
}

uint64_t sub_21D133510()
{

  return swift_deallocObject();
}

uint64_t sub_21D13355C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21D13364C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21D133748()
{

  return swift_deallocObject();
}

uint64_t sub_21D1337C8()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_21D133814()
{

  return swift_deallocObject();
}

uint64_t sub_21D133858()
{

  return swift_deallocObject();
}

uint64_t sub_21D13389C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D1338E4()
{

  return swift_deallocObject();
}

uint64_t sub_21D133924()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13395C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D13399C()
{

  if (*(v0 + 32) != 255)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D1339E8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D133A30()
{

  return swift_deallocObject();
}

uint64_t sub_21D133A84()
{
  v1 = sub_21DBF509C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D133B7C()
{
  v1 = sub_21DBF79FC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D133C20()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D133C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_21DBF79FC();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_21D133D5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_21DBF79FC();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_21D133E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D133F18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D133FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_21DBF7B0C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21D1340F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF56BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_21DBF7B0C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21D134218()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D134254()
{

  return swift_deallocObject();
}

uint64_t sub_21D1342A4()
{

  return swift_deallocObject();
}

uint64_t sub_21D1342F0()
{

  return swift_deallocObject();
}

uint64_t sub_21D13432C@<X0>(uint64_t *a1@<X8>)
{
  result = TTRReminderTitleAttributesInteractor.resultsPublisher.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21D134358(void *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

uint64_t sub_21D13439C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21D1344A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21D1345B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D1345E8()
{

  return swift_deallocObject();
}

uint64_t sub_21D134620()
{

  return swift_deallocObject();
}

uint64_t sub_21D134658@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1346B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D13471C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13492C()
{

  return swift_deallocObject();
}

uint64_t sub_21D134970()
{

  return swift_deallocObject();
}

uint64_t sub_21D1349A8()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_46;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 4)
    {
      if (v8 <= 7)
      {
        if (v8 != 5 && v8 != 6)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v8 != 8 && v8 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v8 > 2)
      {
        goto LABEL_37;
      }

      if (v8 != 1)
      {
        if (v8 != 2)
        {
LABEL_41:
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v19 = v4 + *(v18 + 20);
          if (*(v19 + 8))
          {

            sub_21D179EF0(*(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48), *(v19 + 56), *(v19 + 64));
            v20 = *(v19 + 120);
            if (v20 != 255)
            {
              sub_21D1078C0(*(v19 + 72), *(v19 + 80), *(v19 + 88), *(v19 + 96), *(v19 + 104), *(v19 + 112), v20 & 1);
            }
          }

          goto LABEL_46;
        }

LABEL_37:
        v17 = sub_21DBF563C();
        (*(*(v17 - 8) + 8))(v0 + v2, v17);
        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_30:

      goto LABEL_46;
    }

LABEL_16:

    v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v10 - 8) + 48))(v4 + v9, 1, v10))
    {
      goto LABEL_46;
    }

    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 4)
    {
      if (v11 <= 7)
      {
        if (v11 != 5 && v11 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(v4 + v9, v21);
        goto LABEL_46;
      }

      if (v11 != 8 && v11 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v11 > 2)
      {
        goto LABEL_45;
      }

      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v15 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if (!(*(*(v15 - 8) + 48))(v0 + v2, 1, v15))
      {
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 8))(v0 + v2, v16);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v7 = sub_21DBF8D7C();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }

    goto LABEL_46;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v12 - 8) + 48))(v0 + v2, 1, v12))
  {

    v13 = *(v12 + 20);
    v14 = sub_21DBF6C1C();
    (*(*(v14 - 8) + 8))(v4 + v13, v14);
  }

  v4 += *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v4 + 8))
  {

    goto LABEL_30;
  }

LABEL_46:

  return swift_deallocObject();
}

uint64_t sub_21D134E6C()
{

  return swift_deallocObject();
}

uint64_t sub_21D134EA4()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D134EDC()
{

  return swift_deallocObject();
}

uint64_t sub_21D134F24(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_21DBF563C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_21D134FD0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_21DBF563C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D135070()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D1350A8()
{
  v1 = (type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v1[7];
  v4 = sub_21DBF563C();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_21D13519C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D1351D4()
{

  return swift_deallocObject();
}

uint64_t sub_21D13520C()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D1352C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D135300()
{
  v1 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_21DBF54CC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21D135400()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D1354E8()
{
  v1 = sub_21DBF54CC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D135570()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D135634()
{
  v1 = (type metadata accessor for TTRReminderPrintingPresenterCapability.ImageAttachment(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = sub_21DBF54CC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_21D135728(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D135794(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D135804(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21DBF54CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21D1358B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21DBF54CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D135954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D135A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D135AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D135B84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF54CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D135C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21D135D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

id sub_21D135DC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_21D135E48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_borderColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21D135EB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_continuousCorners;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_21D135F0C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_continuousCorners;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsLayout];
}

uint64_t sub_21D135F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_21D135FC8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners;
  swift_beginAccess();
  *&v3[v4] = v2;
  return [v3 setNeedsLayout];
}

uint64_t sub_21D136044()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13607C()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D1360B8()
{

  return swift_deallocObject();
}

uint64_t sub_21D136100@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D136150(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D1361A8()
{

  return swift_deallocObject();
}

uint64_t sub_21D1361E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C298);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C298);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C298);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C2A0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C2B0);
  return swift_endAccess();
}

uint64_t sub_21D136414()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D136450()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D136498@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1364E8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D136540()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + v2);
  if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {

    v6 = *(type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0) + 20);
    v7 = sub_21DBF74FC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  v9 = (v3 + *(v1 + 36));
  v10 = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  if (v10 == 1)
  {
  }

  else
  {

    v12 = *(type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0) + 20);
    v13 = sub_21DBF74FC();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v9 + v12, 1, v13))
    {
      (*(v14 + 8))(v9 + v12, v13);
    }
  }

  v15 = *(v1 + 40);
  v16 = sub_21DBF76AC();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v3 + v15, 1, v16))
  {
    (*(v17 + 8))(v3 + v15, v16);
  }

  return swift_deallocObject();
}

uint64_t sub_21D136840()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C200);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF757C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF757C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D136AA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C218);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF745C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF745C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D136D00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C248);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF713C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF713C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D136F60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C260);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF6DBC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF6DBC();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D1371C0()
{

  sub_21D43A134(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_21D43A134(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_21D137210()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C278);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF700C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF700C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D137474()
{

  return swift_deallocObject();
}

uint64_t sub_21D1374AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C290);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF6C5C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF6C5C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D13770C()
{

  return swift_deallocObject();
}

uint64_t sub_21D137744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B8);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF773C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF773C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D1379A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E8);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF6E4C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF6E4C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D137C04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C308);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF6DBC();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  v6 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF6DBC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1, v7))
    {
      (*(v8 + 8))(v6, v7);
    }
  }

  v9 = *(v1 + 40);
  v10 = sub_21DBF76AC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_21D137F0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C320);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF729C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF729C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D13816C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C368);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF706C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF706C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D1383CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C390);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF6F2C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF6F2C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D13862C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C398);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF773C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF773C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D138890()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C8);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF75EC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF75EC();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D138AF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF760C();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  v6 = *(v1 + 36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF760C();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21D138D28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3F0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_21DBF73CC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (v3 + *(v1 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_21DBF73CC();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = *(v1 + 40);
  v8 = sub_21DBF76AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D139010()
{

  return swift_deallocObject();
}

uint64_t sub_21D139054()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = type metadata accessor for TTRRecurrenceEndModel(0);
    if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4) && !swift_getEnumCaseMultiPayload())
    {
      v5 = sub_21DBF563C();
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21D139244()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13927C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1392B4()
{
  v1 = sub_21DBF56BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D139354@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1393B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D139414@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_21D13946C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_21D55CE2C();
}

id sub_21D1394C4()
{
  v1 = [v0 inputAccessoryView];

  return v1;
}

void sub_21D1394FC(void *a1)
{
  [v1 setInputAccessoryView_];
}

void *_s15RemindersUICore30TTRReminderListPickerViewModelVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_21DBF8E0C();
  v4 = v3;
  return a1;
}

uint64_t sub_21D13957C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21D13964C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D139718()
{

  return swift_deallocObject();
}

uint64_t sub_21D139750()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D139788()
{

  return swift_deallocObject();
}

uint64_t sub_21D1397C8()
{

  return swift_deallocObject();
}

uint64_t sub_21D139808()
{
  v1 = sub_21DBF509C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D1398A4()
{

  return swift_deallocObject();
}

uint64_t sub_21D1398E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D139938(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D139990()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D1399D8()
{

  return swift_deallocObject();
}

uint64_t sub_21D139A54()
{

  return swift_deallocObject();
}

uint64_t sub_21D139AA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D139AD8()
{

  return swift_deallocObject();
}

uint64_t sub_21D139B18()
{

  return swift_deallocObject();
}

uint64_t sub_21D139B50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D139BAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_21D139C10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_21D139C88(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TTRRemindersListConcreteEditingSession.pendingMoveTargetList.setter(v1);
}

uint64_t sub_21D139CB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_sharedProperties;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_21DBF8E0C();
}

uint64_t sub_21D139D28()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_21D139D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 88);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E128);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D139E2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 88) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E128);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D139EDC()
{
  v1 = (type metadata accessor for TTRIReminderLocationPickerState(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;
  sub_21D57EE60(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40), *(v0 + v2 + 48), *(v0 + v2 + 56), *(v0 + v2 + 64), *(v0 + v2 + 72), *(v0 + v2 + 80), *(v0 + v2 + 88));
  sub_21D57EF34(*(v3 + 96), *(v3 + 104));
  v4 = v1[9];
  v5 = sub_21DBF779C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21D13A04C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13A0AC()
{

  return swift_deallocObject();
}

uint64_t sub_21D13A0E4()
{

  return swift_deallocObject();
}

uint64_t sub_21D13A11C()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

_OWORD *_s15RemindersUICore40TTRIReminderLocationPickerViewControllerC8ArgumentVwCP_0(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_21D13A1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D13A21C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21D13A2A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21DBF76AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21D13A354(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21DBF76AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D13A3F8()
{

  return swift_deallocObject();
}

uint64_t sub_21D13A444()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D13A494()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D13A4E0()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D13A518()
{
  v1 = sub_21DBF5D5C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D13A5E4()
{

  return swift_deallocObject();
}

uint64_t sub_21D13A628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21DBF6C1C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D13A6D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21DBF6C1C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D13A778()
{
  v1 = *(type metadata accessor for TTRHashtagEditorModuleState() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = sub_21DBF78CC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21D13A854()
{
  v1 = *(type metadata accessor for TTRHashtagEditorModuleState() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_21DBF78CC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21D13A928()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13A960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DA536F0(8);
  *a1 = result;
  return result;
}

uint64_t sub_21D13A9BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DA52758(3, 4, 480.0);
  *a1 = result;
  return result;
}

void sub_21D13A9F8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TTRUserDefaults.quickEntryRecentlySelectedListObjectID.setter(v1);
}

uint64_t sub_21D13AA38()
{

  return swift_deallocObject();
}

uint64_t sub_21D13AA70()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D13AABC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13AAF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D13AB44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D13AB84()
{

  return swift_deallocObject();
}

uint64_t sub_21D13ABBC()
{

  return swift_deallocObject();
}

uint64_t sub_21D13AC1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = type metadata accessor for TTRIQuickEntryViewModel.URLState(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[19];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21D13AD9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = type metadata accessor for TTRIQuickEntryViewModel.URLState(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[19];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21D13AF1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D13AF94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21D13B020()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13B058()
{

  return swift_deallocObject();
}

uint64_t sub_21D13B0B0()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t _s15RemindersUICore23TTRIQuickEntryPresenterC22AttachImportingContextVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_21D13B154()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13B18C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13B1CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_21D13B324()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21D13B36C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D13B3D8()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D13B414()
{

  return swift_deallocObject();
}

uint64_t sub_21D13B45C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13B530()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D13B568()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13B5A0()
{

  return swift_deallocObject();
}

uint64_t sub_21D13B5D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13B634(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D13B69C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13B6EC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D13B75C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13B79C()
{
  v1 = sub_21DBF799C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D13B860()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13B89C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13B8EC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D13B94C()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D13B984()
{

  return swift_deallocObject();
}

uint64_t sub_21D13B9C4()
{

  return swift_deallocObject();
}

uint64_t sub_21D13BA14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_21D13BA54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13BA9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  *a2 = v3;
  a2[1] = v2;
  return sub_21DBF8E0C();
}

uint64_t sub_21D13BAD0()
{

  return swift_deallocObject();
}

uint64_t sub_21D13BB18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13BB50()
{

  return swift_deallocObject();
}

uint64_t sub_21D13BBA8()
{

  return swift_deallocObject();
}

uint64_t sub_21D13BBE4()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D13BCDC()
{

  return swift_deallocObject();
}

uint64_t sub_21D13BD20()
{

  return swift_deallocObject();
}

uint64_t sub_21D13BD58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13BD90()
{

  return swift_deallocObject();
}

uint64_t sub_21D13BDEC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  v6 = sub_21DBF509C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  v8 = *(v0 + v5 + 8);
  if (v8 >> 60 != 15)
  {
    sub_21D17B8A8(*(v0 + v5), v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D13BF64()
{

  return swift_deallocObject();
}

uint64_t sub_21D13BF9C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13BFDC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D13C130()
{

  return swift_deallocObject();
}

uint64_t sub_21D13C178()
{

  return swift_deallocObject();
}

uint64_t sub_21D13C1E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21D13C2A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D13C398()
{

  return swift_deallocObject();
}

uint64_t sub_21D13C3FC()
{

  return swift_deallocObject();
}

uint64_t sub_21D13C43C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13C48C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D13C4E4()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D13C534()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D13C58C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D13C5EC()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D13C63C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13C688()
{

  return swift_deallocObject();
}

uint64_t sub_21D13C6C0()
{

  return swift_deallocObject();
}

uint64_t sub_21D13C734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 52);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21D13C870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 52);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21D13CA48()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D13CB20()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D13CBE4()
{

  return swift_deallocObject();
}

uint64_t sub_21D13CC1C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D13CC5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13CCB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D13CD1C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration);
  result = swift_beginAccess();
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

id sub_21D13CD80(char *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  return TTRIRemindersListReminderCell_collectionView.cellOverrideConfiguration.setter(v4);
}

uint64_t sub_21D13CEE0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13CF30()
{

  return swift_deallocObject();
}

uint64_t sub_21D13D000@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21DBF966C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21D13D030()
{
  v1 = type metadata accessor for TTRAutoCategorizationOverlayView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21DBF97BC();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_21D3C8A88(*(v0 + v2 + *(v1 + 20)), *(v0 + v2 + *(v1 + 20) + 8));

  return swift_deallocObject();
}

uint64_t sub_21D13D188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F480);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D13D254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F480);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

id sub_21D13D338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21D13D3A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void *_s15RemindersUICore33TTRDataViewMonitorEnvironmentInfoV38ApplicationActivationNotificationNamesVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_21D13D50C()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_46;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v7 != 8 && v7 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_37;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_41:
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v18 = v3 + *(v17 + 20);
          if (*(v18 + 8))
          {

            sub_21D179EF0(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *(v18 + 48), *(v18 + 56), *(v18 + 64));
            v19 = *(v18 + 120);
            if (v19 != 255)
            {
              sub_21D1078C0(*(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96), *(v18 + 104), *(v18 + 112), v19 & 1);
            }
          }

          goto LABEL_46;
        }

LABEL_37:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 8))(v0 + v2, v16);
        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_30:

      goto LABEL_46;
    }

LABEL_16:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(v3 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(v3 + v8, v20);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v14 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if (!(*(*(v14 - 8) + 48))(v0 + v2, 1, v14))
      {
        v15 = sub_21DBF563C();
        (*(*(v15 - 8) + 8))(v0 + v2, v15);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v6 = sub_21DBF8D7C();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }

    goto LABEL_46;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v2, 1, v11))
  {

    v12 = *(v11 + 20);
    v13 = sub_21DBF6C1C();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  v3 += *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v3 + 8))
  {

    goto LABEL_30;
  }

LABEL_46:

  return swift_deallocObject();
}

uint64_t sub_21D13D9C4()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_46;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v7 != 8 && v7 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_37;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_41:
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v18 = v3 + *(v17 + 20);
          if (*(v18 + 8))
          {

            sub_21D179EF0(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *(v18 + 48), *(v18 + 56), *(v18 + 64));
            v19 = *(v18 + 120);
            if (v19 != 255)
            {
              sub_21D1078C0(*(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96), *(v18 + 104), *(v18 + 112), v19 & 1);
            }
          }

          goto LABEL_46;
        }

LABEL_37:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 8))(v0 + v2, v16);
        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_30:

      goto LABEL_46;
    }

LABEL_16:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(v3 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(v3 + v8, v20);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v14 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if (!(*(*(v14 - 8) + 48))(v0 + v2, 1, v14))
      {
        v15 = sub_21DBF563C();
        (*(*(v15 - 8) + 8))(v0 + v2, v15);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v6 = sub_21DBF8D7C();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }

    goto LABEL_46;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v2, 1, v11))
  {

    v12 = *(v11 + 20);
    v13 = sub_21DBF6C1C();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  v3 += *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v3 + 8))
  {

    goto LABEL_30;
  }

LABEL_46:

  return swift_deallocObject();
}

uint64_t sub_21D13DE60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13DE9C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13DED8()
{
  if (*(v0 + 24) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D13DF30()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D13DF94()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D13DFE8()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E028()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E07C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D13E0C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D13E15C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E19C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E1D4()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E238@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_pendingMoveTargetListValue))();
  *a2 = result;
  return result;
}

uint64_t sub_21D13E2B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *a2 = *(v3 + 16);
  return sub_21DBF8E0C();
}

uint64_t sub_21D13E310()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E348@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13E3A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D13E40C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13E45C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D13E4F0()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E528@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13E588@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_21DBF8E0C();
}

uint64_t sub_21D13E5E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13E688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21D13E750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D13E800()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21D13E848()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E884()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E8BC()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E8FC()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E934()
{

  return swift_deallocObject();
}

uint64_t sub_21D13E974()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21D13E9F4()
{

  return swift_deallocObject();
}

uint64_t sub_21D13EA4C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13EA9C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13EAFC()
{

  return swift_deallocObject();
}

uint64_t sub_21D13EB9C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13EBF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13EC48(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D13ECA0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D13ECE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13ED20()
{
  v1 = sub_21DBF63EC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D13EDBC()
{
  v1 = sub_21DBF63EC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D13EE58()
{

  return swift_deallocObject();
}

uint64_t sub_21D13EE9C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13EF3C()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D13EF84()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D13F048()
{

  return swift_deallocObject();
}

uint64_t sub_21D13F080()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D13F22C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_280D131F8;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t _s15RemindersUICore37TTRIRemindersListCellContentStackViewC11SubviewInfoVwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = v3;
  return a1;
}

uint64_t _s15RemindersUICore37TTRIRemindersListCellContentStackViewC11SubviewInfoVwta_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_21D13F354()
{

  return swift_deallocObject();
}

uint64_t sub_21D13F3A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13F3FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D13F460@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_21DBF8E0C();
}

uint64_t sub_21D13F4C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

double sub_21D13F550@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_21D13F5AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D13F5FC()
{

  return swift_deallocObject();
}

double sub_21D13F644@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_21D13F6A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_suggestionDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13F6FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_suggestionDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D13F760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration;
  swift_beginAccess();
  return sub_21D6AF108(v3 + v4, a2);
}

uint64_t sub_21D13F7C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return sub_21DBF8E0C();
  }

  return result;
}

id sub_21D13F7E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_21D13F84C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TTRIRemindersListCellAssigneeView.contact.setter(v1);
}

uint64_t sub_21D13F87C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextViewDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

id sub_21D13F8EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_descriptionTextView);
  if (result)
  {
    result = [result attributedText];
  }

  *a2 = result;
  return result;
}

void sub_21D13F938(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TTRIRemindersListDescriptionAndTagsView.descriptionAttributedText.setter(v1);
}

uint64_t sub_21D13F988()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D13FA2C()
{

  return swift_deallocObject();
}

uint64_t sub_21D13FA64()
{

  return swift_deallocObject();
}

uint64_t sub_21D13FAB8()
{

  return swift_deallocObject();
}

uint64_t sub_21D13FB08()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D13FB58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21D13FBB0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_21D13FC30@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowsEditingTextAttributes];
  *a2 = result;
  return result;
}

id sub_21D13FC64(unsigned __int8 *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = [*a2 allowsEditingTextAttributes];
  if (v2 != result)
  {

    return [v3 setAllowsEditingTextAttributes_];
  }

  return result;
}

id sub_21D13FCCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inputDelegate];
  *a2 = result;
  return result;
}

uint64_t sub_21D13FD1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_styleTypingAttributeState;
  result = swift_beginAccess();
  v5 = *(v3 + 2);
  *a2 = *v3;
  *(a2 + 2) = v5;
  return result;
}

id sub_21D13FD78(__int16 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  return sub_21D6C5278(&v3);
}

uint64_t sub_21D13FDB8()
{

  return swift_deallocObject();
}

uint64_t sub_21D13FDF0()
{

  return swift_deallocObject();
}

uint64_t sub_21D13FE30()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21D13FE78()
{

  return swift_deallocObject();
}

uint64_t sub_21D13FEB0()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D13FEE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D13FF20()
{

  return swift_deallocObject();
}

uint64_t sub_21D13FF60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D13FFB0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_21D140014(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_21D140020()
{

  return swift_deallocObject();
}

uint64_t sub_21D140058()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21D140094()
{

  return swift_deallocObject();
}

uint64_t sub_21D1400CC()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D140104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D1401CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D1402D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_21DBF8E0C();
}

__n128 sub_21D140330@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id sub_21D140388(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize;
  swift_beginAccess();
  *v5 = v2;
  v5[1] = v3;
  return [v4 invalidateIntrinsicContentSize];
}

id sub_21D1403FC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_minimumGap;
  swift_beginAccess();
  *&v3[v4] = v2;
  return [v3 invalidateIntrinsicContentSize];
}

uint64_t sub_21D140494()
{

  return swift_deallocObject();
}

uint64_t sub_21D1404CC()
{

  return swift_deallocObject();
}

uint64_t sub_21D140504()
{

  return swift_deallocObject();
}

uint64_t sub_21D14053C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D14058C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D1405E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D140620()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606E0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D1406B4()
{

  return swift_deallocObject();
}

uint64_t sub_21D1406EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D140748(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D1407FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D14084C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D1408A4()
{

  return swift_deallocObject();
}

uint64_t sub_21D1408F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D14095C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21D1409EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21D140A4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_21D140A94(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_21D140AD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_21D140B20(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 17) = v2;
  return result;
}

uint64_t sub_21D140B64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_21D140BAC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 18) = v2;
  return result;
}

uint64_t sub_21D140BF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
  return sub_21DBF8E0C();
}

uint64_t sub_21D140C40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D140C90(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D140CE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D140D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21DBF5C4C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21D140E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21DBF5C4C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21D140F28()
{

  return swift_deallocObject();
}

uint64_t sub_21D140F78()
{

  return swift_deallocObject();
}

uint64_t sub_21D140FB0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D141024()
{

  return swift_deallocObject();
}

uint64_t sub_21D141068@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1410B8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

void _s15RemindersUICore39TTRRemindersListPresenterCapabilityCoreC17BatchAssignParamsOwxx_0(void *a1)
{
  if (*a1 >= 0xFFFFFFFFuLL)
  {

    v2 = a1[1];
  }
}

uint64_t sub_21D14116C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1411DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D14122C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();
  return a1;
}

void _s15RemindersUICore11SubviewInfoVwxx_0_0(uint64_t a1)
{
  if (*(a1 + 32))
  {

    __swift_destroy_boxed_opaque_existential_0(a1 + 8);
  }
}

uint64_t sub_21D1412B4()
{

  return swift_deallocObject();
}

uint64_t sub_21D14133C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21D141408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21D1414E4()
{

  return swift_deallocObject();
}

uint64_t sub_21D14152C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D141564()
{

  return swift_deallocObject();
}

uint64_t sub_21D14159C()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D1415F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D141650(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D1416D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21D1417AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21D1418D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D141924(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_21D141988(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_21D1419C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D1419D4()
{

  return swift_deallocObject();
}

uint64_t sub_21D141A0C()
{

  return swift_deallocObject();
}

uint64_t sub_21D141A5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  sub_21DBF8E0C();
  return a1;
}

__n128 sub_21D141ACC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D141AD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21D76EC48();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21D141B3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21D76EDF0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21D141BB8()
{

  return swift_deallocObject();
}

uint64_t sub_21D141BF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D141C88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D141CD8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D141D30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D141D80(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D141DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21D141EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_21D141F58()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;
  type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
      }

      else if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_23;
      }

      v6 = *(v4 + 8);
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
    {
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 10)
    {
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
LABEL_9:
      v6 = *v4;
LABEL_22:

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v7 = sub_21DBF509C();
        (*(*(v7 - 8) + 8))(v0 + v2, v7);
        v8 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        v9 = type metadata accessor for TTRRecurrenceEndModel(0);
        if (!(*(*(v9 - 8) + 48))(v8, 1, v9) && !swift_getEnumCaseMultiPayload())
        {
          v10 = sub_21DBF563C();
          (*(*(v10 - 8) + 8))(v8, v10);
        }

        type metadata accessor for TTRRecurrenceRuleModel(0);
      }
    }

    else
    {
      v11 = sub_21DBF509C();
      (*(*(v11 - 8) + 8))(v0 + v2, v11);
    }
  }

LABEL_23:
  v12 = *(v1 + 20);
  v13 = sub_21DBF79FC();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);

  __swift_destroy_boxed_opaque_existential_0(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D1422C4()
{
  v1 = sub_21DBF799C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D142388()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D1423D8()
{
  v1 = sub_21DBF56BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D1424B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D1424EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D14253C()
{
  v1 = sub_21DBF56BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D14263C()
{

  return swift_deallocObject();
}

uint64_t sub_21D142674@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1426D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_21D142734@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21D1427A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21D1427FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D142838@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int128 *a5@<X4>, void **a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{

  return sub_21D799F34(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_21D1428A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21DBF8E0C();
  return TTRReminderDetailViewModel.DueDateState.timeZoneDescription.setter(v1, v2);
}

uint64_t sub_21D1428E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[20];
      goto LABEL_3;
    }

    v15 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[33];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21D142A5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[20];
    goto LABEL_3;
  }

  v15 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[33];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21D142BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21DBF509C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 48) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21D142CF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21DBF509C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 48) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21D142E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D142EE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D142FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D14305C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D143108()
{

  return swift_deallocObject();
}

uint64_t sub_21D143140()
{

  return swift_deallocObject();
}

uint64_t sub_21D143178@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1431D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_21D143238@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_listRepresentation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21D1432A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21D14337C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_21D143440()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D1434E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D143524()
{

  return swift_deallocObject();
}

uint64_t sub_21D14356C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1435A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D1437C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 8u:
      case 0xAu:
        v5 = sub_21DBF56BC();
        (*(*(v5 - 8) + 8))(v0 + v2, v5);
        break;
      case 2u:
        v6 = sub_21DBF56BC();
        (*(*(v6 - 8) + 8))(v0 + v2, v6);
        type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        goto LABEL_13;
      case 3u:
        v11 = sub_21DBF56BC();
        (*(*(v11 - 8) + 8))(v0 + v2, v11);
        type metadata accessor for TTRAccountsListsViewModel.SmartList(0);

        goto LABEL_13;
      case 4u:

        break;
      case 5u:
      case 6u:

        sub_21D1078C0(*(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120));
        sub_21D0FB9F4(*(v3 + 128), *(v3 + 136), *(v3 + 144));

        goto LABEL_13;
      case 7u:

        break;
      case 9u:
        sub_21D5D60A0(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));
        break;
      case 0xBu:
        goto LABEL_13;
      case 0xCu:
        v7 = sub_21DBF56BC();
        v8 = *(*(v7 - 8) + 8);
        v8(v0 + v2, v7);
        v9 = v3 + *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
        v10 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
        if ((*(*(v10 - 8) + 48))(v9, 1, v10))
        {
          break;
        }

        v8(v9, v7);
LABEL_13:

        break;
      case 0xDu:
        v12 = sub_21DBF56BC();
        (*(*(v12 - 8) + 8))(v0 + v2, v12);
        type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        goto LABEL_13;
      case 0xEu:

        goto LABEL_13;
      default:
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21D143C08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D143C58(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t *_s15RemindersUICore35TTRAccountsListsPresenterCapabilityC17ListPinningParamsV6ActionOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v4 = a1;
    v3 = sub_21DBF8E0C();
    a1 = v4;
  }

  *a1 = v3;
  return a1;
}

uint64_t _s15RemindersUICore35TTRAccountsListsPresenterCapabilityC25RemindersInsertionRequestC14CreationTargetOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D157850(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_21D143D44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D143DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21D143E88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF563C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void *_s15RemindersUICore24TTRReminderCopyPasteItemC8ReminderVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D143F7C()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D143FCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D144014()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D144054()
{

  return swift_deallocObject();
}

uint64_t sub_21D14408C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_21D1440D8()
{
  v1 = [*v0 sortingStyle];

  return v1;
}

uint64_t sub_21D144178()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D1441B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D144200(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D14425C()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D1442A8()
{

  return swift_deallocObject();
}

uint64_t sub_21D1442F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D14432C()
{

  return swift_deallocObject();
}

uint64_t sub_21D144364()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D14439C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21D144420()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D144478()
{

  return swift_deallocObject();
}

uint64_t sub_21D1444B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D144510()
{

  return swift_deallocObject();
}

uint64_t sub_21D144560()
{

  return swift_deallocObject();
}

uint64_t sub_21D1445A8()
{

  return swift_deallocObject();
}

uint64_t sub_21D1445E0()
{

  return swift_deallocObject();
}

uint64_t sub_21D144620()
{

  return swift_deallocObject();
}

uint64_t sub_21D144670()
{

  return swift_deallocObject();
}

uint64_t sub_21D1446B0()
{

  return swift_deallocObject();
}

uint64_t sub_21D1446E8()
{

  return swift_deallocObject();
}

uint64_t sub_21D144720()
{

  return swift_deallocObject();
}

uint64_t sub_21D144758()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t _s15RemindersUICore42TTRIReminderDetailInCalendarEditingOptionsVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  return a1;
}

uint64_t _s15RemindersUICore23TTRIReminderDetailStyleOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D8335E8(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_21D144864()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D1448BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D14490C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D144964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D144A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRListType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D144AD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D144B10()
{
  v1 = *(type metadata accessor for TTRListType(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      v4 = sub_21DBF6C1C();
      (*(*(v4 - 8) + 8))(v0 + v2, v4);
      break;
    case 4:

      break;
    case 5:
LABEL_7:

      break;
  }

LABEL_10:

  return swift_deallocObject();
}