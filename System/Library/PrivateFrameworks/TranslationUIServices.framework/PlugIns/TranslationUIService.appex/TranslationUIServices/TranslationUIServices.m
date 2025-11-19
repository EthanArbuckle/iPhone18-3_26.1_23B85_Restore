__n128 sub_100002010(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002020(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002040(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100002090@<X0>(char *a1@<X8>)
{
  v2 = (sub_1000035C4(&qword_10006A138, &qword_100052788) - 8);
  v3 = *(*v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = sub_100050938();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  sub_100050948();
  sub_100050928();
  v17 = &v8[v2[11]];
  v18 = *(sub_1000035C4(&qword_10006A140, &qword_100052790) + 28);
  v19 = enum case for Image.Scale.large(_:);
  v20 = sub_100050EC8();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  v21 = v10[2];
  v21(v14, v16, v9);
  v28 = 1;
  sub_1000043D4(v8, v6);
  v21(a1, v14, v9);
  v22 = sub_1000035C4(&qword_10006A148, &qword_1000527C8);
  v23 = &a1[*(v22 + 48)];
  v24 = v28;
  *v23 = 0;
  v23[8] = v24;
  sub_1000043D4(v6, &a1[*(v22 + 64)]);
  sub_100004444(v8, &qword_10006A138, &qword_100052788);
  v25 = v10[1];
  v25(v16, v9);
  sub_100004444(v6, &qword_10006A138, &qword_100052788);
  return (v25)(v14, v9);
}

uint64_t sub_100002350()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for TranslateActionButtonView() + 20);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_100051368();
    v8 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_100003E6C(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1000024A8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100050798();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_1000035C4(&qword_10006A130, &qword_100052780);
  return sub_100002090((a1 + *(v2 + 44)));
}

uint64_t sub_100002500@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_100050958();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000035C4(&qword_10006A078, &qword_1000526A0);
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v60);
  v10 = &v58 - v9;
  v58 = sub_1000035C4(&qword_10006A080, &qword_1000526A8);
  v11 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v13 = &v58 - v12;
  v59 = sub_1000035C4(&qword_10006A088, &qword_1000526B0);
  v14 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v16 = &v58 - v15;
  v61 = sub_1000035C4(&qword_10006A090, &qword_1000526B8);
  v17 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v19 = &v58 - v18;
  v62 = sub_1000035C4(&qword_10006A098, &qword_1000526C0);
  v20 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v66 = &v58 - v21;
  v64 = sub_1000035C4(&qword_10006A0A0, &qword_1000526C8);
  v22 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v65 = &v58 - v23;
  v63 = sub_1000035C4(&qword_10006A0A8, &qword_1000526D0);
  v24 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v26 = &v58 - v25;
  v67 = v1;
  sub_100050968();
  sub_10000337C(&qword_10006A0B0, &type metadata accessor for ButtonStyleConfiguration.Label);
  sub_100003D24();
  sub_100050CB8();
  (*(v3 + 8))(v6, v2);
  LOBYTE(v2) = sub_100050A78();
  v27 = sub_100050AB8();
  sub_100050AB8();
  if (sub_100050AB8() != v2)
  {
    v27 = sub_100050AB8();
  }

  sub_100050368();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  (*(v7 + 32))(v13, v10, v60);
  v36 = &v13[*(v58 + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  sub_100051078();
  sub_100050538();
  sub_10000360C(v13, v16, &qword_10006A080, &qword_1000526A8);
  v37 = &v16[*(v59 + 36)];
  v38 = v74;
  *(v37 + 4) = v73;
  *(v37 + 5) = v38;
  *(v37 + 6) = v75;
  v39 = v70;
  *v37 = v69;
  *(v37 + 1) = v39;
  v40 = v72;
  *(v37 + 2) = v71;
  *(v37 + 3) = v40;
  sub_10000360C(v16, v19, &qword_10006A088, &qword_1000526B0);
  v19[*(v61 + 36)] = 0;
  if (sub_100050978())
  {
    v41 = [objc_opt_self() tableCellDefaultSelectionTintColor];
    v42 = sub_100050E18();
  }

  else
  {
    v42 = sub_100050E58();
  }

  v43 = v42;
  v44 = sub_100050A88();
  v45 = v66;
  sub_10000360C(v19, v66, &qword_10006A090, &qword_1000526B8);
  v46 = v45 + *(v62 + 36);
  *v46 = v43;
  *(v46 + 8) = v44;
  LOBYTE(v43) = sub_100002350();
  v47 = objc_opt_self();
  v48 = &selRef_labelColor;
  if ((v43 & 1) == 0)
  {
    v48 = &selRef_secondaryLabelColor;
  }

  v49 = [v47 *v48];
  v50 = sub_100050E18();
  KeyPath = swift_getKeyPath();
  v52 = v65;
  sub_10000360C(v45, v65, &qword_10006A098, &qword_1000526C0);
  v53 = (v52 + *(v64 + 36));
  *v53 = KeyPath;
  v53[1] = v50;
  LOBYTE(v50) = sub_100050978();
  sub_10000360C(v52, v26, &qword_10006A0A0, &qword_1000526C8);
  v54 = &v26[*(v63 + 36)];
  *v54 = 0;
  v54[8] = v50 & 1;
  LOBYTE(v50) = sub_100002350();
  v55 = v68;
  sub_10000360C(v26, v68, &qword_10006A0A8, &qword_1000526D0);
  result = sub_1000035C4(&qword_10006A0C0, &qword_100052708);
  v57 = v55 + *(result + 36);
  *v57 = 0;
  *(v57 + 8) = v50 & 1;
  return result;
}

uint64_t sub_100002C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100050988();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  KeyPath = swift_getKeyPath();
  result = type metadata accessor for TranslateActionButtonView();
  v7 = a2 + *(result + 20);
  *v7 = KeyPath;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_100002C94@<X0>(uint64_t a1@<X8>)
{
  v38[1] = a1;
  v1 = sub_1000035C4(&qword_100069F68, &qword_100052560);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v38 - v3;
  v5 = sub_1000035C4(&qword_100069F70, &qword_100052568);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = v38 - v8;
  v10 = sub_1000035C4(&qword_100069F78, &qword_100052570);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = v38 - v13;
  v15 = sub_1000035C4(&qword_100069F80, &qword_100052578);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v38 - v17;
  *v4 = sub_100050888();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v19 = &v4[*(sub_1000035C4(&qword_100069F88, &qword_100052580) + 44)];
  sub_1000509B8();
  sub_100051078();
  sub_100050538();
  sub_10000360C(v4, v9, &qword_100069F68, &qword_100052560);
  v20 = &v9[*(v6 + 44)];
  v21 = v44;
  *(v20 + 4) = v43;
  *(v20 + 5) = v21;
  *(v20 + 6) = v45;
  v22 = v40;
  *v20 = v39;
  *(v20 + 1) = v22;
  v23 = v42;
  *(v20 + 2) = v41;
  *(v20 + 3) = v23;
  v24 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v25 = sub_100050E18();
  v26 = sub_100050A88();
  sub_10000360C(v9, v14, &qword_100069F70, &qword_100052568);
  v27 = &v14[*(v11 + 44)];
  *v27 = v25;
  v27[8] = v26;
  v28 = &v18[*(v15 + 36)];
  v29 = *(sub_100050528() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = sub_100050828();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #10.0 }

  *v28 = _Q0;
  *&v28[*(sub_1000035C4(&qword_100069F90, &qword_100052588) + 36)] = 256;
  sub_10000360C(v14, v18, &qword_100069F78, &qword_100052570);
  sub_100003674();
  sub_1000038E4();
  sub_100050CD8();
  return sub_100004444(v18, &qword_100069F80, &qword_100052578);
}

uint64_t sub_100003020@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000506F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100003080(uint64_t a1, id *a2)
{
  result = sub_100051138();
  *a2 = 0;
  return result;
}

uint64_t sub_1000030F8(uint64_t a1, id *a2)
{
  v3 = sub_100051148();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003178@<X0>(void *a1@<X8>)
{
  sub_100051158();
  v2 = sub_100051128();

  *a1 = v2;
  return result;
}

uint64_t sub_1000031BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100051128();

  *a2 = v5;
  return result;
}

uint64_t sub_100003204@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100051158();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100003230(uint64_t a1)
{
  v2 = sub_10000337C(&qword_100069F58, type metadata accessor for Key);
  v3 = sub_10000337C(&qword_100069F60, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000337C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000033C4()
{
  v1 = *v0;
  sub_100051158();
  v2 = sub_100051208();

  return v2;
}

uint64_t sub_100003400()
{
  v1 = *v0;
  sub_100051158();
  sub_1000511C8();
}

Swift::Int sub_100003454()
{
  v1 = *v0;
  sub_100051158();
  sub_1000516C8();
  sub_1000511C8();
  v2 = sub_1000516F8();

  return v2;
}

uint64_t sub_1000034C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100051158();
  v6 = v5;
  if (v4 == sub_100051158() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100051658();
  }

  return v9 & 1;
}

uint64_t sub_1000035C4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000360C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000035C4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100003674()
{
  result = qword_100069F98;
  if (!qword_100069F98)
  {
    sub_10000372C(&qword_100069F80, &qword_100052578);
    sub_100003774();
    sub_1000044E8(&qword_100069FC8, &qword_100069F90, &qword_100052588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069F98);
  }

  return result;
}

uint64_t sub_10000372C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003774()
{
  result = qword_100069FA0;
  if (!qword_100069FA0)
  {
    sub_10000372C(&qword_100069F78, &qword_100052570);
    sub_10000382C();
    sub_1000044E8(&qword_100069FB8, &qword_100069FC0, &unk_100052590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069FA0);
  }

  return result;
}

unint64_t sub_10000382C()
{
  result = qword_100069FA8;
  if (!qword_100069FA8)
  {
    sub_10000372C(&qword_100069F70, &qword_100052568);
    sub_1000044E8(&qword_100069FB0, &qword_100069F68, &qword_100052560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069FA8);
  }

  return result;
}

unint64_t sub_1000038E4()
{
  result = qword_100069FD0;
  if (!qword_100069FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069FD0);
  }

  return result;
}

uint64_t sub_100003948()
{
  sub_10000372C(&qword_100069F80, &qword_100052578);
  sub_100003674();
  sub_1000038E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for TranslateActionButtonView()
{
  result = qword_10006A030;
  if (!qword_10006A030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100050988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100003B0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100050988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_100003BC8()
{
  sub_100050988();
  if (v0 <= 0x3F)
  {
    sub_100003C70(319, &unk_10006A040, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100003C70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100003D24()
{
  result = qword_10006A0B8;
  if (!qword_10006A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0B8);
  }

  return result;
}

uint64_t sub_100003D9C(uint64_t a1)
{
  v2 = sub_100050EC8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000505C8();
}

uint64_t sub_100003E6C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100003E8C()
{
  result = qword_10006A0C8;
  if (!qword_10006A0C8)
  {
    sub_10000372C(&qword_10006A0C0, &qword_100052708);
    sub_100003F44();
    sub_1000044E8(&qword_10006A120, &qword_10006A128, &qword_100052740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0C8);
  }

  return result;
}

unint64_t sub_100003F44()
{
  result = qword_10006A0D0;
  if (!qword_10006A0D0)
  {
    sub_10000372C(&qword_10006A0A8, &qword_1000526D0);
    sub_100003FFC();
    sub_1000044E8(&qword_10006A120, &qword_10006A128, &qword_100052740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0D0);
  }

  return result;
}

unint64_t sub_100003FFC()
{
  result = qword_10006A0D8;
  if (!qword_10006A0D8)
  {
    sub_10000372C(&qword_10006A0A0, &qword_1000526C8);
    sub_1000040B4();
    sub_1000044E8(&qword_10006A110, &qword_10006A118, &qword_100052738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0D8);
  }

  return result;
}

unint64_t sub_1000040B4()
{
  result = qword_10006A0E0;
  if (!qword_10006A0E0)
  {
    sub_10000372C(&qword_10006A098, &qword_1000526C0);
    sub_10000416C();
    sub_1000044E8(&qword_100069FB8, &qword_100069FC0, &unk_100052590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0E0);
  }

  return result;
}

unint64_t sub_10000416C()
{
  result = qword_10006A0E8;
  if (!qword_10006A0E8)
  {
    sub_10000372C(&qword_10006A090, &qword_1000526B8);
    sub_100004224();
    sub_1000044E8(&qword_10006A100, &qword_10006A108, ".E");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0E8);
  }

  return result;
}

unint64_t sub_100004224()
{
  result = qword_10006A0F0;
  if (!qword_10006A0F0)
  {
    sub_10000372C(&qword_10006A088, &qword_1000526B0);
    sub_1000042B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0F0);
  }

  return result;
}

unint64_t sub_1000042B0()
{
  result = qword_10006A0F8;
  if (!qword_10006A0F8)
  {
    sub_10000372C(&qword_10006A080, &qword_1000526A8);
    sub_100050958();
    sub_10000337C(&qword_10006A0B0, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100003D24();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0F8);
  }

  return result;
}

uint64_t sub_1000043D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A138, &qword_100052788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004444(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000035C4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000044E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000372C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100004530()
{
  sub_1000035C4(&qword_10006A488, &unk_100052BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100052820;
  strcpy((inited + 32), "sourceEditable");
  *(inited + 47) = -18;
  sub_100009FC4(0, &qword_10006A490, NSNumber_ptr);
  *(inited + 48) = sub_100051498(*v0);
  *(inited + 56) = 0x6563697665446E6FLL;
  *(inited + 64) = 0xEF64656C62616E45;
  *(inited + 72) = sub_100051498(*(v0 + 1));
  *(inited + 80) = 0x4449656C646E7562;
  *(inited + 88) = 0xE800000000000000;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(inited + 96) = sub_100051128();
  *(inited + 104) = 0x756F436E656B6F74;
  *(inited + 112) = 0xEA0000000000746ELL;
  *(inited + 120) = sub_1000514A8(*(v0 + 8));
  v4 = sub_10004DF48(inited);
  swift_setDeallocating();
  sub_1000035C4(&qword_10006A498, &qword_1000557B0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_100004698()
{
  v0 = sub_100051128();
  sub_1000048AC(v13);
  v1 = sub_100009F34(v13, v14);
  v2 = *(v1 + 1);
  v15 = *v1;
  v16 = v2;
  v17 = *(v1 + 16);
  sub_100004530();
  sub_100009FC4(0, &qword_10006A480, NSObject_ptr);
  isa = sub_1000510D8().super.isa;

  sub_100009F78(v13);
  AnalyticsSendEvent();

  if (qword_100069F10 != -1)
  {
    swift_once();
  }

  v4 = sub_100050268();
  sub_100008BA0(v4, qword_10006E078);
  v5 = sub_100050248();
  v6 = sub_100051348();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "SELF Invocation log start for presenting system translation", v7, 2u);
  }

  sub_100004FF4();
  sub_1000048AC(v13);
  v8 = *(sub_100009F34(v13, v14) + 32);
  sub_100009F78(v13);
  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  sub_1000048AC(v13);
  v10 = *(sub_100009F34(v13, v14) + 33);
  sub_100009F78(v13);
  if (v10)
  {
    v11 = 9;
  }

  else
  {
    v11 = 6;
  }

  sub_10002D384(3, v9, v11);
}

uint64_t sub_1000048AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1000035C4(&qword_10006A470, &qword_100052B78);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v34 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  sub_100044FF4([v1 extensionContext], &v34 - v14);
  if (*&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController_defaultApp])
  {
    v35 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_100004FF4();
    v19 = *(v17 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier);
    v18 = *(v17 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier + 8);

    v20 = 1819047278;
    if (v18)
    {
      v20 = v19;
    }

    v35 = v20;
    v16 = 0xE400000000000000;
    if (v18)
    {
      v16 = v18;
    }
  }

  v34 = v16;
  sub_10000A00C(v15, v13, &qword_10006A470, &qword_100052B78);
  v21 = type metadata accessor for TranslationRequestContext();
  v22 = *(*(v21 - 8) + 48);
  if (v22(v13, 1, v21) == 1)
  {
    sub_100004444(v13, &qword_10006A470, &qword_100052B78);
    v23 = 0;
  }

  else
  {
    v23 = v13[*(v21 + 36)];
    sub_100009EC0(v13);
  }

  sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
  v24 = sub_100051388();
  v25 = sub_100051398();

  sub_10000A00C(v15, v10, &qword_10006A470, &qword_100052B78);
  if (v22(v10, 1, v21) == 1)
  {
    sub_100004444(v10, &qword_10006A470, &qword_100052B78);
    v26 = 0;
  }

  else
  {
    v27 = v10[*(v21 + 44)];
    sub_100009EC0(v10);
    v26 = v27 == 1;
  }

  sub_10000A00C(v15, v7, &qword_10006A470, &qword_100052B78);
  if (v22(v7, 1, v21) == 1)
  {
    sub_100004444(v7, &qword_10006A470, &qword_100052B78);
    v28 = 0;
  }

  else
  {
    v29 = v7[*(v21 + 44)];
    sub_100009EC0(v7);
    v28 = v29 == 2;
  }

  a1[3] = &type metadata for ActionViewController.Data;
  a1[4] = &off_100066658;
  v30 = swift_allocObject();
  *a1 = v30;
  *(v30 + 16) = v23;
  *(v30 + 17) = v25 & 1;
  v31 = v34;
  v32 = v35;
  *(v30 + 24) = 0;
  *(v30 + 32) = v32;
  *(v30 + 40) = v31;
  *(v30 + 48) = v26;
  *(v30 + 49) = v28;
  return sub_100004444(v15, &qword_10006A470, &qword_100052B78);
}

void sub_100004C40(uint64_t a1, uint64_t a2)
{
  sub_100004FF4();
  sub_10002D498(a1, a2);

  if (qword_100069F10 != -1)
  {
    swift_once();
  }

  v4 = sub_100050268();
  sub_100008BA0(v4, qword_10006E078);
  oslog = sub_100050248();
  v5 = sub_100051348();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "SELF Invocation log cancelled for presenting system translation", v6, 2u);
  }
}

uint64_t sub_100004F58()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationContext;
  if (*(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationContext))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationContext);
  }

  else
  {
    v3 = type metadata accessor for TranslationContext();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v2 = swift_allocObject();
    sub_1000502D8();
    v6 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100004FF4()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel;
  if (*(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel);
  }

  else
  {
    v3 = v0;
    v4 = type metadata accessor for TranslationModel(0);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_100031C44();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_100005070()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostController;
  v2 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostController);
  }

  else
  {
    v4 = v0;
    sub_100005210();
    v5 = objc_allocWithZone(sub_1000035C4(&qword_10006A458, &qword_100052B68));
    v6 = sub_100050118();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100005104()
{
  v1 = [v0 extensionContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 inputItems];

    v4 = sub_100051248();
    if (*(v4 + 16))
    {
      sub_1000091AC(v4 + 32, v8);

      sub_100009FC4(0, &qword_10006A450, NSExtensionItem_ptr);
      if (swift_dynamicCast())
      {
        v5 = [v7 attributedContentText];

        return v5;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_100005210()
{
  v1 = v0;
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v2 = sub_100050268();
  sub_100008BA0(v2, qword_10006E090);
  v3 = sub_100050248();
  v4 = sub_100051348();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "in rootView()", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController_defaultApp);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = sub_100005104();
  if (!v8)
  {

LABEL_9:
    sub_100004FF4();
    sub_100004F58();
    KeyPath = swift_getKeyPath();
    type metadata accessor for TranslationModel(0);
    sub_10000929C(&qword_10006A340, 255, type metadata accessor for TranslationModel);
    v24 = sub_100050488();
    v40 = v25;
    v42 = v24;
    type metadata accessor for TranslationContext();
    sub_10000929C(&qword_10006A348, 255, type metadata accessor for TranslationContext);
    v38 = sub_100050488();
    v27 = v26;
    v28 = swift_getKeyPath();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_getKeyPath();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_getKeyPath();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_getKeyPath();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v46 = v42;
    *(&v46 + 1) = v40;
    *&v48 = v38;
    *(&v48 + 1) = v27;
    LOBYTE(v50) = 0;
    *(&v50 + 1) = v28;
    *&v53 = sub_10000931C;
    *(&v53 + 1) = v29;
    *&v55 = v30;
    *(&v55 + 1) = sub_10000A164;
    *&v57 = v31;
    *(&v57 + 1) = v32;
    *&v58 = sub_10000A168;
    *(&v58 + 1) = v33;
    *&v59 = v34;
    *(&v59 + 1) = sub_100009448;
    sub_1000035C4(&qword_10006A350, &qword_100052AD8);
    sub_100009450();
    v21 = sub_100050C88();
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v69 = v35;
    v62 = KeyPath;
    v63 = v50;
    v64 = v53;
    v65 = v55;
    v60 = v46;
    v61 = v48;
    v22 = &qword_10006A350;
    v23 = &qword_100052AD8;
    goto LABEL_10;
  }

  v9 = v8;
  v10 = v7;
  v43 = sub_100004FF4();
  v11 = type metadata accessor for DefaultInterstitialModel();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 32) = 0xD000000000000022;
  *(v14 + 40) = 0x800000010005EB40;
  v15 = v10;
  v41 = v9;
  sub_10004FE08();
  *(v14 + 16) = v15;
  sub_10000C904();
  v39 = swift_getKeyPath();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_getKeyPath();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_getKeyPath();
  sub_100004F58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *&v45 = v15;
  *(&v45 + 1) = v43;
  *&v47 = v41;
  *(&v47 + 1) = v14;
  *&v49 = v39;
  *(&v49 + 1) = sub_10000A160;
  *&v51 = v16;
  *(&v51 + 1) = v37;
  *&v52 = sub_100009734;
  *(&v52 + 1) = v17;
  *&v54 = v18;
  *(&v54 + 1) = sub_100009750;
  *&v56 = v19;
  *(&v56 + 1) = v20;
  sub_1000035C4(&qword_10006A3D8, &qword_100052B40);
  sub_100009808();
  v21 = sub_100050C88();

  v64 = v52;
  v65 = v54;
  v66 = v56;
  LOBYTE(v67) = v60;
  v60 = v45;
  v61 = v47;
  v62 = v49;
  v63 = v51;
  v22 = &qword_10006A3D8;
  v23 = &qword_100052B40;
LABEL_10:
  sub_100004444(&v60, v22, v23);
  return v21;
}

double sub_1000058DC@<D0>(void (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  a1();
  sub_100050758();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100005958(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  a5(a1, a2);

  return sub_100050768();
}

uint64_t sub_1000059BC@<X0>(_BYTE *a1@<X8>)
{
  sub_100009B40();
  result = sub_100050758();
  *a1 = v3;
  return result;
}

uint64_t sub_100005A0C(char *a1)
{
  v2 = *a1;
  sub_100009B40();
  return sub_100050768();
}

void sub_100005A58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100004C40(0x657373696D736944, 0xE900000000000064);
    v2 = sub_100007350();
    if (v2)
    {
      [v2 dismiss];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100005AE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100006EC0();
  }
}

void sub_100005B38(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v4 = sub_100050268();
    sub_100008BA0(v4, qword_10006E090);
    v5 = a1;
    v6 = sub_100050248();
    v7 = sub_100051338();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      *(v8 + 4) = [v5 length];

      _os_log_impl(&_mh_execute_header, v6, v7, "Finish with replacement of length %{public}ld", v8, 0xCu);
    }

    else
    {

      v6 = v5;
    }

    v9 = sub_100007350();
    if (v9)
    {
      [v9 finishWithTranslation:v5];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100005CB8@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_100050598();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_100009BF4;
  a1[1] = result;
  return result;
}

uint64_t sub_100005D1C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1000505A8();
}

void sub_100005D88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100007028();
  }
}

id sub_100005DDC()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController);
  }

  else
  {
    v4 = sub_100005070();
    v5 = [objc_allocWithZone(type metadata accessor for SecureNavigationController()) initWithRootViewController:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_100005E78()
{
  v1 = v0;
  v2 = sub_1000035C4(&qword_10006A470, &qword_100052B78);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v48 - v4;
  v6 = type metadata accessor for TranslationRequestContext();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v48 - v12;
  v14 = type metadata accessor for ActionViewController();
  v52.receiver = v0;
  v52.super_class = v14;
  objc_msgSendSuper2(&v52, "_willAppearInRemoteViewController");
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v15 = sub_100050268();
  sub_100008BA0(v15, qword_10006E090);
  v16 = sub_100050248();
  v17 = sub_100051348();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "in _willAppearInRemoteViewController", v18, 2u);
  }

  sub_100044FF4([v1 extensionContext], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100004444(v5, &qword_10006A470, &qword_100052B78);
    v19 = sub_100050248();
    v20 = sub_100051358();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No request context from NSExtensionItem", v21, 2u);
    }
  }

  else
  {
    sub_100009D80(v5, v13);
    if (v13[8] == 1)
    {
      v22 = sub_100004FF4();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = (v22 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler);
      v25 = *(v22 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler);
      v26 = *(v22 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler + 8);
      *v24 = sub_100009F1C;
      v24[1] = v23;

      sub_100009F24(v25);
    }

    v27 = [v1 _hostApplicationBundleIdentifier];
    v50 = v11;
    if (v27)
    {
      v28 = v27;
      v29 = sub_100051158();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v49 = v29;
    v32 = (sub_100004FF4() + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier);
    v33 = v32[1];
    *v32 = v29;
    v32[1] = v31;

    v34 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel;
    v35 = *&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel];
    v36 = v6[8];
    v37 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_cplIntervalID;
    swift_beginAccess();

    sub_100009DE4(&v13[v36], v35 + v37);
    swift_endAccess();

    v38 = *&v1[v34];
    v39 = v13[v6[9]];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v51) = v39;

    sub_100050308();
    *(*&v1[v34] + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_requestOrigin) = v13[v6[11]];
    if (*&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController_defaultApp])
    {
    }

    else
    {
      v40 = v50;
      sub_100009E5C(v13, v50);

      v41 = sub_100050248();
      v42 = sub_100051378();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v51 = v48;
        *v43 = 136446466;
        if (v31)
        {
          v44 = v49;
        }

        else
        {
          v44 = 7104878;
        }

        if (!v31)
        {
          v31 = 0xE300000000000000;
        }

        v45 = sub_100008C04(v44, v31, &v51);

        *(v43 + 4) = v45;
        *(v43 + 12) = 1026;
        v46 = *(v40 + v6[11]) == 2;
        sub_100009EC0(v40);
        *(v43 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v41, v42, "System-wide translation invoked from bundleID: %{public}s, request developer-originated: %{BOOL,public}d", v43, 0x12u);
        sub_100009F78(v48);
      }

      else
      {
        sub_100009EC0(v40);
      }

      v47 = *&v1[v34];

      sub_10002D9A0(v13);
    }

    sub_100004698();
    sub_100009EC0(v13);
  }
}

