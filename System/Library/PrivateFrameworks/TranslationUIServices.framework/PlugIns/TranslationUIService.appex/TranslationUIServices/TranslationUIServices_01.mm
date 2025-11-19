uint64_t sub_10001C280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = sub_10004FDB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v44 - v12;
  sub_100050808();
  v14 = sub_100050C38();
  v16 = v15;
  v18 = v17;
  sub_100050E78();
  v19 = sub_100050BE8();
  v48 = v20;
  v49 = v19;
  v47 = v21;
  v50 = v22;

  sub_10000A514(v14, v16, v18 & 1);

  LODWORD(v16) = *(type metadata accessor for DownloadSelectionView_iOS(0) + 24);
  sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  sub_100050F18();
  if ((*(v4 + 48))(v13, 1, v3))
  {
    sub_100004444(v13, &qword_10006A2A0, &qword_1000528E0);
  }

  else
  {
    (*(v4 + 16))(v9, v13, v3);
    sub_100004444(v13, &qword_10006A2A0, &qword_1000528E0);
    v27 = v45;
    sub_10004FDA8();
    v28 = sub_10004FD48();
    v30 = v29;
    v31 = *(v4 + 8);
    v31(v27, v3);
    v31(v9, v3);
    if (v30)
    {
      v51 = v28;
      v52 = v30;
      sub_100010600();

      v32 = sub_100050C48();
      v34 = v33;
      v36 = v35;
      sub_100050E28();
      v23 = sub_100050BE8();
      v24 = v37;
      LODWORD(v46) = v38;
      v26 = v39;

      sub_10000A514(v32, v34, v36 & 1);

      v25 = v46 & 1;
      goto LABEL_6;
    }
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
LABEL_6:
  v40 = v47 & 1;
  LOBYTE(v51) = v47 & 1;
  v53 = 1;
  v42 = v48;
  v41 = v49;
  *a2 = v49;
  *(a2 + 8) = v42;
  *(a2 + 16) = v40;
  *(a2 + 24) = v50;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = v25;
  *(a2 + 72) = v26;
  sub_10001F400(v41, v42, v40);

  sub_10001F410(v23, v24, v25, v26);
  sub_10001F454(v23, v24, v25, v26);
  sub_10000A514(v41, v42, v40);
}

uint64_t sub_10001C680()
{
  v1 = v0;
  v2 = sub_1000510A8();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000510C8();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DownloadSelectionView_iOS(0);
  v33 = *(v10 - 1);
  v11 = *(v33 + 64);
  __chkstk_darwin(v10);
  v12 = [objc_opt_self() mainBundle];
  v31._countAndFlagsBits = 0xE000000000000000;
  v45._countAndFlagsBits = 0x54414C534E415254;
  v45._object = 0xEC0000004F545F45;
  v46.value._countAndFlagsBits = 0;
  v46.value._object = 0;
  v13.super.isa = v12;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v14 = sub_10004FC68(v45, v46, v13, v47, v31);
  v16 = v15;

  v17 = v1 + v10[12];
  v18 = *v17;
  v19 = *(v17 + 16);
  aBlock = v18;
  v39 = v19;
  v43 = v14;
  v44 = v16;
  sub_1000035C4(&qword_10006AE68, &qword_1000538C8);
  sub_100050F28();
  aBlock = *(v1 + v10[13]);
  v43 = 1;
  sub_1000035C4(&qword_10006B080, &qword_100053A18);
  sub_100050F28();
  v20 = (v1 + v10[14]);
  if (*v20)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000502F8();

    if (aBlock)
    {
      sub_10001F498();
      v21 = sub_1000513E8();
      sub_10001DF1C(v1, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = (*(v33 + 80) + 16) & ~*(v33 + 80);
      v23 = swift_allocObject();
      sub_10001E280(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
      v41 = sub_10001F6C0;
      v42 = v23;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v39 = sub_10004E228;
      v40 = &unk_100066B48;
      v24 = _Block_copy(&aBlock);

      sub_1000510B8();
      *&aBlock = &_swiftEmptyArrayStorage;
      sub_10001E44C(&qword_10006B0C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000035C4(&qword_10006B0C8, &qword_100055880);
      sub_1000044E8(&qword_10006B0D0, &qword_10006B0C8, &qword_100055880);
      v25 = v37;
      sub_100051528();
      sub_1000513F8();
      _Block_release(v24);

      (*(v36 + 8))(v5, v25);
      return (*(v34 + 8))(v9, v35);
    }

    else
    {
      v27 = v1 + v10[10];
      v28 = *v27;
      v29 = *(v27 + 8);
      LOBYTE(aBlock) = v28;
      *(&aBlock + 1) = v29;
      LOBYTE(v43) = 1;
      sub_1000035C4(&qword_10006B018, &qword_100053990);
      return sub_100050F28();
    }
  }

  else
  {
    v30 = v20[1];
    type metadata accessor for TranslationContext();
    sub_10001E44C(&qword_10006A348, type metadata accessor for TranslationContext);
    result = sub_100050548();
    __break(1u);
  }

  return result;
}

double sub_10001CBEC@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100050798();
  v18 = 1;
  a2(&v12, a1);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_10000A00C(&v19, &v11, &qword_10006B0B0, &unk_100053A70);
  sub_100004444(v24, &qword_10006B0B0, &unk_100053A70);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a3 + 17) = *v17;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v17[79];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_10001CCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = sub_10004FDB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v44 - v12;
  sub_100050808();
  v14 = sub_100050C38();
  v16 = v15;
  v18 = v17;
  sub_100050E78();
  v19 = sub_100050BE8();
  v48 = v20;
  v49 = v19;
  v47 = v21;
  v50 = v22;

  sub_10000A514(v14, v16, v18 & 1);

  LODWORD(v16) = *(type metadata accessor for DownloadSelectionView_iOS(0) + 28);
  sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  sub_100050F18();
  if ((*(v4 + 48))(v13, 1, v3))
  {
    sub_100004444(v13, &qword_10006A2A0, &qword_1000528E0);
  }

  else
  {
    (*(v4 + 16))(v9, v13, v3);
    sub_100004444(v13, &qword_10006A2A0, &qword_1000528E0);
    v27 = v45;
    sub_10004FDA8();
    v28 = sub_10004FD48();
    v30 = v29;
    v31 = *(v4 + 8);
    v31(v27, v3);
    v31(v9, v3);
    if (v30)
    {
      v51 = v28;
      v52 = v30;
      sub_100010600();

      v32 = sub_100050C48();
      v34 = v33;
      v36 = v35;
      sub_100050E28();
      v23 = sub_100050BE8();
      v24 = v37;
      LODWORD(v46) = v38;
      v26 = v39;

      sub_10000A514(v32, v34, v36 & 1);

      v25 = v46 & 1;
      goto LABEL_6;
    }
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
LABEL_6:
  v40 = v47 & 1;
  LOBYTE(v51) = v47 & 1;
  v53 = 1;
  v42 = v48;
  v41 = v49;
  *a2 = v49;
  *(a2 + 8) = v42;
  *(a2 + 16) = v40;
  *(a2 + 24) = v50;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = v25;
  *(a2 + 72) = v26;
  sub_10001F400(v41, v42, v40);

  sub_10001F410(v23, v24, v25, v26);
  sub_10001F454(v23, v24, v25, v26);
  sub_10000A514(v41, v42, v40);
}

uint64_t sub_10001D0EC@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = type metadata accessor for DownloadSelectionView_iOS(0);
  v3 = v2 - 8;
  v48 = *(v2 - 8);
  v4 = *(v48 + 64);
  __chkstk_darwin(v2);
  v49 = v5;
  v50 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100050078();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000508C8();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000035C4(&qword_10006B028, &qword_1000539A0);
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = sub_1000035C4(&qword_10006B020, &qword_100053998);
  v46 = *(v17 - 8);
  v47 = v17;
  v18 = *(v46 + 64);
  __chkstk_darwin(v17);
  v20 = &v40 - v19;
  v52 = v1;
  sub_1000035C4(&qword_10006B060, &qword_1000539B8);
  v21 = sub_10000372C(&qword_10006B068, &qword_1000539C0);
  v22 = sub_10004FF28();
  v23 = sub_10001E44C(&qword_10006B070, &type metadata accessor for LanguagesView);
  v53 = v22;
  v54 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v21;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100050B78();
  sub_1000508B8();
  v25 = sub_1000044E8(&qword_10006B030, &qword_10006B028, &qword_1000539A0);
  v45 = v20;
  sub_100050DF8();
  v26 = v9;
  (*(v44 + 8))(v12, v9);
  v27 = v40;
  v28 = v13;
  (*(v41 + 8))(v16, v13);
  v29 = v43;
  v30 = *(v43 + 104);
  v31 = v42;
  v44 = v6;
  v30();
  v32 = (v27 + *(v3 + 64));
  if (*v32)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000502F8();

    v33 = v50;
    sub_10001DF1C(v27, v50);
    v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v35 = swift_allocObject();
    sub_10001E280(v33, v35 + v34);
    v53 = v28;
    v54 = v26;
    v55 = v25;
    v56 = &protocol witness table for InsetGroupedListStyle;
    swift_getOpaqueTypeConformance2();
    v36 = v47;
    v37 = v45;
    sub_100050C58();

    (*(v29 + 8))(v31, v44);
    return (*(v46 + 8))(v37, v36);
  }

  else
  {
    v39 = v32[1];
    type metadata accessor for TranslationContext();
    sub_10001E44C(&qword_10006A348, type metadata accessor for TranslationContext);
    result = sub_100050548();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001D70C()
{
  sub_1000035C4(&qword_10006AF80, &qword_100053940);
  sub_10000372C(&qword_10006B020, &qword_100053998);
  sub_10000372C(&qword_10006B028, &qword_1000539A0);
  sub_1000508C8();
  sub_1000044E8(&qword_10006B030, &qword_10006B028, &qword_1000539A0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_100050478();
}

uint64_t sub_10001D850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_100050778();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000035C4(&qword_10006B078, &qword_100053A10);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v9);
  v10 = sub_10004FF28();
  v11 = *(v10 - 8);
  v36 = v10;
  v37 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000035C4(&qword_10006B068, &qword_1000539C0);
  v16 = *(v15 - 8);
  v40 = v15;
  v41 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v35 = &v34 - v18;
  v19 = type metadata accessor for DownloadSelectionView_iOS(0);
  v20 = v19[6];
  sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  sub_100050F38();
  v21 = a1 + v19[7];
  sub_100050F38();
  v44 = *(a1 + v19[13]);
  sub_1000035C4(&qword_10006B080, &qword_100053A18);
  sub_100050F38();
  v43 = *(a1 + v19[8]);
  sub_1000035C4(&qword_10006B088, &qword_100053A20);
  sub_100050F18();
  sub_10004FF18();
  v23 = v38;
  v22 = v39;
  (*(v38 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v39);
  v24 = sub_10001E44C(&qword_10006B070, &type metadata accessor for LanguagesView);
  v26 = v35;
  v25 = v36;
  sub_100050DB8();
  (*(v23 + 8))(v6, v22);
  v27 = v25;
  (*(v37 + 8))(v14, v25);
  sub_100050808();
  v28 = sub_100050C38();
  v30 = v29;
  LOBYTE(v25) = v31;
  *&v43 = v27;
  *(&v43 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v32 = v40;
  sub_100050D38();
  sub_10000A514(v28, v30, v25 & 1);

  return (*(v41 + 8))(v26, v32);
}

uint64_t sub_10001DCD8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DownloadSelectionView_iOS(0) + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000035C4(&qword_10006B018, &qword_100053990);
  return sub_100050F28();
}

uint64_t sub_10001DD48(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DownloadSelectionView_iOS(0) + 44));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000035C4(&qword_10006B018, &qword_100053990);
  return sub_100050F28();
}

uint64_t sub_10001DDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004FDB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *(v6 + 16);
  v13(&v18 - v11, v2, v5);
  v13(v10, v2 + *(a1 + 20), v5);
  v14 = (v2 + *(a1 + 24));
  v15 = *v14;
  v16 = v14[1];

  return sub_10001939C(v12, v10, v15, v16, a2);
}

uint64_t sub_10001DF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadSelectionView_iOS(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DF80()
{
  v1 = sub_10004FDB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 32) & ~v3;
  v37 = v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = type metadata accessor for DownloadSelectionView_iOS(0);
  v36 = *(*(v7 - 1) + 80);
  v38 = *(*(v7 - 1) + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 8);
  v9(v0 + v5, v1);
  v9(v0 + v6, v1);
  v39 = (v6 + v4 + v36) & ~v36;
  v40 = v0;
  v10 = v0 + v39;
  v9(v0 + v39, v1);
  v9(v0 + v39 + v7[5], v1);
  v11 = v0 + v39 + v7[6];
  v12 = *(v2 + 48);
  if (!v12(v11, 1, v1))
  {
    v9(v11, v1);
  }

  v13 = sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  v14 = *(v11 + *(v13 + 28));

  v15 = v10 + v7[7];
  if (!v12(v15, 1, v1))
  {
    v9(v15, v1);
  }

  v16 = *(v15 + *(v13 + 28));

  v17 = (v10 + v7[8]);
  v18 = *v17;

  v19 = v17[1];

  v20 = v10 + v7[9];
  v21 = *(v20 + 8);

  v22 = *(v20 + 16);

  v23 = *(v10 + v7[10] + 8);

  v24 = *(v10 + v7[11] + 8);

  v25 = v10 + v7[12];
  v26 = *(v25 + 8);

  v27 = *(v25 + 16);

  v28 = *(v10 + v7[13] + 8);

  v29 = *(v10 + v7[14]);

  v30 = (v10 + v7[15]);
  v31 = *v30;
  v32 = v30[1];
  v33 = *(v30 + 16);
  sub_10001E278();
  v34 = *(v10 + v7[16] + 8);

  return _swift_deallocObject(v40, v39 + v38, v37 | v36 | 7);
}

uint64_t sub_10001E280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadSelectionView_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E2E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004FDB8() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(type metadata accessor for DownloadSelectionView_iOS(0) - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000DA74;

  return sub_100019BF4(a1, v12, v13, v1 + v7, v1 + v9, v1 + v11);
}

