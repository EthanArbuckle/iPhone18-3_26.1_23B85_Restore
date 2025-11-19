id sub_1720()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_177C()
{
  type metadata accessor for NfcTccLocalizableGenerator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10B30 = result;
  return result;
}

void *sub_17D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_183C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_18BC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v27 = sub_5A3C(&qword_10778, &qword_96B0);
  v24 = *(v27 - 8);
  v1 = v24;
  v2 = *(v24 + 64);
  __chkstk_darwin(v27);
  v26 = ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = (&v21 - v26);
  sub_5A84();
  sub_873C();
  v25 = sub_5A3C(&qword_10788, &qword_96B8);
  v29 = *(v25 - 8);
  v3 = v29[8];
  __chkstk_darwin(v25);
  v22 = "49C6FE399TCCHelper";
  sub_84EC();
  type metadata accessor for NFCTCCSettingsList(0);
  sub_6CDC(&qword_10790, type metadata accessor for NFCTCCSettingsList);
  sub_5B30(&qword_10798);
  sub_5B30(&qword_107A0);
  sub_5B30(&qword_107A8);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_874C();
  __chkstk_darwin(v4);
  v5 = v27;
  v6 = (&v21 - v26);
  v22 = *(v1 + 16);
  v7 = (v22)(&v21 - v26, v30, v27);
  __chkstk_darwin(v7);
  v8 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v29[2];
  v9 = v25;
  (v26)(v8, v8, v25);
  v10 = sub_5A3C(&qword_107B0, &unk_96C0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = sub_7CEC(&qword_107B8, &qword_10778, &qword_96B0);
  (v22)(v14, v6, v5);
  v35 = v14;
  v16 = sub_7CEC(&qword_107C0, &qword_10788, &qword_96B8);
  v17 = &v14[*(v11 + 56)];
  (v26)(v17, v8, v9);
  v36 = v17;
  v33 = v5;
  v34 = v9;
  v31 = v15;
  v32 = v16;
  sub_872C();
  v18 = v29[1];
  v18(v23, v9);
  v19 = *(v24 + 8);
  v19(v30, v5);
  v18(v8, v9);
  return (v19)(v6, v5);
}

uint64_t sub_1D48@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for NFCTCCPrivacyAllAppsListModel(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_4CEC();
  result = sub_868C();
  *a1 = v6;
  a1[1] = v7;
  return result;
}

void sub_1DB4(uint64_t *a1@<X8>)
{
  v2 = sub_84DC();

  sub_1DF0(v2, v3, a1);
}

