void sub_1DA8(void *a1)
{
  v1 = a1;
  if (qword_396D8[0] != -1)
  {
    sub_29970();
  }

  if (qword_396D0)
  {
    v2 = getCTGreenTeaOsLogHandle();
    v3 = v2;
    if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = +[NSBundle mainBundle];
      v5 = [v4 bundleIdentifier];
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v1;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", &v6, 0x16u);
    }
  }
}

void sub_1EBC()
{
  v1 = sub_2A324();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29B74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(type metadata accessor for AppsSettingsDestinationOption() - 8) + 64);
  __chkstk_darwin();
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2F78(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = *v13;
      v16 = v13[1];
      sub_2A904(2uLL);
      sub_2A414();
    }

    else
    {
      sub_2A904(3uLL);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v2 + 32))(v5, v13, v1);
    sub_2A904(1uLL);
    sub_2FDC(&qword_38B88, &type metadata accessor for SettingsPaneRecipe);
    sub_2A3B4();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    (*(v7 + 32))(v10, v13, v6);
    sub_2A904(0);
    sub_2FDC(&qword_38B90, &type metadata accessor for PreferencesControllerRecipe);
    sub_2A3B4();
    (*(v7 + 8))(v10, v6);
  }
}

Swift::Int sub_21B4()
{
  sub_2A8F4();
  sub_1EBC();
  return sub_2A914();
}

Swift::Int sub_21F8()
{
  sub_2A8F4();
  sub_1EBC();
  return sub_2A914();
}

Swift::Int sub_2238()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2A8F4();
  sub_2A414();
  return sub_2A914();
}

uint64_t sub_2284()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2A414();
}

Swift::Int sub_228C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2A8F4();
  sub_2A414();
  return sub_2A914();
}

uint64_t sub_22D4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2A8A4();
  }
}

uint64_t sub_237C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_294A8(2, 26, 0, 0))
  {
    sub_29FC4();

    return sub_29D64();
  }

  else
  {
    sub_29DA4();
    swift_getWitnessTable();
    sub_29F84();
    sub_29D64();
    sub_2A694();
    swift_getWitnessTable();
    sub_29DA4();
    swift_getWitnessTable();
    sub_29F84();
    return sub_29D64();
  }
}

uint64_t sub_24E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_294A8(2, 26, 0, 0))
  {
    sub_29FC4();
    sub_29D64();
  }

  else
  {
    sub_29DA4();
    swift_getWitnessTable();
    sub_29F84();
    sub_29D64();
    sub_2A694();
    swift_getWitnessTable();
    sub_29DA4();
    swift_getWitnessTable();
    sub_29F84();
    sub_29D64();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_26EC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2A324();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  (__chkstk_darwin)();
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29B74();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  (__chkstk_darwin)();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(type metadata accessor for AppsSettingsDestinationOption() - 8) + 64);
  v12 = (__chkstk_darwin)();
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v12);
  v17 = &v40 - v16;
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = sub_2B4C(&qword_38B98, &unk_2B570);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v40 - v23;
  v25 = (&v40 + *(v22 + 56) - v23);
  sub_2F78(a1, &v40 - v23);
  sub_2F78(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2F78(v24, v17);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v42 + 8))(v17, v43);
        goto LABEL_19;
      }

      v33 = v42;
      v32 = v43;
      v34 = v40;
      (*(v42 + 32))(v40, v25, v43);
      v35 = sub_2A314();
      v36 = *(v33 + 8);
      v36(v34, v32);
      v36(v17, v32);
    }

    else
    {
      sub_2F78(v24, v19);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v41 + 8))(v19, v7);
LABEL_19:
        sub_3024(v24);
        goto LABEL_20;
      }

      v37 = v41;
      (*(v41 + 32))(v10, v25, v7);
      v35 = sub_29B54();
      v38 = *(v37 + 8);
      v38(v10, v7);
      v38(v19, v7);
    }

    sub_308C(v24);
    return v35 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  sub_2F78(v24, v14);
  v28 = *v14;
  v27 = v14[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_19;
  }

  if (v28 == *v25 && v27 == v25[1])
  {

    goto LABEL_24;
  }

  v30 = v25[1];
  v31 = sub_2A8A4();

  if (v31)
  {
LABEL_24:
    sub_308C(v24);
    v35 = 1;
    return v35 & 1;
  }

  sub_308C(v24);
LABEL_20:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_2B4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2B94(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

void type metadata accessor for HFHomeSettingsVisibilityState()
{
  if (!qword_38AA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_38AA8);
    }
  }
}

__n128 sub_2BF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2C04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2C4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AppsSettingsDestinationOption()
{
  result = qword_38B20;
  if (!qword_38B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2D44()
{
  sub_2E04(319, &qword_38B30, &type metadata accessor for PreferencesControllerRecipe);
  if (v0 <= 0x3F)
  {
    sub_2E04(319, &qword_38B38, &type metadata accessor for SettingsPaneRecipe);
    if (v1 <= 0x3F)
    {
      sub_2E50();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2E04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_2E50()
{
  result = qword_38B40;
  if (!qword_38B40)
  {
    result = &type metadata for InstalledApplicationSettings;
    atomic_store(&type metadata for InstalledApplicationSettings, &qword_38B40);
  }

  return result;
}

unint64_t sub_2ECC()
{
  result = qword_38B78;
  if (!qword_38B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38B78);
  }

  return result;
}

unint64_t sub_2F24()
{
  result = qword_38B80;
  if (!qword_38B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38B80);
  }

  return result;
}

uint64_t sub_2F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsSettingsDestinationOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3024(uint64_t a1)
{
  v2 = sub_2B4C(&qword_38B98, &unk_2B570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_308C(uint64_t a1)
{
  v2 = type metadata accessor for AppsSettingsDestinationOption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_30EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_2A604();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_2A634();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v20 = 0;
  if (a4 <= 1)
  {
    if (!a4)
    {
      sub_2A624();
LABEL_14:
      sub_2A304();
      type metadata accessor for AppsSettingsDestinationOption();
      return swift_storeEnumTagMultiPayload();
    }

    if (a4 == 1)
    {
LABEL_22:
      sub_2A614();
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (a4 == 2)
  {
    if (qword_389F0 != -1)
    {
      swift_once();
    }

    v15.super.isa = qword_3AD50;
    v19._countAndFlagsBits = 0x800000000002D720;
    v22._countAndFlagsBits = 0x70696C4320707041;
    v22._object = 0xE900000000000073;
    v23.value._countAndFlagsBits = 0;
    v23.value._object = 0;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    sub_29A34(v22, v23, v15, v24, v19);
    v16 = sub_2A3E4();

    v17 = [objc_allocWithZone(PSSpecifier) initWithName:v16 target:0 set:0 get:0 detail:0 cell:1 edit:0];

    if (!v17)
    {
      __break(1u);
      JUMPOUT(0x3840);
    }

    sub_2A5F4();
    sub_29B64();
LABEL_19:
    type metadata accessor for AppsSettingsDestinationOption();
    return swift_storeEnumTagMultiPayload();
  }

  if (a4 != 3)
  {
LABEL_8:
    swift_bridgeObjectRetain_n();
    if (sub_7330() != 33)
    {
      sub_3B0C(a3, a4);
      switch(v18)
      {
        case 21:
          sub_38C4(&v20, a1, a2, a3, a4);
          sub_2A5E4();
          sub_29B64();

          goto LABEL_19;
        case 31:
          sub_2A5E4();
          sub_29B44();
          goto LABEL_19;
        default:
          goto LABEL_22;
      }
    }

    *a5 = a3;
    a5[1] = a4;
    type metadata accessor for AppsSettingsDestinationOption();
    goto LABEL_10;
  }

  type metadata accessor for AppsSettingsDestinationOption();
LABEL_10:

  return swift_storeEnumTagMultiPayload();
}

id sub_38C4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *a1;
  }

  else
  {
    v8 = sub_3950(a2, a3, a4, a5);
    swift_beginAccess();
    v9 = *a1;
    *a1 = v8;
    v6 = v8;

    v5 = 0;
  }

  v10 = v5;
  return v6;
}

uint64_t sub_3950(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_2A3E4();
  v7 = [objc_allocWithZone(PSSpecifier) initWithName:v6 target:0 set:0 get:0 detail:0 cell:1 edit:0];

  if (v7)
  {
    sub_2B94(a3, a4);
    v8 = sub_2A3E4();

    [v7 setIdentifier:v8];

    return v7;
  }

  else
  {
    result = sub_2A844();
    __break(1u);
  }

  return result;
}

uint64_t sub_3B0C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_3B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2B4C(&qword_38C00, &qword_2B580);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2B4C(&qword_38C08, &qword_2B588);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_3C50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2B4C(&qword_38C00, &qword_2B580);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2B4C(&qword_38C08, &qword_2B588);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for HiddenAppsSettingsList()
{
  result = qword_38C68;
  if (!qword_38C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3DB0()
{
  sub_3E94(319, &qword_38C78, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_3E94(319, &unk_38C80, type metadata accessor for HiddenAppsSettingsListViewModel, &type metadata accessor for Bindable);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_3F14@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HiddenAppsSettingsList();
  v4 = v3 - 8;
  v90 = *(v3 - 8);
  v5 = *(v90 + 64);
  __chkstk_darwin(v3);
  v91 = v6;
  v92 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29ED4();
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  __chkstk_darwin(v7);
  v83 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B4C(&qword_38CB0, &qword_2B5F8);
  v79 = *(v10 - 8);
  v11 = *(v79 + 64);
  __chkstk_darwin(v10);
  v13 = &v73 - v12;
  v14 = sub_2B4C(&qword_38CB8, &qword_2B600);
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  __chkstk_darwin(v14);
  v17 = &v73 - v16;
  v94 = sub_2B4C(&qword_38CC0, &qword_2B608);
  v18 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v80 = &v73 - v19;
  v20 = sub_2B4C(&qword_38CC8, &qword_2B610);
  v87 = *(v20 - 8);
  v21 = *(v87 + 64);
  __chkstk_darwin(v20);
  v86 = &v73 - v22;
  v23 = sub_2B4C(&qword_38CD0, &qword_2B618);
  v89 = *(v23 - 8);
  v24 = *(v89 + 64);
  __chkstk_darwin(v23);
  v88 = &v73 - v25;
  v93 = sub_2B4C(&qword_38CD8, &qword_2B620);
  v26 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v28 = &v73 - v27;
  v29 = *(v4 + 28);
  v95 = v1;
  v30 = v1 + v29;
  v77 = sub_2B4C(&qword_38C08, &qword_2B588);
  v78 = v30;
  sub_2A284();
  v31 = v96;
  swift_getKeyPath();
  v96 = v31;
  v76 = sub_56D4(&qword_395E0, type metadata accessor for HiddenAppsSettingsListViewModel);
  sub_29AD4();

  v32 = *&v31[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps];

  v33 = *(v32 + 16);

  if (v33)
  {
    v73 = v20;
    v74 = v23;
    v75 = a1;
    __chkstk_darwin(v34);
    sub_2B4C(&qword_38CE0, &qword_2B650);
    sub_4FC8();
    sub_2A094();
    sub_29F24();
    if (qword_389F0 != -1)
    {
      swift_once();
    }

    v35 = qword_3AD50;
    v36 = sub_2A0B4();
    v38 = v37;
    v40 = v39;
    v41 = sub_55DC(&qword_38CF8, &qword_38CB0, &qword_2B5F8);
    sub_2A154();
    sub_50E8(v36, v38, v40 & 1);

    (*(v79 + 8))(v13, v10);
    v43 = v83;
    v42 = v84;
    v44 = v85;
    (*(v84 + 104))(v83, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v85);
    v96 = v10;
    v97 = v41;
    swift_getOpaqueTypeConformance2();
    v45 = v80;
    v46 = v82;
    sub_2A1B4();
    (*(v42 + 8))(v43, v44);
    (*(v81 + 8))(v17, v46);
    v47 = sub_2A2B4();
    sub_2A284();
    v48 = v96;
    swift_getKeyPath();
    v96 = v48;
    sub_29AD4();

    v49 = *&v48[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps];

    v50 = v94;
    v51 = (v45 + *(v94 + 36));
    *v51 = v47;
    v51[1] = v49;
    v52 = sub_50F8();
    v53 = v86;
    sub_2A0D4();
    sub_5264(v45);
    swift_getKeyPath();
    v54 = v92;
    sub_52F4(v95, v92);
    v55 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v56 = swift_allocObject();
    sub_54B4(v54, v56 + v55);
    v96 = v50;
    v97 = v52;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v58 = sub_56D4(&qword_38D20, &type metadata accessor for ScenePhase);
    v59 = v88;
    v60 = v73;
    sub_2A174();

    (*(v87 + 8))(v53, v60);
    v61 = v89;
    v62 = v74;
    (*(v89 + 16))(v28, v59, v74);
    swift_storeEnumTagMultiPayload();
    sub_5588();
    v63 = sub_29CB4();
    v96 = v60;
    v97 = v63;
    v98 = OpaqueTypeConformance2;
    v99 = v58;
    swift_getOpaqueTypeConformance2();
    sub_29F44();
    return (*(v61 + 8))(v59, v62);
  }

  else
  {
    sub_29F24();
    if (qword_389F0 != -1)
    {
      swift_once();
    }

    v65 = qword_3AD50;
    *v28 = sub_2A0B4();
    *(v28 + 1) = v66;
    v28[16] = v67 & 1;
    *(v28 + 3) = v68;
    *(v28 + 4) = 0xD00000000000001DLL;
    *(v28 + 5) = 0x800000000002DB40;
    swift_storeEnumTagMultiPayload();
    sub_5588();
    v69 = sub_29CB4();
    v70 = sub_50F8();
    v96 = v94;
    v97 = v70;
    v71 = swift_getOpaqueTypeConformance2();
    v72 = sub_56D4(&qword_38D20, &type metadata accessor for ScenePhase);
    v96 = v20;
    v97 = v69;
    v98 = v71;
    v99 = v72;
    swift_getOpaqueTypeConformance2();
    return sub_29F44();
  }
}

uint64_t sub_4A98()
{
  v0 = *(type metadata accessor for HiddenAppsSettingsList() + 20);
  sub_2B4C(&qword_38C08, &qword_2B588);
  sub_2A284();
  swift_getKeyPath();
  sub_56D4(&qword_395E0, type metadata accessor for HiddenAppsSettingsListViewModel);
  sub_29AD4();

  v1 = *&v3[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps];

  sub_2B4C(&qword_395C0, &qword_2CB70);
  sub_55DC(&qword_38D30, &qword_395C0, &qword_2CB70);
  sub_5094();
  sub_5624();
  return sub_2A264();
}

__n128 sub_4C20@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v12 = a1[2];
  v13[0] = v3;
  *(v13 + 9) = *(a1 + 57);
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  type metadata accessor for AppsSettingsListViewModel();
  sub_5678(&v10, v14);
  sub_56D4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  v5 = sub_29CD4();
  *&v14[7] = v10;
  *&v14[23] = v11;
  *&v14[39] = v12;
  *&v14[55] = v13[0];
  *&v14[64] = *(v13 + 9);
  *a2 = v5;
  *(a2 + 8) = v6 & 1;
  v7 = *&v14[16];
  *(a2 + 9) = *v14;
  result = *&v14[32];
  v9 = *&v14[48];
  *(a2 + 73) = *&v14[64];
  *(a2 + 57) = v9;
  *(a2 + 41) = result;
  *(a2 + 25) = v7;
  return result;
}

uint64_t sub_4D1C(uint64_t a1)
{
  v2 = sub_29CB4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29DF4();
}

uint64_t sub_4DE4()
{
  v0 = sub_29D14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29CB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for ScenePhase.background(_:), v5);
  v10 = sub_29CA4();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    sub_13C80(v4);
    sub_29D04();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

unint64_t sub_4FC8()
{
  result = qword_38CE8;
  if (!qword_38CE8)
  {
    sub_504C(&qword_38CE0, &qword_2B650);
    sub_5094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38CE8);
  }

  return result;
}

uint64_t sub_504C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_5094()
{
  result = qword_38CF0;
  if (!qword_38CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38CF0);
  }

  return result;
}

uint64_t sub_50E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_50F8()
{
  result = qword_38D00;
  if (!qword_38D00)
  {
    sub_504C(&qword_38CC0, &qword_2B608);
    sub_504C(&qword_38CB8, &qword_2B600);
    sub_504C(&qword_38CB0, &qword_2B5F8);
    sub_55DC(&qword_38CF8, &qword_38CB0, &qword_2B5F8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_55DC(&qword_38D08, &qword_38D10, &qword_2B658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38D00);
  }

  return result;
}

uint64_t sub_5264(uint64_t a1)
{
  v2 = sub_2B4C(&qword_38CC0, &qword_2B608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_52F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HiddenAppsSettingsList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5358()
{
  v1 = type metadata accessor for HiddenAppsSettingsList();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_2B4C(&qword_38D18, &unk_2B690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29D14();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  v9 = sub_2B4C(&qword_38C08, &qword_2B588);
  (*(*(v9 - 8) + 8))(&v5[v8], v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_54B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HiddenAppsSettingsList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5518()
{
  v0 = *(*(type metadata accessor for HiddenAppsSettingsList() - 8) + 80);

  return sub_4DE4();
}

unint64_t sub_5588()
{
  result = qword_38D28;
  if (!qword_38D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38D28);
  }

  return result;
}

uint64_t sub_55DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_504C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5624()
{
  result = qword_38D38;
  if (!qword_38D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38D38);
  }

  return result;
}

uint64_t sub_56D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_5720()
{
  result = qword_38D40;
  if (!qword_38D40)
  {
    sub_504C(&qword_38D48, &unk_2B6A0);
    sub_5588();
    sub_504C(&qword_38CC8, &qword_2B610);
    sub_29CB4();
    sub_504C(&qword_38CC0, &qword_2B608);
    sub_50F8();
    swift_getOpaqueTypeConformance2();
    sub_56D4(&qword_38D20, &type metadata accessor for ScenePhase);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38D40);
  }

  return result;
}

uint64_t sub_587C()
{
  swift_getKeyPath();
  sub_6848();
  sub_29AD4();

  v1 = *(v0 + OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps);
}

uint64_t sub_58F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps;
  if (sub_9080(*(v1 + OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_6848();
    sub_29AC4();
  }
}

char *sub_5A14()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2B4C(&unk_38E10, &qword_2B770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  *&v0[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__currentSelection] = xmmword_2B6B0;
  *&v0[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel_subscription] = 0;
  sub_29AE4();
  v15.receiver = v0;
  v15.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v15, "init");
  sub_2A544();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = v6;
  v9 = [objc_msgSend(ObjCClassFromMetadata "subjectMonitorRegistry")];

  swift_unknownObjectRelease();
  v10 = *&v8[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel_subscription];
  *&v8[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel_subscription] = v9;
  swift_unknownObjectRelease();
  sub_2A4A4();
  v11 = sub_2A4C4();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v8;
  v13 = v8;
  sub_642C(0, 0, v5, &unk_2B798, v12);

  sub_6958(v5);
  return v13;
}

id sub_5C44()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel_subscription];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for HiddenAppsSettingsListViewModel()
{
  result = qword_38D98;
  if (!qword_38D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5E10()
{
  result = sub_29AF4();
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

uint64_t sub_5EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;

  return _swift_task_switch(sub_5F54, 0, 0);
}

uint64_t sub_5F54()
{
  v36 = v0;
  v1 = [objc_opt_self() hiddenApplications];
  sub_2A544();
  v2 = sub_2A454();

  if (v2 >> 62)
  {
    v3 = sub_2A854();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:
    v34 = &_swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  v4 = 0;
  v34 = &_swiftEmptyArrayStorage;
  v31 = v0;
  v32 = v2 & 0xC000000000000001;
  v5 = &APSubjectMonitorSubscription__prots;
  v29 = v3;
  v30 = v2;
  do
  {
    if (v32)
    {
      v7 = sub_2A824();
    }

    else
    {
      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    v9 = [v7 v5[221].count];
    if (!v9)
    {
      sub_2A3F4();
      v9 = sub_2A3E4();
    }

    v10 = objc_allocWithZone(LSApplicationRecord);
    v0[2] = 0;
    v11 = [v10 initWithBundleIdentifier:v9 allowPlaceholder:0 error:v0 + 2];

    v12 = v0[2];
    if (v11)
    {
      v13 = v12;
      v14 = [v11 localizedName];
      v15 = sub_2A3F4();
      v17 = v16;

      v18 = [v8 v5[221].count];
      v19 = sub_2A3F4();
      v21 = v20;

      LOBYTE(v35) = 0;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_223F8(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_223F8((v22 > 1), v23 + 1, 1, v34);
      }

      *(v34 + 2) = v23 + 1;
      v24 = &v34[80 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
      *(v24 + 6) = v19;
      *(v24 + 7) = v21;
      v24[64] = 0;
      v24[71] = 0;
      *(v24 + 69) = 0;
      *(v24 + 65) = 0;
      *(v24 + 9) = v15;
      *(v24 + 10) = v17;
      *(v24 + 11) = 0;
      v33 &= 1u;
      v24[104] = v33;
      v2 = v30;
      v0 = v31;
      v3 = v29;
      v5 = &APSubjectMonitorSubscription__prots;
    }

    else
    {
      v6 = v12;
      sub_29A44();

      swift_willThrow();
    }

    ++v4;
  }

  while (v3 != v4);
LABEL_20:

  v0[7] = v34;
  v35 = v34;

  sub_22F20(&v35);
  v25 = v0[6];
  v0[8] = v35;
  swift_unknownObjectWeakInit();
  sub_2A494();
  v0[9] = sub_2A484();
  v27 = sub_2A474();

  return _swift_task_switch(sub_6350, v27, v26);
}

uint64_t sub_6350()
{
  v1 = v0[9];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v0[7];
  if (Strong)
  {
    sub_58F8(v0[8]);
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();
  v4 = v0[1];

  return v4();
}

uint64_t sub_642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2B4C(&unk_38E10, &qword_2B770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_69C0(a3, v27 - v11);
  v13 = sub_2A4C4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_6958(v12);
  }

  else
  {
    sub_2A4B4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2A474();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2A404() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_6804()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps);
  *(v1 + OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps) = *(v0 + 24);
}

unint64_t sub_6848()
{
  result = qword_395E0;
  if (!qword_395E0)
  {
    type metadata accessor for HiddenAppsSettingsListViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_395E0);
  }

  return result;
}

uint64_t sub_68A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6DD8;

  return sub_5EC4(a1, v4, v5, v6);
}

uint64_t sub_6958(uint64_t a1)
{
  v2 = sub_2B4C(&unk_38E10, &qword_2B770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_69C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B4C(&unk_38E10, &qword_2B770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6A30()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6A68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_6DD8;

  return sub_22208(a1, v5);
}

uint64_t sub_6B20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_6BD8;

  return sub_22208(a1, v5);
}

uint64_t sub_6BD8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_6CCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6D0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6BD8;

  return sub_5EC4(a1, v4, v5, v6);
}

uint64_t sub_6DC0(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_3B0C(a1, a2);
  }

  return a1;
}

unint64_t sub_6DDC(char a1)
{
  result = 0x6C7070612E6D6F63;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 7:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
    case 9:
    case 27:
    case 29:
    case 30:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 10:
    case 31:
      result = 0xD000000000000016;
      break;
    case 11:
    case 15:
    case 21:
    case 23:
    case 24:
    case 32:
      return result;
    case 12:
    case 19:
    case 26:
      result = 0xD000000000000010;
      break;
    case 13:
    case 16:
    case 17:
    case 20:
    case 22:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0xD000000000000019;
      break;
    case 28:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

Swift::Int sub_7124()
{
  v1 = *v0;
  sub_2A8F4();
  sub_6DDC(v1);
  sub_2A414();

  return sub_2A914();
}

uint64_t sub_7188()
{
  sub_6DDC(*v0);
  sub_2A414();
}

Swift::Int sub_71DC()
{
  v1 = *v0;
  sub_2A8F4();
  sub_6DDC(v1);
  sub_2A414();

  return sub_2A914();
}

uint64_t sub_723C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_7330();
  *a2 = result;
  return result;
}

unint64_t sub_726C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_6DDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_7298(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_6DDC(*a1);
  v5 = v4;
  if (v3 == sub_6DDC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2A8A4();
  }

  return v8 & 1;
}

uint64_t sub_7330()
{
  v0 = sub_2A8B4();

  if (v0 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for AppleSystemApplicationBundleIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleSystemApplicationBundleIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_74F8()
{
  result = qword_38E20;
  if (!qword_38E20)
  {
    sub_504C(&qword_38E28, qword_2B7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E20);
  }

  return result;
}

unint64_t sub_7560()
{
  result = qword_38E30;
  if (!qword_38E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E30);
  }

  return result;
}

uint64_t sub_75B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_75CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_7620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_767C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

Swift::Int sub_76AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2A8F4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      sub_2A904(v3);
      return sub_2A914();
    }
  }

  sub_2A904(2uLL);
  sub_2A414();
  return sub_2A914();
}

void sub_7764()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_13;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_13;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_13:
      sub_2A904(v2);
      return;
    }
  }

  v3 = *v0;
  sub_2A904(2uLL);

  sub_2A414();
}

Swift::Int sub_7814()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2A8F4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      sub_2A904(v3);
      return sub_2A914();
    }
  }

  sub_2A904(2uLL);
  sub_2A414();
  return sub_2A914();
}

uint64_t sub_78C8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return sub_2A8A4();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_7958()
{
  result = qword_38E38;
  if (!qword_38E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E38);
  }

  return result;
}