void sub_100006494()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100007350();

    if (v2)
    {
      [v2 confirmUserConsent];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100006550()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for ActionViewController();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor:v4];

  v5 = sub_100005DDC();
  v6 = [v5 view];

  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = [v3 clearColor];
  [v6 setBackgroundColor:v7];

  v8 = sub_100005070();
  v9 = [v8 view];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = [v3 clearColor];
  [v9 setBackgroundColor:v10];

  v11 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController;
  v12 = [*&v0[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController] view];
  if (v12)
  {
    v13 = v12;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = objc_opt_self();
    v15 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100009D50;
    *(v16 + 24) = v15;
    v18[4] = sub_100009BF4;
    v18[5] = v16;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_100006CD0;
    v18[3] = &unk_100066578;
    v17 = _Block_copy(v18);

    [v14 performWithoutAnimation:v17];
    _Block_release(v17);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      [v0 addChildViewController:*&v0[v11]];

      return;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
}

void sub_10000683C()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong view];

  if (!v1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_100005DDC();

  v4 = [v3 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v1 addSubview:v4];

  sub_1000035C4(&qword_10006A460, &qword_100052B70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100052830;
  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_100005DDC();

  v8 = [v7 view];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = [v8 topAnchor];

  v10 = swift_unknownObjectUnownedLoadStrong();
  v11 = [v10 view];

  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = [v11 topAnchor];

  v13 = [v9 constraintEqualToAnchor:v12];
  *(v5 + 32) = v13;
  v14 = swift_unknownObjectUnownedLoadStrong();
  v15 = sub_100005DDC();

  v16 = [v15 view];
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = [v16 bottomAnchor];

  v18 = swift_unknownObjectUnownedLoadStrong();
  v19 = [v18 view];

  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = [v19 bottomAnchor];

  v21 = [v17 constraintEqualToAnchor:v20];
  *(v5 + 40) = v21;
  v22 = swift_unknownObjectUnownedLoadStrong();
  v23 = sub_100005DDC();

  v24 = [v23 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = [v24 leadingAnchor];

  v26 = swift_unknownObjectUnownedLoadStrong();
  v27 = [v26 view];

  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = [v27 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor:v28];
  *(v5 + 48) = v29;
  v30 = swift_unknownObjectUnownedLoadStrong();
  v31 = sub_100005DDC();

  v32 = [v31 view];
  if (!v32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = [v32 trailingAnchor];

  v34 = swift_unknownObjectUnownedLoadStrong();
  v35 = [v34 view];

  if (!v35)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v36 = objc_opt_self();
  v37 = [v35 trailingAnchor];

  v38 = [v33 constraintEqualToAnchor:v37];
  *(v5 + 56) = v38;
  sub_100009FC4(0, &qword_10006A468, NSLayoutConstraint_ptr);
  isa = sub_100051238().super.isa;

  [v36 activateConstraints:isa];
}

void *sub_100006EC0()
{
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v0 = sub_100050268();
  sub_100008BA0(v0, qword_10006E090);
  v1 = sub_100050248();
  v2 = sub_100051338();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ask host to expand sheet if needed", v3, 2u);
  }

  sub_100004F58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if ((v5 & 1) == 0)
  {
    result = sub_100007350();
    if (result)
    {
      [result expandSheet];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100007028()
{
  v1 = v0;
  v2 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100004F58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
  v4 = sub_100051388();
  sub_100051398();

  v5 = objc_allocWithZone(sub_100050108());
  v6 = sub_1000500E8();
  sub_10000929C(&qword_10006A338, v7, type metadata accessor for ActionViewController);
  v8 = v1;
  sub_1000500F8();
  sub_100004FF4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  sub_1000500C8();
  v9 = *&v8[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000502F8();

  sub_1000500D8();
  v10 = *&v8[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationContext];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000502F8();

  if (v12 == 1)
  {
    v11 = sub_100005DDC();
    [v11 pushViewController:v6 animated:1];
  }

  else
  {
    v11 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v6];
    [v8 presentViewController:v11 animated:1 completion:0];
  }
}

uint64_t sub_100007350()
{
  if ([v0 _remoteViewControllerProxy])
  {
    sub_100051518();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1000035C4(&qword_10006A330, &qword_1000529E0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100004444(v5, &qword_10006A2C8, &unk_1000529D0);
    return 0;
  }
}

id sub_100007438(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];

  return v3;
}

id sub_100007484(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController_defaultApp;
  sub_10000E334();
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationContext] = 0;
  *&v3[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel] = 0;
  *&v3[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostController] = 0;
  *&v3[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController] = 0;
  if (a2)
  {
    v8 = sub_100051128();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for ActionViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1000075B8(void *a1)
{
  v3 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController_defaultApp;
  sub_10000E334();
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationContext] = 0;
  *&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel] = 0;
  *&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostController] = 0;
  *&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ActionViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1000076A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100007778(uint64_t a1)
{
  v2 = sub_10004FDB8();
  v60 = *(v2 - 8);
  v3 = *(v60 + 64);
  __chkstk_darwin(v2);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1000035C4(&qword_10006A298, &qword_100054E10);
  v5 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v7 = &v50 - v6;
  v8 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v54 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v55 = &v50 - v13;
  v14 = __chkstk_darwin(v12);
  v58 = &v50 - v15;
  v16 = __chkstk_darwin(v14);
  v57 = &v50 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v50 - v19;
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v23 = sub_100050268();
  sub_100008BA0(v23, qword_10006E090);
  sub_10000A00C(a1, v22, &qword_10006A2A0, &qword_1000528E0);
  v24 = sub_100050248();
  v25 = sub_100051338();
  if (os_log_type_enabled(v24, v25))
  {
    v52 = a1;
    v26 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v63 = v51;
    *v26 = 136446210;
    sub_10000A00C(v22, v20, &qword_10006A2A0, &qword_1000528E0);
    v27 = v2;
    v28 = v60;
    if ((*(v60 + 48))(v20, 1, v27) == 1)
    {
      sub_100004444(v20, &qword_10006A2A0, &qword_1000528E0);
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v29 = sub_10004FD28();
      v30 = v31;
      (*(v28 + 8))(v20, v27);
    }

    v2 = v27;
    v61 = v29;
    v62 = v30;
    sub_1000035C4(&qword_10006A2B8, &qword_100052930);
    v32 = sub_100051178();
    v34 = v33;
    sub_100004444(v22, &qword_10006A2A0, &qword_1000528E0);
    v35 = sub_100008C04(v32, v34, &v63);

    *(v26 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Source locale changed to %{public}s", v26, 0xCu);
    sub_100009F78(v51);

    a1 = v52;
  }

  else
  {

    sub_100004444(v22, &qword_10006A2A0, &qword_1000528E0);
  }

  v36 = v59;
  sub_100004FF4();
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v57;
  sub_1000502F8();

  v38 = *(v56 + 48);
  sub_10000A00C(a1, v7, &qword_10006A2A0, &qword_1000528E0);
  sub_10000A00C(v37, &v7[v38], &qword_10006A2A0, &qword_1000528E0);
  v39 = v60;
  v40 = *(v60 + 48);
  v41 = v40(v7, 1, v2);
  v42 = v58;
  if (v41 == 1)
  {
    sub_100004444(v37, &qword_10006A2A0, &qword_1000528E0);
    if (v40(&v7[v38], 1, v2) == 1)
    {
      v43 = v7;
      return sub_100004444(v43, &qword_10006A2A0, &qword_1000528E0);
    }

    goto LABEL_14;
  }

  sub_10000A00C(v7, v58, &qword_10006A2A0, &qword_1000528E0);
  if (v40(&v7[v38], 1, v2) == 1)
  {
    sub_100004444(v37, &qword_10006A2A0, &qword_1000528E0);
    (*(v39 + 8))(v42, v2);
LABEL_14:
    sub_100004444(v7, &qword_10006A298, &qword_100054E10);
LABEL_15:
    v44 = *(v36 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel);
    v45 = v55;
    sub_10000A00C(a1, v55, &qword_10006A2A0, &qword_1000528E0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000A00C(v45, v54, &qword_10006A2A0, &qword_1000528E0);
    swift_retain_n();
    sub_100050308();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v61) = 0;
    sub_100050308();
    v43 = v45;
    return sub_100004444(v43, &qword_10006A2A0, &qword_1000528E0);
  }

  v47 = &v7[v38];
  v48 = v53;
  (*(v39 + 32))(v53, v47, v2);
  sub_10000929C(&qword_10006A2B0, 255, &type metadata accessor for Locale);
  LODWORD(v56) = sub_100051118();
  v49 = *(v39 + 8);
  v49(v48, v2);
  sub_100004444(v37, &qword_10006A2A0, &qword_1000528E0);
  v49(v42, v2);
  result = sub_100004444(v7, &qword_10006A2A0, &qword_1000528E0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_100007F1C(uint64_t a1)
{
  v66 = sub_10004FDB8();
  v2 = *(v66 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v66);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000035C4(&qword_10006A298, &qword_100054E10);
  v6 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v8 = &v54 - v7;
  v9 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v61 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v59 = &v54 - v14;
  v15 = __chkstk_darwin(v13);
  v58 = &v54 - v16;
  v17 = __chkstk_darwin(v15);
  v57 = &v54 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v54 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v54 - v23;
  __chkstk_darwin(v22);
  v26 = &v54 - v25;
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v65 = v21;
  v27 = sub_100050268();
  sub_100008BA0(v27, qword_10006E090);
  v62 = a1;
  sub_10000A00C(a1, v26, &qword_10006A2A0, &qword_1000528E0);
  v28 = sub_100050248();
  v29 = sub_100051338();
  v30 = os_log_type_enabled(v28, v29);
  v63 = v2;
  v56 = v5;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v69 = v55;
    *v31 = 136446210;
    sub_10000A00C(v26, v24, &qword_10006A2A0, &qword_1000528E0);
    v32 = v66;
    if ((*(v2 + 48))(v24, 1, v66) == 1)
    {
      sub_100004444(v24, &qword_10006A2A0, &qword_1000528E0);
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v35 = v2;
      v33 = sub_10004FD28();
      v34 = v36;
      (*(v35 + 8))(v24, v32);
    }

    v67 = v33;
    v68 = v34;
    sub_1000035C4(&qword_10006A2B8, &qword_100052930);
    v37 = sub_100051178();
    v39 = v38;
    sub_100004444(v26, &qword_10006A2A0, &qword_1000528E0);
    v40 = sub_100008C04(v37, v39, &v69);

    *(v31 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v28, v29, "Target locale changed to %{public}s", v31, 0xCu);
    sub_100009F78(v55);

    v2 = v63;
  }

  else
  {

    sub_100004444(v26, &qword_10006A2A0, &qword_1000528E0);
  }

  v41 = v64;
  sub_100004FF4();
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v65;
  sub_1000502F8();

  v43 = *(v60 + 48);
  v44 = v62;
  sub_10000A00C(v62, v8, &qword_10006A2A0, &qword_1000528E0);
  sub_10000A00C(v42, &v8[v43], &qword_10006A2A0, &qword_1000528E0);
  v45 = *(v2 + 48);
  if (v45(v8, 1, v66) == 1)
  {
    sub_100004444(v42, &qword_10006A2A0, &qword_1000528E0);
    if (v45(&v8[v43], 1, v66) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v46 = v57;
  sub_10000A00C(v8, v57, &qword_10006A2A0, &qword_1000528E0);
  if (v45(&v8[v43], 1, v66) == 1)
  {
    sub_100004444(v65, &qword_10006A2A0, &qword_1000528E0);
    (*(v2 + 8))(v46, v66);
LABEL_14:
    sub_100004444(v8, &qword_10006A298, &qword_100054E10);
LABEL_15:
    v47 = *(v41 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel);
    v48 = v58;
    sub_10000A00C(v44, v58, &qword_10006A2A0, &qword_1000528E0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000A00C(v48, v59, &qword_10006A2A0, &qword_1000528E0);

    sub_100050308();
    v8 = v48;
LABEL_16:
    sub_100004444(v8, &qword_10006A2A0, &qword_1000528E0);
    goto LABEL_17;
  }

  v51 = v56;
  v52 = v66;
  (*(v2 + 32))(v56, &v8[v43], v66);
  sub_10000929C(&qword_10006A2B0, 255, &type metadata accessor for Locale);
  LODWORD(v60) = sub_100051118();
  v53 = *(v2 + 8);
  v53(v51, v52);
  sub_100004444(v65, &qword_10006A2A0, &qword_1000528E0);
  v53(v46, v52);
  v41 = v64;
  sub_100004444(v8, &qword_10006A2A0, &qword_1000528E0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  v49 = v61;
  sub_10000A00C(v44, v61, &qword_10006A2A0, &qword_1000528E0);
  if (v45(v49, 1, v66) == 1)
  {
    sub_100004444(v49, &qword_10006A2A0, &qword_1000528E0);
  }

  else
  {
    sub_10004FD28();
    (*(v63 + 8))(v49, v66);
    sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
    v50 = sub_100051388();
    sub_1000513D8();
  }
}

uint64_t sub_100008768@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v5;
  return result;
}

uint64_t sub_1000087E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_100008870(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  sub_10000A00C(a1, &v13[-v9], &qword_10006A2A0, &qword_1000528E0);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v10, v8, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  swift_getKeyPath();
  swift_getKeyPath();
  v13[15] = 0;

  sub_100050308();
  return sub_100004444(v10, &qword_10006A2A0, &qword_1000528E0);
}

uint64_t sub_1000089F8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();
}

uint64_t sub_100008A70(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_10000A00C(a1, &v13 - v9, &qword_10006A2A0, &qword_1000528E0);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v10, v8, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  return sub_100004444(v10, &qword_10006A2A0, &qword_1000528E0);
}

uint64_t sub_100008BA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008C04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008CD0(v11, 0, 0, 1, a1, a2);
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
    sub_1000091AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009F78(v11);
  return v7;
}

unint64_t sub_100008CD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100008DDC(a5, a6);
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
    result = sub_1000515E8();
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

char *sub_100008DDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100008E28(a1, a2);
  sub_100008F58(&off_100066360);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100008E28(uint64_t a1, unint64_t a2)
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

  v6 = sub_100009044(v5, 0);
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

  result = sub_1000515E8();
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
        v10 = sub_1000511F8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009044(v10, 0);
        result = sub_1000515B8();
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

uint64_t sub_100008F58(uint64_t result)
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

  result = sub_1000090B8(result, v12, 1, v3);
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

void *sub_100009044(uint64_t a1, uint64_t a2)
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

  sub_1000035C4(&qword_10006A2C0, &qword_100052938);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000090B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000035C4(&qword_10006A2C0, &qword_100052938);
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

uint64_t sub_1000091AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000929C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000092E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000093E0@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_100050598();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_100009BF4;
  a1[1] = result;
  return result;
}

unint64_t sub_100009450()
{
  result = qword_10006A358;
  if (!qword_10006A358)
  {
    sub_10000372C(&qword_10006A350, &qword_100052AD8);
    sub_1000094F4();
    sub_100009AEC(&qword_10006A3C8, &qword_10006A3D0, &qword_100052B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A358);
  }

  return result;
}

unint64_t sub_1000094F4()
{
  result = qword_10006A360;
  if (!qword_10006A360)
  {
    sub_10000372C(&qword_10006A368, &qword_100052AE0);
    sub_100009598();
    sub_100009AEC(&qword_10006A3B8, &qword_10006A3C0, &qword_100052B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A360);
  }

  return result;
}

unint64_t sub_100009598()
{
  result = qword_10006A370;
  if (!qword_10006A370)
  {
    sub_10000372C(&qword_10006A378, &qword_100052AE8);
    sub_10000963C();
    sub_100009AEC(&qword_10006A3A8, &qword_10006A3B0, &qword_100052B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A370);
  }

  return result;
}

unint64_t sub_10000963C()
{
  result = qword_10006A380;
  if (!qword_10006A380)
  {
    sub_10000372C(&qword_10006A388, &qword_100052AF0);
    sub_1000096E0();
    sub_100009AEC(&qword_10006A398, &qword_10006A3A0, &qword_100052AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A380);
  }

  return result;
}

unint64_t sub_1000096E0()
{
  result = qword_10006A390;
  if (!qword_10006A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A390);
  }

  return result;
}

uint64_t sub_10000976C@<X0>(_BYTE *a1@<X8>)
{
  sub_100009B40();
  result = sub_100050758();
  *a1 = v3;
  return result;
}

uint64_t sub_1000097BC(char *a1)
{
  v2 = *a1;
  sub_100009B40();
  return sub_100050768();
}

unint64_t sub_100009808()
{
  result = qword_10006A3E0;
  if (!qword_10006A3E0)
  {
    sub_10000372C(&qword_10006A3D8, &qword_100052B40);
    sub_1000098AC();
    sub_100009AEC(&qword_10006A420, &qword_10006A428, &qword_100052B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A3E0);
  }

  return result;
}

unint64_t sub_1000098AC()
{
  result = qword_10006A3E8;
  if (!qword_10006A3E8)
  {
    sub_10000372C(&qword_10006A3F0, &qword_100052B48);
    sub_100009950();
    sub_100009AEC(&qword_10006A3B8, &qword_10006A3C0, &qword_100052B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A3E8);
  }

  return result;
}

unint64_t sub_100009950()
{
  result = qword_10006A3F8;
  if (!qword_10006A3F8)
  {
    sub_10000372C(&qword_10006A400, &qword_100052B50);
    sub_1000099F4();
    sub_100009AEC(&qword_10006A3A8, &qword_10006A3B0, &qword_100052B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A3F8);
  }

  return result;
}

unint64_t sub_1000099F4()
{
  result = qword_10006A408;
  if (!qword_10006A408)
  {
    sub_10000372C(&qword_10006A410, &qword_100052B58);
    sub_100009A98();
    sub_100009AEC(&qword_10006A398, &qword_10006A3A0, &qword_100052AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A408);
  }

  return result;
}

unint64_t sub_100009A98()
{
  result = qword_10006A418;
  if (!qword_10006A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A418);
  }

  return result;
}

uint64_t sub_100009AEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000372C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100009B40()
{
  result = qword_10006A430;
  if (!qword_10006A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A430);
  }

  return result;
}

uint64_t sub_100009B94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009BCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100009BF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100009C1C()
{
  result = qword_10006A438;
  if (!qword_10006A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A438);
  }

  return result;
}

unint64_t sub_100009C70()
{
  result = qword_10006A440;
  if (!qword_10006A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A440);
  }

  return result;
}

unint64_t sub_100009CC4()
{
  result = qword_10006A448;
  if (!qword_10006A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A448);
  }

  return result;
}

