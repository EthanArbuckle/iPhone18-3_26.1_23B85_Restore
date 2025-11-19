uint64_t sub_14AE4(unsigned __int8 *a1)
{
  v1 = a1[1];
  if (v1 != 2 && (v1 & 1) != 0)
  {
    return 0;
  }

  v3 = *a1;
  if (v3 == 2 || (v3 & 1) == 0)
  {
    return a1[33];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_14B1C()
{
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v0 = qword_24460;
  v24 = qword_25C80;

  if (v0 != -1)
  {
    swift_once();
  }

  v23 = qword_25C88;
  sub_3578(&qword_24D70, &qword_1CE08);
  v1 = *(sub_1B5A4() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BF10;

  sub_1B5C4();
  sub_3578(&qword_24D48, &qword_1CDF0);
  v5 = sub_1B4D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BF10;
  v10 = enum case for SiriHintsMode.display(_:);
  v11 = sub_1B414();
  (*(*(v11 - 8) + 104))(v9 + v8, v10, v11);
  (*(v6 + 104))(v9 + v8, enum case for DeliveryVehicle.siriHints(_:), v5);
  qword_25E20 = 0;
  unk_25E10 = 0u;
  unk_25E00 = 0u;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v12 = (type metadata accessor for SignalDefinition() - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BF10;
  v16 = (v15 + v14);
  v17 = v12[7];
  *(v15 + v14 + v17) = v9;
  v18 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v19 = sub_1B624();
  v20 = *(v19 - 8);
  (*(v20 + 104))(&v16[v17], v18, v19);
  (*(v20 + 56))(&v16[v17], 0, 1, v19);
  v21 = &v16[v12[8]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *v16 = &_swiftEmptyArrayStorage;
  qword_25D68 = 0xD00000000000001CLL;
  unk_25D70 = 0x800000000001D660;
  qword_25D78 = 0xD000000000000056;
  qword_25D80 = 0x800000000001D430;
  unk_25D88 = v24;
  qword_25D90 = v23;
  unk_25D98 = v15;
  qword_25DA0 = 0x6E69666661736964;
  qword_25DA8 = 0xEB00000000797469;
  unk_25DB0 = 0xD000000000000010;
  qword_25DB8 = 0x800000000001D490;
  word_25DC0 = 257;
  qword_25DC8 = 0;
  unk_25DD0 = 0;
  qword_25DD8 = &off_20C70;
  unk_25DE0 = v4;
  qword_25DE8 = v9;
  unk_25DF0 = variable initialization expression of AudioSuggestionsExecutionParameters.supportsAffinityIntent;
  qword_25DF8 = 0;
  qword_25E28 = &_swiftEmptyArrayStorage;
  unk_25E30 = &_swiftEmptyArrayStorage;
}

uint64_t sub_14FA8()
{
  v0 = sub_1B4D4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24450 != -1)
  {
    swift_once();
  }

  v5 = qword_24460;
  v30 = qword_25C78;

  if (v5 != -1)
  {
    swift_once();
  }

  v28 = 0x800000000001D640;
  v29 = 0x800000000001D430;
  v6 = qword_25C88;
  v7 = enum case for DeliveryVehicle.siriHelp(_:);
  v8 = v1[13];
  v8(v4, enum case for DeliveryVehicle.siriHelp(_:), v0);

  v26 = sub_D9B8(2, v4);
  v10 = v1[1];
  v9 = v1 + 1;
  v10(v4, v0);
  v27 = 0x800000000001D490;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v11 = v9[8];
  v12 = (*(v9 + 72) + 32) & ~*(v9 + 72);
  v13 = swift_allocObject();
  v25 = xmmword_1BF10;
  *(v13 + 16) = xmmword_1BF10;
  v8((v13 + v12), v7, v0);
  qword_25EF0 = 0;
  unk_25EE0 = 0u;
  unk_25ED0 = 0u;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v14 = (type metadata accessor for SignalDefinition() - 8);
  v15 = *(*v14 + 72);
  v16 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v25;
  v18 = (v17 + v16);
  v19 = v14[7];
  *(v17 + v16 + v19) = v13;
  v20 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v21 = sub_1B624();
  v22 = *(v21 - 8);
  (*(v22 + 104))(&v18[v19], v20, v21);
  (*(v22 + 56))(&v18[v19], 0, 1, v21);
  v23 = &v18[v14[8]];
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *v18 = v26;
  qword_25E38 = 0xD000000000000015;
  qword_25E40 = v28;
  unk_25E48 = 0xD000000000000056;
  qword_25E50 = v29;
  unk_25E58 = v30;
  qword_25E60 = v6;
  unk_25E68 = v17;
  qword_25E70 = 2036427888;
  qword_25E78 = 0xE400000000000000;
  unk_25E80 = 0xD000000000000010;
  qword_25E88 = v27;
  word_25E90 = 258;
  xmmword_25E98 = 0u;
  unk_25EA8 = 0u;
  qword_25EB8 = v13;
  unk_25EC0 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_25EC8 = 0;
  qword_25EF8 = &_swiftEmptyArrayStorage;
  unk_25F00 = &_swiftEmptyArrayStorage;
}

double sub_1539C()
{
  v0 = sub_1B394();
  v54 = *(v0 - 8);
  v55 = v0;
  v1 = *(v54 + 64);
  __chkstk_darwin(v0);
  v53 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3578(&qword_24670, &qword_1C100);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v40 - v5);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v7 = qword_24460;
  v52 = qword_25C80;

  if (v7 != -1)
  {
    swift_once();
  }

  v50 = 0x800000000001D620;
  v51 = 0x800000000001D430;
  v48 = qword_25C88;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v8 = (type metadata accessor for SignalDefinition() - 8);
  v9 = *v8;
  *&v61 = *(*v8 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v58 = xmmword_1C490;
  v49 = v11;
  *(v11 + 16) = xmmword_1C490;
  v12 = (v11 + v10);

  v45 = sub_DE94(3);
  v60 = sub_3578(&qword_24D48, &qword_1CDF0);
  v56 = sub_1B4D4();
  v13 = *(v56 - 8);
  v14 = *(v13 + 72);
  v59 = *(v13 + 80);
  v15 = (v59 + 32) & ~v59;
  v46 = 2 * v14;
  v44 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v58;
  v47 = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v17 = *(v13 + 104);
  v57 = v17;
  v17(v16 + v15);
  LODWORD(v58) = enum case for DeliveryVehicle.siriHelp(_:);
  v17(v16 + v15 + v14);
  *v6 = v16;
  v18 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v43 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v19 = sub_1B624();
  v20 = *(v19 - 8);
  v42 = *(v20 + 104);
  v42(v6, v18, v19);
  v41 = *(v20 + 56);
  v41(v6, 0, 1, v19);
  v21 = v12 + v8[8];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *v12 = v45;
  sub_1AC78(v6, v12 + v8[7]);
  v22 = (v12 + v61);
  v45 = sub_E06C(3);
  v23 = v44;
  v24 = swift_allocObject();
  v61 = xmmword_1BF10;
  *(v24 + 16) = xmmword_1BF10;
  v57(v24 + v15, v58, v56);
  *v6 = v24;
  v42(v6, v43, v19);
  v41(v6, 0, 1, v19);
  v25 = v22 + v8[8];
  *(v25 + 4) = 0;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *v22 = v45;
  sub_1AC78(v6, v22 + v8[7]);
  v26 = v46;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C5F0;
  v28 = v27 + v15;
  v29 = v27 + v15;
  v31 = v56;
  v30 = v57;
  v57(v29, v58, v56);
  v30(v28 + v23, enum case for DeliveryVehicle.siriAutoComplete(_:), v31);
  v30(v28 + v26, v47, v31);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v63 + 1) = sub_1B444();
  v64 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v62);
  sub_1B434();
  sub_3578(&qword_24D58, &qword_1CDF8);
  v32 = swift_allocObject();
  *(v32 + 16) = v61;
  *(v32 + 56) = &type metadata for PodcastNameParameterBuilder;
  *(v32 + 64) = &off_213F8;
  *(v32 + 32) = 3;
  sub_3578(&qword_24D60, &qword_1CE00);
  v33 = swift_allocObject();
  *(v33 + 16) = v61;
  v34 = v53;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v36 = swift_allocObject();
  v37 = v55;
  v36[5] = v55;
  v36[6] = &protocol witness table for SubscriptionProvider;
  v38 = sub_35C0(v36 + 2);
  (*(v54 + 32))(v38, v34, v37);
  *(v33 + 56) = PartyMusicSubscriber;
  *(v33 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber);
  *(v33 + 32) = v36;
  qword_25F08 = 0xD00000000000001DLL;
  qword_25F10 = v50;
  qword_25F18 = 0xD000000000000056;
  qword_25F20 = v51;
  qword_25F28 = v52;
  qword_25F30 = v48;
  unk_25F38 = v49;
  strcpy(&qword_25F40, "playAPodcast");
  BYTE5(qword_25F48) = 0;
  HIWORD(qword_25F48) = -5120;
  unk_25F50 = 0xD000000000000010;
  qword_25F58 = 0x800000000001D490;
  word_25F60 = 259;
  xmmword_25F68 = 0u;
  unk_25F78 = 0u;
  result = *&v63;
  *&algn_25FA0[16] = v63;
  qword_25F88 = v27;
  unk_25F90 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_25F98 = 0;
  *algn_25FA0 = v62;
  qword_25FC0 = v64;
  unk_25FC8 = v32;
  qword_25FD0 = v33;
  return result;
}

uint64_t sub_15B60()
{
  if (sub_12250(&off_20F20))
  {
    v0 = sub_12068() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

double sub_15BA4()
{
  v0 = sub_1B394();
  v73 = *(v0 - 8);
  v74 = v0;
  v1 = *(v73 + 64);
  __chkstk_darwin(v0);
  v72 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3578(&qword_24670, &qword_1C100);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v69 = (&v66 - v5);
  v70 = sub_1B4D4();
  v68 = *(v70 - 8);
  v6 = *(v68 + 64);
  __chkstk_darwin(v70);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B464();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  *&v84 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v66 - v14;
  __chkstk_darwin(v13);
  v17 = &v66 - v16;
  if (qword_24458 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v18 = qword_24460;
    v71 = qword_25C80;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = *(qword_25C88 + 16);

    v83 = v19;
    if (!v19)
    {
      break;
    }

    v21 = 0;
    v81 = v9 + 16;
    LODWORD(v80) = enum case for DeviceType.mac(_:);
    v78 = (v9 + 32);
    v79 = v9 + 104;
    v85 = &_swiftEmptyArrayStorage;
    v76 = v17;
    v77 = v15;
    v82 = v20;
    v75 = v9 + 8;
    while (v21 < *(v20 + 16))
    {
      v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v23 = *(v9 + 72);
      (*(v9 + 16))(v17, v20 + v22 + v23 * v21, v8);
      (*(v9 + 104))(v15, v80, v8);
      sub_1B024(&qword_24D78, &type metadata accessor for DeviceType);
      v24 = sub_1B8C4();
      v25 = *(v9 + 8);
      v25(v15, v8);
      if (v24)
      {
        v25(v17, v8);
      }

      else
      {
        v26 = *v78;
        (*v78)(v84, v17, v8);
        v27 = v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A314(0, v27[2] + 1, 1);
          v27 = v86;
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          sub_1A314(v29 > 1, v30 + 1, 1);
          v27 = v86;
        }

        v85 = v27;
        v27[2] = v30 + 1;
        v26(v27 + v22 + v30 * v23, v84, v8);
        v17 = v76;
        v15 = v77;
      }

      ++v21;
      v20 = v82;
      if (v83 == v21)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v85 = &_swiftEmptyArrayStorage;
LABEL_16:

  v82 = 0x800000000001D5F0;
  v83 = 0x800000000001D430;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v31 = (type metadata accessor for SignalDefinition() - 8);
  v32 = *(*v31 + 72);
  v33 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
  v34 = swift_allocObject();
  v84 = xmmword_1BF10;
  v81 = v34;
  *(v34 + 16) = xmmword_1BF10;
  v35 = (v34 + v33);
  v36 = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v37 = v68;
  v38 = *(v68 + 104);
  v39 = v67;
  LODWORD(v79) = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v40 = v70;
  (v38)(v67, enum case for DeliveryVehicle.assistantSuggestions(_:), v70);
  v78 = v38;
  v80 = sub_D9B8(4, v39);
  v41 = *(v37 + 8);
  v37 += 8;
  v41(v39, v40);
  v42 = sub_3578(&qword_24D48, &qword_1CDF0);
  v76 = *(v37 + 64);
  v77 = v42;
  v43 = (*(v37 + 72) + 32) & ~*(v37 + 72);
  v44 = swift_allocObject();
  *(v44 + 16) = v84;
  (v38)(v44 + v43, v36, v40);
  v45 = v69;
  *v69 = v44;
  v46 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v47 = sub_1B624();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v45, v46, v47);
  (*(v48 + 56))(v45, 0, 1, v47);
  v49 = v35 + v31[8];
  *(v49 + 4) = 0;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  *v35 = v80;
  sub_1AC78(v45, v35 + v31[7]);
  v80 = 0x800000000001CF50;
  sub_3578(&qword_24D70, &qword_1CE08);
  v50 = *(sub_1B5A4() - 8);
  v51 = *(v50 + 72);
  v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = v84;
  sub_1B5C4();
  v54 = v76;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1C490;
  v56 = enum case for SiriHintsMode.display(_:);
  v57 = sub_1B414();
  (*(*(v57 - 8) + 104))(v55 + v43, v56, v57);
  v58 = v78;
  (v78)(v55 + v43, enum case for DeliveryVehicle.siriHints(_:), v40);
  (v58)(&v54[v55 + v43], v79, v40);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v87 + 1) = sub_1B444();
  v88 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v86);
  sub_1B434();
  sub_3578(&qword_24D60, &qword_1CE00);
  v59 = swift_allocObject();
  *(v59 + 16) = v84;
  v60 = v72;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v62 = swift_allocObject();
  v63 = v74;
  v62[5] = v74;
  v62[6] = &protocol witness table for SubscriptionProvider;
  v64 = sub_35C0(v62 + 2);
  (*(v73 + 32))(v64, v60, v63);
  *(v59 + 56) = PartyMusicSubscriber;
  *(v59 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber);
  *(v59 + 32) = v62;
  qword_25FD8 = 0xD000000000000021;
  unk_25FE0 = v82;
  qword_25FE8 = 0xD000000000000056;
  qword_25FF0 = v83;
  unk_25FF8 = v71;
  qword_26000 = v85;
  unk_26008 = v81;
  qword_26010 = 0xD000000000000010;
  unk_26018 = v80;
  qword_26020 = 0xD000000000000010;
  unk_26028 = 0x800000000001D490;
  word_26030 = 260;
  qword_26038 = 0;
  unk_26040 = 0;
  qword_26048 = &off_20CA8;
  unk_26050 = v53;
  result = *&v87;
  unk_26080 = v87;
  qword_26058 = v55;
  unk_26060 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_26068 = 0;
  unk_26070 = v86;
  qword_26090 = v88;
  qword_26098 = &_swiftEmptyArrayStorage;
  unk_260A0 = v59;
  return result;
}

uint64_t sub_16610()
{
  v0 = sub_1B4D4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v5 = qword_25C80;
  v6 = qword_24460;

  if (v6 != -1)
  {
    swift_once();
  }

  v30 = 0x800000000001D5D0;
  v31 = 0x800000000001D430;
  v7 = qword_25C88;
  v8 = enum case for DeliveryVehicle.siriHelp(_:);
  v9 = v1[13];
  v9(v4, enum case for DeliveryVehicle.siriHelp(_:), v0);

  v27 = sub_D9B8(5, v4);
  v11 = v1[1];
  v10 = v1 + 1;
  v11(v4, v0);
  v28 = 0x800000000001D490;
  v29 = 0x800000000001D4B0;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v12 = v10[8];
  v13 = (*(v10 + 72) + 32) & ~*(v10 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C490;
  v15 = v14 + v13;
  v9(v15, v8, v0);
  v9((v15 + v12), enum case for DeliveryVehicle.siriAutoComplete(_:), v0);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v33 + 1) = sub_1B444();
  v34 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v32);
  sub_1B434();
  sub_3578(&qword_24D40, &qword_1CDE8);
  v16 = (type metadata accessor for SignalDefinition() - 8);
  v17 = *(*v16 + 72);
  v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BF10;
  v20 = (v19 + v18);
  v21 = v16[7];
  *(v19 + v18 + v21) = v14;
  v22 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v23 = sub_1B624();
  v24 = *(v23 - 8);
  (*(v24 + 104))(&v20[v21], v22, v23);
  (*(v24 + 56))(&v20[v21], 0, 1, v23);
  v25 = &v20[v16[8]];
  *(v25 + 4) = 0;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *v20 = v27;
  qword_260A8 = 0xD00000000000001ALL;
  qword_260B0 = v30;
  unk_260B8 = 0xD000000000000056;
  qword_260C0 = v31;
  unk_260C8 = v5;
  qword_260D0 = v7;
  unk_260D8 = v19;
  qword_260E0 = 0x6973754D79616C70;
  qword_260E8 = 0xE900000000000063;
  unk_260F0 = 0xD000000000000010;
  qword_260F8 = v28;
  word_26100 = 261;
  qword_26108 = 0xD000000000000011;
  unk_26110 = v29;
  qword_26118 = 0;
  unk_26120 = 0;
  unk_26150 = v33;
  qword_26128 = v14;
  unk_26130 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_26138 = 0;
  unk_26140 = v32;
  qword_26160 = v34;
  unk_26168 = &_swiftEmptyArrayStorage;
  qword_26170 = &_swiftEmptyArrayStorage;
}

uint64_t sub_16AB8(void *a1)
{
  v2 = [a1 mediaItems];
  if (v2)
  {
    v3 = v2;
    sub_47E0(0, &qword_246C0, INMediaItem_ptr);
    v4 = sub_1B944();

    v5 = v4 >> 62 ? sub_1BA84() : *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));

    if (v5)
    {
      return 0;
    }
  }

  v6 = [a1 mediaContainer];
  if (v6)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_16B88()
{
  v0 = sub_1B394();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4D4();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v10 = qword_24460;
  v42 = qword_25C80;

  if (v10 != -1)
  {
    swift_once();
  }

  v40 = 0x800000000001D510;
  v41 = 0x800000000001D430;
  v39 = qword_25C88;
  v11 = enum case for DeliveryVehicle.siriHelp(_:);
  v12 = v6[13];
  v12(v9, enum case for DeliveryVehicle.siriHelp(_:), v5);

  v36 = sub_D9B8(6, v9);
  v14 = v6[1];
  v13 = v6 + 1;
  v14(v9, v5);
  v37 = 0x800000000001D490;
  v38 = 0x800000000001D4B0;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v15 = v13[8];
  v16 = (*(v13 + 72) + 32) & ~*(v13 + 72);
  v17 = swift_allocObject();
  v35 = xmmword_1C490;
  *(v17 + 16) = xmmword_1C490;
  v18 = v17 + v16;
  v12(v18, v11, v5);
  v12((v18 + v15), enum case for DeliveryVehicle.siriAutoComplete(_:), v5);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v44 + 1) = sub_1B444();
  v45 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v43);
  sub_1B434();
  sub_3578(&qword_24D58, &qword_1CDF8);
  v19 = swift_allocObject();
  *(v19 + 16) = v35;
  *(v19 + 56) = &type metadata for SongNameParameterBuilder;
  *(v19 + 64) = &off_21320;
  *(v19 + 32) = 256;
  *(v19 + 96) = &type metadata for ArtistNameParameterBuilder;
  *(v19 + 104) = &off_21428;
  *(v19 + 72) = 1;
  sub_3578(&qword_24D60, &qword_1CE00);
  v20 = swift_allocObject();
  v35 = xmmword_1BF10;
  *(v20 + 16) = xmmword_1BF10;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v22 = swift_allocObject();
  v22[5] = v0;
  v22[6] = &protocol witness table for SubscriptionProvider;
  v23 = sub_35C0(v22 + 2);
  (*(v1 + 32))(v23, v4, v0);
  *(v20 + 56) = PartyMusicSubscriber;
  *(v20 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber);
  *(v20 + 32) = v22;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v24 = (type metadata accessor for SignalDefinition() - 8);
  v25 = *(*v24 + 72);
  v26 = (*(*v24 + 80) + 32) & ~*(*v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v35;
  v28 = (v27 + v26);
  v29 = v24[7];
  *&v28[v29] = v17;
  v30 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v31 = sub_1B624();
  v32 = *(v31 - 8);
  (*(v32 + 104))(&v28[v29], v30, v31);
  (*(v32 + 56))(&v28[v29], 0, 1, v31);
  v33 = &v28[v24[8]];
  *(v33 + 4) = 0;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *v28 = v36;
  qword_26178 = 0xD000000000000019;
  qword_26180 = v40;
  unk_26188 = 0xD000000000000056;
  qword_26190 = v41;
  unk_26198 = v42;
  qword_261A0 = v39;
  unk_261A8 = v27;
  qword_261B0 = 0x5979425879616C70;
  qword_261B8 = 0xE800000000000000;
  unk_261C0 = 0xD000000000000010;
  qword_261C8 = v37;
  word_261D0 = 262;
  qword_261D8 = 0xD000000000000011;
  unk_261E0 = v38;
  qword_261E8 = 0;
  unk_261F0 = 0;
  unk_26220 = v44;
  qword_261F8 = v17;
  unk_26200 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_26208 = 0;
  unk_26210 = v43;
  qword_26230 = v45;
  unk_26238 = v19;
  qword_26240 = v20;
}