uint64_t sub_79AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2B94(v2, v3);
}

unint64_t sub_79B8(Swift::String a1)
{
  if (a1._object > 1)
  {
    if (a1._object != &dword_0 + 2)
    {
      if (a1._object == &dword_0 + 3)
      {
        return 0xD00000000000001ELL;
      }

      goto LABEL_8;
    }

    return 0xD000000000000020;
  }

  else
  {
    if (a1._object)
    {
      if (a1._object == &dword_0 + 1)
      {
        return 0xD000000000000027;
      }

LABEL_8:
      v4[4] = v1;
      v4[5] = v2;
      strcpy(v4, "application: ");
      HIWORD(v4[1]) = -4864;
      sub_2A424(a1);
      return v4[0];
    }

    return 0xD000000000000023;
  }
}

unint64_t sub_7ABC()
{
  result = qword_38E40;
  if (!qword_38E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E40);
  }

  return result;
}

uint64_t sub_7B10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000023 && 0x800000000002DAB0 == a2;
  if (v3 || (v4 = a1, (sub_2A8A4() & 1) != 0) || v4 == 0xD000000000000027 && 0x800000000002DA80 == a2 || (sub_2A8A4() & 1) != 0 || v4 == 0xD000000000000022 && 0x800000000002DC10 == a2 || (sub_2A8A4() & 1) != 0 || v4 == 0xD000000000000020 && 0x800000000002DA50 == a2 || (sub_2A8A4() & 1) != 0 || (v6 = objc_opt_self(), v7 = sub_2A3E4(), v8 = [v6 applicationWithBundleIdentifier:v7], v7, LODWORD(v7) = objc_msgSend(v8, "isHidden"), v8, v7))
  {

    return 0;
  }

  return v4;
}

__n128 sub_7CDC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_7D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
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

double sub_7D50(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 73) = 1;
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
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 2 * -a2;
      result = 0.0;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_7DCC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_84CC(v5, v7);
}

BOOL sub_7E28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_827C(v7, v9);
}

unint64_t sub_7E84()
{
  v2._countAndFlagsBits = sub_79B8(*v0);
  sub_2A424(v2);

  return 0xD00000000000001ALL;
}

unint64_t sub_7EE8()
{
  result = qword_38E48;
  if (!qword_38E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E48);
  }

  return result;
}

BOOL sub_7F3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_86B4(v7, v9);
}

BOOL sub_7F98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_7FF4(v7, v9);
}

BOOL sub_7FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (*(a2 + 72) < 0)
  {
    if (v2 < 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return !v3;
  }

  if (v2 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  sub_8228();
  v3 = sub_2A6D4() == -1;
  return !v3;
}

BOOL sub_8074(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_80D0(v7, v9);
}

BOOL sub_80D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (*(a1 + 72) < 0)
  {
    if (v2 < 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return !v3;
  }

  if (v2 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  sub_8228();
  v3 = sub_2A6D4() == -1;
  return !v3;
}

BOOL sub_8150(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_81AC(v7, v9);
}

BOOL sub_81AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (*(a2 + 72) < 0)
  {
    if (v2 < 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v2 & 0x80000000) == 0)
  {
LABEL_3:
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    sub_8228();
    return sub_2A6D4() == -1;
  }

  return 0;
}

unint64_t sub_8228()
{
  result = qword_38E50;
  if (!qword_38E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E50);
  }

  return result;
}

BOOL sub_827C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 8);
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }

        goto LABEL_18;
      }

      goto LABEL_10;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }

        goto LABEL_18;
      }

LABEL_10:
      if (v6 < 4 || (v4 != *a2 || v5 != v6) && (sub_2A8A4() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (v6)
    {
      return 0;
    }
  }

LABEL_18:
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  v10 = a1[5];
  v11 = a1[6];
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v19 = *(a2 + 48);
  v18 = *(a2 + 56);
  v20 = *(a2 + 72);
  if (v13 < 0)
  {
    if (v20 < 0)
    {
      v21 = *(a1 + 63);
      v22 = *(a1 + 61);
      v23 = *(a1 + 57);
      v24 = a1[8];
      v25 = *(a2 + 64);
      if (v9)
      {
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v16)
      {
        return 0;
      }

      if (v7 != v14 || v8 != v15)
      {
        v34 = v23;
        v32 = v22;
        v33 = v21;
        v26 = sub_2A8A4();
        v22 = v32;
        v21 = v33;
        v23 = v34;
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      if (v10 != v17 || v11 != v19)
      {
        v27 = v23;
        v28 = v21;
        v29 = v22;
        v30 = sub_2A8A4();
        v22 = v29;
        v21 = v28;
        v23 = v27;
        if ((v30 & 1) == 0)
        {
          return 0;
        }
      }

      return ((v12 | ((v23 | ((v22 | (v21 << 16)) << 32)) << 8)) == v18 && v24 == v25 || (sub_2A8A4() & 1) != 0) && ((v13 ^ v20) & 1) == 0;
    }

    return 0;
  }

  if (v20 < 0)
  {
    return 0;
  }

  if (a1[4])
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if (v16)
  {
    return 0;
  }

LABEL_28:
  if ((v7 != v14 || v8 != v15) && (sub_2A8A4() & 1) == 0)
  {
    return 0;
  }

  if (v10 == v17 && v11 == v19)
  {
    if ((v12 & 1) != (v18 & 1))
    {
      return 0;
    }
  }

  else if (sub_2A8A4() & 1) == 0 || ((v12 ^ v18))
  {
    return 0;
  }

  return 1;
}

BOOL sub_84CC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = *a2;
  v12 = a2[1];
  if (v10 < 0)
  {
    v17 = *(a2 + 56);
    if (v17 < 0)
    {
      v18 = *(a1 + 47);
      v19 = *(a1 + 45);
      v20 = *(a1 + 41);
      v21 = a1[6];
      v22 = a2[3];
      v23 = a2[4];
      v24 = a2[5];
      v25 = a2[6];
      v26 = *(a2 + 4);
      if (v6)
      {
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v26)
      {
        return 0;
      }

      if (v4 != v11 || v5 != v12)
      {
        v36 = v20;
        v37 = v21;
        v35 = v18;
        v27 = sub_2A8A4();
        v18 = v35;
        v20 = v36;
        v21 = v37;
        if ((v27 & 1) == 0)
        {
          return 0;
        }
      }

      if (v7 != v22 || v8 != v23)
      {
        v28 = v21;
        v29 = v20;
        v30 = v18;
        v31 = sub_2A8A4();
        v18 = v30;
        v20 = v29;
        v21 = v28;
        if ((v31 & 1) == 0)
        {
          return 0;
        }
      }

      if ((v9 | ((v20 | ((v19 | (v18 << 16)) << 32)) << 8)) != v24 || v21 != v25)
      {
        v33 = sub_2A8A4();
        return ((v10 ^ v17) & 1) == 0 && (v33 & 1) != 0;
      }

      if (((v10 ^ v17) & 1) == 0)
      {
        return 1;
      }
    }
  }

  else if ((a2[7] & 0x80000000) == 0)
  {
    v13 = *(a2 + 16);
    v14 = a2[3];
    v15 = a2[4];
    v16 = *(a2 + 40);
    if (v6)
    {
      if ((a2[2] & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    if ((a2[2] & 1) == 0)
    {
LABEL_11:
      if ((v4 != v11 || v5 != v12) && (sub_2A8A4() & 1) == 0)
      {
        return 0;
      }

      if (v7 == v14 && v8 == v15)
      {
        if ((v9 & 1) != (v16 & 1))
        {
          return 0;
        }
      }

      else if (sub_2A8A4() & 1) == 0 || ((v9 ^ v16))
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

BOOL sub_86B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (*(a1 + 72) < 0)
  {
    if (v2 < 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v2 & 0x80000000) == 0)
  {
LABEL_3:
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v4 = *(a2 + 40);
    v5 = *(a2 + 48);
    sub_8228();
    return sub_2A6D4() == -1;
  }

  return 0;
}

__n128 sub_8730(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_874C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

double sub_879C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 57) = 1;
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
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_8814(uint64_t result, char a2)
{
  v2 = *(result + 56) & 1 | (a2 << 7);
  *(result + 16) &= 1uLL;
  *(result + 56) = v2;
  return result;
}

unint64_t sub_8848()
{
  result = qword_38E58;
  if (!qword_38E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E58);
  }

  return result;
}

uint64_t sub_889C(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0x41746C7561666564;
  }

  if (a2 == &dword_0 + 1)
  {
    return 0x7370696C43707061;
  }

  if (a2 == &dword_0 + 2)
  {
    return 0x6E6564646968;
  }

  sub_2A814(18);

  strcpy(v9, "applications.");
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  sub_2A424(v10);
  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  sub_2A424(v11);
  v12._countAndFlagsBits = a3;
  v12._object = a4;
  sub_2A424(v12);
  return v9[0];
}

Swift::Int sub_89B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2A8F4();
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        sub_2A904(1uLL);
        sub_2A414();
        sub_2A414();
        return sub_2A914();
      }

      v5 = 3;
    }
  }

  else
  {
    v5 = 0;
  }

  sub_2A904(v5);
  return sub_2A914();
}

void sub_8A64()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      goto LABEL_7;
    case 1:
      v2 = 2;
      goto LABEL_7;
    case 2:
      v2 = 3;
LABEL_7:
      sub_2A904(v2);
      return;
  }

  v4 = v0[2];
  v3 = v0[3];
  v5 = *v0;
  sub_2A904(1uLL);
  sub_2A414();

  sub_2A414();
}

Swift::Int sub_8B1C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2A8F4();
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        sub_2A904(1uLL);
        sub_2A414();
        sub_2A414();
        return sub_2A914();
      }

      v5 = 3;
    }
  }

  else
  {
    v5 = 0;
  }

  sub_2A904(v5);
  return sub_2A914();
}

uint64_t sub_8BD0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  if (*a1 == *a2 && v3 == v4 || (v10 = *a1, v11 = sub_2A8A4(), result = 0, (v11 & 1) != 0))
  {
    if (v6 == v8 && v7 == v9)
    {
      return 1;
    }

    return sub_2A8A4();
  }

  return result;
}

uint64_t sub_8CC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_8CDC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_8CE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_8D44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_8D98(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 sub_8DCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_8DE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_8E80(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[4];
  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v6 == 1)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v4 != 2)
  {
    if (v6 >= 3)
    {
      v9 = a1[2];
      v10 = a1[3];
      v11 = a2[2];
      v12 = a2[3];
      if (*a1 == *a2 && v4 == v6)
      {
        goto LABEL_16;
      }

      v13 = v5;
      v14 = *a1;
      v15 = v7;
      v16 = sub_2A8A4();
      v7 = v15;
      v17 = v16;
      v5 = v13;
      if (v17)
      {
LABEL_16:
        if (v9 == v11 && v10 == v12)
        {
          goto LABEL_18;
        }

        v18 = v5;
        v19 = v7;
        v20 = sub_2A8A4();
        v7 = v19;
        v21 = v20;
        v5 = v18;
        if (v21)
        {
          goto LABEL_18;
        }
      }
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_18:

  return sub_9080(v5, v7);
}

uint64_t sub_8FB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_9380(v2, v3);
}

unint64_t sub_8FC4()
{
  v2._countAndFlagsBits = sub_889C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  sub_2A424(v2);

  return 0xD00000000000001DLL;
}

unint64_t sub_902C()
{
  result = qword_38E60;
  if (!qword_38E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E60);
  }

  return result;
}