uint64_t sub_100009D18()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationRequestContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A478, &qword_100052B80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationRequestContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009EC0(uint64_t a1)
{
  v2 = type metadata accessor for TranslationRequestContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009F24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_100009F34(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100009F78(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100009FC4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000A00C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000035C4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A074()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 50, 7);
}

__n128 sub_10000A0AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000A0C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_10000A108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranslationModel.TranslationAnnotation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslationModel.TranslationAnnotation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10000A2E4@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_10000A44C(a1 & 1);
  LODWORD(v16) = sub_100050908();
  v3 = sub_100050BF8();
  v5 = v4;
  v7 = v6;

  sub_100050B58();
  v8 = sub_100050C18();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10000A514(v3, v5, v7 & 1);

  sub_100051088();
  sub_100050538();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 96) = v20;
  *(a2 + 112) = v21;
  *(a2 + 128) = v22;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  result = v19;
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  return result;
}

uint64_t sub_10000A44C(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = "ation.SystemPresentation";
  if (a1)
  {
    v3 = "LOW_CONFIDENCE_TRANSLATION";
    v4._countAndFlagsBits = 0xD000000000000014;
  }

  else
  {
    v4._countAndFlagsBits = 0xD00000000000001ALL;
  }

  v8._countAndFlagsBits = 0xE000000000000000;
  v4._object = (v3 | 0x8000000000000000);
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v5.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v6 = sub_10004FC68(v4, v9, v5, v10, v8);

  return v6;
}

uint64_t sub_10000A514(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000A528()
{
  result = qword_10006A4A0;
  if (!qword_10006A4A0)
  {
    sub_10000372C(&qword_10006A4A8, qword_100052CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A4A0);
  }

  return result;
}

id sub_10000A5AC(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_connection] = 0;
  v4 = &v1[OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_identity;
  v6 = sub_1000501A8();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v7 = sub_100050268();
  sub_100008BA0(v7, qword_10006E010);
  v8 = sub_100050248();
  v9 = sub_100051348();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Host Coordinator initializing", v10, 2u);
  }

  sub_10000BA50(a1, &v2[OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_parent]);
  v11 = (a1 + *(type metadata accessor for AppExtensionHostView(0) + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = *v4;
  v15 = v4[1];
  *v4 = *v11;
  v4[1] = v13;
  sub_10000BAB4(v12);
  sub_100009F24(v14);
  v18.receiver = v2;
  v18.super_class = type metadata accessor for AppExtensionHostView.HostCoordinator(0);
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_10000BB28(a1, type metadata accessor for AppExtensionHostView);
  return v16;
}

void sub_10000A780(void *a1)
{
  v2 = v1;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v4 = sub_100050268();
  sub_100008BA0(v4, qword_10006E010);
  v5 = sub_100050248();
  v6 = sub_100051348();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "host view controller did activate", v7, 2u);
  }

  v21 = 0;
  v8 = [a1 makeXPCConnectionWithError:&v21];
  v9 = v21;
  if (v8)
  {
    v10 = v8;
    v11 = v2 + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_parent;
    v12 = *(v11 + *(type metadata accessor for AppExtensionHostView(0) + 20));
    v13 = v9;
    if ([v12 shouldAcceptWithConnection:v10])
    {
      v14 = v2 + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange;
      v15 = *(v2 + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange);
      if (v15)
      {
        v16 = *(v14 + 8);

        v15(1);
        sub_100009F24(v15);
      }
    }
  }

  else
  {
    v17 = v21;
    sub_10004FC88();

    swift_willThrow();
    v18 = v2 + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange;
    v19 = *(v2 + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange);
    if (v19)
    {
      v20 = *(v18 + 8);

      v19(0);
      sub_100009F24(v19);
    }
  }
}

id sub_10000AAF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppExtensionHostView.HostCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000ABDC()
{
  v0 = type metadata accessor for AppExtensionHostView(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000ACDC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000ACDC()
{
  if (!qword_10006A548)
  {
    sub_1000501A8();
    v0 = sub_1000514E8();
    if (!v1)
    {
      atomic_store(v0, &qword_10006A548);
    }
  }
}

uint64_t sub_10000AD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000501A8();
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

uint64_t sub_10000AE1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000501A8();
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

uint64_t sub_10000AEF8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000AF30()
{
  result = sub_1000501A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000AFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000035C4(&qword_10006A5E0, &unk_100052D10);
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

uint64_t sub_10000B094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000035C4(&qword_10006A5E0, &unk_100052D10);
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

void sub_10000B158()
{
  sub_10000B2B0(319, &qword_10006A650, &qword_10006A658, &qword_100052FA0, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_10000B24C();
    if (v1 <= 0x3F)
    {
      sub_10000B2B0(319, &qword_10006A668, &unk_10006A670, &unk_100052D40, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10000B24C()
{
  result = qword_10006A660;
  if (!qword_10006A660)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10006A660);
  }

  return result;
}

void sub_10000B2B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10000372C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10000B320(void *a1)
{
  v35 = sub_1000501A8();
  v33 = *(v35 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v35);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000035C4(&qword_10006A6B0, &qword_100052E18);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - v13;
  v15 = type metadata accessor for AppExtensionHostView.Configuration(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v22 = a1;
    sub_1000035C4(&qword_10006A6B8, &qword_100052E20);
    sub_100050A48();
    v23 = v36;
    [v21 setDelegate:v36];

    sub_1000035C4(&qword_10006A5E0, &unk_100052D10);
    sub_100050F68();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      v24 = &qword_10006A658;
      v25 = &qword_100052FA0;
      v26 = v14;
    }

    else
    {
      sub_10000BAC4(v14, v19);
      sub_100051458();
      v27 = sub_100051448();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v10, 1, v27) == 1)
      {
        sub_100004444(v10, &qword_10006A6B0, &qword_100052E18);
        (*(v33 + 16))(v34, v19, v35);
        v29 = &v19[*(v15 + 20)];
        v30 = *v29;
        v31 = *(v29 + 1);

        sub_100051438();
        (*(v28 + 56))(v8, 0, 1, v27);
        sub_100051468();

        return sub_10000BB28(v19, type metadata accessor for AppExtensionHostView.Configuration);
      }

      sub_10000BB28(v19, type metadata accessor for AppExtensionHostView.Configuration);

      v24 = &qword_10006A6B0;
      v25 = &qword_100052E18;
      v26 = v10;
    }

    return sub_100004444(v26, v24, v25);
  }

  else
  {
    result = sub_1000515F8();
    __break(1u);
  }

  return result;
}

id sub_10000B780()
{
  v0 = [objc_allocWithZone(EXHostViewController) init];
  sub_1000035C4(&qword_10006A6B8, &qword_100052E20);
  sub_100050A48();
  [v0 setDelegate:v2];

  return v0;
}

id sub_10000B80C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA50(v2, v6);
  v7 = objc_allocWithZone(type metadata accessor for AppExtensionHostView.HostCoordinator(0));
  result = sub_10000A5AC(v6);
  *a2 = result;
  return result;
}

uint64_t sub_10000B8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000BB88(&qword_10006A6C0);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000B958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000BB88(&qword_10006A6C0);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000B9D8()
{
  sub_10000BB88(&qword_10006A6C0);
  sub_100050A28();
  __break(1u);
}

uint64_t sub_10000BA50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionHostView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BAB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000BAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionHostView.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BB28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BB88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppExtensionHostView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BBCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a2;
  v66 = a3;
  v68 = a1;
  v7 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v67 = &v61 - v9;
  v10 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v61 - v15;
  v71 = type metadata accessor for DefaultAppView(0);
  v17 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000035C4(&qword_10006A7C0, &qword_100052FA8);
  v20 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v22 = &v61 - v21;
  v70 = type metadata accessor for DefaultAppNetworkAcceptance();
  v23 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v25 = (&v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v73 = a4;
  sub_10000DB68(&qword_10006A7A0, type metadata accessor for DefaultInterstitialModel);

  sub_10004FDD8();

  if (*(a4 + 24) == 1)
  {
    v26 = [v68 localizedName];
    v27 = sub_100051158();
    v29 = v28;

    KeyPath = swift_getKeyPath();
    v31 = swift_getKeyPath();
    *v25 = v27;
    v25[1] = v29;
    v25[2] = sub_10000DBB0;
    v25[3] = a4;
    v32 = v70;
    v33 = *(v70 + 24);
    *(v25 + v33) = swift_getKeyPath();
    sub_1000035C4(&qword_10006A7D8, &unk_100053038);
    swift_storeEnumTagMultiPayload();
    v34 = v25 + *(v32 + 28);
    *v34 = KeyPath;
    *(v34 + 1) = 0;
    v34[16] = 0;
    v35 = v25 + *(v32 + 32);
    *v35 = v31;
    v35[8] = 0;
    v36 = type metadata accessor for DefaultAppNetworkAcceptance;
    sub_10000DBEC(v25, v22, type metadata accessor for DefaultAppNetworkAcceptance);
    swift_storeEnumTagMultiPayload();
    sub_10000DB68(&qword_10006A7C8, type metadata accessor for DefaultAppNetworkAcceptance);
    sub_10000DB68(&qword_10006A7D0, type metadata accessor for DefaultAppView);
    sub_1000508A8();
    v37 = v25;
  }

  else
  {

    v38 = type metadata accessor for AppExtensionHostView.Configuration(0);
    v39 = *(v38 - 8);
    v63 = v19;
    v40 = *(v39 + 56);
    v64 = a5;
    v40(v16, 1, 1, v38);
    v41 = type metadata accessor for TranslationProviderHostModel(0);
    v42 = objc_allocWithZone(v41);
    v43 = objc_allocWithZone(NSAttributedString);
    v44 = sub_100051128();
    v45 = [v43 initWithString:v44];

    v46 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString;
    *&v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString] = v45;
    v47 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
    v40(&v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration], 1, 1, v38);
    v48 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__isConnectedToRemote;
    v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__isConnectedToRemote] = 0;
    v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__shouldExpand] = 0;
    *&v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation] = 0;
    v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__shouldDismiss] = 0;
    *&v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__subscriptions] = &_swiftEmptySetSingleton;
    *&v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession] = 0;
    v49 = &v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID];
    *v49 = 0;
    v49[8] = 1;
    v50 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection;
    *&v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection] = 0;
    sub_10004FE08();
    v51 = v68;
    *&v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp] = v68;
    v62 = v22;
    *&v42[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel] = v65;
    sub_10000D838(v16, v14);
    v52 = v51;

    sub_10000D8A8(&v42[v47]);
    sub_10000D910(v14, &v42[v47]);
    v42[v48] = 0;

    *&v42[v50] = 0;
    objc_storeStrong(&v42[v46], v66);
    v72.receiver = v42;
    v72.super_class = v41;
    v53 = objc_msgSendSuper2(&v72, "init");
    v54 = sub_1000512F8();
    v55 = v67;
    (*(*(v54 - 8) + 56))(v67, 1, 1, v54);
    sub_1000512D8();
    v56 = v53;
    v57 = sub_1000512C8();
    v58 = swift_allocObject();
    v58[2] = v57;
    v58[3] = &protocol witness table for MainActor;
    v58[4] = v56;
    sub_10002EA44(0, 0, v55, &unk_100052FB0, v58);

    sub_10000D8A8(v16);
    v59 = v63;
    sub_100010A90(v56, v63);
    v36 = type metadata accessor for DefaultAppView;
    sub_10000DBEC(v59, v62, type metadata accessor for DefaultAppView);
    swift_storeEnumTagMultiPayload();
    sub_10000DB68(&qword_10006A7C8, type metadata accessor for DefaultAppNetworkAcceptance);
    sub_10000DB68(&qword_10006A7D0, type metadata accessor for DefaultAppView);
    sub_1000508A8();
    v37 = v59;
  }

  return sub_10000DC54(v37, v36);
}