uint64_t sub_10001E44C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001E4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004FDB8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10001E5D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10004FDB8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10001E6F0()
{
  sub_10004FDB8();
  if (v0 <= 0x3F)
  {
    sub_10001E888(319, &qword_10006AEE0, &qword_10006A2A0, &qword_1000528E0);
    if (v1 <= 0x3F)
    {
      sub_10001E888(319, &qword_10006AEE8, &qword_10006AE48, &qword_100053898);
      if (v2 <= 0x3F)
      {
        sub_10001E8DC(319, &qword_10006AEF0);
        if (v3 <= 0x3F)
        {
          sub_10001E8DC(319, &qword_10006AEF8);
          if (v4 <= 0x3F)
          {
            sub_10001E8DC(319, &qword_10006AF00);
            if (v5 <= 0x3F)
            {
              sub_10001E928();
              if (v6 <= 0x3F)
              {
                sub_10001E9BC();
                if (v7 <= 0x3F)
                {
                  sub_10000EA14();
                  if (v8 <= 0x3F)
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

void sub_10001E888(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000372C(a3, a4);
    v5 = sub_100050F48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10001E8DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_100050F48();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10001E928()
{
  if (!qword_10006AF08)
  {
    type metadata accessor for TranslationContext();
    sub_10001E44C(&qword_10006A348, type metadata accessor for TranslationContext);
    v0 = sub_100050568();
    if (!v1)
    {
      atomic_store(v0, &qword_10006AF08);
    }
  }
}

void sub_10001E9BC()
{
  if (!qword_10006AF10)
  {
    sub_10004FF88();
    sub_10001E44C(&unk_10006AF18, &type metadata accessor for LanguagesService);
    v0 = sub_1000503C8();
    if (!v1)
    {
      atomic_store(v0, &qword_10006AF10);
    }
  }
}

unint64_t sub_10001EABC()
{
  result = qword_10006AFA0;
  if (!qword_10006AFA0)
  {
    sub_10000372C(&qword_10006AF98, &qword_100053958);
    sub_10001EB88();
    sub_1000044E8(&qword_10006AFD8, &qword_10006AFE0, &qword_100053978);
    sub_10001ECC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AFA0);
  }

  return result;
}

unint64_t sub_10001EB88()
{
  result = qword_10006AFA8;
  if (!qword_10006AFA8)
  {
    sub_10000372C(&qword_10006AFB0, &qword_100053960);
    sub_10001EC40();
    sub_1000044E8(&qword_10006AFC8, &qword_10006AFD0, &qword_100053970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AFA8);
  }

  return result;
}

unint64_t sub_10001EC40()
{
  result = qword_10006AFB8;
  if (!qword_10006AFB8)
  {
    sub_10000372C(&qword_10006AFC0, &qword_100053968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AFB8);
  }

  return result;
}

unint64_t sub_10001ECC4()
{
  result = qword_10006AFE8;
  if (!qword_10006AFE8)
  {
    sub_10000372C(&qword_10006AFF0, &qword_100053980);
    sub_10001ED50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AFE8);
  }

  return result;
}

unint64_t sub_10001ED50()
{
  result = qword_10006AFF8;
  if (!qword_10006AFF8)
  {
    sub_10000372C(&qword_10006B000, &qword_100053988);
    sub_10001E44C(&qword_10006B008, &type metadata accessor for GrayCapsuleButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AFF8);
  }

  return result;
}

uint64_t sub_10001EE10()
{
  v0 = *(*(type metadata accessor for DownloadSelectionView_iOS(0) - 8) + 80);

  return sub_10001D70C();
}

unint64_t sub_10001EE80()
{
  result = qword_10006B048;
  if (!qword_10006B048)
  {
    sub_10000372C(&qword_10006AF90, &qword_100053950);
    sub_10000372C(&qword_10006AF88, &qword_100053948);
    sub_1000508C8();
    sub_1000044E8(&qword_10006B010, &qword_10006AF88, &qword_100053948);
    swift_getOpaqueTypeConformance2();
    sub_1000044E8(&qword_10006B050, &qword_10006B038, &qword_1000539A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B048);
  }

  return result;
}

uint64_t sub_10001EFC8(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006AF90, &qword_100053950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001F064()
{
  v1 = type metadata accessor for DownloadSelectionView_iOS(0);
  v2 = *(*(v1 - 1) + 80);
  v32 = *(*(v1 - 1) + 64);
  v33 = (v2 + 16) & ~v2;
  v34 = v0;
  v3 = v0 + v33;
  v4 = sub_10004FDB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v33, v4);
  v6(v0 + v33 + v1[5], v4);
  v7 = v0 + v33 + v1[6];
  v8 = *(v5 + 48);
  if (!v8(v7, 1, v4))
  {
    v6(v7, v4);
  }

  v9 = sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  v10 = *(v7 + *(v9 + 28));

  v11 = v3 + v1[7];
  if (!v8(v11, 1, v4))
  {
    v6(v11, v4);
  }

  v12 = *(v11 + *(v9 + 28));

  v13 = (v3 + v1[8]);
  v14 = *v13;

  v15 = v13[1];

  v16 = v3 + v1[9];
  v17 = *(v16 + 8);

  v18 = *(v16 + 16);

  v19 = *(v3 + v1[10] + 8);

  v20 = *(v3 + v1[11] + 8);

  v21 = v3 + v1[12];
  v22 = *(v21 + 8);

  v23 = *(v21 + 16);

  v24 = *(v3 + v1[13] + 8);

  v25 = *(v3 + v1[14]);

  v26 = (v3 + v1[15]);
  v27 = *v26;
  v28 = v26[1];
  v29 = *(v26 + 16);
  sub_10001E278();
  v30 = *(v3 + v1[16] + 8);

  return _swift_deallocObject(v34, v33 + v32, v2 | 7);
}

uint64_t sub_10001F400(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10001F410(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10001F400(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001F454(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000A514(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10001F498()
{
  result = qword_10006B0B8;
  if (!qword_10006B0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006B0B8);
  }

  return result;
}

uint64_t sub_10001F4E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F56C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DownloadSelectionView_iOS(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10001F5E0()
{
  sub_10000372C(&qword_10006AF90, &qword_100053950);
  sub_10000372C(&qword_10006B040, &qword_1000539B0);
  sub_10001EE80();
  sub_1000044E8(&qword_10006B058, &qword_10006B040, &qword_1000539B0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001F6E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_10001F728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10001F790@<Q0>(uint64_t a1@<X8>)
{
  sub_100050808();
  v2 = sub_100050C38();
  v4 = v3;
  v6 = v5;
  sub_100050AF8();
  v7 = sub_100050C18();
  v9 = v8;
  v11 = v10;

  sub_10000A514(v2, v4, v6 & 1);

  *&v32 = sub_100050E88();
  v12 = sub_100050BF8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10000A514(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v7) = v16 & 1;
  LOBYTE(v32) = v16 & 1;
  v20 = sub_100050A88();
  sub_100050368();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_100051078();
  sub_100050538();
  *&v31[55] = v35;
  *&v31[71] = v36;
  *&v31[87] = v37;
  *&v31[103] = v38;
  *&v31[7] = v32;
  *&v31[23] = v33;
  *&v31[39] = v34;
  v29 = sub_100050A88();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v7;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 42) = 1;
  *(a1 + 48) = v20;
  *(a1 + 56) = v22;
  *(a1 + 64) = v24;
  *(a1 + 72) = v26;
  *(a1 + 80) = v28;
  *(a1 + 88) = 0;
  *(a1 + 137) = *&v31[48];
  *(a1 + 121) = *&v31[32];
  *(a1 + 105) = *&v31[16];
  *(a1 + 89) = *v31;
  result = *&v31[64];
  *(a1 + 200) = *(&v38 + 1);
  *(a1 + 185) = *&v31[96];
  *(a1 + 169) = *&v31[80];
  *(a1 + 153) = *&v31[64];
  *(a1 + 208) = v29;
  return result;
}

unint64_t sub_10001FA24()
{
  result = qword_10006B0D8;
  if (!qword_10006B0D8)
  {
    sub_10000372C(&qword_10006B0E0, &qword_100053B30);
    sub_10001FAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B0D8);
  }

  return result;
}

unint64_t sub_10001FAB0()
{
  result = qword_10006B0E8;
  if (!qword_10006B0E8)
  {
    sub_10000372C(&qword_10006B0F0, &qword_100053B38);
    sub_10001FB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B0E8);
  }

  return result;
}

unint64_t sub_10001FB3C()
{
  result = qword_10006B0F8;
  if (!qword_10006B0F8)
  {
    sub_10000372C(&qword_10006B100, &qword_100053B40);
    sub_10001FBC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B0F8);
  }

  return result;
}

unint64_t sub_10001FBC8()
{
  result = qword_10006B108;
  if (!qword_10006B108)
  {
    sub_10000372C(&qword_10006B110, &qword_100053B48);
    sub_10001FC54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B108);
  }

  return result;
}

unint64_t sub_10001FC54()
{
  result = qword_10006B118;
  if (!qword_10006B118)
  {
    sub_10000372C(&qword_10006B120, &qword_100053B50);
    sub_10001FCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B118);
  }

  return result;
}

unint64_t sub_10001FCE0()
{
  result = qword_10006B128;
  if (!qword_10006B128)
  {
    sub_10000372C(&unk_10006B130, &qword_100053B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B128);
  }

  return result;
}

uint64_t sub_10001FD48()
{
  sub_100009B40();
  sub_100050758();
  return v1;
}

uint64_t sub_10001FD84()
{
  sub_100009C70();
  sub_100050758();
  return v1;
}

void (*EnvironmentValues._expandSheet.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_100009C70();
  sub_100050758();
  *v4 = v4[1];
  return sub_10001FE94;
}

void sub_10001FE94(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v5 = v2[4];
  v6 = v2[5];
  v2[3] = v3;
  if (a2)
  {

    sub_100050768();
    v7 = v2[1];
  }

  else
  {
    sub_100050768();
  }

  free(v2);
}

id sub_10001FF70()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for SearchUIFirstUseView.FirstTimeExperienceViewController();
  result = objc_msgSendSuper2(&v13, "viewWillLayoutSubviews");
  v2 = &v0[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
  if (*&v0[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize + 8])
  {
    v3 = *v2;
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);

    result = [v0 view];
    if (result)
    {
      v6 = result;
      [result systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      v8 = v7;
      v10 = v9;

      sub_1000035C4(&qword_10006B200, &qword_100053CC8);
      sub_100050F68();
      if (v8 != v11 || v10 != v12)
      {
        sub_100050F78();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1000200F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = &v7[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  if (a1)
  {
    v12.super.isa = sub_100051238().super.isa;

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12.super.isa = 0;
    if (a3)
    {
LABEL_3:
      v13 = sub_100051128();

      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (a7)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v13 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = sub_100051128();

  if (a7)
  {
LABEL_5:
    v15 = sub_100051128();

    goto LABEL_10;
  }

LABEL_9:
  v15 = 0;
LABEL_10:
  v18.receiver = v7;
  v18.super_class = type metadata accessor for SearchUIFirstUseView.FirstTimeExperienceViewController();
  v16 = objc_msgSendSuper2(&v18, "initWithDomains:explanationText:learnMoreText:continueButtonTitle:", v12.super.isa, v13, v14, v15);

  if (v16)
  {
  }

  return v16;
}

id sub_10002033C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = &v7[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  if (a3)
  {
    v12 = sub_100051128();

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = sub_100051128();

  if (a7)
  {
LABEL_4:
    v14 = sub_100051128();

    goto LABEL_8;
  }

LABEL_7:
  v14 = 0;
LABEL_8:
  v17.receiver = v7;
  v17.super_class = type metadata accessor for SearchUIFirstUseView.FirstTimeExperienceViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithSupportedDomains:explanationText:learnMoreText:continueButtonTitle:", a1, v12, v13, v14);

  if (v15)
  {
  }

  return v15;
}

id sub_100020514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = &v8[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  if (a4)
  {
    v14 = sub_100051128();

    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v14 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_100051128();

  if (a8)
  {
LABEL_4:
    v16 = sub_100051128();

    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  v19.receiver = v8;
  v19.super_class = type metadata accessor for SearchUIFirstUseView.FirstTimeExperienceViewController();
  v17 = objc_msgSendSuper2(&v19, "initWithStyle:supportedDomains:explanationText:learnMoreText:continueButtonTitle:", a1, a2, v14, v15, v16);

  if (v17)
  {
  }

  return v17;
}

id sub_100020998(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100020A08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 sub_100020A4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void sub_100020A98()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_1000035C4(&unk_10006B260, &qword_100053E58);
  sub_100050A48();
  v3 = &v6[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView11Coordinator_continueAction];
  v4 = *&v6[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView11Coordinator_continueAction];
  v5 = *&v6[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView11Coordinator_continueAction + 8];
  *v3 = v2;
  *(v3 + 1) = v1;

  sub_100009F24(v4);
}

uint64_t sub_100020B24@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = [objc_allocWithZone(type metadata accessor for SearchUIFirstUseView.Coordinator()) init];
  v6 = &v5[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView11Coordinator_continueAction];
  v7 = *&v5[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView11Coordinator_continueAction];
  v8 = *&v5[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView11Coordinator_continueAction + 8];
  *v6 = v4;
  *(v6 + 1) = v3;

  result = sub_100009F24(v7);
  *a1 = v5;
  return result;
}

uint64_t sub_100020B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000213EC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100020C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000213EC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100020C64()
{
  sub_1000213EC();
  sub_100050A28();
  __break(1u);
}

__n128 sub_100020C8C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *(a1 + 3);
  v24 = a1[5];
  v19 = *(a1 + 3);
  *&v20 = a1[5];
  sub_1000035C4(&unk_10006B230, &qword_100053D78);
  sub_100050F38();
  v4 = v11;
  v5 = v13;
  v6 = a1[1];
  v22 = *a1;
  v7 = swift_allocObject();
  v8 = *(a1 + 1);
  v7[1] = *a1;
  v7[2] = v8;
  v7[3] = *(a1 + 2);
  sub_1000211BC(&v22, &v19);

  sub_100021218(&v23, &v19);
  sub_100050F18();
  v12 = v23;
  *&v13 = v24;
  sub_100050F18();
  sub_100051078();
  sub_1000503F8();
  sub_100051078();
  sub_100050538();
  *a2 = v4;
  *(a2 + 16) = v5;
  v9 = v20;
  *(a2 + 48) = v19;
  *(a2 + 64) = v9;
  result = v21;
  *(a2 + 144) = v15;
  *(a2 + 160) = v16;
  *(a2 + 176) = v17;
  *(a2 + 192) = v18;
  *(a2 + 80) = result;
  *(a2 + 96) = v12;
  *(a2 + 32) = sub_1000211B4;
  *(a2 + 40) = v7;
  *(a2 + 112) = v13;
  *(a2 + 128) = v14;
  return result;
}

uint64_t sub_100020E6C(__int128 *a1)
{
  v2 = sub_100051128();
  sub_10004DA5C();
  sub_100021288();
  isa = sub_1000510D8().super.isa;

  AnalyticsSendEvent();

  v5 = *a1;
  v6 = *(a1 + 16);
  sub_1000035C4(&qword_10006B240, &qword_100053D80);
  return sub_100050F78();
}

uint64_t sub_100020F5C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_100050A68();
  sub_1000035C4(&qword_10006B208, &qword_100053D68);
  sub_100021000();
  return sub_1000503A8();
}

unint64_t sub_100021000()
{
  result = qword_10006B210;
  if (!qword_10006B210)
  {
    sub_10000372C(&qword_10006B208, &qword_100053D68);
    sub_10002108C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B210);
  }

  return result;
}

unint64_t sub_10002108C()
{
  result = qword_10006B218;
  if (!qword_10006B218)
  {
    sub_10000372C(&qword_10006B220, &qword_100053D70);
    sub_100021118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B218);
  }

  return result;
}

unint64_t sub_100021118()
{
  result = qword_10006B228;
  if (!qword_10006B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B228);
  }

  return result;
}

uint64_t sub_10002116C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100021218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&unk_10006B230, &qword_100053D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100021288()
{
  result = qword_10006A480;
  if (!qword_10006A480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006A480);
  }

  return result;
}

uint64_t sub_1000212D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100021324(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100021384()
{
  result = qword_10006B248;
  if (!qword_10006B248)
  {
    sub_10000372C(&qword_10006B250, &qword_100053D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B248);
  }

  return result;
}

unint64_t sub_1000213EC()
{
  result = qword_10006B258;
  if (!qword_10006B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B258);
  }

  return result;
}

uint64_t sub_100021440(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000511B8();
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v33._countAndFlagsBits = 0xE000000000000000;
  v39._countAndFlagsBits = 0xD000000000000016;
  v39._object = 0x800000010005F260;
  v42.value._countAndFlagsBits = 0;
  v42.value._object = 0;
  v12.super.isa = v11;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_10004FC68(v39, v42, v12, v45, v33);

  sub_1000035C4(&qword_10006A9E8, &unk_100053E60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000530B0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_1000105AC();
  *(v13 + 32) = v7;
  *(v13 + 40) = v9;

  sub_100051168();

  sub_1000035C4(&qword_10006A7A8, &qword_100052EE8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000530B0;
  *(v14 + 32) = sub_100051158();
  *(v14 + 40) = v15;
  v16 = [v10 mainBundle];
  v34._countAndFlagsBits = 0xE000000000000000;
  v40._countAndFlagsBits = 0x5F59434156495250;
  v40._object = 0xEE004E4F54545542;
  v43.value._countAndFlagsBits = 0;
  v43.value._object = 0;
  v17.super.isa = v16;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_10004FC68(v40, v43, v17, v46, v34);

  v18 = [v10 mainBundle];
  v35._countAndFlagsBits = 0xE000000000000000;
  v41._object = 0x800000010005EEB0;
  v41._countAndFlagsBits = 0xD000000000000012;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v19.super.isa = v18;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  sub_10004FC68(v41, v44, v19, v47, v35);

  v20 = objc_allocWithZone(type metadata accessor for SearchUIFirstUseView.FirstTimeExperienceViewController());
  isa = sub_100051238().super.isa;

  v22 = sub_100051128();
  v23 = sub_100051128();

  v24 = sub_100051128();

  v25 = [v20 initWithDomains:isa explanationText:v22 learnMoreText:v23 continueButtonTitle:v24];

  if (v25)
  {

    v26 = v25;
    sub_1000035C4(&unk_10006B260, &qword_100053E58);
    sub_100050A48();
    [v26 setDelegate:v38];

    v27 = &v26[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
    v28 = *&v26[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
    v29 = *&v26[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize + 8];
    v30 = *&v26[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize + 16];
    v31 = *&v26[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize + 24];
    *v27 = a4;
    *(v27 + 1) = a5;
    *(v27 + 2) = a1;
    *(v27 + 3) = a2;

    sub_100020A08(v28, v29);

    return v26;
  }

  else
  {
    result = sub_1000515F8();
    __break(1u);
  }

  return result;
}

uint64_t sub_100021840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100021920(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for LanguageText()
{
  result = qword_10006B2D0;
  if (!qword_10006B2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100021A34()
{
  sub_100021B78();
  if (v0 <= 0x3F)
  {
    sub_100021C34(319, &qword_10006B2E8, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100021C34(319, &qword_10006AEF8, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100021BD0();
        if (v3 <= 0x3F)
        {
          sub_100021C34(319, &qword_10006ACB0, &type metadata for ExpandSheetAction, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100021B78()
{
  if (!qword_10006B2E0)
  {
    sub_10004FDB8();
    v0 = sub_1000514E8();
    if (!v1)
    {
      atomic_store(v0, &qword_10006B2E0);
    }
  }
}

void sub_100021BD0()
{
  if (!qword_10006B2F0)
  {
    sub_10000372C(&qword_10006B240, &qword_100053D80);
    v0 = sub_1000514E8();
    if (!v1)
    {
      atomic_store(v0, &qword_10006B2F0);
    }
  }
}

void sub_100021C34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_100021CA0@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1000035C4(&qword_10006B338, &qword_100053EE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v12 - v5;
  *v6 = sub_100050898();
  *(v6 + 1) = 0x4010000000000000;
  v6[16] = 0;
  v7 = sub_1000035C4(&qword_10006B340, &qword_100053EE8);
  sub_100021DE4(v1, &v6[*(v7 + 44)]);
  sub_100051058();
  sub_100050538();
  sub_100022948(v6, a1);
  v8 = a1 + *(sub_1000035C4(&qword_10006B348, &qword_100053EF0) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_100021DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = type metadata accessor for LanguageText();
  v86 = *(v3 - 1);
  v4 = *(v86 + 64);
  __chkstk_darwin(v3);
  v87 = v5;
  v88 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v84 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v73 - v10;
  v91 = sub_1000035C4(&qword_10006B350, &qword_100053EF8);
  v11 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v89 = &v73 - v12;
  v76 = sub_100050518();
  v75 = *(v76 - 8);
  v13 = *(v75 + 64);
  __chkstk_darwin(v76);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1000035C4(&qword_10006B358, &qword_100053F00);
  v78 = *(v79 - 8);
  v16 = *(v78 + 64);
  __chkstk_darwin(v79);
  v18 = &v73 - v17;
  v90 = sub_1000035C4(&qword_10006B360, &qword_100053F08);
  v19 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v77 = &v73 - v20;
  v83 = sub_10004FEA8();
  v81 = *(v83 - 8);
  v21 = *(v81 + 64);
  __chkstk_darwin(v83);
  v80 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000035C4(&qword_10006B368, &unk_100053F10);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v82 = &v73 - v25;
  v26 = sub_10004FBB8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = (a1 + v3[5]);
  v33 = *v32;
  v34 = v32[1];
  if (v34)
  {
    v79 = v23;
    v95 = v33;
    v96 = v34;

    sub_10004FBA8();
    sub_100010600();
    v78 = sub_1000514F8();
    v77 = v35;
    (*(v27 + 8))(v30, v26);

    v36 = *(v31 + v3[6]);
    v74 = v3;
    if (v36)
    {
      v37 = v31 + v3[9];
      v38 = v84;
      if (*(v37 + 8))
      {
        v39 = *v37;
        v40 = *(v37 + 16);
      }

      else
      {
        v52 = v31 + v3[8];
        v53 = *v52;
        v54 = *(v52 + 8);
        v93 = v53;
        v94 = v54;
        sub_1000035C4(&qword_10006B018, &qword_100053990);
        sub_100050F38();
      }
    }

    else
    {
      v93 = 1;
      sub_100050FA8();
      v38 = v84;
    }

    v55 = v31;
    sub_10000A00C(v31, v38, &qword_10006A2A0, &qword_1000528E0);
    v56 = sub_10004FDB8();
    v57 = *(v56 - 8);
    v58 = *(v57 + 48);
    if (v58(v38, 1, v56) == 1)
    {
      v59 = v85;
      sub_10004FDA8();
      v60 = v58(v38, 1, v56);
      v61 = v59;
      if (v60 != 1)
      {
        sub_100004444(v38, &qword_10006A2A0, &qword_1000528E0);
      }
    }

    else
    {
      v61 = v85;
      (*(v57 + 32))(v85, v38, v56);
    }

    (*(v57 + 56))(v61, 0, 1, v56);
    v62 = v55;
    v63 = v55;
    v64 = v88;
    sub_100022CB0(v63, v88);
    v65 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v66 = swift_allocObject();
    sub_100022E98(v64, v66 + v65);
    v67 = v80;
    sub_10004FEB8();
    v68 = (v62 + v74[7]);
    v69 = *v68;
    v70 = v68[1];
    sub_100022B14(&qword_10006B378, &type metadata accessor for ExpandingText);
    v71 = v82;
    v72 = v83;
    sub_100050D88();
    (*(v81 + 8))(v67, v72);
    sub_10000A00C(v71, v89, &qword_10006B368, &unk_100053F10);
    swift_storeEnumTagMultiPayload();
    sub_100022A28();
    sub_100022B5C();
    sub_1000508A8();
    return sub_100004444(v71, &qword_10006B368, &unk_100053F10);
  }

  else
  {
    sub_100050808();
    v41 = sub_100050C38();
    v43 = v42;
    v95 = v41;
    v96 = v42;
    v45 = v44 & 1;
    v97 = v44 & 1;
    v98 = v46;
    sub_100050508();
    sub_100050DE8();
    (*(v75 + 8))(v15, v76);
    sub_10000A514(v41, v43, v45);

    v47 = v31 + v3[7];
    v48 = *(v47 + 8);
    v95 = *v47;
    v96 = v48;

    v99._countAndFlagsBits = 0x6F686563616C705FLL;
    v99._object = 0xEC0000007265646CLL;
    sub_1000511E8(v99);
    v95 = &type metadata for Text;
    v96 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v49 = v77;
    v50 = v79;
    sub_100050D88();

    (*(v78 + 8))(v18, v50);
    sub_1000229B8(v49, v89);
    swift_storeEnumTagMultiPayload();
    sub_100022A28();
    sub_100022B5C();
    sub_1000508A8();
    return sub_100022C48(v49);
  }
}

uint64_t sub_1000227C4(uint64_t a1)
{
  v2 = sub_100050748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for LanguageText() + 40);
  v9 = *v7;
  v8 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
  }

  else
  {

    sub_100051368();
    v11 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_100018DF8();
    v10 = (*(v3 + 8))(v6, v2);
    v9 = v13;
  }

  v9(v10);
}

uint64_t sub_100022948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006B338, &qword_100053EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000229B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006B360, &qword_100053F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100022A28()
{
  result = qword_10006B370;
  if (!qword_10006B370)
  {
    sub_10000372C(&qword_10006B368, &unk_100053F10);
    sub_100022B14(&qword_10006B378, &type metadata accessor for ExpandingText);
    sub_100022B14(&qword_10006B380, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B370);
  }

  return result;
}

uint64_t sub_100022B14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100022B5C()
{
  result = qword_10006B388;
  if (!qword_10006B388)
  {
    sub_10000372C(&qword_10006B360, &qword_100053F08);
    swift_getOpaqueTypeConformance2();
    sub_100022B14(&qword_10006B380, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B388);
  }

  return result;
}

uint64_t sub_100022C48(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006B360, &qword_100053F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022D14()
{
  v1 = type metadata accessor for LanguageText();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_10004FDB8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = *(v5 + v1[7] + 8);

  v10 = *(v5 + v1[8] + 8);

  v11 = (v5 + v1[9]);
  if (v11[1])
  {
    v12 = *v11;

    v13 = v11[1];
  }

  v14 = (v5 + v1[10]);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  sub_100018DF8();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100022E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022EFC()
{
  v1 = *(type metadata accessor for LanguageText() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000227C4(v2);
}

unint64_t sub_100022F60()
{
  result = qword_10006B390;
  if (!qword_10006B390)
  {
    sub_10000372C(&qword_10006B348, &qword_100053EF0);
    sub_100022FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B390);
  }

  return result;
}

unint64_t sub_100022FEC()
{
  result = qword_10006B398;
  if (!qword_10006B398)
  {
    sub_10000372C(&qword_10006B338, &qword_100053EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B398);
  }

  return result;
}

uint64_t sub_100023064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000035C4(&qword_10006B078, &qword_100053A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100023134(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000035C4(&qword_10006B078, &qword_100053A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LIDResolutionView()
{
  result = qword_10006B3F8;
  if (!qword_10006B3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100023230()
{
  sub_100023430(319, &qword_10006B2E8, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000233D8();
    if (v1 <= 0x3F)
    {
      sub_10000B2B0(319, &qword_10006B410, &qword_10006A2A0, &qword_1000528E0, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_10000B2B0(319, &qword_10006B418, &unk_10006B420, "$J", &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100023430(319, &qword_10006AEF8, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_100023430(319, &qword_10006AF00, &type metadata for Int, &type metadata accessor for State);
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

void sub_1000233D8()
{
  if (!qword_10006B408)
  {
    sub_10004FDB8();
    v0 = sub_1000512A8();
    if (!v1)
    {
      atomic_store(v0, &qword_10006B408);
    }
  }
}

void sub_100023430(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10002349C()
{
  v1 = sub_10004FDB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v39 - v8;
  __chkstk_darwin(v7);
  v11 = v39 - v10;
  if (!v0[1])
  {
    return 0;
  }

  v12 = *v0;

  sub_10004FD18();
  (*(v2 + 32))(v11, v9, v1);
  if (sub_10004FD28() == 6581877 && v13 == 0xE300000000000000)
  {

    goto LABEL_15;
  }

  v15 = sub_100051658();

  if (v15)
  {
LABEL_15:
    (*(v2 + 8))(v11, v1);
    return 0;
  }

  if (sub_10004FD28() == 0x4B485F687ALL && v16 == 0xE500000000000000)
  {

    goto LABEL_19;
  }

  v18 = sub_100051658();

  if (v18)
  {
LABEL_19:
    sub_100050808();
    v32 = sub_100050C38();
    v34 = v33;
    v36 = v35;
    sub_100050AF8();
    sub_100050B08();

    v37 = sub_100050C18();
    v40 = v38;
    v41 = v37;

    sub_10000A514(v32, v34, v36 & 1);

    (*(v2 + 8))(v11, v1);
    return v41;
  }

  sub_10004FDA8();
  v19 = sub_10004FD48();
  v21 = v20;
  v22 = *(v2 + 8);
  v22(v6, v1);
  if (v21)
  {
    v42 = v19;
    v43 = v21;
    sub_100010600();
    v23 = sub_100050C48();
    v25 = v24;
    v27 = v26;
    sub_100050AF8();
    sub_100050B08();

    v28 = sub_100050C18();
    v40 = v29;
    v41 = v28;
    v39[1] = v30;

    sub_10000A514(v23, v25, v27 & 1);

    v22(v11, v1);
    return v41;
  }

  v22(v11, v1);
  return 0;
}

uint64_t sub_100023878()
{
  v0 = sub_1000507F8();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10002349C();
  if (v5)
  {
    v6 = v2;
    v7 = v3;
    v8 = v4;
    sub_1000507E8();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    sub_1000507D8(v11);
    sub_1000507C8();
    v12._countAndFlagsBits = 95;
    v12._object = 0xE100000000000000;
    sub_1000507D8(v12);
    sub_1000507C8();
    v13._countAndFlagsBits = 0x5055535F544F4E5FLL;
    v13._object = 0xEE00444554524F50;
    sub_1000507D8(v13);
    sub_100050818();
    v9 = sub_100050C38();
    sub_10000A514(v6, v7, v8 & 1);

    return v9;
  }

  else
  {
    sub_100050808();
    return sub_100050C38();
  }
}

uint64_t sub_100023A44@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for LIDResolutionView();
  v4 = v3 - 8;
  v42 = *(v3 - 8);
  v41 = *(v42 + 64);
  __chkstk_darwin(v3);
  v40 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000035C4(&qword_10006B538, &qword_1000540D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v37 - v9;
  v44 = sub_1000035C4(&qword_10006B540, &qword_1000540D8);
  v46 = *(v44 - 8);
  v11 = *(v46 + 64);
  __chkstk_darwin(v44);
  v38 = v37 - v12;
  v45 = sub_1000035C4(&qword_10006B548, &qword_1000540E0);
  v13 = *(v45 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v45);
  v43 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v39 = v37 - v17;
  v48 = v2;
  sub_1000035C4(&qword_10006B550, &qword_1000540E8);
  sub_10002636C();
  sub_100051038();
  v18 = sub_1000044E8(&qword_10006B570, &qword_10006B538, &qword_1000540D0);
  v19 = sub_100026454();
  sub_100050CF8();
  (*(v7 + 8))(v10, v6);
  v20 = v2 + *(v4 + 44);
  v21 = *v20;
  v22 = *(v20 + 8);
  v53 = v21;
  v54 = v22;
  sub_1000035C4(&qword_10006B018, &qword_100053990);
  sub_100050F38();
  v37[3] = v51;
  v23 = v2;
  v24 = v40;
  sub_1000264A8(v23, v40);
  v25 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v26 = swift_allocObject();
  sub_100026510(v24, v26 + v25);
  sub_1000035C4(&qword_10006B580, &qword_100054100);
  v49 = v6;
  v50 = &type metadata for ActionGroupStyle;
  v51 = v18;
  v52 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1000044E8(&qword_10006B588, &qword_10006B580, &qword_100054100);
  v27 = v38;
  v28 = v39;
  v29 = v44;
  sub_100050DC8();

  (*(v46 + 8))(v27, v29);
  v30 = v13[2];
  v31 = v43;
  v32 = v45;
  v30(v43, v28, v45);
  v33 = v47;
  v30(v47, v31, v32);
  v34 = &v33[*(sub_1000035C4(&qword_10006B590, &qword_100054108) + 48)];
  *v34 = 0;
  v34[8] = 1;
  v35 = v13[1];
  v35(v28, v32);
  return (v35)(v31, v32);
}

uint64_t sub_100023F9C(uint64_t a1)
{
  v2 = type metadata accessor for LIDResolutionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1000035C4(&qword_10006B568, &unk_1000540F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_1000264A8(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_100026510(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_1000035C4(&qword_10006B5B0, &qword_100055650);
  sub_1000044E8(&qword_10006B5B8, &qword_10006B5B0, &qword_100055650);
  sub_100050F58();
  sub_1000044E8(&qword_10006B560, &qword_10006B568, &unk_1000540F0);
  sub_100050D88();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100024268@<X0>(uint64_t a1@<X8>)
{
  sub_100050808();
  result = sub_100050C38();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000242E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100050EB8();
  *a1 = result;
  return result;
}

uint64_t sub_100024328()
{
  sub_1000035C4(&qword_10006B598, &qword_100054110);
  sub_10000372C(&qword_10006B5A0, &qword_100054118);
  sub_10000372C(&qword_10006B5A8, &unk_100054120);
  sub_10004FF28();
  sub_1000265EC(&qword_10006B070, &type metadata accessor for LanguagesView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_100050478();
}

uint64_t sub_100024480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_100050778();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v57 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LIDResolutionView();
  v7 = (v6 - 8);
  v53 = *(v6 - 8);
  v52 = *(v53 + 64);
  __chkstk_darwin(v6);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100050078();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  __chkstk_darwin(v9);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000035C4(&qword_10006B078, &qword_100053A10);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v15 = sub_10004FF28();
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  __chkstk_darwin(v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000035C4(&qword_10006B5A8, &unk_100054120);
  v54 = *(v51 - 8);
  v19 = *(v54 + 64);
  __chkstk_darwin(v51);
  v21 = &v44 - v20;
  v22 = sub_1000035C4(&qword_10006B5A0, &qword_100054118);
  v23 = *(v22 - 8);
  v55 = v22;
  v56 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v45 = &v44 - v25;
  v26 = a1 + v7[8];
  sub_100050F88();
  v27 = a1 + v7[9];
  sub_100050F88();
  v63 = *(a1 + v7[12]);
  sub_1000035C4(&qword_10006B080, &qword_100053A18);
  sub_100050F38();
  v28 = *(a1 + v7[10]);

  sub_10004FF18();
  v30 = v46;
  v29 = v47;
  v31 = v48;
  (*(v47 + 104))(v46, enum case for CloseButtonPosition.right(_:), v48);
  v32 = v50;
  sub_1000264A8(a1, v50);
  v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v34 = swift_allocObject();
  sub_100026510(v32, v34 + v33);
  v35 = sub_1000265EC(&qword_10006B070, &type metadata accessor for LanguagesView);
  sub_100050C58();

  (*(v29 + 8))(v30, v31);
  (*(v49 + 8))(v18, v15);
  v36 = v57;
  v37 = v58;
  v38 = v59;
  (*(v58 + 104))(v57, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v59);
  v61 = v15;
  v62 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v45;
  v41 = v51;
  sub_100050DB8();
  (*(v37 + 8))(v36, v38);
  (*(v54 + 8))(v21, v41);
  sub_100050808();
  v61 = v41;
  v62 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v55;
  sub_100050D28();

  return (*(v56 + 8))(v40, v42);
}

uint64_t sub_100024B40(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LIDResolutionView() + 36));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000035C4(&qword_10006B018, &qword_100053990);
  return sub_100050F28();
}

uint64_t sub_100024BB4@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1000035C4(&qword_10006B518, &qword_100054080);
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v42[0] = v42 - v6;
  v43 = sub_10004FFC8();
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v43);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000035C4(&qword_10006B520, &qword_100054088);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v49 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = v42 - v15;
  v42[1] = a1;
  v16 = sub_100023878();
  v18 = v17;
  v20 = v19;
  sub_100050E08();
  v21 = sub_100050BE8();
  v46 = v22;
  v47 = v21;
  v24 = v23;
  v48 = v25;

  sub_10000A514(v16, v18, v20 & 1);

  sub_100051078();
  sub_100050538();
  v26 = v24 & 1;
  v81 = v24 & 1;
  KeyPath = swift_getKeyPath();
  v28 = v43;
  (*(v7 + 104))(v10, enum case for TranslateFeatures.lowConfidenceLID(_:), v43);
  LOBYTE(v16) = sub_10004FFB8();
  (*(v7 + 8))(v10, v28);
  v29 = 1;
  if ((v16 & 1) == 0)
  {
    v30 = v42[0];
    sub_100023A44(v42[0]);
    sub_100026284(v30, v50);
    v29 = 0;
  }

  v31 = v50;
  (*(v44 + 56))(v50, v29, 1, v45);
  v32 = v49;
  sub_1000262F4(v31, v49);
  v34 = v46;
  v33 = v47;
  *&v51 = v47;
  *(&v51 + 1) = v46;
  LOBYTE(v52) = v26;
  *(&v52 + 1) = v80[0];
  DWORD1(v52) = *(v80 + 3);
  v35 = v48;
  *(&v52 + 1) = v48;
  v57 = v77;
  v58 = v78;
  v59[0] = v79;
  v53 = v73;
  v54 = v74;
  v55 = v75;
  v56 = v76;
  LODWORD(v45) = v26;
  *&v59[1] = KeyPath;
  BYTE8(v59[1]) = 1;
  v36 = v78;
  a2[6] = v77;
  a2[7] = v36;
  a2[8] = v59[0];
  v37 = v54;
  a2[2] = v53;
  a2[3] = v37;
  v38 = v56;
  a2[4] = v55;
  a2[5] = v38;
  v39 = v52;
  *a2 = v51;
  a2[1] = v39;
  *(a2 + 137) = *(v59 + 9);
  v40 = sub_1000035C4(&qword_10006B528, &qword_1000540C0);
  sub_1000262F4(v32, a2 + *(v40 + 48));
  sub_10000A00C(&v51, v60, &qword_10006B530, &qword_1000540C8);
  sub_100004444(v31, &qword_10006B520, &qword_100054088);
  sub_100004444(v32, &qword_10006B520, &qword_100054088);
  v60[0] = v33;
  v60[1] = v34;
  v61 = v45;
  *v62 = v80[0];
  *&v62[3] = *(v80 + 3);
  v63 = v35;
  v68 = v77;
  v69 = v78;
  v70 = v79;
  v64 = v73;
  v65 = v74;
  v66 = v75;
  v67 = v76;
  v71 = KeyPath;
  v72 = 1;
  return sub_100004444(v60, &qword_10006B530, &qword_1000540C8);
}

uint64_t sub_100025048@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v39 = sub_1000035C4(&qword_10006B468, &qword_100053F98);
  v34 = *(v39 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v39);
  v33 = &v32 - v4;
  v36 = sub_1000035C4(&qword_10006B470, &qword_100053FA0);
  v5 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v7 = &v32 - v6;
  v35 = sub_1000035C4(&qword_10006B478, &qword_100053FA8);
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v35);
  v11 = &v32 - v10;
  v37 = sub_1000035C4(&qword_10006B480, &qword_100053FB0);
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v37);
  v15 = &v32 - v14;
  v16 = sub_10004FFC8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, enum case for TranslateFeatures.lowConfidenceLID(_:), v16);
  v21 = sub_10004FFB8();
  (*(v17 + 8))(v20, v16);
  v40 = v2;
  if (v21)
  {
    sub_1000035C4(&qword_10006B4B0, &qword_100053FC8);
    sub_1000044E8(&qword_10006B4B8, &qword_10006B4B0, &qword_100053FC8);
    sub_100050B78();
    v41 = sub_100050E58();
    v22 = sub_1000044E8(&qword_10006B4A0, &qword_10006B478, &qword_100053FA8);
    v23 = v35;
    sub_100050DA8();

    (*(v8 + 8))(v11, v23);
    v24 = v37;
    (*(v12 + 16))(v7, v15, v37);
    swift_storeEnumTagMultiPayload();
    v41 = v23;
    v42 = &type metadata for Color;
    v43 = v22;
    v44 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    sub_1000044E8(&qword_10006B4A8, &qword_10006B468, &qword_100053F98);
    sub_1000508A8();
    return (*(v12 + 8))(v15, v24);
  }

  else
  {
    sub_100050A68();
    sub_1000035C4(&qword_10006B488, &qword_100053FB8);
    v26 = sub_10000372C(&qword_10006B490, &qword_100053FC0);
    v27 = sub_1000044E8(&qword_10006B498, &qword_10006B490, &qword_100053FC0);
    v41 = v26;
    v42 = v27;
    swift_getOpaqueTypeConformance2();
    v28 = v33;
    sub_1000503A8();
    v29 = v34;
    v30 = v39;
    (*(v34 + 16))(v7, v28, v39);
    swift_storeEnumTagMultiPayload();
    v31 = sub_1000044E8(&qword_10006B4A0, &qword_10006B478, &qword_100053FA8);
    v41 = v35;
    v42 = &type metadata for Color;
    v43 = v31;
    v44 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    sub_1000044E8(&qword_10006B4A8, &qword_10006B468, &qword_100053F98);
    sub_1000508A8();
    return (*(v29 + 8))(v28, v30);
  }
}

uint64_t sub_1000256D8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v63 = sub_1000035C4(&qword_10006B078, &qword_100053A10);
  v3 = *(*(v63 - 8) + 64);
  v4 = __chkstk_darwin(v63);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v57 - v6;
  v7 = sub_10004FF28();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  v9 = __chkstk_darwin(v7);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = &v57 - v11;
  v12 = sub_1000035C4(&qword_10006B4C0, &qword_100053FD0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v57 - v14;
  v16 = sub_100050B68();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000035C4(&qword_10006B4C8, &qword_100053FD8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v57 - v23;
  v60 = sub_1000035C4(&qword_10006B4D0, &qword_100053FE0);
  v68 = *(v60 - 8);
  v25 = v68[8];
  v26 = __chkstk_darwin(v60);
  v59 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v57 - v28;
  *v24 = sub_100050888();
  *(v24 + 1) = 0x4038000000000000;
  v24[16] = 0;
  v30 = sub_1000035C4(&qword_10006B4D8, &qword_100053FE8);
  sub_100024BB4(a1, &v24[*(v30 + 44)]);
  v31 = &v24[*(sub_1000035C4(&qword_10006B4E0, &unk_100053FF0) + 36)];
  v32 = *(sub_1000035C4(&qword_10006AFD0, &qword_100053970) + 28);
  v33 = sub_100050C08();
  (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
  *v31 = swift_getKeyPath();
  (*(v17 + 104))(v20, enum case for Font.TextStyle.body(_:), v16);
  v34 = sub_100050B28();
  (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
  v35 = sub_100050B38();
  sub_100004444(v15, &qword_10006B4C0, &qword_100053FD0);
  (*(v17 + 8))(v20, v16);
  KeyPath = swift_getKeyPath();
  v37 = &v24[*(v21 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  sub_100026094();
  v58 = v29;
  sub_100050FC8();
  v38 = type metadata accessor for LIDResolutionView();
  v39 = &a1[v38[6]];
  sub_100050F88();
  v40 = &a1[v38[7]];
  sub_100050F88();
  v70 = *&a1[v38[10]];
  sub_1000035C4(&qword_10006B080, &qword_100053A18);
  sub_100050F38();
  v41 = *&a1[v38[8]];

  v42 = v69;
  sub_10004FF18();
  v43 = v68[2];
  v44 = v59;
  v45 = v29;
  v46 = v60;
  v43(v59, v45, v60);
  v47 = v64;
  v48 = v65;
  v49 = *(v65 + 16);
  v50 = v42;
  v51 = v66;
  v49(v64, v50, v66);
  v52 = v67;
  v43(v67, v44, v46);
  v53 = sub_1000035C4(&qword_10006B508, &qword_100054070);
  v49(&v52[*(v53 + 48)], v47, v51);
  v54 = *(v48 + 8);
  v54(v69, v51);
  v55 = v68[1];
  v55(v58, v46);
  v54(v47, v51);
  return (v55)(v44, v46);
}

uint64_t sub_100025D74(char *a1)
{
  v2 = sub_1000035C4(&qword_10006B490, &qword_100053FC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  *v5 = sub_100050888();
  *(v5 + 1) = 0x4038000000000000;
  v5[16] = 0;
  v6 = sub_1000035C4(&qword_10006B4D8, &qword_100053FE8);
  sub_100024BB4(a1, &v5[*(v6 + 44)]);
  sub_1000044E8(&qword_10006B498, &qword_10006B490, &qword_100053FC0);
  sub_100050C78();
  return sub_100004444(v5, &qword_10006B490, &qword_100053FC0);
}

uint64_t sub_100025E9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100050698();
  *a1 = result;
  return result;
}

uint64_t sub_100025EC8(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000506A8();
}

uint64_t sub_100025EF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100050678();
  *a1 = result;
  return result;
}

uint64_t sub_100025F90(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006B510, &qword_100054078);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000A00C(a1, &v6 - v4, &qword_10006B510, &qword_100054078);
  return sub_1000506E8();
}

uint64_t sub_10002603C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100050698();
  *a1 = result;
  return result;
}

uint64_t sub_100026068(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000506A8();
}

unint64_t sub_100026094()
{
  result = qword_10006B4E8;
  if (!qword_10006B4E8)
  {
    sub_10000372C(&qword_10006B4C8, &qword_100053FD8);
    sub_10002614C();
    sub_1000044E8(&qword_10006B4F8, &qword_10006B500, &unk_100054060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B4E8);
  }

  return result;
}

unint64_t sub_10002614C()
{
  result = qword_10006B4F0;
  if (!qword_10006B4F0)
  {
    sub_10000372C(&qword_10006B4E0, &unk_100053FF0);
    sub_1000044E8(&qword_10006B498, &qword_10006B490, &qword_100053FC0);
    sub_1000044E8(&qword_10006AFC8, &qword_10006AFD0, &qword_100053970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B4F0);
  }

  return result;
}

uint64_t sub_100026230@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100050678();
  *a1 = result;
  return result;
}

uint64_t sub_100026284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006B518, &qword_100054080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000262F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006B520, &qword_100054088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002636C()
{
  result = qword_10006B558;
  if (!qword_10006B558)
  {
    sub_10000372C(&qword_10006B550, &qword_1000540E8);
    sub_1000044E8(&qword_10006B560, &qword_10006B568, &unk_1000540F0);
    sub_1000265EC(&qword_10006B380, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B558);
  }

  return result;
}

unint64_t sub_100026454()
{
  result = qword_10006B578;
  if (!qword_10006B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B578);
  }

  return result;
}

uint64_t sub_1000264A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LIDResolutionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LIDResolutionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026574()
{
  v0 = *(*(type metadata accessor for LIDResolutionView() - 8) + 80);

  return sub_100024328();
}

uint64_t sub_1000265EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002663C()
{
  v1 = type metadata accessor for LIDResolutionView();
  v2 = *(*(v1 - 1) + 80);
  v22 = *(*(v1 - 1) + 64);
  v23 = (v2 + 16) & ~v2;
  v24 = v0;
  v3 = v0 + v23;
  v4 = *(v0 + v23 + 8);

  v5 = *(v0 + v23 + 16);

  v6 = (v0 + v23 + v1[6]);
  v7 = *v6;

  v8 = *(v6 + 1);

  v9 = sub_1000035C4(&qword_10006B078, &qword_100053A10);
  v10 = *(v9 + 32);
  v11 = sub_10004FDB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(&v6[v10], 1, v11))
  {
    (*(v12 + 8))(&v6[v10], v11);
  }

  v14 = (v3 + v1[7]);
  v15 = *v14;

  v16 = *(v14 + 1);

  v17 = *(v9 + 32);
  if (!v13(&v14[v17], 1, v11))
  {
    (*(v12 + 8))(&v14[v17], v11);
  }

  v18 = *(v3 + v1[8]);

  v19 = *(v3 + v1[9] + 8);

  v20 = *(v3 + v1[10] + 8);

  return _swift_deallocObject(v24, v23 + v22, v2 | 7);
}

unint64_t sub_1000268AC()
{
  result = qword_10006B5C0;
  if (!qword_10006B5C0)
  {
    sub_10000372C(&qword_10006B5C8, &unk_100054130);
    sub_10000372C(&qword_10006B478, &qword_100053FA8);
    sub_1000044E8(&qword_10006B4A0, &qword_10006B478, &qword_100053FA8);
    swift_getOpaqueTypeConformance2();
    sub_1000044E8(&qword_10006B4A8, &qword_10006B468, &qword_100053F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B5C0);
  }

  return result;
}

uint64_t sub_100026A7C()
{
  v0 = sub_100050268();
  sub_10000DE70(v0, qword_10006E090);
  sub_100008BA0(v0, qword_10006E090);
  return sub_100050258();
}

uint64_t sub_100026B14(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100050268();
  sub_10000DE70(v3, a2);
  sub_100008BA0(v3, a2);
  return sub_100050258();
}

uint64_t sub_100026BA8()
{
  sub_100009C1C();
  sub_100050758();
  return v1;
}

void (*EnvironmentValues._replace.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_100009C1C();
  sub_100050758();
  *v4 = v4[1];
  return sub_100026CB8;
}

void sub_100026CB8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v5 = v2[4];
  v6 = v2[5];
  v2[3] = v3;
  if (a2)
  {

    sub_100050768();
    v7 = v2[1];
  }

  else
  {
    sub_100050768();
  }

  free(v2);
}

uint64_t sub_100026D70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v53 = a4;
  v52 = a3;
  v69 = a2;
  v5 = sub_1000035C4(&qword_10006B5D0, &qword_1000541E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v51 = &v49 - v7;
  v8 = sub_1000035C4(&qword_10006B5D8, &qword_1000541E8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v68 = &v49 - v10;
  v67 = sub_100050BB8();
  v11 = *(v67 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v67);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100027390(0x41, 0xE100000000000000, a1);
  sub_1000035C4(&qword_10006B5E0, &qword_100054ED0);
  sub_10002742C();
  v49 = sub_100051108();
  v54 = v14;

  sub_100050B48();
  v15 = sub_100050B08();

  v73 = v15;
  sub_100050AF8();
  v16 = sub_100050B08();

  v74 = v16;
  v66 = (v11 + 8);
  v17 = 32;
  v65 = sub_100010600();
  while (1)
  {
    v55 = v17;
    v18 = *&v72[v17];
    v70 = v49;
    v71 = v54;

    v19 = sub_100050C48();
    v21 = v20;
    v23 = v22;

    v24 = sub_100050C18();
    v26 = v25;
    v28 = v27;
    sub_10000A514(v19, v21, v23 & 1);

    v62 = sub_100050B88();
    v29 = *(v62 - 8);
    v61 = *(v29 + 56);
    v63 = v29 + 56;
    v61(v68, 1, 1, v62);
    v59 = sub_100050C28();
    v30 = *(v59 - 8);
    v58 = *(v30 + 56);
    v60 = v30 + 56;
    v31 = v51;
    v58(v51, 1, 1, v59);
    v32 = v50;
    sub_100050BA8();
    sub_100050B98();
    v34 = v33;
    sub_10000A514(v24, v26, v28 & 1);

    v57 = *v66;
    v57(v32, v67);
    v70 = v52;
    v71 = v53;

    v35 = sub_100050C48();
    v37 = v36;
    v39 = v38;
    v40 = sub_100050C18();
    v42 = v41;
    LOBYTE(v19) = v43;
    v56 = v44;
    v64 = v18;

    sub_10000A514(v35, v37, v39 & 1);

    v61(v68, 1, 1, v62);
    v58(v31, 1, 1, v59);
    sub_100050BA8();
    sub_100050B98();
    v46 = v45;
    sub_10000A514(v40, v42, v19 & 1);

    v57(v32, v67);
    if (v46 <= v34)
    {
      break;
    }

    v17 = v55 + 8;
    if (v55 == 40)
    {

      swift_arrayDestroy();
      sub_100050AF8();
      v47 = sub_100050B08();

      return v47;
    }
  }

  swift_arrayDestroy();
  return v64;
}

void *sub_100027390(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return &_swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = sub_100051288();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_10002742C()
{
  result = qword_10006B5E8;
  if (!qword_10006B5E8)
  {
    sub_10000372C(&qword_10006B5E0, &qword_100054ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B5E8);
  }

  return result;
}

uint64_t sub_100027490@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100050F08();
  a2[6] = v15;
  a2[7] = v16;
  v4 = type metadata accessor for TranslationCardView();
  v5 = a2 + *(v4 + 32);
  sub_100050BC8();
  v6 = a2 + *(v4 + 36);
  sub_100050F08();
  *v6 = v15;
  *(v6 + 1) = v16;
  type metadata accessor for TranslationModel(0);
  sub_10002C8C0(&qword_10006A340, type metadata accessor for TranslationModel);

  *a2 = sub_100050488();
  a2[1] = v7;
  v8 = *(a1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_originalPlayer);
  type metadata accessor for VoicePlayback();
  sub_10002C8C0(&qword_10006B5F0, type metadata accessor for VoicePlayback);

  a2[2] = sub_100050488();
  a2[3] = v9;
  v10 = *(a1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationPlayer);

  v11 = sub_100050488();
  v13 = v12;

  a2[4] = v11;
  a2[5] = v13;
  return result;
}

uint64_t type metadata accessor for TranslationCardView()
{
  result = qword_10006B650;
  if (!qword_10006B650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100027698(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100050BD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100027758(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100050BD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000277FC()
{
  sub_1000278E8();
  if (v0 <= 0x3F)
  {
    sub_10002797C();
    if (v1 <= 0x3F)
    {
      sub_10001E8DC(319, &unk_10006B670);
      if (v2 <= 0x3F)
      {
        sub_100050BD8();
        if (v3 <= 0x3F)
        {
          sub_10001E8DC(319, &qword_10006AEF8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000278E8()
{
  if (!qword_10006B660)
  {
    type metadata accessor for TranslationModel(255);
    sub_10002C8C0(&qword_10006A340, type metadata accessor for TranslationModel);
    v0 = sub_1000504B8();
    if (!v1)
    {
      atomic_store(v0, &qword_10006B660);
    }
  }
}

void sub_10002797C()
{
  if (!qword_10006B668)
  {
    type metadata accessor for VoicePlayback();
    sub_10002C8C0(&qword_10006B5F0, type metadata accessor for VoicePlayback);
    v0 = sub_1000504B8();
    if (!v1)
    {
      atomic_store(v0, &qword_10006B668);
    }
  }
}

uint64_t sub_100027A2C()
{
  v1 = v0;
  v2 = type metadata accessor for TranslationCardView();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004FBB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (!v26)
  {
    return sub_100050B18();
  }

  sub_10004FBA8();
  sub_100010600();
  v12 = sub_1000514F8();
  v14 = v13;
  (*(v7 + 8))(v10, v6);

  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v15 = sub_100050268();
  sub_100008BA0(v15, qword_10006E090);
  sub_10002C94C(v1, v5, type metadata accessor for TranslationCardView);
  v16 = sub_100050248();
  v17 = sub_100051348();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    v19 = *(v5 + 7);
    v25 = *(v5 + 6);
    v26 = v19;
    sub_1000035C4(&qword_10006B798, &qword_100054508);
    sub_100050F18();
    v20 = v24[1];
    sub_10002C9B4(v5, type metadata accessor for TranslationCardView);
    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "🟢 Fitting text in %f", v18, 0xCu);
  }

  else
  {

    sub_10002C9B4(v5, type metadata accessor for TranslationCardView);
  }

  v22 = *(v1 + 56);
  v25 = *(v1 + 48);
  v26 = v22;
  sub_1000035C4(&qword_10006B798, &qword_100054508);
  sub_100050F18();
  v23 = sub_100026D70(3, v1 + *(v2 + 32), v12, v14);

  return v23;
}

uint64_t sub_100027DBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004FDB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  v12 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_100004444(v11, &qword_10006A2A0, &qword_1000528E0);
LABEL_5:
    v14 = &enum case for LayoutDirection.leftToRight(_:);
    goto LABEL_6;
  }

  (*(v4 + 16))(v7, v11, v3);
  sub_100004444(v11, &qword_10006A2A0, &qword_1000528E0);
  v13 = sub_10004FD78();
  (*(v4 + 8))(v7, v3);
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = &enum case for LayoutDirection.rightToLeft(_:);
LABEL_6:
  v15 = *v14;
  v16 = sub_1000504C8();
  return (*(*(v16 - 8) + 104))(a1, v15, v16);
}

uint64_t sub_100027FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v20[-v11];
  __chkstk_darwin(v10);
  v14 = &v20[-v13];
  v15 = *(a4 + 8);

  sub_10004FF38();
  v16 = sub_10004FDB8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v12, 1, v16) == 1)
  {
    sub_10004FD18();
    if (v18(v12, 1, v16) != 1)
    {
      sub_100004444(v12, &qword_10006A2A0, &qword_1000528E0);
    }
  }

  else
  {
    (*(v17 + 32))(v14, v12, v16);
  }

  (*(v17 + 56))(v14, 0, 1, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v14, v9, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  swift_getKeyPath();
  swift_getKeyPath();
  v20[15] = 0;
  sub_100050308();
  return sub_100004444(v14, &qword_10006A2A0, &qword_1000528E0);
}

uint64_t sub_100028278@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v9 = sub_10004FDB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_10004FD18();
    if (v11(v7, 1, v9) != 1)
    {
      sub_100004444(v7, &qword_10006A2A0, &qword_1000528E0);
    }
  }

  else
  {
    (*(v10 + 32))(a2, v7, v9);
  }

  v12 = enum case for LanguageOption.locale(_:);
  v13 = sub_10004FF48();
  return (*(*(v13 - 8) + 104))(a2, v12, v13);
}

uint64_t sub_10002845C(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v55 = a1;
  v4 = sub_10004FDB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = &v52 - v9;
  v10 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v52 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v52 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v52 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - v21;
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v25 = sub_10004FFC8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v29, enum case for TranslateFeatures.refreshedSystemTranslation(_:), v25);
  v30 = sub_10004FFB8();
  (*(v26 + 8))(v29, v25);
  if (v30)
  {
    v31 = v54;
    sub_10004FF38();
    v32 = *(v5 + 48);
    if (v32(v16, 1, v4) == 1)
    {
      v33 = v56;
      sub_10004FD18();
      if (v32(v16, 1, v4) != 1)
      {
        sub_100004444(v16, &qword_10006A2A0, &qword_1000528E0);
      }
    }

    else
    {
      v33 = v56;
      (*(v5 + 32))(v56, v16, v4);
    }

    v36 = *(v31 + 8);
    v55 = *(v5 + 16);
    v55(v19, v33, v4);
    (*(v5 + 56))(v19, 0, 1, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000A00C(v19, v52, &qword_10006A2A0, &qword_1000528E0);

    sub_100050308();
    sub_100004444(v19, &qword_10006A2A0, &qword_1000528E0);
    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v37 = sub_100050268();
    sub_100008BA0(v37, qword_10006E090);
    v38 = v53;
    v55(v53, v56, v4);
    v39 = sub_100050248();
    v40 = sub_100051378();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = v42;
      *v41 = 136446210;
      v43 = sub_10004FD28();
      v44 = v38;
      v46 = v45;
      v47 = *(v5 + 8);
      v47(v44, v4);
      v48 = sub_100008C04(v43, v46, &v57);

      *(v41 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v39, v40, "Target locale changed using new language picker to %{public}s", v41, 0xCu);
      sub_100009F78(v42);
    }

    else
    {

      v47 = *(v5 + 8);
      v47(v38, v4);
    }

    sub_10000D074();
    v50 = sub_100051388();
    v51 = v56;
    sub_10004FD28();
    sub_1000513D8();

    return (v47)(v51, v4);
  }

  else
  {
    v34 = *(v54 + 8);

    sub_10004FF38();
    v35 = *(v5 + 48);
    if (v35(v22, 1, v4) == 1)
    {
      sub_10004FD18();
      if (v35(v22, 1, v4) != 1)
      {
        sub_100004444(v22, &qword_10006A2A0, &qword_1000528E0);
      }
    }

    else
    {
      (*(v5 + 32))(v24, v22, v4);
    }

    (*(v5 + 56))(v24, 0, 1, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000A00C(v24, v19, &qword_10006A2A0, &qword_1000528E0);
    sub_100050308();
    return sub_100004444(v24, &qword_10006A2A0, &qword_1000528E0);
  }
}

unint64_t *sub_100028B44(uint64_t (*a1)(uint64_t), const char *a2)
{
  v34[0] = a2;
  v43 = sub_10004FF08();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v43);
  v42 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10004FDB8();
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v41);
  v40 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TranslationModel.LocaleInfo(0);
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v39);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10004FED8();
  v14 = *(v38 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v38);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 8);
  v20 = a1(v16);
  v21 = *(v20 + 16);
  if (!v21)
  {

    v22 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      return v22;
    }

    goto LABEL_12;
  }

  v44 = _swiftEmptyArrayStorage;
  sub_10000D408(0, v21, 0);
  v22 = v44;
  v23 = *(v10 + 80);
  v34[1] = v20;
  v24 = v20 + ((v23 + 32) & ~v23);
  v37 = *(v10 + 72);
  v36 = enum case for LanguageState.availableForDownload(_:);
  v25 = (v4 + 104);
  v35 = enum case for LanguageState.installed(_:);
  v34[2] = (v14 + 32);
  do
  {
    sub_10002C94C(v24, v13, type metadata accessor for TranslationModel.LocaleInfo);
    (*(v7 + 16))(v40, v13, v41);
    if (v13[*(v39 + 20)])
    {
      v26 = v35;
    }

    else
    {
      v26 = v36;
    }

    (*v25)(v42, v26, v43);
    sub_10004FEC8();
    sub_10002C9B4(v13, type metadata accessor for TranslationModel.LocaleInfo);
    v44 = v22;
    v28 = v22[2];
    v27 = v22[3];
    if (v28 >= v27 >> 1)
    {
      sub_10000D408(v27 > 1, v28 + 1, 1);
      v22 = v44;
    }

    v22[2] = v28 + 1;
    (*(v14 + 32))(v22 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v28, v18, v38);
    v24 += v37;
    --v21;
  }

  while (v21);

  if (!v22[2])
  {
LABEL_12:

    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v29 = sub_100050268();
    sub_100008BA0(v29, qword_10006E090);
    v30 = sub_100050248();
    v31 = sub_100051358();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, v34[0], v32, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  return v22;
}

__n128 sub_100029008@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1000035C4(&qword_10006B6B0, &qword_100054268);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v12 - v5;
  *v6 = sub_100050888();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v7 = sub_1000035C4(&qword_10006B6B8, &qword_100054270);
  sub_100029168(v1, &v6[*(v7 + 44)]);
  sub_100051058();
  sub_100050538();
  sub_10000360C(v6, a1, &qword_10006B6B0, &qword_100054268);
  v8 = a1 + *(sub_1000035C4(&qword_10006B6C0, &qword_100054278) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_100029168@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v61 = sub_1000035C4(&qword_10006B6C8, &qword_100054280);
  v3 = *(*(v61 - 8) + 64);
  v4 = __chkstk_darwin(v61);
  v66 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = (&v58 - v6);
  v7 = sub_1000035C4(&qword_10006B6D0, &qword_100054288);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v64 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v58 - v11;
  v12 = sub_1000035C4(&qword_10006B6D8, &qword_100054290);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v68 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v58 - v16;
  v18 = sub_1000035C4(&qword_10006B6E0, &qword_100054298);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18);
  v67 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v58 - v23;
  *v24 = sub_100050788();
  *(v24 + 1) = 0x4020000000000000;
  v24[16] = 0;
  v25 = sub_1000035C4(&qword_10006B6E8, &qword_1000542A0);
  sub_100029870(a1, &v24[*(v25 + 44)]);
  KeyPath = swift_getKeyPath();
  v27 = &v24[*(v19 + 44)];
  v28 = sub_1000035C4(&qword_10006B6F0, &qword_1000542D8);
  sub_100027DBC(v27 + *(v28 + 28));
  *v27 = KeyPath;
  v29 = a1[1];
  sub_10002F458();
  v31 = *(v30 + 16);

  if (v31 < 2)
  {
    v34 = 1;
  }

  else
  {
    sub_10002F458();
    v59 = v32;
    v33 = *a1;
    type metadata accessor for TranslationModel(0);
    sub_10002C8C0(&qword_10006A340, type metadata accessor for TranslationModel);
    sub_100050498();
    swift_getKeyPath();
    sub_1000504A8();

    sub_10004FFF8();
    v34 = 0;
  }

  v35 = sub_100050008();
  (*(*(v35 - 8) + 56))(v17, v34, 1, v35);
  v36 = v62;
  sub_100050FB8();
  sub_100051078();
  sub_1000503F8();
  v37 = (v36 + *(v7 + 36));
  v38 = v71;
  *v37 = v70;
  v37[1] = v38;
  v37[2] = v72;
  v39 = sub_100050788();
  v40 = v63;
  *v63 = v39;
  *(v40 + 8) = 0x4020000000000000;
  *(v40 + 16) = 0;
  v41 = sub_1000035C4(&qword_10006B6F8, &qword_1000542E0);
  sub_10002B0F0(a1, v40 + *(v41 + 44));
  v42 = swift_getKeyPath();
  v43 = *(sub_1000035C4(&qword_10006B700, &qword_1000542E8) + 36);
  v44 = v17;
  v60 = v17;
  v45 = (v40 + v43);
  sub_100027DBC(v40 + v43 + *(v28 + 28));
  *v45 = v42;
  v46 = sub_100050E28();
  v47 = swift_getKeyPath();
  v48 = (v40 + *(v61 + 36));
  *v48 = v47;
  v48[1] = v46;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (v69 == 2)
  {
    v49 = 2;
  }

  else
  {
    v49 = v69 & 1;
  }

  LODWORD(v61) = v49;
  v50 = v67;
  sub_10000A00C(v24, v67, &qword_10006B6E0, &qword_100054298);
  v51 = v68;
  sub_10000A00C(v44, v68, &qword_10006B6D8, &qword_100054290);
  v52 = v64;
  sub_10000A00C(v36, v64, &qword_10006B6D0, &qword_100054288);
  v59 = v24;
  v53 = v66;
  sub_10000A00C(v40, v66, &qword_10006B6C8, &qword_100054280);
  v54 = v50;
  v55 = v65;
  sub_10000A00C(v54, v65, &qword_10006B6E0, &qword_100054298);
  v56 = sub_1000035C4(&qword_10006B708, &qword_100054368);
  sub_10000A00C(v51, v55 + v56[12], &qword_10006B6D8, &qword_100054290);
  sub_10000A00C(v52, v55 + v56[16], &qword_10006B6D0, &qword_100054288);
  sub_10000A00C(v53, v55 + v56[20], &qword_10006B6C8, &qword_100054280);
  *(v55 + v56[24]) = v61;
  sub_100004444(v40, &qword_10006B6C8, &qword_100054280);
  sub_100004444(v36, &qword_10006B6D0, &qword_100054288);
  sub_100004444(v60, &qword_10006B6D8, &qword_100054290);
  sub_100004444(v59, &qword_10006B6E0, &qword_100054298);
  sub_100004444(v53, &qword_10006B6C8, &qword_100054280);
  sub_100004444(v52, &qword_10006B6D0, &qword_100054288);
  sub_100004444(v68, &qword_10006B6D8, &qword_100054290);
  return sub_100004444(v67, &qword_10006B6E0, &qword_100054298);
}

uint64_t sub_100029870@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = sub_100050858();
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  __chkstk_darwin(v3);
  v86 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000509A8();
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  __chkstk_darwin(v6);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranslationCardView();
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  __chkstk_darwin(v9);
  v76 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000035C4(&qword_10006B710, &qword_1000543E8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v74 = &v74 - v13;
  v77 = sub_1000035C4(&qword_10006B7C8, &qword_1000545E8);
  v14 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v16 = &v74 - v15;
  v17 = sub_1000035C4(&qword_10006B7D0, &qword_1000545F0);
  v79 = *(v17 - 8);
  v80 = v17;
  v18 = *(v79 + 64);
  __chkstk_darwin(v17);
  v78 = &v74 - v19;
  v20 = sub_1000035C4(&qword_10006B7D8, &qword_1000545F8);
  v90 = *(v20 - 8);
  v91 = v20;
  v21 = *(v90 + 64);
  v22 = __chkstk_darwin(v20);
  v85 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v84 = &v74 - v24;
  v25 = sub_1000035C4(&qword_10006B7E0, &qword_100054600);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v92 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v74 - v29;
  v31 = sub_1000035C4(&qword_10006B7E8, &qword_100054608);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v89 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v74 - v35;
  *v36 = sub_100050898();
  *(v36 + 1) = 0;
  v37 = 1;
  v36[16] = 1;
  v38 = sub_1000035C4(&qword_10006B7F0, &qword_100054610);
  sub_10002A2C0(a1, &v36[*(v38 + 44)]);
  v39 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (!v96)
  {
    goto LABEL_4;
  }

  v40 = a1 + *(v9 + 36);
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v95) = v41;
  v96 = v42;
  sub_1000035C4(&qword_10006B018, &qword_100053990);
  sub_100050F18();
  if (v94 == 1)
  {
    v43 = a1[3];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000502F8();

    v44 = sub_10004FE88();
    (*(*(v44 - 8) + 56))(v74, 1, 1, v44);
    v45 = v76;
    sub_10002C94C(a1, v76, type metadata accessor for TranslationCardView);
    v46 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v47 = swift_allocObject();
    sub_10002C61C(v45, v47 + v46);
    sub_10004FE98();
    v48 = sub_100027A2C();
    KeyPath = swift_getKeyPath();
    v50 = &v16[*(sub_1000035C4(&qword_10006B750, &unk_1000544E8) + 36)];
    *v50 = KeyPath;
    v50[1] = v48;
    v16[*(sub_1000035C4(&qword_10006B718, &qword_1000543F0) + 36)] = 0;
    v51 = sub_100050E78();
    v52 = swift_getKeyPath();
    v53 = v77;
    v54 = &v16[*(v77 + 36)];
    *v54 = v52;
    v54[1] = v51;
    v55 = v81;
    sub_100050998();
    v56 = sub_10002CBE4();
    v57 = v78;
    sub_100050D78();
    (*(v82 + 8))(v55, v83);
    sub_100004444(v16, &qword_10006B7C8, &qword_1000545E8);
    sub_100050808();
    v95 = v53;
    v96 = v56;
    swift_getOpaqueTypeConformance2();
    v58 = v85;
    v59 = v80;
    sub_100050D58();

    (*(v79 + 8))(v57, v59);
    sub_1000035C4(&qword_10006B778, &qword_1000544F8);
    v60 = v87;
    v61 = *(v87 + 72);
    v62 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1000541F0;
    sub_100050838();
    sub_100050848();
    v95 = v63;
    sub_10002C8C0(&qword_10006B780, &type metadata accessor for AccessibilityTraits);
    sub_1000035C4(&qword_10006B788, &qword_100054500);
    sub_1000044E8(&qword_10006B790, &qword_10006B788, &qword_100054500);
    v64 = v86;
    v65 = v88;
    sub_100051528();
    v66 = v84;
    v67 = v91;
    sub_1000504D8();
    (*(v60 + 8))(v64, v65);
    sub_100004444(v58, &qword_10006B7D8, &qword_1000545F8);
    sub_10000360C(v66, v30, &qword_10006B7D8, &qword_1000545F8);
    v68 = v67;
    v37 = 0;
  }

  else
  {
LABEL_4:
    v68 = v91;
  }

  (*(v90 + 56))(v30, v37, 1, v68);
  v69 = v89;
  sub_10000A00C(v36, v89, &qword_10006B7E8, &qword_100054608);
  v70 = v92;
  sub_10000A00C(v30, v92, &qword_10006B7E0, &qword_100054600);
  v71 = v93;
  sub_10000A00C(v69, v93, &qword_10006B7E8, &qword_100054608);
  v72 = sub_1000035C4(&qword_10006B7F8, &unk_100054618);
  sub_10000A00C(v70, v71 + *(v72 + 48), &qword_10006B7E0, &qword_100054600);
  sub_100004444(v30, &qword_10006B7E0, &qword_100054600);
  sub_100004444(v36, &qword_10006B7E8, &qword_100054608);
  sub_100004444(v70, &qword_10006B7E0, &qword_100054600);
  return sub_100004444(v69, &qword_10006B7E8, &qword_100054608);
}

uint64_t sub_10002A2C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v120 = type metadata accessor for LanguageText();
  v3 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v5 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1000035C4(&qword_10006B7A0, &qword_100054558);
  v6 = *(*(v121 - 8) + 64);
  v7 = __chkstk_darwin(v121);
  v123 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v122 = v96 - v9;
  v10 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v116 = v96 - v12;
  v115 = sub_10004FDB8();
  v113 = *(v115 - 8);
  v13 = *(v113 + 64);
  __chkstk_darwin(v115);
  v117 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TranslationCardView();
  v104 = *(v15 - 8);
  v16 = *(v104 + 64);
  __chkstk_darwin(v15);
  v105 = v17;
  v18 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000035C4(&qword_10006B7A8, &qword_100054560);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v106 = v96 - v21;
  v114 = sub_100050138();
  v112 = *(v114 - 8);
  v22 = *(v112 + 64);
  __chkstk_darwin(v114);
  v111 = v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1000035C4(&qword_10006B808, &qword_100054660);
  v24 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v110 = v96 - v25;
  v26 = sub_1000035C4(&qword_10006B810, &qword_100054668);
  v118 = *(v26 - 8);
  v27 = *(v118 + 64);
  v28 = __chkstk_darwin(v26);
  v108 = v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v107 = v96 - v30;
  v31 = sub_10004FFC8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000035C4(&qword_10006B818, &qword_100054670);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v119 = v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = v96 - v40;
  (*(v32 + 104))(v35, enum case for TranslateFeatures.refreshedSystemTranslation(_:), v31);
  v42 = sub_10004FFB8();
  (*(v32 + 8))(v35, v31);
  v43 = 1;
  if (v42)
  {
    v100 = v5;
    v101 = v26;
    v102 = v15;
    v103 = v41;
    v44 = *a1;
    v96[1] = a1[1];
    type metadata accessor for TranslationModel(0);
    sub_10002C8C0(&qword_10006A340, type metadata accessor for TranslationModel);
    sub_100050498();
    swift_getKeyPath();
    sub_1000504A8();

    v99 = v125;
    v98 = v126;
    v97 = v127;
    sub_10002C94C(a1, v18, type metadata accessor for TranslationCardView);
    sub_1000512D8();
    v45 = sub_1000512C8();
    v46 = a1;
    v47 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v45;
    *(v48 + 24) = &protocol witness table for MainActor;
    sub_10002C61C(v18, v48 + v47);
    sub_10002C94C(v46, v18, type metadata accessor for TranslationCardView);
    v49 = sub_1000512C8();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = &protocol witness table for MainActor;
    sub_10002C61C(v18, v50 + v47);
    sub_10004FF48();
    sub_100050F98();
    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v116;
    sub_1000502F8();

    v52 = v113;
    v53 = *(v113 + 48);
    v54 = v115;
    if (v53(v51, 1, v115) == 1)
    {
      sub_10004FD18();
      v55 = v53(v51, 1, v54);
      v41 = v103;
      v56 = v101;
      if (v55 != 1)
      {
        sub_100004444(v51, &qword_10006A2A0, &qword_1000528E0);
      }
    }

    else
    {
      (*(v52 + 32))(v117, v51, v54);
      v41 = v103;
      v56 = v101;
    }

    a1 = v46;
    sub_100028B44(sub_10002F100, "Unable to get list of source locales from viewModel");
    v57 = v111;
    sub_100050128();
    v58 = sub_1000508F8();
    v59 = v110;
    (*(v112 + 32))(v110, v57, v114);
    *&v59[*(v109 + 36)] = v58;
    v60 = sub_100050E78();
    KeyPath = swift_getKeyPath();
    v62 = v59;
    v63 = v108;
    sub_10000360C(v62, v108, &qword_10006B808, &qword_100054660);
    v64 = (v63 + *(v56 + 36));
    *v64 = KeyPath;
    v64[1] = v60;
    v65 = v63;
    v66 = v107;
    sub_10000360C(v65, v107, &qword_10006B810, &qword_100054668);
    sub_10000360C(v66, v41, &qword_10006B810, &qword_100054668);
    v43 = 0;
    v15 = v102;
    v26 = v56;
    v5 = v100;
  }

  (*(v118 + 56))(v41, v43, 1, v26);
  v67 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v68 = v125;
  v69 = v126;
  v70 = a1 + *(v15 + 36);
  v71 = *v70;
  v72 = *(v70 + 1);
  LOBYTE(v128) = v71;
  v129 = v72;
  sub_1000035C4(&qword_10006B018, &qword_100053990);
  sub_100050F38();
  v73 = a1;
  v74 = v125;
  v75 = v126;
  v76 = v127;
  v77 = swift_getKeyPath();
  v78 = v41;
  v79 = v120;
  v80 = &v5[*(v120 + 20)];
  *v80 = v68;
  *(v80 + 1) = v69;
  v5[v79[6]] = 1;
  v81 = &v5[v79[7]];
  *v81 = 0x6554656372756F53;
  *(v81 + 1) = 0xEA00000000007478;
  v82 = &v5[v79[8]];
  LOBYTE(v128) = 0;
  sub_100050F08();
  v83 = v126;
  *v82 = v125;
  *(v82 + 1) = v83;
  v84 = &v5[v79[9]];
  *v84 = v74;
  *(v84 + 1) = v75;
  v84[16] = v76;
  v85 = &v5[v79[10]];
  *v85 = v77;
  *(v85 + 1) = 0;
  v85[16] = 0;
  v86 = v73[7];
  v128 = v73[6];
  v129 = v86;
  sub_1000035C4(&qword_10006B798, &qword_100054508);
  sub_100050F38();
  sub_10002C8C0(&qword_10006B7B8, type metadata accessor for LanguageText);
  v87 = v122;
  sub_100050C68();

  sub_10002C9B4(v5, type metadata accessor for LanguageText);
  v88 = sub_100027A2C();
  v89 = swift_getKeyPath();
  v90 = (v87 + *(v121 + 36));
  *v90 = v89;
  v90[1] = v88;
  v91 = v119;
  sub_10000A00C(v78, v119, &qword_10006B818, &qword_100054670);
  v92 = v123;
  sub_10000A00C(v87, v123, &qword_10006B7A0, &qword_100054558);
  v93 = v124;
  sub_10000A00C(v91, v124, &qword_10006B818, &qword_100054670);
  v94 = sub_1000035C4(&qword_10006B820, &qword_100054678);
  sub_10000A00C(v92, v93 + *(v94 + 48), &qword_10006B7A0, &qword_100054558);
  sub_100004444(v87, &qword_10006B7A0, &qword_100054558);
  sub_100004444(v78, &qword_10006B818, &qword_100054670);
  sub_100004444(v92, &qword_10006B7A0, &qword_100054558);
  return sub_100004444(v91, &qword_10006B818, &qword_100054670);
}

uint64_t sub_10002B028(uint64_t a1)
{
  v2 = sub_1000504C8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100050628();
}

uint64_t sub_10002B0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_100050858();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  __chkstk_darwin(v3);
  v81 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000509A8();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  __chkstk_darwin(v6);
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranslationCardView();
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  __chkstk_darwin(v9 - 8);
  v70 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000035C4(&qword_10006B710, &qword_1000543E8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v70 - v13;
  v73 = sub_1000035C4(&qword_10006B718, &qword_1000543F0);
  v15 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v17 = &v70 - v16;
  v18 = sub_1000035C4(&qword_10006B720, &qword_1000543F8);
  v75 = *(v18 - 8);
  v76 = v18;
  v19 = *(v75 + 64);
  __chkstk_darwin(v18);
  v72 = &v70 - v20;
  v21 = sub_1000035C4(&qword_10006B728, &qword_100054400);
  v22 = *(v21 - 8);
  v85 = v21;
  v86 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v80 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v79 = &v70 - v26;
  v27 = sub_1000035C4(&qword_10006B730, &qword_100054408);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v87 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v70 - v31;
  v33 = sub_1000035C4(&qword_10006B738, &qword_100054410);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v84 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v70 - v37;
  *v38 = sub_100050898();
  *(v38 + 1) = 0;
  v39 = 1;
  v38[16] = 1;
  v40 = sub_1000035C4(&qword_10006B740, &qword_100054418);
  sub_10002BAA4(a1, &v38[*(v40 + 44)]);
  v41 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (v90)
  {

    v42 = *(a1 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000502F8();

    v43 = sub_10004FE88();
    (*(*(v43 - 8) + 56))(v14, 1, 1, v43);
    v44 = v70;
    sub_10002C94C(a1, v70, type metadata accessor for TranslationCardView);
    v45 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v46 = swift_allocObject();
    sub_10002C61C(v44, v46 + v45);
    sub_10004FE98();
    v47 = sub_100027A2C();
    KeyPath = swift_getKeyPath();
    v49 = &v17[*(sub_1000035C4(&qword_10006B750, &unk_1000544E8) + 36)];
    *v49 = KeyPath;
    v49[1] = v47;
    v51 = v73;
    v50 = v74;
    v17[*(v73 + 36)] = 0;
    sub_100050998();
    v52 = sub_10002C6E8();
    v53 = v72;
    sub_100050D78();
    (*(v77 + 8))(v50, v78);
    sub_100004444(v17, &qword_10006B718, &qword_1000543F0);
    sub_100050808();
    v89 = v51;
    v90 = v52;
    swift_getOpaqueTypeConformance2();
    v54 = v80;
    v55 = v76;
    sub_100050D58();

    (*(v75 + 8))(v53, v55);
    sub_1000035C4(&qword_10006B778, &qword_1000544F8);
    v56 = v82;
    v57 = *(v82 + 72);
    v58 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1000541F0;
    sub_100050838();
    sub_100050848();
    v89 = v59;
    sub_10002C8C0(&qword_10006B780, &type metadata accessor for AccessibilityTraits);
    sub_1000035C4(&qword_10006B788, &qword_100054500);
    sub_1000044E8(&qword_10006B790, &qword_10006B788, &qword_100054500);
    v60 = v81;
    v61 = v83;
    sub_100051528();
    v62 = v79;
    v63 = v85;
    sub_1000504D8();
    (*(v56 + 8))(v60, v61);
    sub_100004444(v54, &qword_10006B728, &qword_100054400);
    sub_10000360C(v62, v32, &qword_10006B728, &qword_100054400);
    v39 = 0;
    v64 = v63;
  }

  else
  {
    v64 = v85;
  }

  (*(v86 + 56))(v32, v39, 1, v64);
  v65 = v84;
  sub_10000A00C(v38, v84, &qword_10006B738, &qword_100054410);
  v66 = v87;
  sub_10000A00C(v32, v87, &qword_10006B730, &qword_100054408);
  v67 = v88;
  sub_10000A00C(v65, v88, &qword_10006B738, &qword_100054410);
  v68 = sub_1000035C4(&qword_10006B748, &qword_100054468);
  sub_10000A00C(v66, v67 + *(v68 + 48), &qword_10006B730, &qword_100054408);
  sub_100004444(v32, &qword_10006B730, &qword_100054408);
  sub_100004444(v38, &qword_10006B738, &qword_100054410);
  sub_100004444(v66, &qword_10006B730, &qword_100054408);
  return sub_100004444(v65, &qword_10006B738, &qword_100054410);
}

uint64_t sub_10002BAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v3 = type metadata accessor for LanguageText();
  v4 = *(*(v3 - 1) + 64);
  __chkstk_darwin(v3);
  v6 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1000035C4(&qword_10006B7A0, &qword_100054558);
  v7 = *(*(v92 - 8) + 64);
  v8 = __chkstk_darwin(v92);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = v74 - v11;
  v12 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v85 = v74 - v14;
  v15 = sub_10004FDB8();
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = *(v83 + 64);
  __chkstk_darwin(v15);
  v86 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TranslationCardView();
  v80 = *(v18 - 8);
  v19 = *(v80 + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_1000035C4(&qword_10006B7A8, &qword_100054560);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v81 = v74 - v22;
  v23 = sub_100050138();
  v87 = *(v23 - 8);
  v88 = v23;
  v24 = *(v87 + 64);
  __chkstk_darwin(v23);
  v82 = v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10004FFC8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000035C4(&qword_10006B7B0, &qword_100054568);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v91 = v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v90 = v74 - v35;
  (*(v27 + 104))(v30, enum case for TranslateFeatures.refreshedSystemTranslation(_:), v26);
  v36 = sub_10004FFB8();
  (*(v27 + 8))(v30, v26);
  if (v36)
  {
    v77 = v3;
    v78 = v10;
    v79 = a2;
    LOBYTE(v97) = 0;
    sub_100050FA8();
    v76 = v94;
    v75 = v95;
    v74[1] = v96;
    v37 = v89;
    sub_10002C94C(v89, v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationCardView);
    sub_1000512D8();
    v38 = sub_1000512C8();
    v39 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = &protocol witness table for MainActor;
    sub_10002C61C(v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
    sub_10002C94C(v37, v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationCardView);
    v41 = sub_1000512C8();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = &protocol witness table for MainActor;
    sub_10002C61C(v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v39);
    sub_10004FF48();
    sub_100050F98();
    v43 = *(v37 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = v85;
    sub_1000502F8();

    v46 = v83;
    v45 = v84;
    v47 = *(v83 + 48);
    v48 = v37;
    if (v47(v44, 1, v84) == 1)
    {
      sub_10004FD18();
      v49 = v47(v44, 1, v45);
      v50 = v90;
      if (v49 != 1)
      {
        sub_100004444(v44, &qword_10006A2A0, &qword_1000528E0);
      }
    }

    else
    {
      (*(v46 + 32))(v86, v44, v45);
      v50 = v90;
    }

    sub_100028B44(sub_10002F118, "Unable to get list of target locales from viewModel");
    v54 = v82;
    sub_100050128();
    v53 = v87;
    v55 = v54;
    v52 = v88;
    (*(v87 + 32))(v50, v55, v88);
    v51 = 0;
    a2 = v79;
    v10 = v78;
    v3 = v77;
  }

  else
  {
    v51 = 1;
    v48 = v89;
    v50 = v90;
    v53 = v87;
    v52 = v88;
  }

  (*(v53 + 56))(v50, v51, 1, v52);
  v56 = v48[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v57 = v94;
  v58 = v95;
  KeyPath = swift_getKeyPath();
  v60 = &v6[v3[5]];
  *v60 = v57;
  *(v60 + 1) = v58;
  v6[v3[6]] = 0;
  v61 = &v6[v3[7]];
  *v61 = 0x74616C736E617254;
  *(v61 + 1) = 0xEF747865546E6F69;
  v62 = &v6[v3[8]];
  LOBYTE(v97) = 0;
  sub_100050F08();
  v63 = v95;
  *v62 = v94;
  *(v62 + 1) = v63;
  v64 = &v6[v3[9]];
  *v64 = 0;
  *(v64 + 1) = 0;
  v64[16] = 0;
  v65 = &v6[v3[10]];
  *v65 = KeyPath;
  *(v65 + 1) = 0;
  v65[16] = 0;
  v66 = v48[7];
  v97 = v48[6];
  v98 = v66;
  sub_1000035C4(&qword_10006B798, &qword_100054508);
  sub_100050F38();
  sub_10002C8C0(&qword_10006B7B8, type metadata accessor for LanguageText);
  v67 = v93;
  sub_100050C68();

  sub_10002C9B4(v6, type metadata accessor for LanguageText);
  v68 = sub_100027A2C();
  v69 = swift_getKeyPath();
  v70 = v91;
  v71 = (v67 + *(v92 + 36));
  *v71 = v69;
  v71[1] = v68;
  sub_10000A00C(v50, v70, &qword_10006B7B0, &qword_100054568);
  sub_10000A00C(v67, v10, &qword_10006B7A0, &qword_100054558);
  sub_10000A00C(v70, a2, &qword_10006B7B0, &qword_100054568);
  v72 = sub_1000035C4(&qword_10006B7C0, &qword_100054598);
  sub_10000A00C(v10, a2 + *(v72 + 48), &qword_10006B7A0, &qword_100054558);
  sub_100004444(v67, &qword_10006B7A0, &qword_100054558);
  sub_100004444(v50, &qword_10006B7B0, &qword_100054568);
  sub_100004444(v10, &qword_10006B7A0, &qword_100054558);
  return sub_100004444(v70, &qword_10006B7B0, &qword_100054568);
}

uint64_t sub_10002C540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000505F8();
  *a1 = result;
  return result;
}

uint64_t sub_10002C56C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000505F8();
  *a1 = result;
  return result;
}

uint64_t sub_10002C598(uint64_t *a1)
{
  v1 = *a1;

  return sub_100050608();
}

uint64_t sub_10002C5C4(uint64_t *a1)
{
  v1 = *a1;

  return sub_100050608();
}

uint64_t sub_10002C61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationCardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10002C680()
{
  v1 = *(type metadata accessor for TranslationCardView() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 40);
  sub_10004F4C4();
}

unint64_t sub_10002C6E8()
{
  result = qword_10006B758;
  if (!qword_10006B758)
  {
    sub_10000372C(&qword_10006B718, &qword_1000543F0);
    sub_10002C774();
    sub_10002C85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B758);
  }

  return result;
}

unint64_t sub_10002C774()
{
  result = qword_10006B760;
  if (!qword_10006B760)
  {
    sub_10000372C(&qword_10006B750, &unk_1000544E8);
    sub_10002C8C0(&qword_10006B768, &type metadata accessor for PlayButton);
    sub_1000044E8(&qword_10006B4F8, &qword_10006B500, &unk_100054060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B760);
  }

  return result;
}

unint64_t sub_10002C85C()
{
  result = qword_10006B770;
  if (!qword_10006B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B770);
  }

  return result;
}

uint64_t sub_10002C8C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002C94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002C9B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002CA14()
{
  v1 = (type metadata accessor for TranslationCardView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 56);

  v9 = v1[10];
  v10 = sub_100050BD8();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v0 + v3 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10002CB2C()
{
  v1 = *(type metadata accessor for TranslationCardView() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 24);
  sub_10004F4C4();
}

uint64_t sub_10002CB8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000505D8();
  *a1 = result;
  return result;
}

uint64_t sub_10002CBB8(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000505E8();
}

unint64_t sub_10002CBE4()
{
  result = qword_10006B800;
  if (!qword_10006B800)
  {
    sub_10000372C(&qword_10006B7C8, &qword_1000545E8);
    sub_10002C6E8();
    sub_1000044E8(&qword_10006A110, &qword_10006A118, &qword_100052738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B800);
  }

  return result;
}

uint64_t sub_10002CCC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranslationCardView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  return sub_100028278(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), a1);
}

uint64_t sub_10002CD54()
{
  v1 = (type metadata accessor for TranslationCardView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = v1[10];
  v11 = sub_100050BD8();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = *(v0 + v3 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002CE8C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TranslationCardView() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

unint64_t sub_10002CF20()
{
  result = qword_10006B828;
  if (!qword_10006B828)
  {
    sub_10000372C(&qword_10006B6C0, &qword_100054278);
    sub_1000044E8(&qword_10006B830, &qword_10006B6B0, &qword_100054268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B828);
  }

  return result;
}

uint64_t sub_10002CFEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  return v1;
}

uint64_t sub_10002D060()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService18TranslationContext__isPopoverPresentation;
  v2 = sub_1000035C4(&qword_10006AC10, &qword_1000536D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for TranslationContext()
{
  result = qword_10006B868;
  if (!qword_10006B868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002D15C()
{
  sub_10002D1EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10002D1EC()
{
  if (!qword_10006B878)
  {
    v0 = sub_100050318();
    if (!v1)
    {
      atomic_store(v0, &qword_10006B878);
    }
  }
}

uint64_t sub_10002D248@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TranslationContext();
  result = sub_1000502B8();
  *a1 = result;
  return result;
}

uint64_t sub_10002D288@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v5;
  return result;
}

uint64_t sub_10002D30C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

void sub_10002D384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() startInvocationWithTask:a1 inputMode:a2 invocationType:a3 translateAppContext:0];
  v5 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation;
  v6 = *(v3 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation);
  *(v3 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation) = v4;

  v7 = *(v3 + v5);
  if (v7)
  {
    if (*(v3 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier + 8))
    {
      v8 = *(v3 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier);
      v9 = v7;

      v10 = sub_100051128();
    }

    else
    {
      v9 = v7;
      v10 = 0;
    }

    [v9 startedWithClientIdentifier:v10];
  }
}

void sub_10002D498(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a1;
  v44 = a2;
  v4 = sub_1000035C4(&qword_10006BC08, &qword_100054A80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - v6;
  v8 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = sub_10004FDB8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v42 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v39 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v22 = *(v16 + 48);
  if (v22(v14, 1, v15) == 1)
  {
    sub_100004444(v14, &qword_10006A2A0, &qword_1000528E0);
    v23 = 0;
  }

  else
  {
    v41 = v7;
    v39 = *(v16 + 32);
    v39(v21, v14, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v3;
    sub_1000502F8();

    if (v22(v12, 1, v15) == 1)
    {
      (*(v16 + 8))(v21, v15);
      sub_100004444(v12, &qword_10006A2A0, &qword_1000528E0);
      v23 = 0;
    }

    else
    {
      v24 = v42;
      v39(v42, v12, v15);
      v25 = objc_allocWithZone(_LTLocalePair);
      isa = sub_10004FD88().super.isa;
      v27 = sub_10004FD88().super.isa;
      v23 = [v25 initWithSourceLocale:isa targetLocale:v27];

      v28 = *(v16 + 8);
      v28(v24, v15);
      v28(v21, v15);
    }

    v3 = v40;
    v7 = v41;
  }

  v29 = *(v3 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation);
  if (v29)
  {
    v30 = v29;
    v31 = sub_100051128();
    v32 = *(v3 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_inProgressRequest);
    if (v32 && (v33 = [v32 qssSessionID]) != 0)
    {
      v34 = v33;
      sub_100051158();

      sub_10004FCC8();

      v35 = sub_10004FD08();
      v36 = *(v35 - 8);
      v37 = 0;
      if ((*(v36 + 48))(v7, 1, v35) != 1)
      {
        v37 = sub_10004FCE8().super.isa;
        (*(v36 + 8))(v7, v35);
      }
    }

    else
    {
      v38 = sub_10004FD08();
      (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
      v37 = 0;
    }

    [v30 cancelWithReason:v31 localePair:v23 qssSessionId:v37];

    v23 = v37;
  }
}

void sub_10002D9A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v139 = &v122 - v9;
  v143 = sub_10004FDB8();
  v10 = *(v143 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v143);
  v138 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v133 = &v122 - v15;
  v137 = v16;
  __chkstk_darwin(v14);
  v18 = &v122 - v17;
  v19 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v122 - v21;
  v140 = type metadata accessor for TranslationRequestContext();
  v134 = *(v140 - 8);
  v23 = *(v134 + 64);
  v24 = __chkstk_darwin(v140);
  v136 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v141 = &v122 - v27;
  v135 = v28;
  __chkstk_darwin(v26);
  v30 = (&v122 - v29);
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v31 = sub_100050268();
  v32 = sub_100008BA0(v31, qword_10006E090);
  sub_10004462C(a1, v30, type metadata accessor for TranslationRequestContext);
  v132 = v32;
  v33 = sub_100050248();
  v34 = sub_100051348();
  v35 = os_log_type_enabled(v33, v34);
  v142 = v10;
  v131 = v8;
  if (v35)
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    v37 = a1;
    v38 = v2;
    v39 = v18;
    v40 = v22;
    v41 = [*v30 length];
    sub_1000439A0(v30, type metadata accessor for TranslationRequestContext);
    *(v36 + 4) = v41;
    v22 = v40;
    v18 = v39;
    v2 = v38;
    a1 = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "Starting translation with text of length %ld", v36, 0xCu);
  }

  else
  {
    sub_1000439A0(v30, type metadata accessor for TranslationRequestContext);
  }

  sub_1000384B4();
  v42 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_showConsentOnly;
  *(v2 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_showConsentOnly) = *(a1 + 8);
  v43 = *a1;
  v44 = *(v2 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_attributedSource);
  *(v2 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_attributedSource) = *a1;
  v45 = v43;

  v46 = *(v2 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_ignoredAttributes);
  *(v2 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_ignoredAttributes) = *(a1 + 16);

  if (*(a1 + 9) == 1)
  {
    if (qword_100069F08 != -1)
    {
      swift_once();
    }

    sub_100008BA0(v31, qword_10006E060);
    v47 = sub_100050248();
    v48 = sub_100051338();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Skip first use consent", v49, 2u);
    }

    v50 = sub_1000512F8();
    (*(*(v50 - 8) + 56))(v22, 1, 1, v50);
    v51 = swift_allocObject();
    swift_weakInit();
    sub_1000512D8();

    v52 = sub_1000512C8();
    v53 = swift_allocObject();
    v53[2] = v52;
    v53[3] = &protocol witness table for MainActor;
    v53[4] = v51;

    sub_10002EA44(0, 0, v22, &unk_100054C10, v53);

    goto LABEL_12;
  }

  if ((*(v2 + v42) & 1) == 0)
  {
    sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
    v94 = sub_100051388();
    v95 = sub_1000513A8();

    if (v95 & 1) != 0 || (v96 = sub_100051388(), v97 = sub_100051398(), v96, (v97))
    {
LABEL_12:
      v130 = v45;
      if (qword_100069F08 != -1)
      {
        swift_once();
      }

      sub_100008BA0(v31, qword_10006E060);
      v54 = sub_100050248();
      v55 = sub_100051348();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 67109120;
        sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
        v57 = sub_100051388();
        v58 = sub_1000513A8();

        *(v56 + 4) = v58 & 1;
        _os_log_impl(&_mh_execute_header, v54, v55, "Current user consent: %{BOOL}d", v56, 8u);
      }

      v60 = v139;
      v59 = v140;
      sub_10000A00C(a1 + *(v140 + 48), v139, &qword_10006A2A0, &qword_1000528E0);
      v61 = v142;
      v62 = *(v142 + 48);
      v63 = v62(v60, 1, v143);
      v64 = v141;
      if (v63 == 1)
      {
        sub_100004444(v60, &qword_10006A2A0, &qword_1000528E0);
        v65 = (a1 + *(v59 + 40));
        if (v65[1])
        {
          v66 = *v65;
          v67 = v65[1];
        }

        else
        {
          v100 = [v130 string];
          sub_100051158();
        }

        v101 = sub_100051188();
        v103 = v102;

        v104 = sub_1000512F8();
        (*(*(v104 - 8) + 56))(v22, 1, 1, v104);
        v105 = swift_allocObject();
        swift_weakInit();
        sub_1000512D8();

        v106 = sub_1000512C8();
        v107 = swift_allocObject();
        v107[2] = v106;
        v107[3] = &protocol witness table for MainActor;
        v107[4] = v101;
        v107[5] = v103;
        v107[6] = v105;

        sub_10002EA44(0, 0, v22, &unk_100054BF0, v107);
      }

      else
      {
        v73 = *(v61 + 32);
        v74 = v60;
        v75 = v18;
        v76 = v143;
        v139 = v61 + 32;
        v129 = v73;
        v130 = v22;
        v73(v18, v74, v143);
        v77 = *(v61 + 16);
        v78 = v133;
        v128 = v61 + 16;
        v127 = v77;
        v77(v133, v18, v76);
        sub_10004462C(a1, v64, type metadata accessor for TranslationRequestContext);
        v79 = sub_100050248();
        v80 = sub_100051378();
        if (os_log_type_enabled(v79, v80))
        {
          v124 = v80;
          v125 = v79;
          v126 = v75;
          v81 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v144[0] = v123;
          *v81 = 136446466;
          v82 = sub_10004FD28();
          v83 = v78;
          v84 = v64;
          v86 = v85;
          v87 = *(v61 + 8);
          v132 = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v133 = v87;
          v88 = v143;
          (v87)(v83, v143);
          v89 = sub_100008C04(v82, v86, v144);

          *(v81 + 4) = v89;
          *(v81 + 12) = 2082;
          v90 = v131;
          sub_10000A00C(v84 + *(v140 + 52), v131, &qword_10006A2A0, &qword_1000528E0);
          if (v62(v90, 1, v88) == 1)
          {
            sub_100004444(v90, &qword_10006A2A0, &qword_1000528E0);
            v91 = 0xE500000000000000;
            v92 = 0x3E6C696E3CLL;
            v93 = v133;
          }

          else
          {
            v92 = sub_10004FD28();
            v91 = v108;
            v93 = v133;
            (v133)(v90, v143);
          }

          v109 = v124;
          sub_1000439A0(v141, type metadata accessor for TranslationRequestContext);
          v110 = sub_100008C04(v92, v91, v144);

          *(v81 + 14) = v110;
          v111 = v125;
          _os_log_impl(&_mh_execute_header, v125, v109, "Using host specified locales: %{public}s to %{public}s", v81, 0x16u);
          swift_arrayDestroy();

          v75 = v126;
          v61 = v142;
        }

        else
        {

          sub_1000439A0(v64, type metadata accessor for TranslationRequestContext);
          v98 = *(v61 + 8);
          v132 = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v99 = v78;
          v93 = v98;
          v98(v99, v143);
        }

        v112 = sub_1000512F8();
        v113 = v130;
        (*(*(v112 - 8) + 56))(v130, 1, 1, v112);
        v114 = swift_allocObject();
        swift_weakInit();
        v115 = v138;
        v116 = v143;
        v127(v138, v75, v143);
        v117 = a1;
        v118 = v136;
        sub_10004462C(v117, v136, type metadata accessor for TranslationRequestContext);
        v119 = (*(v61 + 80) + 40) & ~*(v61 + 80);
        v120 = (v137 + *(v134 + 80) + v119) & ~*(v134 + 80);
        v121 = swift_allocObject();
        *(v121 + 2) = 0;
        *(v121 + 3) = 0;
        *(v121 + 4) = v114;
        v129(&v121[v119], v115, v116);
        sub_1000446B4(v118, &v121[v120], type metadata accessor for TranslationRequestContext);
        sub_100034000(0, 0, v113, &unk_100054C00, v121);

        sub_100004444(v113, &qword_10006A7B8, &qword_100054AB0);
        v93(v75, v116);
      }

      return;
    }
  }

  if (qword_100069F08 != -1)
  {
    swift_once();
  }

  sub_100008BA0(v31, qword_10006E060);
  v68 = sub_100050248();
  v69 = sub_100051378();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "Showing first use consent to user", v70, 2u);
  }

  *(v2 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_waitingForUserConsent) = 1;
  LOBYTE(v144[0]) = 4;
  v144[1] = 0;
  v144[2] = 0xE000000000000000;
  v144[3] = 0;
  v144[4] = 0;
  v71 = sub_100051128();
  sub_10004DA5C();
  sub_100009FC4(0, &qword_10006A480, NSObject_ptr);
  isa = sub_1000510D8().super.isa;

  AnalyticsSendEvent();
}

uint64_t sub_10002E884()
{
  v1 = v0;
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v2 = sub_100050268();
  sub_100008BA0(v2, qword_10006E090);
  v3 = sub_100050248();
  v4 = sub_100051338();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cancelling TTS audio", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_originalPlayer);

  sub_10004F074();

  v7 = *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationPlayer);

  sub_10004F074();
}

uint64_t sub_10002E9D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();
}

uint64_t sub_10002EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000A00C(a3, v27 - v11, &qword_10006A7B8, &qword_100054AB0);
  v13 = sub_1000512F8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100004444(v12, &qword_10006A7B8, &qword_100054AB0);
  }

  else
  {
    sub_1000512E8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000512B8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100051198() + 32;
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

      sub_100004444(a3, &qword_10006A7B8, &qword_100054AB0);

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

  sub_100004444(a3, &qword_10006A7B8, &qword_100054AB0);
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

uint64_t sub_10002ED44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000A00C(a3, v27 - v11, &qword_10006A7B8, &qword_100054AB0);
  v13 = sub_1000512F8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100004444(v12, &qword_10006A7B8, &qword_100054AB0);
  }

  else
  {
    sub_1000512E8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000512B8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100051198() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_1000035C4(&qword_10006BC70, &qword_100054C28);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100004444(a3, &qword_10006A7B8, &qword_100054AB0);

      return v24;
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

  sub_100004444(a3, &qword_10006A7B8, &qword_100054AB0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_1000035C4(&qword_10006BC70, &qword_100054C28);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10002F094()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  return v1;
}

void *sub_10002F130(void (*a1)(char *, uint64_t))
{
  v24 = a1;
  v2 = sub_10004FDB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranslationModel.LocaleInfo(0);
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  __chkstk_darwin(v7 - 8);
  v25 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v1;
  sub_1000502F8();

  v10 = v26;
  v11 = v26[2];
  if (v11)
  {
    v26 = _swiftEmptyArrayStorage;
    v21 = v11;
    sub_10000D3C4(0, v11, 0);
    v12 = 0;
    v13 = v26;
    v20 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v19[1] = v3 + 16;
    v14 = (v3 + 8);
    while (v12 < v10[2])
    {
      v15 = v3;
      (*(v3 + 16))(v6, &v20[*(v3 + 72) * v12], v2);
      v24(v6, v23);
      (*v14)(v6, v2);
      v26 = v13;
      v17 = v13[2];
      v16 = v13[3];
      if (v17 >= v16 >> 1)
      {
        sub_10000D3C4(v16 > 1, v17 + 1, 1);
        v13 = v26;
      }

      ++v12;
      v13[2] = v17 + 1;
      sub_1000446B4(v25, v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17, type metadata accessor for TranslationModel.LocaleInfo);
      v3 = v15;
      if (v21 == v12)
      {

        return v13;
      }
    }

    __break(1u);
    (*v14)(v6, v2);

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_10002F458()
{
  v1 = sub_10004FFE8();
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationResult);
  if (!v6)
  {
    return;
  }

  v35 = v5;
  v32 = v6;
  v7 = [v32 translations];
  sub_100009FC4(0, &qword_10006BC68, _LTTranslationCandidate_ptr);
  v8 = sub_100051248();

  v40 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
LABEL_39:
    v9 = sub_100051608();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
    v38 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v10 = 0;
  v38 = _swiftEmptyArrayStorage;
  do
  {
    v11 = v10;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = sub_1000515D8();
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v14 = [v12 senses];
      sub_100009FC4(0, &qword_10006BCC0, _LTTranslationSense_ptr);
      v15 = sub_100051248();

      if (v15 >> 62)
      {
        break;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

LABEL_13:

      ++v11;
      if (v10 == v9)
      {
        goto LABEL_26;
      }
    }

    if (!sub_100051608())
    {
      goto LABEL_13;
    }

LABEL_17:
    if ((v15 & 0xC000000000000001) != 0)
    {
      sub_1000515D8();
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v16 = *(v15 + 32);
    }

    sub_100051228();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v17 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100051278();
    }

    sub_100051298();
    v38 = v40;
  }

  while (v10 != v9);
LABEL_26:

  if (v38 >> 62)
  {
    v18 = v38;
    v19 = sub_100051608();
    if (v19)
    {
      goto LABEL_28;
    }

    goto LABEL_41;
  }

  v18 = v38;
  v19 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_41:

    return;
  }

LABEL_28:
  v40 = _swiftEmptyArrayStorage;
  sub_10000D44C(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
    v20 = 0;
    v21 = v40;
    v22 = v18;
    v33 = v37 + 32;
    v34 = v18 & 0xC000000000000001;
    do
    {
      if (v34)
      {
        v23 = sub_1000515D8();
      }

      else
      {
        v23 = *(v22 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = [v23 definition];
      sub_100051158();

      v26 = [v24 labels];
      v27 = sub_100051248();

      v39 = v27;
      sub_1000035C4(&qword_10006B5E0, &qword_100054ED0);
      sub_1000044E8(&qword_10006B5E8, &qword_10006B5E0, &qword_100054ED0);
      sub_100051108();

      v28 = v35;
      sub_10004FFD8();

      v40 = v21;
      v30 = v21[2];
      v29 = v21[3];
      if (v30 >= v29 >> 1)
      {
        sub_10000D44C(v29 > 1, v30 + 1, 1);
        v21 = v40;
      }

      ++v20;
      v21[2] = v30 + 1;
      (*(v37 + 32))(v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30, v28, v36);
      v22 = v38;
    }

    while (v19 != v20);
  }
}

uint64_t sub_10002F980()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  return v1;
}

uint64_t sub_10002F9F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v5;
  return result;
}

uint64_t sub_10002FA74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_10002FAE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  return v1;
}

uint64_t sub_10002FB5C()
{
  sub_100009FC4(0, &qword_10006BCC8, OS_os_log_ptr);
  result = sub_1000514D8();
  qword_10006E0C0 = result;
  return result;
}

unint64_t sub_10002FBCC()
{
  v1 = v0;
  v2 = sub_10004FE78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranslationModel.TranslationError(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004462C(v1, v10, type metadata accessor for TranslationModel.TranslationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v6, v10, v2);
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1000515C8(38);

      v19 = 0xD000000000000024;
      v20 = 0x800000010005F880;
      sub_100042294(&qword_10006BCA8, &type metadata accessor for LocalePair);
      v22._countAndFlagsBits = sub_100051638();
      sub_1000511E8(v22);

      v18 = v19;
      (*(v3 + 8))(v6, v2);
      return v18;
    }

    v13 = *v10;
    v14 = v10[1];
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1000515C8(23);

    v19 = 0xD000000000000015;
    v20 = 0x800000010005F8B0;
    if (v14)
    {
      v15._countAndFlagsBits = v13;
    }

    else
    {
      v15._countAndFlagsBits = 7104878;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v15._object = v16;
    sub_1000511E8(v15);

    return v19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v17 = *v10;
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1000515C8(42);
    v21._countAndFlagsBits = 0xD000000000000028;
    v21._object = 0x800000010005F850;
    sub_1000511E8(v21);
    sub_100051328();
    return v19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_10002FF28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  return v1;
}

double sub_10002FFD0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100030060(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

Swift::Int sub_1000300F8()
{
  v1 = *v0;
  sub_1000516C8();
  sub_1000516D8(v1);
  return sub_1000516F8();
}

Swift::Int sub_10003016C()
{
  v1 = *v0;
  sub_1000516C8();
  sub_1000516D8(v1);
  return sub_1000516F8();
}

uint64_t sub_1000301B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v5;
  return result;
}

uint64_t sub_100030230(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_1000302A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  return v1;
}

uint64_t sub_100030318()
{
  v1 = v0;
  v2 = sub_10004FE28();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel____lazy_storage___languagesService;
  if (*(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel____lazy_storage___languagesService))
  {
    v7 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel____lazy_storage___languagesService);
  }

  else
  {
    (*(v5 + 104))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TranslationTaskHint.system(_:));
    v8 = sub_10004FF88();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_10004FF68();
    v11 = *(v1 + v6);
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_10003043C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = sub_10004FF08();
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v57 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_1000035C4(&qword_10006AE58, &qword_1000538B8);
  v9 = *(*(v60 - 1) + 64);
  __chkstk_darwin(v60);
  v63 = &v55[-v10];
  v11 = sub_1000035C4(&qword_10006AE60, &qword_1000538C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v58 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v17 = &v55[-v16];
  __chkstk_darwin(v15);
  v66 = &v55[-v18];
  v19 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v55[-v21];
  v23 = sub_10004FDB8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v55[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = a2;
  sub_1000502F8();

  v28 = (*(v24 + 48))(v22, 1, v23);
  v67 = a1;
  v64 = v23;
  if (v28 == 1)
  {
    sub_100004444(v22, &qword_10006A2A0, &qword_1000528E0);
    v29 = 1;
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
    v30 = objc_allocWithZone(_LTLocalePair);
    isa = sub_10004FD88().super.isa;
    v32 = sub_10004FD88().super.isa;
    v33 = [v30 initWithSourceLocale:isa targetLocale:v32];

    LODWORD(v32) = [v33 isVariantPair];
    (*(v24 + 8))(v27, v23);
    v29 = v32 ^ 1;
  }

  sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
  v34 = sub_100051388();
  v35 = sub_100051398();

  v36 = v66;
  if (v35)
  {
    v56 = v29;
    sub_100030318();
    sub_10004FF78();

    sub_100051268();

    v37 = v61;
    v38 = v62;
    (*(v62 + 104))(v17, enum case for LanguageState.installed(_:), v61);
    (*(v38 + 56))(v17, 0, 1, v37);
    v39 = *(v60 + 12);
    v40 = v63;
    sub_10000A00C(v36, v63, &qword_10006AE60, &qword_1000538C0);
    v41 = v37;
    sub_10000A00C(v17, &v40[v39], &qword_10006AE60, &qword_1000538C0);
    v42 = *(v38 + 48);
    if (v42(v40, 1, v41) == 1)
    {
      sub_100004444(v17, &qword_10006AE60, &qword_1000538C0);
      v40 = v63;
      sub_100004444(v36, &qword_10006AE60, &qword_1000538C0);
      v43 = v42(&v40[v39], 1, v41);
      v44 = v64;
      if (v43 == 1)
      {
        sub_100004444(v40, &qword_10006AE60, &qword_1000538C0);
        v45 = 1;
LABEL_13:
        LOBYTE(v29) = v56 & v45;
        v46 = v67;
        goto LABEL_14;
      }
    }

    else
    {
      v60 = v17;
      v47 = v58;
      sub_10000A00C(v40, v58, &qword_10006AE60, &qword_1000538C0);
      v48 = v42(&v40[v39], 1, v41);
      v44 = v64;
      if (v48 != 1)
      {
        v49 = v62;
        v50 = v57;
        (*(v62 + 32))(v57, &v40[v39], v41);
        sub_100042294(&qword_10006AE70, &type metadata accessor for LanguageState);
        v51 = v41;
        v45 = sub_100051118();
        v52 = *(v49 + 8);
        v52(v50, v51);
        sub_100004444(v60, &qword_10006AE60, &qword_1000538C0);
        sub_100004444(v66, &qword_10006AE60, &qword_1000538C0);
        v52(v47, v51);
        sub_100004444(v63, &qword_10006AE60, &qword_1000538C0);
        goto LABEL_13;
      }

      sub_100004444(v60, &qword_10006AE60, &qword_1000538C0);
      sub_100004444(v66, &qword_10006AE60, &qword_1000538C0);
      (*(v62 + 8))(v47, v41);
    }

    sub_100004444(v40, &qword_10006AE58, &qword_1000538B8);
    v45 = 0;
    goto LABEL_13;
  }

  v46 = v67;
  v44 = v64;
LABEL_14:
  v53 = v65;
  (*(v24 + 16))(v65, v46, v44);
  result = type metadata accessor for TranslationModel.LocaleInfo(0);
  *(v53 + *(result + 20)) = v29;
  return result;
}

uint64_t sub_100030B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v56 = sub_10004FF08();
  v58 = *(v56 - 8);
  v5 = *(v58 + 64);
  __chkstk_darwin(v56);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000035C4(&qword_10006AE58, &qword_1000538B8);
  v7 = *(*(v55 - 1) + 64);
  __chkstk_darwin(v55);
  v53 = &v49 - v8;
  v9 = sub_1000035C4(&qword_10006AE60, &qword_1000538C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v52 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v49 - v14;
  __chkstk_darwin(v13);
  v57 = &v49 - v16;
  v17 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v49 - v19;
  v21 = sub_10004FDB8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = a2;
  sub_1000502F8();

  v26 = (*(v22 + 48))(v20, 1, v21);
  v60 = a1;
  if (v26 == 1)
  {
    sub_100004444(v20, &qword_10006A2A0, &qword_1000528E0);
    goto LABEL_5;
  }

  (*(v22 + 32))(v25, v20, v21);
  v27 = objc_allocWithZone(_LTLocalePair);
  isa = sub_10004FD88().super.isa;
  v29 = sub_10004FD88().super.isa;
  v30 = [v27 initWithSourceLocale:isa targetLocale:v29];

  LOBYTE(v29) = [v30 isVariantPair];
  (*(v22 + 8))(v25, v21);
  if ((v29 & 1) == 0)
  {
LABEL_5:
    sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
    v32 = sub_100051388();
    v33 = sub_100051398();

    if (v33)
    {
      v50 = v21;
      sub_100030318();
      sub_10004FF78();

      v34 = v53;
      v35 = v57;
      sub_100051268();

      v36 = v58;
      v37 = v56;
      (*(v58 + 104))(v15, enum case for LanguageState.installed(_:), v56);
      (*(v36 + 56))(v15, 0, 1, v37);
      v38 = *(v55 + 12);
      sub_10000A00C(v35, v34, &qword_10006AE60, &qword_1000538C0);
      sub_10000A00C(v15, v34 + v38, &qword_10006AE60, &qword_1000538C0);
      v39 = *(v36 + 48);
      if (v39(v34, 1, v37) == 1)
      {
        sub_100004444(v15, &qword_10006AE60, &qword_1000538C0);
        sub_100004444(v35, &qword_10006AE60, &qword_1000538C0);
        v40 = v39(v34 + v38, 1, v37);
        v21 = v50;
        if (v40 == 1)
        {
          sub_100004444(v34, &qword_10006AE60, &qword_1000538C0);
          goto LABEL_9;
        }
      }

      else
      {
        v55 = v15;
        v41 = v52;
        sub_10000A00C(v34, v52, &qword_10006AE60, &qword_1000538C0);
        v42 = v39(v34 + v38, 1, v37);
        v21 = v50;
        if (v42 != 1)
        {
          v43 = v58;
          v44 = v34 + v38;
          v45 = v51;
          (*(v58 + 32))(v51, v44, v37);
          sub_100042294(&qword_10006AE70, &type metadata accessor for LanguageState);
          v31 = sub_100051118();
          v46 = *(v43 + 8);
          v46(v45, v37);
          sub_100004444(v55, &qword_10006AE60, &qword_1000538C0);
          sub_100004444(v57, &qword_10006AE60, &qword_1000538C0);
          v46(v41, v37);
          sub_100004444(v34, &qword_10006AE60, &qword_1000538C0);
          goto LABEL_14;
        }

        sub_100004444(v55, &qword_10006AE60, &qword_1000538C0);
        sub_100004444(v57, &qword_10006AE60, &qword_1000538C0);
        (*(v58 + 8))(v41, v37);
      }

      sub_100004444(v34, &qword_10006AE58, &qword_1000538B8);
      v31 = 0;
      goto LABEL_14;
    }

LABEL_9:
    v31 = 1;
    goto LABEL_14;
  }

  v31 = 0;
LABEL_14:
  v47 = v59;
  (*(v22 + 16))(v59, v60, v21);
  result = type metadata accessor for TranslationModel.LocaleInfo(0);
  *(v47 + *(result + 20)) = v31 & 1;
  return result;
}

id sub_1000312B0()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel____lazy_storage___sharedFavorites;
  v2 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel____lazy_storage___sharedFavorites);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel____lazy_storage___sharedFavorites);
  }

  else
  {
    v4 = v0;
    sub_100050068();
    v5 = sub_100050018();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_100031320@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_1000035C4(&qword_10006AA48, &qword_100053240);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v50 = &v39 - v4;
  v44 = sub_10004FBD8();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v44);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v39 - v9;
  v10 = sub_10004FDB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v48 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v39 - v19;
  v21 = sub_10004FC38();
  v45 = *(v21 - 8);
  v46 = v21;
  v22 = *(v45 + 64);
  __chkstk_darwin(v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004FC28();
  sub_10004FC18();
  sub_1000035C4(&qword_10006A7F0, &qword_100053050);
  v42 = *(v5 + 72);
  v43 = v5;
  v25 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000530B0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v41 = v25;
  sub_10004FBC8();

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v1;
  sub_1000502F8();

  v27 = *(v11 + 48);
  if (v27(v20, 1, v10))
  {
    sub_100004444(v20, &qword_10006A2A0, &qword_1000528E0);
    v28 = v10;
    v29 = v48;
  }

  else
  {
    (*(v11 + 16))(v14, v20, v10);
    sub_100004444(v20, &qword_10006A2A0, &qword_1000528E0);
    sub_10004FD38();
    (*(v11 + 8))(v14, v10);
    sub_10004FBC8();

    v31 = *(v26 + 16);
    v30 = *(v26 + 24);
    v28 = v10;
    if (v31 >= v30 >> 1)
    {
      v26 = sub_10000D1CC(v30 > 1, v31 + 1, 1, v26);
    }

    v29 = v48;
    *(v26 + 16) = v31 + 1;
    (*(v43 + 32))(v26 + v41 + v31 * v42, v40, v44);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (v27(v29, 1, v28))
  {
    sub_100004444(v29, &qword_10006A2A0, &qword_1000528E0);
    v32 = v50;
  }

  else
  {
    (*(v11 + 16))(v14, v29, v28);
    sub_100004444(v29, &qword_10006A2A0, &qword_1000528E0);
    sub_10004FD38();
    (*(v11 + 8))(v14, v28);
    v33 = v39;
    sub_10004FBC8();

    v35 = *(v26 + 16);
    v34 = *(v26 + 24);
    v32 = v50;
    if (v35 >= v34 >> 1)
    {
      v26 = sub_10000D1CC(v34 > 1, v35 + 1, 1, v26);
    }

    *(v26 + 16) = v35 + 1;
    (*(v43 + 32))(v26 + v41 + v35 * v42, v33, v44);
  }

  sub_10004FBE8();
  sub_10004FC08();
  v36 = sub_10004FCB8();
  v37 = *(v36 - 8);
  result = (*(v37 + 48))(v32, 1, v36);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v45 + 8))(v24, v46);

    return (*(v37 + 32))(v47, v32, v36);
  }

  return result;
}

uint64_t sub_100031A54()
{
  v0 = type metadata accessor for TranslationModel.TranslationError(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (v6[1])
  {
    sub_1000035C4(&qword_10006BC90, &qword_100054E28);
    if (swift_dynamicCast())
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 4)
      {
LABEL_6:

        return 1;
      }

      if (!EnumCaseMultiPayload)
      {
        sub_1000439A0(v3, type metadata accessor for TranslationModel.TranslationError);
        goto LABEL_6;
      }

      sub_1000439A0(v3, type metadata accessor for TranslationModel.TranslationError);
    }
  }

  return 0;
}

uint64_t sub_100031BD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  return v1;
}

uint64_t sub_100031C44()
{
  v1 = v0;
  v2 = sub_1000035C4(&qword_10006BC10, &unk_100054A88);
  v181 = *(v2 - 8);
  v182 = v2;
  v3 = *(v181 + 64);
  __chkstk_darwin(v2);
  v180 = &v150 - v4;
  v179 = sub_1000035C4(&qword_10006AC00, &qword_1000536C0);
  v178 = *(v179 - 8);
  v5 = *(v178 + 64);
  __chkstk_darwin(v179);
  v177 = &v150 - v6;
  v173 = sub_1000035C4(&qword_10006BC18, &qword_100054A98);
  v171 = *(v173 - 8);
  v7 = *(v171 + 64);
  v8 = __chkstk_darwin(v173);
  v168 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v167 = &v150 - v10;
  v172 = sub_1000035C4(&qword_10006BC20, &qword_100054AA0);
  v170 = *(v172 - 8);
  v11 = *(v170 + 64);
  __chkstk_darwin(v172);
  v169 = &v150 - v12;
  v176 = sub_1000035C4(&qword_10006BC28, &qword_100054AA8);
  v175 = *(v176 - 8);
  v13 = *(v175 + 64);
  __chkstk_darwin(v176);
  v174 = &v150 - v14;
  v166 = sub_100051478();
  v165 = *(v166 - 8);
  v15 = *(v165 + 64);
  __chkstk_darwin(v166);
  v164 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v163 = &v150 - v19;
  v192 = sub_1000035C4(&qword_10006BC00, &unk_100054A28);
  v161 = *(v192 - 8);
  v20 = *(v161 + 64);
  __chkstk_darwin(v192);
  v160 = &v150 - v21;
  v159 = sub_1000035C4(&qword_10006BBF8, &qword_100054A20);
  v158 = *(v159 - 8);
  v22 = *(v158 + 64);
  __chkstk_darwin(v159);
  v157 = &v150 - v23;
  v156 = sub_1000035C4(&qword_10006BBF0, &qword_100054A18);
  v155 = *(v156 - 8);
  v24 = *(v155 + 64);
  __chkstk_darwin(v156);
  v154 = &v150 - v25;
  v153 = sub_10004FFC8();
  v152 = *(v153 - 8);
  v26 = *(v152 + 64);
  __chkstk_darwin(v153);
  v151 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000035C4(&qword_10006AC10, &qword_1000536D0);
  v196 = *(v28 - 8);
  v197 = v28;
  v29 = *(v196 + 64);
  __chkstk_darwin(v28);
  v191 = &v150 - v30;
  v186 = sub_1000035C4(&qword_10006BBE8, &unk_100054A08);
  v193 = *(v186 - 8);
  v31 = *(v193 + 64);
  __chkstk_darwin(v186);
  v183 = &v150 - v32;
  v33 = sub_1000035C4(&qword_10006BBE0, &qword_100054A00);
  v194 = *(v33 - 8);
  v195 = v33;
  v34 = *(v194 + 64);
  __chkstk_darwin(v33);
  v185 = &v150 - v35;
  v184 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v36 = *(*(v184 - 8) + 64);
  v37 = __chkstk_darwin(v184);
  v150 = &v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v188 = (&v150 - v40);
  __chkstk_darwin(v39);
  v42 = &v150 - v41;
  v190 = sub_1000035C4(&qword_10006BBD8, &qword_1000549F8);
  v43 = *(v190 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v190);
  v46 = &v150 - v45;
  v47 = sub_1000035C4(&qword_10006BBD0, &qword_1000549F0);
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  v51 = &v150 - v50;
  v52 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__suggestedLocales;
  v198 = 0;
  sub_1000035C4(&qword_10006AE48, &qword_100053898);
  sub_1000502D8();
  v53 = *(v48 + 32);
  v53(v1 + v52, v51, v47);
  v54 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__lowConfidenceLocales;
  v198 = 0;
  sub_1000502D8();
  v53(v1 + v54, v51, v47);
  v55 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__error;
  v198 = 0;
  sub_1000035C4(&qword_10006BA28, &qword_1000547E0);
  sub_1000502D8();
  (*(v43 + 32))(v1 + v55, v46, v190);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_attributedSource) = 0;
  *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_ignoredAttributes) = &_swiftEmptyArrayStorage;
  v56 = v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__sourceLocale;
  v57 = sub_10004FDB8();
  v58 = *(v57 - 8);
  v59 = *(v58 + 56);
  v60 = 1;
  v189 = v57;
  v190 = v58 + 56;
  v187 = v59;
  (v59)(v42, 1, 1);
  sub_10000A00C(v42, v188, &qword_10006A2A0, &qword_1000528E0);
  v61 = v185;
  sub_1000502D8();
  v62 = v42;
  sub_100004444(v42, &qword_10006A2A0, &qword_1000528E0);
  v63 = *(v194 + 32);
  v162 = v56;
  v194 += 32;
  v63(v56, v61, v195);
  v64 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__sourceText;
  v198 = 0;
  v199 = 0;
  sub_1000035C4(&qword_10006A2B8, &qword_100052930);
  v65 = v183;
  sub_1000502D8();
  v66 = *(v193 + 32);
  v193 += 32;
  v66(v1 + v64, v65, v186);
  v67 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__sourceLocaleWasDetected;
  LOBYTE(v198) = 0;
  v68 = v191;
  sub_1000502D8();
  v69 = *(v196 + 32);
  v196 += 32;
  v188 = v69;
  (v69)(v1 + v67, v68, v197);
  v70 = v152;
  v71 = v151;
  v72 = v153;
  (*(v152 + 104))(v151, enum case for TranslateFeatures.refreshedSystemTranslation(_:), v153);
  LOBYTE(v67) = sub_10004FFB8();
  v73 = v71;
  v74 = v150;
  (*(v70 + 8))(v73, v72);
  if (v67)
  {
    sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
    v75 = sub_100051388();
    sub_1000513C8();
    v77 = v76;

    if (v77)
    {
      sub_10004FD18();
      v60 = 0;
    }
  }

  v187(v74, v60, 1, v189);
  v78 = v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__targetLocale;
  sub_10000A00C(v74, v62, &qword_10006A2A0, &qword_1000528E0);
  v79 = v185;
  sub_1000502D8();
  sub_100004444(v74, &qword_10006A2A0, &qword_1000528E0);
  v184 = v78;
  v63(v78, v79, v195);
  v80 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__targetText;
  v198 = 0;
  v199 = 0;
  v81 = v183;
  sub_1000502D8();
  v66(v1 + v80, v81, v186);
  v82 = (v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler);
  *v82 = 0;
  v82[1] = 0;
  v83 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__translationAnnotation;
  LOBYTE(v198) = 2;
  sub_1000035C4(&qword_10006BA48, &unk_100054818);
  v84 = v154;
  sub_1000502D8();
  (*(v155 + 32))(v1 + v83, v84, v156);
  v85 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__availableLocales;
  v198 = &_swiftEmptyArrayStorage;
  sub_1000035C4(&unk_10006B420, "$J");
  v86 = v157;
  sub_1000502D8();
  (*(v158 + 32))(v1 + v85, v86, v159);
  v87 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__replacementAvailable;
  LOBYTE(v198) = 0;
  v88 = v191;
  sub_1000502D8();
  v89 = v197;
  v90 = v188;
  (v188)(v1 + v87, v88, v197);
  v91 = v90;
  *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel____lazy_storage___languagesService) = 0;
  *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_showConsentOnly) = 0;
  v92 = (v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__firstUseConsent);
  sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
  v93 = sub_100051388();
  LOBYTE(v86) = sub_1000513A8();

  LOBYTE(v198) = v86 & 1;
  sub_1000502D8();
  v185 = v92;
  v91(v92, v88, v89);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationResult) = 0;
  v94 = v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__selectedDisambiguation;
  v198 = 0;
  v95 = v160;
  sub_1000502D8();
  v96 = *(v161 + 32);
  v186 = v94;
  v96(v94, v95, v192);
  v97 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_cplIntervalID;
  v98 = sub_100050228();
  (*(*(v98 - 8) + 56))(v1 + v97, 1, 1, v98);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_waitingForUserConsent) = 0;
  v194 = v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_subscriptions;
  *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_subscriptions) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel____lazy_storage___sharedFavorites) = 0;
  v99 = (v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier);
  *v99 = 0;
  v99[1] = 0;
  *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_requestOrigin) = 0;
  v100 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_originalPlayer;
  v101 = type metadata accessor for VoicePlayback();
  v102 = *(v101 + 48);
  v103 = *(v101 + 52);
  v104 = swift_allocObject();
  LOBYTE(v198) = 0;
  sub_1000502D8();
  v105 = (v104 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier);
  *v105 = 0;
  v105[1] = 0;
  v106 = (v104 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation);
  *v106 = 0;
  v106[1] = 0;
  v107 = (v104 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_text);
  *v107 = 0;
  v107[1] = 0;
  v108 = v189;
  v109 = v187;
  v187(v104 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_locale, 1, 1, v189);
  v110 = (v104 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID);
  *v110 = 0;
  v110[1] = 0;
  v193 = v100;
  *(v1 + v100) = v104;
  v111 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationPlayer;
  v112 = *(v101 + 48);
  v113 = *(v101 + 52);
  v114 = swift_allocObject();
  LOBYTE(v198) = 0;
  sub_1000502D8();
  v115 = (v114 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier);
  *v115 = 0;
  v115[1] = 0;
  v116 = (v114 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation);
  *v116 = 0;
  v116[1] = 0;
  v117 = (v114 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_text);
  *v117 = 0;
  v117[1] = 0;
  v109(v114 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_locale, 1, 1, v108);
  v118 = (v114 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID);
  *v118 = 0;
  v118[1] = 0;
  v190 = v111;
  *(v1 + v111) = v114;
  v119 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__isFavorite;
  LOBYTE(v198) = 0;
  sub_1000502D8();
  (v188)(v1 + v119, v88, v197);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation) = 0;
  *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_inProgressRequest) = 0;
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v120 = sub_100050268();
  sub_100008BA0(v120, qword_10006E090);
  v121 = sub_100050248();
  v122 = sub_100051348();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    *v123 = 0;
    _os_log_impl(&_mh_execute_header, v121, v122, "in TranslationModel.init()", v123, 2u);
  }

  v124 = sub_1000512F8();
  v125 = v163;
  (*(*(v124 - 8) + 56))(v163, 1, 1, v124);
  sub_1000512D8();

  v126 = sub_1000512C8();
  v127 = swift_allocObject();
  v127[2] = v126;
  v127[3] = &protocol witness table for MainActor;
  v127[4] = v1;
  sub_10002EA44(0, 0, v125, &unk_100054AC0, v127);

  v128 = [objc_opt_self() defaultCenter];
  v129 = v164;
  sub_100051488();

  swift_allocObject();
  swift_weakInit();
  sub_100042294(&qword_10006BC30, &type metadata accessor for NSNotificationCenter.Publisher);

  v130 = v166;
  sub_100050358();

  (*(v165 + 8))(v129, v130);
  swift_beginAccess();
  v196 = sub_1000035C4(&qword_10006BC38, &qword_100054AC8);
  sub_1000044E8(&qword_10006BC40, &qword_10006BC38, &qword_100054AC8);
  sub_100050288();
  swift_endAccess();

  swift_beginAccess();
  v131 = v167;
  sub_1000502E8();
  swift_endAccess();
  swift_beginAccess();
  v132 = v168;
  sub_1000502E8();
  swift_endAccess();
  sub_1000044E8(&qword_10006BC48, &qword_10006BC18, &qword_100054A98);
  v133 = v169;
  v134 = v173;
  sub_100050328();
  v135 = *(v171 + 8);
  v135(v132, v134);
  v135(v131, v134);
  sub_1000044E8(&qword_10006BC50, &qword_10006BC20, &qword_100054AA0);
  v136 = v174;
  v137 = v172;
  sub_100050338();
  (*(v170 + 8))(v133, v137);
  v138 = swift_allocObject();
  swift_weakInit();
  v139 = swift_allocObject();
  *(v139 + 16) = sub_1000412F0;
  *(v139 + 24) = v138;
  sub_1000044E8(&qword_10006BC58, &qword_10006BC28, &qword_100054AA8);
  v140 = v176;
  sub_100050358();

  (*(v175 + 8))(v136, v140);
  swift_beginAccess();
  sub_100050288();
  swift_endAccess();

  swift_beginAccess();
  v141 = v177;
  sub_1000502E8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_1000044E8(&qword_10006AC20, &qword_10006AC00, &qword_1000536C0);
  v142 = v179;
  sub_100050358();

  (*(v178 + 8))(v141, v142);
  swift_beginAccess();
  sub_100050288();
  swift_endAccess();

  swift_beginAccess();
  v143 = v180;
  sub_1000502E8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();

  sub_1000044E8(&qword_10006BC60, &qword_10006BC10, &unk_100054A88);
  v144 = v182;
  sub_100050358();

  (*(v181 + 8))(v143, v144);
  swift_beginAccess();
  sub_100050288();
  swift_endAccess();

  v145 = *(v1 + v193) + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation;
  v146 = *(v145 + 8);
  *v145 = xmmword_1000547A0;

  v147 = *(v1 + v190) + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation;
  v148 = *(v147 + 8);
  *v147 = xmmword_1000547B0;

  return v1;
}

uint64_t sub_1000335F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_10004FDB8();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_1000512D8();
  v4[26] = sub_1000512C8();
  v9 = sub_1000512B8();
  v4[27] = v9;
  v4[28] = v8;

  return _swift_task_switch(sub_1000336F4, v9, v8);
}

uint64_t sub_1000336F4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100033820;
  v2 = swift_continuation_init();
  v0[17] = sub_1000035C4(&qword_10006BCD8, &qword_100054F00);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100033BF4;
  v0[13] = &unk_1000674F8;
  v0[14] = v2;
  [v1 availableLocalePairsForTask:1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100033820()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *v0;

  return _swift_task_switch(sub_100033928, v2, v1);
}

uint64_t sub_100033928()
{
  v1 = v0[26];

  v3 = v0[18];
  if (v3 >> 62)
  {
    result = sub_100051608();
    v4 = result;
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v21 = v3 & 0xC000000000000001;
  v22 = v3;
  v6 = (v0[23] + 8);
  do
  {
    if (v21)
    {
      v7 = sub_1000515D8();
    }

    else
    {
      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v10 = v0[24];
    v9 = v0[25];
    v11 = v0[22];
    ++v5;
    v12 = [v7 sourceLocale];
    sub_10004FD98();

    sub_10004247C(v9, v10);
    v13 = *v6;
    (*v6)(v9, v11);
    v14 = [v8 targetLocale];
    sub_10004FD98();

    sub_10004247C(v9, v10);
    v13(v9, v11);
    v3 = v22;
  }

  while (v4 != v5);
LABEL_11:

  v15 = v0[25];
  v23 = v0[24];
  v17 = v0[22];
  v16 = v0[23];
  v18 = v0[21];
  v0[19] = &_swiftEmptySetSingleton;
  sub_10004FDA8();
  sub_1000035C4(&qword_10006BCE0, &qword_100054F08);
  sub_1000044E8(&qword_10006BCE8, &qword_10006BCE0, &qword_100054F08);
  v19 = sub_100051218();
  (*(v16 + 8))(v15, v17);

  swift_getKeyPath();
  swift_getKeyPath();
  v0[20] = v19;

  sub_100050308();

  v20 = v0[1];

  return v20();
}

uint64_t sub_100033BF4(uint64_t a1)
{
  v1 = *sub_100009F34((a1 + 32), *(a1 + 56));
  sub_100009FC4(0, &qword_10006BD00, _LTLocalePair_ptr);
  **(*(v1 + 64) + 40) = sub_100051248();

  return _swift_continuation_resume(v1);
}

uint64_t sub_100033C78()
{
  v0 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1000512F8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_100034000(0, 0, v3, &unk_100054EE8, v6);

  return sub_100004444(v3, &qword_10006A7B8, &qword_100054AB0);
}

uint64_t sub_100033DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_100033E08, 0, 0);
}

uint64_t sub_100033E08()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1000512D8();
    *(v0 + 64) = sub_1000512C8();
    v4 = sub_1000512B8();

    return _swift_task_switch(sub_100033F00, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100033F00()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
  v3 = sub_100051388();
  v4 = sub_1000513A8();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = v4 & 1;
  sub_100050308();

  return _swift_task_switch(sub_100033FD8, 0, 0);
}

uint64_t sub_100034000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000A00C(a3, v27 - v11, &qword_10006A7B8, &qword_100054AB0);
  v13 = sub_1000512F8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100004444(v12, &qword_10006A7B8, &qword_100054AB0);
  }

  else
  {
    sub_1000512E8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000512B8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100051198() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_1000035C4(&qword_10006BC70, &qword_100054C28);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
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

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_1000035C4(&qword_10006BC70, &qword_100054C28);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000342D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000A00C(a3, v27 - v11, &qword_10006A7B8, &qword_100054AB0);
  v13 = sub_1000512F8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100004444(v12, &qword_10006A7B8, &qword_100054AB0);
  }

  else
  {
    sub_1000512E8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000512B8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100051198() + 32;
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

uint64_t sub_100034594(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004FDB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_1000035C4(&qword_10006A298, &qword_100054E10);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - v19;
  v21 = *(v18 + 48);
  v42 = a1;
  sub_10000A00C(a1, &v38 - v19, &qword_10006A2A0, &qword_1000528E0);
  v43 = a2;
  sub_10000A00C(a2, &v20[v21], &qword_10006A2A0, &qword_1000528E0);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) == 1)
  {
    if (v22(&v20[v21], 1, v4) == 1)
    {
      v38 = v5;
      sub_100004444(v20, &qword_10006A2A0, &qword_1000528E0);
      goto LABEL_8;
    }

LABEL_6:
    v23 = v20;
LABEL_14:
    sub_100004444(v23, &qword_10006A298, &qword_100054E10);
    goto LABEL_15;
  }

  sub_10000A00C(v20, v13, &qword_10006A2A0, &qword_1000528E0);
  if (v22(&v20[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_6;
  }

  v24 = *(v5 + 32);
  v25 = &v20[v21];
  v26 = v5;
  v27 = v40;
  v24(v40, v25, v4);
  sub_100042294(&qword_10006A2B0, &type metadata accessor for Locale);
  v28 = sub_100051118();
  v38 = v26;
  v29 = *(v26 + 8);
  v29(v27, v4);
  v29(v13, v4);
  sub_100004444(v20, &qword_10006A2A0, &qword_1000528E0);
  if ((v28 & 1) == 0)
  {
LABEL_15:
    v32 = 0;
    return v32 & 1;
  }

LABEL_8:
  v30 = *(v14 + 48);
  v31 = v41;
  sub_10000A00C(v42 + v30, v41, &qword_10006A2A0, &qword_1000528E0);
  sub_10000A00C(v43 + v30, v31 + v30, &qword_10006A2A0, &qword_1000528E0);
  if (v22(v31, 1, v4) != 1)
  {
    v33 = v39;
    sub_10000A00C(v31, v39, &qword_10006A2A0, &qword_1000528E0);
    if (v22((v31 + v30), 1, v4) != 1)
    {
      v35 = v38;
      v36 = v40;
      (*(v38 + 32))(v40, v31 + v30, v4);
      sub_100042294(&qword_10006A2B0, &type metadata accessor for Locale);
      v32 = sub_100051118();
      v37 = *(v35 + 8);
      v37(v36, v4);
      v37(v33, v4);
      sub_100004444(v31, &qword_10006A2A0, &qword_1000528E0);
      return v32 & 1;
    }

    (*(v38 + 8))(v33, v4);
    goto LABEL_13;
  }

  if (v22((v31 + v30), 1, v4) != 1)
  {
LABEL_13:
    v23 = v31;
    goto LABEL_14;
  }

  sub_100004444(v31, &qword_10006A2A0, &qword_1000528E0);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_100034AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000512F8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_10000A00C(a1, v9, &qword_10006A2A0, &qword_1000528E0);
  sub_10000A00C(a2, v7, &qword_10006A2A0, &qword_1000528E0);
  sub_1000512D8();

  v16 = sub_1000512C8();
  v17 = *(v22 + 80);
  v18 = (v17 + 40) & ~v17;
  v19 = (v5 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  v20[2] = v16;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v15;
  sub_1000437F4(v9, v20 + v18);
  sub_1000437F4(v7, v20 + v19);

  sub_10002EA44(0, 0, v13, &unk_100054E20, v20);
}

uint64_t sub_100034D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(sub_1000035C4(&qword_10006A2A0, &qword_1000528E0) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v8 = sub_10004FDB8();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  sub_1000512D8();
  v6[14] = sub_1000512C8();
  v12 = sub_1000512B8();
  v6[15] = v12;
  v6[16] = v11;

  return _swift_task_switch(sub_100034EE0, v12, v11);
}

uint64_t sub_100034EE0()
{
  v44 = v0;
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (!Strong)
  {
    v9 = v0[14];
LABEL_13:

    v32 = v0[12];
    v31 = v0[13];
    v34 = v0[8];
    v33 = v0[9];

    v35 = v0[1];

    return v35();
  }

  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  sub_10000A00C(v0[6], v5, &qword_10006A2A0, &qword_1000528E0);
  v6 = *(v4 + 48);
  if (v6(v5, 1, v3) == 1)
  {
    v7 = v0[14];
    v8 = v0[9];

    sub_100004444(v8, &qword_10006A2A0, &qword_1000528E0);
LABEL_12:
    sub_100036318(v0[6], v0[7]);
    goto LABEL_13;
  }

  v10 = v0[10];
  v11 = v0[7];
  (*(v0[11] + 32))(v0[13], v0[9], v10);
  if (v6(v11, 1, v10) != 1 || (sub_100031A54() & 1) == 0)
  {
    v30 = v0[14];
    (*(v0[11] + 8))(v0[13], v0[10]);

    goto LABEL_12;
  }

  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v16 = sub_100050268();
  sub_100008BA0(v16, qword_10006E090);
  (*(v15 + 16))(v13, v12, v14);
  v17 = sub_100050248();
  v18 = sub_100051378();
  v19 = os_log_type_enabled(v17, v18);
  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[10];
  if (v19)
  {
    v23 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v23 = 136446210;
    v41 = sub_10004FD28();
    v25 = v24;
    v28 = *(v21 + 8);
    v27 = v21 + 8;
    v26 = v28;
    v28(v20, v22);
    v29 = sub_100008C04(v41, v25, &v43);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v17, v18, "LID resolution to %{public}s", v23, 0xCu);
    sub_100009F78(v42);
  }

  else
  {

    v37 = *(v21 + 8);
    v27 = v21 + 8;
    v26 = v37;
    v37(v20, v22);
  }

  v0[18] = v27;
  v0[19] = v26;
  (*(v0[11] + 56))(v0[8], 1, 1, v0[10]);
  v38 = swift_task_alloc();
  v0[20] = v38;
  *v38 = v0;
  v38[1] = sub_1000352C8;
  v39 = v0[13];
  v40 = v0[8];

  return sub_1000354D8(v39, v40);
}

uint64_t sub_1000352C8()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 64);
  v7 = *v0;

  sub_100004444(v3, &qword_10006A2A0, &qword_1000528E0);
  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return _swift_task_switch(sub_10003541C, v5, v4);
}