uint64_t sub_171CC()
{
  if (sub_12250(&off_20EE0))
  {
    return sub_11D0C() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1720C()
{
  v0 = sub_1B394();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4D4();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24450 != -1)
  {
    swift_once();
  }

  v10 = qword_24460;
  v41 = qword_25C78;

  if (v10 != -1)
  {
    swift_once();
  }

  v39 = 0x800000000001D4F0;
  v40 = 0x800000000001D430;
  v38 = qword_25C88;
  v11 = enum case for DeliveryVehicle.siriHelp(_:);
  v12 = v6[13];
  v12(v9, enum case for DeliveryVehicle.siriHelp(_:), v5);

  v35 = sub_D9B8(7, v9);
  v14 = v6[1];
  v13 = v6 + 1;
  v14(v9, v5);
  v36 = 0x800000000001D490;
  v37 = 0x800000000001D4B0;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v15 = v13[8];
  v16 = (*(v13 + 72) + 32) & ~*(v13 + 72);
  v17 = swift_allocObject();
  v42 = xmmword_1BF10;
  *(v17 + 16) = xmmword_1BF10;
  v12((v17 + v16), v11, v5);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v44 + 1) = sub_1B444();
  v45 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v43);
  sub_1B434();
  sub_3578(&qword_24D58, &qword_1CDF8);
  v18 = swift_allocObject();
  *(v18 + 16) = v42;
  *(v18 + 56) = &type metadata for ArtistNameParameterBuilder;
  *(v18 + 64) = &off_21428;
  *(v18 + 32) = 257;
  sub_3578(&qword_24D60, &qword_1CE00);
  v19 = swift_allocObject();
  *(v19 + 16) = v42;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v21 = swift_allocObject();
  v21[5] = v0;
  v21[6] = &protocol witness table for SubscriptionProvider;
  v22 = sub_35C0(v21 + 2);
  (*(v1 + 32))(v22, v4, v0);
  *(v19 + 56) = PartyMusicSubscriber;
  *(v19 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber);
  *(v19 + 32) = v21;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v23 = (type metadata accessor for SignalDefinition() - 8);
  v24 = *(*v23 + 72);
  v25 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v42;
  v27 = (v26 + v25);
  v28 = v23[7];
  *&v27[v28] = v17;
  v29 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v30 = sub_1B624();
  v31 = *(v30 - 8);
  (*(v31 + 104))(&v27[v28], v29, v30);
  (*(v31 + 56))(&v27[v28], 0, 1, v30);
  v32 = &v27[v23[8]];
  *(v32 + 4) = 0;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  *v27 = v35;
  qword_26248 = 0xD00000000000001BLL;
  qword_26250 = v39;
  unk_26258 = 0xD000000000000056;
  qword_26260 = v40;
  unk_26268 = v41;
  qword_26270 = v38;
  unk_26278 = v26;
  qword_26280 = 0x6974724179616C70;
  qword_26288 = 0xEA00000000007473;
  unk_26290 = 0xD000000000000010;
  qword_26298 = v36;
  word_262A0 = 263;
  qword_262A8 = 0xD000000000000011;
  unk_262B0 = v37;
  qword_262B8 = 0;
  unk_262C0 = 0;
  *&algn_262E0[16] = v44;
  qword_262C8 = v17;
  unk_262D0 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_262D8 = 0;
  *algn_262E0 = v43;
  qword_26300 = v45;
  unk_26308 = v18;
  qword_26310 = v19;
}