void sub_1DF0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for NFCTCCSettingsList(0);
  v7 = a3 + v6[8];
  sub_868C();
  *v7 = v20;
  *(v7 + 1) = v21;
  *a3 = a1;
  a3[1] = a2;
  v8 = v6[5];
  v9 = objc_allocWithZone(LSApplicationRecord);
  swift_bridgeObjectRetain_n();
  v10 = sub_5C38(a1, a2, 1);
  if (v10)
  {
    v11 = v10;

    sub_848C();
    isa = sub_881C().super.isa;

    v13 = [v11 localizedNameWithPreferredLocalizations:isa];

    sub_87EC();
    sub_846C();
  }

  else
  {
    sub_846C();
  }

  v14 = kTCCServiceContactlessAccess;
  if (kTCCServiceContactlessAccess)
  {
    sub_64D0(a1, a2);

    v15 = a3 + v6[6];
    sub_868C();
    *v15 = v20;
    *(v15 + 1) = v21;
    v16 = a3 + v6[9];
    sub_868C();
    *v16 = v20;
    *(v16 + 1) = v21;
    v17 = kTCCServiceContactlessAccessPayments;
    if (kTCCServiceContactlessAccessPayments)
    {
      sub_64D0(a1, a2);

      v18 = a3 + v6[7];
      sub_868C();
      *v18 = v20;
      *(v18 + 1) = v21;
      v19 = a3 + v6[10];
      sub_868C();
      *v19 = v20;
      *(v19 + 1) = v21;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_5A3C(&qword_10908, &qword_9850);
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_5A3C(&qword_10910, &qword_9858);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v34 = a1;
  v35 = a2;
  sub_5A3C(&qword_10918, &qword_9860);
  sub_715C();
  sub_85DC();
  v14 = sub_879C();
  v15 = type metadata accessor for NFCTCCSettingsList(0);
  v16 = sub_7CEC(&qword_10978, &qword_10910, &qword_9858);
  v17 = sub_6CDC(&qword_10980, &type metadata accessor for SESContactlessTCCContext.NFCTCCRow);
  v18 = sub_6CDC(&qword_10790, type metadata accessor for NFCTCCSettingsList);
  v29 = v15;
  v30 = v8;
  sub_865C();
  (*(v10 + 8))(v13, v9);
  sub_85AC();
  if (qword_10510 != -1)
  {
    swift_once();
  }

  v19 = qword_10B30;
  v20 = sub_85EC();
  v22 = v21;
  v24 = v23;
  v36 = v9;
  v37 = v14;
  v38 = v29;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  swift_getOpaqueTypeConformance2();
  v25 = v30;
  v26 = v33;
  sub_864C();
  sub_73A0(v20, v22, v24 & 1);

  return (*(v32 + 8))(v25, v26);
}

uint64_t sub_246C()
{
  sub_85AC();
  if (qword_10510 != -1)
  {
    swift_once();
  }

  v0 = qword_10B30;
  sub_85EC();
  sub_5A3C(&qword_10930, &qword_9868);
  sub_71E8();
  return sub_870C();
}

uint64_t sub_25B0()
{
  sub_5A3C(&qword_10988, &qword_9890);
  sub_869C();
  swift_getKeyPath();
  sub_6CDC(&qword_10838, type metadata accessor for NFCTCCPrivacyAllAppsListModel);
  sub_84AC();

  v0 = *(v2 + 24);

  swift_getKeyPath();
  sub_5A3C(&qword_10990, &qword_98C8);
  sub_5A3C(&qword_10940, &qword_9870);
  sub_73E4();
  sub_7260();
  return sub_86FC();
}

uint64_t sub_2720()
{
  swift_getKeyPath();
  sub_6CDC(&qword_10838, type metadata accessor for NFCTCCPrivacyAllAppsListModel);
  sub_84AC();

  v1 = *(v0 + 24);
}

uint64_t sub_27C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5A3C(&qword_109A0, &qword_98D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v61 - v6;
  v8 = sub_876C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_878C();
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for SESContactlessTCCContext.NFCTCCRow.RowStyle.listView(_:))
  {
    (*(v9 + 96))(v12, v8);
    v64 = a2;
    v14 = *v12;
    v15 = v12[1];
    v16 = sub_5A3C(&qword_10970, &qword_9888);
    v63 = v61;
    v17 = *(v16 - 8);
    v18 = *(v17 + 64);
    __chkstk_darwin(v16);
    v20 = v61 - v19;
    v21 = sub_879C();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, a1, v21);
    v23 = (*(v22 + 56))(v7, 0, 1, v21);
    __chkstk_darwin(v23);
    v61[-4] = v14;
    v61[-3] = v15;
    v61[-2] = a1;
    sub_5A3C(&qword_109B0, &qword_98E0);
    sub_7454();
    sub_6CDC(&qword_10980, &type metadata accessor for SESContactlessTCCContext.NFCTCCRow);
    sub_854C();

    v24 = sub_5A3C(&qword_10950, &qword_9878);
    v62 = v61;
    v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v24);
    v27 = v61 - v26;
    v28 = sub_5A3C(&qword_109D0, &qword_98F0);
    v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v28);
    (*(v17 + 16))(v61 - v30, v20, v16);
    swift_storeEnumTagMultiPayload();
    sub_5A3C(&qword_10960, &qword_9880);
    sub_7CEC(&qword_10958, &qword_10960, &qword_9880);
    sub_7CEC(&qword_10968, &qword_10970, &qword_9888);
    sub_85CC();
    v31 = sub_5A3C(&qword_109A8, &qword_98D8);
    v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v31);
    sub_74F4(v27, v61 - v33);
    swift_storeEnumTagMultiPayload();
    sub_72E0();
    sub_85CC();
    sub_7564(v27);
    return (*(v17 + 8))(v20, v16);
  }

  else if (v13 == enum case for SESContactlessTCCContext.NFCTCCRow.RowStyle.toggle(_:))
  {
    v64 = a2;
    v62 = sub_5A3C(&qword_10960, &qword_9880);
    v63 = v61;
    v35 = *(v62 - 1);
    v36 = *(v35 + 64);
    __chkstk_darwin(v62);
    v38 = v61 - v37;
    result = sub_877C();
    v40 = kTCCServiceContactlessAccess;
    if (kTCCServiceContactlessAccess)
    {
      v41 = result;
      v42 = v39;
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = v41;
      v43[5] = v42;
      v43[6] = v40;
      v44 = swift_allocObject();
      v44[2] = 0;
      v44[3] = 0;
      v44[4] = v41;
      v44[5] = v42;
      v44[6] = v40;

      v45 = v40;
      v46 = sub_86EC();
      __chkstk_darwin(v46);
      v61[-2] = a1;
      sub_5A3C(&qword_109C8, &qword_98E8);
      sub_7CEC(&qword_109C0, &qword_109C8, &qword_98E8);
      v47 = v38;
      sub_86DC();
      v61[0] = sub_5A3C(&qword_10950, &qword_9878);
      v61[1] = v61;
      v48 = (*(*(v61[0] - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v61[0]);
      v50 = v61 - v49;
      v51 = sub_5A3C(&qword_109D0, &qword_98F0);
      v52 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v51);
      v54 = v38;
      v55 = v62;
      (*(v35 + 16))(v61 - v53, v54, v62);
      swift_storeEnumTagMultiPayload();
      sub_5A3C(&qword_10970, &qword_9888);
      sub_7CEC(&qword_10958, &qword_10960, &qword_9880);
      sub_7CEC(&qword_10968, &qword_10970, &qword_9888);
      sub_85CC();
      v56 = sub_5A3C(&qword_109A8, &qword_98D8);
      v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v56);
      sub_74F4(v50, v61 - v58);
      swift_storeEnumTagMultiPayload();
      sub_72E0();
      sub_85CC();
      sub_7564(v50);
      return (*(v35 + 8))(v47, v55);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v59 = sub_5A3C(&qword_109A8, &qword_98D8);
    v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v59);
    swift_storeEnumTagMultiPayload();
    sub_5A3C(&qword_10950, &qword_9878);
    sub_72E0();
    sub_85CC();
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_3210()
{
  sub_5A3C(&qword_109C8, &qword_98E8);
  sub_7CEC(&qword_109C0, &qword_109C8, &qword_98E8);
  return sub_853C();
}

uint64_t sub_32D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_859C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_858C();
  sub_857C();
  sub_856C();
  sub_857C();
  sub_85BC();
  result = sub_85EC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_33C8()
{
  sub_5A3C(&qword_109D8, &qword_98F8);
  sub_7CEC(&qword_109E0, &qword_109D8, &qword_98F8);
  return sub_867C();
}

uint64_t sub_347C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_847C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_877C();
  v6 = v5;
  v7 = objc_allocWithZone(LSApplicationRecord);

  v8 = sub_5C38(v4, v6, 1);
  if (v8)
  {
    v9 = v8;

    sub_848C();
    isa = sub_881C().super.isa;

    v11 = [v9 localizedNameWithPreferredLocalizations:isa];

    sub_87EC();
    sub_846C();
  }

  else
  {
    sub_846C();
  }

  result = sub_85FC();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_35E8()
{
  sub_877C();
  v0 = objc_allocWithZone(ISIcon);
  v1 = sub_87DC();

  [v0 initWithBundleIdentifier:v1];

  v2 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  return sub_84FC();
}

void sub_36A4(uint64_t *a1@<X8>)
{
  v2 = sub_877C();

  sub_1DF0(v2, v3, a1);
}

uint64_t sub_36E8@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = sub_5A3C(&qword_109F8, &qword_9908);
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = v20 - v4;
  v6 = sub_5A3C(&qword_10A00, &qword_9910);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v23 = v1;
  sub_5A3C(&qword_10A08, &qword_9918);
  sub_7A28();
  sub_85DC();
  sub_85AC();
  if (qword_10510 != -1)
  {
    swift_once();
  }

  v11 = qword_10B30;
  v12 = sub_85EC();
  v14 = v13;
  v16 = v15;
  v17 = sub_7CEC(&qword_10A28, &qword_10A00, &qword_9910);
  sub_864C();
  sub_73A0(v12, v14, v16 & 1);

  (*(v7 + 8))(v10, v6);
  v24 = v6;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  sub_865C();
  return (*(v21 + 8))(v5, v18);
}