uint64_t sub_9080(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v4 + 8);
      v10 = v4[2];
      v9 = v4[3];
      v53 = *(v4 + 32);
      v11 = *(v4 + 39);
      v12 = *(v4 + 37);
      v13 = *(v4 + 33);
      v14 = v4[5];
      v15 = *(v4 + 48);
      v16 = *(v3 - 2);
      v17 = *(v3 - 1);
      v18 = *v3;
      v19 = *(v3 + 8);
      v21 = v3[2];
      v20 = v3[3];
      v54 = v3[4];
      v22 = v3[5];
      v23 = *(v3 + 48);
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (v16 != 2)
          {
            return 0;
          }

          goto LABEL_25;
        }

        if (v5 == 3)
        {
          if (v16 != 3)
          {
            return 0;
          }

          goto LABEL_25;
        }
      }

      else
      {
        if (!v5)
        {
          if (v16)
          {
            return 0;
          }

          goto LABEL_25;
        }

        if (v5 == 1)
        {
          if (v16 != 1)
          {
            return 0;
          }

          goto LABEL_25;
        }
      }

      if (v16 < 4)
      {
        return 0;
      }

      if (*(v4 - 3) != *(v3 - 3) || v5 != v16)
      {
        v43 = *v4;
        v44 = *(v4 - 1);
        v41 = *v3;
        v42 = *(v3 - 1);
        v49 = v3[5];
        v51 = v4[3];
        v39 = *(v4 + 33);
        v40 = v4[5];
        v45 = *(v4 + 37);
        v47 = *(v4 + 39);
        v24 = sub_2A8A4();
        v12 = v45;
        v11 = v47;
        v13 = v39;
        v14 = v40;
        v22 = v49;
        v9 = v51;
        v18 = v41;
        v17 = v42;
        v25 = v24;
        v7 = v43;
        v6 = v44;
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_25:
      if (v15 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          return 0;
        }

        if (v8)
        {
          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v19)
        {
          return 0;
        }

        if (v6 != v17 || v7 != v18)
        {
          v50 = v22;
          v52 = v9;
          v30 = v14;
          v31 = v13;
          v46 = v12;
          v48 = v11;
          v32 = sub_2A8A4();
          v12 = v46;
          v11 = v48;
          v13 = v31;
          v22 = v50;
          v9 = v52;
          v14 = v30;
          if ((v32 & 1) == 0)
          {
            return 0;
          }
        }

        if (v10 != v21 || v9 != v20)
        {
          v33 = v14;
          v34 = v22;
          v35 = v13;
          v36 = v11;
          v37 = v12;
          v38 = sub_2A8A4();
          v12 = v37;
          v11 = v36;
          v13 = v35;
          v22 = v34;
          v14 = v33;
          if ((v38 & 1) == 0)
          {
            return 0;
          }
        }

        if ((v53 | ((v13 | ((v12 | (v11 << 16)) << 32)) << 8)) != v54 || v14 != v22) && (sub_2A8A4() & 1) == 0 || ((v15 ^ v23))
        {
          return 0;
        }
      }

      else
      {
        if (v23 < 0)
        {
          return 0;
        }

        if (v8)
        {
          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v19)
        {
          return 0;
        }

        if (v6 != v17 || v7 != v18)
        {
          v26 = v9;
          v27 = sub_2A8A4();
          v9 = v26;
          if ((v27 & 1) == 0)
          {
            return 0;
          }
        }

        if (v10 == v21 && v9 == v20)
        {
          if ((v53 & 1) != (v54 & 1))
          {
            return 0;
          }
        }

        else
        {
          v28 = sub_2A8A4();
          result = 0;
          if (v28 & 1) == 0 || ((v53 ^ v54))
          {
            return result;
          }
        }
      }

      v3 += 10;
      v4 += 10;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_9380(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_93C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    v4 = (a2 + 64);
    do
    {
      v5 = *(v3 - 3);
      v6 = *v3;
      v7 = *(v4 - 3);
      v8 = *v4;
      if (v5)
      {
        if (v5 == 1)
        {
          if (v7 != 1)
          {
            return 0;
          }
        }

        else if (v5 == 2)
        {
          if (v7 != 2)
          {
            return 0;
          }
        }

        else
        {
          if (v7 < 3)
          {
            return 0;
          }

          v9 = *(v3 - 2);
          v10 = *(v3 - 1);
          v11 = *(v4 - 2);
          v12 = *(v4 - 1);
          if (*(v3 - 4) != *(v4 - 4) || v5 != v7)
          {
            v13 = *v3;
            v14 = *(v3 - 4);
            v15 = *v4;
            v16 = *(v3 - 3);
            v17 = sub_2A8A4();
            v8 = v15;
            v18 = v17;
            v6 = v13;
            if ((v18 & 1) == 0)
            {
              return 0;
            }
          }

          if (v9 != v11 || v10 != v12)
          {
            v19 = v6;
            v20 = v8;
            v21 = sub_2A8A4();
            v8 = v20;
            v22 = v21;
            v6 = v19;
            if ((v22 & 1) == 0)
            {
              return 0;
            }
          }
        }
      }

      else if (v7)
      {
        return 0;
      }

      if ((sub_9080(v6, v8) & 1) == 0)
      {
        return 0;
      }

      v3 += 5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

id sub_9528()
{
  type metadata accessor for AppsSettingsListViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_3AD50 = result;
  return result;
}

uint64_t sub_9580()
{
  v0 = sub_29C14();
  sub_9608(v0, qword_3AD58);
  sub_966C(v0, qword_3AD58);

  return sub_29C04();
}

uint64_t *sub_9608(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_966C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_96A4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_2A3E4();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_29A44();

    swift_willThrow();
  }

  return v6;
}

id sub_9780()
{
  v1 = sub_2A3E4();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifierOfSystemPlaceholder:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_29A44();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_984C(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_96A4(a1, a2, 1);
  if (v5 || (v6 = objc_allocWithZone(LSApplicationRecord), , (v5 = sub_9780()) != 0))
  {
    v7 = v5;
    v8 = [v5 localizedName];
    a1 = sub_2A3F4();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_994C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  sub_8228();

  result = sub_2A0C4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_9A7C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v32 = sub_2B4C(&qword_38E98, &qword_2C0F8);
  v2 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v33 = &v30 - v3;
  v4 = sub_29EC4();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B4C(&qword_38E90, &qword_2C0F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = objc_allocWithZone(ISIcon);
  v20 = sub_2A3E4();
  if (v18)
  {
    [v19 initWithType:v20];

    v21 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v22 = *v1;
    v36 = *v1;
    v37 = *(v1 + 8);
    if (v37 == 1)
    {
      v23 = v22;
    }

    else
    {

      sub_2A574();
      v27 = sub_2A014();
      sub_29BE4();

      sub_29EB4();
      swift_getAtKeyPath();
      sub_A0F4(&v36);
      (*(v30 + 8))(v7, v31);
      v23 = v35;
    }

    [v21 setScale:v23];
    [v21 setDrawBorder:1];
    sub_29BC4();
    v15 = v13;
  }

  else
  {
    [v19 initWithBundleIdentifier:v20];

    v24 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v25 = *v1;
    v36 = *v1;
    v37 = *(v1 + 8);
    if (v37 == 1)
    {
      v26 = v25;
    }

    else
    {

      sub_2A574();
      v28 = sub_2A014();
      sub_29BE4();

      sub_29EB4();
      swift_getAtKeyPath();
      sub_A0F4(&v36);
      (*(v30 + 8))(v7, v31);
      v26 = v35;
    }

    [v24 setScale:v26];
    [v24 setDrawBorder:1];
    sub_29BC4();
  }

  (*(v9 + 16))(v33, v15, v8);
  swift_storeEnumTagMultiPayload();
  sub_55DC(&qword_38E88, &qword_38E90, &qword_2C0F0);
  sub_29F44();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_9F60()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[9] = *(v0 + 41);
  sub_2B4C(&qword_38E78, &qword_2C0E8);
  sub_A044();
  return sub_2A204();
}

unint64_t sub_A044()
{
  result = qword_38E80;
  if (!qword_38E80)
  {
    sub_504C(&qword_38E78, &qword_2C0E8);
    sub_55DC(&qword_38E88, &qword_38E90, &qword_2C0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38E80);
  }

  return result;
}

uint64_t sub_A0F4(uint64_t a1)
{
  v2 = sub_2B4C(&qword_38EA0, &qword_2C100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A1A4()
{
  result = qword_38EB8;
  if (!qword_38EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38EB8);
  }

  return result;
}

uint64_t sub_A1F8(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *a1;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = v3[4];
  v9 = *(v3 + 40);
  v10 = *a2;
  v11 = a2[1];
  LOBYTE(v3) = *(a2 + 16);
  v12 = a2[3];
  v13 = a2[4];
  v14 = *(a2 + 40);
  if ((v6 & 1) == 0)
  {
    if (a2[2])
    {
      return 0;
    }

    if (v4 == v10 && v5 == v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((a2[2] & 1) == 0)
  {
    return 0;
  }

  if (v4 != v10 || v5 != v11)
  {
LABEL_9:
    if ((sub_2A8A4() & 1) == 0)
    {
      return 0;
    }
  }

LABEL_10:
  if (v7 == v12 && v8 == v13 || (sub_2A8A4() & 1) != 0)
  {
    return v9 ^ v14 ^ 1u;
  }

  return 0;
}

BOOL sub_A2C8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  sub_8228();
  return sub_2A6D4() == -1;
}

BOOL sub_A328(__int128 *a1, __int128 *a2)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 3);
  v11 = *(a1 + 4);
  v12 = *(a1 + 40);
  v3 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  v7 = *(a2 + 40);
  return (sub_2A3D4() & 1) == 0;
}

BOOL sub_A398(__int128 *a1, __int128 *a2)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 3);
  v11 = *(a1 + 4);
  v12 = *(a1 + 40);
  v3 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  v7 = *(a2 + 40);
  return (sub_2A3D4() & 1) == 0;
}

uint64_t sub_A408(__int128 *a1, __int128 *a2)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 3);
  v11 = *(a1 + 4);
  v12 = *(a1 + 40);
  v3 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  v7 = *(a2 + 40);
  return sub_2A3D4() & 1;
}

__n128 sub_A474(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_A488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A4D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A52C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A5F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  v4 = a1[8];
  v25 = a1[5];
  v26 = a1[6];
  sub_8228();

  v5 = sub_2A0C4();
  v22 = v6;
  v23 = v5;
  v21 = v7;
  v24 = v8;

  v9 = sub_2A0C4();
  v11 = v10;
  v13 = v12;
  sub_2A074();
  v14 = sub_2A0A4();
  v16 = v15;
  LOBYTE(v3) = v17;
  v19 = v18;

  sub_50E8(v9, v11, v13 & 1);

  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v24;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = v3 & 1;
  *(a2 + 56) = v19;
  sub_ADA4(v23, v22, v21 & 1);

  sub_ADA4(v14, v16, v3 & 1);

  sub_50E8(v14, v16, v3 & 1);

  sub_50E8(v23, v22, v21 & 1);
}

uint64_t sub_A788@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v32 = sub_2B4C(&qword_38E98, &qword_2C0F8);
  v2 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v33 = &v30 - v3;
  v4 = sub_29EC4();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B4C(&qword_38E90, &qword_2C0F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = objc_allocWithZone(ISIcon);
  v20 = sub_2A3E4();
  if (v18)
  {
    [v19 initWithType:v20];

    v21 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v22 = *v1;
    v36 = *v1;
    v37 = *(v1 + 8);
    if (v37 == 1)
    {
      v23 = v22;
    }

    else
    {

      sub_2A574();
      v27 = sub_2A014();
      sub_29BE4();

      sub_29EB4();
      swift_getAtKeyPath();
      sub_A0F4(&v36);
      (*(v30 + 8))(v7, v31);
      v23 = v35;
    }

    [v21 setScale:v23];
    [v21 setDrawBorder:1];
    sub_29BC4();
    v15 = v13;
  }

  else
  {
    [v19 initWithBundleIdentifier:v20];

    v24 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v25 = *v1;
    v36 = *v1;
    v37 = *(v1 + 8);
    if (v37 == 1)
    {
      v26 = v25;
    }

    else
    {

      sub_2A574();
      v28 = sub_2A014();
      sub_29BE4();

      sub_29EB4();
      swift_getAtKeyPath();
      sub_A0F4(&v36);
      (*(v30 + 8))(v7, v31);
      v26 = v35;
    }

    [v24 setScale:v26];
    [v24 setDrawBorder:1];
    sub_29BC4();
  }

  (*(v9 + 16))(v33, v15, v8);
  swift_storeEnumTagMultiPayload();
  sub_55DC(&qword_38E88, &qword_38E90, &qword_2C0F0);
  sub_29F44();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_AC6C()
{
  v4 = v0[2];
  *v5 = v0[3];
  *&v5[9] = *(v0 + 57);
  v2 = *v0;
  v3 = v0[1];
  sub_2B4C(&qword_38EC0, &qword_2C360);
  sub_2B4C(&qword_38E78, &qword_2C0E8);
  sub_55DC(&qword_38EC8, &qword_38EC0, &qword_2C360);
  sub_A044();
  return sub_2A204();
}

uint64_t sub_ADA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_ADF8(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *a1;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = *(v3 + 56);
  v12 = *a2;
  v13 = a2[1];
  LOBYTE(v3) = *(a2 + 16);
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v18 = *(a2 + 56);
  if ((v6 & 1) == 0)
  {
    if (a2[2])
    {
      return 0;
    }

    if (v4 == v12 && v5 == v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((a2[2] & 1) == 0)
  {
    return 0;
  }

  if (v4 != v12 || v5 != v13)
  {
LABEL_9:
    if ((sub_2A8A4() & 1) == 0)
    {
      return 0;
    }
  }

LABEL_10:
  if (v7 == v14 && v8 == v15 || (sub_2A8A4()) && (v9 == v16 && v10 == v17 || (sub_2A8A4()))
  {
    return v11 ^ v18 ^ 1u;
  }

  return 0;
}

uint64_t sub_AF0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AF54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AppsSettingsListContentMessageView.init(with:)@<X0>(uint64_t a1@<X8>)
{
  sub_29F24();
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v2 = qword_3AD50;
  result = sub_2A0B4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0xD00000000000001DLL;
  *(a1 + 40) = 0x800000000002DB40;
  return result;
}

Swift::Int ContentMessageType.hashValue.getter()
{
  sub_2A8F4();
  sub_2A904(0);
  return sub_2A914();
}

Swift::Int sub_B12C()
{
  sub_2A8F4();
  sub_2A904(0);
  return sub_2A914();
}

__n128 AppsSettingsListContentMessageView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_2B4C(&qword_38EE0, "T.");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v13 = v1;
  sub_2B4C(&qword_38EE8, &qword_2C458);
  sub_55DC(&qword_38EF0, &qword_38EE8, &qword_2C458);
  sub_29F94();
  sub_2A2A4();
  sub_29DB4();
  (*(v4 + 32))(a1, v7, v3);
  v8 = a1 + *(sub_2B4C(&qword_38EF8, &qword_2C460) + 36);
  v9 = v19;
  *(v8 + 64) = v18;
  *(v8 + 80) = v9;
  *(v8 + 96) = v20;
  v10 = v15;
  *v8 = v14;
  *(v8 + 16) = v10;
  result = v17;
  *(v8 + 32) = v16;
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_B394()
{
  sub_2B4C(&qword_38F18, "l-");
  sub_B8C4();
  return sub_2A204();
}

uint64_t sub_B438@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  sub_2A064();
  v7 = sub_2A0A4();
  v9 = v8;
  LOBYTE(v5) = v10;
  v12 = v11;

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_B4C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v5 = sub_2A1E4();
  v6 = (a2 + *(sub_2B4C(&qword_38F18, "l-") + 36));
  v7 = *(sub_2B4C(&qword_38F30, &qword_2C600) + 28);
  v8 = enum case for Image.Scale.large(_:);
  v9 = sub_2A1F4();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  result = swift_getKeyPath();
  *v6 = result;
  *a2 = v5;
  return result;
}

unint64_t sub_B5A0()
{
  result = qword_38F00;
  if (!qword_38F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38F00);
  }

  return result;
}

double sub_B610@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *&result = AppsSettingsListContentMessageView.body.getter(a1).n128_u64[0];
  return result;
}

uint64_t getEnumTagSinglePayload for ContentMessageType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContentMessageType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 sub_B740(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_B754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B79C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_B7FC()
{
  result = qword_38F08;
  if (!qword_38F08)
  {
    sub_504C(&qword_38EF8, &qword_2C460);
    sub_55DC(&qword_38F10, &qword_38EE0, "T.");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38F08);
  }

  return result;
}

unint64_t sub_B8C4()
{
  result = qword_38F20;
  if (!qword_38F20)
  {
    sub_504C(&qword_38F18, "l-");
    sub_55DC(&qword_38F28, &qword_38F30, &qword_2C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38F20);
  }

  return result;
}

uint64_t sub_B9A0(uint64_t a1)
{
  v2 = sub_2A1F4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29DD4();
}

__n128 sub_BA6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_BA80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_BAC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_BB28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_2A8A4();
  }
}

__n128 sub_BB88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_BBAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
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

double sub_BBFC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 89) = 1;
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
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 2 * -a2;
      result = 0.0;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0;
      return result;
    }

    *(a1 + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_BC98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v46 = sub_2A004();
  v44 = *(v46 - 8);
  v3 = *(v44 + 64);
  __chkstk_darwin(v46);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B4C(&qword_38A38, "\n9");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v39 - v7;
  v9 = sub_2B4C(&qword_38F38, &qword_2C920);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = sub_2B4C(&qword_38F40, &qword_2C928);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v40 = sub_2B4C(&qword_38F48, &qword_2C930);
  v18 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v20 = &v39 - v19;
  v47 = sub_2B4C(&qword_38F50, &qword_2C938);
  v45 = *(v47 - 8);
  v21 = *(v45 + 64);
  __chkstk_darwin(v47);
  v23 = &v39 - v22;
  *v8 = sub_29F34();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v24 = sub_2B4C(&qword_38F58, &unk_2C940);
  sub_C1F8(v2, &v8[*(v24 + 44)]);
  v25 = *(v2 + 16);
  v26 = *(v2 + 24);
  v27 = *(v2 + 72);
  v28 = *(v2 + 88);
  sub_DA18(v8, v12, &qword_38A38, "\n9");
  v29 = &v12[*(sub_2B4C(&qword_38A40, "Z9") + 36)];
  *v29 = v25;
  *(v29 + 1) = v26;
  v29[16] = 1;
  if (v28 < 0)
  {
    v27 = v28;
  }

  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v27 & 1;
  (*(v41 + 32))(v17, v12, v42);
  v32 = *(v14 + 44);
  v33 = v40;
  v34 = &v17[v32];
  *v34 = KeyPath;
  v34[1] = sub_DA00;
  v34[2] = v31;
  sub_DA18(v17, v20, &qword_38F40, &qword_2C928);
  v20[*(v33 + 36)] = v26 != 3;
  sub_2B94(v25, v26);
  v35 = v43;
  sub_29FF4();
  v36 = sub_DA80();
  sub_2A184();
  (*(v44 + 8))(v35, v46);
  sub_E02C(v20, &qword_38F48, &qword_2C930);
  sub_2B94(v25, v26);
  v49 = v33;
  v50 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v47;
  sub_2A1A4();

  return (*(v45 + 8))(v23, v37);
}