uint64_t sub_10000C354()
{
  swift_getKeyPath();
  sub_10000DB68(&qword_10006A7A0, type metadata accessor for DefaultInterstitialModel);
  sub_10004FDD8();

  return *(v0 + 24);
}

void sub_10000C3F4()
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
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136446210;
    v7 = [*(v1 + 16) bundleIdentifier];
    if (v7)
    {
      v8 = v7;
      sub_100051158();
    }

    sub_1000035C4(&qword_10006A2B8, &qword_100052930);
    v9 = sub_100051178();
    v11 = sub_100008C04(v9, v10, &v30);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering default app first use acknowledgement for %{public}s", v5, 0xCu);
    sub_100009F78(v6);
  }

  sub_10000D074();
  v12 = sub_100051388();
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = sub_100051128();
  v16 = [v12 arrayForKey:v15];

  if (!v16 || (v17 = sub_100051248(), v16, v18 = sub_10000CCA8(v17), , !v18))
  {

    v18 = &_swiftEmptyArrayStorage;
  }

  v19 = [*(v1 + 16) bundleIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = sub_100051158();
    v23 = v22;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_10000D0C0(0, *(v18 + 2) + 1, 1, v18);
    }

    v25 = *(v18 + 2);
    v24 = *(v18 + 3);
    if (v25 >= v24 >> 1)
    {
      v18 = sub_10000D0C0((v24 > 1), v25 + 1, 1, v18);
    }

    *(v18 + 2) = v25 + 1;
    v26 = &v18[16 * v25];
    *(v26 + 4) = v21;
    *(v26 + 5) = v23;
    v27 = sub_100051388();
    isa = sub_100051238().super.isa;

    v29 = sub_100051128();
    [v27 setObject:isa forKey:v29];

    sub_10000C904();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000C74C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000DB68(&qword_10006A7A0, type metadata accessor for DefaultInterstitialModel);
  sub_10004FDD8();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_10000C7F4(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000DB68(&qword_10006A7A0, type metadata accessor for DefaultInterstitialModel);
    sub_10004FDC8();
  }

  return result;
}

void sub_10000C904()
{
  v1 = v0;
  if (byte_10006E028 == 1)
  {
    sub_10000D074();
    v2 = sub_100051388();
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = sub_100051128();
    v6 = [v2 arrayForKey:v5];

    if (!v6 || (v7 = sub_100051248(), v6, v8 = sub_10000CCA8(v7), , !v8))
    {

      v8 = &_swiftEmptyArrayStorage;
    }

    v9 = [*(v1 + 16) bundleIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_100051158();
      v13 = v12;

      v14 = v8 + 5;
      v15 = v8[2] + 1;
      do
      {
        if (!--v15)
        {
          break;
        }

        if (*(v14 - 1) == v11 && *v14 == v13)
        {
          break;
        }

        v14 += 2;
      }

      while ((sub_100051658() & 1) == 0);

      if (((v15 == 0) ^ *(v1 + 24)))
      {
LABEL_20:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_10000DB68(&qword_10006A7A0, type metadata accessor for DefaultInterstitialModel);
        sub_10004FDC8();

        return;
      }

      *(v1 + 24) = v15 == 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v17 = sub_100050268();
    sub_100008BA0(v17, qword_10006E090);
    v18 = sub_100050248();
    v19 = sub_100051348();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Skipping first connect sheet: default app has not requested network access.", v20, 2u);
    }

    if (*(v1 + 24))
    {
      goto LABEL_20;
    }

    *(v1 + 24) = 0;
  }
}