unint64_t sub_1780C()
{
  if (sub_12250(&off_20EE0))
  {
    return sub_11B68() & 1;
  }

  else
  {
    return 0;
  }
}

double sub_1784C()
{
  v0 = sub_1B394();
  v68 = *(v0 - 8);
  v69 = v0;
  v1 = *(v68 + 64);
  __chkstk_darwin(v0);
  v67 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3578(&qword_24670, &qword_1C100);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v51 - v5);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v7 = qword_24460;
  v66 = qword_25C80;

  if (v7 != -1)
  {
    swift_once();
  }

  v64 = 0x800000000001D4D0;
  v65 = 0x800000000001D430;
  v62 = qword_25C88;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v8 = type metadata accessor for SignalDefinition();
  v9 = *(v8 - 8);
  *&v71 = *(v9 + 72);
  v10 = v8 - 8;
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v61 = xmmword_1C490;
  v63 = v12;
  *(v12 + 16) = xmmword_1C490;
  v13 = (v12 + v11);

  v59 = sub_DE94(8);
  v58 = sub_3578(&qword_24D48, &qword_1CDF0);
  v73 = sub_1B4D4();
  v14 = *(v73 - 8);
  v15 = *(v14 + 72);
  v72 = *(v14 + 80);
  v16 = (v72 + 32) & ~v72;
  v70 = v16;
  v60 = 2 * v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v61;
  v18 = v17 + v16;
  LODWORD(v61) = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v19 = *(v14 + 104);
  v56 = v19;
  (v19)(v18);
  v57 = enum case for DeliveryVehicle.siriHelp(_:);
  v52 = v15;
  (v19)(v18 + v15);
  *v6 = v17;
  v20 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v55 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v21 = sub_1B624();
  v22 = *(v21 - 8);
  v54 = *(v22 + 104);
  v54(v6, v20, v21);
  v53 = *(v22 + 56);
  v53(v6, 0, 1, v21);
  v23 = *(v10 + 32);
  v51 = v10;
  v24 = (v13 + v23);
  v24[3] = type metadata accessor for PlayRadioAssistantConfigurator();
  v24[4] = sub_1B024(&qword_24C70, type metadata accessor for PlayRadioAssistantConfigurator);
  v25 = sub_35C0(v24);
  *v25 = 0x6964615279616C70;
  v25[1] = 0xE90000000000006FLL;
  v26 = enum case for ActionIdentifier.suggestionId(_:);
  v27 = sub_1B504();
  (*(*(v27 - 8) + 104))(v25, v26, v27);
  *v13 = v59;
  sub_1AC78(v6, v13 + *(v10 + 28));
  v28 = (v13 + v71);
  v59 = sub_E06C(8);
  v29 = v70;
  v30 = swift_allocObject();
  v71 = xmmword_1BF10;
  *(v30 + 16) = xmmword_1BF10;
  v31 = v30 + v29;
  v32 = v57;
  v33 = v56;
  v56(v31, v57, v73);
  *v6 = v30;
  v54(v6, v55, v21);
  v53(v6, 0, 1, v21);
  v34 = v51;
  v35 = v28 + *(v51 + 32);
  *(v35 + 4) = 0;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  *v28 = v59;
  sub_1AC78(v6, v28 + *(v34 + 28));
  v59 = 0x800000000001D4B0;
  v36 = v60;
  v37 = v52;
  v38 = v70;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C5F0;
  v40 = v39 + v38;
  v41 = v32;
  v42 = v73;
  v33(v40, v41, v73);
  v33(v40 + v37, enum case for DeliveryVehicle.siriAutoComplete(_:), v42);
  v33(v40 + v36, v61, v42);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v75 + 1) = sub_1B444();
  v76 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v74);
  sub_1B434();
  sub_3578(&qword_24D58, &qword_1CDF8);
  v43 = swift_allocObject();
  *(v43 + 16) = v71;
  *(v43 + 56) = &type metadata for RadioNameParameterBuilder;
  *(v43 + 64) = &off_217D8;
  *(v43 + 32) = 258;
  sub_3578(&qword_24D60, &qword_1CE00);
  v44 = swift_allocObject();
  *(v44 + 16) = v71;
  v45 = v67;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v47 = swift_allocObject();
  v48 = v69;
  v47[5] = v69;
  v47[6] = &protocol witness table for SubscriptionProvider;
  v49 = sub_35C0(v47 + 2);
  (*(v68 + 32))(v49, v45, v48);
  *(v44 + 56) = PartyMusicSubscriber;
  *(v44 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber);
  *(v44 + 32) = v47;
  qword_26318 = 0xD00000000000001ALL;
  qword_26320 = v64;
  unk_26328 = 0xD000000000000056;
  qword_26330 = v65;
  unk_26338 = v66;
  qword_26340 = v62;
  unk_26348 = v63;
  qword_26350 = 0x6964615279616C70;
  qword_26358 = 0xE90000000000006FLL;
  unk_26360 = 0xD000000000000010;
  qword_26368 = 0x800000000001D490;
  word_26370 = 264;
  qword_26378 = 0xD000000000000011;
  unk_26380 = v59;
  qword_26388 = 0;
  unk_26390 = 0;
  result = *&v75;
  unk_263C0 = v75;
  qword_26398 = v39;
  unk_263A0 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_263A8 = 0;
  unk_263B0 = v74;
  qword_263D0 = v76;
  unk_263D8 = v43;
  qword_263E0 = v44;
  return result;
}