uint64_t sub_C1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v107 = sub_2B4C(&qword_38F98, &qword_2C990);
  v96 = *(v107 - 8);
  v3 = *(v96 + 64);
  __chkstk_darwin(v107);
  v95 = &v90 - v4;
  v105 = sub_2B4C(&qword_38FA0, &qword_2C998);
  v94 = *(v105 - 8);
  v5 = *(v94 + 64);
  __chkstk_darwin(v105);
  v93 = &v90 - v6;
  v109 = sub_2B4C(&qword_38FA8, &qword_2C9A0);
  v98 = *(v109 - 8);
  v7 = *(v98 + 64);
  __chkstk_darwin(v109);
  v97 = &v90 - v8;
  v101 = sub_2B4C(&qword_38FB0, &qword_2C9A8);
  v9 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v104 = &v90 - v10;
  v116 = sub_2B4C(&qword_38FB8, &qword_2C9B0);
  v11 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v108 = &v90 - v12;
  v112 = sub_2B4C(&qword_38FC0, &qword_2C9B8);
  v13 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v115 = &v90 - v14;
  v102 = sub_2B4C(&qword_38FC8, &qword_2C9C0);
  v15 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v103 = &v90 - v16;
  v114 = sub_2B4C(&qword_38FD0, &qword_2C9C8);
  v17 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v106 = &v90 - v18;
  v113 = sub_2B4C(&qword_38FD8, &qword_2C9D0);
  v111 = *(v113 - 8);
  v19 = *(v111 + 64);
  __chkstk_darwin(v113);
  v110 = &v90 - v20;
  v21 = sub_2B4C(&qword_38FE0, &qword_2C9D8);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v90 - v26;
  v100 = sub_2A324();
  v99 = *(v100 - 8);
  v28 = *(v99 + 64);
  v29 = __chkstk_darwin(v100);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v90 - v32;
  v34 = sub_29B74();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AppsSettingsDestinationOption();
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = (&v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_30EC(*(a1 + 56), *(a1 + 64), *(a1 + 16), *(a1 + 24), v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v48 = v42[1];
      v121 = *v42;
      v122 = v48;
      __chkstk_darwin(EnumCaseMultiPayload);
      *(&v90 - 2) = a1;
      sub_2B4C(&qword_38FE8, &qword_2C9E0);
      sub_55DC(&qword_38FF0, &qword_38FE8, &qword_2C9E0);
      sub_E08C();
      v49 = v110;
      sub_29D34();
      v50 = v111;
      v51 = v113;
      (*(v111 + 16))(v104, v49, v113);
      swift_storeEnumTagMultiPayload();
      sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0);
      v52 = sub_55DC(&qword_38FF8, &qword_38FA0, &qword_2C998);
      v53 = sub_55DC(&qword_39000, &qword_38F98, &qword_2C990);
      v121 = v105;
      v122 = v107;
      v123 = v52;
      v124 = v53;
      swift_getOpaqueTypeConformance2();
      v54 = v108;
      sub_29F44();
      sub_DD84(v54, v115);
      swift_storeEnumTagMultiPayload();
      sub_DDF4();
      sub_DEA4();
      sub_29F44();
      sub_E02C(v54, &qword_38FB8, &qword_2C9B0);
      return (*(v50 + 8))(v49, v51);
    }

    else
    {
      v63 = swift_allocObject();
      v64 = *(a1 + 48);
      v63[3] = *(a1 + 32);
      v63[4] = v64;
      v63[5] = *(a1 + 64);
      *(v63 + 89) = *(a1 + 73);
      v65 = *(a1 + 16);
      v63[1] = *a1;
      v63[2] = v65;
      __chkstk_darwin(v63);
      *(&v90 - 2) = a1;
      sub_DD4C(a1, &v121);
      sub_2B4C(&qword_38FE8, &qword_2C9E0);
      sub_55DC(&qword_38FF0, &qword_38FE8, &qword_2C9E0);
      v66 = v93;
      sub_2A244();
      v67 = v95;
      sub_29F54();
      v68 = sub_55DC(&qword_38FF8, &qword_38FA0, &qword_2C998);
      v69 = sub_55DC(&qword_39000, &qword_38F98, &qword_2C990);
      v70 = v97;
      v71 = v105;
      v72 = v107;
      sub_2A124();
      (*(v96 + 8))(v67, v72);
      (*(v94 + 8))(v66, v71);
      v73 = v98;
      v74 = v109;
      (*(v98 + 16))(v104, v70, v109);
      swift_storeEnumTagMultiPayload();
      sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0);
      v121 = v71;
      v122 = v72;
      v123 = v68;
      v124 = v69;
      swift_getOpaqueTypeConformance2();
      v75 = v108;
      sub_29F44();
      sub_DD84(v75, v115);
      swift_storeEnumTagMultiPayload();
      sub_DDF4();
      sub_DEA4();
      sub_29F44();
      sub_E02C(v75, &qword_38FB8, &qword_2C9B0);
      return (*(v73 + 8))(v70, v74);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v56 = v99;
    v57 = v100;
    (*(v99 + 32))(v31, v42, v100);
    (*(v56 + 16))(v25, v31, v57);
    v58 = (*(v56 + 56))(v25, 0, 1, v57);
    __chkstk_darwin(v58);
    *(&v90 - 2) = a1;
    sub_2B4C(&qword_38FE8, &qword_2C9E0);
    sub_55DC(&qword_38FF0, &qword_38FE8, &qword_2C9E0);
    sub_E564(&qword_38B88, &type metadata accessor for SettingsPaneRecipe);
    v59 = v110;
    sub_29D34();
    v60 = v111;
    v61 = v113;
    (*(v111 + 16))(v103, v59, v113);
    swift_storeEnumTagMultiPayload();
    sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0);
    v62 = v106;
    sub_29F44();
    sub_E25C(v62, v115, &qword_38FD0, &qword_2C9C8);
    swift_storeEnumTagMultiPayload();
    sub_DDF4();
    sub_DEA4();
    sub_29F44();
    sub_E02C(v62, &qword_38FD0, &qword_2C9C8);
    (*(v60 + 8))(v59, v61);
    return (*(v56 + 8))(v31, v57);
  }

  else
  {
    (*(v35 + 32))(v38, v42, v34);
    sub_29B34();
    v44 = v99;
    v45 = v100;
    v46 = (*(v99 + 48))(v27, 1, v100);
    v92 = v34;
    v91 = v35;
    if (v46 == 1)
    {
      sub_E02C(v27, &qword_38FE0, &qword_2C9D8);
      v119 = v34;
      v120 = sub_E564(&qword_38B90, &type metadata accessor for PreferencesControllerRecipe);
      v47 = sub_E0FC(&v118);
      (*(v35 + 16))(v47, v38, v34);
    }

    else
    {
      v76 = *(v44 + 32);
      v76(v33, v27, v45);
      v119 = v45;
      v120 = sub_E564(&qword_38B88, &type metadata accessor for SettingsPaneRecipe);
      v77 = sub_E0FC(&v118);
      v76(v77, v33, v45);
    }

    sub_E160(&v118, &v121);
    v78 = v124;
    v109 = v125;
    v79 = sub_E178(&v121, v124);
    v80 = sub_2A694();
    v81 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v80 - 8);
    v83 = &v90 - v82;
    v84 = *(v78 - 8);
    (*(v84 + 16))(&v90 - v82, v79, v78);
    v85 = (*(v84 + 56))(v83, 0, 1, v78);
    __chkstk_darwin(v85);
    *(&v90 - 2) = a1;
    sub_2B4C(&qword_38FE8, &qword_2C9E0);
    sub_55DC(&qword_38FF0, &qword_38FE8, &qword_2C9E0);
    v86 = v110;
    sub_29D34();
    v87 = v111;
    v88 = v113;
    (*(v111 + 16))(v103, v86, v113);
    swift_storeEnumTagMultiPayload();
    sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0);
    v89 = v106;
    sub_29F44();
    sub_E25C(v89, v115, &qword_38FD0, &qword_2C9C8);
    swift_storeEnumTagMultiPayload();
    sub_DDF4();
    sub_DEA4();
    sub_29F44();
    sub_E02C(v89, &qword_38FD0, &qword_2C9C8);
    (*(v87 + 8))(v86, v88);
    (*(v91 + 8))(v38, v92);
    return sub_E1BC(&v121);
  }
}

__n128 sub_D508@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  if (v9 < 0)
  {
    v11 = *(a1 + 49);
    v10 = a1 + 49;
    v12 = *(v10 + 4) | (*(v10 + 6) << 16);
    v16 = *(v10 + 31);
    v13 = v9 & 0x7F;
    swift_getKeyPath();
    v17[0] = v4;
    v17[1] = v3;
    v18 = v5;
    v21 = BYTE2(v12);
    v20 = v12;
    v19 = v11;
    v22 = v7;
    v23 = v6;
    v24 = v8;
    v25 = v16;
    v26 = v13;
    sub_E25C(v17, v27, &qword_39028, &unk_2CA18);
    sub_E2C4();
    sub_E318();
  }

  else
  {
    LOBYTE(v17[0]) = 0;
    swift_getKeyPath();
    sub_E36C();
    sub_E2C4();
    sub_E318();
  }

  sub_29F44();
  v14 = v28[0];
  *(a2 + 32) = v27[2];
  *(a2 + 48) = v14;
  *(a2 + 58) = *(v28 + 10);
  result = v27[1];
  *a2 = v27[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_D704(uint64_t a1)
{
  v2 = sub_2B4C(&unk_38E10, &qword_2B770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v17 - v4;
  v6 = sub_29EC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 8);
  v11 = *a1;
  v18 = v11;
  if (v19 == 1)
  {
    v12 = v11;
  }

  else
  {

    sub_2A574();
    v13 = sub_2A014();
    sub_29BE4();

    sub_29EB4();
    swift_getAtKeyPath();
    sub_E02C(&v18, &qword_39040, &qword_2CA28);
    (*(v7 + 8))(v10, v6);
    v12 = v17[1];
  }

  v14 = sub_2A4C4();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v12;
  sub_1EEAC(0, 0, v5, &unk_2CA30, v15);
}

uint64_t sub_D94C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  *v7 = v1[4];
  *&v7[9] = *(v1 + 73);
  v3 = *v1;
  v4 = v1[1];
  return sub_BC98(a1);
}

uint64_t sub_D998@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_DA18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B4C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_DA80()
{
  result = qword_38F60;
  if (!qword_38F60)
  {
    sub_504C(&qword_38F48, &qword_2C930);
    sub_DB38();
    sub_55DC(&qword_38F88, &qword_38F90, &qword_2C988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38F60);
  }

  return result;
}

unint64_t sub_DB38()
{
  result = qword_38F68;
  if (!qword_38F68)
  {
    sub_504C(&qword_38F40, &qword_2C928);
    sub_504C(&qword_38A38, "\n9");
    sub_55DC(&qword_38F70, &qword_38A38, "\n9");
    sub_7ABC();
    swift_getOpaqueTypeConformance2();
    sub_55DC(&qword_38F78, &qword_38F80, &qword_2C980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_38F68);
  }

  return result;
}

uint64_t sub_DC74()
{
  sub_DCD8(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 40) >= 4uLL)
  {
  }

  sub_DCE4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return _swift_deallocObject(v0, 105, 7);
}

void sub_DCD8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_DCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 < 0)
  {
    sub_DD3C();
  }

  else
  {
    sub_DD3C();
  }
}

uint64_t sub_DD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B4C(&qword_38FB8, &qword_2C9B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_DDF4()
{
  result = qword_39010;
  if (!qword_39010)
  {
    sub_504C(&qword_38FD0, &qword_2C9C8);
    sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39010);
  }

  return result;
}

unint64_t sub_DEA4()
{
  result = qword_39018;
  if (!qword_39018)
  {
    sub_504C(&qword_38FB8, &qword_2C9B0);
    sub_55DC(&qword_39008, &qword_38FD8, &qword_2C9D0);
    sub_504C(&qword_38FA0, &qword_2C998);
    sub_504C(&qword_38F98, &qword_2C990);
    sub_55DC(&qword_38FF8, &qword_38FA0, &qword_2C998);
    sub_55DC(&qword_39000, &qword_38F98, &qword_2C990);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39018);
  }

  return result;
}

uint64_t sub_E02C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2B4C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_E08C()
{
  result = qword_39020;
  if (!qword_39020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39020);
  }

  return result;
}

uint64_t *sub_E0FC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_E160(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_E178(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_E1BC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_E208@<X0>(void *a1@<X8>)
{
  result = sub_29E04();
  *a1 = v3;
  return result;
}

uint64_t sub_E25C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B4C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_E2C4()
{
  result = qword_39030;
  if (!qword_39030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39030);
  }

  return result;
}

unint64_t sub_E318()
{
  result = qword_39038;
  if (!qword_39038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39038);
  }

  return result;
}

uint64_t sub_E374()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_E3B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6BD8;

  return sub_1F460(a1, v4, v5, v6);
}

unint64_t sub_E46C()
{
  result = qword_39048;
  if (!qword_39048)
  {
    sub_504C(&qword_39050, &qword_2CA38);
    sub_504C(&qword_38F48, &qword_2C930);
    sub_DA80();
    swift_getOpaqueTypeConformance2();
    sub_E564(&qword_39058, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39048);
  }

  return result;
}

uint64_t sub_E564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E5DC@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_2B4C(&qword_39060, &qword_2CAF8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v42 - v4);
  v6 = sub_29F14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  v14 = sub_2B4C(&qword_39068, &qword_2CB00);
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  __chkstk_darwin(v14);
  v50 = &v42 - v16;
  v44 = sub_2B4C(&qword_39070, &qword_2CB08);
  v17 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v51 = &v42 - v18;
  v19 = 0;
  v52 = v1;
  v20 = v1[1];
  v43 = v1[2];
  v21 = v1[4];
  v47 = v1[3];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    if (v20 >= 3)
    {
      v19 = *v1;

      v24 = &_swiftEmptyArrayStorage;
      v23 = v20;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v53 = v19;
  v54 = v23;
  v55 = 0;
  v56 = v24;
  sub_2B4C(&qword_39078, &unk_2CB10);
  sub_2B4C(&qword_38CE0, &qword_2B650);
  sub_ED48();
  sub_4FC8();
  sub_2A274();
  v48 = v5;
  if (v20 < 3 || (, , v22))
  {
    sub_29F04();
  }

  else
  {
    sub_29EF4();
  }

  v25 = *(v7 + 32);
  v25(v13, v11, v6);
  v26 = *(sub_2B4C(&qword_39088, &qword_2CB20) + 36);
  v27 = v51;
  (*(v7 + 16))(v51 + v26, v13, v6);
  v28 = *(v7 + 56);
  v28(v27 + v26, 0, 1, v6);
  (*(v45 + 32))(v27, v50, v46);
  KeyPath = swift_getKeyPath();
  v30 = (v27 + *(v44 + 36));
  v31 = *(sub_2B4C(&qword_39090, &qword_2CB58) + 28);
  v25(v30 + v31, v13, v6);
  v28(v30 + v31, 0, 1, v6);
  *v30 = KeyPath;
  if (v20 >= 3)
  {

    v34 = v43;
    v35 = v47;
    sub_ADA4(v43, v47, 0);

    sub_EE7C(v34, v35, 0, &_swiftEmptyArrayStorage);
    v33 = v48;
    *v48 = v34;
    *(v33 + 8) = v35;
    *(v33 + 16) = 0;
    *(v33 + 24) = &_swiftEmptyArrayStorage;
    v36 = enum case for SectionIndexLabel.text(_:);
    v37 = sub_29EE4();
    v38 = *(v37 - 8);
    (*(v38 + 104))(v33, v36, v37);
    (*(v38 + 56))(v33, 0, 1, v37);
  }

  else
  {
    v32 = sub_29EE4();
    v33 = v48;
    (*(*(v32 - 8) + 56))(v48, 1, 1, v32);
  }

  v39 = sub_2B4C(&qword_39098, &qword_2CB60);
  v40 = v49;
  sub_DA18(v33, v49 + *(v39 + 36), &qword_39060, &qword_2CAF8);
  return sub_DA18(v51, v40, &qword_39070, &qword_2CB08);
}

uint64_t sub_EB60(uint64_t a1)
{
  v2 = *(a1 + 32);

  sub_2B4C(&qword_395C0, &qword_2CB70);
  sub_55DC(&qword_38D30, &qword_395C0, &qword_2CB70);
  sub_5094();
  sub_5624();
  return sub_2A264();
}

__n128 sub_EC38@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v12 = a1[2];
  v13[0] = v3;
  *(v13 + 9) = *(a1 + 57);
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  type metadata accessor for AppsSettingsListViewModel();
  sub_5678(&v10, v14);
  sub_EF30();
  v5 = sub_29CD4();
  *&v14[7] = v10;
  *&v14[23] = v11;
  *&v14[39] = v12;
  *&v14[55] = v13[0];
  *&v14[64] = *(v13 + 9);
  *a2 = v5;
  *(a2 + 8) = v6 & 1;
  v7 = *&v14[16];
  *(a2 + 9) = *v14;
  result = *&v14[32];
  v9 = *&v14[48];
  *(a2 + 73) = *&v14[64];
  *(a2 + 57) = v9;
  *(a2 + 41) = result;
  *(a2 + 25) = v7;
  return result;
}

uint64_t sub_ED04@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_E5DC(a1);
}

unint64_t sub_ED48()
{
  result = qword_39080;
  if (!qword_39080)
  {
    sub_504C(&qword_39078, &unk_2CB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39080);
  }

  return result;
}

uint64_t sub_EDE8(uint64_t a1)
{
  v2 = sub_2B4C(&qword_390A0, &qword_2CB68);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_EEC0(a1, &v6 - v4);
  return sub_29E34();
}

uint64_t sub_EE7C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_50E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_EEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B4C(&qword_390A0, &qword_2CB68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_EF30()
{
  result = qword_395B0;
  if (!qword_395B0)
  {
    type metadata accessor for AppsSettingsListViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_395B0);
  }

  return result;
}

unint64_t sub_EF8C()
{
  result = qword_390A8;
  if (!qword_390A8)
  {
    sub_504C(&qword_39098, &qword_2CB60);
    sub_F044();
    sub_55DC(&qword_390E0, &qword_390E8, &unk_2CB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_390A8);
  }

  return result;
}

unint64_t sub_F044()
{
  result = qword_390B0;
  if (!qword_390B0)
  {
    sub_504C(&qword_39070, &qword_2CB08);
    sub_F0FC();
    sub_55DC(&qword_390D8, &qword_39090, &qword_2CB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_390B0);
  }

  return result;
}

unint64_t sub_F0FC()
{
  result = qword_390B8;
  if (!qword_390B8)
  {
    sub_504C(&qword_39088, &qword_2CB20);
    sub_F1B4();
    sub_55DC(&qword_390C8, &qword_390D0, &qword_2CB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_390B8);
  }

  return result;
}

unint64_t sub_F1B4()
{
  result = qword_390C0;
  if (!qword_390C0)
  {
    sub_504C(&qword_39068, &qword_2CB00);
    sub_ED48();
    sub_4FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_390C0);
  }

  return result;
}