unint64_t *sub_10000CCA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_10000D3A4(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1000091AC(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000D3A4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10000CDBC()
{
  v1 = *(v0 + 40);

  v2 = OBJC_IVAR____TtC20TranslationUIService24DefaultInterstitialModel___observationRegistrar;
  v3 = sub_10004FE18();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for DefaultInterstitialModel()
{
  result = qword_10006A700;
  if (!qword_10006A700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CEBC()
{
  result = sub_10004FE18();
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

uint64_t sub_10000CF70(uint64_t a1)
{
  v2 = sub_100050428();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000506C8();
}

unint64_t sub_10000D074()
{
  result = qword_10006A2A8;
  if (!qword_10006A2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006A2A8);
  }

  return result;
}

char *sub_10000D0C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000035C4(&qword_10006A7A8, &qword_100052EE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10000D1CC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000035C4(&qword_10006A7F0, &qword_100053050);
  v10 = *(sub_10004FBD8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10004FBD8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000D3A4(char *a1, int64_t a2, char a3)
{
  result = sub_10000D490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000D3C4(size_t a1, int64_t a2, char a3)
{
  result = sub_10000D59C(a1, a2, a3, *v3, &qword_10006A800, &qword_100053060, type metadata accessor for TranslationModel.LocaleInfo);
  *v3 = result;
  return result;
}

size_t sub_10000D408(size_t a1, int64_t a2, char a3)
{
  result = sub_10000D59C(a1, a2, a3, *v3, &qword_10006A7F8, &qword_100053058, &type metadata accessor for LanguageModel);
  *v3 = result;
  return result;
}

size_t sub_10000D44C(size_t a1, int64_t a2, char a3)
{
  result = sub_10000D59C(a1, a2, a3, *v3, &qword_10006A7B0, &qword_100052EF0, &type metadata accessor for DisambiguationView.Item);
  *v3 = result;
  return result;
}

char *sub_10000D490(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000035C4(&qword_10006A7A8, &qword_100052EE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10000D59C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000035C4(a5, a6);
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

__n128 sub_10000D778(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000D784(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10000D7CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000D838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D8A8(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D980()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D9C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DA74;

  return sub_100014260(a1, v4, v5, v6);
}

uint64_t sub_10000DA74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000DB68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DBEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000DC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10000DCB8()
{
  result = qword_10006A7E0;
  if (!qword_10006A7E0)
  {
    sub_10000372C(&qword_10006A7E8, &qword_100053048);
    sub_10000DB68(&qword_10006A7C8, type metadata accessor for DefaultAppNetworkAcceptance);
    sub_10000DB68(&qword_10006A7D0, type metadata accessor for DefaultAppView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A7E0);
  }

  return result;
}

uint64_t sub_10000DDBC()
{
  v0 = sub_100050268();
  sub_10000DE70(v0, qword_10006E010);
  sub_100008BA0(v0, qword_10006E010);
  return sub_100050258();
}

uint64_t *sub_10000DE70(uint64_t a1, uint64_t *a2)
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

void sub_10000DED4(void *a1)
{
  v1 = [a1 infoDictionary];
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_100050268();
  sub_100008BA0(v2, qword_10006E010);
  v3 = v1;
  v4 = sub_100050248();
  v5 = sub_100051348();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v34[0] = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = sub_100051158();
    v11 = v10;

    v12 = sub_100008C04(v9, v11, v34);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "App record info plist: %s", v6, 0xCu);
    sub_100009F78(v7);
  }

  v13 = sub_100051128();
  sub_10000E69C();
  v14 = [v3 objectForKey:v13 ofClass:swift_getObjCClassFromMetadata()];

  if (v14)
  {
    sub_100051518();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      v15 = v31;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_10000E6E8(v34);
    v15 = 0;
  }

  v16 = v15;
  v17 = sub_100050248();
  v18 = sub_100051348();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v34[0] = v20;
    *v19 = 136315138;
    v21 = v16;
    sub_1000035C4(&qword_10006A8A0, &unk_1000530A0);
    v22 = sub_100051178();
    v24 = sub_100008C04(v22, v23, v34);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "value for network access property: %s", v19, 0xCu);
    sub_100009F78(v20);
  }

  if (v15 && [v16 BOOLValue])
  {
    v25 = sub_100050248();
    v26 = sub_100051348();
    if (!os_log_type_enabled(v25, v26))
    {
      v28 = 1;
      goto LABEL_24;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Networking will be allowed", v27, 2u);
    v28 = 1;
  }

  else
  {
    v25 = sub_100050248();
    v29 = sub_100051348();
    if (!os_log_type_enabled(v25, v29))
    {
      v28 = 0;
      goto LABEL_24;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v25, v29, "Networking will be disallowed", v30, 2u);
    v28 = 0;
  }

LABEL_24:

  byte_10006E028 = v28;
}

void sub_10000E334()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v27 = 0;
  v2 = [v0 defaultApplicationForCategory:6 error:&v27];

  if (!v2)
  {
    v11 = v27;
    sub_10004FC88();

    swift_willThrow();

    return;
  }

  v3 = v27;
  v4 = [v2 bundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100051158();
    v8 = v7;

    if (v6 == 0xD000000000000013 && 0x800000010005EE00 == v8)
    {

      return;
    }

    v10 = sub_100051658();

    if (v10)
    {

      return;
    }
  }

  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v12 = sub_100050268();
  sub_100008BA0(v12, qword_10006E010);
  v13 = v2;
  v14 = sub_100050248();
  v15 = sub_100051338();
  if (!os_log_type_enabled(v14, v15))
  {

    goto LABEL_18;
  }

  v16 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  *v16 = 136315394;
  v17 = [v13 bundleIdentifier];

  if (v17)
  {
    v18 = sub_100051158();
    v20 = v19;

    v21 = sub_100008C04(v18, v20, &v27);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v13 localizedName];
    v23 = sub_100051158();
    v25 = v24;

    v26 = sub_100008C04(v23, v25, &v27);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Default translation app %s with display name %s", v16, 0x16u);
    swift_arrayDestroy();

LABEL_18:

    sub_10000DED4(v13);
    return;
  }

  __break(1u);
}

unint64_t sub_10000E69C()
{
  result = qword_10006A490;
  if (!qword_10006A490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006A490);
  }

  return result;
}

uint64_t sub_10000E6E8(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006A2C8, &unk_1000529D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E764(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000035C4(&qword_10006A8A8, &unk_1000530C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000E834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000035C4(&qword_10006A8A8, &unk_1000530C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DefaultAppNetworkAcceptance()
{
  result = qword_10006A908;
  if (!qword_10006A908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E930()
{
  sub_10000EA14();
  if (v0 <= 0x3F)
  {
    sub_10000EA64();
    if (v1 <= 0x3F)
    {
      sub_10000EABC(319, &unk_10006A928);
      if (v2 <= 0x3F)
      {
        sub_10000EABC(319, &unk_10006A040);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10000EA14()
{
  result = qword_10006A918;
  if (!qword_10006A918)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10006A918);
  }

  return result;
}

void sub_10000EA64()
{
  if (!qword_10006A920)
  {
    sub_100050428();
    v0 = sub_1000503B8();
    if (!v1)
    {
      atomic_store(v0, &qword_10006A920);
    }
  }
}

void sub_10000EABC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000503B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10000EB24()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for DefaultAppNetworkAcceptance() + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_100051368();
    v8 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_100003E6C(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10000EC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for DefaultAppNetworkAcceptance();
  v48 = *(v3 - 8);
  v47 = *(v48 + 64);
  __chkstk_darwin(v3 - 8);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100050078();
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v43);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000035C4(&qword_10006A968, &qword_100053140);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v44 = sub_1000035C4(&qword_10006A970, &qword_100053148);
  v46 = *(v44 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v44);
  v15 = &v42 - v14;
  *v12 = sub_100050888();
  *(v12 + 1) = 0x402E000000000000;
  v12[16] = 0;
  v16 = sub_1000035C4(&qword_10006A978, &qword_100053150);
  sub_10000F148(v2, &v12[*(v16 + 44)]);
  LOBYTE(v2) = sub_100050A78();
  sub_100050368();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v12[*(sub_1000035C4(&qword_10006A980, &qword_100053158) + 36)];
  *v25 = v2;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = &v12[*(sub_1000035C4(&qword_10006A988, &unk_100053160) + 36)];
  sub_100051048();
  v27 = sub_100050A88();
  v26[*(sub_1000035C4(&qword_10006AD40, &qword_100053760) + 36)] = v27;
  v28 = sub_1000504E8();
  v29 = sub_100050A88();
  v30 = &v12[*(v9 + 36)];
  *v30 = v28;
  v30[8] = v29;
  sub_100050808();
  v31 = sub_100010250();
  sub_100050D28();

  sub_10001044C(v12);
  v32 = v43;
  (*(v5 + 104))(v8, enum case for CloseButtonPosition.right(_:), v43);
  v33 = v42;
  sub_10000EB24();
  v34 = v45;
  sub_1000104B4(v33, v45);
  v35 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v36 = swift_allocObject();
  sub_100010528(v34, v36 + v35);
  v50 = v9;
  v51 = v31;
  swift_getOpaqueTypeConformance2();
  v37 = v49;
  v38 = v44;
  sub_100050C58();

  (*(v5 + 8))(v8, v32);
  (*(v46 + 8))(v15, v38);
  v39 = sub_1000504F8();
  LOBYTE(v12) = sub_100050A88();
  result = sub_1000035C4(&qword_10006A9C0, &qword_100053180);
  v41 = v37 + *(result + 36);
  *v41 = v39;
  *(v41 + 8) = v12;
  return result;
}

uint64_t sub_10000F148@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v110 = a2;
  v3 = type metadata accessor for DefaultAppNetworkAcceptance();
  v104 = *(v3 - 8);
  v103 = *(v104 + 64);
  __chkstk_darwin(v3 - 8);
  v102 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000035C4(&qword_10006A9C8, &qword_100053188);
  v6 = *(v5 - 8);
  v107 = v5 - 8;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v96 = &v95 - v8;
  v9 = sub_1000035C4(&qword_10006A9D0, &qword_100053190);
  v10 = *(v9 - 8);
  v108 = v9 - 8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v109 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v106 = &v95 - v15;
  __chkstk_darwin(v14);
  v122 = &v95 - v16;
  v17 = sub_100050878();
  v18 = *(v17 - 8);
  v97 = v17;
  v98 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1000035C4(&qword_10006A9D8, &qword_100053198);
  v22 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v24 = &v95 - v23;
  v105 = sub_1000035C4(&qword_10006A9E0, &qword_1000531A0);
  v123 = *(v105 - 8);
  v25 = v123[8];
  v26 = __chkstk_darwin(v105);
  v120 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v111 = &v95 - v28;
  v29 = sub_100050EA8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050E98();
  (*(v30 + 104))(v33, enum case for Image.ResizingMode.stretch(_:), v29);
  v121 = sub_100050ED8();

  (*(v30 + 8))(v33, v29);
  v101 = sub_100050B18();
  KeyPath = swift_getKeyPath();
  v100 = sub_100050908();
  v34 = [objc_opt_self() mainBundle];
  v94._countAndFlagsBits = 0xE000000000000000;
  v158._object = 0x800000010005EE60;
  v158._countAndFlagsBits = 0xD000000000000022;
  v159.value._countAndFlagsBits = 0;
  v159.value._object = 0;
  v35.super.isa = v34;
  v160._countAndFlagsBits = 0;
  v160._object = 0xE000000000000000;
  sub_10004FC68(v158, v159, v35, v160, v94);

  sub_1000035C4(&qword_10006A9E8, &unk_100053E60);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000530B0;
  v38 = *a1;
  v37 = a1[1];
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_1000105AC();
  *(v36 + 32) = v38;
  *(v36 + 40) = v37;

  v39 = sub_100051168();
  v41 = v40;

  *&v151 = v39;
  *(&v151 + 1) = v41;
  sub_100010600();
  v42 = sub_100050C48();
  v116 = v43;
  v117 = v42;
  LOBYTE(v39) = v44;
  v119 = v45;
  v115 = swift_getKeyPath();
  v118 = sub_1000508F8();
  *(&v114 + 1) = sub_100050B58();
  *&v114 = swift_getKeyPath();
  v112 = v39 & 1;
  LOBYTE(v151) = v39 & 1;
  v113 = sub_100050AA8();
  sub_100050368();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = a1[2];
  v55 = a1[3];

  sub_100050F58();
  v56 = &v24[*(v95 + 36)];
  v57 = enum case for RoundedCornerStyle.continuous(_:);
  v58 = sub_100050828();
  (*(*(v58 - 8) + 104))(v56, v57, v58);
  sub_100050E48();
  v59 = sub_100050E68();

  v60 = sub_1000035C4(&qword_10006A9F8, &qword_100053210);
  *&v56[*(v60 + 52)] = v59;
  *&v56[*(v60 + 56)] = 256;
  v61 = sub_100051078();
  v63 = v62;
  v64 = &v56[*(sub_1000035C4(&qword_10006AA00, &qword_100053218) + 36)];
  *v64 = v61;
  v64[1] = v63;
  sub_100050868();
  sub_10001065C();
  sub_100010740();
  v65 = v111;
  v66 = v97;
  sub_100050CC8();
  (*(v98 + 8))(v21, v66);
  sub_100004444(v24, &qword_10006A9D8, &qword_100053198);
  v67 = v102;
  sub_1000104B4(a1, v102);
  v68 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v69 = swift_allocObject();
  sub_100010528(v67, v69 + v68);
  v70 = v96;
  sub_100050F58();
  v71 = sub_100050AE8();
  v72 = swift_getKeyPath();
  v73 = (v70 + *(sub_1000035C4(&qword_10006AA30, &qword_100053228) + 36));
  *v73 = v72;
  v73[1] = v71;
  *(v70 + *(v107 + 44)) = sub_100050E38();
  sub_100051078();
  sub_100050538();
  v74 = v106;
  sub_10000360C(v70, v106, &qword_10006A9C8, &qword_100053188);
  v75 = (v74 + *(v108 + 44));
  v76 = v156;
  v75[4] = v155;
  v75[5] = v76;
  v75[6] = v157;
  v77 = v152;
  *v75 = v151;
  v75[1] = v77;
  v78 = v154;
  v75[2] = v153;
  v75[3] = v78;
  v79 = v74;
  v80 = v122;
  sub_10000360C(v79, v122, &qword_10006A9D0, &qword_100053190);
  v81 = v123[2];
  v82 = v120;
  v83 = v105;
  v81(v120, v65, v105);
  v84 = v109;
  sub_10000A00C(v80, v109, &qword_10006A9D0, &qword_100053190);
  v85 = v110;
  *v110 = 0;
  *(v85 + 8) = 1;
  v86 = KeyPath;
  v85[2] = v121;
  v85[3] = v86;
  v85[4] = v101;
  *(v85 + 20) = 257;
  *(v85 + 11) = v100;
  *&v124 = v117;
  *(&v124 + 1) = v116;
  LOBYTE(v125) = v112;
  *(&v125 + 1) = v149[0];
  DWORD1(v125) = *(v149 + 3);
  *(&v125 + 1) = v119;
  *&v126 = v115;
  BYTE8(v126) = 1;
  *(&v126 + 9) = v147;
  BYTE11(v126) = v148;
  HIDWORD(v126) = v118;
  v127 = v114;
  LOBYTE(v128) = v113;
  DWORD1(v128) = *&v150[3];
  *(&v128 + 1) = *v150;
  *(&v128 + 1) = v47;
  *&v129[0] = v49;
  *(&v129[0] + 1) = v51;
  *&v129[1] = v53;
  BYTE8(v129[1]) = 0;
  v87 = v129[0];
  *(v85 + 7) = v128;
  *(v85 + 8) = v87;
  *(v85 + 137) = *(v129 + 9);
  v88 = v125;
  *(v85 + 3) = v124;
  *(v85 + 4) = v88;
  v89 = v127;
  *(v85 + 5) = v126;
  *(v85 + 6) = v89;
  v90 = sub_1000035C4(&qword_10006AA38, &qword_100053230);
  v81(v85 + v90[20], v82, v83);
  sub_10000A00C(v84, v85 + v90[24], &qword_10006A9D0, &qword_100053190);
  v91 = v85 + v90[28];
  *v91 = 0;
  v91[8] = 1;

  sub_10000A00C(&v124, v130, &qword_10006AA40, &qword_100053238);
  sub_100004444(v122, &qword_10006A9D0, &qword_100053190);
  v92 = v123[1];
  v92(v111, v83);
  sub_100004444(v84, &qword_10006A9D0, &qword_100053190);
  v92(v120, v83);
  v130[0] = v117;
  v130[1] = v116;
  v131 = v112;
  *v132 = v149[0];
  *&v132[3] = *(v149 + 3);
  v133 = v119;
  v134 = v115;
  v135 = 1;
  v136 = v147;
  v137 = v148;
  v138 = v118;
  v139 = v114;
  v140 = v113;
  *&v141[3] = *&v150[3];
  *v141 = *v150;
  v142 = v47;
  v143 = v49;
  v144 = v51;
  v145 = v53;
  v146 = 0;
  sub_100004444(v130, &qword_10006AA40, &qword_100053238);
}

uint64_t sub_10000FD1C@<X0>(uint64_t a1@<X8>)
{
  sub_100050808();
  v2 = sub_100050C38();
  v4 = v3;
  v6 = v5;
  sub_100050AE8();
  v7 = sub_100050C18();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10000A514(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_10000FE10(uint64_t a1)
{
  v2 = sub_100050428();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000035C4(&qword_10006AA48, &qword_100053240);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_10004FCB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051158();
  sub_10004FCA8();

  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = a1 + *(type metadata accessor for DefaultAppNetworkAcceptance() + 24);
    sub_10004CCE4(v6);
    sub_100050418();
    (*(v3 + 8))(v6, v2);
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t sub_100010054@<X0>(uint64_t a1@<X8>)
{
  sub_100050808();
  result = sub_100050C38();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000100CC(uint64_t a1)
{
  v2 = sub_100050748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for DefaultAppNetworkAcceptance() + 28);
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
    sub_10001051C();
    v10 = (*(v3 + 8))(v6, v2);
    v9 = v13;
  }

  v9(v10);
}

unint64_t sub_100010250()
{
  result = qword_10006A990;
  if (!qword_10006A990)
  {
    sub_10000372C(&qword_10006A968, &qword_100053140);
    sub_1000102DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A990);
  }

  return result;
}

unint64_t sub_1000102DC()
{
  result = qword_10006A998;
  if (!qword_10006A998)
  {
    sub_10000372C(&qword_10006A988, &unk_100053160);
    sub_100010394();
    sub_1000044E8(&qword_10006A9B8, &qword_10006AD40, &qword_100053760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A998);
  }

  return result;
}

unint64_t sub_100010394()
{
  result = qword_10006A9A0;
  if (!qword_10006A9A0)
  {
    sub_10000372C(&qword_10006A980, &qword_100053158);
    sub_1000044E8(&qword_10006A9A8, &qword_10006A9B0, &unk_100053170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A9A0);
  }

  return result;
}

uint64_t sub_10001044C(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006A968, &qword_100053140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000104B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppNetworkAcceptance();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppNetworkAcceptance();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000105AC()
{
  result = qword_10006B270;
  if (!qword_10006B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B270);
  }

  return result;
}

unint64_t sub_100010600()
{
  result = qword_10006A9F0;
  if (!qword_10006A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A9F0);
  }

  return result;
}

unint64_t sub_10001065C()
{
  result = qword_10006AA08;
  if (!qword_10006AA08)
  {
    sub_10000372C(&qword_10006A9D8, &qword_100053198);
    sub_1000044E8(&qword_10006AA10, &qword_10006AA18, &qword_100053220);
    sub_1000044E8(&qword_10006AA20, &qword_10006AA00, &qword_100053218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AA08);
  }

  return result;
}

unint64_t sub_100010740()
{
  result = qword_10006AA28;
  if (!qword_10006AA28)
  {
    sub_100050878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AA28);
  }

  return result;
}

uint64_t sub_100010798()
{
  v1 = type metadata accessor for DefaultAppNetworkAcceptance();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  sub_1000035C4(&qword_10006A7D8, &unk_100053038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_100050428();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = (v5 + v1[7]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  sub_10001051C();
  sub_100003E6C(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100010908(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DefaultAppNetworkAcceptance() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100010980()
{
  result = qword_10006AA50;
  if (!qword_10006AA50)
  {
    sub_10000372C(&qword_10006A9C0, &qword_100053180);
    sub_10000372C(&qword_10006A970, &qword_100053148);
    sub_10000372C(&qword_10006A968, &qword_100053140);
    sub_100010250();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AA50);
  }

  return result;
}

void sub_100010A90(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = swift_getKeyPath();
  *(a2 + 80) = 0;
  *(a2 + 88) = sub_100050388() & 1;
  *(a2 + 96) = v4;
  *(a2 + 104) = v5 & 1;
  v6 = type metadata accessor for DefaultAppView(0);
  v7 = (a2 + *(v6 + 40));

  sub_1000035C4(&qword_10006ABE8, &qword_1000536A0);
  sub_100050F08();
  *v7 = v10;
  v7[1] = v11;
  v8 = *(v6 + 36);
  type metadata accessor for TranslationProviderHostModel(0);
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  v9 = a1;
  sub_100051018();
  sub_1000035C4(&qword_10006ABF0, &qword_1000536A8);
  sub_100050378();
}

uint64_t sub_100010C40()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  if (*(v0 + 16) == 1)
  {
    v8 = v0[1];
  }

  else
  {
    v9 = *v0;

    sub_100051368();
    v10 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C();
    (*(v2 + 8))(v5, v1);
    return v12;
  }

  return v7;
}

uint64_t sub_100010DA4()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    v8 = *(v0 + 32);
  }

  else
  {
    v9 = *(v0 + 24);

    sub_100051368();
    v10 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C();
    (*(v2 + 8))(v5, v1);
    return v12;
  }

  return v7;
}

uint64_t sub_100010F08()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
    v8 = *(v0 + 56);
  }

  else
  {
    v9 = *(v0 + 48);

    sub_100051368();
    v10 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C();
    (*(v2 + 8))(v5, v1);
    return v12;
  }

  return v7;
}

uint64_t sub_10001106C()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 72);
  if (*(v0 + 80) != 1)
  {
    v7 = *(v0 + 72);

    sub_100051368();
    v8 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_100003E6C(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1000111B4()
{
  v0 = sub_1000501A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppExtensionHostView.Configuration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v19 - v12;
  v14 = *(type metadata accessor for DefaultAppView(0) + 36);
  sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  sub_100050FF8();
  v15 = v20;
  swift_getKeyPath();
  v20 = v15;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v16 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
  swift_beginAccess();
  sub_10000D838(v15 + v16, v13);

  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_100004444(v13, &qword_10006A658, &qword_100052FA0);
    v19[1] = 0x74616C736E617254;
    v19[2] = 0xE900000000000065;
    sub_100010600();
    return sub_100051508();
  }

  else
  {
    sub_10001875C(v13, v9, type metadata accessor for AppExtensionHostView.Configuration);
    sub_100004444(v13, &qword_10006A658, &qword_100052FA0);
    (*(v1 + 16))(v4, v9, v0);
    sub_100017564(v9);
    v18 = sub_100050198();
    (*(v1 + 8))(v4, v0);
    return v18;
  }
}

uint64_t sub_1000114FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for DefaultAppView(0);
  v44 = *(v3 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v3 - 8);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100050078();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  __chkstk_darwin(v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000035C4(&qword_10006AD20, &qword_100053740);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v38 = sub_1000035C4(&qword_10006AD28, &qword_100053748);
  v12 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v14 = &v38 - v13;
  *v11 = sub_100050888();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v15 = sub_1000035C4(&qword_10006AD30, &qword_100053750);
  sub_10001195C(v1, &v11[*(v15 + 44)]);
  v16 = sub_100051078();
  v18 = v17;
  v19 = &v11[*(v8 + 36)];
  v20 = sub_100050E58();
  v21 = v19 + *(sub_1000035C4(&qword_10006AD38, &qword_100053758) + 36);
  sub_100051048();
  v22 = sub_100050A88();
  v21[*(sub_1000035C4(&qword_10006AD40, &qword_100053760) + 36)] = v22;
  *v19 = v20;
  v23 = sub_1000504E8();
  LOBYTE(v21) = sub_100050A88();
  v24 = v19 + *(sub_1000035C4(&qword_10006AD48, &qword_100053768) + 36);
  *v24 = v23;
  v24[8] = v21;
  v25 = (v19 + *(sub_1000035C4(&qword_10006AD50, &qword_100053770) + 36));
  *v25 = v16;
  v25[1] = v18;
  v46 = sub_1000111B4();
  v47 = v26;
  sub_100018678();
  sub_100010600();
  sub_100050D48();

  sub_100004444(v11, &qword_10006AD20, &qword_100053740);
  v27 = sub_1000504F8();
  v28 = sub_100050A88();
  v29 = v39;
  v30 = &v14[*(v38 + 36)];
  *v30 = v27;
  v30[8] = v28;
  v32 = v40;
  v31 = v41;
  (*(v40 + 104))(v29, enum case for CloseButtonPosition.right(_:), v41);
  sub_10001106C();
  v33 = v2;
  v34 = v42;
  sub_10001875C(v33, v42, type metadata accessor for DefaultAppView);
  v35 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v36 = swift_allocObject();
  sub_1000187C8(v34, v36 + v35);
  sub_100018844();
  sub_100050C58();

  (*(v32 + 8))(v29, v31);
  return sub_100004444(v14, &qword_10006AD28, &qword_100053748);
}

uint64_t sub_10001195C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_10004FC58();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DefaultAppView(0);
  v7 = v6 - 8;
  v43 = *(v6 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v6);
  v9 = sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v50 = sub_1000035C4(&qword_10006AD88, &qword_100053780);
  v14 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v16 = &v40 - v15;
  v17 = sub_1000035C4(&qword_10006AD90, &qword_100053788);
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = *(v44 + 64);
  __chkstk_darwin(v17);
  v47 = *(v7 + 44);
  v48 = &v40 - v19;
  sub_100051008();
  swift_getKeyPath();
  sub_100051028();

  (*(v10 + 8))(v13, v9);
  v42 = v9;
  sub_100050FF8();
  v20 = v51;
  v41 = type metadata accessor for DefaultAppView;
  sub_10001875C(a1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DefaultAppView);
  v21 = *(v43 + 80);
  v22 = (v21 + 16) & ~v21;
  v49 = v8;
  v23 = swift_allocObject();
  sub_1000187C8(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v24 = type metadata accessor for AppExtensionHostView(0);
  *&v16[*(v24 + 20)] = v20;
  v25 = &v16[*(v24 + 24)];
  *v25 = sub_100018A6C;
  v25[1] = v23;
  v26 = a1;
  sub_10001875C(a1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DefaultAppView);
  v27 = swift_allocObject();
  sub_1000187C8(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v22);
  v28 = &v16[*(v50 + 36)];
  *v28 = sub_100018ADC;
  v28[1] = v27;
  v28[2] = 0;
  v28[3] = 0;
  sub_100050FF8();
  v29 = v51;
  swift_getKeyPath();
  v51 = v29;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  LOBYTE(v27) = v29[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__shouldExpand];

  LOBYTE(v51) = v27;
  sub_10001875C(v26, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
  v30 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v21;
  v31 = swift_allocObject();
  sub_1000187C8(v30, v31 + v22);
  v32 = sub_100018BE8();
  sub_100050DD8();

  sub_100004444(v16, &qword_10006AD88, &qword_100053780);
  sub_100050FF8();
  v33 = v51;
  swift_getKeyPath();
  v51 = v33;
  sub_10004FDD8();

  v34 = *&v33[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation];
  v35 = v34;

  if (!v34)
  {
    sub_100009FC4(0, &qword_10006ABD0, NSAttributedString_ptr);
    sub_10004FC48();
    v35 = sub_100051408();
  }

  v55 = v35;
  sub_10001875C(v26, v30, type metadata accessor for DefaultAppView);
  v36 = swift_allocObject();
  sub_1000187C8(v30, v36 + v22);
  sub_100009FC4(0, &qword_10006ABD0, NSAttributedString_ptr);
  v51 = v50;
  v52 = &type metadata for Bool;
  v53 = v32;
  v54 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_100018174(&qword_10006ADA8, &qword_10006ABD0, NSAttributedString_ptr);
  v37 = v45;
  v38 = v48;
  sub_100050DD8();

  return (*(v44 + 8))(v38, v37);
}

uint64_t sub_100012048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
  swift_beginAccess();
  return sub_10000D838(v3 + v4, a2);
}

uint64_t sub_100012110(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-v6];
  sub_10000D838(a1, &v10[-v6]);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDC8();

  return sub_100004444(v7, &qword_10006A658, &qword_100052FA0);
}

void sub_100012258(char a1)
{
  v2 = a1 & 1;
  v3 = *(type metadata accessor for DefaultAppView(0) + 36);
  sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  sub_100050FF8();
  if (v5[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__isConnectedToRemote] == v2)
  {
    v5[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__isConnectedToRemote] = v2;

    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDC8();

  if (a1)
  {
LABEL_5:
    sub_100050FF8();
    sub_100014BE8();
  }
}

void sub_1000123E8()
{
  v0 = *(type metadata accessor for DefaultAppView(0) + 36);
  sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  sub_100050FF8();
  sub_1000157B8();
}

void sub_100012448(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v3 = sub_100050268();
  sub_100008BA0(v3, qword_10006E010);
  v4 = sub_100050248();
  v5 = sub_100051348();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "in onChange of shouldExpand: %{BOOL}d", v6, 8u);
  }

  if (v2)
  {
    v7 = sub_100010DA4();
    v7();
  }
}

uint64_t sub_10001257C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v3 = sub_100050268();
  sub_100008BA0(v3, qword_10006E010);
  v4 = v2;
  v5 = sub_100050248();
  v6 = sub_100051348();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = [v4 string];
    sub_100051158();

    v9 = sub_1000511D8();

    *(v7 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v5, v6, "in onChange of translation: %ld", v7, 0xCu);
  }

  else
  {

    v5 = v4;
  }

  v10 = [v4 string];
  sub_100051158();

  v11 = sub_1000511D8();

  if (v11 >= 1)
  {
    v12 = sub_100010F08();
    v12(v4);
  }

  v13 = sub_100010C40();
  v13();
}

uint64_t sub_100012770(uint64_t a1)
{
  v2 = sub_100050748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v11 = *a1;

    sub_100051368();
    v12 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C();
    v10 = (*(v3 + 8))(v6, v2);
    v8 = v14;
  }

  v8(v10);
}

void sub_1000128F8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp;
  v5 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp);
  sub_100009FC4(0, &qword_10006ABD8, LSApplicationRecord_ptr);
  v6 = v5;
  v7 = sub_1000514B8();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
    sub_10004FDC8();
  }
}

uint64_t sub_100012A6C()
{
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v1 = *(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel);
}

uint64_t sub_100012B18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  *a2 = *(v3 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel);
}

uint64_t sub_100012BCC(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
    sub_10004FDC8();
  }
}