uint64_t sub_3A38()
{
  v0 = sub_859C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_858C();
  sub_857C();
  v2 = *(type metadata accessor for NFCTCCSettingsList(0) + 20);
  sub_855C();
  sub_857C();
  sub_85BC();
  if (qword_10510 != -1)
  {
    swift_once();
  }

  v3 = qword_10B30;
  sub_85EC();
  sub_5A3C(&qword_10A20, &qword_9920);
  sub_7CEC(&qword_10A18, &qword_10A20, &qword_9920);
  return sub_870C();
}

uint64_t sub_3C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for NFCTCCSettingsList(0);
  v71 = *(v3 - 1);
  v4 = *(v71 + 64);
  __chkstk_darwin(v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5A3C(&qword_10A38, &qword_9928);
  v74 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v9 = a1 + v3[9];
  v10 = *v9;
  v11 = *(v9 + 8);
  LOBYTE(v75) = v10;
  v76 = v11;
  sub_5A3C(&qword_10A40, &qword_9930);
  sub_869C();
  v12 = v77;
  v13 = sub_5A3C(&qword_10A48, &qword_9938);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = v15;
  v72 = v8;
  v68 = v4;
  v69 = v5;
  if (v12 == 1)
  {
    v67 = &v62;
    v17 = *(v15 + 64);
    __chkstk_darwin(v13);
    v64 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = sub_5A3C(&qword_10A58, &qword_9948);
    v66 = &v62;
    v65 = *(v63 - 8);
    v19 = *(v65 + 8);
    __chkstk_darwin(v63);
    v21 = &v62 - v20;
    v22 = a1 + v3[6];
    v70 = a1;
    v24 = *(v22 + 8);
    v77 = *v22;
    v23 = v77;
    v78 = v24;
    sub_86BC();
    sub_86DC();
    LOBYTE(v75) = v23;
    v76 = v24;
    sub_869C();
    LOBYTE(v75) = v77;
    sub_7C08(v70, v5);
    v25 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v26 = swift_allocObject();
    sub_7C70(v5, v26 + v25);
    sub_7CEC(&unk_10A60, &qword_10A58, &qword_9948);
    v28 = v63;
    v27 = v64;
    sub_866C();
    a1 = v70;

    v29 = v21;
    v8 = v72;
    (*(v65 + 1))(v29, v28);
    (*(v16 + 32))(v8, v27, v14);
    v30 = (*(v16 + 56))(v8, 0, 1, v14);
  }

  else
  {
    v30 = (*(v15 + 56))(v8, 1, 1, v13);
  }

  __chkstk_darwin(v30);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1 + v3[10];
  v34 = *v33;
  v35 = *(v33 + 8);
  LOBYTE(v75) = v34;
  v76 = v35;
  sub_869C();
  v36 = v77;
  v37 = sub_5A3C(&qword_10A48, &qword_9938);
  v38 = v37;
  v39 = *(v37 - 8);
  v40 = v39;
  if (v36 == 1)
  {
    v70 = &v62;
    v41 = *(v39 + 64);
    __chkstk_darwin(v37);
    v65 = &v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = sub_5A3C(&qword_10A58, &qword_9948);
    v67 = &v62;
    v66 = *(v64 - 1);
    v43 = v66[8];
    __chkstk_darwin(v64);
    v45 = &v62 - v44;
    v46 = a1 + v3[7];
    v48 = *(v46 + 8);
    v77 = *v46;
    v47 = v77;
    v78 = v48;
    sub_86BC();
    sub_86DC();
    LOBYTE(v75) = v47;
    v76 = v48;
    sub_869C();
    LOBYTE(v75) = v77;
    v49 = a1;
    v50 = v69;
    sub_7C08(v49, v69);
    v51 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v52 = swift_allocObject();
    sub_7C70(v50, v52 + v51);
    sub_7CEC(&unk_10A60, &qword_10A58, &qword_9948);
    v54 = v64;
    v53 = v65;
    sub_866C();

    (v66[1])(v45, v54);
    v8 = v72;
    (*(v40 + 32))(v32, v53, v38);
    v55 = (*(v40 + 56))(v32, 0, 1, v38);
  }

  else
  {
    v55 = (*(v39 + 56))(v32, 1, 1, v37);
  }

  v56 = v74;
  __chkstk_darwin(v55);
  v57 = &v62 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_7B30(v8, v57);
  __chkstk_darwin(v58);
  sub_7B30(v32, v57);
  v59 = v73;
  sub_7B30(v57, v73);
  v60 = sub_5A3C(&qword_10A50, &qword_9940);
  sub_7B30(v57, v59 + *(v60 + 48));
  sub_7BA0(v32);
  sub_7BA0(v8);
  sub_7BA0(v57);
  return sub_7BA0(v57);
}