uint64_t sub_F260(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2B4C(&qword_390F0, &qword_2CBB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2B4C(&qword_390F8, &qword_2CBB8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2B4C(&qword_39100, &unk_2CBC0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_F3EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2B4C(&qword_390F0, &qword_2CBB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2B4C(&qword_390F8, &qword_2CBB8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_2B4C(&qword_39100, &unk_2CBC0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AppsSettingsList()
{
  result = qword_39160;
  if (!qword_39160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F5AC()
{
  sub_F754(319, &qword_39170, &type metadata accessor for AppendSettingsNavigationPathAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_F754(319, &qword_39178, &type metadata accessor for ClearSettingsNavigationPathAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_F6F0();
      if (v2 <= 0x3F)
      {
        sub_F754(319, &unk_39190, type metadata accessor for AppsSettingsListViewModel, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_F6F0()
{
  if (!qword_39180)
  {
    sub_504C(&qword_39188, &qword_2CBE8);
    v0 = sub_29CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_39180);
    }
  }
}

void sub_F754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_F7D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v141 = a1;
  v3 = sub_2B4C(&qword_391C8, &qword_2CC40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v174 = &v132 - v5;
  v140 = sub_29A64();
  v139 = *(v140 - 8);
  v6 = *(v139 + 64);
  __chkstk_darwin(v140);
  v173 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_2A2F4();
  v172 = *(v181 - 8);
  v8 = *(v172 + 64);
  __chkstk_darwin(v181);
  v171 = (&v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = sub_29FE4();
  v169 = *(v170 - 8);
  v10 = *(v169 + 64);
  __chkstk_darwin(v170);
  v166 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_29ED4();
  v163 = *(v164 - 8);
  v12 = *(v163 + 64);
  __chkstk_darwin(v164);
  v162 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_29F74();
  v152 = *(v153 - 8);
  v14 = *(v152 + 64);
  __chkstk_darwin(v153);
  v149 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppsSettingsList();
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  v20 = sub_2B4C(&qword_391D0, &qword_2CC48);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v132 - v22);
  v154 = sub_2B4C(&qword_391D8, &qword_2CC50);
  v24 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v185 = &v132 - v25;
  v159 = sub_2B4C(&qword_391E0, &qword_2CC58);
  v156 = *(v159 - 8);
  v26 = *(v156 + 64);
  __chkstk_darwin(v159);
  v155 = &v132 - v27;
  v160 = sub_2B4C(&qword_391E8, &qword_2CC60);
  v158 = *(v160 - 8);
  v28 = *(v158 + 64);
  __chkstk_darwin(v160);
  v157 = &v132 - v29;
  v187 = sub_2B4C(&qword_391F0, &qword_2CC68);
  v30 = *(*(v187 - 8) + 64);
  __chkstk_darwin(v187);
  v161 = &v132 - v31;
  v167 = sub_2B4C(&qword_391F8, &qword_2CC70);
  v165 = *(v167 - 8);
  v32 = *(v165 + 64);
  __chkstk_darwin(v167);
  v186 = &v132 - v33;
  v133 = sub_2B4C(&qword_39200, &qword_2CC78);
  v132 = *(v133 - 8);
  v34 = *(v132 + 64);
  __chkstk_darwin(v133);
  v168 = &v132 - v35;
  v136 = sub_2B4C(&qword_39208, &qword_2CC80);
  v134 = *(v136 - 8);
  v36 = *(v134 + 64);
  __chkstk_darwin(v136);
  v175 = &v132 - v37;
  v138 = sub_2B4C(&qword_39210, &qword_2CC88);
  v137 = *(v138 - 8);
  v38 = *(v137 + 64);
  __chkstk_darwin(v138);
  v135 = &v132 - v39;
  sub_130AC(v2, &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v178 = *(v18 + 80);
  v177 = v40 + v19;
  v41 = swift_allocObject();
  v179 = v40;
  v176 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13114(v176, v41 + v40);
  v42 = sub_2A2A4();
  v44 = v43;
  v150 = v20;
  v45 = v23 + *(v20 + 36);
  sub_11F84(v2, v45);
  v46 = (v45 + *(sub_2B4C(&qword_39230, &qword_2CCA8) + 36));
  *v46 = v42;
  v46[1] = v44;
  *v23 = sub_13178;
  v23[1] = v41;
  v151 = v23;
  v47 = *(v17 + 36);
  v180 = v2;
  v48 = (v2 + v47);
  v50 = v48[1];
  v197 = *v48;
  v49 = v197;
  v198 = v50;
  v51 = sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A234();
  v52 = v193;
  v53 = v194;
  v54 = v195;
  swift_getKeyPath();
  v197 = v52;
  v198 = v53;
  v199 = v54;
  sub_2B4C(&qword_39240, &qword_2CCE0);
  sub_2A254();

  v147 = v194;
  v145 = v195;
  v146 = v196;

  v184 = v49;
  v188 = v49;
  v189 = v50;
  v183 = v50;
  v182 = v51;
  sub_2A234();
  v55 = v190;
  v56 = v191;
  v57 = v192;
  swift_getKeyPath();
  v190 = v55;
  v191 = v56;
  v192 = v57;
  sub_2A254();

  v144 = v188;
  v143 = v189;

  v58 = v149;
  sub_29F64();
  sub_29F24();
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v59 = qword_3AD50;
  v60 = qword_3AD50;
  v148 = v59;
  v61 = v60;
  v62 = sub_2A0B4();
  v64 = v63;
  v142 = v65;
  v67 = v66 & 1;
  sub_13208();
  v68 = v151;
  sub_2A114();
  sub_50E8(v62, v64, v67);

  (*(v152 + 8))(v58, v153);
  sub_E02C(v68, &qword_391D0, &qword_2CC48);
  v69 = sub_2A2B4();
  v193 = v184;
  v70 = v184;
  v194 = v183;
  v71 = v183;
  sub_2A224();
  v72 = v197;
  swift_getKeyPath();
  v193 = v72;
  v73 = sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  v74 = *&v72[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections];

  v75 = sub_2B4C(&qword_39268, &qword_2CD40);
  v76 = v185;
  v77 = &v185[*(v75 + 36)];
  *v77 = v69;
  v77[1] = v74;
  v78 = sub_2A2B4();
  v193 = v70;
  v194 = v71;
  sub_2A224();
  v79 = v197;
  swift_getKeyPath();
  v193 = v79;
  sub_29AD4();

  v80 = *&v79[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems];

  v81 = v154;
  v82 = (v76 + *(v154 + 36));
  *v82 = v78;
  v82[1] = v80;
  v83 = sub_134CC();
  v84 = v155;
  sub_2A0D4();
  sub_E02C(v76, &qword_391D8, &qword_2CC50);
  sub_29F24();
  v85 = sub_2A0B4();
  v87 = v86;
  LOBYTE(v76) = v88;
  v193 = v81;
  v194 = v83;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = v157;
  v91 = v159;
  sub_2A154();
  sub_50E8(v85, v87, v76 & 1);

  (*(v156 + 8))(v84, v91);
  v92 = v163;
  v93 = v162;
  v94 = v164;
  (*(v163 + 104))(v162, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v164);
  v193 = v91;
  v194 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v95 = v161;
  v96 = v160;
  sub_2A1B4();
  (*(v92 + 8))(v93, v94);
  (*(v158 + 8))(v90, v96);
  v97 = v176;
  sub_130AC(v180, v176);
  v98 = swift_allocObject();
  sub_13114(v97, v98 + v179);
  v99 = (v95 + *(v187 + 36));
  *v99 = sub_13678;
  v99[1] = v98;
  v99[2] = 0;
  v99[3] = 0;
  v193 = v184;
  v194 = v183;
  sub_2A224();
  v100 = v197;
  v101 = type metadata accessor for AppsSettingsListViewModel();
  v102 = sub_136D8();
  v185 = v73;
  sub_2A134();

  sub_E02C(v95, &qword_391F0, &qword_2CC68);
  v103 = v166;
  sub_29FD4();
  sub_2B4C(&qword_39298, &qword_2CD80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2CB90;
  LOBYTE(v95) = sub_2A044();
  *(inited + 32) = v95;
  v105 = sub_2A024();
  *(inited + 33) = v105;
  sub_2A034();
  sub_2A034();
  if (sub_2A034() != v95)
  {
    sub_2A034();
  }

  sub_2A034();
  v106 = sub_2A034();
  v107 = v172;
  if (v106 != v105)
  {
    sub_2A034();
  }

  v108 = v174;
  v109 = v103;
  v110 = v168;
  v111 = v167;
  v112 = v186;
  v193 = v187;
  v194 = v101;
  v195 = v102;
  v196 = v185;
  v113 = swift_getOpaqueTypeConformance2();
  sub_2A164();
  (*(v169 + 8))(v109, v170);
  (*(v165 + 8))(v112, v111);
  v114 = v111;
  v115 = v171;
  *v171 = 0xD000000000000022;
  v115[1] = 0x800000000002DD40;
  (*(v107 + 104))(v115, enum case for SettingsEventImage.graphicIcon(_:), v181);
  v116 = v173;
  sub_29A54();
  sub_29A94();
  v117 = sub_29AA4();
  v118 = *(v117 - 8);
  result = (*(v118 + 48))(v108, 1, v117);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v193 = v114;
    v194 = v113;
    v120 = swift_getOpaqueTypeConformance2();
    v121 = v133;
    sub_2A0E4();
    (*(v139 + 8))(v116, v140);
    (*(v107 + 8))(v115, v181);
    (*(v132 + 8))(v110, v121);
    (*(v118 + 8))(v108, v117);
    if (qword_38A00 != -1)
    {
      swift_once();
    }

    v187 = sub_29CE4();
    sub_966C(v187, qword_3AD70);
    v122 = v180;
    v123 = v176;
    sub_130AC(v180, v176);
    v124 = swift_allocObject();
    v125 = v179;
    sub_13114(v123, v124 + v179);
    v193 = v121;
    v194 = v120;
    v126 = swift_getOpaqueTypeConformance2();
    v127 = v135;
    v128 = v136;
    v129 = v175;
    sub_2A1C4();

    (*(v134 + 8))(v129, v128);
    if (qword_38A08 != -1)
    {
      swift_once();
    }

    sub_966C(v187, qword_3AD88);
    sub_130AC(v122, v123);
    v130 = swift_allocObject();
    sub_13114(v123, v130 + v125);
    v193 = v128;
    v194 = v126;
    swift_getOpaqueTypeConformance2();
    v131 = v138;
    sub_2A1C4();

    return (*(v137 + 8))(v127, v131);
  }

  return result;
}

uint64_t sub_10DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v57 = a3;
  v4 = type metadata accessor for AppsSettingsList();
  v5 = v4 - 8;
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  __chkstk_darwin(v4);
  v52 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29D94();
  v7 = *(v50 - 8);
  v49 = *(v7 + 64);
  __chkstk_darwin(v50);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2B4C(&qword_392D8, &qword_2CDD0);
  v9 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v11 = &v44 - v10;
  v12 = sub_2B4C(&qword_392E0, &qword_2CDD8);
  v13 = *(v12 - 8);
  v55 = v12;
  v56 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v58 = &v44 - v15;
  v16 = (a2 + *(v5 + 36));
  v46 = a2;
  v17 = v16[1];
  v45 = *v16;
  *&v65 = v45;
  *(&v65 + 1) = v17;
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A234();
  v18 = v60;
  v19 = v61;
  swift_getKeyPath();
  v68 = v18;
  v69 = v19;
  sub_2B4C(&qword_39240, &qword_2CCE0);
  sub_2A254();

  v44 = v60;
  v20 = v61;
  v21 = v62;

  v65 = v44;
  v66 = v20;
  v67 = v21;
  v59 = a2;
  sub_2B4C(&qword_392E8, &unk_2CDE0);
  sub_7ABC();
  sub_13FF0();
  sub_2A084();
  *&v60 = v45;
  *(&v60 + 1) = v17;
  sub_2A224();
  v22 = v65;
  v23 = *(v65 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appsSettingsListScrollToItemSubject);

  v24 = v47;
  v25 = v50;
  (*(v7 + 16))(v47, v51, v50);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = swift_allocObject();
  (*(v7 + 32))(v27 + v26, v24, v25);
  v28 = v48;
  *&v11[*(v48 + 52)] = v23;
  v29 = &v11[*(v28 + 56)];
  *v29 = sub_1422C;
  v29[1] = v27;
  v30 = sub_2B4C(&qword_39310, &qword_2CDF8);
  v31 = sub_55DC(&qword_39318, &qword_392D8, &qword_2CDD0);
  v32 = sub_E08C();
  v33 = sub_55DC(&qword_39320, &qword_39310, &qword_2CDF8);
  sub_2A194();
  sub_E02C(v11, &qword_392D8, &qword_2CDD0);
  v34 = v52;
  sub_130AC(v46, v52);
  v35 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v36 = swift_allocObject();
  sub_13114(v34, v36 + v35);
  sub_2B4C(&qword_39328, &qword_2CE00);
  *&v60 = v28;
  *(&v60 + 1) = &type metadata for InstalledApplicationSettings;
  v61 = v30;
  v62 = v31;
  v63 = v32;
  v64 = v33;
  swift_getOpaqueTypeConformance2();
  sub_14588();
  v37 = type metadata accessor for HiddenAppsSettingsList();
  v38 = type metadata accessor for AppsSettingsListViewModel();
  v39 = sub_14600(&qword_39330, type metadata accessor for HiddenAppsSettingsList);
  v40 = sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  *&v60 = v37;
  *(&v60 + 1) = v38;
  v61 = v39;
  v62 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v55;
  v42 = v58;
  sub_2A194();

  return (*(v56 + 8))(v42, v41);
}

uint64_t sub_114A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = sub_2B4C(&qword_39300, &qword_2CDF0);
  v31 = *(v35 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v35);
  v5 = &v29 - v4;
  v32 = sub_2B4C(&qword_39338, &qword_2CE40);
  v6 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v8 = &v29 - v7;
  v33 = sub_2B4C(&qword_38CE0, &qword_2B650);
  v30 = *(v33 - 8);
  v9 = *(v30 + 64);
  __chkstk_darwin(v33);
  v29 = &v29 - v10;
  v11 = (a1 + *(type metadata accessor for AppsSettingsList() + 28));
  v12 = *v11;
  v13 = v11[1];
  v37 = *v11;
  v38 = v13;
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  v14 = v36;
  swift_getKeyPath();
  v37 = v14;
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  LODWORD(a1) = v14[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching];

  if (a1 != 1)
  {
    goto LABEL_6;
  }

  v37 = v12;
  v38 = v13;
  sub_2A224();
  v15 = v36;
  swift_getKeyPath();
  v37 = v15;
  sub_29AD4();

  v16 = *&v15[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter];
  v17 = *&v15[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter + 8];

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v37 = v12;
    v38 = v13;
    sub_2A224();
    v19 = v36;
    swift_getKeyPath();
    v37 = v19;
    sub_29AD4();

    v20 = *&v19[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems];

    v37 = v20;
    sub_2B4C(&qword_395C0, &qword_2CB70);
    sub_55DC(&qword_38D30, &qword_395C0, &qword_2CB70);
    sub_5094();
    sub_5624();
    v21 = v29;
    sub_2A264();
    v22 = v30;
    v23 = v33;
    (*(v30 + 16))(v8, v21, v33);
    swift_storeEnumTagMultiPayload();
    sub_140D4(&qword_38CE8, &qword_38CE0, &qword_2B650, sub_5094);
    sub_140D4(&qword_392F8, &qword_39300, &qword_2CDF0, sub_14150);
    sub_29F44();
    return (*(v22 + 8))(v21, v23);
  }

  else
  {
LABEL_6:
    v37 = v12;
    v38 = v13;
    sub_2A224();
    v25 = v36;
    swift_getKeyPath();
    v37 = v25;
    sub_29AD4();

    v26 = *&v25[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections];

    v37 = v26;
    sub_2B4C(&qword_39340, &qword_2CE48);
    sub_55DC(&qword_39348, &qword_39340, &qword_2CE48);
    sub_14150();
    sub_1470C();
    sub_2A264();
    v27 = v31;
    v28 = v35;
    (*(v31 + 16))(v8, v5, v35);
    swift_storeEnumTagMultiPayload();
    sub_140D4(&qword_38CE8, &qword_38CE0, &qword_2B650, sub_5094);
    sub_140D4(&qword_392F8, &qword_39300, &qword_2CDF0, sub_14150);
    sub_29F44();
    return (*(v27 + 8))(v5, v28);
  }
}

__n128 sub_11B20@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v12 = a1[2];
  v13[0] = v3;
  *(v13 + 9) = *(a1 + 57);
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  type metadata accessor for AppsSettingsListViewModel();
  sub_5678(&v10, v14);
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  v5 = sub_29CD4();
  *&v14[7] = v10;
  *&v14[23] = v11;
  *&v14[39] = v12;
  *&v14[55] = v13[0];
  *&v14[64] = *(v13 + 9);
  *a2 = v5;
  *(a2 + 8) = v6 & 1;
  v7 = *&v14[16];
  *(a2 + 9) = *v14;
  result = *&v14[32];
  v9 = *&v14[48];
  *(a2 + 73) = *&v14[64];
  *(a2 + 57) = v9;
  *(a2 + 41) = result;
  *(a2 + 25) = v7;
  return result;
}

uint64_t sub_11C1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  sub_9380(v3, v2);
}

uint64_t sub_11C6C(__int128 *a1)
{
  v2 = *a1;
  sub_2A2B4();
  sub_29D24();
}

uint64_t sub_11CE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  sub_29BD4();
  v5 = (a2 + *(sub_2B4C(&qword_39310, &qword_2CDF8) + 52));
  *v5 = v3;
  v5[1] = v4;
}

uint64_t sub_11D58(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HiddenAppsSettingsList();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (a2 + *(type metadata accessor for AppsSettingsList() + 28));
  v9 = v7[1];
  v16 = *v7;
  v8 = v16;
  v17 = v9;
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  v10 = v15;
  sub_14FE0();

  *v6 = swift_getKeyPath();
  sub_2B4C(&qword_38D18, &unk_2B690);
  swift_storeEnumTagMultiPayload();
  v11 = *(v3 + 20);
  type metadata accessor for HiddenAppsSettingsListViewModel();
  sub_14600(&qword_395E0, type metadata accessor for HiddenAppsSettingsListViewModel);
  sub_2A294();
  v16 = v8;
  v17 = v9;
  sub_2A224();
  v12 = v15;
  type metadata accessor for AppsSettingsListViewModel();
  sub_14600(&qword_39330, type metadata accessor for HiddenAppsSettingsList);
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_2A134();

  return sub_14648(v6);
}

uint64_t sub_11F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_2B4C(&qword_392D0, &qword_2CDC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v33 = &v32 - v6;
  v7 = (a1 + *(type metadata accessor for AppsSettingsList() + 28));
  v8 = *v7;
  v9 = v7[1];
  v36 = *v7;
  v37 = v9;
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  v10 = v35;
  swift_getKeyPath();
  v36 = v10;
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  LODWORD(a1) = v10[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching];

  if (a1 != 1)
  {
    goto LABEL_3;
  }

  v36 = v8;
  v37 = v9;
  sub_2A224();
  v11 = v35;
  swift_getKeyPath();
  v36 = v11;
  sub_29AD4();

  v12 = *&v11[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems];

  v13 = *(v12 + 16);

  if (v13)
  {
    goto LABEL_3;
  }

  v36 = v8;
  v37 = v9;
  sub_2A224();
  v17 = v35;
  swift_getKeyPath();
  v36 = v17;
  sub_29AD4();

  v18 = *&v17[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter];
  v19 = *&v17[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter + 8];

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = v33;
    sub_29FA4();
    v22 = sub_2A2A4();
    v24 = v23;
    v25 = [objc_opt_self() systemGroupedBackgroundColor];
    v26 = sub_2A1D4();
    v27 = sub_29D74();
    v28 = sub_2A054();
    v29 = &v21[*(v3 + 36)];
    *v29 = v26;
    *(v29 + 1) = v27;
    v29[16] = v28;
    *(v29 + 3) = v22;
    *(v29 + 4) = v24;
    v30 = v21;
    v31 = v34;
    sub_13F78(v30, v34);
    v15 = v31;
    v14 = 0;
  }

  else
  {
LABEL_3:
    v14 = 1;
    v15 = v34;
  }

  return (*(v4 + 56))(v15, v14, 1, v3);
}

uint64_t sub_122A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  v4 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter);
  a2[1] = v4;
}

uint64_t sub_12358(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AC4();
}

uint64_t sub_12428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  *a2 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching);
  return result;
}

uint64_t sub_124D8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AC4();
}

void sub_125A8(uint64_t a1)
{
  if (qword_389F8 != -1)
  {
    swift_once();
  }

  v2 = sub_29C14();
  sub_966C(v2, qword_3AD58);
  v3 = sub_29BF4();
  v4 = sub_2A584();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "onAppear called on AppsSettingsList", v5, 2u);
  }

  sub_127F0();
  v6 = (a1 + *(type metadata accessor for AppsSettingsList() + 28));
  v7 = *v6;
  v8 = v6[1];
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  sub_16894();

  sub_2A224();
  if (*&v10[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8] == 4)
  {
    *&v10[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection] = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
    sub_29AC4();
  }
}