id sub_100012D1C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_100012DCC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_100012E90(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString;
  v5 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString);
  sub_100009FC4(0, &qword_10006ABD0, NSAttributedString_ptr);
  v6 = v5;
  v7 = sub_1000514B8();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
    sub_10004FDC8();
  }
}

uint64_t sub_100013004@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v3 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
  swift_beginAccess();
  return sub_10000D838(v5 + v3, a1);
}

uint64_t sub_1000130CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_10000D838(a2, &v10 - v6);
  v8 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
  swift_beginAccess();
  sub_1000176C0(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t sub_1000131E0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  return *(v2 + *a2);
}

uint64_t sub_100013280@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_10001335C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
    sub_10004FDC8();
  }

  return result;
}

void sub_100013474(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation;
  v5 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
    sub_10004FDC8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100009FC4(0, &qword_10006ABD0, NSAttributedString_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000514B8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_10001360C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v1 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__subscriptions;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1000136CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_100013794(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__subscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1000179D8(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
    sub_10004FDC8();
  }
}

uint64_t sub_1000138E4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void sub_100013968(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession;
  v5 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
    sub_10004FDC8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100009FC4(0, &qword_10006ABB8, NEPolicySession_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000514B8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_100013B00()
{
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  result = *(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID);
  v2 = *(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID + 8);
  return result;
}

uint64_t sub_100013BB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v5 = *(v3 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100013C6C(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID;
  if ((*(v2 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDC8();
}

void sub_100013DAC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection;
  v5 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
    sub_10004FDC8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100009FC4(0, &qword_10006ABA8, NSXPCConnection_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000514B8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_100013F44()
{
  v1 = v0;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_100050268();
  sub_100008BA0(v2, qword_10006E010);
  v3 = sub_100050248();
  v4 = sub_100051348();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Clearing policy session", v5, 2u);
  }

  swift_getKeyPath();
  v9 = v1;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v6 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession;
  [*&v1[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession] removeAllPolicies];
  swift_getKeyPath();
  v9 = v1;
  sub_10004FDD8();

  [*&v1[v6] apply];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TranslationProviderHostModel(0);
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_100014260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = *(*(sub_1000035C4(&qword_10006ABF8, &qword_1000536B8) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v6 = sub_1000035C4(&qword_10006AC00, &qword_1000536C0);
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();
  v9 = sub_1000035C4(&qword_10006AC08, &qword_1000536C8);
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v11 = *(v10 + 64) + 15;
  v4[20] = swift_task_alloc();
  sub_1000512D8();
  v4[21] = sub_1000512C8();
  v13 = sub_1000512B8();

  return _swift_task_switch(sub_100014400, v13, v12);
}

uint64_t sub_100014400()
{
  v1 = v0[21];
  v13 = v0[18];
  v14 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v15 = v0[20];
  v4 = v0[14];
  v12 = v0[15];
  v5 = v0[13];

  swift_getKeyPath();
  v0[8] = v5;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v6 = *&v5[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel];
  swift_beginAccess();

  sub_1000035C4(&qword_10006AC10, &qword_1000536D0);
  sub_1000502E8();
  swift_endAccess();

  v7 = [objc_opt_self() mainRunLoop];
  v0[9] = v7;
  v8 = sub_1000514C8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100009FC4(0, &qword_10006AC18, NSRunLoop_ptr);
  sub_1000044E8(&qword_10006AC20, &qword_10006AC00, &qword_1000536C0);
  sub_100018174(&qword_10006AC28, &qword_10006AC18, NSRunLoop_ptr);
  sub_100050348();
  sub_100004444(v4, &qword_10006ABF8, &qword_1000536B8);

  (*(v3 + 8))(v2, v12);
  *(swift_allocObject() + 16) = v5;
  sub_1000044E8(&qword_10006AC30, &qword_10006AC08, &qword_1000536C8);
  v9 = v5;
  sub_100050358();

  (*(v14 + 8))(v15, v13);
  swift_getKeyPath();
  v0[10] = v9;
  sub_10004FDD8();

  v0[11] = v9;
  swift_getKeyPath();
  sub_10004FDF8();

  swift_beginAccess();
  sub_100050278();
  swift_endAccess();

  v0[12] = v9;
  swift_getKeyPath();
  sub_10004FDE8();

  v10 = v0[1];

  return v10();
}

void sub_100014854(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation;
  v5 = *(a1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation);
  if (v5)
  {
    sub_100009FC4(0, &qword_10006ABD0, NSAttributedString_ptr);
    v6 = a2;
    v7 = v5;
    v8 = sub_1000514B8();

    if (v8)
    {
      v9 = *(a1 + v4);
      *(a1 + v4) = a2;

      return;
    }
  }

  else
  {
    v10 = a2;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDC8();
}

void sub_100014A88()
{
  if (*(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__shouldExpand) == 1)
  {
    *(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__shouldExpand) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
    sub_10004FDC8();
  }
}

void sub_100014BE8()
{
  v1 = v0;
  swift_getKeyPath();
  v38 = v0;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  if (*(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__isConnectedToRemote) != 1)
  {
    if (qword_100069EF0 != -1)
    {
      swift_once();
    }

    v30 = sub_100050268();
    sub_100008BA0(v30, qword_10006E010);
    v31 = sub_100050248();
    v32 = sub_100051358();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_26;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Asked to translate without a remote connection";
    goto LABEL_25;
  }

  swift_getKeyPath();
  v38 = v0;
  sub_10004FDD8();

  v2 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString;
  v3 = [*(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString) string];
  v4 = sub_100051158();
  v6 = v5;

  v7 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  if (!v7)
  {
    if (qword_100069EF0 != -1)
    {
      swift_once();
    }

    v35 = sub_100050268();
    sub_100008BA0(v35, qword_10006E010);
    v31 = sub_100050248();
    v32 = sub_100051358();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_26;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Asked to translate an empty string";
    goto LABEL_25;
  }

  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_100050268();
  sub_100008BA0(v8, qword_10006E010);
  v9 = sub_100050248();
  v10 = sub_100051348();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "translating", v11, 2u);
  }

  swift_getKeyPath();
  sub_10004FDD8();

  v12 = *(&v1->isa + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection);
  if (!v12 || (v13 = [v12 remoteObjectProxy], sub_100051518(), swift_unknownObjectRelease(), sub_1000035C4(&qword_10006ABB0, &qword_100053450), (swift_dynamicCast() & 1) == 0))
  {
    v31 = sub_100050248();
    v32 = sub_100051358();
    if (!os_log_type_enabled(v31, v32))
    {
LABEL_26:

      return;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "No xpc proxy connection";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

    goto LABEL_26;
  }

  v37 = v2;
  swift_unknownObjectRetain();
  v14 = sub_100050248();
  v15 = sub_100051348();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38 = v17;
    *v16 = 136315138;
    swift_unknownObjectRetain();
    v18 = sub_100051178();
    v20 = sub_100008C04(v18, v19, &v38);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Connected to remote %s", v16, 0xCu);
    sub_100009F78(v17);
  }

  swift_getKeyPath();
  v38 = v1;
  sub_10004FDD8();

  v21 = *(&v1->isa + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000502F8();

  v22 = v38;
  v23 = v1;
  v24 = sub_100050248();
  v25 = sub_100051348();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    swift_getKeyPath();
    v36 = v25;
    v38 = v23;
    sub_10004FDD8();

    v27 = v37;
    v28 = [*(&v1->isa + v37) string];
    sub_100051158();

    v22 = v22;
    v29 = sub_1000511D8();

    *(v26 + 4) = v29;

    *(v26 + 12) = 1024;
    *(v26 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v24, v36, "Will translate %ld characters, replacementAllowed: %{BOOL}d", v26, 0x12u);
  }

  else
  {

    v24 = v23;
    v27 = v37;
  }

  swift_getKeyPath();
  v38 = v23;
  sub_10004FDD8();

  [v1 translateWithText:*(&v1->isa + v27) replacementAllowed:v22];
  swift_unknownObjectRelease();
}

void *sub_100015328(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

uint64_t sub_1000153D0(void *a1)
{
  v2 = v1;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v4 = sub_100050268();
  sub_100008BA0(v4, qword_10006E010);
  v5 = sub_100050248();
  v6 = sub_100051348();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "should Accept XPC connection", v7, 2u);
  }

  if ([a1 delegate])
  {
    swift_unknownObjectRelease();
  }

  else
  {
    [a1 setDelegate:v2];
  }

  [a1 setExportedObject:v2];
  v8 = objc_opt_self();
  v9 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL____TtP21TranslationUIProvider26TranslationXPCHostProtocol_];
  [a1 setExportedInterface:v9];

  v10 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL____TtP21TranslationUIProvider28TranslationXPCRemoteProtocol_];
  [a1 setRemoteObjectInterface:v10];
  v14[4] = sub_100015654;
  v14[5] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10004E228;
  v14[3] = &unk_100066810;
  v11 = _Block_copy(v14);
  [a1 setInterruptionHandler:v11];
  _Block_release(v11);
  [a1 resume];
  v12 = a1;
  sub_100013DAC(a1);

  sub_100015674(&static os_log_type_t.debug.getter, "did Accept XPC connection");
  return 1;
}

void sub_100015674(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v4 = sub_100050268();
  sub_100008BA0(v4, qword_10006E010);
  oslog = sub_100050248();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_1000157B8()
{
  v0 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - v6;
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v10 = sub_100050268();
  sub_100008BA0(v10, qword_10006E010);
  v11 = sub_100050248();
  v12 = sub_100051348();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Connecting to service...", v13, 2u);
  }

  sub_100015AA4(v9);
  sub_10000D838(v9, v7);
  v14 = sub_100050248();
  v15 = sub_100051348();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    sub_10000D838(v7, v4);
    v18 = sub_100051178();
    v20 = v19;
    sub_100004444(v7, &qword_10006A658, &qword_100052FA0);
    v21 = sub_100008C04(v18, v20, &v24);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Found extension configuration: %s", v16, 0xCu);
    sub_100009F78(v17);
  }

  else
  {

    sub_100004444(v7, &qword_10006A658, &qword_100052FA0);
  }

  sub_100016788();
  return sub_100004444(v9, &qword_10006A658, &qword_100052FA0);
}

uint64_t sub_100015AA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = a1;
  v85 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  v3 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v5 = &v84 - v4;
  v89 = sub_1000501C8();
  v88 = *(v89 - 8);
  v6 = *(v88 + 64);
  v7 = __chkstk_darwin(v89);
  v86 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v84 - v9;
  sub_1000501F8();
  v10 = objc_allocWithZone(_EXQuery);
  v11 = sub_100051128();

  isa = [v10 initWithExtensionPointIdentifier:v11];

  if (qword_100069EF0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v13 = sub_100050268();
  v14 = sub_100008BA0(v13, qword_10006E010);
  v15 = isa;
  v100 = v14;
  v16 = sub_100050248();
  v17 = sub_100051348();

  v18 = os_log_type_enabled(v16, v17);
  v96 = v2;
  v91 = v5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v103[0] = v20;
    *v19 = 136315138;
    v21 = v15;
    v22 = [v21 description];
    v23 = sub_100051158();
    v25 = v24;

    v26 = sub_100008C04(v23, v25, v103);
    v2 = v96;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Begin extension search with query: %s", v19, 0xCu);
    sub_100009F78(v20);
  }

  v27 = objc_opt_self();
  sub_1000035C4(&qword_10006A460, &qword_100052B70);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100053270;
  *(v28 + 32) = v15;
  sub_100009FC4(0, &qword_10006AB98, _EXQuery_ptr);
  v90 = v15;
  isa = sub_100051238().super.isa;

  v29 = [v27 executeQueries:isa];

  sub_100009FC4(0, &qword_10006ABA0, _EXExtensionIdentity_ptr);
  v5 = sub_100051248();

  v30 = sub_100050248();
  v31 = sub_100051338();

  v32 = os_log_type_enabled(v30, v31);
  v97 = v5;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v103[0] = v34;
    *v33 = 136315138;
    v35 = sub_100051258();
    v37 = sub_100008C04(v35, v36, v103);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "Got extension search results %s", v33, 0xCu);
    sub_100009F78(v34);

    v5 = v97;
  }

  if (v5 >> 62)
  {
    v39 = sub_100051608();
  }

  else
  {
    v39 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v95 = v39;
  if (!v39)
  {
LABEL_22:

    v57 = sub_100050248();
    v58 = sub_100051358();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "No matching extensions found", v59, 2u);
    }

    v60 = type metadata accessor for AppExtensionHostView.Configuration(0);
    v61 = *(*(v60 - 8) + 56);
    v62 = v91;
    v61(v91, 1, 1, v60);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v84 - 2) = v2;
    *(&v84 - 1) = v62;
    v103[0] = v2;
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
    sub_10004FDC8();

    sub_100004444(v62, &qword_10006A658, &qword_100052FA0);
    return (v61)(v92, 1, 1, v60);
  }

  v40 = 0;
  v41 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel___observationRegistrar;
  v98 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp;
  v99 = v5 & 0xC000000000000001;
  v93 = v5 & 0xFFFFFFFFFFFFFF8;
  *&v38 = 136315138;
  v94 = v38;
  v42 = v95;
  while (1)
  {
    if (v99)
    {
      v43 = sub_1000515D8();
      v44 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v40 >= *(v93 + 16))
      {
        goto LABEL_29;
      }

      v43 = *(v5 + 8 * v40 + 32);
      v44 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    v101 = v44;
    v45 = v43;
    v46 = sub_100050248();
    v47 = sub_100051338();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v103[0] = v49;
      *v48 = v94;
      v50 = v41;
      v51 = [v45 bundleIdentifier];
      v52 = sub_100051158();
      isa = v53;

      v41 = v50;
      v5 = v97;
      v54 = sub_100008C04(v52, isa, v103);

      *(v48 + 4) = v54;
      v42 = v95;
      _os_log_impl(&_mh_execute_header, v46, v47, "Examining %s", v48, 0xCu);
      sub_100009F78(v49);
      v2 = v96;
    }

    v55 = [v45 containingBundleRecord];
    if (v55)
    {
      break;
    }

LABEL_10:

    ++v40;
    if (v101 == v42)
    {
      goto LABEL_22;
    }
  }

  v56 = v55;
  isa = swift_getKeyPath();
  v103[0] = v2;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  if (![v56 isEqual:*&v2[v98]])
  {

    goto LABEL_10;
  }

  v65 = v45;
  v66 = v87;
  v101 = v65;
  sub_1000501D8();
  (*(v88 + 16))(v86, v66, v89);
  v67 = v91;
  sub_1000501B8();
  v68 = sub_1000501E8();
  v70 = v69;
  v71 = type metadata accessor for AppExtensionHostView.Configuration(0);
  v72 = (v67 + *(v71 + 20));
  *v72 = v68;
  v72[1] = v70;
  (*(*(v71 - 8) + 56))(v67, 0, 1, v71);
  v73 = swift_getKeyPath();
  __chkstk_darwin(v73);
  *(&v84 - 2) = v2;
  *(&v84 - 1) = v67;
  v103[0] = v2;
  sub_10004FDC8();

  sub_100004444(v67, &qword_10006A658, &qword_100052FA0);
  v74 = v2;
  v75 = sub_100050248();
  v76 = sub_100051348();

  v77 = &off_10006A000;
  if (os_log_type_enabled(v75, v76))
  {
    v78 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v103[0] = v100;
    *v78 = v94;
    swift_getKeyPath();
    v102 = v74;
    sub_10004FDD8();

    v79 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
    swift_beginAccess();
    sub_10000D838(&v74[v79], v67);
    v80 = sub_100051178();
    v82 = sub_100008C04(v80, v81, v103);

    *(v78 + 4) = v82;
    v77 = &off_10006A000;
    _os_log_impl(&_mh_execute_header, v75, v76, "Using configuration: %s", v78, 0xCu);
    sub_100009F78(v100);
  }

  swift_getKeyPath();
  v103[0] = v74;
  sub_10004FDD8();

  (*(v88 + 8))(v87, v89);
  v83 = v77[335];
  swift_beginAccess();
  return sub_10000D838(v83 + v74, v92);
}