uint64_t sub_446C@<X0>(uint64_t a1@<X8>)
{
  sub_85AC();
  if (qword_10510 != -1)
  {
    swift_once();
  }

  v2 = qword_10B30;
  result = sub_85EC();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_4554(uint64_t *a1)
{
  v1 = kTCCServiceContactlessAccess;
  if (kTCCServiceContactlessAccess)
  {
    v3 = *a1;
    v2 = a1[1];
    v4 = a1 + *(type metadata accessor for NFCTCCSettingsList(0) + 24);
    v5 = *v4;
    v6 = *(v4 + 1);
    sub_5A3C(&qword_10A40, &qword_9930);
    sub_869C();
    sub_76B4(v3, v2, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4600@<X0>(uint64_t a1@<X8>)
{
  sub_85AC();
  if (qword_10510 != -1)
  {
    swift_once();
  }

  v2 = qword_10B30;
  result = sub_85EC();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_46E8(uint64_t *a1)
{
  v2 = a1 + *(type metadata accessor for NFCTCCSettingsList(0) + 28);
  v3 = *v2;
  v4 = *(v2 + 1);
  sub_5A3C(&qword_10A40, &qword_9930);
  sub_869C();
  v5 = kTCCServiceContactlessAccessPayments;
  if (v10 != 1)
  {
    if (kTCCServiceContactlessAccessPayments)
    {
      sub_76B4(*a1, a1[1], kTCCServiceContactlessAccessPayments);

      return;
    }

LABEL_11:
    __break(1u);
    return;
  }

  if (!kTCCServiceContactlessAccessPayments)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = a1;
  v6 = *a1;
  v7 = v8[1];
  sub_869C();
  if (v10)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  sub_7F00(v6, v7, v5, v9);

  sub_86AC();
}

uint64_t sub_4814@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_7AD4();

  result = sub_860C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_48D0()
{
  swift_getKeyPath();
  sub_6CDC(&qword_10838, type metadata accessor for NFCTCCPrivacyAllAppsListModel);
  sub_84AC();

  v1 = *(v0 + 16);
}

uint64_t sub_4974@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_6CDC(&qword_10838, type metadata accessor for NFCTCCPrivacyAllAppsListModel);
  sub_84AC();

  *a2 = *(v3 + 16);
}

uint64_t sub_4A20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_6CDC(&qword_10838, type metadata accessor for NFCTCCPrivacyAllAppsListModel);
  sub_849C();
}

uint64_t sub_4AEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_6CDC(&qword_10838, type metadata accessor for NFCTCCPrivacyAllAppsListModel);
  sub_84AC();

  *a2 = *(v3 + 24);
}

uint64_t sub_4B98(uint64_t a1)
{
  v3 = *(v1 + 24);

  v5 = sub_62BC(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_6CDC(&qword_10838, type metadata accessor for NFCTCCPrivacyAllAppsListModel);
    sub_849C();
  }
}

uint64_t sub_4CEC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = &_swiftEmptyArrayStorage;
  sub_84BC();
  swift_allocObject();
  swift_weakInit();
  v1 = sub_87AC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_87BC();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_6CDC(&qword_10838, type metadata accessor for NFCTCCPrivacyAllAppsListModel);
  sub_849C();

  swift_getKeyPath();
  sub_6CDC(&qword_10838, type metadata accessor for NFCTCCPrivacyAllAppsListModel);
  sub_84AC();

  if (*(v0 + 16))
  {
    v5 = *(v0 + 16);

    v6 = sub_875C();
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

  sub_4B98(v6);
  return v0;
}

uint64_t sub_5084()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_6CDC(&qword_10838, type metadata accessor for NFCTCCPrivacyAllAppsListModel);
    sub_84AC();

    if (*(v1 + 16))
    {
      v2 = *(v1 + 16);

      v3 = sub_875C();
    }

    else
    {
      v3 = &_swiftEmptyArrayStorage;
    }

    sub_4B98(v3);
  }

  return result;
}