void sub_127F0()
{
  v1 = sub_2B4C(&qword_392C0, &qword_2CD90);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = sub_2B4C(&qword_392C8, &qword_2CD98);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v33 = type metadata accessor for AppsSettingsList();
  v14 = *(v33 + 28);
  v35 = v0;
  v15 = (v0 + v14);
  v17 = *v15;
  v16 = v15[1];
  v41 = *v15;
  v42 = v16;
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  v18 = v39;
  v19 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
  swift_beginAccess();
  sub_E25C(v18 + v19, v13, &qword_392C8, &qword_2CD98);

  v20 = sub_29BB4();
  v21 = *(v20 - 8);
  LODWORD(v18) = (*(v21 + 48))(v13, 1, v20);
  sub_E02C(v13, &qword_392C8, &qword_2CD98);
  if (v18 == 1)
  {
    v39 = v17;
    v40 = v16;
    sub_2A224();
    v22 = v36;
    sub_13CA8(&qword_39218, &qword_2CC90, &type metadata accessor for AppendSettingsNavigationPathAction, v11);
    (*(v21 + 56))(v11, 0, 1, v20);
    v23 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
    swift_beginAccess();
    sub_13EA8(v11, v22 + v23, &qword_392C8, &qword_2CD98);
    swift_endAccess();
  }

  v39 = v17;
  v40 = v16;
  sub_2A224();
  v24 = v36;
  v25 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_clearSettingsNavigationPath;
  swift_beginAccess();
  sub_E25C(v24 + v25, v6, &qword_392C0, &qword_2CD90);

  v26 = sub_29B94();
  v27 = *(v26 - 8);
  LODWORD(v25) = (*(v27 + 48))(v6, 1, v26);
  sub_E02C(v6, &qword_392C0, &qword_2CD90);
  if (v25 == 1)
  {
    v36 = v17;
    v37 = v16;
    sub_2A224();
    v28 = v38;
    v29 = v34;
    v30 = v35 + *(v33 + 20);
    sub_13CA8(&qword_39220, &qword_2CC98, &type metadata accessor for ClearSettingsNavigationPathAction, v34);
    (*(v27 + 56))(v29, 0, 1, v26);
    v31 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_clearSettingsNavigationPath;
    swift_beginAccess();
    sub_13EA8(v29, v28 + v31, &qword_392C0, &qword_2CD90);
    swift_endAccess();
  }
}

uint64_t sub_12C44(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_2A2C4();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2A2E4();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppsSettingsList();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  sub_127F0();
  sub_13908();
  v15 = sub_2A5A4();
  sub_130AC(v2, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_13114(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v21;
  v18[1] = a2;
  aBlock[4] = sub_13BD8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_13064;
  aBlock[3] = &unk_36580;
  v19 = _Block_copy(aBlock);

  sub_2A2D4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_14600(&qword_392A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_2B4C(&qword_392B0, &qword_2CD88);
  sub_55DC(&qword_392B8, &qword_392B0, &qword_2CD88);
  sub_2A6F4();
  sub_2A5B4();
  _Block_release(v19);

  (*(v24 + 8))(v7, v4);
  return (*(v22 + 8))(v11, v23);
}

void sub_12FE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for AppsSettingsList() + 28));
  v7 = *v5;
  v8 = v5[1];
  sub_2B4C(&qword_39238, &qword_2CCB0);
  sub_2A224();
  sub_15054(a2, a3);
}

uint64_t sub_13064(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_130AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsSettingsList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsSettingsList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppsSettingsList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10DA8(a1, v6, a2);
}

unint64_t sub_13208()
{
  result = qword_39248;
  if (!qword_39248)
  {
    sub_504C(&qword_391D0, &qword_2CC48);
    sub_55DC(&qword_39250, &qword_39258, &qword_2CD10);
    sub_55DC(&qword_39260, &qword_39230, &qword_2CCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39248);
  }

  return result;
}

uint64_t sub_132EC()
{
  v0 = sub_29CE4();
  sub_9608(v0, qword_3AD70);
  sub_966C(v0, qword_3AD70);
  return sub_29CF4();
}

uint64_t sub_13350()
{
  v0 = sub_29CE4();
  sub_9608(v0, qword_3AD88);
  sub_966C(v0, qword_3AD88);
  return sub_29CF4();
}

uint64_t sub_133BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  *a2 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems);
}

uint64_t sub_13474(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_15D14(v4);
}

uint64_t sub_134A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_15D14(v4);
}

unint64_t sub_134CC()
{
  result = qword_39270;
  if (!qword_39270)
  {
    sub_504C(&qword_391D8, &qword_2CC50);
    sub_13584();
    sub_55DC(&qword_38D08, &qword_38D10, &qword_2B658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39270);
  }

  return result;
}

unint64_t sub_13584()
{
  result = qword_39278;
  if (!qword_39278)
  {
    sub_504C(&qword_39268, &qword_2CD40);
    sub_504C(&qword_391D0, &qword_2CC48);
    sub_13208();
    swift_getOpaqueTypeConformance2();
    sub_55DC(&qword_39280, &qword_39288, &unk_2CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39278);
  }

  return result;
}

void sub_13678()
{
  v1 = *(type metadata accessor for AppsSettingsList() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_125A8(v2);
}

unint64_t sub_136D8()
{
  result = qword_39290;
  if (!qword_39290)
  {
    sub_504C(&qword_391F0, &qword_2CC68);
    sub_504C(&qword_391E8, &qword_2CC60);
    sub_504C(&qword_391E0, &qword_2CC58);
    sub_504C(&qword_391D8, &qword_2CC50);
    sub_134CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39290);
  }

  return result;
}

uint64_t sub_13820()
{
  v1 = *(type metadata accessor for AppsSettingsList() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_12C44(0xD000000000000018, 0x800000000002DDC0);
}

uint64_t sub_13894()
{
  v1 = *(type metadata accessor for AppsSettingsList() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_12C44(0xD000000000000012, 0x800000000002D610);
}

unint64_t sub_13908()
{
  result = qword_392A0;
  if (!qword_392A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_392A0);
  }

  return result;
}

uint64_t sub_13954()
{
  v1 = type metadata accessor for AppsSettingsList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_2B4C(&qword_39218, &qword_2CC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29BB4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_2B4C(&qword_39220, &qword_2CC98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_29B94();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = v1[6];
  sub_2B4C(&qword_39228, &qword_2CCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29FB4();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(&v5[v11], 1, v12))
    {
      (*(v13 + 8))(&v5[v11], v12);
    }
  }

  else
  {
    v14 = *&v5[v11];
  }

  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = &v5[v1[7]];

  v17 = *(v16 + 1);

  v18 = *(v0 + v15 + 8);

  return _swift_deallocObject(v0, v15 + 16, v2 | 7);
}

void sub_13BD8()
{
  v1 = *(type metadata accessor for AppsSettingsList() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_12FE0(v0 + v2, v4, v5);
}

uint64_t sub_13C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_13CA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_29EC4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2B4C(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_E25C(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_2A574();
    v22 = sub_2A014();
    sub_29BE4();

    sub_29EB4();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_13EA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B4C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_13F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B4C(&qword_392D0, &qword_2CDC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_13FF0()
{
  result = qword_392F0;
  if (!qword_392F0)
  {
    sub_504C(&qword_392E8, &unk_2CDE0);
    sub_140D4(&qword_38CE8, &qword_38CE0, &qword_2B650, sub_5094);
    sub_140D4(&qword_392F8, &qword_39300, &qword_2CDF0, sub_14150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_392F0);
  }

  return result;
}

uint64_t sub_140D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_504C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_14150()
{
  result = qword_39308;
  if (!qword_39308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39308);
  }

  return result;
}

uint64_t sub_141A4()
{
  v1 = sub_29D94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1422C(__int128 *a1)
{
  v2 = *(*(sub_29D94() - 8) + 80);

  return sub_11C6C(a1);
}

uint64_t sub_1429C()
{
  v1 = type metadata accessor for AppsSettingsList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_2B4C(&qword_39218, &qword_2CC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29BB4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_2B4C(&qword_39220, &qword_2CC98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_29B94();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = v1[6];
  sub_2B4C(&qword_39228, &qword_2CCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29FB4();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(&v5[v11], 1, v12))
    {
      (*(v13 + 8))(&v5[v11], v12);
    }
  }

  else
  {
    v14 = *&v5[v11];
  }

  v15 = &v5[v1[7]];

  v16 = *(v15 + 1);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_14508(uint64_t a1)
{
  v3 = *(type metadata accessor for AppsSettingsList() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_11D58(a1, v4);
}

unint64_t sub_14588()
{
  result = qword_394A0;
  if (!qword_394A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_394A0);
  }

  return result;
}

uint64_t sub_14600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14648(uint64_t a1)
{
  v2 = type metadata accessor for HiddenAppsSettingsList();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_146A4()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_7ABC();
  return sub_29D84();
}

unint64_t sub_1470C()
{
  result = qword_39350;
  if (!qword_39350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39350);
  }

  return result;
}

uint64_t sub_14760()
{
  sub_504C(&qword_39210, &qword_2CC88);
  sub_504C(&qword_39208, &qword_2CC80);
  sub_504C(&qword_39200, &qword_2CC78);
  sub_504C(&qword_391F8, &qword_2CC70);
  sub_504C(&qword_391F0, &qword_2CC68);
  type metadata accessor for AppsSettingsListViewModel();
  sub_136D8();
  sub_14600(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_14918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_283A4(&qword_395E0, type metadata accessor for HiddenAppsSettingsListViewModel);
  sub_29AD4();

  *a2 = *(v3 + OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel__hiddenApps);
}

uint64_t sub_149CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_58F8(v4);
}

uint64_t sub_149F8()
{
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  v1 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  sub_280D4(v1, *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8));
  return v1;
}

uint64_t sub_14AB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  v4 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v5 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_280D4(v4, v5);
}

uint64_t sub_14B70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_280D4(*a1, v3);
  return sub_14BB4(v2, v3);
}

uint64_t sub_14BB4(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v6 = *(v2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v7 = *(v2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8);
  if (v7 != 4)
  {
    if (a2 == 4)
    {
      goto LABEL_7;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (a2 == 2)
        {
          goto LABEL_3;
        }

        goto LABEL_7;
      }

      if (v7 == 3)
      {
        if (a2 == 3)
        {
          goto LABEL_3;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (!v7)
      {
        if (!a2)
        {
          goto LABEL_3;
        }

        goto LABEL_7;
      }

      if (v7 == 1)
      {
        if (a2 == 1)
        {
          goto LABEL_3;
        }

LABEL_7:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
        sub_29AC4();
        sub_6DC0(a1, a2);
      }
    }

    if (a2 >= 4)
    {
      if (v6 == a1 && v7 == a2)
      {
        goto LABEL_3;
      }

      v11 = *(v2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
      v12 = *(v2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8);
      v13 = sub_2A8A4();
      v7 = v12;
      v14 = v13;
      v6 = v11;
      if (v14)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_7;
  }

  if (a2 != 4)
  {
    goto LABEL_7;
  }

LABEL_3:
  *v5 = a1;
  v5[1] = a2;

  return sub_6DC0(v6, v7);
}

uint64_t sub_14DB0()
{
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  return *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching);
}

uint64_t sub_14E58()
{
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  v1 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter);
  v2 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter + 8);

  return v1;
}

uint64_t sub_14F3C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  v4 = *(v2 + *a2);
}

id sub_14FE0()
{
  v1 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___hiddenAppsSettingsListViewModel;
  v2 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___hiddenAppsSettingsListViewModel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___hiddenAppsSettingsListViewModel);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for HiddenAppsSettingsListViewModel()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_15054(uint64_t a1, unint64_t a2)
{
  v5 = sub_29BB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B4C(&qword_38FE0, &qword_2C9D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v74 - v11;
  v13 = sub_2A324();
  isa = v13[-1].isa;
  v84 = v13;
  v14 = *(isa + 8);
  v15 = __chkstk_darwin(v13);
  v78 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v77 = &v74 - v17;
  v82 = sub_29B74();
  v80 = *(v82 - 8);
  v18 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppsSettingsDestinationOption();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_27200();
  v25 = sub_1DBD8(a1, a2, v24);

  if (v25)
  {
    v76 = v6;
    v26 = v5;
    v27 = sub_984C(a1, a2);
    v29 = v28;

    v75 = v2;
    sub_14BB4(a1, a2);
    sub_30EC(v27, v29, a1, a2, v23);

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v47 = *v23;
        v46 = v23[1];
        v48 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
        v49 = v75;
        swift_beginAccess();
        v50 = v76;
        if (!(*(v76 + 48))(v49 + v48, 1, v26))
        {
          v51 = v49 + v48;
          v52 = v81;
          (*(v50 + 16))(v81, v51, v26);
          v85 = v47;
          v86 = v46;
          sub_E08C();
          sub_29BA4();
          (*(v50 + 8))(v52, v26);
        }
      }

      else
      {
        v60 = a1;
        if (qword_389F8 != -1)
        {
          swift_once();
        }

        v61 = sub_29C14();
        sub_966C(v61, qword_3AD58);

        v62 = sub_29BF4();
        v63 = sub_2A584();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v87[0] = v65;
          *v64 = 136446210;
          *(v64 + 4) = sub_22978(v60, a2, v87);
          _os_log_impl(&dword_0, v62, v63, "Unsupported destination for %{public}s", v64, 0xCu);
          sub_E1BC(v65);
        }

        sub_308C(v23);
      }
    }

    else
    {
      v31 = v26;
      if (EnumCaseMultiPayload)
      {
        v55 = isa;
        v54 = v84;
        v56 = v78;
        (*(isa + 4))(v78, v23, v84);
        v57 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
        v58 = v75;
        swift_beginAccess();
        v59 = v76;
        if ((*(v76 + 48))(v58 + v57, 1, v31))
        {
          (*(v55 + 1))(v56, v54);
          goto LABEL_27;
        }

        v68 = v58 + v57;
        v69 = v81;
        (*(v59 + 16))(v81, v68, v31);
        swift_endAccess();
        sub_283A4(&qword_38B88, &type metadata accessor for SettingsPaneRecipe);
        sub_29BA4();
        (*(v59 + 8))(v69, v31);
        (*(v55 + 1))(v56, v54);
      }

      else
      {
        v33 = v79;
        v32 = v80;
        v34 = v82;
        (*(v80 + 32))(v79, v23, v82);
        sub_29B34();
        v36 = isa;
        v35 = v84;
        v37 = (*(isa + 6))(v12, 1, v84);
        v38 = v75;
        v39 = v76;
        if (v37 == 1)
        {
          sub_E02C(v12, &qword_38FE0, &qword_2C9D8);
          v40 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
          swift_beginAccess();
          if ((*(v39 + 48))(v38 + v40, 1, v31))
          {
            (*(v32 + 8))(v33, v34);
LABEL_27:
            swift_endAccess();
            return;
          }

          v70 = v38 + v40;
          v71 = v81;
          (*(v39 + 16))(v81, v70, v31);
          swift_endAccess();
          sub_283A4(&qword_38B90, &type metadata accessor for PreferencesControllerRecipe);
          sub_29BA4();
          (*(v39 + 8))(v71, v31);
          (*(v32 + 8))(v33, v34);
        }

        else
        {
          v66 = v77;
          (*(v36 + 4))(v77, v12, v35);
          v67 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
          swift_beginAccess();
          if ((*(v39 + 48))(v38 + v67, 1, v31))
          {
            (*(v36 + 1))(v66, v35);
            (*(v32 + 8))(v33, v82);
            goto LABEL_27;
          }

          v72 = v38 + v67;
          v73 = v81;
          (*(v39 + 16))(v81, v72, v31);
          swift_endAccess();
          sub_283A4(&qword_38B88, &type metadata accessor for SettingsPaneRecipe);
          sub_29BA4();
          (*(v39 + 8))(v73, v31);
          (*(v36 + 1))(v66, v35);
          (*(v32 + 8))(v33, v82);
        }
      }
    }
  }

  else
  {
    v41 = a1;
    if (qword_389F8 != -1)
    {
      swift_once();
    }

    v42 = sub_29C14();
    sub_966C(v42, qword_3AD58);

    v84 = sub_29BF4();
    v43 = sub_2A584();

    if (os_log_type_enabled(v84, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v87[0] = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_22978(v41, a2, v87);
      _os_log_impl(&dword_0, v84, v43, "Cannot select %{public}s as it is not in the list.", v44, 0xCu);
      sub_E1BC(v45);
    }

    else
    {
      v53 = v84;
    }
  }
}

uint64_t sub_15A7C()
{
  v0 = sub_272BC(&off_35A18);
  result = swift_arrayDestroy();
  off_39360 = v0;
  return result;
}

void *sub_15AC8()
{
  result = sub_27424(&off_35A78);
  qword_39368 = result;
  return result;
}

int *sub_15AF0()
{
  result = sub_27424(&off_35AA0);
  off_39370 = result;
  return result;
}

uint64_t sub_15B18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v4 = *(a1 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v5 = *(a1 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_280D4(a2, a3);
  return sub_6DC0(v4, v5);
}

uint64_t sub_15B70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  *a2 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections);
}

uint64_t sub_15C24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_15D50(v4, &OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections, sub_93C8);
}

uint64_t sub_15C88(uint64_t result, uint64_t a2)
{
  v3 = result;
  if ((result & 1) == 0)
  {
    result = sub_15D50(&_swiftEmptyArrayStorage, &OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems, sub_9080);
  }

  *(a2 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching) = v3 & 1;
  return result;
}

uint64_t sub_15D50(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  v5 = *a2;
  if (a3(*(v3 + *a2), a1))
  {
    *(v3 + v5) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
    sub_29AC4();
  }
}

uint64_t sub_15E9C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2B4C(&unk_38E10, &qword_2B770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  v10 = &a1[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter];
  v11 = *&a1[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter + 8];
  *v10 = a2;
  *(v10 + 1) = a3;

  sub_2A4A4();
  v12 = sub_2A4C4();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_getKeyPath();
  v17[1] = a1;
  sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  v13 = *&a1[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections];
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a1;

  v15 = a1;
  sub_642C(0, 0, v9, &unk_2D138, v14);

  return sub_E02C(v9, &unk_38E10, &qword_2B770);
}

uint64_t sub_1609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  return _swift_task_switch(sub_160C0, 0, 0);
}