uint64_t sub_10003541C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];

  v1(v5, v6);
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000354D8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(sub_1000035C4(&qword_10006A2A0, &qword_1000528E0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_10004FDB8();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_1000512D8();
  v3[14] = sub_1000512C8();
  v9 = sub_1000512B8();
  v3[15] = v9;
  v3[16] = v8;

  return _swift_task_switch(sub_100035638, v9, v8);
}

uint64_t sub_100035638()
{
  v57 = v0;
  v1 = v0;
  v2 = *(v0 + 80);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  sub_10000A00C(*(v1 + 32), v3, &qword_10006A2A0, &qword_1000528E0);
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    sub_100004444(*(v1 + 64), &qword_10006A2A0, &qword_1000528E0);
    v5 = swift_task_alloc();
    *(v1 + 136) = v5;
    *v5 = v1;
    v5[1] = sub_100035C9C;
    v6 = *(v1 + 104);
    v7 = *(v1 + 40);
    v8 = *(v1 + 24);

    return sub_100038174(v6, v8);
  }

  else
  {
    v11 = *(v1 + 104);
    v10 = *(v1 + 112);
    v12 = *(v1 + 72);
    v13 = *(v1 + 80);
    v14 = *(v1 + 64);

    (*(v13 + 32))(v11, v14, v12);
    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v15 = *(v1 + 96);
    v16 = *(v1 + 104);
    v18 = *(v1 + 80);
    v17 = *(v1 + 88);
    v19 = *(v1 + 72);
    v20 = *(v1 + 24);
    v21 = sub_100050268();
    sub_100008BA0(v21, qword_10006E090);
    v22 = *(v18 + 16);
    v22(v15, v20, v19);
    v55 = v22;
    v22(v17, v16, v19);
    v23 = sub_100050248();
    v24 = sub_100051348();
    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v1 + 88);
    v26 = *(v1 + 96);
    v29 = *(v1 + 72);
    v28 = *(v1 + 80);
    if (v25)
    {
      v30 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v30 = 136446466;
      v31 = sub_10004FD38();
      v33 = v32;
      v52 = v24;
      v34 = *(v28 + 8);
      v34(v26, v29);
      v35 = sub_100008C04(v31, v33, &v56);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      v36 = sub_10004FD38();
      v38 = v37;
      v54 = v34;
      v34(v27, v29);
      v39 = sub_100008C04(v36, v38, &v56);

      *(v30 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v23, v52, "LID resolved locales source: %{public}s target: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v40 = *(v28 + 8);
      v40(v27, v29);
      v54 = v40;
      v40(v26, v29);
    }

    v49 = *(v1 + 104);
    v50 = *(v1 + 96);
    v41 = *(v1 + 80);
    v42 = *(v1 + 72);
    v51 = *(v1 + 88);
    v53 = *(v1 + 64);
    v44 = *(v1 + 48);
    v43 = *(v1 + 56);
    v45 = *(v1 + 40);
    v46 = *(v1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 16) = 0;

    sub_100050308();
    v55(v43, v46, v42);
    v48 = *(v41 + 56);
    v48(v43, 0, 1, v42);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000A00C(v43, v44, &qword_10006A2A0, &qword_1000528E0);

    sub_100050308();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 144) = 0;

    sub_100050308();
    sub_100004444(v43, &qword_10006A2A0, &qword_1000528E0);
    v55(v43, v49, v42);
    v48(v43, 0, 1, v42);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000A00C(v43, v44, &qword_10006A2A0, &qword_1000528E0);

    sub_100050308();
    sub_100004444(v43, &qword_10006A2A0, &qword_1000528E0);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 145) = 1;

    sub_100050308();
    sub_100037E54();
    v54(v49, v42);

    v47 = *(v1 + 8);

    return v47();
  }
}