uint64_t sub_18108()
{
  if (sub_12250(&off_20F60) & 1) == 0 || (sub_11B68() & 1) != 0 || (sub_11D0C())
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_1215C() ^ 1;
  }

  return v0 & 1;
}

double sub_1815C()
{
  v0 = sub_1B394();
  v70 = *(v0 - 8);
  v71 = v0;
  v1 = *(v70 + 64);
  __chkstk_darwin(v0);
  v69 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3578(&qword_24670, &qword_1C100);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v52 - v5);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v7 = qword_24460;
  v68 = qword_25C80;

  if (v7 != -1)
  {
    swift_once();
  }

  v66 = 0x800000000001D410;
  v67 = 0x800000000001D430;
  v64 = qword_25C88;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v8 = type metadata accessor for SignalDefinition();
  v9 = *(v8 - 8);
  v61 = *(v9 + 72);
  v10 = v8 - 8;
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v75 = xmmword_1C490;
  v65 = v12;
  *(v12 + 16) = xmmword_1C490;
  v13 = v12 + v11;

  *&v60 = sub_DE94(9);
  v59 = sub_3578(&qword_24D48, &qword_1CDF0);
  v74 = sub_1B4D4();
  v14 = *(v74 - 8);
  v15 = *(v14 + 72);
  v16 = *(v14 + 80);
  v17 = (v16 + 32) & ~v16;
  v72 = v17;
  v73 = v16;
  v62 = 2 * v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v75;
  v19 = v18 + v17;
  v63 = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v20 = *(v14 + 104);
  v57 = v20;
  (v20)(v19);
  v58 = enum case for DeliveryVehicle.siriHelp(_:);
  v53 = v15;
  (v20)(v19 + v15);
  *v6 = v18;
  v21 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v56 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v22 = sub_1B624();
  v23 = *(v22 - 8);
  v55 = *(v23 + 104);
  v55(v6, v21, v22);
  v54 = *(v23 + 56);
  v54(v6, 0, 1, v22);
  v24 = *(v10 + 32);
  v52 = v10;
  v25 = (v13 + v24);
  v25[3] = type metadata accessor for PlayPlaylistAssistantConfigurator();
  v25[4] = sub_1B024(&qword_24AF8, type metadata accessor for PlayPlaylistAssistantConfigurator);
  v26 = sub_35C0(v25);
  strcpy(v26, "playPlaylist");
  *(v26 + 13) = 0;
  *(v26 + 7) = -5120;
  v27 = enum case for ActionIdentifier.suggestionId(_:);
  v28 = sub_1B504();
  (*(*(v28 - 8) + 104))(v26, v27, v28);
  *v13 = v60;
  sub_1AC78(v6, v13 + *(v10 + 28));
  v29 = &v61[v13];
  v61 = sub_E06C(9);
  v30 = v72;
  v31 = swift_allocObject();
  v60 = xmmword_1BF10;
  *(v31 + 16) = xmmword_1BF10;
  v32 = v31 + v30;
  v33 = v58;
  v34 = v57;
  v57(v32, v58, v74);
  *v6 = v31;
  v55(v6, v56, v22);
  v54(v6, 0, 1, v22);
  v35 = v52;
  v36 = &v29[*(v52 + 32)];
  *(v36 + 4) = 0;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *v29 = v61;
  sub_1AC78(v6, &v29[*(v35 + 28)]);
  v61 = 0x800000000001D4B0;
  v37 = v62;
  v38 = v53;
  v39 = v72;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C5F0;
  v41 = v40 + v39;
  v42 = v33;
  v43 = v74;
  v34(v41, v42, v74);
  v34(v41 + v38, enum case for DeliveryVehicle.siriAutoComplete(_:), v43);
  v34(v41 + v37, v63, v43);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v77 + 1) = sub_1B444();
  v78 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v76);
  sub_1B434();
  sub_3578(&qword_24D58, &qword_1CDF8);
  v44 = swift_allocObject();
  *(v44 + 16) = v75;
  *(v44 + 56) = &type metadata for PlaylistNameParameterBuilder;
  *(v44 + 64) = &off_21698;
  *(v44 + 32) = 260;
  *(v44 + 96) = &type metadata for PlaylistTypeParameterBuilder;
  *(v44 + 104) = &off_215E8;
  *(v44 + 72) = 5;
  sub_3578(&qword_24D60, &qword_1CE00);
  v45 = swift_allocObject();
  *(v45 + 16) = v60;
  v46 = v69;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v48 = swift_allocObject();
  v49 = v71;
  v48[5] = v71;
  v48[6] = &protocol witness table for SubscriptionProvider;
  v50 = sub_35C0(v48 + 2);
  (*(v70 + 32))(v50, v46, v49);
  *(v45 + 56) = PartyMusicSubscriber;
  *(v45 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber);
  *(v45 + 32) = v48;
  qword_263E8 = 0xD00000000000001DLL;
  qword_263F0 = v66;
  unk_263F8 = 0xD000000000000056;
  qword_26400 = v67;
  unk_26408 = v68;
  qword_26410 = v64;
  unk_26418 = v65;
  strcpy(&qword_26420, "playPlaylist");
  BYTE5(qword_26428) = 0;
  HIWORD(qword_26428) = -5120;
  unk_26430 = 0xD000000000000010;
  qword_26438 = 0x800000000001D490;
  word_26440 = 265;
  qword_26448 = 0xD000000000000011;
  unk_26450 = v61;
  qword_26458 = 0;
  unk_26460 = 0;
  result = *&v77;
  unk_26490 = v77;
  qword_26468 = v40;
  unk_26470 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_26478 = 0;
  unk_26480 = v76;
  qword_264A0 = v78;
  unk_264A8 = v44;
  qword_264B0 = v45;
  return result;
}