uint64_t sub_160C0(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 208);
  v5 = *(v4 + 16);
  if (!v5)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_19:
    v17 = *(v7 + 2);
    if (v17)
    {
      v18 = 0;
      v19 = v7 + 32;
      v20 = _swiftEmptyArrayStorage;
      do
      {
        v41 = v20;
        v21 = &v19[10 * v18];
        v22 = v18;
        while (1)
        {
          if (v22 >= *(v7 + 2))
          {
            __break(1u);
            goto LABEL_37;
          }

          v24 = *(v3 + 216);
          v23 = *(v3 + 224);
          v26 = v21[2];
          v25 = v21[3];
          v27 = v21[1];
          *(v3 + 73) = *(v21 + 57);
          *(v3 + 48) = v26;
          *(v3 + 64) = v25;
          *(v3 + 16) = *v21;
          *(v3 + 32) = v27;
          v18 = v22 + 1;
          v28 = *(v3 + 56);
          v29 = *(v3 + 64);

          *(v3 + 176) = v28;
          *(v3 + 184) = v29;
          *(v3 + 192) = v24;
          *(v3 + 200) = v23;
          sub_5678(v3 + 16, v3 + 96);
          sub_8228();
          LOBYTE(v23) = sub_2A6E4();

          if (v23)
          {
            break;
          }

          isUniquelyReferenced_nonNull_native = sub_28838(v3 + 16);
          v21 += 5;
          ++v22;
          if (v17 == v18)
          {
            v20 = v41;
            goto LABEL_33;
          }
        }

        v20 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_23C4C(0, v41[2] + 1, 1);
          v20 = v41;
        }

        v31 = v20[2];
        v30 = v20[3];
        if (v31 >= v30 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_23C4C((v30 > 1), v31 + 1, 1);
          v20 = v41;
        }

        v20[2] = v31 + 1;
        v32 = &v20[10 * v31];
        v32[2] = *(v3 + 16);
        v33 = *(v3 + 32);
        v34 = *(v3 + 48);
        v35 = *(v3 + 64);
        *(v32 + 89) = *(v3 + 73);
        v32[4] = v34;
        v32[5] = v35;
        v32[3] = v33;
        v19 = v7 + 32;
      }

      while (v17 - 1 != v22);
    }

    else
    {
      v20 = _swiftEmptyArrayStorage;
    }

LABEL_33:
    *(v3 + 240) = v20;
    v36 = *(v3 + 232);

    swift_unknownObjectWeakInit();
    sub_2A494();
    *(v3 + 248) = sub_2A484();
    v37 = sub_2A474();
    v39 = v38;
    isUniquelyReferenced_nonNull_native = sub_16418;
    a2 = v37;
    a3 = v39;

    return _swift_task_switch(isUniquelyReferenced_nonNull_native, a2, a3);
  }

  v6 = (v4 + 64);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v6;
    v9 = *(*v6 + 16);
    v10 = *(v7 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    v12 = *v6;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v11 <= *(v7 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      isUniquelyReferenced_nonNull_native = sub_223F8(isUniquelyReferenced_nonNull_native, v13, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (*(v8 + 16))
      {
LABEL_14:
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v9)
        {
          goto LABEL_39;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v14 = *(v7 + 2);
          v15 = __OFADD__(v14, v9);
          v16 = v14 + v9;
          if (v15)
          {
            goto LABEL_40;
          }

          *(v7 + 2) = v16;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_38;
    }

LABEL_4:
    v6 += 5;
    if (!--v5)
    {
      goto LABEL_19;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return _swift_task_switch(isUniquelyReferenced_nonNull_native, a2, a3);
}

uint64_t sub_16418()
{
  v1 = v0[31];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_15D50(v0[30], &OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems, sub_9080);
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();
  v3 = v0[1];

  return v3();
}

id sub_164F0()
{
  v1 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___homeKitVisibilityArbitrator;
  v2 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___homeKitVisibilityArbitrator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___homeKitVisibilityArbitrator);
  }

  else
  {
    v4 = [objc_allocWithZone(HFHomeSettingsVisibilityArbitrator) init];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = sub_2839C;
    v10[5] = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_16840;
    v10[3] = &unk_36738;
    v6 = _Block_copy(v10);

    [v4 setVisibilityStateChangeHandler:v6];
    _Block_release(v6);
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1661C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_16670();
  }
}

uint64_t sub_16670()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2B4C(&unk_38E10, &qword_2B770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_collation;
  v7 = [*&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_collation] sectionTitles];
  v8 = sub_2A454();

  v9 = [*&v0[v6] sectionIndexTitles];
  v10 = sub_2A454();

  v11 = sub_164F0();
  v12 = [v11 visibilityState];

  v13 = sub_27200();
  sub_2A4A4();
  v14 = sub_2A4C4();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v15 = *&v0[v6];
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v8;
  v16[5] = v13;
  v16[6] = v15;
  v16[7] = v12;
  v16[8] = v10;
  v16[9] = v0;
  v16[10] = ObjectType;
  v17 = v15;
  v18 = v0;
  sub_1EEAC(0, 0, v5, &unk_2D008, v16);
}

uint64_t sub_16840(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_16894()
{
  v1 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___oneTimeConfiguration;
  if (*(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___oneTimeConfiguration) == 1)
  {
    result = sub_16670();
    *(v0 + v1) = 0;
  }

  return result;
}

char *sub_168CC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2B4C(&qword_39510, &qword_2CFD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v65 = &v58 - v4;
  v66 = sub_2A5C4();
  v64 = *(v66 - 8);
  v5 = *(v64 + 64);
  __chkstk_darwin(v66);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B4C(&qword_39518, &qword_2CFD8);
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  __chkstk_darwin(v7);
  v67 = &v58 - v9;
  v10 = sub_2B4C(&qword_39520, &qword_2CFE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v58 - v12;
  v14 = sub_2A684();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  __chkstk_darwin(v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2B4C(&qword_39528, &qword_2CFE8);
  v61 = *(v18 - 8);
  v62 = v18;
  v19 = *(v61 + 64);
  __chkstk_darwin(v18);
  v60 = &v58 - v20;
  v21 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appsSettingsListScrollToItemSubject;
  v22 = sub_2B4C(&qword_39530, &unk_2CFF0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *&v0[v21] = sub_29C54();
  v25 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_reloadSnapshotSubject;
  v26 = sub_2B4C(&qword_39500, &qword_2CFC8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *&v0[v25] = sub_29C54();
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___hiddenAppsSettingsListViewModel] = 0;
  v29 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
  v30 = sub_29BB4();
  (*(*(v30 - 8) + 56))(&v0[v29], 1, 1, v30);
  v31 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_clearSettingsNavigationPath;
  v32 = sub_29B94();
  (*(*(v32 - 8) + 56))(&v0[v31], 1, 1, v32);
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection] = xmmword_2B6B0;
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections] = &_swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveIsSearching] = 0;
  v33 = &v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_effectiveSearchFilter];
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__filteredItems] = &_swiftEmptyArrayStorage;
  v34 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_collation;
  *&v0[v34] = [objc_opt_self() currentCollation];
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___homeKitVisibilityArbitrator] = 0;
  *&v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_cancellables] = &_swiftEmptySetSingleton;
  v0[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel____lazy_storage___oneTimeConfiguration] = 1;
  sub_29AE4();
  v72.receiver = v0;
  v72.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v72, "init");
  v36 = objc_opt_self();
  v37 = v35;
  result = [v36 sharedConnection];
  if (result)
  {
    v39 = result;
    v40 = v37;
    [v39 registerObserver:v40];

    v42 = __chkstk_darwin(v41);
    *(&v58 - 2) = v40;
    __chkstk_darwin(v42);
    *(&v58 - 2) = v40;
    sub_29AB4();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_28338;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1752C;
    aBlock[3] = &unk_36620;
    v44 = _Block_copy(aBlock);

    SBSRegisterDisplayIdentifiersChangedBlock();
    _Block_release(v44);
    aBlock[0] = *&v40[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_reloadSnapshotSubject];

    sub_2A674();
    v45 = [objc_opt_self() mainRunLoop];
    v70 = v45;
    v46 = sub_2A664();
    (*(*(v46 - 8) + 56))(v13, 1, 1, v46);
    sub_28600(0, &qword_39538, NSRunLoop_ptr);
    sub_55DC(&qword_39540, &qword_39500, &qword_2CFC8);
    sub_28358(&qword_39548, &qword_39538, NSRunLoop_ptr);
    v47 = v60;
    sub_29C84();
    sub_E02C(v13, &qword_39520, &qword_2CFE0);

    (*(v58 + 8))(v17, v59);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_55DC(&unk_39550, &qword_39528, &qword_2CFE8);
    v48 = v62;
    sub_29C94();

    (*(v61 + 8))(v47, v48);
    swift_beginAccess();
    sub_29C24();
    swift_endAccess();

    v49 = [objc_opt_self() defaultCenter];
    v50 = sub_29B14();
    v51 = v63;
    sub_2A5D4();

    sub_28600(0, &qword_392A0, OS_dispatch_queue_ptr);
    v52 = sub_2A5A4();
    aBlock[0] = v52;
    v53 = sub_2A594();
    v54 = v65;
    (*(*(v53 - 8) + 56))(v65, 1, 1, v53);
    sub_283A4(&qword_39560, &type metadata accessor for NSNotificationCenter.Publisher);
    sub_28358(&qword_39568, &qword_392A0, OS_dispatch_queue_ptr);
    v55 = v66;
    v56 = v67;
    sub_29C74();
    sub_E02C(v54, &qword_39510, &qword_2CFD0);

    (*(v64 + 8))(v51, v55);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_55DC(&unk_39570, &qword_39518, &qword_2CFD8);
    v57 = v69;
    sub_29C94();

    (*(v68 + 8))(v56, v57);
    swift_beginAccess();
    sub_29C24();
    swift_endAccess();

    return v40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_173B0()
{
  if (qword_389F8 != -1)
  {
    swift_once();
  }

  v0 = sub_29C14();
  sub_966C(v0, qword_3AD58);
  v1 = sub_29BF4();
  v2 = sub_2A584();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Did receive Display Identifiers Changed.", v3, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_reloadSnapshotSubject);
    v6 = result;

    sub_2B4C(&qword_39500, &qword_2CFC8);
    sub_55DC(&qword_39508, &qword_39500, &qword_2CFC8);
    sub_29C64();
  }

  return result;
}

void sub_1752C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_17598()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_reloadSnapshotSubject);
    v2 = result;

    sub_2B4C(&qword_39500, &qword_2CFC8);
    sub_55DC(&qword_39508, &qword_39500, &qword_2CFC8);
    sub_29C64();
  }

  return result;
}