uint64_t sub_100035C9C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return _swift_task_switch(sub_100035DBC, v4, v3);
}

uint64_t sub_100035DBC()
{
  v46 = v0;
  v1 = v0;
  v2 = v0[14];

  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v1[11];
  v7 = v1[9];
  v8 = v1[3];
  v9 = sub_100050268();
  sub_100008BA0(v9, qword_10006E090);
  v10 = *(v6 + 16);
  v10(v3, v8, v7);
  v44 = v10;
  v10(v5, v4, v7);
  v11 = sub_100050248();
  v12 = sub_100051348();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v1[11];
  v14 = v1[12];
  v17 = v1[9];
  v16 = v1[10];
  if (v13)
  {
    v18 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v18 = 136446466;
    v19 = sub_10004FD38();
    v21 = v20;
    v41 = v12;
    v22 = *(v16 + 8);
    v22(v14, v17);
    v23 = sub_100008C04(v19, v21, &v45);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2082;
    v24 = sub_10004FD38();
    v26 = v25;
    v43 = v22;
    v22(v15, v17);
    v27 = sub_100008C04(v24, v26, &v45);

    *(v18 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v11, v41, "LID resolved locales source: %{public}s target: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v28 = *(v16 + 8);
    v28(v15, v17);
    v43 = v28;
    v28(v14, v17);
  }

  v38 = v1[13];
  v39 = v1[12];
  v29 = v1[10];
  v30 = v1[9];
  v40 = v1[11];
  v42 = v1[8];
  v32 = v1[6];
  v31 = v1[7];
  v33 = v1[5];
  v34 = v1[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v1[2] = 0;

  sub_100050308();
  v44(v31, v34, v30);
  v37 = *(v29 + 56);
  v37(v31, 0, 1, v30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v31, v32, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 144) = 0;

  sub_100050308();
  sub_100004444(v31, &qword_10006A2A0, &qword_1000528E0);
  v44(v31, v38, v30);
  v37(v31, 0, 1, v30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v31, v32, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  sub_100004444(v31, &qword_10006A2A0, &qword_1000528E0);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 145) = 1;

  sub_100050308();
  sub_100037E54();
  v43(v38, v30);

  v35 = v1[1];

  return v35();
}

uint64_t sub_100036318(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v4 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v72 - v6;
  v8 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v72 - v13;
  v83 = sub_10004FDB8();
  v15 = *(v83 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v83);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v21 = &v72 - v20;
  result = __chkstk_darwin(v19);
  v26 = &v72 - v25;
  v27 = *(v2 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_attributedSource);
  if (v27)
  {
    v79 = v24;
    v80 = v23;
    v81 = v7;
    sub_10000A00C(a1, v14, &qword_10006A2A0, &qword_1000528E0);
    v28 = v15;
    v29 = *(v15 + 48);
    if (v29(v14, 1, v83) == 1)
    {
      return sub_100004444(v14, &qword_10006A2A0, &qword_1000528E0);
    }

    else
    {
      v30 = v14;
      v31 = v83;
      v77 = *(v28 + 32);
      v78 = v28 + 32;
      v77(v26, v30, v83);
      sub_10000A00C(v82, v12, &qword_10006A2A0, &qword_1000528E0);
      if (v29(v12, 1, v31) == 1)
      {
        (*(v28 + 8))(v26, v83);
        return sub_100004444(v12, &qword_10006A2A0, &qword_1000528E0);
      }

      else
      {
        v76 = v28;
        v77(v21, v12, v83);
        v32 = *(v2 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_ignoredAttributes);
        swift_getKeyPath();
        swift_getKeyPath();
        v84 = 0;
        v85 = 0;
        v33 = v27;
        v75 = v32;

        v82 = v2;
        sub_100050308();
        v34 = objc_allocWithZone(_LTLocalePair);
        isa = sub_10004FD88().super.isa;
        v36 = sub_10004FD88().super.isa;
        v37 = v26;
        v38 = [v34 initWithSourceLocale:isa targetLocale:v36];

        if ([v38 isPassthrough])
        {

          v39 = [v33 string];
          v40 = sub_100051158();
          v42 = v41;

          swift_getKeyPath();
          swift_getKeyPath();
          v84 = v40;
          v85 = v42;

          sub_100050308();
          v43 = [v33 string];
          v44 = sub_100051158();
          v46 = v45;

          swift_getKeyPath();
          swift_getKeyPath();
          v84 = v44;
          v85 = v46;

          sub_100050308();
          sub_100037E54();

          v47 = *(v76 + 8);
          v48 = v21;
          v49 = v83;
          v47(v48, v83);
          return (v47)(v37, v49);
        }

        else
        {
          v50 = sub_1000512F8();
          (*(*(v50 - 8) + 56))(v81, 1, 1, v50);
          v51 = v38;
          v52 = v33;
          v53 = swift_allocObject();
          swift_weakInit();
          v54 = v76;
          v55 = *(v76 + 16);
          v56 = v21;
          v74 = v21;
          v57 = v83;
          v55(v79, v37, v83);
          v82 = v37;
          v55(v80, v56, v57);
          sub_1000512D8();
          v73 = v52;
          v58 = v53;

          v72 = v51;
          v59 = sub_1000512C8();
          v60 = *(v54 + 80);
          v61 = (v60 + 40) & ~v60;
          v62 = (v16 + v60 + v61) & ~v60;
          v63 = (v16 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
          v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
          v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
          v66 = swift_allocObject();
          *(v66 + 2) = v59;
          *(v66 + 3) = &protocol witness table for MainActor;
          *(v66 + 4) = v58;
          v67 = &v66[v61];
          v68 = v77;
          v77(v67, v79, v57);
          v68(&v66[v62], v80, v57);
          v69 = v73;
          *&v66[v63] = v73;
          *&v66[v64] = v75;
          v70 = v72;
          *&v66[v65] = v72;

          sub_10003E290(0, 0, v81, &unk_100054E38, v66);

          v71 = *(v54 + 8);
          v71(v74, v57);
          return (v71)(v82, v57);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100036A20(char *a1)
{
  v2 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = *a1;
  v7 = sub_1000512F8();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1000512D8();

  v9 = sub_1000512C8();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;

  sub_10002EA44(0, 0, v5, &unk_100054B90, v10);
}

uint64_t sub_100036BB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  *(v5 + 88) = a4;
  sub_1000512D8();
  *(v5 + 48) = sub_1000512C8();
  v7 = sub_1000512B8();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return _swift_task_switch(sub_100036C50, v7, v6);
}

uint64_t sub_100036C50()
{
  v1 = *(v0 + 88);
  sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
  v2 = sub_100051388();
  v3 = sub_1000513A8() & 1;

  if (v1 == v3)
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 88);
  v5 = sub_100051388();
  sub_1000513B8();

  if (v4 != 1)
  {
    goto LABEL_7;
  }

  v6 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_100036DB0;

    return sub_100036F54();
  }

  else
  {
LABEL_7:
    v10 = *(v0 + 48);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100036DB0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_100036EF4, v5, v4);
}

uint64_t sub_100036EF4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100036F54()
{
  v1[2] = v0;
  v2 = type metadata accessor for TranslationRequestContext();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_1000512D8();
  v1[5] = sub_1000512C8();
  v5 = sub_1000512B8();

  return _swift_task_switch(sub_10003701C, v5, v4);
}

uint64_t sub_10003701C()
{
  v1 = *(v0 + 40);

  if (qword_100069F08 != -1)
  {
    swift_once();
  }

  v2 = sub_100050268();
  sub_100008BA0(v2, qword_10006E060);
  v3 = sub_100050248();
  v4 = sub_100051378();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Continue translation with user consent", v5, 2u);
  }

  v6 = *(v0 + 16);

  if (*(v6 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_waitingForUserConsent) == 1)
  {
    v7 = *(v0 + 16);
    *(v6 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_waitingForUserConsent) = 0;
    if (*(v7 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_showConsentOnly) == 1 && (v8 = *(v0 + 16), swift_getKeyPath(), swift_getKeyPath(), sub_1000502F8(), , , *(v0 + 48) == 1))
    {
      v9 = sub_100050248();
      v10 = sub_100051378();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Dismiss given we only are interested in user consent currently", v11, 2u);
      }

      v12 = *(v0 + 16);

      v13 = v12 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler;
      v14 = *(v12 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler);
      if (v14)
      {
        v15 = *(v13 + 8);

        v14(v16);
        sub_100009F24(v14);
      }
    }

    else
    {
      v17 = *(v0 + 16);
      v18 = *(v17 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_attributedSource);
      if (v18)
      {
        v20 = *(v0 + 24);
        v19 = *(v0 + 32);
        v21 = *(v17 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_ignoredAttributes);
        *v19 = v18;
        *(v19 + 8) = 0;
        *(v19 + 16) = v21;
        v22 = v20[8];
        v23 = sub_100050228();
        (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
        *(v19 + v20[9]) = 0;
        v24 = (v19 + v20[10]);
        *v24 = 0;
        v24[1] = 0;
        *(v19 + v20[11]) = 0;
        v25 = v20[12];
        v26 = sub_10004FDB8();
        v27 = *(*(v26 - 8) + 56);
        v27(v19 + v25, 1, 1, v26);
        v27(v19 + v20[13], 1, 1, v26);
        v28 = v18;

        sub_10002D9A0(v19);

        sub_1000439A0(v19, type metadata accessor for TranslationRequestContext);
      }
    }
  }

  v29 = *(v0 + 32);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000373BC(uint64_t *a1)
{
  v2 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  v7 = sub_1000512F8();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;
  v9[5] = v8;
  sub_1000342D4(0, 0, v5, &unk_100054AD8, v9);

  return sub_100004444(v5, &qword_10006A7B8, &qword_100054AB0);
}

uint64_t sub_100037534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_100037554, 0, 0);
}

uint64_t sub_100037554()
{
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v1 = sub_100050268();
  sub_100008BA0(v1, qword_10006E090);
  v2 = sub_100050248();
  v3 = sub_100051348();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[11];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Update disambiguation value: %ld", v5, 0xCu);
  }

  v6 = v0[12];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v0[14] = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationResult;
    sub_1000512D8();
    v0[15] = sub_1000512C8();
    v8 = sub_1000512B8();
    v10 = v9;
    v11 = sub_100037804;
LABEL_11:

    return _swift_task_switch(v11, v8, v10);
  }

  v0[17] = 0;
  v0[18] = 0xE000000000000000;
  v12 = v0[12];
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  v0[19] = v13;
  if (v13)
  {
    sub_1000512D8();
    v0[20] = sub_1000512C8();
    v8 = sub_1000512B8();
    v10 = v14;
    v11 = sub_100037C50;
    goto LABEL_11;
  }

  v15 = v0[12];
  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  v0[21] = v16;
  if (v16)
  {
    sub_1000512D8();
    v0[22] = sub_1000512C8();
    v8 = sub_1000512B8();
    v10 = v17;
    v11 = sub_100037DE8;
    goto LABEL_11;
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100037804()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = *(v3 + v2);
  v0[16] = v4;
  if (v4)
  {
    v5 = v4;
    v6 = sub_100037A08;
  }

  else
  {
    v6 = sub_100037898;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100037898()
{
  v1 = v0[13];

  v0[17] = 0;
  v0[18] = 0xE000000000000000;
  v2 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    sub_1000512D8();
    v0[20] = sub_1000512C8();
    v4 = sub_1000512B8();
    v6 = v5;
    v7 = sub_100037C50;
LABEL_5:

    return _swift_task_switch(v7, v4, v6);
  }

  v8 = v0[12];
  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  v0[21] = v9;
  if (v9)
  {
    sub_1000512D8();
    v0[22] = sub_1000512C8();
    v4 = sub_1000512B8();
    v6 = v10;
    v7 = sub_100037DE8;
    goto LABEL_5;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100037A08()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = [v1 translations];

  sub_100009FC4(0, &qword_10006BC68, _LTTranslationCandidate_ptr);
  v4 = sub_100051248();

  v7 = v0[11];
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > v7)
    {
      v8 = *(v4 + 8 * v7 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return _swift_task_switch(v7, v5, v6);
  }

  v8 = sub_1000515D8();
LABEL_5:
  v9 = v8;

  v10 = [v9 formattedString];

  v11 = sub_100051158();
  v13 = v12;

  v0[17] = v11;
  v0[18] = v13;
  v14 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    sub_1000512D8();
    v0[20] = sub_1000512C8();
    v16 = sub_1000512B8();
    v18 = v17;
    v19 = sub_100037C50;
    goto LABEL_9;
  }

  v20 = v0[12];
  swift_beginAccess();
  v21 = swift_weakLoadStrong();
  v0[21] = v21;
  if (v21)
  {
    sub_1000512D8();
    v0[22] = sub_1000512C8();
    v16 = sub_1000512B8();
    v18 = v22;
    v19 = sub_100037DE8;
LABEL_9:
    v7 = v19;
    v5 = v16;
    v6 = v18;

    return _swift_task_switch(v7, v5, v6);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_100037C50()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[8] = v4;
  v0[9] = v3;
  sub_100050308();

  return _swift_task_switch(sub_100037CFC, 0, 0);
}

uint64_t sub_100037CFC()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    sub_1000512D8();
    v0[22] = sub_1000512C8();
    v4 = sub_1000512B8();

    return _swift_task_switch(sub_100037DE8, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100037DE8()
{
  v2 = v0[21];
  v1 = v0[22];

  sub_100037E54();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100037E54()
{
  v1 = v0;
  v2 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_originalPlayer;
  v7 = (v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier);
  v8 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier + 8);
  v9 = (*(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_originalPlayer) + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier);
  v10 = v9[1];
  *v9 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier);
  v9[1] = v8;

  v11 = *(v0 + v6);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000502F8();

  v12 = v29;
  v13 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v14 = (v11 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_text);
  v15 = *(v11 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_text + 8);
  *v14 = v12;
  v14[1] = v13;

  v16 = OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_locale;
  swift_beginAccess();
  sub_100041B3C(v5, v11 + v16);
  swift_endAccess();

  sub_100004444(v5, &qword_10006A2A0, &qword_1000528E0);
  v17 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationPlayer;
  v18 = v7[1];
  v19 = (*(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationPlayer) + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier);
  v20 = v19[1];
  *v19 = *v7;
  v19[1] = v18;

  v21 = *(v1 + v17);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000502F8();

  v22 = v29;
  v23 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v24 = (v21 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_text);
  v25 = *(v21 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_text + 8);
  *v24 = v22;
  v24[1] = v23;

  v26 = OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_locale;
  swift_beginAccess();
  sub_100041B3C(v5, v21 + v26);
  swift_endAccess();

  return sub_100004444(v5, &qword_10006A2A0, &qword_1000528E0);
}

uint64_t sub_100038174(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_10004FDB8();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_1000512D8();
  v3[10] = sub_1000512C8();
  v8 = sub_1000512B8();

  return _swift_task_switch(sub_100038278, v8, v7);
}

uint64_t sub_100038278()
{
  v1 = v0[10];

  sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
  v2 = sub_100051388();
  sub_1000513C8();
  v4 = v3;

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v0[9];
  v6 = v0[4];
  sub_10004FD18();
  v7 = objc_allocWithZone(_LTLocalePair);
  isa = sub_10004FD88().super.isa;
  v9 = sub_10004FD88().super.isa;
  v10 = [v7 initWithSourceLocale:isa targetLocale:v9];

  if ([v10 isPassthrough])
  {
    (*(v0[7] + 8))(v0[9], v0[6]);

LABEL_6:
    v14 = v0[7];
    v13 = v0[8];
    v16 = v0[5];
    v15 = v0[6];
    v18 = v0[3];
    v17 = v0[4];
    sub_10004FDA8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000502F8();

    v19 = v0[2];
    sub_10004FD58();

    (*(v14 + 8))(v13, v15);
    goto LABEL_7;
  }

  v11 = [v10 isVariantPair];

  v12 = v0[7];
  if (v11)
  {
    (*(v12 + 8))(v0[9], v0[6]);
    goto LABEL_6;
  }

  (*(v12 + 32))(v0[3], v0[9], v0[6]);
LABEL_7:
  v21 = v0[8];
  v20 = v0[9];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000384B4()
{
  v1 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = 0;

  sub_100050308();
  v8 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_attributedSource);
  *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_attributedSource) = 0;

  v9 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_ignoredAttributes);
  *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_ignoredAttributes) = &_swiftEmptyArrayStorage;

  *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_waitingForUserConsent) = 0;
  v10 = sub_10004FDB8();
  v14 = *(*(v10 - 8) + 56);
  v14(v7, 1, 1, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v7, v5, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v15) = 0;

  sub_100050308();
  sub_100004444(v7, &qword_10006A2A0, &qword_1000528E0);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = 0;
  v16 = 0;

  sub_100050308();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v15) = 0;

  sub_100050308();
  v14(v7, 1, 1, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v7, v5, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  sub_100004444(v7, &qword_10006A2A0, &qword_1000528E0);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = 0;
  v16 = 0;

  sub_100050308();
  v11 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationResult);
  *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationResult) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v15 = -1;

  sub_100050308();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v15) = 0;

  sub_100050308();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v15) = 2;

  sub_100050308();
  return sub_100037E54();
}