uint64_t sub_18A24()
{
  if ((sub_12250(&off_20F90) & 1) != 0 && (sub_11B68() & 1) == 0)
  {
    v0 = sub_11D0C() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_18A70()
{
  v0 = sub_1B4D4();
  v45 = *(v0 - 8);
  v46 = v0;
  v1 = *(v45 + 64);
  __chkstk_darwin(v0);
  v44 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B334();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  if (qword_24458 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v10 = *(qword_25C80 + 16);

    v12 = &_swiftEmptyArrayStorage;
    v53 = v10;
    if (!v10)
    {
      break;
    }

    v13 = 0;
    v50 = (v4 + 32);
    v51 = v4 + 16;
    v47 = (v4 + 8);
    v48 = v4;
    v49 = v3;
    v52 = v11;
    while (v13 < *(v11 + 16))
    {
      v56 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v57 = v12;
      v55 = *(v4 + 72);
      (*(v4 + 16))(v9, v11 + v56 + v55 * v13, v3);
      *&v58 = sub_1B324();
      *(&v58 + 1) = v14;
      __chkstk_darwin(v58);
      *(&v44 - 2) = &v58;
      v15 = v3;
      v16 = sub_11C60(sub_1ACE8, (&v44 - 4), &off_20CF8);
      swift_arrayDestroy();

      if (v16)
      {
        (*v47)(v9, v15);
        v12 = v57;
        v3 = v15;
      }

      else
      {
        v17 = *v50;
        (*v50)(v54, v9, v15);
        v12 = v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A358(0, v12[2] + 1, 1);
          v12 = v61;
        }

        v20 = v12[2];
        v19 = v12[3];
        if (v20 >= v19 >> 1)
        {
          sub_1A358(v19 > 1, v20 + 1, 1);
          v12 = v61;
        }

        v12[2] = v20 + 1;
        v3 = v49;
        v17(v12 + v56 + v20 * v55, v54, v49);
        v4 = v48;
      }

      ++v13;
      v11 = v52;
      if (v53 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

LABEL_13:
  v57 = v12;

  if (qword_24460 != -1)
  {
    swift_once();
  }

  v55 = 0x800000000001D5B0;
  v56 = 0x800000000001D430;
  v21 = qword_25C88;
  v22 = enum case for DeliveryVehicle.siriHelp(_:);
  v24 = v44;
  v23 = v45;
  v25 = *(v45 + 104);
  v26 = v46;
  v25(v44, enum case for DeliveryVehicle.siriHelp(_:), v46);

  v27 = sub_D9B8(10, v24);
  v28 = *(v23 + 8);
  v23 += 8;
  v28(v24, v26);
  v54 = 0x800000000001D490;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v29 = *(v23 + 64);
  v30 = (*(v23 + 72) + 32) & ~*(v23 + 72);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C490;
  v32 = v31 + v30;
  v25(v32, v22, v26);
  v25((v32 + v29), enum case for DeliveryVehicle.siriAutoComplete(_:), v26);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v59 + 1) = sub_1B444();
  v60 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v58);
  sub_1B434();
  sub_3578(&qword_24D40, &qword_1CDE8);
  v33 = (type metadata accessor for SignalDefinition() - 8);
  v34 = *(*v33 + 72);
  v35 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BF10;
  v37 = (v36 + v35);
  v38 = v33[7];
  *&v37[v38] = v31;
  v39 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v40 = sub_1B624();
  v41 = *(v40 - 8);
  (*(v41 + 104))(&v37[v38], v39, v40);
  (*(v41 + 56))(&v37[v38], 0, 1, v40);
  v42 = &v37[v33[8]];
  *(v42 + 4) = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  *v37 = v27;
  qword_264B8 = 0xD00000000000001CLL;
  unk_264C0 = v55;
  qword_264C8 = 0xD000000000000056;
  qword_264D0 = v56;
  unk_264D8 = v57;
  qword_264E0 = v21;
  unk_264E8 = v36;
  qword_264F0 = 0x4E65685479616C70;
  qword_264F8 = 0xEB00000000737765;
  unk_26500 = 0xD000000000000010;
  qword_26508 = v54;
  word_26510 = 266;
  xmmword_26518 = 0u;
  unk_26528 = 0u;
  qword_26538 = v31;
  unk_26540 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_26548 = 0;
  unk_26560 = v59;
  unk_26550 = v58;
  qword_26570 = v60;
  qword_26578 = &_swiftEmptyArrayStorage;
  unk_26580 = &_swiftEmptyArrayStorage;
}

unint64_t sub_191A4()
{
  if (sub_12250(&off_20F20))
  {
    return sub_12068() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_191E4()
{
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v0 = qword_24460;
  v24 = qword_25C80;

  if (v0 != -1)
  {
    swift_once();
  }

  v23 = qword_25C88;
  sub_3578(&qword_24D70, &qword_1CE08);
  v1 = *(sub_1B5A4() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BF10;

  sub_1B5C4();
  sub_3578(&qword_24D48, &qword_1CDF0);
  v5 = sub_1B4D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BF10;
  v10 = enum case for SiriHintsMode.display(_:);
  v11 = sub_1B414();
  (*(*(v11 - 8) + 104))(v9 + v8, v10, v11);
  (*(v6 + 104))(v9 + v8, enum case for DeliveryVehicle.siriHints(_:), v5);
  qword_26640 = 0;
  *&algn_26620[16] = 0u;
  *algn_26620 = 0u;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v12 = (type metadata accessor for SignalDefinition() - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BF10;
  v16 = (v15 + v14);
  v17 = v12[7];
  *(v15 + v14 + v17) = v9;
  v18 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v19 = sub_1B624();
  v20 = *(v19 - 8);
  (*(v20 + 104))(&v16[v17], v18, v19);
  (*(v20 + 56))(&v16[v17], 0, 1, v19);
  v21 = &v16[v12[8]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *v16 = &_swiftEmptyArrayStorage;
  qword_26588 = 0xD000000000000016;
  unk_26590 = 0x800000000001D590;
  qword_26598 = 0xD000000000000056;
  qword_265A0 = 0x800000000001D430;
  unk_265A8 = v24;
  qword_265B0 = v23;
  unk_265B8 = v15;
  qword_265C0 = 0x6572616873;
  qword_265C8 = 0xE500000000000000;
  unk_265D0 = 0xD000000000000010;
  qword_265D8 = 0x800000000001D490;
  word_265E0 = 267;
  qword_265E8 = 0;
  unk_265F0 = 0;
  qword_265F8 = &off_20D68;
  unk_26600 = v4;
  qword_26608 = v9;
  unk_26610 = variable initialization expression of AudioSuggestionsExecutionParameters.supportsAffinityIntent;
  qword_26618 = 0;
  qword_26648 = &_swiftEmptyArrayStorage;
  unk_26650 = &_swiftEmptyArrayStorage;
}

uint64_t sub_19664()
{
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v0 = qword_24460;
  v24 = qword_25C80;

  if (v0 != -1)
  {
    swift_once();
  }

  v23 = qword_25C88;
  sub_3578(&qword_24D70, &qword_1CE08);
  v1 = *(sub_1B5A4() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BF10;

  sub_1B5C4();
  sub_3578(&qword_24D48, &qword_1CDF0);
  v5 = sub_1B4D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BF10;
  v10 = enum case for SiriHintsMode.display(_:);
  v11 = sub_1B414();
  (*(*(v11 - 8) + 104))(v9 + v8, v10, v11);
  (*(v6 + 104))(v9 + v8, enum case for DeliveryVehicle.siriHints(_:), v5);
  qword_26710 = 0;
  unk_26700 = 0u;
  unk_266F0 = 0u;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v12 = (type metadata accessor for SignalDefinition() - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BF10;
  v16 = (v15 + v14);
  v17 = v12[7];
  *(v15 + v14 + v17) = v9;
  v18 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v19 = sub_1B624();
  v20 = *(v19 - 8);
  (*(v20 + 104))(&v16[v17], v18, v19);
  (*(v20 + 56))(&v16[v17], 0, 1, v19);
  v21 = &v16[v12[8]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *v16 = &_swiftEmptyArrayStorage;
  qword_26658 = 0xD000000000000018;
  unk_26660 = 0x800000000001D570;
  qword_26668 = 0xD000000000000056;
  qword_26670 = 0x800000000001D430;
  unk_26678 = v24;
  qword_26680 = v23;
  unk_26688 = v15;
  qword_26690 = 0x656C6666756873;
  qword_26698 = 0xE700000000000000;
  unk_266A0 = 0xD000000000000010;
  qword_266A8 = 0x800000000001D490;
  word_266B0 = 268;
  qword_266B8 = 0;
  unk_266C0 = 0;
  qword_266C8 = &off_20DA0;
  unk_266D0 = v4;
  qword_266D8 = v9;
  unk_266E0 = sub_19AE8;
  qword_266E8 = 0;
  qword_26718 = &_swiftEmptyArrayStorage;
  unk_26720 = &_swiftEmptyArrayStorage;
}

uint64_t sub_19AE8(uint64_t a1)
{
  v1 = 0;
  if ((*(a1 + 32) & 1) == 0 && *(a1 + 24) >= 5)
  {
    v2 = *(a1 + 17);
    v3 = v2 == 2;
    v1 = v2 ^ 1;
    if (v3)
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_19B18()
{
  v0 = sub_1B4D4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v5 = qword_24460;
  v32 = qword_25C80;

  if (v5 != -1)
  {
    swift_once();
  }

  v30 = 0x800000000001D530;
  v31 = 0x800000000001D430;
  v29 = qword_25C88;
  v6 = enum case for DeliveryVehicle.siriHelp(_:);
  v7 = v1[13];
  v7(v4, enum case for DeliveryVehicle.siriHelp(_:), v0);

  v27 = sub_D9B8(13, v4);
  v9 = v1[1];
  v8 = v1 + 1;
  v9(v4, v0);
  v28 = 0x800000000001D490;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v10 = v8[8];
  v11 = (*(v8 + 72) + 32) & ~*(v8 + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C490;
  v13 = v12 + v11;
  v7(v13, v6, v0);
  v7((v13 + v10), enum case for DeliveryVehicle.siriAutoComplete(_:), v0);
  v14 = sub_1B424();
  qword_267D8 = v14;
  unk_267E0 = &protocol witness table for SiriSuggestions.IntentType;
  v15 = sub_35C0(qword_267C0);
  *v15 = 0xD000000000000014;
  v15[1] = 0x800000000001D550;
  (*(*(v14 - 8) + 104))();
  sub_3578(&qword_24D40, &qword_1CDE8);
  v16 = (type metadata accessor for SignalDefinition() - 8);
  v17 = *(*v16 + 72);
  v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BF10;
  v20 = (v19 + v18);
  v21 = v16[7];
  *(v19 + v18 + v21) = v12;
  v22 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v23 = sub_1B624();
  v24 = *(v23 - 8);
  (*(v24 + 104))(&v20[v21], v22, v23);
  (*(v24 + 56))(&v20[v21], 0, 1, v23);
  v25 = &v20[v16[8]];
  *(v25 + 4) = 0;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *v20 = v27;
  qword_26728 = 0xD00000000000001FLL;
  unk_26730 = v30;
  qword_26738 = 0xD000000000000056;
  qword_26740 = v31;
  unk_26748 = v32;
  qword_26750 = v29;
  unk_26758 = v19;
  strcpy(&qword_26760, "whatSongIsThis");
  HIBYTE(qword_26768) = -18;
  unk_26770 = 0xD000000000000010;
  qword_26778 = v28;
  word_26780 = 269;
  xmmword_26788 = 0u;
  unk_26798 = 0u;
  qword_267A8 = v12;
  unk_267B0 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_267B8 = 0;
  qword_267E8 = &_swiftEmptyArrayStorage;
  unk_267F0 = &_swiftEmptyArrayStorage;
}

uint64_t sub_19FCC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_19FE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1A020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1A068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioSuggestion.ParameterName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioSuggestion.ParameterName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A240()
{
  result = qword_24D30;
  if (!qword_24D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24D30);
  }

  return result;
}

unint64_t sub_1A294(uint64_t a1, void *a2)
{
  sub_1BA54(28);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_1B914(v5);
  return 0xD00000000000001ALL;
}

size_t sub_1A314(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3BC(a1, a2, a3, *v3, &qword_24BD0, &unk_1C9D0, &type metadata accessor for DeviceType);
  *v3 = result;
  return result;
}

size_t sub_1A358(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3BC(a1, a2, a3, *v3, &qword_24BD8, &unk_1CE10, &type metadata accessor for Locale);
  *v3 = result;
  return result;
}

char *sub_1A39C(char *a1, int64_t a2, char a3)
{
  result = sub_1A598(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A3BC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_3578(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1A598(char *result, int64_t a2, char a3, char *a4)
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
    sub_3578(&qword_24D38, &unk_1CDD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A6C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_3578(&unk_24DB0, &qword_1CEE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1A7B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_3578(&qword_24DA8, &qword_1CEE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_1A8A8()
{
  sub_3578(&qword_24D38, &unk_1CDD8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CC20;
  if (qword_24470 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_25C98, v0 + 32);
  if (qword_24478 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_25D68, v0 + 240);
  if (qword_24480 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_25E38, v0 + 448);
  if (qword_24488 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_25F08, v0 + 656);
  if (qword_24490 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_25FD8, v0 + 864);
  if (qword_24498 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_260A8, v0 + 1072);
  if (qword_244C0 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_264B8, v0 + 1280);
  if (qword_244C8 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26588, v0 + 1488);
  if (qword_244D0 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26658, v0 + 1696);
  if (qword_244D8 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26728, v0 + 1904);
  if (qword_244A0 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26178, v0 + 2112);
  if (qword_244A8 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26248, v0 + 2320);
  if (qword_244B0 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26318, v0 + 2528);
  if (qword_244B8 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_263E8, v0 + 2736);
  return v0;
}

uint64_t sub_1AC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_3578(&qword_24670, &qword_1C100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ACE8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAB4() & 1;
  }
}

uint64_t sub_1AD40(uint64_t a1)
{
  result = sub_1A8A8();
  v2 = result;
  v12 = *(result + 16);
  if (v12)
  {
    v3 = 0;
    v4 = &_swiftEmptyArrayStorage;
    v5 = result + 32;
    while (v3 < *(v2 + 16))
    {
      sub_34C0(v5, v26);
      if (!v27)
      {
        goto LABEL_3;
      }

      sub_3578(&qword_24D80, &qword_1CE20);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1BF10;
      *(v6 + 32) = a1;

      sub_3578(&qword_24D88, &qword_1CE28);
      sub_1AFC0();
      sub_1B024(&qword_24D98, type metadata accessor for INMediaItemType);
      v7 = sub_1B974();

      if (v7)
      {
        v23 = v30;
        v24 = v31;
        v25 = v32;
        v19 = v26[6];
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v15 = v26[2];
        v16 = v26[3];
        v17 = v26[4];
        v18 = v26[5];
        v13 = v26[0];
        v14 = v26[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        v33 = v4;
        if ((result & 1) == 0)
        {
          result = sub_1A39C(0, v4[2] + 1, 1);
          v4 = v33;
        }

        v9 = v4[2];
        v8 = v4[3];
        if (v9 >= v8 >> 1)
        {
          result = sub_1A39C((v8 > 1), v9 + 1, 1);
          v4 = v33;
        }

        v4[2] = v9 + 1;
        v10 = &v4[26 * v9];
        v10[2] = v13;
        v10[5] = v16;
        v10[6] = v17;
        v10[3] = v14;
        v10[4] = v15;
        v10[9] = v20;
        v10[10] = v21;
        v10[7] = v18;
        v10[8] = v19;
        v10[13] = v24;
        v10[14] = v25;
        v10[11] = v22;
        v10[12] = v23;
      }

      else
      {
LABEL_3:
        result = sub_3524(v26);
      }

      ++v3;
      v5 += 208;
      if (v12 == v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v4;
  }

  return result;
}

unint64_t sub_1AFC0()
{
  result = qword_24D90;
  if (!qword_24D90)
  {
    sub_8120(&qword_24D88, &qword_1CE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24D90);
  }

  return result;
}

uint64_t sub_1B024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B06C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_21040;
  v6._object = a2;
  v4 = sub_1BAA4(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B0B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_211B0;
  v6._object = a2;
  v4 = sub_1BAA4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for AudioSuggestion.SuggestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioSuggestion.SuggestionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B258()
{
  result = qword_24DA0;
  if (!qword_24DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24DA0);
  }

  return result;
}