uint64_t sub_5184()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC14NFCTCCSettings29NFCTCCPrivacyAllAppsListModel___observationRegistrar;
  v4 = sub_84CC();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_5258()
{
  result = sub_84CC();
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

void sub_5300(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v7 = qword_10518;
    v8 = a1;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_852C();
    sub_6B34(v9, qword_10560);
    v10 = v8;
    v11 = a2;

    oslog = sub_850C();
    v12 = sub_883C();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v13 = 138412802;
      *(v13 + 4) = v11;
      *v14 = v11;
      *(v13 + 12) = 2080;
      v16 = v11;
      *(v13 + 14) = sub_5D14(a3, a4, &v21);
      *(v13 + 22) = 2112;
      type metadata accessor for CFError(0);
      sub_6CDC(&qword_109E8, type metadata accessor for CFError);
      swift_allocError();
      *v17 = v10;
      v18 = v10;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v19;
      v14[1] = v19;
      _os_log_impl(&dword_0, oslog, v12, "Could not set %@ for %s with %@", v13, 0x20u);
      sub_5A3C(&qword_109F0, &qword_9900);
      swift_arrayDestroy();

      sub_6B6C(v15);
    }

    else
    {
    }
  }
}

void sub_558C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_55F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    authorization_right = tcc_authorization_record_get_authorization_right();
    swift_beginAccess();
    *(a3 + 16) = authorization_right;
    if (qword_10518 != -1)
    {
      swift_once();
    }

    v5 = sub_852C();
    sub_6B34(v5, qword_10560);

    v6 = sub_850C();
    v7 = sub_882C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      swift_beginAccess();
      *(v8 + 4) = *(a3 + 16);

      _os_log_impl(&dword_0, v6, v7, "Set value to %llu", v8, 0xCu);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_10518 != -1)
    {
      swift_once();
    }

    v9 = sub_852C();
    sub_6B34(v9, qword_10560);
    oslog = sub_850C();
    v10 = sub_883C();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, oslog, v10, "Could not set authorization value, treating as UNKNOWN", v11, 2u);
    }
  }
}