Swift::Int sub_1000166CC()
{
  sub_1000516C8();
  sub_1000516D8(0);
  return sub_1000516F8();
}

Swift::Int sub_100016738()
{
  sub_1000516C8();
  sub_1000516D8(0);
  return sub_1000516F8();
}

id sub_100016788()
{
  v1 = sub_100050168();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v86 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100050188();
  v5 = *(v4 - 8);
  v84 = v4;
  v85 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v87 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for AppExtensionHostView.Configuration(0);
  v8 = *(v91 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v91);
  v88 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v83 - v13;
  v15 = sub_1000501A8();
  v16 = *(v15 - 8);
  v89 = v15;
  v90 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v83 - v22;
  __chkstk_darwin(v21);
  v25 = v83 - v24;
  swift_getKeyPath();
  v26 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel___observationRegistrar;
  *atoken.val = v0;
  v27 = sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel);
  sub_10004FDD8();

  v28 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
  swift_beginAccess();
  sub_10000D838(v0 + v28, v14);
  if ((*(v8 + 48))(v14, 1, v91))
  {
    return sub_100004444(v14, &qword_10006A658, &qword_100052FA0);
  }

  v30 = v20;
  v83[0] = v27;
  v83[1] = v26;
  v91 = v0;
  v31 = v88;
  sub_10001875C(v14, v88, type metadata accessor for AppExtensionHostView.Configuration);
  sub_100004444(v14, &qword_10006A658, &qword_100052FA0);
  v33 = v89;
  v32 = v90;
  v34 = *(v90 + 16);
  v34(v23, v31, v89);
  sub_100017564(v31);
  (*(v32 + 32))(v25, v23, v33);
  if (byte_10006E028)
  {
    return (*(v32 + 8))(v25, v33);
  }

  swift_getKeyPath();
  v35 = v91;
  *atoken.val = v91;
  sub_10004FDD8();

  v36 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession;
  if (*(v35 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession))
  {
    if (qword_100069EF0 != -1)
    {
      swift_once();
    }

    v37 = sub_100050268();
    sub_100008BA0(v37, qword_10006E010);
    v38 = sub_100050248();
    v39 = sub_100051358();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "call to restrict network accdess when a policy session already exists.", v40, 2u);
    }

    return (*(v32 + 8))(v25, v33);
  }

  v34(v30, v25, v33);
  sub_100050158();
  sub_100050178();
  *atoken.val = sub_100050148();
  atoken.val[2] = v47;
  atoken.val[3] = v48;
  atoken.val[4] = v49;
  atoken.val[5] = v50;
  atoken.val[6] = v51;
  atoken.val[7] = v52;
  v53 = audit_token_to_pid(&atoken);
  v54 = v53;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v55 = sub_100050268();
  sub_100008BA0(v55, qword_10006E010);
  v56 = sub_100050248();
  v57 = sub_100051338();
  v58 = os_log_type_enabled(v56, v57);
  v60 = v84;
  v59 = v85;
  if (v58)
  {
    v61 = swift_slowAlloc();
    *v61 = 67109120;
    *(v61 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v56, v57, "Restricting network access for process %d", v61, 8u);
  }

  v62 = [objc_allocWithZone(NEPolicySession) init];
  v63 = v91;
  sub_100013968(v62);
  swift_getKeyPath();
  *atoken.val = v63;
  sub_10004FDD8();

  v64 = *(v63 + v36);
  if (v64)
  {
    v65 = v64;
    [v65 setPriority:300];
    sub_1000035C4(&qword_10006A460, &qword_100052B70);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_100053280;
    v67 = objc_opt_self();
    result = [v67 allInterfaces];
    if (result)
    {
      *(v66 + 32) = result;
      result = [v67 effectivePID:v54];
      if (result)
      {
        *(v66 + 40) = result;
        v68 = [objc_opt_self() drop];
        v69 = objc_allocWithZone(NEPolicy);
        sub_100009FC4(0, &qword_10006AB90, NEPolicyCondition_ptr);
        isa = sub_100051238().super.isa;

        v71 = [v69 initWithOrder:0 result:v68 conditions:isa];

        v72 = [v65 addPolicy:v71];
        v73 = v91;
        sub_100013C6C(v72, 0);
        if ([v65 apply])
        {
          v74 = v73;
          v75 = sub_100050248();
          v76 = sub_100051338();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = 134217984;
            swift_getKeyPath();
            *atoken.val = v74;
            sub_10004FDD8();

            if (v74[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID + 8])
            {
              v78 = 0;
            }

            else
            {
              v78 = *&v74[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID];
            }

            *(v77 + 4) = v78;

            _os_log_impl(&_mh_execute_header, v75, v76, "Network restriction policy applied with active policy ID %ld (non-zero is success)", v77, 0xCu);
          }

          else
          {
          }

          (*(v85 + 8))(v87, v84);
        }

        else
        {
          v80 = sub_100050248();
          v81 = sub_100051358();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 0;
            _os_log_impl(&_mh_execute_header, v80, v81, "Network restriction policy was not applied.", v82, 2u);
          }

          (*(v85 + 8))(v87, v60);
        }

        return (*(v90 + 8))(v25, v89);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_100017618();
  swift_allocError();
  swift_willThrow();
  (*(v59 + 8))(v87, v60);
  v79 = v89;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v41 = sub_100050268();
  sub_100008BA0(v41, qword_10006E010);
  swift_errorRetain();
  v42 = sub_100050248();
  v43 = sub_100051358();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 4) = v46;
    *v45 = v46;
    _os_log_impl(&_mh_execute_header, v42, v43, "Unable to obtain an AppExtensionProcess or Policy Session: %@", v44, 0xCu);
    sub_100004444(v45, &qword_10006AB78, &unk_100053370);
  }

  else
  {
  }

  return (*(v90 + 8))(v25, v79);
}

void sub_100017318()
{
  sub_100018594(319, &unk_10006AB60, type metadata accessor for AppExtensionHostView.Configuration, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_10004FE18();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100017464@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v5;
  return result;
}

uint64_t sub_1000174E4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_100017564(uint64_t a1)
{
  v2 = type metadata accessor for AppExtensionHostView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000175E8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100013968(v2);
}

unint64_t sub_100017618()
{
  result = qword_10006AB80;
  if (!qword_10006AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AB80);
  }

  return result;
}

uint64_t sub_1000176C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000177C4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100013DAC(v2);
}

void sub_1000177F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection) = v2;
  v4 = v2;
}

uint64_t sub_1000178DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100012BCC(v4);
}

void sub_100017978()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void sub_100017998()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession) = v2;
  v4 = v2;
}

uint64_t sub_1000179D8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return __CocoaSet.isEqual(to:)(v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_100050298();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_10006ABC0;
        v17 = a1;
        if (!v13)
        {
LABEL_27:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v26 = (v20 - 1) & v20;
              goto LABEL_32;
            }
          }

          __break(1u);
          return __CocoaSet.isEqual(to:)(v5, v4);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v26 = (v13 - 1) & v13;
LABEL_32:
          v29 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v21 = *(a2 + 40);
          sub_100017E1C(&qword_10006ABC0, &type metadata accessor for AnyCancellable);

          v22 = sub_1000510F8();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          sub_100017E1C(&qword_10006ABC8, &type metadata accessor for AnyCancellable);
          while (1)
          {
            v28 = *(*(a2 + 48) + 8 * v24);
            if (sub_100051118())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v26;
          v5 = &qword_10006ABC0;
          v17 = a1;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_100017D18(v8, v7);
}

uint64_t sub_100017CD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100013794(v4);
}

uint64_t sub_100017D18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_100051538();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_100051558();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100017E1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100017E8C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100013474(v2);
}

void sub_100017EBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation) = v2;
  v4 = v2;
}

void sub_100017F14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString) = v2;
  v4 = v2;
}

uint64_t sub_100017F54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel) = *(v0 + 24);
}

void sub_100017F98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp) = v2;
  v4 = v2;
}

uint64_t getEnumTagSinglePayload for TranslationProviderHostModel.NetworkPolicyError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TranslationProviderHostModel.NetworkPolicyError(_WORD *result, int a2, int a3)
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

unint64_t sub_1000180E0()
{
  result = qword_10006ABE0;
  if (!qword_10006ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006ABE0);
  }

  return result;
}

