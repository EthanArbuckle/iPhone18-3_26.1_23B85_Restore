void type metadata accessor for VRXIdiom()
{
  if (!qword_14160)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_14160);
    }
  }
}

void sub_1444(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1478();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1480@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_14C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BE50();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1574(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_15B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_BE50();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_165C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for BadgedImageView()
{
  result = qword_141C0;
  if (!qword_141C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_16D0()
{
  result = sub_BE50();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1760@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = *(*(sub_BE80() - 8) + 64);
  (__chkstk_darwin)();
  v3 = sub_BDF0();
  v4 = sub_1AA4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BE50();
  (*(*(v10 - 8) + 16))(v9, v1, v10);
  v11 = *(v6 + 104);
  v12 = v11(v9, enum case for ImageElement.SourceType.contact(_:), v3);
  __chkstk_darwin(v12);
  v13 = (v1 + *(type metadata accessor for BadgedImageView() + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = sub_BDE0();
  v17 = sub_1AA4(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  (*(v21 + 104))(v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ImageElement.ImageStyle.default(_:));

  sub_BE00();
  v11(v9, enum case for ImageElement.SourceType.appIcon(_:), v3);
  sub_BDC0();
  v22 = *(v6 + 8);
  v22(v9, v3);
  v22(v9, v3);
  return sub_C3C0();
}

unint64_t sub_1A58()
{
  result = qword_141F8;
  if (!qword_141F8)
  {
    sub_C3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_141F8);
  }

  return result;
}

uint64_t sub_1ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BFA0();
  v7 = sub_3388(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_1574(v10, a2, v9);
  }

  v11 = sub_C430();
  v12 = sub_3388(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1BD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_BFA0();
  v9 = sub_3388(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_C430();
    result = sub_3388(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_165C(v12, a2, a2, v11);
}

uint64_t type metadata accessor for ContactConfirmationView()
{
  result = qword_14258;
  if (!qword_14258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D0C()
{
  sub_BFA0();
  if (v0 <= 0x3F)
  {
    sub_C430();
    if (v1 <= 0x3F)
    {
      sub_1DA8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DA8()
{
  if (!qword_14268)
  {
    sub_C500();
    sub_1E0C();
    v0 = sub_C110();
    if (!v1)
    {
      atomic_store(v0, &qword_14268);
    }
  }
}

unint64_t sub_1E0C()
{
  result = qword_14270;
  if (!qword_14270)
  {
    sub_C500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14270);
  }

  return result;
}

uint64_t sub_1E74@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v56 = a1;
  v4 = type metadata accessor for ContactConfirmationView();
  v5 = sub_3374(v4);
  v51 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v52 = v9;
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BF40();
  v11 = sub_1AA4(v10);
  v54 = v12;
  v55 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_3364();
  v17 = v16 - v15;
  sub_BF50();
  v18 = sub_BF70();
  v49 = v19;
  v50 = v18;
  v20 = sub_BDE0();
  v21 = sub_1AA4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_3364();
  v28 = v27 - v26;
  v29 = v2 + *(v1 + 32);
  if (*v29)
  {
    v30 = *v29;
    sub_C4F0();

    v31 = sub_C560();
    v32 = &enum case for ImageElement.ImageStyle.contactImage4(_:);
    if (v31)
    {
      v32 = &enum case for ImageElement.ImageStyle.contactImage3(_:);
    }

    (*(v23 + 104))(v28, *v32, v20);
    type metadata accessor for PresentationUtilities();
    v33 = sub_BF10();
    v48 = v20;
    v35 = v34;
    v36 = sub_BF30();
    v38 = v37;
    v39 = sub_8AF4(v33, v35, v36, v37, v28, 1);
    sub_2D00(v36, v38);

    v40 = v53;
    sub_2D6C(v3, v53);
    v41 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    sub_3394();
    v42 = swift_allocObject();
    sub_2EF4(v40, v42 + v41);
    v43 = (v42 + v36);
    v44 = v49;
    *v43 = v50;
    v43[1] = v44;
    *(v42 + v3) = v39;
    sub_3004(&qword_142A8, &qword_CA38);
    sub_3304(&qword_142B0, &qword_142A8, &qword_CA38);
    sub_C380();
    (*(v23 + 8))(v28, v48);
    return (*(v54 + 8))(v17, v55);
  }

  else
  {
    v46 = *(v29 + 8);
    sub_C500();
    sub_1E0C();
    result = sub_C0F0();
    __break(1u);
  }

  return result;
}

uint64_t sub_21E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v78 = a5;
  v9 = type metadata accessor for ContactConfirmationView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v66 = v12;
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_C450();
  v81 = *(v77 - 8);
  v75 = v81[8];
  __chkstk_darwin(v77);
  v76 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v80 = &v59 - v76;
  v15 = sub_BF60();
  v97 = &type metadata for String;
  v98 = &protocol witness table for String;
  v95 = v15;
  v96 = v16;
  v93 = &type metadata for String;
  v94 = &protocol witness table for String;
  v91 = a2;
  v92 = a3;
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v84 = &protocol witness table for AnyView;
  v83 = &type metadata for AnyView;
  v82 = a4;

  sub_C440();
  v74 = sub_C3A0();
  v73 = *(v74 - 8);
  v71 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v79 = &v59 - v72;
  v69 = sub_3004(&qword_142B8, &qword_CA40);
  v70 = *(v69 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v69);
  v20 = &v59 - v19;
  v21 = sub_3004(&qword_142C0, &qword_CA48);
  v60 = *(v21 - 8);
  v67 = *(v60 + 64);
  __chkstk_darwin(v21);
  v68 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v59 - v68;
  v63 = a1;
  v95 = sub_BF90();
  v96 = v24;
  v61 = v13;
  sub_2D6C(a1, v13);
  v65 = *(v10 + 80);
  v25 = (v65 + 16) & ~v65;
  v62 = v25;
  v26 = swift_allocObject();
  sub_2EF4(v13, v26 + v25);
  v64 = sub_30C4();
  sub_C310();
  v27 = sub_C340();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 104))(v31, enum case for ButtonItemButtonStyle.Role.preferred(_:), v27);
  v95 = sub_C300();
  sub_C0E0();
  v95 = sub_C2F0();
  sub_C0E0();
  v32 = sub_3304(&qword_142D0, &qword_142C0, &qword_CA48);
  sub_C270();

  (*(v28 + 8))(v31, v27);
  v33 = *(v60 + 8);
  v33(v23, v21);
  v95 = v21;
  v96 = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v69;
  v35 = sub_C260();
  v36 = (*(v70 + 8))(v20, v34);
  v98 = &protocol witness table for AnyView;
  v97 = &type metadata for AnyView;
  v95 = v35;
  __chkstk_darwin(v36);
  v37 = &v59 - v68;
  v38 = v63;
  v91 = sub_BF80();
  v92 = v39;
  v40 = v61;
  sub_2D6C(v38, v61);
  v41 = v62;
  v42 = swift_allocObject();
  sub_2EF4(v40, v42 + v41);
  sub_C310();
  v43 = sub_C260();
  v33(v37, v21);
  v93 = &type metadata for AnyView;
  v94 = &protocol witness table for AnyView;
  v91 = v43;
  v44 = v79;
  v45 = sub_C390();
  __chkstk_darwin(v45);
  v46 = &v59 - v76;
  v47 = v81[2];
  v48 = v77;
  v49 = v47(&v59 - v76, v80, v77);
  __chkstk_darwin(v49);
  v50 = &v59 - v72;
  v51 = v73;
  v52 = *(v73 + 16);
  v53 = v74;
  v52(&v59 - v72, v44, v74);
  v54 = v78;
  v47(v78, v46, v48);
  v55 = sub_3004(&qword_142D8, &unk_CA50);
  v52(&v54[*(v55 + 48)], v50, v53);
  v56 = *(v51 + 8);
  v56(v79, v53);
  v57 = v81[1];
  v57(v80, v48);
  v56(v50, v53);
  return (v57)(v46, v48);
}

uint64_t sub_2AA0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = sub_C010();
  v7 = sub_1AA4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_3364();
  v14 = v13 - v12;
  v28 = sub_C4E0();
  v15 = sub_1AA4(v28);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_3364();
  v22 = v21 - v20;
  v23 = a1 + *(type metadata accessor for ContactConfirmationView() + 20);
  v24 = sub_C410();
  a2(v24);
  sub_3004(&qword_142E0, &qword_CB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C9C0;
  (*(v9 + 104))(v14, enum case for ContactResolutionCommonKeys.button(_:), v6);
  sub_C000();
  (*(v9 + 8))(v14, v6);
  sub_C570();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  sub_C510();
  sub_C4D0();

  return (*(v17 + 8))(v22, v28);
}

uint64_t sub_2D00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2D14(a1, a2);
  }

  return a1;
}

uint64_t sub_2D14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactConfirmationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DD0()
{
  v4 = type metadata accessor for ContactConfirmationView();
  sub_3374(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64) + ((v6 + 16) & ~v6);
  sub_3394();
  v10 = v1 + v9;
  v11 = sub_BFA0();
  sub_3350(v11);
  (*(v12 + 8))(v10);
  v13 = *(v0 + 28);
  v14 = sub_C430();
  sub_3350(v14);
  (*(v15 + 8))(v10 + v13);

  v16 = *(v1 + v2 + 8);

  v17 = *(v1 + v3);

  return _swift_deallocObject(v1, v3 + 8, v6 | 7);
}

uint64_t sub_2EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactConfirmationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2F58@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ContactConfirmationView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  return sub_21E8(v1 + v4, v9, v10, v8, a1);
}

uint64_t sub_3004(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_304C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_30C4()
{
  result = qword_142C8;
  if (!qword_142C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_142C8);
  }

  return result;
}

uint64_t sub_3118()
{
  v2 = type metadata accessor for ContactConfirmationView();
  sub_3374(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_BFA0();
  sub_3350(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = *(v0 + 28);
  v11 = sub_C430();
  sub_3350(v11);
  (*(v12 + 8))(v1 + v5 + v10);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_3304(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_304C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_33BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BFF0();
  v7 = sub_3388(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_1574(v10, a2, v9);
  }

  v11 = sub_C430();
  v12 = sub_3388(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_34C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_BFF0();
  v9 = sub_3388(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_C430();
    result = sub_3388(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_165C(v12, a2, a2, v11);
}

uint64_t type metadata accessor for ContactDisambiguationView()
{
  result = qword_14350;
  if (!qword_14350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_35FC()
{
  sub_BFF0();
  if (v0 <= 0x3F)
  {
    sub_C430();
    if (v1 <= 0x3F)
    {
      sub_1DA8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_36B4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v31 = a1;
  v4 = type metadata accessor for ContactDisambiguationView();
  v5 = v4 - 8;
  v30 = *(v4 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BDE0();
  v9 = sub_4D98(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v29 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v28 - v29;
  v15 = v3 + *(v5 + 32);
  if (*v15)
  {
    v16 = *v15;
    sub_C4F0();

    v17 = sub_C560();
    v18 = *(v11 + 104);
    v19 = &enum case for ImageElement.ImageStyle.contactImage4(_:);
    if (v17)
    {
      v19 = &enum case for ImageElement.ImageStyle.image3(_:);
    }

    v20 = *v19;
    v28 = v14;
    v18(v14, v20, v2);
    sub_432C(v3, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v30 = swift_allocObject();
    sub_4498(v7, v30 + v21);
    v22 = sub_432C(v3, v7);
    __chkstk_darwin(v22);
    v23 = &v28 - v29;
    (*(v11 + 16))(&v28 - v29, v14, v2);
    v24 = (v21 + v6 + *(v11 + 80)) & ~*(v11 + 80);
    v25 = swift_allocObject();
    sub_4498(v7, v25 + v21);
    (*(v11 + 32))(v25 + v24, v23, v2);
    sub_C3E0();
    sub_3004(&qword_14390, &qword_CAE0);
    sub_47B4(&qword_14398, &type metadata accessor for SimpleItemRichView);
    sub_47FC();
    sub_C4C0();
    return (*(v11 + 8))(v28, v2);
  }

  else
  {
    v27 = *(v15 + 8);
    sub_C500();
    sub_47B4(&qword_14270, &type metadata accessor for Context);
    result = sub_C0F0();
    __break(1u);
  }

  return result;
}

uint64_t sub_3AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v5 = type metadata accessor for ContactDisambiguationView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BFB0();
  v10 = sub_7A04(v9);

  v21[3] = v10;
  swift_getKeyPath();
  v11 = sub_BDE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  (*(v12 + 16))(v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  sub_432C(a1, v8);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = (v13 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v14, v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_4498(v8, v16 + v15);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_4A24;
  *(v17 + 24) = v16;
  sub_3004(&qword_143A8, &qword_CB08);
  sub_3004(&qword_143B0, &unk_CB10);
  sub_4B48();
  v18 = sub_C3E0();
  v19 = sub_47B4(&qword_14398, &type metadata accessor for SimpleItemRichView);
  v21[1] = v18;
  v21[2] = v19;
  swift_getOpaqueTypeConformance2();
  return sub_C330();
}

uint64_t sub_3DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a1;
  v32 = a4;
  v5 = type metadata accessor for ContactDisambiguationView();
  v29 = *(v5 - 8);
  v28 = *(v29 + 64);
  __chkstk_darwin(v5 - 8);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PresentationUtilities();
  v7 = sub_BF10();
  v9 = v8;
  v10 = sub_BF30();
  v12 = v11;
  v13 = sub_8AF4(v7, v9, v10, v11, a2, 1);
  sub_2D00(v10, v12);

  v14 = sub_C3E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BF20();
  v59 = &type metadata for String;
  v60 = &protocol witness table for String;
  v57 = v19;
  v58 = v20;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = &type metadata for AnyView;
  v35 = &protocol witness table for AnyView;
  v33 = v13;

  sub_C3D0();
  v21 = v27;
  sub_432C(v30, v27);
  v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v23 = (v28 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_4498(v21, v24 + v22);
  *(v24 + v23) = v31;
  sub_47B4(&qword_14398, &type metadata accessor for SimpleItemRichView);
  sub_C2A0();

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_40F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_C4E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for ContactDisambiguationView() + 20);
  sub_C410();
  sub_BFC0();
  sub_3004(&qword_142E0, &qword_CB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C9C0;
  v11 = sub_BFD0();
  v13 = 0x7865646E69;
  if (v12)
  {
    v13 = v11;
  }

  v14 = 0xE500000000000000;
  if (v12)
  {
    v14 = v12;
  }

  v16[1] = v13;
  v16[2] = v14;
  sub_C570();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = a2;
  sub_C510();
  sub_C4D0();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_42BC(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_3004(&qword_143C0, &qword_CC30);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_432C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactDisambiguationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4390()
{
  v2 = type metadata accessor for ContactDisambiguationView();
  sub_3374(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_BFF0();
  sub_3350(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = *(v0 + 28);
  v11 = sub_C430();
  sub_3350(v11);
  (*(v12 + 8))(v1 + v5 + v10);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_4498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactDisambiguationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_44FC()
{
  v0 = *(*(type metadata accessor for ContactDisambiguationView() - 8) + 80);

  return sub_3A24();
}

uint64_t sub_456C()
{
  v3 = type metadata accessor for ContactDisambiguationView();
  sub_3374(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v8 = *(v7 + 64);
  v9 = sub_BDE0();
  sub_4D98(v9);
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v6 + v8 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = v5 | v14;
  v18 = v1 + v6;
  v19 = sub_BFF0();
  sub_3350(v19);
  (*(v20 + 8))(v1 + v6);
  v21 = *(v0 + 28);
  v22 = sub_C430();
  sub_3350(v22);
  (*(v23 + 8))(v18 + v21);

  (*(v11 + 8))(v1 + v15, v2);

  return _swift_deallocObject(v1, v15 + v16, v17 | 7);
}

uint64_t sub_46E8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContactDisambiguationView();
  sub_4DB0(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(sub_BDE0() - 8);
  v9 = v1 + ((v5 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_3AE8(v1 + v5, v9, a1);
}

uint64_t sub_47B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_47FC()
{
  result = qword_143A0;
  if (!qword_143A0)
  {
    sub_304C(&qword_14390, &qword_CAE0);
    sub_C3E0();
    sub_47B4(&qword_14398, &type metadata accessor for SimpleItemRichView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_143A0);
  }

  return result;
}

uint64_t sub_48B0()
{
  v3 = sub_BDE0();
  sub_4D98(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 16) & ~v6;
  v9 = *(v8 + 64);
  v10 = type metadata accessor for ContactDisambiguationView();
  sub_3374(v10);
  v12 = v11;
  v14 = v13;
  v15 = *(v12 + 80);
  v16 = (v7 + v9 + v15) & ~v15;
  v17 = *(v14 + 64);
  v18 = v6 | v15;
  (*(v5 + 8))(v1 + v7, v2);
  v19 = sub_BFF0();
  sub_3350(v19);
  (*(v20 + 8))(v1 + v16);
  v21 = *(v0 + 28);
  v22 = sub_C430();
  sub_3350(v22);
  (*(v23 + 8))(v1 + v16 + v21);

  return _swift_deallocObject(v1, v16 + v17, v18 | 7);
}

uint64_t sub_4A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_BDE0();
  sub_4DB0(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(type metadata accessor for ContactDisambiguationView() - 8);
  v11 = v2 + ((v7 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_3DC4(a1, v2 + v7, v11, a2);
}

uint64_t sub_4B08()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_4B48()
{
  result = qword_143B8;
  if (!qword_143B8)
  {
    sub_304C(&qword_143A8, &qword_CB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_143B8);
  }

  return result;
}

uint64_t sub_4BAC()
{
  v2 = type metadata accessor for ContactDisambiguationView();
  sub_3374(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;
  v11 = sub_BFF0();
  sub_3350(v11);
  (*(v12 + 8))(v10);
  v13 = *(v0 + 28);
  v14 = sub_C430();
  sub_3350(v14);
  (*(v15 + 8))(v10 + v13);

  return _swift_deallocObject(v1, v9 + 8, v7 | 7);
}

uint64_t sub_4CB8()
{
  v1 = type metadata accessor for ContactDisambiguationView();
  sub_4DB0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_40F0(v0 + v6, v7);
}

unint64_t sub_4D40()
{
  result = qword_143C8;
  if (!qword_143C8)
  {
    sub_304C(&qword_143D0, qword_CB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_143C8);
  }

  return result;
}

uint64_t sub_4DD4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_C080();
  v7 = sub_3388(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return sub_1574(v10, a2, v9);
  }

  v11 = sub_C430();
  v12 = sub_3388(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_12:
    v10 = a1 + v14;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v9 = sub_3004(&qword_143D8, &unk_CB40);
    v14 = a3[7];
    goto LABEL_12;
  }

  v15 = *(a1 + a3[6]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_4F0C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_C080();
  v9 = sub_3388(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_C430();
    result = sub_3388(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return result;
      }

      v11 = sub_3004(&qword_143D8, &unk_CB40);
      v16 = a4[7];
    }

    v12 = a1 + v16;
  }

  return sub_165C(v12, a2, a2, v11);
}

void sub_5040()
{
  sub_C080();
  if (v0 <= 0x3F)
  {
    sub_C430();
    if (v1 <= 0x3F)
    {
      sub_1DA8();
      if (v2 <= 0x3F)
      {
        sub_5138(319, &qword_14448, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          sub_5138(319, &unk_14450, type metadata accessor for VRXIdiom);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_5138(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_C0D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_51A8()
{
  v1 = v0 + *(type metadata accessor for ContactHandleDisambiguationView(0) + 32);
  v2 = *v1;
  if ((*(v1 + 8) & 1) == 0)
  {

    sub_C550();
    v3 = sub_C190();
    sub_C0A0();

    v4 = sub_C170();
    v5 = sub_1AA4(v4);
    v7 = v6;
    v9 = *(v8 + 64);
    __chkstk_darwin(v5);
    sub_3364();
    v12 = v11 - v10;
    sub_C160();
    swift_getAtKeyPath();
    sub_7214(v2, 0);
    (*(v7 + 8))(v12, v4);
    return v14;
  }

  return v2;
}

uint64_t sub_52F0@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for ContactHandleDisambiguationView(0);
  v3 = sub_4DB0(v2);
  v52 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v48 - v8;
  v9 = type metadata accessor for ContactHandleDisambiguationStyle(0);
  v10 = sub_8A8C(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_3364();
  v15 = v14 - v13;
  v16 = sub_BF40();
  v17 = sub_1AA4(v16);
  v55 = v18;
  v56 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_3364();
  v23 = v22 - v21;
  sub_C020();
  v24 = sub_BDE0();
  v51 = v24;
  v53 = *(v24 - 8);
  v25 = v53;
  v26 = *(v53 + 64);
  __chkstk_darwin(v24);
  sub_3364();
  v29 = v28 - v27;
  v30 = v1;
  sub_51A8();
  sub_6FDC();
  sub_C4A0();
  v31 = *(v25 + 16);
  v32 = v15 + *(v9 + 32);
  v49 = v29;
  v31(v29, v32, v24);
  sub_7034(v15);
  type metadata accessor for PresentationUtilities();
  v33 = sub_BF10();
  v35 = v34;
  v36 = sub_BF30();
  v38 = v37;
  v39 = sub_8AF4(v33, v35, v36, v37, v29, 1);
  sub_2D00(v36, v38);

  v40 = v50;
  sub_8998(v30, v50, type metadata accessor for ContactHandleDisambiguationView);
  v41 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v42 = swift_allocObject();
  sub_7220(v40, v42 + v41);
  *(v42 + ((v41 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v43 = v54;
  sub_8998(v30, v54, type metadata accessor for ContactHandleDisambiguationView);
  v44 = swift_allocObject();
  sub_7220(v43, v44 + v41);
  sub_3004(&qword_144A0, &qword_CBC8);
  sub_3004(&qword_144A8, &qword_CBD0);
  v45 = sub_C400();
  v46 = sub_749C(&qword_144B0, &type metadata accessor for DisambiguationTitle);
  v58 = v45;
  v59 = v46;
  swift_getOpaqueTypeConformance2();
  sub_7370();
  sub_C4C0();
  (*(v53 + 8))(v49, v51);
  return (*(v55 + 8))(v23, v56);
}

uint64_t sub_5734@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v28 = sub_C400();
  v30 = *(v28 - 8);
  v2 = *(v30 + 64);
  __chkstk_darwin(v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_C060();
  v35 = v5;
  sub_30C4();
  v6 = sub_C250();
  v8 = v7;
  v10 = v9;
  sub_C220();
  v11 = sub_C240();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_8328(v6, v8, v10 & 1);

  v36 = &type metadata for Text;
  v37 = &protocol witness table for Text;
  v18 = swift_allocObject();
  v34 = v18;
  *(v18 + 16) = v11;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15 & 1;
  *(v18 + 40) = v17;
  v32 = &type metadata for AnyView;
  v33 = &protocol witness table for AnyView;
  v31 = v27;

  sub_C3F0();
  v19 = sub_BE90();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v23, enum case for SeparatorStyle.remove(_:), v19);
  sub_749C(&qword_144B0, &type metadata accessor for DisambiguationTitle);
  v24 = v28;
  sub_C290();
  (*(v20 + 8))(v23, v19);
  return (*(v30 + 8))(v4, v24);
}

uint64_t sub_59F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[2] = a2;
  v3 = type metadata accessor for ContactHandleDisambiguationView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_C030();
  v8 = sub_3004(&qword_144C8, &qword_CBD8);
  v24[1] = v24;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v24 - v11;
  v13 = sub_C070();
  v14 = sub_7CF8(v13);

  v24[5] = v14;
  swift_getKeyPath();
  sub_8998(a1, v6, type metadata accessor for ContactHandleDisambiguationView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_7220(v6, v16 + v15);
  v17 = swift_allocObject();
  if (v7)
  {
    *(v17 + 16) = sub_8230;
  }

  else
  {
    *(v17 + 16) = sub_8170;
  }

  *(v17 + 24) = v16;
  sub_3004(&qword_144D8, &qword_CC00);
  sub_3004(&qword_144E0, &qword_CC08);
  sub_81C8();
  v18 = sub_C450();
  v19 = sub_749C(&qword_144D0, &type metadata accessor for SummaryItemStandardView);
  v24[3] = v18;
  v24[4] = v19;
  swift_getOpaqueTypeConformance2();
  sub_C330();
  v20 = sub_3004(&qword_144F0, &unk_CC10);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  (*(v9 + 16))(v24 - v22, v12, v8);
  swift_storeEnumTagMultiPayload();
  sub_73E8();
  sub_C180();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_5F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a2;
  v25 = a1;
  v26 = a3;
  v3 = type metadata accessor for ContactHandleDisambiguationView(0);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_C450();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BEE0();
  v12 = sub_6238(v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v40 = &type metadata for Text;
  v41 = &protocol witness table for Text;
  v19 = swift_allocObject();
  v39 = v19;
  *(v19 + 16) = v12;
  *(v19 + 24) = v14;
  *(v19 + 32) = v16 & 1;
  *(v19 + 40) = v18;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v31 = 0u;
  v30 = 0u;
  v29 = 0;
  v28 = 0u;
  v27 = 0u;
  sub_C440();
  sub_8998(v23, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactHandleDisambiguationView);
  v20 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v21 = swift_allocObject();
  sub_7220(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  *(v21 + ((v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  sub_749C(&qword_144D0, &type metadata accessor for SummaryItemStandardView);
  sub_C2A0();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_6238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactHandleDisambiguationStyle(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_51A8() == 4)
  {
    v28 = a1;
    v29 = a2;
    sub_30C4();

    v8 = sub_C250();
    v10 = v9;
    v12 = v11;
    sub_C200();
    v13 = sub_C1E0();
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    __chkstk_darwin(v13);
    v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 104))(v17, enum case for Font.Leading.tight(_:), v13);
    sub_C210();

    (*(v14 + 8))(v17, v13);
    v18 = sub_C240();

    sub_8328(v8, v10, v12 & 1);
  }

  else
  {
    v28 = a1;
    v29 = a2;
    sub_30C4();

    v19 = sub_C250();
    v21 = v20;
    v23 = v22;
    sub_51A8();
    sub_6FDC();
    sub_C4A0();
    v24 = *v7;

    sub_7034(v7);
    v25 = v21;
    v18 = sub_C240();
    sub_8328(v19, v25, v23 & 1);
  }

  return v18;
}

uint64_t sub_6504(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_3004(&qword_144F8, &qword_CC20);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_6570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a3;
  v4 = type metadata accessor for ContactHandleDisambiguationView(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v4 - 8);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_C450();
  v37 = *(v36 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v36);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BEE0();
  v11 = sub_6238(v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v53 = &type metadata for Text;
  v54 = &protocol witness table for Text;
  v18 = swift_allocObject();
  v52 = v18;
  *(v18 + 16) = v11;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15 & 1;
  *(v18 + 40) = v17;
  v19 = sub_BEF0();
  v21 = sub_68CC(v19, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v50 = &type metadata for Text;
  v51 = &protocol witness table for Text;
  v28 = swift_allocObject();
  v48 = 0;
  v49 = v28;
  *(v28 + 16) = v21;
  *(v28 + 24) = v23;
  *(v28 + 32) = v25 & 1;
  *(v28 + 40) = v27;
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v41 = 0u;
  v40 = 0u;
  sub_C440();
  v29 = v34;
  sub_8998(a2, v34, type metadata accessor for ContactHandleDisambiguationView);
  v30 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v31 = swift_allocObject();
  sub_7220(v29, v31 + v30);
  *(v31 + ((v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v38;
  sub_749C(&qword_144D0, &type metadata accessor for SummaryItemStandardView);
  v32 = v36;
  sub_C2A0();

  return (*(v37 + 8))(v8, v32);
}

uint64_t sub_68CC(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v4 = type metadata accessor for ContactHandleDisambiguationStyle(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_C0C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2 + *(type metadata accessor for ContactHandleDisambiguationView(0) + 28);
  v13 = sub_7810(v11);
  __chkstk_darwin(v13);
  (*(v9 + 104))(v11, enum case for ColorScheme.dark(_:), v8);
  LOBYTE(v10) = sub_C0B0();
  v14 = *(v9 + 8);
  v14(v11, v8);
  v14(v11, v8);
  sub_51A8();
  sub_6FDC();
  sub_C4A0();
  v15 = 56;
  if (v10)
  {
    v15 = 16;
  }

  sub_851C(&v7[v15], v55);
  sub_7034(v7);
  v16 = sub_51A8();
  v17 = v56;
  v52 = v57;
  v51 = sub_8580(v55, v56);
  v53 = v50;
  v54 = a2;
  sub_30C4();

  if (v16 == 4)
  {
    v18 = sub_C250();
    v50 = v17;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_C1F0();
    sub_C1C0();
    sub_C1D0();

    v24 = sub_C1E0();
    v25 = *(v24 - 8);
    v26 = *(v25 + 64);
    __chkstk_darwin(v24);
    v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 104))(v28, enum case for Font.Leading.tight(_:), v24);
    sub_C210();

    (*(v25 + 8))(v28, v24);
    v29 = sub_C240();
    v31 = v30;
    LOBYTE(v25) = v32;

    sub_8328(v19, v21, v23 & 1);

    v33 = sub_C230();
    v34 = v25 & 1;
    v35 = v29;
    v36 = v31;
  }

  else
  {
    v37 = sub_C250();
    v39 = v38;
    v41 = v40;
    sub_51A8();
    sub_C4A0();
    v42 = *(v7 + 1);

    sub_7034(v7);
    v43 = sub_C240();
    v45 = v44;
    v47 = v46;
    sub_8328(v37, v39, v41 & 1);

    v33 = sub_C230();
    v34 = v47 & 1;
    v35 = v43;
    v36 = v45;
  }

  sub_8328(v35, v36, v34);

  sub_85C4(v55);
  return v33;
}

uint64_t sub_6DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_C4E0();
  v5 = sub_1AA4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_3364();
  v12 = v11 - v10;
  v13 = a1 + *(type metadata accessor for ContactHandleDisambiguationView(0) + 20);
  sub_C410();
  sub_C040();
  sub_3004(&qword_142E0, &qword_CB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C9C0;
  sub_C050();
  sub_C570();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = a2;
  sub_C510();
  sub_C4D0();

  return (*(v7 + 8))(v12, v4);
}

uint64_t sub_6FA4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_6FDC()
{
  result = qword_14490;
  if (!qword_14490)
  {
    type metadata accessor for ContactHandleDisambiguationStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14490);
  }

  return result;
}

uint64_t sub_7034(uint64_t a1)
{
  v2 = type metadata accessor for ContactHandleDisambiguationStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7090()
{
  v2 = type metadata accessor for ContactHandleDisambiguationView(0);
  sub_8A9C(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = sub_C080();
  sub_3350(v9);
  (*(v10 + 8))(v1 + v5);
  v11 = v0[5];
  v12 = sub_C430();
  sub_3350(v12);
  (*(v13 + 8))(v1 + v5 + v11);

  v14 = v0[7];
  sub_3004(&qword_14498, &qword_CBC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C0C0();
    sub_3350(v15);
    (*(v16 + 8))(v8 + v14);
  }

  else
  {
    v17 = *(v8 + v14);
  }

  v18 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_8AD4();
  v19 = *(v1 + v18);

  return _swift_deallocObject(v1, v18 + 8, v4 | 7);
}

uint64_t sub_7214(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_7220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactHandleDisambiguationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7284@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactHandleDisambiguationView(0);
  sub_4DB0(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = *(v6 + 64);
  sub_8AB4(v7);

  return sub_5734(v9, a1);
}

uint64_t sub_7300@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContactHandleDisambiguationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_59F0(v4, a1);
}

unint64_t sub_7370()
{
  result = qword_144B8;
  if (!qword_144B8)
  {
    sub_304C(&qword_144A8, &qword_CBD0);
    sub_73E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_144B8);
  }

  return result;
}

unint64_t sub_73E8()
{
  result = qword_144C0;
  if (!qword_144C0)
  {
    sub_304C(&qword_144C8, &qword_CBD8);
    sub_C450();
    sub_749C(&qword_144D0, &type metadata accessor for SummaryItemStandardView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_144C0);
  }

  return result;
}

uint64_t sub_749C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_751C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), unsigned int *a4)
{
  v7 = type metadata accessor for ContactHandleDisambiguationStyle(0);
  sub_89F8(v7, a2);
  v8 = sub_8960(v7, a2);
  v9 = sub_C1A0();
  v10 = sub_C1B0();
  v18 = &type metadata for Color;
  v19 = &protocol witness table for Color;
  *&v17 = a3();
  v11 = sub_C2E0();
  *(v8 + 10) = &type metadata for Color;
  *(v8 + 11) = &protocol witness table for Color;
  *(v8 + 7) = v11;
  v12 = *(v7 + 32);
  v13 = *a4;
  v14 = sub_BDE0();
  sub_8A8C(v14);
  (*(v15 + 104))(&v8[v12], v13);
  *v8 = v9;
  *(v8 + 1) = v10;
  return sub_8A5C(&v17, (v8 + 16));
}

uint64_t sub_762C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_14148 != -1)
  {
    swift_once();
  }

  v4 = sub_8960(a1, qword_15170);
  return sub_8998(v4, a2, type metadata accessor for ContactHandleDisambiguationStyle);
}

uint64_t sub_7794@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = sub_8960(a1, a3);
  return sub_8998(v7, a4, type metadata accessor for ContactHandleDisambiguationStyle);
}

uint64_t sub_7810@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3004(&qword_14498, &qword_CBC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v17 - v6);
  sub_8610(v2, &v17 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_C0C0();
    return (*(*(v8 - 8) + 32))(a1, v7, v8);
  }

  else
  {
    v10 = *v7;
    sub_C550();
    v11 = sub_C190();
    sub_C0A0();

    v12 = sub_C170();
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    __chkstk_darwin(v12);
    v16 = &v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_C160();
    swift_getAtKeyPath();

    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_7A04(uint64_t a1)
{
  v2 = sub_3004(&qword_143C0, &qword_CC30);
  v3 = sub_1AA4(v2);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v43 = v11;
  v44 = &v39 - v10;
  v12 = 0;
  v13 = 0;
  v40 = *(v11 + 80);
  v14 = &_swiftEmptyArrayStorage;
  v41 = (v40 + 32) & ~v40;
  v15 = &_swiftEmptyArrayStorage + v41;
  v42 = *(a1 + 16);
  while (1)
  {
    if (v42 == v13)
    {
      v36 = v14[3];
      if (v36 >= 2)
      {
        v37 = v36 >> 1;
        v35 = __OFSUB__(v37, v12);
        v38 = v37 - v12;
        if (v35)
        {
          goto LABEL_35;
        }

        v14[2] = v38;
      }

      return v14;
    }

    v16 = sub_BF40();
    sub_8A8C(v16);
    v18 = *(v17 + 16);
    v19 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v13;
    v20 = *(v2 + 48);
    *v8 = v13;
    v18(&v8[v20], v19);
    result = sub_8684(v8, v44, &qword_143C0, &qword_CC30);
    if (v12)
    {
      v21 = v14;
    }

    else
    {
      v22 = v14[3];
      if (((v22 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v23 = a1;
      v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      sub_3004(&qword_14508, &qword_CC38);
      v26 = *(v43 + 72);
      v27 = v41;
      v21 = swift_allocObject();
      result = j__malloc_size(v21);
      if (!v26)
      {
        goto LABEL_33;
      }

      v28 = result - v27;
      if (result - v27 == 0x8000000000000000 && v26 == -1)
      {
        goto LABEL_34;
      }

      v30 = v28 / v26;
      v21[2] = v25;
      v21[3] = 2 * (v28 / v26);
      v31 = v21 + v27;
      v32 = v14[3];
      v33 = (v32 >> 1) * v26;
      if (v14[2])
      {
        if (v21 < v14 || v31 >= v14 + v41 + v33)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v14[2] = 0;
      }

      v15 = &v31[v33];
      v12 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - (v32 >> 1);

      a1 = v23;
    }

    v35 = __OFSUB__(v12--, 1);
    if (v35)
    {
      break;
    }

    result = sub_8684(v44, v15, &qword_143C0, &qword_CC30);
    v15 += *(v43 + 72);
    ++v13;
    v14 = v21;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_7CF8(uint64_t a1)
{
  v2 = sub_3004(&qword_144F8, &qword_CC20);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v41 = v9;
  v42 = &v37 - v8;
  v10 = 0;
  v11 = 0;
  v38 = *(v9 + 80);
  v12 = &_swiftEmptyArrayStorage;
  v39 = (v38 + 32) & ~v38;
  v13 = &_swiftEmptyArrayStorage + v39;
  v40 = *(a1 + 16);
  while (1)
  {
    if (v40 == v11)
    {
      v34 = v12[3];
      if (v34 >= 2)
      {
        v35 = v34 >> 1;
        v33 = __OFSUB__(v35, v10);
        v36 = v35 - v10;
        if (v33)
        {
          goto LABEL_35;
        }

        v12[2] = v36;
      }

      return v12;
    }

    v14 = sub_BF00();
    v15 = *(v14 - 8);
    v16 = *(v15 + 16);
    v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v11;
    v18 = *(v2 + 48);
    *v6 = v11;
    v16(&v6[v18], v17, v14);
    result = sub_8684(v6, v42, &qword_144F8, &qword_CC20);
    if (v10)
    {
      v19 = v12;
    }

    else
    {
      v20 = v12[3];
      if (((v20 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v21 = a1;
      v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      sub_3004(&qword_14500, &qword_CC28);
      v24 = *(v41 + 72);
      v25 = v39;
      v19 = swift_allocObject();
      result = j__malloc_size(v19);
      if (!v24)
      {
        goto LABEL_33;
      }

      v26 = result - v25;
      if (result - v25 == 0x8000000000000000 && v24 == -1)
      {
        goto LABEL_34;
      }

      v28 = v26 / v24;
      v19[2] = v23;
      v19[3] = 2 * (v26 / v24);
      v29 = v19 + v25;
      v30 = v12[3];
      v31 = (v30 >> 1) * v24;
      if (v12[2])
      {
        if (v19 < v12 || v29 >= v12 + v39 + v31)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v12[2] = 0;
      }

      v13 = &v29[v31];
      v10 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - (v30 >> 1);

      a1 = v21;
    }

    v33 = __OFSUB__(v10--, 1);
    if (v33)
    {
      break;
    }

    result = sub_8684(v42, v13, &qword_144F8, &qword_CC20);
    v13 += *(v41 + 72);
    ++v11;
    v12 = v19;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_8000()
{
  v2 = type metadata accessor for ContactHandleDisambiguationView(0);
  sub_8A9C(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = sub_C080();
  sub_3350(v9);
  (*(v10 + 8))(v1 + v5);
  v11 = v0[5];
  v12 = sub_C430();
  sub_3350(v12);
  (*(v13 + 8))(v1 + v5 + v11);

  v14 = v0[7];
  sub_3004(&qword_14498, &qword_CBC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C0C0();
    sub_3350(v15);
    (*(v16 + 8))(v8 + v14);
  }

  else
  {
    v17 = *(v8 + v14);
  }

  sub_8AD4();

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_8188()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_81C8()
{
  result = qword_144E8;
  if (!qword_144E8)
  {
    sub_304C(&qword_144D8, &qword_CC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_144E8);
  }

  return result;
}

uint64_t sub_8248(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ContactHandleDisambiguationView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_82E4()
{
  sub_8328(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8328(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_833C()
{
  v2 = type metadata accessor for ContactHandleDisambiguationView(0);
  sub_8A9C(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = sub_C080();
  sub_3350(v9);
  (*(v10 + 8))(v1 + v5);
  v11 = v0[5];
  v12 = sub_C430();
  sub_3350(v12);
  (*(v13 + 8))(v1 + v5 + v11);

  v14 = v0[7];
  sub_3004(&qword_14498, &qword_CBC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C0C0();
    sub_3350(v15);
    (*(v16 + 8))(v8 + v14);
  }

  else
  {
    v17 = *(v8 + v14);
  }

  sub_8AD4();

  return _swift_deallocObject(v1, ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_84BC()
{
  v0 = type metadata accessor for ContactHandleDisambiguationView(0);
  sub_4DB0(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  v7 = sub_8AB4(v5);
  return sub_6DC8(v7, v8);
}

uint64_t sub_851C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_8580(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_85C4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_8610(uint64_t a1, uint64_t a2)
{
  v4 = sub_3004(&qword_14498, &qword_CBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8684(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3004(a3, a4);
  sub_8A8C(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_86F8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_BDE0();
    v9 = a1 + *(a3 + 32);

    return sub_1574(v9, a2, v8);
  }
}

void *sub_8794(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_BDE0();
    v8 = v5 + *(a4 + 32);

    return sub_165C(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_8814()
{
  result = sub_88A8();
  if (v1 <= 0x3F)
  {
    result = sub_BDE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_88A8()
{
  result = qword_14578;
  if (!qword_14578)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_14578);
  }

  return result;
}

unint64_t sub_8908()
{
  result = qword_145B8;
  if (!qword_145B8)
  {
    sub_304C(&qword_145C0, "n\t");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_145B8);
  }

  return result;
}

uint64_t sub_8960(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_8998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_8A8C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t *sub_89F8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_8A5C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_8AB4@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 16) & ~a1;
  v4 = *(v2 + ((v1 + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  return v2 + v3;
}

uint64_t sub_8AD4()
{
  v3 = v1 + *(v0 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_7214(v4, v5);
}

uint64_t sub_8AF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  sub_9028(&v67);
  if (*(&v67 + 1))
  {
    v70[0] = v67;
    v70[1] = v68;
    v70[2] = v69;
    if (a4 >> 60 == 15)
    {
      v10 = sub_C350();
      v11 = sub_1AA4(v10);
      v13 = v12;
      v15 = *(v14 + 64);
      __chkstk_darwin(v11);
      sub_3364();
      sub_911C(v70, a6 & 1, a5, v17 - v16);
      v71 = v70[0];
      sub_9B48(&v71);
      v72 = v68;
      sub_9B48(&v72);
      v73[0] = v69;
      sub_9B48(v73);
      sub_9CF4(&qword_14668);
      v18 = sub_C260();
      v19 = *(v13 + 8);
      v20 = sub_9D48();
      v21(v20);
    }

    else
    {
      v40 = sub_3004(&qword_14670, &qword_CD00);
      v64 = v63;
      v41 = sub_1AA4(v40);
      v43 = v42;
      v45 = *(v44 + 64);
      __chkstk_darwin(v41);
      v47 = v63 - v46;
      v48 = sub_C350();
      v63[2] = v63;
      v49 = sub_1AA4(v48);
      v63[1] = a5;
      v51 = v50;
      v53 = *(v52 + 64);
      __chkstk_darwin(v49);
      sub_3364();
      v56 = v55 - v54;
      v57 = sub_9D48();
      sub_9B9C(v57, v58);
      sub_9644(v70, a3, a4, a6 & 1);
      v71 = v70[0];
      sub_9B48(&v71);
      v72 = v68;
      sub_9B48(&v72);
      v73[0] = v69;
      sub_9B48(v73);
      v59 = sub_9CF4(&qword_14668);
      sub_C280();
      (*(v51 + 8))(v56, v48);
      v65 = v48;
      v66 = v59;
      swift_getOpaqueTypeConformance2();
      v18 = sub_C260();
      v60 = sub_9D48();
      sub_2D00(v60, v61);
      (*(v43 + 8))(v47, v40);
    }
  }

  else
  {
    v22 = sub_C350();
    v23 = sub_1AA4(v22);
    v25 = v24;
    v27 = *(v26 + 64);
    __chkstk_darwin(v23);
    sub_3364();
    v30 = v29 - v28;
    v31 = sub_BE80();
    v64 = v63;
    v32 = *(*(v31 - 8) + 64);
    __chkstk_darwin(v31 - 8);
    sub_3364();
    sub_3004(&qword_14660, &qword_CCF8);
    v33 = sub_BDB0();
    sub_1AA4(v33);
    v35 = v34;
    v37 = *(v36 + 72);
    v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_C9C0;
    (*(v35 + 104))(v39 + v38, enum case for _ProtoIdiom.default(_:), v33);
    sub_9830(v39);
    sub_BDD0();

    sub_C370();
    sub_9CF4(&qword_14668);
    v18 = sub_C260();
    (*(v25 + 8))(v30, v22);
  }

  return v18;
}

void sub_9028(void *a1@<X8>)
{
  sub_BDA0();
  sub_9D14();
  if (v3 >> 60 != 15)
  {
    v10 = v2;
    v11 = v3;
    v12 = sub_BD90();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_BD80();
    sub_9CA0();
    sub_BD70();
    sub_2D00(v10, v11);

    v4 = v15;
    v5 = v16;
    v6 = v17;
    v7 = v18;
    v8 = v19;
    v9 = v20;
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
}

uint64_t sub_911C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_BE50();
  v10 = sub_1AA4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_3364();
  v17 = v16 - v15;
  sub_AFF0(*a1, a1[1], a1[2], a1[3], a3);
  v18 = sub_BE80();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_3364();
  v61 = v21 - v20;
  if (a2)
  {
    v22 = sub_BDF0();
    v59 = &v54;
    *&v60 = &v54;
    v23 = sub_1AA4(v22);
    v25 = v24;
    v58 = a4;
    v27 = *(v26 + 64);
    __chkstk_darwin(v23);
    v57 = v17;
    v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v28, v17, v9);
    v29 = *(v25 + 104);
    v30 = v29(v28, enum case for ImageElement.SourceType.contact(_:), v22);
    v56 = &v54;
    __chkstk_darwin(v30);
    v31 = a1[4];
    v32 = a1[5];
    v54 = v31;
    v33 = sub_BDE0();
    v55 = v9;
    v34 = sub_1AA4(v33);
    v36 = *(v35 + 64);
    __chkstk_darwin(v34);
    sub_3364();
    (*(v39 + 104))(v38 - v37, enum case for ImageElement.ImageStyle.default(_:));

    sub_BE00();
    v29(v28, enum case for ImageElement.SourceType.appIcon(_:), v22);
    sub_BDC0();
    v40 = *(v25 + 8);
    v40(v28, v22);
    v40(v28, v22);
    sub_C370();
    return (*(v12 + 8))(v57, v55);
  }

  else
  {
    sub_3004(&qword_14678, &qword_CD08);
    v42 = sub_BDF0();
    sub_1AA4(v42);
    v44 = v43;
    v46 = *(v45 + 72);
    sub_9D30();
    v47 = swift_allocObject();
    v60 = xmmword_C9C0;
    *(v47 + 16) = xmmword_C9C0;
    (*(v12 + 16))(v47 + v4, v17, v9);
    (*(v44 + 104))(v47 + v4, enum case for ImageElement.SourceType.contact(_:), v42);
    v62 = v47;
    sub_3004(&qword_14660, &qword_CCF8);
    v48 = sub_BDB0();
    sub_1AA4(v48);
    v50 = v49;
    v52 = *(v51 + 72);
    sub_9D30();
    v53 = swift_allocObject();
    *(v53 + 16) = v60;
    (*(v50 + 104))(v53 + v4, enum case for _ProtoIdiom.default(_:), v48);
    sub_9830(v53);
    sub_3004(&qword_14680, &qword_CD10);
    sub_9BF4();
    sub_BE70();

    sub_C370();
    return (*(v12 + 8))(v17, v9);
  }
}

uint64_t sub_9644(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_BED0();
  v7 = sub_1AA4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  if (a4)
  {
    v18[1] = v18;
    __chkstk_darwin(v12);
    v13 = sub_9D54();
    __chkstk_darwin(v13);
    v14 = *(a1 + 40);
    v18[2] = *(a1 + 32);
    v18[3] = v14;

    sub_C540();
    sub_BEB0();

    sub_BEA0();
    v15 = *(v9 + 8);
    v15(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v16 = sub_9D48();
    (v15)(v16);
  }

  else
  {
    sub_9D54();
  }

  return sub_C360();
}

uint64_t sub_9830(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_3004(&qword_14690, &qword_CD18);
  v2 = sub_C580();
  v3 = v2;
  v30 = *(v1 + 16);
  if (!v30)
  {
LABEL_15:

    return v3;
  }

  v35 = v2 + 56;
  result = sub_BDB0();
  v5 = result;
  v6 = 0;
  v7 = *(result - 8);
  v28 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v29 = v7;
  v34 = v7 + 16;
  v8 = (v7 + 8);
  v26 = (v7 + 32);
  v27 = v1;
  while (v6 < *(v1 + 16))
  {
    v31 = &v26;
    v32 = v6 + 1;
    v9 = *(v29 + 64);
    v36 = *(v29 + 72);
    __chkstk_darwin(result);
    v33 = *(v10 + 16);
    v33(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = v3[5];
    sub_9C58(&qword_14698, &type metadata accessor for _ProtoIdiom);
    v37 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = sub_C520();
    v13 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v14 = v12 & v13;
      v15 = (v12 & v13) >> 6;
      v16 = *(v35 + 8 * v15);
      v17 = 1 << (v12 & v13);
      v18 = (v12 & v13) * v36;
      if ((v17 & v16) == 0)
      {
        break;
      }

      __chkstk_darwin(v12);
      v19 = v3;
      (v33)(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3[6] + v20, v5);
      sub_9C58(&qword_146A0, &type metadata accessor for _ProtoIdiom);
      v21 = sub_C530();
      v22 = *v8;
      (*v8)(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      if (v21)
      {
        result = v22(v37, v5);
        v3 = v19;
        goto LABEL_12;
      }

      v12 = v14 + 1;
      v3 = v19;
    }

    *(v35 + 8 * v15) = v17 | v16;
    result = (*v26)(v3[6] + v18, v37, v5);
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v3[2] = v25;
LABEL_12:
    v6 = v32;
    v1 = v27;
    if (v32 == v30)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_9B9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_9BF4()
{
  result = qword_14688;
  if (!qword_14688)
  {
    sub_304C(&qword_14680, &qword_CD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14688);
  }

  return result;
}

uint64_t sub_9C58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_9CA0()
{
  result = qword_146A8;
  if (!qword_146A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_146A8);
  }

  return result;
}

uint64_t sub_9CF4(unint64_t *a1)
{

  return sub_9C58(a1, &type metadata accessor for RFImageView);
}

uint64_t sub_9D54()
{

  return static RFImage.pngData(_:dark:)(v1, v0, 0, 0xF000000000000000);
}

Swift::Int sub_9DAC(char a1)
{
  sub_C610();
  sub_C620(a1 & 1);
  return sub_C630();
}

Swift::Int sub_9E10()
{
  v1 = *v0;
  sub_C610();
  sub_C620(v1);
  return sub_C630();
}

uint64_t sub_9E64(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for BadgedImageView();
  v6 = sub_8A8C(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_3364();
  v11 = v10 - v9;
  v12 = a1 == 0x6D49646567646142 && a2 == 0xEF77656956656761;
  if (!v12 && (sub_C5C0() & 1) == 0)
  {
    sub_ABFC();
    swift_allocError();
    v17 = 0;
    goto LABEL_10;
  }

  v13 = sub_BD90();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_BD80();
  sub_9CA0();
  sub_BD70();
  if (v2)
  {

    sub_ABFC();
    swift_allocError();
    v17 = 1;
LABEL_10:
    *v16 = v17;
    swift_willThrow();
    return v5;
  }

  v48 = v57;
  v63 = v58;
  v44 = v59;
  v56 = v60;
  v52 = v62;
  v53 = v61;
  v54 = &v42;
  v55 = sub_BE50();
  v18 = sub_1AA4(v55);
  v45 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  v51 = v11;
  v22 = sub_BDE0();
  v43 = &v42;
  v23 = sub_1AA4(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  v47 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v42 - v47;
  v50 = v5;
  v46 = *(v25 + 104);
  v46(&v42 - v47, enum case for ImageElement.ImageStyle.contactImage4(_:), v22);
  v49 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AFF0(v48, v63, v44, v56, v28);
  v29 = (*(v25 + 8))(v28, v22);
  v48 = &v42;
  __chkstk_darwin(v29);
  v30 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v45;
  (*(v45 + 16))(v30, v30, v55);
  v32 = sub_BE20();
  v44 = &v42;
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  sub_3364();
  v34 = v52;

  v35 = sub_BE30();
  v43 = &v42;
  __chkstk_darwin(v35);
  v46(&v42 - v47, enum case for ImageElement.ImageStyle.image3(_:), v22);
  v36 = v51;
  sub_BE60();
  v37 = *(v31 + 8);
  v38 = v30;
  v39 = v55;
  v37(v38, v55);

  v40 = (v36 + *(v50 + 20));
  *v40 = v53;
  v40[1] = v34;
  sub_AD14(&qword_14760, type metadata accessor for BadgedImageView);
  v5 = sub_C320();
  v37(v49, v39);
  return v5;
}

uint64_t sub_A364(uint64_t a1)
{
  v78 = type metadata accessor for ContactConfirmationView();
  v1 = sub_8A8C(v78);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_3364();
  v76 = v5 - v4;
  v77 = sub_BFA0();
  v6 = sub_1AA4(v77);
  v75 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_3364();
  v72 = v11 - v10;
  v74 = type metadata accessor for ContactHandleDisambiguationView(0);
  v12 = sub_8A8C(v74);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_3364();
  v17 = v16 - v15;
  v73 = sub_C080();
  v18 = sub_1AA4(v73);
  v71 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_3364();
  v70 = v23 - v22;
  v24 = type metadata accessor for ContactDisambiguationView();
  v25 = sub_8A8C(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_3364();
  v30 = v29 - v28;
  v31 = sub_BFF0();
  v32 = sub_1AA4(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  sub_3364();
  v39 = v38 - v37;
  v40 = sub_C090();
  v41 = sub_1AA4(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v41);
  sub_3364();
  v48 = v47 - v46;
  (*(v43 + 16))(v47 - v46, a1, v40);
  v49 = (*(v43 + 88))(v48, v40);
  if (v49 == enum case for ContactDisambiguationSnippetPluginModel.contactDisambiguation(_:))
  {
    v50 = sub_AFE0();
    v51(v50);
    (*(v34 + 32))(v39, v48, v31);
    (*(v34 + 16))(v30, v39, v31);
    v52 = v30 + *(v24 + 20);
    sub_C420();
    v53 = (v30 + *(v24 + 24));
    sub_C500();
    sub_AFC0(&qword_14270);
    *v53 = sub_C100();
    v53[1] = v54;
    sub_AD14(&qword_14778, type metadata accessor for ContactDisambiguationView);
    v55 = sub_C260();
    sub_AD5C(v30, type metadata accessor for ContactDisambiguationView);
    (*(v34 + 8))(v39, v31);
    return v55;
  }

  if (v49 == enum case for ContactDisambiguationSnippetPluginModel.contactHandleDisambiguation(_:))
  {
    v56 = sub_AFE0();
    v57(v56);
    (*(v71 + 32))(v70, v48, v73);
    (*(v71 + 16))(v17, v70, v73);
    KeyPath = swift_getKeyPath();
    v59 = v17 + v74[5];
    sub_C420();
    v60 = (v17 + v74[6]);
    sub_C500();
    sub_AFC0(&qword_14270);
    *v60 = sub_C100();
    v60[1] = v61;
    v62 = v74[7];
    *(v17 + v62) = swift_getKeyPath();
    sub_3004(&qword_14498, &qword_CBC0);
    swift_storeEnumTagMultiPayload();
    v63 = v17 + v74[8];
    *v63 = KeyPath;
    *(v63 + 8) = 0;
    sub_AD14(&qword_14770, type metadata accessor for ContactHandleDisambiguationView);
    v55 = sub_C260();
    sub_AD5C(v17, type metadata accessor for ContactHandleDisambiguationView);
    (*(v71 + 8))(v70, v73);
    return v55;
  }

  if (v49 == enum case for ContactDisambiguationSnippetPluginModel.contactConfirmation(_:))
  {
    v64 = sub_AFE0();
    v65(v64);
    (*(v75 + 32))(v72, v48, v77);
    (*(v75 + 16))(v76, v72, v77);
    v66 = v76 + *(v78 + 20);
    sub_C420();
    v67 = (v76 + *(v78 + 24));
    sub_C500();
    sub_AFC0(&qword_14270);
    *v67 = sub_C100();
    v67[1] = v68;
    sub_AD14(&qword_14768, type metadata accessor for ContactConfirmationView);
    v55 = sub_C260();
    sub_AD5C(v76, type metadata accessor for ContactConfirmationView);
    (*(v75 + 8))(v72, v77);
    return v55;
  }

  result = sub_C5B0();
  __break(1u);
  return result;
}

uint64_t sub_AA18()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_AA74()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_AAF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AA74();
  *a1 = result;
  return result;
}

uint64_t sub_AB34(uint64_t a1)
{
  v2 = sub_C0C0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_C150();
}

unint64_t sub_ABFC()
{
  result = qword_14758;
  if (!qword_14758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14758);
  }

  return result;
}

uint64_t sub_AC50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_AC98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C120();
  *a1 = result;
  return result;
}

uint64_t sub_AD14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_AD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8A8C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriInferenceFlowsUIPlugin.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriInferenceFlowsUIPlugin.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xAF18);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_AF68()
{
  result = qword_14780;
  if (!qword_14780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14780);
  }

  return result;
}

uint64_t sub_AFC0(unint64_t *a1)
{

  return sub_AC50(a1, &type metadata accessor for Context);
}

uint64_t sub_AFF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = sub_BE20();
    v10 = sub_1AA4(v9);
    v12 = v11;
    v14 = *(v13 + 64);
    __chkstk_darwin(v10);
    sub_3364();
    v17 = v16 - v15;
    sub_3004(&qword_14788, &qword_CEE0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_C9C0;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;

    sub_BE10();
    (*(v12 + 104))(v17, enum case for ImageElement.Contact.Content.avatar(_:), v9);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v19 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v20 = sub_BE20();
    v21 = sub_1AA4(v20);
    v23 = v22;
    v25 = *(v24 + 64);
    __chkstk_darwin(v21);
    sub_3364();
    v28 = v27 - v26;
    if (v19)
    {

      sub_BE40();
      v29 = &enum case for ImageElement.Contact.Content.monogram(_:);
    }

    else
    {
      sub_BE10();
      v29 = &enum case for ImageElement.Contact.Content.avatar(_:);
    }

    (*(v23 + 104))(v28, *v29, v20);
  }

  v30 = sub_BDE0();
  v31 = sub_1AA4(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_3364();
  (*(v36 + 16))(v35 - v34, a5);
  return sub_BE60();
}

__n128 sub_B28C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_B2A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B2E0(uint64_t result, int a2, int a3)
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

uint64_t sub_B33C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000000000E010 == a2;
  if (v3 || (sub_C5C0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746361746E6F63 && a2 == 0xEF736C616974696ELL;
    if (v6 || (sub_C5C0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_C5C0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int sub_B49C(unsigned __int8 a1)
{
  sub_C610();
  sub_C620(a1);
  return sub_C630();
}

uint64_t sub_B4F0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x49746361746E6F63;
  }

  return 0x6449656C646E7562;
}

uint64_t sub_B57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B33C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B5C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B45C();
  *a1 = result;
  return result;
}

uint64_t sub_B5EC(uint64_t a1)
{
  v2 = sub_BA44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B628(uint64_t a1)
{
  v2 = sub_BA44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_B664(void *a1)
{
  v3 = v1;
  v5 = sub_3004(&qword_147A0, &qword_CFA8);
  v6 = sub_1AA4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v21 - v11;
  v13 = a1[4];
  sub_8580(a1, a1[3]);
  sub_BA44();
  sub_C650();
  v14 = *v3;
  v15 = v3[1];
  v24 = 0;
  sub_BD54(v14, v15, &v24);
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v23 = 1;
    sub_BD54(v16, v17, &v23);
    v18 = v3[4];
    v19 = v3[5];
    v22 = 2;
    sub_BD54(v18, v19, &v22);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_B7C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3004(&qword_14790, &qword_CFA0);
  v6 = sub_1AA4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  sub_8580(a1, a1[3]);
  sub_BA44();
  sub_C640();
  if (v2)
  {
    return sub_85C4(a1);
  }

  v30 = 0;
  v14 = sub_C590();
  v27 = v15;
  v29 = 1;
  v25 = sub_C590();
  v26 = v16;
  v28 = 2;
  v17 = sub_C590();
  v18 = v12;
  v20 = v19;
  (*(v8 + 8))(v18, v5);
  result = sub_85C4(a1);
  v22 = v27;
  *a2 = v14;
  a2[1] = v22;
  v23 = v26;
  a2[2] = v25;
  a2[3] = v23;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

double sub_B9E8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_B7C0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_BA44()
{
  result = qword_14798;
  if (!qword_14798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14798);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriInferenceFlowsDataModels.ViewData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriInferenceFlowsDataModels.ViewData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xBBFCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_BC40()
{
  result = qword_147A8;
  if (!qword_147A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_147A8);
  }

  return result;
}

unint64_t sub_BC98()
{
  result = qword_147B0;
  if (!qword_147B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_147B0);
  }

  return result;
}

unint64_t sub_BCF0()
{
  result = qword_147B8;
  if (!qword_147B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_147B8);
  }

  return result;
}

uint64_t sub_BD54(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, v3);
}