uint64_t sub_100038900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_1000512D8();
  *(v4 + 72) = sub_1000512C8();
  v6 = sub_1000512B8();

  return _swift_task_switch(sub_100038998, v6, v5);
}

uint64_t sub_100038998()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for TranslationModel(0);
    sub_100042294(&qword_10006A340, type metadata accessor for TranslationModel);
    sub_1000502B8();

    sub_1000502C8();
  }

  v3 = *(v0 + 64);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = 1;
    sub_100050308();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100038AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return _swift_task_switch(sub_100038B08, 0, 0);
}

uint64_t sub_100038B08()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 64);
    v4 = *(type metadata accessor for TranslationRequestContext() + 52);
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_100038C24;
    v6 = *(v0 + 56);

    return sub_1000354D8(v6, v3 + v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100038C24()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100038D3C, 0, 0);
}

uint64_t sub_100038D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = a5;
  v6[38] = a6;
  v6[36] = a4;
  v7 = *(*(sub_1000035C4(&qword_10006A2A0, &qword_1000528E0) - 8) + 64) + 15;
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v8 = sub_10004FDB8();
  v6[44] = v8;
  v9 = *(v8 - 8);
  v6[45] = v9;
  v10 = *(v9 + 64) + 15;
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  sub_1000512D8();
  v6[48] = sub_1000512C8();
  v12 = sub_1000512B8();
  v6[49] = v12;
  v6[50] = v11;

  return _swift_task_switch(sub_100038ED0, v12, v11);
}