uint64_t sub_100018174(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009FC4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000181B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100018308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

void sub_1000183D0()
{
  sub_10000EABC(319, &unk_10006A928);
  if (v0 <= 0x3F)
  {
    sub_10000EABC(319, &qword_10006ACB0);
    if (v1 <= 0x3F)
    {
      sub_10000EABC(319, &unk_10006ACB8);
      if (v2 <= 0x3F)
      {
        sub_10000EABC(319, &unk_10006A040);
        if (v3 <= 0x3F)
        {
          sub_10001853C();
          if (v4 <= 0x3F)
          {
            sub_100018594(319, &qword_10006ACD0, type metadata accessor for TranslationProviderHostModel, &type metadata accessor for Bindable);
            if (v5 <= 0x3F)
            {
              sub_1000185F8();
              if (v6 <= 0x3F)
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

void sub_10001853C()
{
  if (!qword_10006ACC8)
  {
    v0 = sub_100050398();
    if (!v1)
    {
      atomic_store(v0, &qword_10006ACC8);
    }
  }
}

void sub_100018594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000185F8()
{
  if (!qword_10006ACD8)
  {
    sub_10000372C(&qword_10006ABE8, &qword_1000536A0);
    v0 = sub_100050F48();
    if (!v1)
    {
      atomic_store(v0, &qword_10006ACD8);
    }
  }
}

unint64_t sub_100018678()
{
  result = qword_10006AD58;
  if (!qword_10006AD58)
  {
    sub_10000372C(&qword_10006AD20, &qword_100053740);
    sub_1000044E8(&qword_10006AD60, &qword_10006AD68, &qword_100053778);
    sub_1000044E8(&unk_10006AD70, &qword_10006AD50, &qword_100053770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AD58);
  }

  return result;
}

uint64_t sub_10001875C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000187C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100018844()
{
  result = qword_10006AD80;
  if (!qword_10006AD80)
  {
    sub_10000372C(&qword_10006AD28, &qword_100053748);
    sub_10000372C(&qword_10006AD20, &qword_100053740);
    sub_100018678();
    sub_100010600();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AD80);
  }

  return result;
}

uint64_t sub_100018928()
{
  v1 = (type metadata accessor for DefaultAppView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = *(v0 + v3 + 16);
  sub_10001051C();
  v8 = *(v0 + v3 + 24);
  v9 = *(v0 + v3 + 32);
  v10 = *(v0 + v3 + 40);
  sub_10001051C();
  v11 = *(v0 + v3 + 48);
  v12 = *(v0 + v3 + 56);
  v13 = *(v0 + v3 + 64);
  sub_10001051C();
  sub_100003E6C(*(v0 + v3 + 72), *(v0 + v3 + 80));
  v14 = *(v0 + v3 + 96);

  v15 = v1[11];
  v16 = sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);
  v17 = (v0 + v3 + v1[12]);
  v18 = *v17;

  v19 = v17[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100018A6C(char a1)
{
  v2 = *(*(type metadata accessor for DefaultAppView(0) - 8) + 80);

  sub_100012258(a1);
}

uint64_t sub_100018AF4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DefaultAppView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_100018B68(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(type metadata accessor for DefaultAppView(0) - 8) + 80);

  sub_100012448(a1, a2);
}

unint64_t sub_100018BE8()
{
  result = qword_10006AD98;
  if (!qword_10006AD98)
  {
    sub_10000372C(&qword_10006AD88, &qword_100053780);
    sub_100017E1C(&qword_10006ADA0, type metadata accessor for AppExtensionHostView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AD98);
  }

  return result;
}

uint64_t sub_100018CA4(uint64_t a1, void **a2)
{
  v4 = *(*(type metadata accessor for DefaultAppView(0) - 8) + 80);

  return sub_10001257C(a1, a2);
}

uint64_t sub_100018D24()
{
  sub_10000372C(&qword_10006AD28, &qword_100053748);
  sub_100018844();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100018E1C()
{
  sub_100009CC4();
  sub_100050758();
  return v1;
}

void (*EnvironmentValues._dismiss.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = sub_100009CC4();
  sub_100050758();
  *v4 = v4[1];
  return sub_100018F2C;
}

void sub_100018F2C(uint64_t **a1, char a2)
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

uint64_t sub_100018FC0(uint64_t *a1, int a2)
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

uint64_t sub_100019008(uint64_t result, int a2, int a3)
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

uint64_t sub_10001907C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004FDB8();
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

uint64_t sub_10001914C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004FDB8();
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

unint64_t sub_100019224()
{
  result = sub_10004FDB8();
  if (v1 <= 0x3F)
  {
    result = sub_10000EA14();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000192C4()
{
  v0 = sub_10004FE28();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  (*(v3 + 104))(&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TranslationTaskHint.system(_:));
  v4 = sub_10004FF88();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_10004FF68();
}

uint64_t sub_10001939C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a2;
  v86 = a4;
  v78 = a3;
  v89 = a1;
  v6 = type metadata accessor for DownloadSelectionView_iOS(0);
  v81 = *(v6 - 8);
  v7 = v6 - 8;
  v82 = *(v81 + 64);
  v83 = v6 - 8;
  __chkstk_darwin(v6 - 8);
  v80 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004FDB8();
  v84 = *(v9 - 8);
  v10 = v84;
  v79 = *(v84 + 64);
  v11 = __chkstk_darwin(v9);
  v77 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v87 = v73 - v13;
  v14 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v88 = v73 - v16;
  v17 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v73 - v22;
  v75 = a5 + *(v7 + 32);
  v24 = *(v10 + 56);
  v24(v73 - v22, 1, 1, v9);
  v74 = v24;
  v73[1] = v10 + 56;
  sub_10000A00C(v23, v21, &qword_10006A2A0, &qword_1000528E0);
  sub_100050F08();
  sub_100004444(v23, &qword_10006A2A0, &qword_1000528E0);
  v25 = v83;
  v76 = a5 + *(v83 + 36);
  v24(v23, 1, 1, v9);
  sub_10000A00C(v23, v21, &qword_10006A2A0, &qword_1000528E0);
  sub_100050F08();
  sub_100004444(v23, &qword_10006A2A0, &qword_1000528E0);
  v26 = v25;
  v27 = v25[10];
  v90 = 0;
  sub_1000035C4(&qword_10006AE48, &qword_100053898);
  sub_100050F08();
  *(a5 + v27) = v92;
  v28 = a5 + v25[11];
  v29 = [objc_opt_self() mainBundle];
  v72._countAndFlagsBits = 0xE000000000000000;
  v94._object = 0x800000010005F090;
  v94._countAndFlagsBits = 0xD000000000000012;
  v95.value._countAndFlagsBits = 0;
  v95.value._object = 0;
  v30.super.isa = v29;
  v96._countAndFlagsBits = 0;
  v96._object = 0xE000000000000000;
  v31 = sub_10004FC68(v94, v95, v30, v96, v72);
  v33 = v32;

  v90 = v31;
  v91 = v33;
  sub_100050F08();
  v34 = v93;
  *v28 = v92;
  *(v28 + 16) = v34;
  v35 = a5 + v26[12];
  LOBYTE(v90) = 0;
  sub_100050F08();
  v36 = *(&v92 + 1);
  *v35 = v92;
  *(v35 + 8) = v36;
  v37 = a5 + v26[13];
  LOBYTE(v90) = 0;
  sub_100050F08();
  v38 = *(&v92 + 1);
  *v37 = v92;
  *(v37 + 8) = v38;
  v39 = a5 + v26[14];
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_100050F08();
  v40 = v93;
  *v39 = v92;
  *(v39 + 16) = v40;
  v41 = v26[15];
  v90 = 0;
  sub_100050F08();
  *(a5 + v41) = v92;
  v42 = (a5 + v26[16]);
  type metadata accessor for TranslationContext();
  sub_10001E44C(&qword_10006A348, type metadata accessor for TranslationContext);
  *v42 = sub_100050558();
  v42[1] = v43;
  v44 = a5 + v26[17];
  *v44 = sub_1000192C4;
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  v45 = *(v84 + 16);
  v46 = a5;
  v47 = a5;
  v73[0] = a5;
  v48 = v89;
  v49 = v9;
  v45(v46, v89, v9);
  v50 = v85;
  v45(v47 + v26[7], v85, v49);
  v45(v23, v48, v49);
  v51 = v74;
  v74(v23, 0, 1, v49);
  v52 = v75;
  sub_100004444(v75, &qword_10006AE50, &qword_1000538A0);
  v53 = sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  *(v52 + *(v53 + 28)) = 0;
  sub_10000360C(v23, v52, &qword_10006A2A0, &qword_1000528E0);
  v54 = v50;
  v45(v23, v50, v49);
  v51(v23, 0, 1, v49);
  v55 = v76;
  sub_100004444(v76, &qword_10006AE50, &qword_1000538A0);
  *(v55 + *(v53 + 28)) = 0;
  sub_10000360C(v23, v55, &qword_10006A2A0, &qword_1000528E0);
  v56 = v73[0];
  v57 = (v73[0] + *(v83 + 72));
  v58 = v86;
  *v57 = v78;
  v57[1] = v58;
  v59 = sub_1000512F8();
  (*(*(v59 - 8) + 56))(v88, 1, 1, v59);
  v45(v87, v89, v49);
  v60 = v77;
  v45(v77, v54, v49);
  v61 = v80;
  sub_10001DF1C(v56, v80);
  sub_1000512D8();

  v62 = sub_1000512C8();
  v63 = v84;
  v64 = *(v84 + 80);
  v65 = (v64 + 32) & ~v64;
  v66 = (v79 + v64 + v65) & ~v64;
  v67 = (v79 + *(v81 + 80) + v66) & ~*(v81 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = v62;
  *(v68 + 24) = &protocol witness table for MainActor;
  v69 = *(v63 + 32);
  v69(v68 + v65, v87, v49);
  v69(v68 + v66, v60, v49);
  sub_10001E280(v61, v68 + v67);
  sub_10002EA44(0, 0, v88, &unk_1000538B0, v68);

  v70 = *(v63 + 8);
  v70(v85, v49);
  return (v70)(v89, v49);
}

uint64_t sub_100019BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_10004FF08();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = sub_1000035C4(&qword_10006AE58, &qword_1000538B8);
  v6[13] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v12 = *(*(sub_1000035C4(&qword_10006AE60, &qword_1000538C0) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v13 = sub_10004FDB8();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v16 = sub_10004FE78();
  v6[22] = v16;
  v17 = *(v16 - 8);
  v6[23] = v17;
  v18 = *(v17 + 64) + 15;
  v6[24] = swift_task_alloc();
  sub_1000512D8();
  v6[25] = sub_1000512C8();
  v20 = sub_1000512B8();
  v6[26] = v20;
  v6[27] = v19;

  return _swift_task_switch(sub_100019E3C, v20, v19);
}

uint64_t sub_100019E3C()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[8];
  v5 = *(v0[19] + 16);
  v5(v0[21], v0[7], v3);
  v5(v2, v4, v3);
  sub_10004FE38();
  v6 = async function pointer to static LanguagesStatusService.languagePairState(_:)[1];
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_100019F40;
  v8 = v0[24];
  v9 = v0[17];

  return static LanguagesStatusService.languagePairState(_:)(v9, v8);
}

uint64_t sub_100019F40()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 208);
    v6 = *(v2 + 216);
    v7 = sub_10001A518;
  }

  else
  {
    v5 = *(v2 + 208);
    v6 = *(v2 + 216);
    v7 = sub_10001A064;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10001A064()
{
  v1 = v0[25];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v7 = v0[11];

  v8 = *(v7 + 56);
  v8(v2, 0, 1, v6);
  (*(v7 + 104))(v3, enum case for LanguageState.installed(_:), v6);
  v8(v3, 0, 1, v6);
  v9 = *(v5 + 48);
  sub_10000A00C(v2, v4, &qword_10006AE60, &qword_1000538C0);
  sub_10000A00C(v3, v4 + v9, &qword_10006AE60, &qword_1000538C0);
  v10 = *(v7 + 48);
  if (v10(v4, 1, v6) != 1)
  {
    v12 = v0[10];
    sub_10000A00C(v0[14], v0[15], &qword_10006AE60, &qword_1000538C0);
    v13 = v10(v4 + v9, 1, v12);
    v14 = v0[15];
    v15 = v0[16];
    if (v13 != 1)
    {
      v21 = v0[14];
      v23 = v0[11];
      v22 = v0[12];
      v24 = v0[10];
      (*(v23 + 32))(v22, v4 + v9, v24);
      sub_10001E44C(&qword_10006AE70, &type metadata accessor for LanguageState);
      v25 = sub_100051118();
      v26 = *(v23 + 8);
      v26(v22, v24);
      sub_100004444(v15, &qword_10006AE60, &qword_1000538C0);
      v26(v14, v24);
      sub_100004444(v21, &qword_10006AE60, &qword_1000538C0);
      if (v25)
      {
        goto LABEL_9;
      }

LABEL_7:
      v19 = v0[23];
      v18 = v0[24];
      v20 = v0[22];
      sub_100004444(v0[17], &qword_10006AE60, &qword_1000538C0);
      (*(v19 + 8))(v18, v20);
      goto LABEL_10;
    }

    v16 = v0[10];
    v17 = v0[11];
    sub_100004444(v0[16], &qword_10006AE60, &qword_1000538C0);
    (*(v17 + 8))(v14, v16);
LABEL_6:
    sub_100004444(v0[14], &qword_10006AE58, &qword_1000538B8);
    goto LABEL_7;
  }

  v11 = v0[10];
  sub_100004444(v0[16], &qword_10006AE60, &qword_1000538C0);
  if (v10(v4 + v9, 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_100004444(v0[14], &qword_10006AE60, &qword_1000538C0);
LABEL_9:
  v28 = v0[23];
  v27 = v0[24];
  v29 = v0[22];
  v30 = v0[17];
  v31 = v0[9];
  v32 = [objc_opt_self() mainBundle];
  v50._countAndFlagsBits = 0xE000000000000000;
  v52._countAndFlagsBits = 0x54414C534E415254;
  v52._object = 0xE900000000000045;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v33.super.isa = v32;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v34 = sub_10004FC68(v52, v53, v33, v54, v50);
  v36 = v35;

  v37 = (v31 + *(type metadata accessor for DownloadSelectionView_iOS(0) + 36));
  v38 = v37[1];
  v39 = v37[2];
  v0[2] = *v37;
  v0[3] = v38;
  v0[4] = v39;
  v0[5] = v34;
  v0[6] = v36;

  sub_1000035C4(&qword_10006AE68, &qword_1000538C8);
  sub_100050F28();
  sub_100004444(v30, &qword_10006AE60, &qword_1000538C0);
  (*(v28 + 8))(v27, v29);

LABEL_10:
  v40 = v0[24];
  v41 = v0[20];
  v42 = v0[21];
  v44 = v0[16];
  v43 = v0[17];
  v46 = v0[14];
  v45 = v0[15];
  v47 = v0[12];

  v48 = v0[1];

  return v48();
}

uint64_t sub_10001A518()
{
  v1 = v0[25];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v7 = v0[11];

  v8 = *(v7 + 56);
  v8(v2, 1, 1, v6);
  (*(v7 + 104))(v3, enum case for LanguageState.installed(_:), v6);
  v8(v3, 0, 1, v6);
  v9 = *(v5 + 48);
  sub_10000A00C(v2, v4, &qword_10006AE60, &qword_1000538C0);
  sub_10000A00C(v3, v4 + v9, &qword_10006AE60, &qword_1000538C0);
  v10 = *(v7 + 48);
  if (v10(v4, 1, v6) != 1)
  {
    v12 = v0[10];
    sub_10000A00C(v0[14], v0[15], &qword_10006AE60, &qword_1000538C0);
    v13 = v10(v4 + v9, 1, v12);
    v14 = v0[15];
    v15 = v0[16];
    if (v13 != 1)
    {
      v21 = v0[14];
      v23 = v0[11];
      v22 = v0[12];
      v24 = v0[10];
      (*(v23 + 32))(v22, v4 + v9, v24);
      sub_10001E44C(&qword_10006AE70, &type metadata accessor for LanguageState);
      v25 = sub_100051118();
      v26 = *(v23 + 8);
      v26(v22, v24);
      sub_100004444(v15, &qword_10006AE60, &qword_1000538C0);
      v26(v14, v24);
      sub_100004444(v21, &qword_10006AE60, &qword_1000538C0);
      if (v25)
      {
        goto LABEL_9;
      }

LABEL_7:
      v19 = v0[23];
      v18 = v0[24];
      v20 = v0[22];
      sub_100004444(v0[17], &qword_10006AE60, &qword_1000538C0);
      (*(v19 + 8))(v18, v20);
      goto LABEL_10;
    }

    v16 = v0[10];
    v17 = v0[11];
    sub_100004444(v0[16], &qword_10006AE60, &qword_1000538C0);
    (*(v17 + 8))(v14, v16);
LABEL_6:
    sub_100004444(v0[14], &qword_10006AE58, &qword_1000538B8);
    goto LABEL_7;
  }

  v11 = v0[10];
  sub_100004444(v0[16], &qword_10006AE60, &qword_1000538C0);
  if (v10(v4 + v9, 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_100004444(v0[14], &qword_10006AE60, &qword_1000538C0);
LABEL_9:
  v28 = v0[23];
  v27 = v0[24];
  v29 = v0[22];
  v30 = v0[17];
  v31 = v0[9];
  v32 = [objc_opt_self() mainBundle];
  v50._countAndFlagsBits = 0xE000000000000000;
  v52._countAndFlagsBits = 0x54414C534E415254;
  v52._object = 0xE900000000000045;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v33.super.isa = v32;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v34 = sub_10004FC68(v52, v53, v33, v54, v50);
  v36 = v35;

  v37 = (v31 + *(type metadata accessor for DownloadSelectionView_iOS(0) + 36));
  v38 = v37[1];
  v39 = v37[2];
  v0[2] = *v37;
  v0[3] = v38;
  v0[4] = v39;
  v0[5] = v34;
  v0[6] = v36;

  sub_1000035C4(&qword_10006AE68, &qword_1000538C8);
  sub_100050F28();
  sub_100004444(v30, &qword_10006AE60, &qword_1000538C0);
  (*(v28 + 8))(v27, v29);

LABEL_10:
  v40 = v0[24];
  v41 = v0[20];
  v42 = v0[21];
  v44 = v0[16];
  v43 = v0[17];
  v46 = v0[14];
  v45 = v0[15];
  v47 = v0[12];

  v48 = v0[1];

  return v48();
}

uint64_t sub_10001A9CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for DownloadSelectionView_iOS(0);
  v4 = v3 - 8;
  v38 = *(v3 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10004FFA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000035C4(&qword_10006B000, &qword_100053988);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = v2 + *(v4 + 44);
  v17 = *v16;
  v18 = *(v16 + 16);
  v40 = v17;
  *&v41 = v18;
  sub_1000035C4(&qword_10006AE68, &qword_1000538C8);
  sub_100050F18();
  sub_10001DF1C(v2, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v20 = swift_allocObject();
  sub_10001E280(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_10004FF98();
  sub_100051078();
  sub_100050538();
  (*(v7 + 32))(v15, v10, v6);
  v21 = &v15[*(v12 + 44)];
  v22 = v45;
  *(v21 + 4) = v44;
  *(v21 + 5) = v22;
  *(v21 + 6) = v46;
  v23 = v41;
  *v21 = v40;
  *(v21 + 1) = v23;
  v24 = v43;
  *(v21 + 2) = v42;
  *(v21 + 3) = v24;
  v25 = sub_100050AD8();
  sub_100050368();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v39;
  sub_10000360C(v15, v39, &qword_10006B000, &qword_100053988);
  result = sub_1000035C4(&qword_10006AFF0, &qword_100053980);
  v36 = v34 + *(result + 36);
  *v36 = v25;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_10001AD18(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_10004FDB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = type metadata accessor for DownloadSelectionView_iOS(0);
  v16 = v15[6];
  sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  v27 = a1;
  sub_100050F18();
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    return sub_100004444(v7, &qword_10006A2A0, &qword_1000528E0);
  }

  v25 = *(v9 + 32);
  v25(v14, v7, v8);
  v19 = v28;
  v20 = v27 + v15[7];
  sub_100050F18();
  if (v17(v19, 1, v8) == 1)
  {
    (*(v9 + 8))(v14, v8);
    return sub_100004444(v28, &qword_10006A2A0, &qword_1000528E0);
  }

  else
  {
    v21 = v26;
    v25(v26, v28, v8);
    v22 = v27 + v15[16];
    v23 = *(v22 + 8);
    (*v22)(v14, v21);
    v24 = *(v9 + 8);
    v24(v21, v8);
    return (v24)(v14, v8);
  }
}

uint64_t sub_10001AFE4@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for DownloadSelectionView_iOS(0);
  v3 = *(v2 - 8);
  v61 = v2 - 8;
  v58 = v3;
  v57 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v56 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000035C4(&qword_10006AF80, &qword_100053940);
  v5 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v53 = v46 - v6;
  v7 = sub_1000508C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000035C4(&qword_10006AF88, &qword_100053948);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v46 - v15;
  v17 = sub_1000035C4(&qword_10006AF90, &qword_100053950);
  v54 = v17;
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v46 - v19;
  v62 = v1;
  sub_1000035C4(&qword_10006AF98, &qword_100053958);
  sub_10001EABC();
  sub_100050B78();
  sub_1000508B8();
  sub_1000044E8(&qword_10006B010, &qword_10006AF88, &qword_100053948);
  sub_100050DF8();
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  v21 = sub_100050808();
  v51 = v22;
  v52 = v21;
  v49 = v23;
  v50 = v24;
  v25 = v60;
  sub_10001D0EC(v53);
  v26 = (v25 + *(v61 + 52));
  v27 = *v26;
  v28 = *(v26 + 1);
  v67 = v27;
  v68 = v28;
  sub_1000035C4(&qword_10006B018, &qword_100053990);
  sub_100050F38();
  v48 = v63;
  v47 = v64;
  v46[1] = v65;
  v29 = &v20[*(v17 + 36)];
  v30 = sub_10000372C(&qword_10006B020, &qword_100053998);
  v31 = sub_10000372C(&qword_10006B028, &qword_1000539A0);
  v32 = sub_1000044E8(&qword_10006B030, &qword_10006B028, &qword_1000539A0);
  v63 = v31;
  v64 = v7;
  v65 = v32;
  v66 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v30;
  v64 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100050468();
  v34 = sub_100051068();
  v36 = v35;
  v37 = &v29[*(sub_1000035C4(&qword_10006B038, &qword_1000539A8) + 36)];
  *v37 = v34;
  v37[1] = v36;
  v38 = v60;
  v39 = v60 + *(v61 + 48);
  v40 = *v39;
  v41 = *(v39 + 8);
  v67 = v40;
  v68 = v41;
  sub_100050F38();
  v42 = v56;
  sub_10001DF1C(v38, v56);
  v43 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v44 = swift_allocObject();
  sub_10001E280(v42, v44 + v43);
  sub_1000035C4(&qword_10006B040, &qword_1000539B0);
  sub_10001EE80();
  sub_1000044E8(&qword_10006B058, &qword_10006B040, &qword_1000539B0);
  sub_100050DC8();

  return sub_10001EFC8(v20);
}

uint64_t sub_10001B624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v29 = sub_1000035C4(&qword_10006AFF0, &qword_100053980);
  v2 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v27 = &v25 - v3;
  v26 = sub_1000035C4(&qword_10006AFB0, &qword_100053960);
  v4 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v6 = &v25 - v5;
  sub_100050808();
  v7 = sub_100050C38();
  v9 = v8;
  v11 = v10;
  sub_100050E88();
  v12 = sub_100050BE8();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_10000A514(v7, v9, v11 & 1);

  LOBYTE(v9) = sub_100050AA8();
  v19 = v16 & 1;
  v33 = v16 & 1;
  v32 = 1;
  v20 = &v6[*(v26 + 36)];
  v21 = *(sub_1000035C4(&qword_10006AFD0, &qword_100053970) + 28);
  v22 = sub_100050C08();
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  *v20 = swift_getKeyPath();
  *v6 = v12;
  *(v6 + 1) = v14;
  v6[16] = v19;
  *(v6 + 17) = *v35;
  *(v6 + 5) = *&v35[3];
  *(v6 + 3) = v18;
  v6[32] = v9;
  *(v6 + 33) = *v34;
  *(v6 + 9) = *&v34[3];
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  v6[72] = 1;
  v23 = v28;
  sub_10001A9CC(v27);
  v31 = v23;
  sub_1000035C4(&qword_10006AFE0, &qword_100053978);
  sub_10001EB88();
  sub_1000044E8(&qword_10006AFD8, &qword_10006AFE0, &qword_100053978);
  sub_10001ECC4();
  return sub_100050FD8();
}

uint64_t sub_10001B930@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for DownloadSelectionView_iOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v31[1] = v6;
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000035C4(&qword_10006B090, &qword_100053A58);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v34 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v33 = v31 - v14;
  v15 = __chkstk_darwin(v13);
  v32 = v31 - v16;
  __chkstk_darwin(v15);
  v18 = v31 - v17;
  v31[0] = a1;
  sub_10001DF1C(a1, v7);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_10001E280(v7, v20 + v19);
  v37 = a1;
  sub_1000035C4(&qword_10006B098, &qword_100053A60);
  sub_1000044E8(&qword_10006B0A0, &qword_10006B098, &qword_100053A60);
  sub_100050F58();
  v21 = v31[0];
  sub_10001DF1C(v31[0], v7);
  v22 = swift_allocObject();
  sub_10001E280(v7, v22 + v19);
  v36 = v21;
  v23 = v32;
  sub_100050F58();
  v24 = v9[2];
  v25 = v33;
  v24(v33, v18, v8);
  v26 = v34;
  v24(v34, v23, v8);
  v27 = v35;
  v24(v35, v25, v8);
  v28 = sub_1000035C4(&qword_10006B0A8, &qword_100053A68);
  v24(&v27[*(v28 + 48)], v26, v8);
  v29 = v9[1];
  v29(v23, v8);
  v29(v18, v8);
  v29(v26, v8);
  return (v29)(v25, v8);
}

uint64_t sub_10001BD14()
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
  v45._object = 0xEE004D4F52465F45;
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
  v43 = 0;
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
      v41 = sub_10001F4FC;
      v42 = v23;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v39 = sub_10004E228;
      v40 = &unk_100066B98;
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