uint64_t sub_5840(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_58C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = swift_beginAccess();
  if (*(a3 + 24) == 1 && a1 != 0)
  {
    swift_unknownObjectRetain();
    if (tcc_authorization_record_get_service())
    {
      if (!a2 && [a4 isEqual:?])
      {
        authorization_right = tcc_authorization_record_get_authorization_right();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        result = swift_beginAccess();
        *(a3 + 16) = authorization_right;
        *(a3 + 24) = 0;
        return result;
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_59CC()
{
  result = qword_10770;
  if (!qword_10770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10770);
  }

  return result;
}

uint64_t sub_5A3C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_5A84()
{
  result = qword_10780;
  if (!qword_10780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10780);
  }

  return result;
}

uint64_t sub_5AF8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5B30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_84EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5B74(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_5BBC()
{
  v0 = sub_852C();
  sub_6C18(v0, qword_10560);
  sub_6B34(v0, qword_10560);
  return sub_851C();
}

id sub_5C38(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_87DC();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_845C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_5D14(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_5DE0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_6BB8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_6B6C(v11);
  return v7;
}

unint64_t sub_5DE0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_5EEC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_886C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_5EEC(uint64_t a1, unint64_t a2)
{
  v4 = sub_5F38(a1, a2);
  sub_6068(&off_C888);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_5F38(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_6154(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_886C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_880C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_6154(v10, 0);
        result = sub_885C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_6068(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_61C8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_6154(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_5A3C(&qword_10830, &qword_96D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_61C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_5A3C(&qword_10830, &qword_96D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_62BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_879C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_6CDC(&qword_10840, &type metadata accessor for SESContactlessTCCContext.NFCTCCRow);
    v22 = sub_87CC();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_64D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_871C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = tcc_message_options_create();
  if (!result)
  {
    return result;
  }

  sub_6A78();
  (*(v5 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v10 = sub_884C();
  (*(v5 + 8))(v8, v4);
  v11 = tcc_server_create();

  if (!v11)
  {
LABEL_13:
    swift_unknownObjectRelease();
    return 0;
  }

  v12 = tcc_service_singleton_for_CF_name();
  if (!v12)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v13 = v12;
  sub_87FC();
  v14 = tcc_identity_create();

  if (!v14)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 1;
  tcc_message_options_set_reply_handler_policy();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  aBlock[4] = sub_6B14;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_5840;
  aBlock[3] = &unk_C980;
  v17 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  tcc_server_message_get_authorization_records_by_identity();
  _Block_release(v17);
  swift_unknownObjectRelease();
  swift_beginAccess();
  if (*(v15 + 24))
  {
    if (qword_10518 != -1)
    {
      swift_once();
    }

    v18 = sub_852C();
    sub_6B34(v18, qword_10560);

    v19 = sub_850C();
    v20 = sub_883C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = v14;
      v22 = v21;
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_5D14(a1, a2, &v34);
      _os_log_impl(&dword_0, v19, v20, "Could not get authorization for %s, setting unknown", v22, 0xCu);
      sub_6B6C(v23);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    v33 = *(v15 + 16);
    if (qword_10518 != -1)
    {
      swift_once();
    }

    v24 = sub_852C();
    sub_6B34(v24, qword_10560);

    v25 = sub_850C();
    v26 = sub_882C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v14;
      v29 = v28;
      v34 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_5D14(a1, a2, &v34);
      *(v27 + 12) = 2048;
      v30 = v33;
      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v25, v26, "Got authorization right for %s: %llu", v27, 0x16u);
      sub_6B6C(v29);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v30;
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v33;
    }
  }
}

unint64_t sub_6A78()
{
  result = qword_107C8;
  if (!qword_107C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_107C8);
  }

  return result;
}

uint64_t sub_6AD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6B34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_6B6C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_6BB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_6C18(uint64_t a1, uint64_t *a2)
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

uint64_t sub_6C7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6CDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6D28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_4B98(v4);
}

uint64_t sub_6D54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_6D90()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_6DE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_847C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6EA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_847C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_6F44()
{
  sub_847C();
  if (v0 <= 0x3F)
  {
    sub_6FE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_6FE4()
{
  if (!qword_108B0)
  {
    v0 = sub_86CC();
    if (!v1)
    {
      atomic_store(v0, &qword_108B0);
    }
  }
}

__n128 sub_7034(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_7040(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_7088(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_7154()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_246C();
}

unint64_t sub_715C()
{
  result = qword_10920;
  if (!qword_10920)
  {
    sub_5B74(&qword_10918, &qword_9860);
    sub_71E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10920);
  }

  return result;
}

unint64_t sub_71E8()
{
  result = qword_10928;
  if (!qword_10928)
  {
    sub_5B74(&qword_10930, &qword_9868);
    sub_7260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10928);
  }

  return result;
}

unint64_t sub_7260()
{
  result = qword_10938;
  if (!qword_10938)
  {
    sub_5B74(&qword_10940, &qword_9870);
    sub_72E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10938);
  }

  return result;
}

unint64_t sub_72E0()
{
  result = qword_10948;
  if (!qword_10948)
  {
    sub_5B74(&qword_10950, &qword_9878);
    sub_7CEC(&qword_10958, &qword_10960, &qword_9880);
    sub_7CEC(&qword_10968, &qword_10970, &qword_9888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10948);
  }

  return result;
}

uint64_t sub_73A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_73B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25B0();
}

uint64_t sub_73B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_877C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_73E4()
{
  result = qword_10998;
  if (!qword_10998)
  {
    sub_5B74(&qword_10990, &qword_98C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10998);
  }

  return result;
}

uint64_t sub_7448()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_3210();
}

unint64_t sub_7454()
{
  result = qword_109B8;
  if (!qword_109B8)
  {
    sub_5B74(&qword_109B0, &qword_98E0);
    sub_7CEC(&qword_109C0, &qword_109C8, &qword_98E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109B8);
  }

  return result;
}

uint64_t sub_74F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5A3C(&qword_10950, &qword_9878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7564(uint64_t a1)
{
  v2 = sub_5A3C(&qword_10950, &qword_9878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_75D0@<X0>(BOOL *a1@<X8>)
{
  v3 = v1[6];
  result = sub_64D0(v1[4], v1[5]);
  *a1 = result == 2;
  return result;
}

uint64_t sub_7608()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_76B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_871C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = tcc_message_options_create();
  if (result)
  {
    sub_6A78();
    (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v6);
    v12 = sub_884C();
    (*(v7 + 8))(v10, v6);
    v13 = tcc_server_create();

    if (v13)
    {
      if (tcc_service_singleton_for_CF_name())
      {
        sub_87FC();
        v14 = tcc_identity_create();

        if (v14)
        {
          tcc_message_options_set_reply_handler_policy();
          v15 = swift_allocObject();
          v15[2] = a3;
          v15[3] = a1;
          v15[4] = a2;
          aBlock[4] = sub_7990;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_558C;
          aBlock[3] = &unk_CAE8;
          v16 = _Block_copy(aBlock);
          swift_unknownObjectRetain();
          v17 = a3;

          tcc_server_message_set_authorization_value();
          _Block_release(v16);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_7950()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_799C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_32D4(a1);
}

unint64_t sub_7A28()
{
  result = qword_10A10;
  if (!qword_10A10)
  {
    sub_5B74(&qword_10A08, &qword_9918);
    sub_7CEC(&qword_10A18, &qword_10A20, &qword_9920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A10);
  }

  return result;
}

unint64_t sub_7AD4()
{
  result = qword_10A30;
  if (!qword_10A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A30);
  }

  return result;
}

uint64_t sub_7B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_5A3C(&qword_10A38, &qword_9928);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7BA0(uint64_t a1)
{
  v2 = sub_5A3C(&qword_10A38, &qword_9928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NFCTCCSettingsList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NFCTCCSettingsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7CEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5B74(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7D34()
{
  v1 = (type metadata accessor for NFCTCCSettingsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_847C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8] + 8);

  v9 = *(v0 + v3 + v1[9] + 8);

  v10 = *(v0 + v3 + v1[10] + 8);

  v11 = *(v0 + v3 + v1[11] + 8);

  v12 = *(v0 + v3 + v1[12] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_7E8C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NFCTCCSettingsList(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_7F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_871C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = 1;
  if (tcc_message_options_create())
  {
    v18[0] = a4;
    v18[1] = a1;
    sub_6A78();
    (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v6);
    v12 = sub_884C();
    (*(v7 + 8))(v10, v6);
    v13 = tcc_server_create();

    if (v13)
    {
      if (tcc_service_singleton_for_CF_name())
      {
        sub_87FC();
        v14 = tcc_identity_create();

        if (v14)
        {
          tcc_message_options_set_reply_handler_policy();
          aBlock[4] = sub_81F0;
          aBlock[5] = v11;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_5840;
          aBlock[3] = &unk_CB88;
          v15 = _Block_copy(aBlock);
          swift_unknownObjectRetain();

          tcc_server_message_prompt_authorization_value();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          _Block_release(v15);
          swift_unknownObjectRelease();
          swift_beginAccess();
          goto LABEL_11;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

LABEL_11:
  v16 = *(v11 + 16);

  return v16;
}

uint64_t sub_81F8()
{
  sub_5B74(&qword_10908, &qword_9850);
  sub_5B74(&qword_10910, &qword_9858);
  sub_879C();
  type metadata accessor for NFCTCCSettingsList(255);
  sub_7CEC(&qword_10978, &qword_10910, &qword_9858);
  sub_6CDC(&qword_10980, &type metadata accessor for SESContactlessTCCContext.NFCTCCRow);
  sub_6CDC(&qword_10790, type metadata accessor for NFCTCCSettingsList);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_8340()
{
  sub_5B74(&qword_109F8, &qword_9908);
  sub_5B74(&qword_10A00, &qword_9910);
  sub_7CEC(&qword_10A28, &qword_10A00, &qword_9910);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}