uint64_t sub_100038ED0()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = objc_opt_self();
  sub_1000035C4(&qword_10006A7A8, &qword_100052EE8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000530B0;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;

  isa = sub_100051238().super.isa;
  v0[51] = isa;

  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_100039070;
  v6 = swift_continuation_init();
  v0[17] = sub_1000035C4(&qword_10006BC78, &qword_100054CE0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10003A170;
  v0[13] = &unk_1000672F0;
  v0[14] = v6;
  [v3 languagesForText:isa usingModel:1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100039070()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 392);
  v3 = *v0;

  return _swift_task_switch(sub_100039178, v2, v1);
}

uint64_t sub_100039178()
{
  v135 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 304);
  v3 = *(v0 + 248);
  *(v0 + 416) = v3;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 424) = Strong;
  if (!Strong)
  {
    v18 = *(v0 + 384);

LABEL_37:
    v74 = *(v0 + 368);
    v73 = *(v0 + 376);
    v76 = *(v0 + 336);
    v75 = *(v0 + 344);
    v78 = *(v0 + 320);
    v77 = *(v0 + 328);
    v79 = *(v0 + 312);

    v80 = *(v0 + 8);

    return v80();
  }

  v5 = Strong;
  if (!v3)
  {
    v19 = *(v0 + 384);

    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v20 = sub_100050268();
    sub_100008BA0(v20, qword_10006E090);
    v21 = sub_100050248();
    v22 = sub_100051358();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to resolve LID of text content, showing translation unavailable message", v23, 2u);
    }

    type metadata accessor for TranslationModel.TranslationError(0);
    sub_100042294(&qword_10006BC80, type metadata accessor for TranslationModel.TranslationError);
    v24 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 256) = v24;
    swift_errorRetain();
    sub_100050308();
    goto LABEL_36;
  }

  v6 = [v3 lowConfidenceLocales];
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 384);
    v9 = *(v0 + 352);

    v10 = sub_100051248();

    v11 = _LTRecommendedMaxLowConfidenceLocalesToSuggest();
    v15 = sub_10003A1D4(v11, v10);
    if (v14)
    {
      v45 = v5;
      v46 = v14;
      v47 = v13;
      v132 = v12;
      sub_100051668();
      swift_unknownObjectRetain_n();
      v48 = swift_dynamicCastClass();
      if (!v48)
      {
        swift_unknownObjectRelease();
        v48 = _swiftEmptyArrayStorage;
      }

      v49 = v48[2];

      if (__OFSUB__(v46 >> 1, v47))
      {
        __break(1u);
      }

      else if (v49 == (v46 >> 1) - v47)
      {
        v17 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v5 = v45;
        if (v17)
        {
LABEL_24:
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 272) = v17;

          sub_100050308();
          if (qword_100069F18 != -1)
          {
            swift_once();
          }

          v50 = sub_100050268();
          sub_100008BA0(v50, qword_10006E090);

          v51 = sub_100050248();
          v52 = sub_100051348();

          if (os_log_type_enabled(v51, v52))
          {
            v133 = v7;
            v53 = v5;
            v54 = *(v0 + 352);
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v134 = v56;
            *v55 = 136446210;
            v57 = sub_100051258();
            v59 = v58;

            v60 = v57;
            v5 = v53;
            v7 = v133;
            v61 = sub_100008C04(v60, v59, &v134);

            *(v55 + 4) = v61;
            _os_log_impl(&_mh_execute_header, v51, v52, "Low confidence languages detected: %{public}s", v55, 0xCu);
            sub_100009F78(v56);
          }

          else
          {
          }

          (*(*(v0 + 360) + 56))(*(v0 + 344), 1, 1, *(v0 + 352));
          v62 = *(v5 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation);
          if (v62)
          {
            v63 = *(v0 + 352);
            v64 = *(v0 + 360);
            v65 = *(v0 + 336);
            sub_10000A00C(*(v0 + 344), v65, &qword_10006A2A0, &qword_1000528E0);
            LODWORD(v63) = (*(v64 + 48))(v65, 1, v63);
            v66 = v62;
            if (v63 == 1)
            {
              isa = 0;
            }

            else
            {
              v68 = *(v0 + 352);
              v69 = *(v0 + 360);
              v70 = *(v0 + 336);
              isa = sub_10004FD88().super.isa;
              (*(v69 + 8))(v70, v68);
            }

            [v66 languageIdentificationCompletedWithInputSource:1 topLocale:isa lowConfidenceLocales:v7];
          }

          v71 = *(v0 + 344);

          sub_100004444(v71, &qword_10006A2A0, &qword_1000528E0);
          type metadata accessor for TranslationModel.TranslationError(0);
          sub_100042294(&qword_10006BC80, type metadata accessor for TranslationModel.TranslationError);
          v72 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 280) = v72;
          swift_errorRetain();
LABEL_35:
          sub_100050308();

LABEL_36:

          goto LABEL_37;
        }

        v17 = _swiftEmptyArrayStorage;