id sub_17684()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    v24 = ObjectType;
    [result unregisterObserver:v1];

    SBSRegisterDisplayIdentifiersChangedBlock();
    v5 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_cancellables;
    swift_beginAccess();
    v6 = *&v1[v5];
    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v7 = *&v1[v5];
      }

      v8 = *&v1[v5];

      sub_2A734();
      sub_29C44();
      sub_283A4(&unk_395F0, &type metadata accessor for AnyCancellable);
      result = sub_2A524();
      v6 = v27;
      v9 = v28;
      v10 = v29;
      v11 = v30;
      v12 = v31;
    }

    else
    {
      v13 = -1 << *(v6 + 32);
      v9 = v6 + 56;
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v6 + 56);
      v16 = *&v1[v5];

      v11 = 0;
    }

    v17 = (v10 + 64) >> 6;
    if (v6 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v18 = v11;
      v19 = v12;
      v20 = v11;
      if (!v12)
      {
        break;
      }

LABEL_15:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

      if (!v22)
      {
LABEL_21:
        sub_2892C();
        v23 = *&v1[v5];
        *&v1[v5] = &_swiftEmptySetSingleton;

        v26.receiver = v1;
        v26.super_class = v24;
        return objc_msgSendSuper2(&v26, "dealloc");
      }

      while (1)
      {
        sub_29C34();

        v11 = v20;
        v12 = v21;
        if ((v6 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        if (sub_2A794())
        {
          sub_29C44();
          swift_dynamicCast();
          v20 = v11;
          v21 = v12;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_21;
      }

      v19 = *(v9 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AppsSettingsListViewModel()
{
  result = qword_39408;
  if (!qword_39408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_17AF4()
{
  sub_17C98(319, &qword_39418, &type metadata accessor for AppendSettingsNavigationPathAction);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_17C98(319, &qword_39420, &type metadata accessor for ClearSettingsNavigationPathAction);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_29AF4();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_17C98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2A694();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_17CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[40] = a8;
  v8[41] = v14;
  v8[38] = a6;
  v8[39] = a7;
  v8[36] = a4;
  v8[37] = a5;
  v9 = sub_29A74();
  v8[42] = v9;
  v10 = *(v9 - 8);
  v8[43] = v10;
  v11 = *(v10 + 64) + 15;
  v8[44] = swift_task_alloc();

  return _swift_task_switch(sub_17DE8, 0, 0);
}

uint64_t sub_17DE8()
{
  v1 = [objc_opt_self() hiddenApplications];
  sub_2A544();
  v2 = sub_2A454();

  if (v2 >> 62)
  {
    v3 = sub_2A854();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_23C8C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  v17 = v0;
  v4 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_2A824();
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = [v5 bundleIdentifier];
    v8 = sub_2A3F4();
    v10 = v9;

    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      sub_23C8C((v11 > 1), v12 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    *(v13 + 4) = v8;
    *(v13 + 5) = v10;
  }

  while (v3 != v4);

  v0 = v17;
LABEL_14:
  *(v0 + 360) = sub_27F20(_swiftEmptyArrayStorage);

  v14 = async function pointer to static AppDistributor.shouldShowAppInstallationSettings()[1];
  v15 = swift_task_alloc();
  *(v0 + 368) = v15;
  *v15 = v0;
  v15[1] = sub_1803C;

  return static AppDistributor.shouldShowAppInstallationSettings()();
}

uint64_t sub_1803C(char a1)
{
  v2 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 705) = a1;

  return _swift_task_switch(sub_18168, 0, 0);
}

uint64_t sub_18168()
{
  v216 = v0;
  v1 = *(v0[36] + 16);
  if (v1)
  {
    sub_23CAC(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v3 = *(&_swiftEmptyArrayStorage + 2);
    do
    {
      v215 = v2;
      v4 = v2[3];
      if (v3 >= v4 >> 1)
      {
        sub_23CAC((v4 > 1), v3 + 1, 1);
        v2 = v215;
      }

      v2[2] = v3 + 1;
      v2[v3++ + 4] = &_swiftEmptyArrayStorage;
      --v1;
    }

    while (v1);
    v212 = v2;
  }

  else
  {
    v212 = &_swiftEmptyArrayStorage;
  }

  v5 = v0[44];
  v6 = v0[42];
  v7 = v0[37];
  v8 = swift_allocObject();
  v0[47] = v8;
  *(v8 + 16) = &_swiftEmptySetSingleton;
  v9 = [objc_opt_self() enumeratorWithOptions:192];
  v0[48] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  v0[6] = sub_285F8;
  v0[7] = v10;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1E638;
  v0[5] = &unk_36710;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v9 setFilter:v11];
  _Block_release(v11);
  sub_2A534();
  sub_283A4(&qword_39580, &type metadata accessor for NSFastEnumerationIterator);
  sub_2A6A4();
  if (v0[16])
  {
    v13 = &_swiftEmptyArrayStorage;
    do
    {
      sub_28140(v0 + 13, v0 + 17);
      sub_28150((v0 + 17), (v0 + 21));
      sub_28600(0, &unk_395A0, LSApplicationRecord_ptr);
      if (swift_dynamicCast() && (v16 = v0[35], v17 = [v16 bundleIdentifier], v16, v17))
      {
        v18 = sub_2A3F4();
        v20 = v19;

        sub_E1BC(v0 + 17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2286C(0, *(v13 + 2) + 1, 1, v13);
        }

        v22 = *(v13 + 2);
        v21 = *(v13 + 3);
        if (v22 >= v21 >> 1)
        {
          v13 = sub_2286C((v21 > 1), v22 + 1, 1, v13);
        }

        *(v13 + 2) = v22 + 1;
        v23 = &v13[16 * v22];
        *(v23 + 4) = v18;
        *(v23 + 5) = v20;
      }

      else
      {
        sub_E1BC(v0 + 17);
      }

      v14 = v0[44];
      v15 = v0[42];
      sub_2A6A4();
    }

    while (v0[16]);
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

  (*(v0[43] + 8))(v0[44], v0[42]);
  v24 = sub_27F20(v13);
  v0[49] = v24;

  v25 = [objc_opt_self() currentNotificationSettingsCenter];
  swift_beginAccess();
  v26 = *(v8 + 16);

  isa = sub_2A4D4().super.isa;

  v28 = [v25 notificationSourcesWithIdentifiers:isa];

  sub_28600(0, &qword_39588, UNNotificationSource_ptr);
  sub_28358(&qword_39590, &qword_39588, UNNotificationSource_ptr);
  v29 = sub_2A4F4();
  v0[50] = v29;

  sub_1D750(v29);
  v0[51] = sub_27F20(v30);

  v31 = *(v24 + 32);
  *(v0 + 706) = v31;
  v32 = 1 << v31;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v24 + 56);
  v0[52] = MCFeatureAccountModificationAllowed;
  v0[64] = v212;

  v35 = 0;
  v36 = 0;
LABEL_24:
  v208 = v35;
  *(v0 + 707) = v35 & 1;
  v0[53] = 0;
  if (!v34)
  {
    goto LABEL_26;
  }

  do
  {
    v37 = v0[49];
LABEL_30:
    v0[54] = v34;
    v0[55] = v36;
    v39 = (*(v37 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v34)))));
    v40 = *v39;
    v0[56] = *v39;
    v41 = v39[1];
    v0[57] = v41;
    v42 = qword_38A10;

    if (v42 != -1)
    {
      swift_once();
    }

    v34 &= v34 - 1;
    v43 = off_39360;
    if (*(&dword_10 + off_39360))
    {
      v44 = *&stru_20.segname[off_39360];
      sub_2A8F4();
      sub_2A414();
      v45 = sub_2A914();
      v46 = -1 << *(&stru_20.cmd + v43);
      v47 = v45 & ~v46;
      if ((*(v43 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v47))
      {
        v48 = ~v46;
        do
        {
          v49 = (*&stru_20.segname[v43 + 8] + 16 * v47);
          v50 = *v49 == v40 && v49[1] == v41;
          if (v50 || (sub_2A8A4() & 1) != 0)
          {
            goto LABEL_68;
          }

          v47 = (v47 + 1) & v48;
        }

        while (((*(v43 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v47) & 1) != 0);
      }
    }

    v218._countAndFlagsBits = 0xD00000000000001BLL;
    v218._object = 0x800000000002E0D0;
    v51 = sub_2A444(v218);
    v52 = objc_allocWithZone(LSApplicationRecord);
    v53 = sub_2A3E4();
    v0[28] = 0;
    v54 = [v52 initWithBundleIdentifier:v53 allowPlaceholder:v51 error:v0 + 28];
    v0[58] = v54;

    v55 = v0[28];
    if (v54)
    {
      v56 = v55;
      if ([v54 isWebApp])
      {
        v57 = v0[51];
        if (!*(v57 + 16) || (v58 = *(v57 + 40), sub_2A8F4(), sub_2A414(), v59 = sub_2A914(), v60 = -1 << *(v57 + 32), v61 = v59 & ~v60, ((*(v57 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v61) & 1) == 0))
        {
LABEL_67:

LABEL_68:

          goto LABEL_70;
        }

        v62 = ~v60;
        v63 = v0[51];
        while (1)
        {
          v64 = (*(v63 + 48) + 16 * v61);
          v65 = *v64 == v40 && v64[1] == v41;
          if (v65 || (sub_2A8A4() & 1) != 0)
          {
            break;
          }

          v63 = v0[51];
          v61 = (v61 + 1) & v62;
          if (((*(v63 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v61) & 1) == 0)
          {
            goto LABEL_67;
          }
        }
      }

      v66 = [objc_opt_self() defaultWorkspace];
      if (!v66)
      {
        __break(1u);
      }

      v67 = v66;
      v68 = sub_2A3E4();
      v69 = [v67 applicationIsInstalled:v68];

      if (v69)
      {
        if ((v208 & 1) == 0)
        {
          v70 = [v54 appClipMetadata];
          if (v70)
          {

            v35 = 1;
            goto LABEL_24;
          }
        }

        v71 = v0[45];
        if (!*(v71 + 16) || (v72 = *(v71 + 40), sub_2A8F4(), sub_2A414(), v73 = sub_2A914(), v74 = -1 << *(v71 + 32), v75 = v73 & ~v74, ((*(v71 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v75) & 1) == 0))
        {
LABEL_115:
          v142 = [v54 localizedName];
          v143 = sub_2A3F4();
          v145 = v144;

          v0[59] = v143;
          v0[60] = v145;
          v0[61] = "localizedName";
          sub_2A494();
          v146 = v54;
          v0[62] = sub_2A484();
          v84 = sub_2A474();
          v86 = sub_19D78;
          goto LABEL_141;
        }

        v76 = ~v74;
        v77 = v0[45];
        while (1)
        {
          v78 = (*(v77 + 48) + 16 * v75);
          v79 = *v78 == v40 && v78[1] == v41;
          if (v79 || (sub_2A8A4() & 1) != 0)
          {
            break;
          }

          v77 = v0[45];
          v75 = (v75 + 1) & v76;
          if (((*(v77 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v75) & 1) == 0)
          {
            goto LABEL_115;
          }
        }
      }

      goto LABEL_67;
    }

    v80 = v55;

    sub_29A44();

    swift_willThrow();

LABEL_70:
    v0[53] = 0;
  }

  while (v34);
  while (1)
  {
LABEL_26:
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v37 = v0[49];
    if (v38 >= (((1 << *(v0 + 706)) + 63) >> 6))
    {
      break;
    }

    v34 = *(v37 + 8 * v38 + 56);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_30;
    }
  }

  v81 = v0[39];

  if (v81 == 1)
  {
    if (qword_389F0 == -1)
    {
LABEL_75:
      v82.super.isa = qword_3AD50;
      v204._countAndFlagsBits = 0x800000000002D720;
      v219._countAndFlagsBits = 1701670728;
      v219._object = 0xE400000000000000;
      v226.value._countAndFlagsBits = 0;
      v226.value._object = 0;
      v233._countAndFlagsBits = 0;
      v233._object = 0xE000000000000000;
      v0[65] = sub_29A34(v219, v226, v82, v233, v204);
      v0[66] = v83;
      v0[67] = sub_2A3E4();
      v0[68] = "collationString";
      sub_2A494();
      v0[69] = sub_2A484();
      v84 = sub_2A474();
      v86 = sub_1B710;
      goto LABEL_141;
    }

LABEL_148:
    swift_once();
    goto LABEL_75;
  }

  v87 = MobileGestalt_get_current_device();
  if (!v87)
  {
    __break(1u);
    JUMPOUT(0x19CF4);
  }

  v88 = v87;
  v90 = v0[50];
  v89 = v0[51];
  v91 = v0[45];

  LOBYTE(v89) = MobileGestalt_get_isSimulator();

  if ((v89 & 1) == 0)
  {
    if (qword_38A18 != -1)
    {
      swift_once();
    }

    v0[29] = qword_39368;
    v94 = qword_38A20;

    if (v94 != -1)
    {
      swift_once();
    }

    v95 = &stru_20.segname[off_39370 + 16];
    v96 = -1;
    v97 = -1 << *(&stru_20.cmd + off_39370);
    if (-v97 < 64)
    {
      v96 = ~(-1 << -v97);
    }

    v98 = v96 & *&stru_20.segname[off_39370 + 16];
    v99 = (63 - v97) >> 6;
    v209 = v0[53];
    v213 = off_39370;

    v100 = 0;
    while (1)
    {
      v101 = v100;
      if (!v98)
      {
        break;
      }

LABEL_90:
      v102 = __clz(__rbit64(v98));
      v98 &= v98 - 1;
      v103 = *(*(v213 + 6) + (v102 | (v100 << 6)));
      v104 = objc_allocWithZone(LSApplicationRecord);
      v105 = sub_2A3E4();

      v0[30] = 0;
      v106 = [v104 initWithBundleIdentifier:v105 allowPlaceholder:0 error:v0 + 30];

      v107 = v0[30];
      if (v106)
      {
        v108 = v107;

        sub_24148(&v215, v103);
      }

      else
      {
        v109 = v107;
        sub_29A44();

        swift_willThrow();

        v209 = 0;
      }
    }

    while (1)
    {
      v100 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        goto LABEL_146;
      }

      if (v100 >= v99)
      {

        v110 = 0;
        v111 = v0[29];
        v0[71] = v111;
        v112 = *(v111 + 32);
        *(v0 + 708) = v112;
        v113 = 1 << v112;
        v114 = *(v111 + 56);
        if (v113 < 64)
        {
          v115 = ~(-1 << v113);
        }

        else
        {
          v115 = -1;
        }

        v116 = v115 & v114;
        v0[72] = v212;
        while (v116)
        {
          v117 = v0[71];
LABEL_104:
          v0[74] = v110;
          v0[73] = v116;
          v119 = v0[49];
          v120 = *(*(v117 + 48) + (__clz(__rbit64(v116)) | (v110 << 6)));
          *(v0 + 709) = v120;
          v121 = sub_6DDC(v120);
          v123 = v122;
          if (!*(v119 + 16))
          {
            goto LABEL_113;
          }

          v124 = v121;
          v125 = v0[49];
          v126 = *(v125 + 40);
          sub_2A8F4();
          sub_2A414();
          v127 = sub_2A914();
          v128 = -1 << *(v125 + 32);
          v129 = v127 & ~v128;
          if (((*(v125 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v129) & 1) == 0)
          {
LABEL_113:

            v134 = sub_6DDC(v120);
            v136 = v135;
            v137 = objc_allocWithZone(LSApplicationRecord);

            v138 = sub_2A3E4();

            v0[31] = 0;
            v139 = [v137 initWithBundleIdentifier:v138 allowPlaceholder:1 error:v0 + 31];

            v140 = v0[31];
            if (v139)
            {
              v141 = v209;
              goto LABEL_139;
            }

            v194 = v140;
            sub_29A44();

            swift_willThrow();

            v195 = objc_allocWithZone(LSApplicationRecord);

            v196 = sub_2A3E4();

            v0[32] = 0;
            v139 = [v195 initWithBundleIdentifierOfSystemPlaceholder:v196 error:v0 + 32];

            v140 = v0[32];
            if (v139)
            {
              v141 = 0;
LABEL_139:
              v197 = v140;
              v198 = [v139 localizedName];
              v134 = sub_2A3F4();
              v200 = v199;

              v136 = v200;
            }

            else
            {
              v202 = v140;
              sub_29A44();

              swift_willThrow();

              v141 = 0;
            }

            v0[77] = v136;
            v0[76] = v134;
            v0[75] = v141;
            v0[78] = sub_6DDC(v120);
            v0[79] = v201;
            v0[80] = sub_2A3E4();
            v0[81] = "collationString";
            sub_2A494();
            v0[82] = sub_2A484();
            v84 = sub_2A474();
            v86 = sub_1C99C;
            goto LABEL_141;
          }

          v116 &= v116 - 1;
          v130 = ~v128;
          v131 = v0[49];
          while (1)
          {
            v132 = (*(v131 + 48) + 16 * v129);
            v133 = *v132 == v124 && v132[1] == v123;
            if (v133 || (sub_2A8A4() & 1) != 0)
            {
              break;
            }

            v131 = v0[49];
            v129 = (v129 + 1) & v130;
            if (((*(v131 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v129) & 1) == 0)
            {
              goto LABEL_113;
            }
          }
        }

        while (1)
        {
          v118 = v110 + 1;
          if (__OFADD__(v110, 1))
          {
            goto LABEL_147;
          }

          v117 = v0[71];
          if (v118 >= (((1 << *(v0 + 708)) + 63) >> 6))
          {
            v147 = v0[49];

            v93 = v209;
            goto LABEL_117;
          }

          v116 = *(v117 + 8 * v118 + 56);
          ++v110;
          if (v116)
          {
            v110 = v118;
            goto LABEL_104;
          }
        }
      }

      v98 = *&v95[8 * v100];
      ++v101;
      if (v98)
      {
        goto LABEL_90;
      }
    }
  }

  v92 = v0[49];

  v93 = v0[53];
LABEL_117:
  v0[84] = v212;
  v148 = v0[40];
  v149 = v0[36];

  v150 = sub_1E690(v149, v148, v212);
  v0[85] = v93;

  v0[33] = v150;
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v151 = qword_3AD50;
  v204._countAndFlagsBits = 0x800000000002D720;
  v220._countAndFlagsBits = 0x20746C7561666544;
  v220._object = 0xEC00000073707041;
  v227.value._countAndFlagsBits = 0;
  v227.value._object = 0;
  v152.super.isa = qword_3AD50;
  v234._countAndFlagsBits = 0;
  v234._object = 0xE000000000000000;
  v153 = sub_29A34(v220, v227, v152, v234, v204);
  v155 = v154;
  v205._countAndFlagsBits = 0x800000000002DAE0;
  v221._countAndFlagsBits = 0xD00000000000001DLL;
  v221._object = 0x800000000002E120;
  v228.value._countAndFlagsBits = 0;
  v228.value._object = 0;
  v214 = v151;
  v156.super.isa = v151;
  v235._countAndFlagsBits = 0;
  v235._object = 0xE000000000000000;
  v157 = sub_29A34(v221, v228, v156, v235, v205);
  v159 = v158;
  LOBYTE(v215) = 1;
  v160 = sub_223F8(0, 1, 1, &_swiftEmptyArrayStorage);
  v162 = *(v160 + 2);
  v161 = *(v160 + 3);
  if (v162 >= v161 >> 1)
  {
    v160 = sub_223F8((v161 > 1), v162 + 1, 1, v160);
  }

  v163 = *(v0 + 705);
  *(v160 + 2) = v162 + 1;
  v164 = &v160[80 * v162];
  *(v164 + 4) = 0;
  *(v164 + 5) = 0;
  *(v164 + 6) = 0xD000000000000023;
  *(v164 + 7) = 0x800000000002E0F0;
  *(v164 + 8) = 1;
  *(v164 + 9) = v153;
  *(v164 + 10) = v155;
  *(v164 + 11) = v157;
  *(v164 + 12) = v159;
  v164[104] = 0x80;
  if (v163 == 1)
  {
    v206._countAndFlagsBits = 0x800000000002D720;
    v222._object = 0x800000000002E070;
    v222._countAndFlagsBits = 0xD000000000000010;
    v229.value._countAndFlagsBits = 0;
    v229.value._object = 0;
    v165.super.isa = v214;
    v236._countAndFlagsBits = 0;
    v236._object = 0xE000000000000000;
    v166 = sub_29A34(v222, v229, v165, v236, v206);
    v168 = v167;
    v207._countAndFlagsBits = 0x800000000002DAE0;
    v223._countAndFlagsBits = 0xD000000000000020;
    v223._object = 0x800000000002E1D0;
    v230.value._countAndFlagsBits = 0;
    v230.value._object = 0;
    v169.super.isa = v214;
    v237._countAndFlagsBits = 0;
    v237._object = 0xE000000000000000;
    v170 = sub_29A34(v223, v230, v169, v237, v207);
    LOBYTE(v215) = 1;
    v173 = *(v160 + 2);
    v172 = *(v160 + 3);
    if (v173 >= v172 >> 1)
    {
      v210 = v171;
      v211 = v170;
      v160 = sub_223F8((v172 > 1), v173 + 1, 1, v160);
      v171 = v210;
      v170 = v211;
    }

    *(v160 + 2) = v173 + 1;
    v174 = &v160[80 * v173];
    *(v174 + 2) = xmmword_2CE70;
    *(v174 + 6) = 0xD000000000000027;
    *(v174 + 7) = 0x800000000002E1A0;
    *(v174 + 8) = 1;
    *(v174 + 9) = v166;
    *(v174 + 10) = v168;
    *(v174 + 11) = v170;
    *(v174 + 12) = v171;
    v174[104] = 0x80;
  }

  v175 = *(v0 + 707);
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  v0[12] = v160;
  sub_24C38(0, 0, v0 + 4);
  if (v175)
  {
    v206._countAndFlagsBits = 0x800000000002D720;
    v224._countAndFlagsBits = 0x70696C4320707041;
    v224._object = 0xE900000000000073;
    v231.value._countAndFlagsBits = 0;
    v231.value._object = 0;
    v176.super.isa = v214;
    v238._countAndFlagsBits = 0;
    v238._object = 0xE000000000000000;
    v177 = sub_29A34(v224, v231, v176, v238, v206);
    v179 = v178;
    LOBYTE(v215) = 1;
    sub_2B4C(&qword_39598, &unk_2D028);
    v180 = swift_allocObject();
    *(v180 + 16) = xmmword_2CE80;
    *(v180 + 32) = xmmword_2CE90;
    *(v180 + 48) = 0xD000000000000020;
    *(v180 + 56) = 0x800000000002E170;
    *(v180 + 64) = 1;
    *(v180 + 71) = 0;
    *(v180 + 69) = 0;
    *(v180 + 65) = 0;
    *(v180 + 72) = v177;
    *(v180 + 80) = v179;
    *(v180 + 88) = 0;
    *(v180 + 104) = 0;
    v181 = v0[33];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v181 = sub_22618(0, *(v181 + 2) + 1, 1, v181);
    }

    v183 = *(v181 + 2);
    v182 = *(v181 + 3);
    if (v183 >= v182 >> 1)
    {
      v181 = sub_22618((v182 > 1), v183 + 1, 1, v181);
    }

    *(v181 + 2) = v183 + 1;
    v184 = &v181[40 * v183];
    *(v184 + 2) = xmmword_2CE70;
    *(v184 + 6) = 0;
    *(v184 + 7) = 0;
    *(v184 + 8) = v180;
    v0[33] = v181;
  }

  else
  {
    v181 = v0[33];
  }

  v206._countAndFlagsBits = 0x800000000002D720;
  v225._countAndFlagsBits = 0x41206E6564646948;
  v225._object = 0xEB00000000737070;
  v232.value._countAndFlagsBits = 0;
  v232.value._object = 0;
  v185.super.isa = v214;
  v239._countAndFlagsBits = 0;
  v239._object = 0xE000000000000000;
  v186 = sub_29A34(v225, v232, v185, v239, v206);
  v188 = v187;
  *(v0 + 720) = 1;
  sub_2B4C(&qword_39598, &unk_2D028);
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_2CE80;
  *(v189 + 32) = xmmword_2CEA0;
  *(v189 + 48) = 0xD000000000000022;
  *(v189 + 56) = 0x800000000002E140;
  *(v189 + 64) = 1;
  *(v189 + 71) = 0;
  *(v189 + 69) = 0;
  *(v189 + 65) = 0;
  *(v189 + 72) = v186;
  *(v189 + 80) = v188;
  *(v189 + 88) = 0;
  *(v189 + 104) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v181 = sub_22618(0, *(v181 + 2) + 1, 1, v181);
  }

  v191 = *(v181 + 2);
  v190 = *(v181 + 3);
  if (v191 >= v190 >> 1)
  {
    v181 = sub_22618((v190 > 1), v191 + 1, 1, v181);
  }

  v0[86] = v181;
  v192 = v0[41];
  *(v181 + 2) = v191 + 1;
  v193 = &v181[40 * v191];
  *(v193 + 2) = xmmword_2CE90;
  *(v193 + 6) = 0;
  *(v193 + 7) = 0;
  *(v193 + 8) = v189;
  swift_unknownObjectWeakInit();
  sub_2A494();
  v0[87] = sub_2A484();
  v84 = sub_2A474();
  v86 = sub_1D598;
LABEL_141:

  return _swift_task_switch(v86, v84, v85);
}