LABEL_23:
        swift_unknownObjectRelease();
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
      v14 = v46;
      v13 = v47;
      v12 = v132;
      v5 = v45;
    }

    sub_1000422DC(v15, v12, v13, v14);
    v17 = v16;
    goto LABEL_23;
  }

  v25 = [v3 dominantLocale];
  if (!v25)
  {
    v82 = *(v0 + 384);

    v83 = [v3 unsupportedLanguageCounts];
    v84 = [v83 allObjects];

    v85 = sub_100051248();
    v86 = v85;
    v87 = *(v85 + 16);
    if (v87)
    {
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = v86 + 32;
      do
      {
        sub_1000091AC(v91, v0 + 144);
        v92 = [v3 unsupportedLanguageCounts];
        sub_100009F34((v0 + 144), *(v0 + 168));
        v93 = [v92 countForObject:sub_100051648()];
        swift_unknownObjectRelease();

        if (v88 >= v93)
        {
          sub_100009F78((v0 + 144));
        }

        else
        {

          sub_1000435DC((v0 + 144), (v0 + 176));
          v94 = swift_dynamicCast();
          v95 = *(v0 + 232);
          if (v94)
          {
            v89 = *(v0 + 232);
          }

          else
          {
            v89 = 0;
          }

          if (v94)
          {
            v90 = *(v0 + 240);
          }

          else
          {
            v90 = 0;
          }

          v88 = v93;
        }

        v91 += 32;
        --v87;
      }

      while (v87);
    }

    else
    {

      v89 = 0;
      v90 = 0;
    }

    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v118 = sub_100050268();
    sub_100008BA0(v118, qword_10006E090);

    v119 = sub_100050248();
    v120 = sub_100051348();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v134 = v122;
      *v121 = 136446210;
      if (v90)
      {
        v123 = v89;
      }

      else
      {
        v123 = 0xD000000000000010;
      }

      if (v90)
      {
        v124 = v90;
      }

      else
      {
        v124 = 0x800000010005F760;
      }

      v125 = sub_100008C04(v123, v124, &v134);

      *(v121 + 4) = v125;
      _os_log_impl(&_mh_execute_header, v119, v120, "Unsupported languages detected: %{public}s", v121, 0xCu);
      sub_100009F78(v122);
    }

    type metadata accessor for TranslationModel.TranslationError(0);
    sub_100042294(&qword_10006BC80, type metadata accessor for TranslationModel.TranslationError);
    v126 = swift_allocError();
    *v127 = v89;
    v127[1] = v90;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 264) = v126;
    swift_errorRetain();
    goto LABEL_35;
  }

  v26 = *(v0 + 376);
  v27 = v25;
  sub_10004FD98();

  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 368);
  v29 = *(v0 + 376);
  v30 = *(v0 + 352);
  v31 = *(v0 + 360);
  v32 = sub_100050268();
  sub_100008BA0(v32, qword_10006E090);
  v131 = *(v31 + 16);
  v131(v28, v29, v30);
  v33 = sub_100050248();
  v34 = sub_100051378();
  v35 = os_log_type_enabled(v33, v34);
  v37 = *(v0 + 360);
  v36 = *(v0 + 368);
  v38 = *(v0 + 352);
  if (v35)
  {
    v39 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v134 = v129;
    *v39 = 136446210;
    v128 = sub_10004FD28();
    v130 = v5;
    v41 = v40;
    v42 = *(v37 + 8);
    v42(v36, v38);
    v43 = v42;
    v44 = sub_100008C04(v128, v41, &v134);
    v5 = v130;

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v33, v34, "Primary detected locale is %{public}s", v39, 0xCu);
    sub_100009F78(v129);
  }

  else
  {

    v96 = *(v37 + 8);
    v96(v36, v38);
    v43 = v96;
  }

  *(v0 + 432) = v43;
  v97 = *(v0 + 352);
  v98 = *(v0 + 360);
  v99 = *(v0 + 328);
  v131(v99, *(v0 + 376), v97);
  v100 = *(v98 + 56);
  v100(v99, 0, 1, v97);
  v101 = *(v5 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation);
  if (v101)
  {
    v102 = *(v0 + 352);
    v103 = *(v0 + 360);
    v104 = *(v0 + 320);
    sub_10000A00C(*(v0 + 328), v104, &qword_10006A2A0, &qword_1000528E0);
    LODWORD(v102) = (*(v103 + 48))(v104, 1, v102);
    v105 = v101;
    if (v102 == 1)
    {
      v106 = 0;
    }

    else
    {
      v107 = v43;
      v108 = *(v0 + 352);
      v109 = *(v0 + 360);
      v110 = *(v0 + 320);
      v106 = sub_10004FD88().super.isa;
      v107(v110, v108);
    }

    v111 = *(v0 + 352);
    v112 = sub_100051238().super.isa;
    [v105 languageIdentificationCompletedWithInputSource:1 topLocale:v106 lowConfidenceLocales:v112];
  }

  v113 = *(v0 + 352);
  v114 = *(v0 + 312);
  sub_100004444(*(v0 + 328), &qword_10006A2A0, &qword_1000528E0);
  v100(v114, 1, 1, v113);
  v115 = swift_task_alloc();
  *(v0 + 440) = v115;
  *v115 = v0;
  v115[1] = sub_100039F38;
  v116 = *(v0 + 376);
  v117 = *(v0 + 312);

  return sub_1000354D8(v116, v117);
}