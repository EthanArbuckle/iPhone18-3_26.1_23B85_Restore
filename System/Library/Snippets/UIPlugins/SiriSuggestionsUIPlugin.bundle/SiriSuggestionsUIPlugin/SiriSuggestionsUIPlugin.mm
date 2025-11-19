uint64_t sub_16A0()
{
  v0 = sub_14568();
  sub_1820(v0, static Logger.uiCategory);
  sub_1750(v0, static Logger.uiCategory);
  sub_14538();
  return sub_14558();
}

uint64_t Logger.uiCategory.unsafeMutableAddressor()
{
  if (qword_20180 != -1)
  {
    sub_1884();
  }

  v0 = sub_14568();

  return sub_1750(v0, static Logger.uiCategory);
}

uint64_t sub_1750(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.uiCategory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_20180 != -1)
  {
    sub_1884();
  }

  v2 = sub_14568();
  v3 = sub_1750(v2, static Logger.uiCategory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_1820(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1884()
{

  return swift_once();
}

uint64_t HintComponentView.init(text1:)(uint64_t *a1)
{
  v2 = a1[3];
  v3 = sub_201C(a1, v2);
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v3, v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = sub_1F34(v6, v2);
  sub_206C(a1);
  return v8;
}

uint64_t HintComponentView.body.getter(uint64_t a1)
{
  sub_14C98();
  sub_20B8();

  v2 = sub_14638();
  v4 = v3;
  sub_149B8();
  sub_14618();
  sub_2104(&qword_20190, &qword_15270);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_15260;
  v6 = sub_14758();
  *(v5 + 32) = v6;
  v7 = sub_14748();
  *(v5 + 33) = v7;
  v8 = sub_14778();
  sub_14778();
  if (sub_14778() != v6)
  {
    v8 = sub_14778();
  }

  sub_14778();
  if (sub_14778() != v7)
  {
    v8 = sub_14778();
  }

  sub_14578();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  __src[112] = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_15260;
  v18 = sub_14768();
  *(v17 + 32) = v18;
  v19 = sub_14788();
  *(v17 + 33) = v19;
  v20 = sub_14778();
  sub_14778();
  if (sub_14778() != v18)
  {
    v20 = sub_14778();
  }

  sub_14778();
  if (sub_14778() != v19)
  {
    v20 = sub_14778();
  }

  sub_14578();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  __src[120] = 0;
  KeyPath = swift_getKeyPath();
  v31[0] = a1;
  v31[1] = v2;
  v31[2] = v4;
  memcpy(&v31[3], __src, 0x70uLL);
  LOBYTE(v31[17]) = v8;
  v31[18] = v10;
  v31[19] = v12;
  v31[20] = v14;
  v31[21] = v16;
  LOBYTE(v31[22]) = 0;
  LOBYTE(v31[23]) = v20;
  v31[24] = v22;
  v31[25] = v24;
  v31[26] = v26;
  v31[27] = v28;
  LOBYTE(v31[28]) = 0;
  v31[29] = KeyPath;
  LOBYTE(v31[30]) = 1;
  sub_2104(&qword_20198, &qword_152A8);
  sub_21A0();
  sub_148F8();
  memcpy(__dst, v31, 0xF1uLL);
  return sub_24DC(__dst);
}

uint64_t sub_1CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_14798();
  v4 = sub_147B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, enum case for Font.Leading.tight(_:), v4);
  v10 = sub_147D8();

  (*(v5 + 8))(v9, v4);
  KeyPath = swift_getKeyPath();
  v12 = sub_2104(&qword_20200, &qword_15448);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  v13 = (a2 + *(sub_2104(&qword_20208, &qword_15450) + 36));
  *v13 = KeyPath;
  v13[1] = v10;
  v14 = sub_14908();
  result = sub_2104(&qword_20210, &qword_15458);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_1EDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_14688();
  *a1 = result;
  return result;
}

uint64_t sub_1F08(uint64_t *a1)
{
  v1 = *a1;

  return sub_14698();
}

uint64_t sub_1F34(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1, a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 32))(v6);
  v7 = sub_14B18();
  (*(v3 + 8))(v6, a2);
  return v7;
}

uint64_t sub_201C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_206C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_20B8()
{
  result = qword_20188;
  if (!qword_20188)
  {
    sub_14C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20188);
  }

  return result;
}

uint64_t sub_2104(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_214C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_14668();
  *a1 = result;
  return result;
}

unint64_t sub_21A0()
{
  result = qword_201A0;
  if (!qword_201A0)
  {
    sub_2240(&qword_20198, &qword_152A8);
    sub_2288();
    sub_2838(&qword_201F0, &qword_201F8, &qword_152D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201A0);
  }

  return result;
}

uint64_t sub_2240(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2288()
{
  result = qword_201A8;
  if (!qword_201A8)
  {
    sub_2240(&qword_201B0, &qword_152B0);
    sub_2308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201A8);
  }

  return result;
}

unint64_t sub_2308()
{
  result = qword_201B8;
  if (!qword_201B8)
  {
    sub_2240(&qword_201C0, &qword_152B8);
    sub_2388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201B8);
  }

  return result;
}

unint64_t sub_2388()
{
  result = qword_201C8;
  if (!qword_201C8)
  {
    sub_2240(&qword_201D0, &qword_152C0);
    sub_2408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201C8);
  }

  return result;
}

unint64_t sub_2408()
{
  result = qword_201D8;
  if (!qword_201D8)
  {
    sub_2240(&qword_201E0, &qword_152C8);
    sub_2488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201D8);
  }

  return result;
}

unint64_t sub_2488()
{
  result = qword_201E8;
  if (!qword_201E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201E8);
  }

  return result;
}

uint64_t sub_24DC(uint64_t a1)
{
  v2 = sub_2104(&qword_20198, &qword_152A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2570()
{
  sub_2240(&qword_20198, &qword_152A8);
  sub_21A0();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_25C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25D4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_14688();
  *a1 = result;
  return result;
}

unint64_t sub_26D8()
{
  result = qword_20218;
  if (!qword_20218)
  {
    sub_2240(&qword_20210, &qword_15458);
    sub_2778();
    sub_2838(&qword_20240, &qword_20248, &qword_15B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20218);
  }

  return result;
}

unint64_t sub_2778()
{
  result = qword_20220;
  if (!qword_20220)
  {
    sub_2240(&qword_20208, &qword_15450);
    sub_2838(&qword_20228, &qword_20200, &qword_15448);
    sub_2838(&qword_20230, &qword_20238, qword_15460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20220);
  }

  return result;
}

uint64_t sub_2838(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2240(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2894(uint64_t a1, uint64_t a2, int *a3)
{
  sub_C284();
  v6 = sub_14328();
  v7 = sub_C1AC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 2147483646)
    {
      return sub_C1B8(*(v3 + a3[5]));
    }

    v12 = sub_14A68();
    v13 = sub_C1AC(v12);
    if (*(v14 + 84) == a2)
    {
      v9 = v13;
      v15 = a3[7];
    }

    else
    {
      v9 = sub_14B98();
      v15 = a3[8];
    }

    v10 = v3 + v15;
  }

  return sub_2990(v10, a2, v9);
}

uint64_t sub_29CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_C284();
  v8 = sub_14328();
  result = sub_C1AC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[5]) = a2;
      return result;
    }

    v13 = sub_14A68();
    v14 = sub_C1AC(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[7];
    }

    else
    {
      v11 = sub_14B98();
      v16 = a4[8];
    }

    v12 = v4 + v16;
  }

  return sub_2AD0(v12, a2, a2, v11);
}

void sub_2B18()
{
  sub_14328();
  if (v0 <= 0x3F)
  {
    sub_2BE4();
    if (v1 <= 0x3F)
    {
      sub_2C60();
      if (v2 <= 0x3F)
      {
        sub_14A68();
        if (v3 <= 0x3F)
        {
          sub_14B98();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2BE4()
{
  if (!qword_202B8)
  {
    sub_14C98();
    sub_BCEC(&qword_20188, &type metadata accessor for Context);
    v0 = sub_14648();
    if (!v1)
    {
      atomic_store(v0, &qword_202B8);
    }
  }
}

void sub_2C60()
{
  if (!qword_202C0)
  {
    v0 = sub_14978();
    if (!v1)
    {
      atomic_store(v0, &qword_202C0);
    }
  }
}

uint64_t sub_2CC4(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    return sub_C1B8(*a1);
  }

  v7 = sub_14328();
  v8 = sub_C1AC(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[5];
  }

  else
  {
    v12 = sub_14A68();
    v13 = sub_C1AC(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[6];
    }

    else
    {
      v10 = sub_14B98();
      v11 = a3[7];
    }
  }

  return sub_2990(a1 + v11, a2, v10);
}

void *sub_2DD4(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_14328();
    v9 = sub_C1AC(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_14A68();
      v14 = sub_C1AC(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = sub_14B98();
        v12 = a4[7];
      }
    }

    return sub_2AD0(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2EF8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2F30()
{
  sub_2BE4();
  if (v0 <= 0x3F)
  {
    sub_14328();
    if (v1 <= 0x3F)
    {
      sub_14A68();
      if (v2 <= 0x3F)
      {
        sub_14B98();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_3000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_B80C(*a1, a2, &qword_205A0, &qword_15750);
  v4 = sub_2104(&qword_20618, &qword_157B0);
  sub_B80C(a1[1], a2 + v4[12], &qword_205B0, &qword_15758);
  sub_B80C(a1[2], a2 + v4[16], &qword_205C0, &qword_15768);
  sub_B80C(a1[3], a2 + v4[20], &qword_205C8, &qword_15770);
  sub_B80C(a1[4], a2 + v4[24], &qword_205C0, &qword_15768);
  sub_B80C(a1[5], a2 + v4[28], &qword_205D0, &qword_15778);
  return sub_B80C(a1[6], a2 + v4[32], &qword_205D8, &qword_15780);
}

uint64_t sub_3128@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_14048();
  v22 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_14068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(type metadata accessor for SiriHelpSnippetView(0) + 20);
  v21[1] = sub_14288();
  (*(v3 + 104))(v7, enum case for ImageElement.ImageStyle.default(_:), v2);
  sub_2104(&qword_20640, &qword_157D0);
  v15 = sub_14038();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_15480;
  (*(v16 + 104))(v19 + v18, enum case for _ProtoIdiom.default(_:), v15);
  sub_A934(v19);
  sub_14058();

  (*(v3 + 8))(v7, v22);
  sub_14108();
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_33E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for SiriHelpSnippetView(0);
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  __chkstk_darwin(v3 - 8, v5);
  v48 = v6;
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_141F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v12 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_141E8();
  if (!v14)
  {
    v13 = sub_141A8();
  }

  v15 = v13;
  v16 = v14;
  v50 = sub_2104(&qword_20628, &qword_157C0);
  v52 = &v40;
  v51 = *(v50 - 8);
  v17 = *(v51 + 64);
  __chkstk_darwin(v50, v18);
  v45 = &v40 - v19;
  v43 = sub_2104(&qword_20630, &qword_157C8);
  v46 = &v40;
  v44 = *(v43 - 8);
  v20 = *(v44 + 64);
  __chkstk_darwin(v43, v21);
  v40 = &v40 - v22;
  v23 = sub_14C18();
  v42 = &v40;
  v41 = *(v23 - 8);
  v24 = *(v41 + 64);
  __chkstk_darwin(v23, v25);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = &type metadata for String;
  v69 = &protocol witness table for String;
  v66 = v15;
  v67 = v16;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0;
  v58 = 0u;
  v57 = 0u;
  v56 = 0;
  v55 = 0u;
  v54 = 0u;
  sub_14C08();
  (*(v9 + 16))(&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_B4C4(v49, v7);
  v28 = *(v9 + 80);
  v49 = a1;
  v29 = v7;
  v30 = (v28 + 16) & ~v28;
  v31 = (v10 + *(v47 + 80) + v30) & ~*(v47 + 80);
  v32 = swift_allocObject();
  (*(v9 + 32))(v32 + v30, v12, v8);
  sub_B520(v29, v32 + v31);
  v33 = sub_BCEC(&qword_20638, &type metadata accessor for SimpleItemReverseRichView);
  v34 = v40;
  sub_148D8();

  (*(v41 + 8))(v27, v23);
  v66 = v23;
  v67 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v45;
  v37 = v43;
  sub_14878();
  (*(v44 + 8))(v34, v37);
  sub_141B8();
  v66 = v37;
  v67 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v38 = v50;
  sub_14858();

  return (*(v51 + 8))(v36, v38);
}

void sub_39D0(uint64_t *a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_14508();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  __chkstk_darwin(v3, v5);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_14128();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_141F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_20180 != -1)
  {
    swift_once();
  }

  v18 = sub_14568();
  sub_1750(v18, static Logger.uiCategory);
  (*(v13 + 16))(v17, a1, v12);
  v19 = sub_14548();
  v20 = sub_14DA8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = v7;
    v24 = v23;
    v58 = v23;
    *v22 = 136315138;
    v25 = sub_141B8();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    (*(v13 + 8))(v17, v12);
    v29 = sub_D340(v27, v28, &v58);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_0, v19, v20, "SiriHelp Component was tapped for suggestionID: %s", v22, 0xCu);
    sub_206C(v24);
    v7 = v51;
  }

  else
  {

    (*(v13 + 8))(v17, v12);
  }

  (*(v8 + 104))(v53, enum case for Command.noOp(_:), v7);
  v30 = sub_14AA8();
  v52 = &v51;
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30, v32);
  (*(v34 + 104))(&v51 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for InteractionType.buttonTapped(_:));
  v35 = sub_2104(&qword_20570, &qword_15730);
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35 - 8, v37);
  v39 = &v51 - v38;
  sub_14A78();
  v40 = sub_14A88();
  sub_2AD0(v39, 0, 1, v40);
  v41 = v54;
  v42 = v55;
  v43 = v56;
  (*(v55 + 104))(v54, enum case for DeliveryVehicle.siriHelp(_:), v56);
  v44._countAndFlagsBits = sub_141B8();
  if (v44._object)
  {
    object = v44._object;
  }

  else
  {
    v44._countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v44._object = object;
  sub_144F8(v44);

  (*(v42 + 8))(v41, v43);
  v46 = objc_allocWithZone(sub_14BE8());
  v47 = sub_14BD8();
  if (*v57)
  {
    v48 = v47;
    v49 = *v57;
    sub_14C88();
  }

  else
  {
    v50 = *(v57 + 8);
    sub_14C98();
    sub_BCEC(&qword_20188, &type metadata accessor for Context);
    sub_14628();
    __break(1u);
  }
}

uint64_t sub_3F90()
{
  v2 = type metadata accessor for SiriHelpSnippetView(0);
  v3 = sub_C154(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_C23C();
  sub_B4C4(v0, v1);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_C290(v10);
  sub_2104(&qword_20580, &qword_15738);
  sub_2838(&qword_20588, &qword_20580, &qword_15738);
  return sub_14A98();
}

uint64_t sub_40C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v287 = a2;
  v3 = type metadata accessor for SiriHelpSnippetView(0);
  v4 = v3 - 8;
  v293 = *(v3 - 8);
  v297 = *(v293 + 8);
  __chkstk_darwin(v3, v5);
  v298 = (&v259 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_140F8();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v290 = &v259 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2104(&qword_20590, &qword_15740);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v295 = &v259 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v289 = &v259 - v17;
  v18 = sub_2104(&qword_20598, &qword_15748);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v22 = &v259 - v21;
  v23 = sub_14078();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v28 = (&v259 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_14098();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8, v31);
  v291 = &v259 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2104(&qword_205A0, &qword_15750);
  v34 = *(v33 - 8);
  v288 = (v33 - 8);
  v286 = *(v34 + 64);
  __chkstk_darwin(v33 - 8, v35);
  v37 = &v259 - v36;
  v292 = sub_14AE8();
  v294 = *(v292 - 1);
  v38 = *(v294 + 8);
  __chkstk_darwin(v292, v39);
  v41 = &v259 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = *(v4 + 28);
  *v28 = sub_14238();
  v28[1] = v42;
  (*(v24 + 104))(v28, enum case for SashStandard.Title.text(_:), v23);
  sub_3128(v22);
  v43 = sub_140D8();
  sub_2AD0(v22, 0, 1, v43);
  v44 = sub_14118();
  sub_2AD0(v289, 1, 1, v44);
  sub_2AD0(v295, 1, 1, v44);
  v313 = 0;
  v311 = 0u;
  v312 = 0u;
  sub_14288();
  sub_14088();
  sub_14AD8();
  sub_BCEC(&qword_205A8, &type metadata accessor for SashStandardView);
  v45 = v292;
  sub_14858();
  v46 = a1;
  (*(v294 + 1))(v41, v45);
  v47 = *(v288 + 15);
  v295 = v37;
  v48 = &v37[v47];
  strcpy(v48, "Response_sash");
  *(v48 + 7) = -4864;
  v49 = sub_2104(&qword_205B0, &qword_15758);
  v50 = *(*(v49 - 8) + 64);
  v52 = __chkstk_darwin(v49, v51);
  v284 = v53;
  v54 = (&v259 - v53);
  v55 = v52;
  v56 = sub_142C8();
  *(&v312 + 1) = &type metadata for String;
  v313 = &protocol witness table for String;
  *&v311 = v56;
  *(&v311 + 1) = v57;
  v318 = 0;
  v316 = 0u;
  v317 = 0u;
  sub_140E8();
  sub_14C58();
  v58 = sub_14798();
  KeyPath = swift_getKeyPath();
  v280 = sub_2104(&qword_205B8, &qword_15760);
  v60 = &v54[*(v280 + 9)];
  *v60 = KeyPath;
  v60[1] = v58;
  v288 = v55;
  v61 = *(v55 + 52);
  v294 = v54;
  v62 = &v54[v61];
  strcpy(v62, "Response-tag");
  v62[13] = 0;
  *(v62 + 7) = -5120;
  v63 = sub_2104(&qword_205C0, &qword_15768);
  v292 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63, v64);
  v66 = &v259 - v65;
  v67 = v298;
  sub_B4C4(v46, v298);
  v68 = (v293[80] + 16) & ~v293[80];
  v289 = v293[80];
  v69 = swift_allocObject() + v68;
  v70 = v67;
  v71 = v63;
  sub_B520(v70, v69);
  v72 = sub_2104(&qword_20408, &qword_155E8);
  v73 = sub_A81C();
  v283 = v72;
  v281 = v73;
  sub_14A98();
  v74 = *(v63 + 52);
  v293 = v66;
  v75 = &v66[v74];
  strcpy(v75, "Response_full");
  *(v75 + 7) = -4864;
  v76 = sub_2104(&qword_205C8, &qword_15770);
  v282 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76 - 8, v77);
  v79 = &v259 - v78;
  v80 = v46;
  v81 = *(sub_14258() + 16);

  v285 = v50;
  v291 = v79;
  if (v81)
  {
    __chkstk_darwin(v82, v83);
    v84 = v79;
    v85 = (&v259 - v284);
    v86 = sub_14278();
    *(&v312 + 1) = &type metadata for String;
    v313 = &protocol witness table for String;
    *&v311 = v86;
    *(&v311 + 1) = v87;
    v318 = 0;
    v316 = 0u;
    v317 = 0u;
    sub_140E8();
    sub_14C58();
    v88 = sub_14798();
    v89 = swift_getKeyPath();
    v90 = &v85[*(v280 + 9)];
    *v90 = v89;
    v90[1] = v88;
    v91 = v288;
    v92 = &v85[*(v288 + 13)];
    *v92 = 0xD000000000000013;
    *(v92 + 1) = 0x80000000000175D0;
    sub_B768(v85, v84);
    v93 = sub_2AD0(v84, 0, 1, v91);
  }

  else
  {
    v93 = sub_2AD0(v79, 1, 1, v288);
  }

  v284 = &v259;
  v277 = ~v289;
  __chkstk_darwin(v93, v94);
  v96 = &v259 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v298;
  sub_B4C4(v46, v298);
  v98 = swift_allocObject();
  sub_B520(v97, v98 + v68);
  sub_14A98();
  v99 = *(v71 + 52);
  v281 = v96;
  v100 = &v96[v99];
  strcpy(v100, "Response_full2");
  v100[15] = -18;
  v101 = sub_2104(&qword_205D0, &qword_15778);
  v283 = &v259;
  v102 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101 - 8, v103);
  v105 = &v259 - v104;
  sub_14228();
  v290 = v105;
  if (v106)
  {

    v288 = sub_2104(&qword_205D8, &qword_15780);
    v107 = (*(*(v288 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v288, v108);
    v110 = &v259 - v109;
    sub_14228();
    if (v111)
    {
      v280 = &v259;
      v112 = sub_2104(&qword_205E0, &qword_15788);
      v279 = &v259;
      v276 = v112;
      v113 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v112, v114);
      v116 = &v259 - v115;
      v275 = sub_13FD8();
      v118 = v117;

      v119 = sub_2104(&qword_205E8, &qword_15790);
      v121 = v119;
      if (v118 >> 60 == 15)
      {
        sub_2AD0(v116, 1, 1, v119);
      }

      else
      {
        v274 = &v259;
        v124 = *(*(v119 - 8) + 64);
        __chkstk_darwin(v119, v120);
        v273 = &v259 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_B484(0, &qword_20578, SAIntentGroupRunSiriKitExecutor_ptr);
        v126 = v275;
        sub_B16C(v275, v118);
        v127 = sub_67F0(v126, v118);
        if (v127)
        {
          v262 = v127;
          v269 = sub_2104(&qword_205F0, &qword_15798);
          v270 = &v259;
          v128 = (*(*(v269 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(v269, v129);
          v267 = (&v259 - v130);
          v131 = sub_2104(&qword_205F8, &qword_157A0);
          v268 = &v259;
          v132 = *(v131 - 8);
          v265 = v131;
          v266 = v132;
          v133 = *(v132 + 64);
          __chkstk_darwin(v131, v134);
          v263 = &v259 - v135;
          v136 = sub_2104(&qword_20600, &qword_157A8);
          v264 = &v259;
          v260 = v136;
          v137 = (*(*(v136 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(v136, v138);
          v140 = &v259 - v139;
          *&v311 = sub_14318();
          *(&v311 + 1) = v141;
          sub_A8E0();
          v142 = sub_14818();
          v271 = v121;
          v272 = v80;
          v144 = v143;
          v278 = v102;
          v146 = v145;
          v148 = v147;
          *(&v312 + 1) = &type metadata for Text;
          v313 = &protocol witness table for Text;
          v149 = swift_allocObject();
          *&v311 = v149;
          *(v149 + 16) = v142;
          *(v149 + 24) = v144;
          *(v149 + 32) = v146 & 1;
          *(v149 + 40) = v148;
          v318 = 0;
          v316 = 0u;
          v317 = 0u;
          v310 = 0;
          v308 = 0u;
          v309 = 0u;
          v307 = 0;
          v305 = 0u;
          v306 = 0u;
          v304 = 0;
          v302 = 0u;
          v303 = 0u;
          v301 = 0;
          v299 = 0u;
          v300 = 0u;
          sub_14BF8();
          v150 = sub_147E8();
          v151 = swift_getKeyPath();
          v152 = &v140[*(v136 + 36)];
          *v152 = v151;
          v152[1] = v150;
          v153 = v298;
          sub_B4C4(v272, v298);
          v154 = (v289 + 24) & v277;
          v155 = swift_allocObject();
          v156 = v262;
          *(v155 + 16) = v262;
          sub_B520(v153, v155 + v154);
          v157 = sub_BA6C();
          v158 = v156;
          v261 = v118;
          v262 = v158;
          v159 = v263;
          v160 = v260;
          sub_14868();
          v80 = v272;

          sub_B858(v140, &qword_20600, &qword_157A8);
          *&v311 = v160;
          *(&v311 + 1) = v157;
          v102 = v278;
          swift_getOpaqueTypeConformance2();
          v161 = v267;
          v162 = v265;
          sub_14858();
          (*(v266 + 8))(v159, v162);
          sub_AD60(v275, v261);

          v121 = v271;
          v163 = v269;
          v164 = (v161 + *(v269 + 13));
          *v164 = 0xD000000000000018;
          v164[1] = 0x80000000000175F0;
          v165 = v273;
          sub_BB24(v161, v273, &qword_205F0, &qword_15798);
          sub_2AD0(v165, 0, 1, v163);
        }

        else
        {
          sub_AD60(v275, v118);
          v166 = sub_2104(&qword_205F0, &qword_15798);
          v165 = v273;
          sub_2AD0(v273, 1, 1, v166);
        }

        sub_BB24(v165, v116, &qword_205E8, &qword_15790);
        sub_2AD0(v116, 0, 1, v121);
      }

      sub_BB24(v116, v110, &qword_205E0, &qword_15788);
      sub_2AD0(v110, 0, 1, v276);
      v105 = v290;
    }

    else
    {
      v123 = sub_2104(&qword_205E0, &qword_15788);
      sub_2AD0(v110, 1, 1, v123);
    }

    sub_BB24(v110, v105, &qword_205D8, &qword_15780);
    sub_2AD0(v105, 0, 1, v288);
  }

  else
  {
    v122 = sub_2104(&qword_205D8, &qword_15780);
    sub_2AD0(v105, 1, 1, v122);
  }

  v167 = sub_2104(&qword_205D8, &qword_15780);
  v280 = &v259;
  v279 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167 - 8, v168);
  v170 = &v259 - v169;
  sub_142E8();
  v288 = v170;
  if (v171)
  {
    v278 = v102;

    v276 = sub_2104(&qword_205E0, &qword_15788);
    v172 = (*(*(v276 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v276, v173);
    v175 = &v259 - v174;
    sub_142E8();
    if (v176)
    {
      v275 = &v259;
      v273 = sub_2104(&qword_205E8, &qword_15790);
      v274 = &v259;
      v177 = (*(*(v273 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v273, v178);
      v180 = &v259 - v179;
      v181 = sub_13FD8();
      v183 = v182;

      if (v183 >> 60 == 15)
      {
        v184 = sub_2104(&qword_205F0, &qword_15798);
        sub_2AD0(v180, 1, 1, v184);
        v185 = v285;
        v186 = v292;
      }

      else
      {
        v270 = sub_2104(&qword_205F0, &qword_15798);
        v271 = &v259;
        v192 = (*(*(v270 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v270, v193);
        v268 = &v259 - v194;
        v195 = sub_2104(&qword_205F8, &qword_157A0);
        v269 = &v259;
        v196 = *(v195 - 8);
        v266 = v195;
        v267 = v196;
        v197 = v196[8];
        __chkstk_darwin(v195, v198);
        v263 = &v259 - v199;
        v200 = sub_2104(&qword_20600, &qword_157A8);
        v272 = v183;
        v264 = &v259;
        v265 = v180;
        v201 = v200;
        v262 = v200;
        v202 = (*(*(v200 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v200, v203);
        v205 = &v259 - v204;
        v206 = v80;
        *&v311 = sub_142B8();
        *(&v311 + 1) = v207;
        sub_A8E0();
        v208 = sub_14818();
        v210 = v209;
        v212 = v211;
        v214 = v213;
        *(&v312 + 1) = &type metadata for Text;
        v313 = &protocol witness table for Text;
        v215 = swift_allocObject();
        *&v311 = v215;
        *(v215 + 16) = v208;
        *(v215 + 24) = v210;
        *(v215 + 32) = v212 & 1;
        *(v215 + 40) = v214;
        v318 = 0;
        v316 = 0u;
        v317 = 0u;
        v310 = 0;
        v308 = 0u;
        v309 = 0u;
        v307 = 0;
        v305 = 0u;
        v306 = 0u;
        v304 = 0;
        v302 = 0u;
        v303 = 0u;
        v301 = 0;
        v299 = 0u;
        v300 = 0u;
        sub_14BF8();
        v216 = sub_147E8();
        v217 = swift_getKeyPath();
        v218 = &v205[v201[9]];
        *v218 = v217;
        v218[1] = v216;
        v219 = v298;
        sub_B4C4(v206, v298);
        v220 = (v289 + 32) & v277;
        v221 = swift_allocObject();
        v222 = v181;
        v223 = v272;
        *(v221 + 16) = v181;
        *(v221 + 24) = v223;
        v224 = v221 + v220;
        v225 = v219;
        v170 = v288;
        sub_B520(v225, v224);
        sub_B16C(v181, v223);
        v226 = sub_BA6C();
        v228 = v262;
        v227 = v263;
        sub_14868();

        sub_B858(v205, &qword_20600, &qword_157A8);
        v180 = v265;
        *&v311 = v228;
        *(&v311 + 1) = v226;
        v186 = v292;
        swift_getOpaqueTypeConformance2();
        v229 = v268;
        v230 = v266;
        sub_14858();
        v267[1](v227, v230);
        sub_AD60(v222, v272);
        v231 = v270;
        v232 = (v229 + *(v270 + 13));
        *v232 = 0xD000000000000019;
        v232[1] = 0x8000000000017590;
        sub_BB24(v229, v180, &qword_205F0, &qword_15798);
        sub_2AD0(v180, 0, 1, v231);
        v185 = v285;
      }

      sub_BB24(v180, v175, &qword_205E8, &qword_15790);
      sub_2AD0(v175, 0, 1, v273);
    }

    else
    {
      v191 = sub_2104(&qword_205E8, &qword_15790);
      sub_2AD0(v175, 1, 1, v191);
      v185 = v285;
      v186 = v292;
    }

    sub_BB24(v175, v170, &qword_205E0, &qword_15788);
    v188 = sub_2AD0(v170, 0, 1, v276);
    v190 = v278;
  }

  else
  {
    v187 = sub_2104(&qword_205E0, &qword_15788);
    v188 = sub_2AD0(v170, 1, 1, v187);
    v185 = v285;
    v186 = v292;
    v190 = v102;
  }

  v298 = &v259;
  __chkstk_darwin(v188, v189);
  v234 = &v259 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = v234;
  v235 = sub_B80C(v295, v234, &qword_205A0, &qword_15750);
  v297 = &v259;
  *&v311 = v234;
  __chkstk_darwin(v235, v236);
  v237 = &v259 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = v237;
  v238 = sub_B80C(v294, v237, &qword_205B0, &qword_15758);
  v289 = &v259;
  *(&v311 + 1) = v237;
  __chkstk_darwin(v238, v239);
  v240 = (v186 + 15) & 0xFFFFFFFFFFFFFFF0;
  v277 = &v259 - v240;
  v241 = sub_B80C(v293, &v259 - v240, &qword_205C0, &qword_15768);
  v285 = &v259;
  *&v312 = &v259 - v240;
  __chkstk_darwin(v241, v242);
  v244 = &v259 - ((v243 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_B80C(v291, v244, &qword_205C8, &qword_15770);
  v282 = &v259;
  *(&v312 + 1) = v244;
  __chkstk_darwin(v245, v246);
  v247 = &v259 - v240;
  v248 = v281;
  v249 = sub_B80C(v281, &v259 - v240, &qword_205C0, &qword_15768);
  v292 = &v259;
  v313 = &v259 - v240;
  __chkstk_darwin(v249, v250);
  v251 = &v259 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = v290;
  v253 = sub_B80C(v290, v251, &qword_205D0, &qword_15778);
  v278 = &v259;
  v314 = v251;
  __chkstk_darwin(v253, v254);
  v256 = &v259 - ((v255 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = v288;
  sub_B80C(v288, v256, &qword_205D8, &qword_15780);
  v315 = v256;
  sub_3000(&v311, v287);
  sub_B858(v257, &qword_205D8, &qword_15780);
  sub_B858(v252, &qword_205D0, &qword_15778);
  sub_B858(v248, &qword_205C0, &qword_15768);
  sub_B858(v291, &qword_205C8, &qword_15770);
  sub_B858(v293, &qword_205C0, &qword_15768);
  sub_B858(v294, &qword_205B0, &qword_15758);
  sub_B858(v295, &qword_205A0, &qword_15750);
  sub_B858(v256, &qword_205D8, &qword_15780);
  sub_B858(v251, &qword_205D0, &qword_15778);
  sub_B858(v247, &qword_205C0, &qword_15768);
  sub_B858(v244, &qword_205C8, &qword_15770);
  sub_B858(v277, &qword_205C0, &qword_15768);
  sub_B858(v286, &qword_205B0, &qword_15758);
  return sub_B858(v296, &qword_205A0, &qword_15750);
}

uint64_t sub_5C18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_141C8();
}

uint64_t sub_5C58(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for SiriHelpSnippetView(0);
  v5 = sub_C154(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = *(__chkstk_darwin(v5, v10) + 28);
  v15[1] = a2();
  swift_getKeyPath();
  sub_B4C4(a1, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_B520(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_2104(&qword_20410, &qword_15620);
  sub_A634();
  sub_A698();
  return sub_149A8();
}

void sub_5DF0()
{
  sub_C2B0();
  v2 = v1;
  v4 = v3;
  v5 = sub_2104(&qword_20620, &qword_157B8);
  v6 = sub_C164(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  v13 = &v21 - v12;
  sub_33E4(v2, &v21 - v12);
  v14 = sub_2240(&qword_20628, &qword_157C0);
  v15 = sub_2240(&qword_20630, &qword_157C8);
  v16 = sub_14C18();
  v17 = sub_BCEC(&qword_20638, &type metadata accessor for SimpleItemReverseRichView);
  v21 = v16;
  v22 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v15;
  v22 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v21 = v14;
  v22 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = sub_14828();
  (*(v8 + 8))(v13, v0);
  *v4 = v20;
  sub_C2C4();
}

uint64_t sub_5F7C(void *a1, uint64_t a2)
{
  v4 = sub_2104(&qword_20528, &qword_156F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v33 - v7;
  v9 = sub_140A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2104(&qword_20538, &qword_15700);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_15480;
  v16 = sub_14128();
  *(v15 + 56) = v16;
  *(v15 + 64) = &protocol witness table for Command;
  v17 = sub_B1C4((v15 + 32));
  *v17 = a1;
  *(v17 + 8) = 1;
  (*(*(v16 - 8) + 104))();
  v18 = a1;
  sub_140B8();
  v19 = sub_2104(&qword_20540, &qword_15708);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8, v21);
  v23 = &v33 - v22;
  v24 = a2 + *(type metadata accessor for SiriHelpSnippetView(0) + 24);
  sub_14A48();
  v25 = sub_14BC8();
  if (sub_2990(v23, 1, v25) == 1)
  {
    (*(v10 + 8))(v14, v9);
    return sub_B858(v23, &qword_20540, &qword_15708);
  }

  else
  {
    (*(v10 + 16))(v8, v14, v9);
    sub_2AD0(v8, 0, 1, v9);
    v27 = sub_2104(&qword_20548, &qword_15710);
    v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v27 - 8, v29);
    v31 = &v33 - v30;
    v32 = sub_14AA8();
    sub_2AD0(v31, 1, 1, v32);
    sub_14BB8();
    sub_B858(v31, &qword_20548, &qword_15710);
    sub_B858(v8, &qword_20528, &qword_156F8);
    (*(v10 + 8))(v14, v9);
    return (*(*(v25 - 8) + 8))(v23, v25);
  }
}

id sub_6334(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_2104(&qword_20528, &qword_156F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v42 - v9;
  v45 = sub_140A8();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v45, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_14128();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B484(0, &qword_20530, SAUIAppPunchOut_ptr);
  sub_B16C(a1, a2);
  result = sub_67F0(a1, a2);
  if (result)
  {
    *v21 = result;
    v21[8] = 0;
    (*(v17 + 104))(v21, enum case for Command.aceCommand(_:), v16);
    sub_2104(&qword_20538, &qword_15700);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_15480;
    *(v23 + 56) = v16;
    *(v23 + 64) = &protocol witness table for Command;
    v24 = sub_B1C4((v23 + 32));
    (*(v17 + 16))(v24, v21, v16);
    sub_140B8();
    v25 = sub_2104(&qword_20540, &qword_15708);
    v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v25 - 8, v27);
    v29 = &v42 - v28;
    v30 = a3 + *(type metadata accessor for SiriHelpSnippetView(0) + 24);
    sub_14A48();
    v31 = sub_14BC8();
    if (sub_2990(v29, 1, v31) == 1)
    {
      (*(v11 + 8))(v15, v45);
      (*(v17 + 8))(v21, v16);
      return sub_B858(v29, &qword_20540, &qword_15708);
    }

    else
    {
      v32 = *(v11 + 16);
      v33 = v15;
      v43 = v15;
      v34 = v11;
      v35 = v45;
      v32(v10, v33, v45);
      sub_2AD0(v10, 0, 1, v35);
      v36 = sub_2104(&qword_20548, &qword_15710);
      v42 = &v42;
      v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v36 - 8, v38);
      v44 = &v42;
      v40 = &v42 - v39;
      v41 = sub_14AA8();
      sub_2AD0(v40, 1, 1, v41);
      sub_14BB8();
      sub_B858(v40, &qword_20548, &qword_15710);
      sub_B858(v10, &qword_20528, &qword_156F8);
      (*(v34 + 8))(v43, v35);
      (*(v17 + 8))(v21, v16);
      return (*(*(v31 - 8) + 8))(v29, v31);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_67F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_13FE8().super.isa;
    sub_AD60(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() aceObjectWithPlistData:isa];

  return v5;
}

uint64_t sub_6890@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = type metadata accessor for SiriHelpSMARTView(0);
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  __chkstk_darwin(v5 - 8, v7);
  v59 = v8;
  v61 = &OpaqueTypeConformance2 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_141F8();
  v51 = *(v57 - 8);
  v9 = *(v51 + 64);
  __chkstk_darwin(v57, v10);
  v54 = v11;
  v56 = &OpaqueTypeConformance2 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  v50 = a1;
  if ((a2 & 1) != 0 || (v12 = sub_141E8(), !v13))
  {
    v12 = sub_141A8();
  }

  v14 = v12;
  v15 = v13;
  v16 = sub_2104(&qword_20558, &qword_15720);
  v55 = &OpaqueTypeConformance2;
  v17 = *(v16 - 8);
  v52 = v16;
  v53 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v48 = &OpaqueTypeConformance2 - v20;
  v64 = sub_2104(&qword_20560, &qword_15728);
  v49 = &OpaqueTypeConformance2;
  v21 = *(v64 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v64, v23);
  v25 = &OpaqueTypeConformance2 - v24;
  v26 = sub_14B48();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26, v29);
  v31 = &OpaqueTypeConformance2 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = &type metadata for String;
  v92 = &protocol witness table for String;
  v89 = v14;
  v90 = v15;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  sub_14B38();
  sub_147A8();
  v32 = sub_BCEC(&qword_20568, &type metadata accessor for SimpleItemRichView);
  sub_148B8();
  (*(v27 + 8))(v31, v26);
  v33 = v50;
  sub_141B8();
  v89 = v26;
  v90 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v64;
  sub_14858();

  (*(v21 + 8))(v25, v34);
  v35 = v51;
  v36 = v56;
  v37 = v33;
  v38 = v57;
  (*(v51 + 16))(v56, v37, v57);
  v39 = v61;
  sub_B4C4(v60, v61);
  v40 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v41 = v40 + v54;
  v42 = (*(v58 + 80) + v40 + v54 + 1) & ~*(v58 + 80);
  v43 = swift_allocObject();
  (*(v35 + 32))(v43 + v40, v36, v38);
  *(v43 + v41) = v62 & 1;
  sub_B520(v39, v43 + v42);
  v89 = v64;
  v90 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v44 = v52;
  v45 = v48;
  sub_14868();

  return (*(v53 + 8))(v45, v44);
}

void sub_6E50(uint64_t *a1, int a2, uint64_t a3)
{
  v74 = a3;
  v73 = a2;
  v4 = sub_14508();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  __chkstk_darwin(v4, v6);
  v70 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_14128();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v69 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_141F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_20180 != -1)
  {
    swift_once();
  }

  v19 = sub_14568();
  sub_1750(v19, static Logger.uiCategory);
  (*(v14 + 16))(v18, a1, v13);
  v20 = sub_14548();
  v21 = sub_14DA8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v68 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v67 = v8;
    v25 = v24;
    v75 = v24;
    *v23 = 136315138;
    v26 = sub_141B8();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    (*(v14 + 8))(v18, v13);
    v30 = sub_D340(v28, v29, &v75);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_0, v20, v21, "SiriHelp Component was tapped for suggestionID: %s", v23, 0xCu);
    sub_206C(v25);
    v8 = v67;
  }

  else
  {

    (*(v14 + 8))(v18, v13);
  }

  (*(v9 + 104))(v69, enum case for Command.noOp(_:), v8);
  v31 = sub_14AA8();
  v68 = &v66;
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31, v33);
  (*(v35 + 104))(&v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for InteractionType.buttonTapped(_:));
  v36 = sub_2104(&qword_20570, &qword_15730);
  v67 = &v66;
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - 8, v38);
  v40 = &v66 - v39;
  sub_14A78();
  v41 = sub_14A88();
  sub_2AD0(v40, 0, 1, v41);
  v43 = v70;
  v42 = v71;
  v44 = v72;
  (*(v71 + 104))(v70, enum case for DeliveryVehicle.siriHelp(_:), v72);
  v45._countAndFlagsBits = sub_141B8();
  if (v45._object)
  {
    object = v45._object;
  }

  else
  {
    v45._countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v45._object = object;
  sub_144F8(v45);

  (*(v42 + 8))(v43, v44);
  v47 = objc_allocWithZone(sub_14BE8());
  v48 = sub_14BD8();
  v49 = v74;
  if (v73)
  {
    sub_141D8();
    if (v50)
    {
      v51 = sub_13FD8();
      v53 = v52;

      if (v53 >> 60 != 15)
      {
        sub_B484(0, &qword_20578, SAIntentGroupRunSiriKitExecutor_ptr);
        sub_B16C(v51, v53);
        v54 = sub_67F0(v51, v53);
        if (v54)
        {
          v55 = v54;
          v56 = sub_14C48();
          v57 = *(v56 - 8);
          v58 = *(v57 + 64);
          __chkstk_darwin(v56, v59);
          v61 = &v66 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
          v62 = v49 + *(type metadata accessor for SiriHelpSMARTView(0) + 32);
          sub_14B78();
          sub_14C38();

          sub_AD60(v51, v53);
          (*(v57 + 8))(v61, v56);
        }

        else
        {
          sub_AD60(v51, v53);
        }
      }
    }
  }

  v63 = v49 + *(type metadata accessor for SiriHelpSMARTView(0) + 20);
  if (*v63)
  {
    v64 = *v63;
    sub_14C88();
  }

  else
  {
    v65 = *(v63 + 8);
    sub_14C98();
    sub_BCEC(&qword_20188, &type metadata accessor for Context);
    sub_14628();
    __break(1u);
  }
}

uint64_t sub_7584@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2104(&qword_204B8, &qword_15688);
  v3 = sub_C0CC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v16 - v7;
  v9 = sub_14248();
  sub_C0F0(v9, v10, &type metadata for String);
  v11 = sub_147F8();
  KeyPath = swift_getKeyPath();
  v13 = &v8[*(v2 + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  sub_ADD4();
  sub_C188();
  sub_14858();
  sub_B858(v8, &qword_204B8, &qword_15688);
  result = sub_2104(&qword_203F8, &qword_155E0);
  v15 = a1 + *(result + 52);
  strcpy(v15, "Response_sash");
  *(v15 + 14) = -4864;
  return result;
}

uint64_t sub_76B8()
{
  v0 = sub_2104(&qword_204B8, &qword_15688);
  v1 = sub_C0CC(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v13 - v5;
  v7 = sub_14308();
  sub_C0F0(v7, v8, &type metadata for String);
  v9 = sub_147F8();
  KeyPath = swift_getKeyPath();
  v11 = &v6[*(v0 + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  sub_ADD4();
  sub_C188();
  sub_14858();
  return sub_B858(v6, &qword_204B8, &qword_15688);
}

uint64_t sub_77AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2104(&qword_20550, &qword_15718);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - v8;
  v10 = sub_142A8();
  sub_6890(a1, v10 & 1, v9);
  v11 = sub_2240(&qword_20558, &qword_15720);
  v12 = sub_2240(&qword_20560, &qword_15728);
  v13 = sub_14B48();
  v14 = sub_BCEC(&qword_20568, &type metadata accessor for SimpleItemRichView);
  v19 = v13;
  v20 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v12;
  v20 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v19 = v11;
  v20 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_14828();
  result = (*(v5 + 8))(v9, v4);
  *a2 = v17;
  return result;
}

uint64_t sub_7958@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SiriHelpSMARTView(0);
  v90 = *(v4 - 8);
  v5 = *(v90 + 64);
  __chkstk_darwin(v4 - 8, v6);
  v7 = sub_140C8();
  v89 = *(v7 - 8);
  v8 = *(v89 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_14168();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  result = sub_142E8();
  if (v16 && (, result = sub_142E8(), v17) && (v18 = sub_13FD8(), v20 = v19, result = , v20 >> 60 != 15))
  {
    v86 = sub_2104(&qword_204D0, &qword_156C8);
    v87 = &v70;
    v85 = *(v86 - 8);
    v21 = *(v85 + 64);
    __chkstk_darwin(v86, v22);
    v83 = &v70 - v23;
    v81 = sub_2104(&qword_204D8, &qword_156D0);
    v84 = &v70;
    v82 = *(v81 - 8);
    v24 = *(v82 + 64);
    __chkstk_darwin(v81, v25);
    v79 = &v70 - v26;
    v77 = sub_2104(&qword_204E0, &qword_156D8);
    v80 = &v70;
    v78 = *(v77 - 8);
    v27 = *(v78 + 64);
    __chkstk_darwin(v77, v28);
    v88 = &v70 - v29;
    v72 = sub_14B08();
    v76 = &v70;
    v75 = *(v72 - 8);
    v30 = *(v75 + 64);
    __chkstk_darwin(v72, v31);
    v70 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v97 = sub_142B8();
    v98 = v33;
    sub_A8E0();
    v34 = sub_14818();
    v74 = v18;
    v36 = v35;
    v71 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v37;
    v73 = v20;
    v40 = v39;
    v99 = &type metadata for Text;
    v100 = &protocol witness table for Text;
    v41 = swift_allocObject();
    v97 = v41;
    *(v41 + 16) = v34;
    *(v41 + 24) = v36;
    *(v41 + 32) = v38 & 1;
    *(v41 + 40) = v40;
    v96 = 0;
    v94 = 0u;
    v95 = 0u;
    v42 = sub_2104(&qword_204E8, &qword_156E0);
    v43 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v42, v44);
    v46 = &v70 - v45;
    sub_14158();
    sub_14A38();
    *&v46[*(v42 + 36)] = sub_14738();
    sub_AF4C();
    v47 = sub_14828();
    sub_B858(v46, &qword_204E8, &qword_156E0);
    v92 = &type metadata for AnyView;
    v93 = &protocol witness table for AnyView;
    v91 = v47;
    v48 = v70;
    sub_14AF8();
    v49 = v89;
    (*(v89 + 104))(v11, enum case for SeparatorStyle.remove(_:), v7);
    v50 = sub_BCEC(&qword_20510, &type metadata accessor for ReferenceRichView);
    v51 = v72;
    sub_14848();
    (*(v49 + 8))(v11, v7);
    v52 = v51;
    (*(v75 + 8))(v48, v51);
    v53 = v2;
    v54 = v71;
    sub_B4C4(v53, v71);
    v55 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v56 = swift_allocObject();
    v57 = v74;
    v58 = v73;
    *(v56 + 16) = v74;
    *(v56 + 24) = v58;
    sub_B520(v54, v56 + v55);
    sub_B16C(v57, v58);
    v97 = v52;
    v98 = v50;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v60 = v79;
    v61 = v77;
    v62 = v88;
    sub_14868();

    (*(v78 + 8))(v62, v61);
    v97 = v61;
    v98 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v63 = v83;
    v64 = v81;
    sub_14858();
    (*(v82 + 8))(v60, v64);
    sub_AD60(v57, v58);
    v65 = sub_2104(&qword_20518, &qword_156F0);
    *(a1 + 24) = v65;
    *(a1 + 32) = sub_2838(&qword_20520, &qword_20518, &qword_156F0);
    v66 = sub_B1C4(a1);
    v67 = v85;
    v68 = v86;
    (*(v85 + 16))(v66, v63, v86);
    v69 = (v66 + *(v65 + 52));
    *v69 = 0xD000000000000019;
    v69[1] = 0x8000000000017590;
    return (*(v67 + 8))(v63, v68);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id sub_8230(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_2104(&qword_20528, &qword_156F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v42 - v9;
  v45 = sub_140A8();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v45, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_14128();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B484(0, &qword_20530, SAUIAppPunchOut_ptr);
  sub_B16C(a1, a2);
  result = sub_67F0(a1, a2);
  if (result)
  {
    *v21 = result;
    v21[8] = 1;
    (*(v17 + 104))(v21, enum case for Command.aceCommand(_:), v16);
    sub_2104(&qword_20538, &qword_15700);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_15480;
    *(v23 + 56) = v16;
    *(v23 + 64) = &protocol witness table for Command;
    v24 = sub_B1C4((v23 + 32));
    (*(v17 + 16))(v24, v21, v16);
    sub_140B8();
    v25 = sub_2104(&qword_20540, &qword_15708);
    v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v25 - 8, v27);
    v29 = &v42 - v28;
    v30 = a3 + *(type metadata accessor for SiriHelpSMARTView(0) + 28);
    sub_14A48();
    v31 = sub_14BC8();
    if (sub_2990(v29, 1, v31) == 1)
    {
      (*(v11 + 8))(v15, v45);
      (*(v17 + 8))(v21, v16);
      return sub_B858(v29, &qword_20540, &qword_15708);
    }

    else
    {
      v32 = *(v11 + 16);
      v33 = v15;
      v43 = v15;
      v34 = v11;
      v35 = v45;
      v32(v10, v33, v45);
      sub_2AD0(v10, 0, 1, v35);
      v36 = sub_2104(&qword_20548, &qword_15710);
      v42 = &v42;
      v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v36 - 8, v38);
      v44 = &v42;
      v40 = &v42 - v39;
      v41 = sub_14AA8();
      sub_2AD0(v40, 1, 1, v41);
      sub_14BB8();
      sub_B858(v40, &qword_20548, &qword_15710);
      sub_B858(v10, &qword_20528, &qword_156F8);
      (*(v34 + 8))(v43, v35);
      (*(v17 + 8))(v21, v16);
      return (*(*(v31 - 8) + 8))(v29, v31);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_86F0()
{
  v2 = type metadata accessor for SiriHelpSMARTView(0);
  v3 = sub_C154(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_C23C();
  sub_B4C4(v0, v1);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_C290(v10);
  sub_2104(&qword_20398, &qword_155A8);
  sub_A364();
  return sub_14A98();
}

uint64_t sub_8808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_140C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SiriHelpSMARTView(0);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v14 = a1 + *(__chkstk_darwin(v10 - 8, v13) + 32);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v168) = v15;
  v169 = v16;
  sub_2104(&qword_203E8, &qword_155D0);
  sub_14958();
  v163 = a2;
  if (v165 == 1)
  {
    v158 = sub_2104(&qword_20470, &qword_15660);
    v162 = &v147;
    v164 = *(v158 - 1);
    v17 = v164[8];
    __chkstk_darwin(v158, v18);
    v153 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v160 = (&v147 - v153);
    sub_76B8();
    v19 = sub_2104(&qword_20478, &qword_15668);
    v156 = &v147;
    v157 = v19;
    v161 = *(v19 - 8);
    v20 = v161[8];
    __chkstk_darwin(v19, v21);
    v152 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v159 = (&v147 - v152);
    v22 = sub_2104(&qword_20480, &qword_15670);
    v155 = &v147;
    v23 = *(v22 - 8);
    v24 = *(v23 + 64);
    __chkstk_darwin(v22, v25);
    v26 = v11;
    v28 = &v147 - v27;
    v168 = sub_14268();
    v169 = v29;
    sub_B4C4(a1, &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v31 = swift_allocObject();
    sub_B520(&v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
    sub_A8E0();
    sub_14998();
    sub_2838(&qword_20490, &qword_20480, &qword_15670);
    v32 = v159;
    sub_14888();
    (*(v23 + 8))(v28, v22);
    v150 = sub_2104(&qword_203C0, &qword_155B8);
    v155 = &v147;
    v33 = (*(*(v150 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v35 = __chkstk_darwin(v150, v34);
    v37 = &v147 - v36;
    v154 = &v147;
    __chkstk_darwin(v35, v38);
    v39 = (&v147 - v153);
    v40 = v164[2];
    v41 = v158;
    v42 = v40(&v147 - v153, v160, v158);
    v153 = &v147;
    __chkstk_darwin(v42, v43);
    v44 = (&v147 - v152);
    v45 = v161;
    v46 = v161[2];
    v47 = v32;
    v48 = v157;
    v46(&v147 - v152, v47, v157);
    v40(v37, v39, v41);
    v49 = &v37[*(sub_2104(&qword_20498, &qword_15678) + 48)];
    v147 = v37;
    v46(v49, v44, v48);
    v149 = v45[1];
    v161 = v45 + 1;
    v149(v44, v48);
    v50 = v164[1];
    ++v164;
    v152 = v50;
    (v50)(v39, v41);
    v148 = sub_2104(&qword_203B0, &qword_155B0);
    v151 = &v147;
    v51 = (*(*(v148 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v148, v52);
    v54 = &v147 - v53;
    v55 = sub_2104(&qword_20468, &qword_15658);
    v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v55, v57);
    sub_B80C(v37, &v147 - v58, &qword_203C0, &qword_155B8);
    swift_storeEnumTagMultiPayload();
    sub_2104(&qword_203D0, &qword_155C0);
    sub_2838(&qword_203B8, &qword_203C0, &qword_155B8);
    sub_2838(&qword_203C8, &qword_203D0, &qword_155C0);
    sub_14728();
    v59 = sub_2104(&qword_20440, &qword_15640);
    v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v59, v61);
    sub_B80C(v54, &v147 - v62, &qword_203B0, &qword_155B0);
    swift_storeEnumTagMultiPayload();
    sub_2104(&qword_203E0, &qword_155C8);
    sub_A404();
    sub_2838(&qword_203D8, &qword_203E0, &qword_155C8);
    sub_14728();
    sub_B858(v54, &qword_203B0, &qword_155B0);
    sub_B858(v147, &qword_203C0, &qword_155B8);
    v149(v159, v157);
    return (v152)(v160, v158);
  }

  else
  {
    v160 = (&v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v161 = v11;
    v164 = v12;
    if (sub_142A8())
    {
      v64 = sub_2104(&qword_20448, &qword_15648);
      v162 = &v147;
      v158 = *(v64 - 8);
      v159 = v64;
      v65 = v158[8];
      __chkstk_darwin(v64, v66);
      v68 = (&v147 - v67);
      v69 = sub_14B68();
      v156 = &v147;
      v70 = *(v69 - 8);
      v71 = *(v70 + 64);
      v73 = __chkstk_darwin(v69, v72);
      __chkstk_darwin(v73, v74);
      v76 = &v147 - v75;
      v77 = sub_14248();
      v170 = &type metadata for String;
      v171 = &protocol witness table for String;
      v168 = v77;
      v169 = v78;
      v167 = 0;
      v165 = 0u;
      v166 = 0u;
      sub_14B58();
      sub_BCEC(&qword_20450, &type metadata accessor for DisambiguationTitle);
      v79 = sub_14828();
      (*(v70 + 8))(v76, v69);
      v170 = &type metadata for AnyView;
      v171 = &protocol witness table for AnyView;
      v168 = v79;
      v167 = 0;
      v165 = 0u;
      v166 = 0u;
      sub_14B58();
      v80 = v160;
      sub_B4C4(a1, v160);
      v81 = (*(v161 + 80) + 16) & ~*(v161 + 80);
      v82 = swift_allocObject();
      sub_B520(v80, v82 + v81);
      sub_2104(&qword_20408, &qword_155E8);
      sub_A81C();
      v83 = v68;
      sub_14B28();
      sub_7958(&v165);
      if (*(&v166 + 1))
      {
        sub_A714(&v165, &v168);
        sub_A72C(&v168, v170);
        v84 = sub_14828();

        sub_206C(&v168);
      }

      else
      {
        sub_B858(&v165, &qword_20430, &qword_15630);
        v84 = 0;
      }

      v154 = v84;
      v155 = sub_2104(&qword_203D0, &qword_155C0);
      v164 = &v147;
      v103 = (*(*(v155 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      v105 = __chkstk_darwin(v155, v104);
      v107 = &v147 - v106;
      v161 = &v147;
      __chkstk_darwin(v105, v108);
      v109 = &v147 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      v110 = v158;
      v111 = v158[2];
      v112 = v83;
      v157 = v83;
      v113 = v159;
      v111(v109, v112, v159);
      v111(v107, v109, v113);
      *&v107[*(sub_2104(&qword_20460, &qword_15650) + 48)] = v84;
      v160 = v110[1];
      (v160)(v109, v113);
      v156 = sub_2104(&qword_203B0, &qword_155B0);
      v158 = &v147;
      v114 = (*(*(v156 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v156, v115);
      v117 = &v147 - v116;
      v118 = sub_2104(&qword_20468, &qword_15658);
      v153 = &v147;
      v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v118, v120);
      sub_B80C(v107, &v147 - v121, &qword_203D0, &qword_155C0);
      swift_storeEnumTagMultiPayload();
      sub_2104(&qword_203C0, &qword_155B8);
      sub_2838(&qword_203B8, &qword_203C0, &qword_155B8);
      sub_2838(&qword_203C8, &qword_203D0, &qword_155C0);
      sub_14728();
      v122 = sub_2104(&qword_20440, &qword_15640);
      v155 = &v147;
      v123 = (*(*(v122 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v122, v124);
      sub_B80C(v117, &v147 - v125, &qword_203B0, &qword_155B0);
      swift_storeEnumTagMultiPayload();
      sub_2104(&qword_203E0, &qword_155C8);
      sub_A404();
      sub_2838(&qword_203D8, &qword_203E0, &qword_155C8);
      sub_14728();

      sub_B858(v117, &qword_203B0, &qword_155B0);
      sub_B858(v107, &qword_203D0, &qword_155C0);
      return (v160)(v157, v159);
    }

    else
    {
      v85 = sub_2104(&qword_203F0, &qword_155D8);
      v162 = &v147;
      v157 = *(v85 - 8);
      v158 = v85;
      v154 = v157[8];
      __chkstk_darwin(v85, v86);
      v88 = (&v147 - v87);
      v89 = sub_2104(&qword_203F8, &qword_155E0);
      v159 = &v147;
      v90 = (*(*(v89 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v89, v91);
      v93 = &v147 - v92;
      sub_7584(&v147 - v92);
      (*(v5 + 104))(v9, enum case for SeparatorStyle.remove(_:), v4);
      sub_2838(&qword_20400, &qword_203F8, &qword_155E0);
      v156 = v88;
      sub_14848();
      (*(v5 + 8))(v9, v4);
      sub_B858(v93, &qword_203F8, &qword_155E0);
      v94 = sub_2104(&qword_20408, &qword_155E8);
      v155 = &v147;
      v159 = v94;
      v95 = *(v94 - 8);
      v96 = v95[8];
      __chkstk_darwin(v94, v97);
      v99 = (&v147 - v98);
      v168 = sub_14298();
      swift_getKeyPath();
      v100 = v160;
      sub_B4C4(a1, v160);
      v101 = (*(v161 + 80) + 16) & ~*(v161 + 80);
      v102 = swift_allocObject();
      sub_B520(v100, v102 + v101);
      sub_2104(&qword_20410, &qword_15620);
      sub_A634();
      sub_A698();
      v164 = v99;
      sub_149A8();
      sub_7958(&v165);
      if (*(&v166 + 1))
      {
        sub_A714(&v165, &v168);
        sub_A72C(&v168, v170);
        v161 = sub_14828();

        sub_206C(&v168);
      }

      else
      {
        sub_B858(&v165, &qword_20430, &qword_15630);
        v161 = 0;
      }

      v152 = sub_2104(&qword_203E0, &qword_155C8);
      v160 = &v147;
      v126 = (*(*(v152 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      v128 = __chkstk_darwin(v152, v127);
      v130 = &v147 - v129;
      v153 = &v147;
      __chkstk_darwin(v128, v131);
      v133 = &v147 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
      v134 = v157[2];
      v135 = v158;
      v136 = v134(v133, v156, v158);
      v154 = &v147;
      __chkstk_darwin(v136, v137);
      v138 = &v147 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
      v139 = v95[2];
      v139(v138, v164, v159);
      v134(v130, v133, v135);
      v140 = sub_2104(&qword_20438, &qword_15638);
      v141 = v159;
      v139(&v130[*(v140 + 48)], v138, v159);
      *&v130[*(v140 + 64)] = v161;
      v151 = v95[1];
      (v151)(v138, v141);
      v142 = v157[1];
      v142(v133, v135);
      v143 = sub_2104(&qword_20440, &qword_15640);
      v157 = &v147;
      v144 = (*(*(v143 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v143, v145);
      sub_B80C(v130, &v147 - v146, &qword_203E0, &qword_155C8);
      swift_storeEnumTagMultiPayload();
      sub_2104(&qword_203B0, &qword_155B0);
      sub_A404();
      sub_2838(&qword_203D8, &qword_203E0, &qword_155C8);
      sub_14728();

      sub_B858(v130, &qword_203E0, &qword_155C8);
      (v151)(v164, v159);
      return (v142)(v156, v158);
    }
  }
}

uint64_t sub_9E88(uint64_t a1)
{
  v2 = sub_143E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(SAUIAddViews) init];
  v9 = [objc_allocWithZone(SAUIPluginSnippet) init];
  v10 = sub_14208();
  sub_AC78(v10, v11, v9);
  v12 = sub_14328();
  (*(*(v12 - 8) + 16))(v7, a1, v12);
  (*(v3 + 104))(v7, enum case for SuggestionsRFDataModels.expandedSuggestionsView(_:), v2);
  sub_BFCC(&qword_204A0, &type metadata accessor for SuggestionsRFDataModels);
  v13 = sub_14028();
  v15 = v14;
  (*(v3 + 8))(v7, v2);
  isa = 0;
  if (v15 >> 60 != 15)
  {
    isa = sub_13FE8().super.isa;
    sub_AD60(v13, v15);
  }

  [v9 setModelData:isa];

  sub_2104(&qword_204A8, &qword_15680);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_15490;
  *(v17 + 32) = v9;
  v18 = v9;
  sub_ACDC(v17, v8);
  v19 = sub_14C48();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1 + *(type metadata accessor for SiriHelpSMARTView(0) + 32);
  sub_14B78();
  v26 = v8;
  sub_14C28();

  return (*(v20 + 8))(v24, v19);
}

uint64_t sub_A198(uint64_t a1)
{
  v2 = type metadata accessor for SiriHelpSMARTView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8, v5);
  v9[1] = sub_14298();
  swift_getKeyPath();
  sub_B4C4(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_B520(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_2104(&qword_20410, &qword_15620);
  sub_A634();
  sub_A698();
  return sub_149A8();
}

unint64_t sub_A364()
{
  result = qword_203A0;
  if (!qword_203A0)
  {
    sub_2240(&qword_20398, &qword_155A8);
    sub_A404();
    sub_2838(&qword_203D8, &qword_203E0, &qword_155C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_203A0);
  }

  return result;
}

unint64_t sub_A404()
{
  result = qword_203A8;
  if (!qword_203A8)
  {
    sub_2240(&qword_203B0, &qword_155B0);
    sub_2838(&qword_203B8, &qword_203C0, &qword_155B8);
    sub_2838(&qword_203C8, &qword_203D0, &qword_155C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_203A8);
  }

  return result;
}

uint64_t sub_A4CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_141B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_A4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_C2B0();
  v12 = type metadata accessor for SiriHelpSMARTView(0);
  sub_C0DC(v12);
  v15 = *(v14 + 64);
  v16 = v11 + ((*(v13 + 80) + 16) & ~*(v13 + 80));
  v17 = sub_14328();
  sub_C0B8(v17);
  (*(v18 + 8))(v16);

  sub_C254();
  v19 = v10[9];
  v20 = sub_14A68();
  sub_C0B8(v20);
  (*(v21 + 8))(v16 + v19);
  v22 = v10[10];
  v23 = sub_14B98();
  sub_C0B8(v23);
  (*(v24 + 8))(v16 + v22);
  sub_C2C4();

  return _swift_deallocObject(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

unint64_t sub_A634()
{
  result = qword_20418;
  if (!qword_20418)
  {
    sub_2240(&qword_20410, &qword_15620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20418);
  }

  return result;
}

unint64_t sub_A698()
{
  result = qword_20420;
  if (!qword_20420)
  {
    sub_2240(&qword_20428, &qword_15628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20420);
  }

  return result;
}

uint64_t sub_A714(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_A72C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_A79C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  sub_C17C(v2);
  v4 = sub_C208(*(v3 + 80));

  return a2(v4);
}

unint64_t sub_A81C()
{
  result = qword_20458;
  if (!qword_20458)
  {
    sub_2240(&qword_20408, &qword_155E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20458);
  }

  return result;
}

uint64_t sub_A88C()
{
  v0 = type metadata accessor for SiriHelpSMARTView(0);
  sub_C17C(v0);
  v2 = sub_C208(*(v1 + 80));

  return sub_9E88(v2);
}

unint64_t sub_A8E0()
{
  result = qword_20488;
  if (!qword_20488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20488);
  }

  return result;
}

uint64_t sub_A934(uint64_t a1)
{
  v2 = sub_14038();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v40 = &v31 - v9;
  if (!*(a1 + 16))
  {
    v11 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_2104(&qword_20648, &qword_157D8);
  result = sub_14DF8();
  v11 = result;
  v35 = *(a1 + 16);
  if (!v35)
  {
LABEL_15:

    return v11;
  }

  v12 = 0;
  v39 = result + 56;
  v13 = *(v36 + 80);
  v33 = a1;
  v34 = a1 + ((v13 + 32) & ~v13);
  v38 = v36 + 16;
  v14 = (v36 + 8);
  v32 = (v36 + 32);
  while (v12 < *(a1 + 16))
  {
    v15 = *(v36 + 72);
    v37 = v12 + 1;
    v16 = *(v36 + 16);
    v16(v40, v34 + v15 * v12, v2);
    v17 = v11[5];
    sub_BFCC(&qword_20650, &type metadata accessor for _ProtoIdiom);
    v18 = sub_14CC8();
    v19 = ~(-1 << *(v11 + 32));
    while (1)
    {
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v39 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) == 0)
      {
        break;
      }

      v24 = v11;
      v16(v7, v11[6] + v20 * v15, v2);
      sub_BFCC(&qword_20658, &type metadata accessor for _ProtoIdiom);
      v25 = sub_14CD8();
      v26 = *v14;
      (*v14)(v7, v2);
      if (v25)
      {
        result = (v26)(v40, v2);
        v11 = v24;
        goto LABEL_12;
      }

      v18 = v20 + 1;
      v11 = v24;
    }

    v27 = v40;
    *(v39 + 8 * v21) = v23 | v22;
    result = (*v32)(v11[6] + v20 * v15, v27, v2);
    v28 = v11[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    v11[2] = v30;
LABEL_12:
    v12 = v37;
    a1 = v33;
    if (v37 == v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_AC78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_14CE8();

  [a3 setBundleName:v4];
}

void sub_ACDC(uint64_t a1, void *a2)
{
  sub_B484(0, &qword_204B0, SAAceView_ptr);
  isa = sub_14D48().super.isa;

  [a2 setViews:isa];
}

uint64_t sub_AD60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_AD74(a1, a2);
  }

  return a1;
}

uint64_t sub_AD74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_ADD4()
{
  result = qword_204C0;
  if (!qword_204C0)
  {
    sub_2240(&qword_204B8, &qword_15688);
    sub_BCEC(&qword_204C8, &type metadata accessor for PrimaryHeaderRichView);
    sub_2838(&qword_20230, &qword_20238, qword_15460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_204C0);
  }

  return result;
}

uint64_t sub_AE8C()
{
  v0 = type metadata accessor for SiriHelpSMARTView(0);
  sub_C17C(v0);
  v2 = *(v1 + 80);
  v3 = sub_C224();

  return sub_77AC(v3, v4);
}

uint64_t sub_AEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_AF3C(*(v10 + 16), *(v10 + 24), *(v10 + 32));
  v11 = *(v10 + 40);

  return _swift_deallocObject(v10, 48, 7, v12, v13, v14, v15, v16, a9, a10);
}

uint64_t sub_AF3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_AF4C()
{
  result = qword_204F0;
  if (!qword_204F0)
  {
    sub_2240(&qword_204E8, &qword_156E0);
    sub_BCEC(&qword_204F8, &type metadata accessor for RFImageView);
    sub_2838(&qword_20500, &qword_20508, &qword_156E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_204F0);
  }

  return result;
}

uint64_t sub_B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_C2B0();
  v12 = type metadata accessor for SiriHelpSMARTView(0);
  sub_C0DC(v12);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  sub_AD74(*(v11 + 16), *(v11 + 24));
  v17 = sub_14328();
  sub_C0B8(v17);
  (*(v18 + 8))(v11 + v14);

  sub_C254();
  v19 = v10[9];
  v20 = sub_14A68();
  sub_C0B8(v20);
  (*(v21 + 8))(v11 + v14 + v19);
  v22 = v10[10];
  v23 = sub_14B98();
  sub_C0B8(v23);
  (*(v24 + 8))(v11 + v14 + v22);
  sub_C2C4();

  return _swift_deallocObject(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_B16C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_B1C4(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_B224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_C2B0();
  v12 = sub_141F8();
  sub_C164(v12);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  v17 = type metadata accessor for SiriHelpSMARTView(0);
  sub_C0DC(v17);
  v19 = (v16 + *(v18 + 80) + v14 + 1) & ~*(v18 + 80);
  v21 = *(v20 + 64);
  v22 = sub_C270();
  v23(v22);
  v24 = sub_14328();
  sub_C0B8(v24);
  (*(v25 + 8))(v11 + v19);

  sub_C254();
  v26 = v10[9];
  v27 = sub_14A68();
  sub_C0B8(v27);
  (*(v28 + 8))(v11 + v19 + v26);
  v29 = v10[10];
  v30 = sub_14B98();
  sub_C0B8(v30);
  (*(v31 + 8))(v11 + v19 + v29);
  sub_C2C4();

  return _swift_deallocObject(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

void sub_B3BC()
{
  v1 = sub_141F8();
  sub_C154(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = type metadata accessor for SiriHelpSMARTView(0);
  sub_C17C(v6);
  v8 = *(v0 + v5);
  v9 = v0 + ((v5 + *(v7 + 80) + 1) & ~*(v7 + 80));

  sub_6E50((v0 + v3), v8, v9);
}

uint64_t sub_B484(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_B4C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_C284();
  v5 = v4(v3);
  sub_C0CC(v5);
  v7 = *(v6 + 16);
  v8 = sub_C218();
  v9(v8);
  return a2;
}

uint64_t sub_B520(uint64_t a1, uint64_t a2)
{
  v3 = sub_C284();
  v5 = v4(v3);
  sub_C0CC(v5);
  v7 = *(v6 + 32);
  v8 = sub_C218();
  v9(v8);
  return a2;
}

uint64_t sub_B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_C2B0();
  v13 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C0DC(v13);
  v16 = *(v15 + 64);
  v17 = (v11 + ((*(v14 + 80) + 16) & ~*(v14 + 80)));

  v18 = sub_C308();
  sub_C0B8(v18);
  (*(v19 + 8))(v17 + v12);
  v20 = sub_C2F0();
  sub_C0B8(v20);
  (*(v21 + 8))(v17 + v12);
  v22 = sub_C2D8();
  sub_C0B8(v22);
  (*(v23 + 8))(v17 + v10);
  sub_C1F8();
  sub_C2C4();

  return _swift_deallocObject(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_B6E8(uint64_t (*a1)(void))
{
  v2 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C17C(v2);
  v4 = sub_C208(*(v3 + 80));
  return sub_5C58(v4, a1);
}

uint64_t sub_B768(uint64_t a1, uint64_t a2)
{
  v4 = sub_2104(&qword_205B0, &qword_15758);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B80C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_C1D8(a1, a2, a3, a4);
  sub_C0CC(v5);
  v7 = *(v6 + 16);
  v8 = sub_C218();
  v9(v8);
  return v4;
}

uint64_t sub_B858(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2104(a2, a3);
  sub_C0B8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_B8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_C2B0();
  v13 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C0DC(v13);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = *(v16 + 64);
  sub_AD74(*(v11 + 16), *(v11 + 24));

  v18 = sub_C308();
  sub_C0B8(v18);
  (*(v19 + 8))(v11 + v15 + v12);
  v20 = sub_C2F0();
  sub_C0B8(v20);
  (*(v21 + 8))(v11 + v15 + v12);
  v22 = sub_C2D8();
  sub_C0B8(v22);
  (*(v23 + 8))(v11 + v15 + v10);
  sub_C1F8();
  sub_C2C4();

  return _swift_deallocObject(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_B9F0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = a1(0);
  sub_C17C(v3);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(v5, v6, v7);
}

unint64_t sub_BA6C()
{
  result = qword_20608;
  if (!qword_20608)
  {
    sub_2240(&qword_20600, &qword_157A8);
    sub_BCEC(&qword_20610, &type metadata accessor for SimpleItemStandardView);
    sub_2838(&qword_20230, &qword_20238, qword_15460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20608);
  }

  return result;
}

uint64_t sub_BB24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_C1D8(a1, a2, a3, a4);
  sub_C0CC(v5);
  v7 = *(v6 + 32);
  v8 = sub_C218();
  v9(v8);
  return v4;
}

uint64_t sub_BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_C2B0();
  v13 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C0DC(v13);
  v15 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v17 = *(v16 + 64);

  v18 = sub_C308();
  sub_C0B8(v18);
  (*(v19 + 8))(v11 + v15 + v12);
  v20 = sub_C2F0();
  sub_C0B8(v20);
  (*(v21 + 8))(v11 + v15 + v12);
  v22 = sub_C2D8();
  sub_C0B8(v22);
  (*(v23 + 8))(v11 + v15 + v10);
  sub_C1F8();
  sub_C2C4();

  return _swift_deallocObject(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_BC88()
{
  v1 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C17C(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_5F7C(v3, v4);
}

uint64_t sub_BCEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_BD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_C2B0();
  v12 = sub_141F8();
  sub_C164(v12);
  v14 = v13;
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = *(v16 + 64);
  v18 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C0DC(v18);
  v20 = (v15 + v17 + *(v19 + 80)) & ~*(v19 + 80);
  v22 = *(v21 + 64);
  v23 = sub_C270();
  v24(v23);

  v25 = sub_C308();
  sub_C0B8(v25);
  (*(v26 + 8))(v11 + v20 + v14);
  v27 = sub_C2F0();
  sub_C0B8(v27);
  (*(v28 + 8))(v11 + v20 + v14);
  v29 = sub_C2D8();
  sub_C0B8(v29);
  (*(v30 + 8))(v11 + v20 + v10);
  sub_C2C4();

  return _swift_deallocObject(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

void sub_BEAC()
{
  v1 = sub_141F8();
  sub_C154(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C17C(v6);
  v8 = v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  sub_39D0((v0 + v3), v8);
}

void sub_BF6C()
{
  v0 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C17C(v0);
  v2 = *(v1 + 80);
  sub_C224();
  sub_5DF0();
}

uint64_t sub_BFCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 80) = a3;
  *(v4 - 72) = v3;
  *(v4 - 104) = a1;
  *(v4 - 96) = a2;
  *(v4 - 112) = 0;
  *(v4 - 144) = 0u;
  *(v4 - 128) = 0u;
  *(v4 - 160) = 0;
  *(v4 - 192) = 0u;
  *(v4 - 176) = 0u;
  *(v4 - 208) = 0;
  *(v4 - 240) = 0u;
  *(v4 - 224) = 0u;
  *(v4 - 256) = 0;
  *(v4 - 272) = 0u;
  *(v4 - 288) = 0u;

  return PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:addTint:)(v4 - 104, v4 - 144, v4 - 192, v4 - 240, v4 - 288, 0);
}

uint64_t sub_C1B8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t sub_C1D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2104(a3, a4);
}

uint64_t sub_C254()
{
  v3 = *(v1 + *(v0 + 32) + 8);
}

uint64_t sub_C290(uint64_t a1)
{

  return sub_B520(v2, a1 + v1);
}

uint64_t sub_C2D8()
{
  v2 = *(v0 + 36);

  return sub_14B98();
}

uint64_t sub_C2F0()
{
  v2 = *(v0 + 32);

  return sub_14A68();
}

uint64_t sub_C308()
{
  v2 = *(v0 + 28);

  return sub_14328();
}

uint64_t SiriSuggestionsUIPlugin.__allocating_init()()
{
  sub_14418();
  v0 = sub_14408();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t SiriSuggestionsUIPlugin.__allocating_init(suggestionsFacade:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SiriSuggestionsUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  v2 = v1;
  v178 = a1;
  v168 = type metadata accessor for SiriHelpSnippetView(0);
  v3 = sub_C0CC(v168);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_DAA8();
  v169 = v7;
  v8 = sub_DB40();
  v170 = type metadata accessor for SiriHelpSMARTView(v8);
  v9 = sub_C0CC(v170);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  sub_DAA8();
  v171 = v13;
  sub_DB40();
  v14 = sub_14328();
  v15 = sub_DA94(v14);
  v173 = v16;
  v174 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15, v19);
  sub_DB20();
  v162 = v20;
  sub_DB9C();
  __chkstk_darwin(v21, v22);
  v172 = &v158 - v23;
  sub_DB40();
  v165 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  v24 = sub_C0CC(v165);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24, v27);
  sub_DAA8();
  v166 = v28;
  sub_DB40();
  v167 = sub_143D8();
  v29 = sub_DA94(v167);
  v164 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29, v33);
  sub_DAA8();
  v163 = v34;
  sub_DB40();
  v35 = type metadata accessor for SiriHintsSnippetView();
  v36 = sub_C0CC(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36, v39);
  v41 = &v158 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_14368();
  v43 = sub_DA94(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v43, v48);
  sub_DB20();
  v175 = v49;
  sub_DB9C();
  __chkstk_darwin(v50, v51);
  v176 = (&v158 - v52);
  sub_DB40();
  v179 = sub_143E8();
  v53 = sub_DA94(v179);
  v55 = v54;
  v57 = *(v56 + 64);
  __chkstk_darwin(v53, v58);
  sub_DB20();
  v160 = v59;
  sub_DB9C();
  __chkstk_darwin(v60, v61);
  v161 = &v158 - v62;
  sub_DB9C();
  __chkstk_darwin(v63, v64);
  v66 = &v158 - v65;
  if (qword_20180 != -1)
  {
    sub_DAEC();
    swift_once();
  }

  v67 = sub_14568();
  v177 = sub_1750(v67, static Logger.uiCategory);
  v68 = sub_14548();
  v69 = sub_14D98();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = sub_DB84();
    v159 = v45;
    *v70 = 0;
    _os_log_impl(&dword_0, v68, v69, "Running Suggestions UI plugin", v70, 2u);
    v45 = v159;
    sub_DB34();
  }

  v71 = *(v2 + 16);
  if (v71)
  {
    v72 = v55 + 16;
    v73 = v179;
    v159 = *(v55 + 16);
    v159(v66, v178, v179);
    v74 = (*(v55 + 88))(v66, v73);
    if (v74 == enum case for SuggestionsRFDataModels.hintsView(_:))
    {
      (*(v55 + 96))(v66, v73);
      v75 = v176;
      (*(v45 + 4))(v176, v66, v42);
      v76 = v175;
      (*(v45 + 2))(v175, v75, v42);
      v77 = swift_retain_n();
      sub_DF00(v77, v76, v41);
      sub_D9C8(&qword_206A0, type metadata accessor for SiriHintsSnippetView);
      sub_14828();
      sub_DB4C();

      sub_D928(v41, type metadata accessor for SiriHintsSnippetView);
      (*(v45 + 1))(v75, v42);
    }

    else if (v74 == enum case for SuggestionsRFDataModels.helpView(_:))
    {
      v84 = sub_DB58();
      v85(v84);
      v87 = v172;
      v86 = v173;
      v88 = v66;
      v89 = v174;
      (*(v173 + 32))(v172, v88, v174);

      v90 = sub_142D8();
      v91 = sub_14548();
      v92 = sub_14D98();
      v93 = sub_DB68(v92);
      if (v90)
      {
        if (v93)
        {
          v94 = sub_DB84();
          sub_DBA8(v94);
          sub_DB00(&dword_0, v95, v96, "returning Siri Help SMART snippet");
          sub_DB34();
        }

        v97 = v171;
        (*(v86 + 16))(v171, v87, v89);
        v76 = sub_142F8();
        v98 = v170;
        v99 = (v97 + v170[5]);
        sub_14C98();
        sub_20B8();
        *v99 = sub_14638();
        v99[1] = v100;
        v101 = v97 + v98[6];
        v182 = v76 & 1;
        sub_14948();
        v102 = v181;
        *v101 = v180;
        *(v101 + 8) = v102;
        v103 = v97 + v98[7];
        sub_14A58();
        v104 = v97 + v98[8];
        sub_14B88();
        sub_DAD4();
        sub_D9C8(v105, v106);
        sub_14828();
        sub_DB4C();

        sub_DABC();
        v108 = v97;
      }

      else
      {
        if (v93)
        {
          v118 = sub_DB84();
          sub_DBA8(v118);
          sub_DB00(&dword_0, v119, v120, "returning old RF2 snippet");
          sub_DB34();
        }

        v122 = v168;
        v121 = v169;
        (*(v86 + 16))(v169 + *(v168 + 20), v87, v89);
        v76 = sub_14C98();
        sub_20B8();
        *v121 = sub_14638();
        v121[1] = v123;
        v124 = v121 + *(v122 + 24);
        sub_14A58();
        v125 = v121 + *(v122 + 28);
        sub_14B88();
        sub_D9C8(&qword_20690, type metadata accessor for SiriHelpSnippetView);
        sub_14828();
        sub_DB4C();

        v107 = type metadata accessor for SiriHelpSnippetView;
        v108 = v121;
      }

      sub_D928(v108, v107);
      (*(v86 + 8))(v87, v89);
    }

    else if (v74 == enum case for SuggestionsRFDataModels.announcementsView(_:))
    {
      v109 = sub_DB58();
      v110(v109);
      v112 = v163;
      v111 = v164;
      v113 = v167;
      (*(v164 + 32))(v163, v66, v167);
      v114 = v165;
      v115 = v166;
      (*(v111 + 16))(v166 + *(v165 + 20), v112, v113);
      v182 = 1;

      sub_14948();
      v116 = v181;
      *v115 = v180;
      *(v115 + 8) = v116;
      v117 = v115 + *(v114 + 24);
      sub_14A58();
      sub_D9C8(&qword_20698, type metadata accessor for SiriFeatureAnnouncementSnippetView);
      v76 = sub_14828();

      sub_D928(v115, type metadata accessor for SiriFeatureAnnouncementSnippetView);
      (*(v111 + 8))(v112, v113);
    }

    else if (v74 == enum case for SuggestionsRFDataModels.expandedSuggestionsView(_:))
    {
      v126 = sub_DB58();
      v127(v126);
      v128 = v173;
      v129 = v162;
      v130 = v66;
      v131 = v174;
      (*(v173 + 32))(v162, v130, v174);

      v132 = sub_14548();
      v133 = sub_14D98();
      if (sub_DB68(v133))
      {
        v134 = sub_DB84();
        sub_DBA8(v134);
        sub_DB00(&dword_0, v135, v136, "returning Siri Help SMART snippet with expanded suggestions");
        sub_DB34();
      }

      v137 = v171;
      (*(v128 + 16))(v171, v129, v131);
      v138 = v170;
      v139 = (v137 + v170[5]);
      sub_14C98();
      sub_20B8();
      *v139 = sub_14638();
      v139[1] = v140;
      v76 = v137 + v138[6];
      v182 = 0;
      sub_14948();
      v141 = v181;
      *v76 = v180;
      *(v76 + 8) = v141;
      v142 = v137 + v138[7];
      sub_14A58();
      v143 = v137 + v138[8];
      sub_14B88();
      sub_DAD4();
      sub_D9C8(v144, v145);
      sub_14828();
      sub_DB4C();

      sub_DABC();
      sub_D928(v137, v146);
      (*(v128 + 8))(v129, v131);
    }

    else
    {
      v147 = v161;
      v148 = v179;
      v149 = v159;
      v159(v161, v178, v179);
      v178 = v71;

      v150 = sub_14548();
      v151 = sub_14DB8();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        LODWORD(v177) = v151;
        v153 = v152;
        v176 = swift_slowAlloc();
        v180 = v176;
        *v153 = 136315138;
        v149(v160, v147, v148);
        sub_14CF8();
        v154 = sub_DB4C();
        v156 = v155;
        v157 = *(v55 + 8);
        v157(v154, v148);
        sub_D340(v72, v156, &v180);
        sub_DB4C();

        *(v153 + 4) = v72;
        _os_log_impl(&dword_0, v150, v177, "Unknown model type: %s", v153, 0xCu);
        sub_206C(v176);
        sub_DB34();

        sub_DB34();
      }

      else
      {

        v157 = *(v55 + 8);
        v157(v147, v148);
      }

      v76 = sub_14828();

      v157(v66, v148);
    }

    return v76;
  }

  else
  {
    v78 = sub_14548();
    v79 = sub_14DB8();
    if (sub_DB68(v79))
    {
      v80 = sub_DB84();
      sub_DBA8(v80);
      sub_DB00(&dword_0, v81, v82, "Unable to fetch suggestions from facade. Check initalisation errors");
      sub_DB34();
    }

    return sub_14828();
  }
}

uint64_t SiriSuggestionsUIPlugin.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SiriSuggestionsUIPlugin.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_D224@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t sub_D270(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_D2E4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_D340(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_D340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_D404(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_DA34(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_206C(v11);
  return v7;
}

unint64_t sub_D404(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_D504(a5, a6);
    *a1 = v9;
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
    result = sub_14E28();
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

char *sub_D504(uint64_t a1, unint64_t a2)
{
  v4 = sub_D550(a1, a2);
  sub_D668(&off_1D1D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_D550(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_14D18())
  {
    result = sub_D74C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_14E08();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_14E28();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_D668(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_D7BC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_D74C(uint64_t a1, uint64_t a2)
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

  sub_2104(&qword_20748, qword_15868);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_D7BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2104(&qword_20748, qword_15868);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_D8B0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_D8C0(uint64_t a1)
{
  v2 = sub_2104(&qword_20680, &qword_15800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D928(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_C0CC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_D9C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_DA34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_DB00(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_DB58()
{
  v3 = *(v1 + 96);
  result = v0;
  v5 = *(v2 - 120);
  return result;
}

BOOL sub_DB68(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_DB84()
{

  return swift_slowAlloc();
}

uint64_t sub_DBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_14368();
    v9 = a1 + *(a3 + 40);

    return sub_2990(v9, a2, v8);
  }
}

uint64_t sub_DC64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_14368();
    v8 = v5 + *(a4 + 40);

    return sub_2AD0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SiriHintsSnippetView()
{
  result = qword_207A8;
  if (!qword_207A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_DD30()
{
  sub_2BE4();
  if (v0 <= 0x3F)
  {
    sub_DE34(319, &qword_207B8);
    if (v1 <= 0x3F)
    {
      sub_DE34(319, &qword_207C0);
      if (v2 <= 0x3F)
      {
        sub_DE80();
        if (v3 <= 0x3F)
        {
          sub_14418();
          if (v4 <= 0x3F)
          {
            sub_14368();
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

void sub_DE34(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_14978();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_DE80()
{
  if (!qword_207C8)
  {
    sub_2240(&unk_207D0, &qword_158A8);
    v0 = sub_14978();
    if (!v1)
    {
      atomic_store(v0, &qword_207C8);
    }
  }
}

uint64_t sub_DF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_14C98();
  sub_10FEC(&qword_20188);
  v6 = sub_14638();
  *a3 = v6;
  *(a3 + 8) = v7;
  sub_11030(v6, v7, v8, v9, v10, v11, v12, v13, v40, 70);
  v14 = sub_14948();
  *(a3 + 16) = v44;
  *(a3 + 32) = v45;
  sub_11030(v14, v15, v16, v17, v18, v19, v20, v21, v41, 17);
  v22 = sub_14948();
  *(a3 + 40) = v44;
  *(a3 + 56) = v45;
  sub_11030(v22, &type metadata for CGFloat, v23, v24, v25, v26, v27, v28, v42, 0);
  sub_14948();
  *(a3 + 64) = v44;
  v29 = sub_2104(&unk_207D0, &qword_158A8);
  sub_11030(v29, v29, v30, v31, v32, v33, v34, v35, v43, 0);
  sub_14948();
  *(a3 + 80) = v44;
  *(a3 + 88) = BYTE8(v44);
  *(a3 + 96) = v45;
  *(a3 + 104) = a1;
  v36 = *(type metadata accessor for SiriHintsSnippetView() + 40);
  v37 = sub_14368();
  sub_C0CC(v37);
  return (*(v38 + 32))(a3 + v36, a2);
}

uint64_t sub_E080@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v121 = a1;
  v4 = type metadata accessor for SiriHintsSnippetView();
  v5 = sub_C0DC(v4);
  v119 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  v122 = v10;
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2104(&qword_20818, &qword_15900);
  sub_C17C(v12);
  v14 = *(v13 + 64);
  sub_10FE0();
  __chkstk_darwin(v15, v16);
  v18 = &v108 - v17;
  v19 = sub_14468();
  v20 = sub_DA94(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v26 = __chkstk_darwin(v20, v25);
  v27 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v28);
  v30 = &v108 - v29;
  v31 = v2 + *(v1 + 48);
  sub_14338();
  if (sub_2990(v18, 1, v19) == 1)
  {
    sub_10E90(v18, &qword_20818, &qword_15900);
    v32 = sub_2104(&qword_20820, &qword_15908);
    v120 = &v108;
    v33 = sub_DA94(v32);
    v117 = v34;
    v118 = v33;
    v36 = *(v35 + 64);
    sub_10FE0();
    __chkstk_darwin(v37, v38);
    v115 = &v108 - v39;
    v40 = sub_2104(&qword_20828, &qword_15910);
    v116 = &v108;
    sub_C0CC(v40);
    v42 = *(v41 + 64);
    sub_10FE0();
    __chkstk_darwin(v43, v44);
    sub_1100C();
    v45 = *(v3 + 32);
    v125 = *(v3 + 16);
    *&v126 = v45;
    sub_2104(&qword_20830, &qword_15918);
    sub_14958();
    v46 = sub_14D28();

    sub_104B0(v3, v11);
    v47 = (*(v119 + 80) + 16) & ~*(v119 + 80);
    v48 = swift_allocObject();
    sub_10518(v11, v48 + v47);
    v119 = sub_2104(&qword_20838, &qword_15930);
    v49 = v11;
    v50 = (v1 + *(v119 + 36));
    v51 = v50 + *(sub_145E8() + 20);
    sub_14D88();
    *v50 = &unk_15928;
    v50[1] = v48;
    *v1 = v46;
    v52 = *(v3 + 72);
    *&v125 = *(v3 + 64);
    *(&v125 + 1) = v52;
    sub_2104(&qword_20840, &qword_15938);
    sub_14958();
    v53 = *(v3 + 88);
    v54 = *(v3 + 96);
    *&v125 = *(v3 + 80);
    BYTE8(v125) = v53;
    *&v126 = v54;
    sub_2104(&qword_20848, &qword_15940);
    sub_14958();
    sub_149B8();
    sub_145B8();
    v55 = (v1 + *(sub_2104(&qword_20850, &qword_15948) + 36));
    v56 = v126;
    *v55 = v125;
    v55[1] = v56;
    v55[2] = v127;
    v57 = sub_147C8();
    KeyPath = swift_getKeyPath();
    v59 = (v1 + *(v40 + 36));
    *v59 = KeyPath;
    v59[1] = v57;
    sub_104B0(v3, v49);
    v60 = swift_allocObject();
    sub_10518(v49, v60 + v47);
    v61 = sub_10758();
    v62 = v115;
    sub_148D8();

    sub_10E90(v1, &qword_20828, &qword_15910);
    v63 = sub_2104(&qword_20880, &qword_15988);
    sub_C0CC(v63);
    v65 = *(v64 + 64);
    sub_10FE0();
    __chkstk_darwin(v66, v67);
    (*(v117 + 16))(&v108 - v68, v62, v118);
    swift_storeEnumTagMultiPayload();
    sub_2104(&qword_20888, &qword_15990);
    v69 = sub_10858();
    v123 = v119;
    v124 = v69;
    swift_getOpaqueTypeConformance2();
    v123 = v40;
    v124 = v61;
    swift_getOpaqueTypeConformance2();
    sub_14728();
    v70 = sub_1101C();
    return v71(v70);
  }

  else
  {
    v110 = v11;
    v111 = *(v22 + 4);
    v111(v30, v18, v19);
    v73 = sub_2104(&qword_20888, &qword_15990);
    v120 = &v108;
    v74 = sub_DA94(v73);
    v116 = v75;
    v117 = v74;
    v77 = *(v76 + 64);
    sub_10FE0();
    __chkstk_darwin(v78, v79);
    v112 = &v108 - v80;
    v109 = sub_2104(&qword_20838, &qword_15930);
    v114 = &v108;
    sub_C0CC(v109);
    v82 = *(v81 + 64);
    sub_10FE0();
    __chkstk_darwin(v83, v84);
    sub_1100C();
    v85 = v30;
    v118 = v30;
    sub_14448();
    v86 = v22;
    v108 = sub_14D28();

    v87 = v19;
    v88 = v110;
    sub_104B0(v3, v110);
    v115 = v86;
    v89 = *(v86 + 2);
    v113 = v87;
    v89(v27, v85, v87);
    v90 = (*(v119 + 80) + 16) & ~*(v119 + 80);
    v119 = v3;
    v91 = (v90 + v122 + v86[80]) & ~v86[80];
    v92 = swift_allocObject();
    sub_10518(v88, v92 + v90);
    v111((v92 + v91), v27, v87);
    v93 = v109;
    v94 = (v1 + *(v109 + 36));
    v95 = v94 + *(sub_145E8() + 20);
    sub_14D88();
    *v94 = &unk_159A0;
    v94[1] = v92;
    *v1 = v108;
    sub_104B0(v119, v88);
    v96 = swift_allocObject();
    sub_10518(v88, v96 + v90);
    v97 = sub_10858();
    v98 = v112;
    sub_148D8();

    sub_10E90(v1, &qword_20838, &qword_15930);
    v99 = sub_2104(&qword_20880, &qword_15988);
    sub_C0CC(v99);
    v101 = *(v100 + 64);
    sub_10FE0();
    __chkstk_darwin(v102, v103);
    sub_1100C();
    (v116[2])(v1, v98, v117);
    swift_storeEnumTagMultiPayload();
    sub_2104(&qword_20820, &qword_15908);
    *&v125 = v93;
    *(&v125 + 1) = v97;
    swift_getOpaqueTypeConformance2();
    v104 = sub_2240(&qword_20828, &qword_15910);
    v105 = sub_10758();
    *&v125 = v104;
    *(&v125 + 1) = v105;
    swift_getOpaqueTypeConformance2();
    sub_14728();
    v106 = sub_1101C();
    v107(v106);
    return (*(v115 + 1))(v118, v113);
  }
}

uint64_t sub_EA38(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_14488();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  sub_14D78();
  v2[17] = sub_14D68();
  v7 = sub_14D58();

  return _swift_task_switch(sub_EB2C, v7, v6);
}

uint64_t sub_EB2C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];

  sub_14E18(18);

  sub_14458();
  v7 = sub_14478();
  v9 = v8;
  (*(v4 + 8))(v2, v3);
  v27._countAndFlagsBits = v7;
  v27._object = v9;
  sub_14D08(v27);

  v10 = *(v6 + 40);
  v11 = *(v6 + 48);
  v12 = *(v6 + 56);
  v0[2] = v10;
  v0[3] = v11;
  v0[4] = v12;
  v0[8] = 0xD000000000000010;
  v0[9] = 0x8000000000017670;
  sub_2104(&qword_20830, &qword_15918);
  sub_14968();
  v0[5] = v10;
  v0[6] = v11;
  v0[7] = v12;
  sub_14958();
  v13 = v0[10];
  v14 = v0[11];
  v15 = sub_2104(&qword_20570, &qword_15730);
  sub_C17C(v15);
  v17 = *(v16 + 64) + 15;
  swift_task_alloc();
  sub_14A78();
  v18 = sub_14A88();
  v19 = objc_allocWithZone(sub_11094(v18));
  v20 = sub_1105C(v13, v14);

  if (*v6)
  {
    v21 = v0[16];
    v22 = *v6;
    sub_14C88();

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = *(v0[12] + 8);
    sub_14C98();
    sub_10FEC(&qword_20188);
    return sub_1103C();
  }
}

void sub_ED68(uint64_t a1)
{
  v2 = sub_14128();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SiriHintsSnippetView();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_20180 != -1)
  {
    swift_once();
  }

  v13 = sub_14568();
  sub_1750(v13, static Logger.uiCategory);
  sub_104B0(a1, v12);
  v14 = sub_14548();
  v15 = sub_14DA8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41 = v7;
    v42[0] = v17;
    v18 = v17;
    *v16 = 136315138;
    v19 = *(v12 + 7);
    v43 = *(v12 + 40);
    v44 = v19;
    sub_2104(&qword_20830, &qword_15918);
    sub_14958();
    v20 = v42[1];
    v21 = v42[2];
    sub_10E34(v12);
    v22 = sub_D340(v20, v21, v42);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v14, v15, "Component was tapped for suggestion with loggingId: %s", v16, 0xCu);
    sub_206C(v18);
    v7 = v41;
  }

  else
  {

    sub_10E34(v12);
  }

  (*(v3 + 104))(v7, enum case for Command.noOp(_:), v2);
  v23 = sub_14AA8();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v25);
  (*(v27 + 104))(&v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for InteractionType.buttonTapped(_:));
  v28 = sub_2104(&qword_20570, &qword_15730);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28 - 8, v30);
  v32 = &v40 - v31;
  sub_14A78();
  v33 = sub_14A88();
  sub_2AD0(v32, 0, 1, v33);
  v34 = *(a1 + 56);
  v43 = *(a1 + 40);
  v44 = v34;
  sub_2104(&qword_20830, &qword_15918);
  sub_14958();
  v35 = objc_allocWithZone(sub_14BE8());
  v36 = sub_14BD8();
  if (*a1)
  {
    v37 = v36;
    v38 = *a1;
    sub_14C88();
  }

  else
  {
    v39 = *(a1 + 8);
    sub_14C98();
    sub_10944(&qword_20188, &type metadata accessor for Context);
    sub_14628();
    __break(1u);
  }
}

uint64_t sub_F1F8(uint64_t a1)
{
  v1[30] = a1;
  v2 = sub_14528();
  v1[31] = v2;
  v3 = *(v2 - 8);
  v1[32] = v3;
  v4 = *(v3 + 64) + 15;
  v1[33] = swift_task_alloc();
  v5 = sub_144E8();
  v1[34] = v5;
  v6 = *(v5 - 8);
  v1[35] = v6;
  v7 = *(v6 + 64) + 15;
  v1[36] = swift_task_alloc();
  v8 = sub_144C8();
  v1[37] = v8;
  v9 = *(v8 - 8);
  v1[38] = v9;
  v10 = *(v9 + 64) + 15;
  v1[39] = swift_task_alloc();
  v11 = sub_14508();
  v1[40] = v11;
  v12 = *(v11 - 8);
  v1[41] = v12;
  v13 = *(v12 + 64) + 15;
  v1[42] = swift_task_alloc();
  v14 = *(*(sub_2104(&qword_20890, &qword_159B0) - 8) + 64) + 15;
  v1[43] = swift_task_alloc();
  v15 = sub_14198();
  v1[44] = v15;
  v16 = *(v15 - 8);
  v1[45] = v16;
  v17 = *(v16 + 64) + 15;
  v1[46] = swift_task_alloc();
  v18 = type metadata accessor for SiriHintsSnippetView();
  v1[47] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v20 = *(*(sub_2104(&qword_20898, &qword_159B8) - 8) + 64) + 15;
  v1[50] = swift_task_alloc();
  v21 = sub_14018();
  v1[51] = v21;
  v22 = *(v21 - 8);
  v1[52] = v22;
  v23 = *(v22 + 64) + 15;
  v1[53] = swift_task_alloc();
  sub_14D78();
  v1[54] = sub_14D68();
  v25 = sub_14D58();
  v1[55] = v25;
  v1[56] = v24;

  return _swift_task_switch(sub_F564, v25, v24);
}

uint64_t sub_F564()
{
  v38 = v0;
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[47];
  v4 = v0[30];
  v5 = *(v3 + 40);
  sub_14358();
  sub_13FF8();

  if (sub_2990(v2, 1, v1) == 1)
  {
    sub_10E90(v0[50], &qword_20898, &qword_159B8);
    if (qword_20180 != -1)
    {
      sub_1884();
    }

    v6 = v0[49];
    v7 = v0[30];
    v8 = sub_14568();
    sub_1750(v8, static Logger.uiCategory);
    sub_104B0(v7, v6);
    v9 = sub_14548();
    v10 = sub_14DB8();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[49];
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v37 = v14;
      *v13 = 136315138;
      v15 = v12 + *(v3 + 40);
      v16 = sub_14358();
      v18 = v17;
      sub_10E34(v12);
      v19 = sub_D340(v16, v18, &v37);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_0, v9, v10, "unable to create requestID from %s", v13, 0xCu);
      sub_206C(v14);
      sub_1107C();
      sub_1107C();
    }

    else
    {

      sub_10E34(v12);
    }

    v20 = v0[53];
    sub_14008();
  }

  else
  {
    (*(v0[52] + 32))(v0[53], v0[50], v0[51]);
  }

  v22 = v0[41];
  v21 = v0[42];
  v23 = v0[40];
  v24 = *(v0[30] + 104);
  v25 = enum case for SiriHintsMode.display(_:);
  v26 = sub_14498();
  sub_C0CC(v26);
  (*(v27 + 104))(v21, v25);
  (*(v22 + 104))(v21, enum case for DeliveryVehicle.siriHints(_:), v23);
  sub_14348();
  v29 = v28;
  v30 = async function pointer to SiriSuggestionsFacade.fetchTopPreGeneratedSiriHint(requestUUID:forDeliveryVehicle:timeoutSeconds:)[1];
  v31 = swift_task_alloc();
  v0[57] = v31;
  *v31 = v0;
  v31[1] = sub_F860;
  v32 = v0[53];
  v34 = v0[42];
  v33 = v0[43];
  v35.n128_u64[0] = v29;

  return SiriSuggestionsFacade.fetchTopPreGeneratedSiriHint(requestUUID:forDeliveryVehicle:timeoutSeconds:)(v33, v32, v34, v35);
}

uint64_t sub_F860()
{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 328);
  v5 = *(*v0 + 320);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 448);
  v7 = *(v1 + 440);

  return _swift_task_switch(sub_F9E4, v7, v6);
}

uint64_t sub_F9E4()
{
  v80 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);

  if (sub_2990(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 344);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    sub_10E90(v4, &qword_20890, &qword_159B0);
  }

  else
  {
    v5 = *(v0 + 304);
    v6 = *(v0 + 312);
    v7 = *(v0 + 288);
    v8 = *(v0 + 296);
    v9 = *(v0 + 280);
    v71 = *(v0 + 272);
    v73 = v8;
    v74 = *(v0 + 264);
    v10 = *(v0 + 240);
    v75 = *(v0 + 256);
    v76 = *(v0 + 248);
    (*(*(v0 + 360) + 32))(*(v0 + 368), *(v0 + 344), *(v0 + 352));
    sub_14178();
    sub_144A8();
    v72 = *(v5 + 8);
    v72(v6, v8);
    v11 = sub_144D8();
    v13 = v12;
    (*(v9 + 8))(v7, v71);
    v14 = *(v10 + 32);
    *(v0 + 16) = *(v10 + 16);
    *(v0 + 32) = v14;
    *(v0 + 136) = v11;
    *(v0 + 144) = v13;
    sub_2104(&qword_20830, &qword_15918);
    sub_14968();
    sub_14178();
    sub_144B8();
    v72(v6, v73);
    v15 = sub_14518();
    v17 = v16;
    (*(v75 + 8))(v74, v76);
    v19 = *(v10 + 40);
    v18 = *(v10 + 48);
    v20 = *(v10 + 56);
    *(v0 + 40) = v19;
    *(v0 + 48) = v18;
    *(v0 + 56) = v20;
    *(v0 + 152) = v15;
    *(v0 + 160) = v17;
    sub_14968();
    v21 = *(v10 + 72);
    *(v0 + 168) = *(v10 + 64);
    *(v0 + 176) = v21;
    *(v0 + 232) = 0x7FF0000000000000;
    sub_2104(&qword_20840, &qword_15938);
    sub_14968();
    v22 = *(v10 + 88);
    v23 = *(v10 + 96);
    *(v0 + 64) = *(v10 + 80);
    *(v0 + 72) = v22;
    *(v0 + 80) = v23;
    *(v0 + 216) = 0;
    *(v0 + 224) = 1;
    sub_2104(&qword_20848, &qword_15940);
    sub_14968();
    if (qword_20180 != -1)
    {
      sub_1884();
    }

    v24 = *(v0 + 384);
    v25 = *(v0 + 240);
    v26 = sub_14568();
    sub_1750(v26, static Logger.uiCategory);
    sub_104B0(v25, v24);
    v27 = sub_14548();
    v28 = sub_14D98();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 384);
    if (v29)
    {
      v31 = swift_slowAlloc();
      v77 = v18;
      v78 = swift_slowAlloc();
      v32 = v78;
      *v31 = 136315138;
      v33 = *(v30 + 56);
      *(v0 + 112) = *(v30 + 40);
      *(v0 + 128) = v33;
      sub_14958();
      v34 = v20;
      v35 = v19;
      v36 = *(v0 + 200);
      v37 = *(v0 + 208);
      sub_10E34(v30);
      v38 = sub_D340(v36, v37, &v78);
      v19 = v35;
      v20 = v34;

      *(v31 + 4) = v38;
      _os_log_impl(&dword_0, v27, v28, "Showing suggestion with loggingId - %s", v31, 0xCu);
      sub_206C(v32);
      v18 = v77;
      sub_1107C();
      sub_1107C();
    }

    else
    {

      sub_10E34(v30);
    }

    v39 = *(v0 + 368);
    v40 = *(v0 + 240);
    v41 = sub_14188();
    v41();

    v78 = 0x746E694869726953;
    v79 = 0xE900000000000023;
    *(v0 + 88) = v19;
    *(v0 + 96) = v18;
    *(v0 + 104) = v20;
    sub_14958();
    sub_14D08(*(v0 + 184));

    v43 = v78;
    v42 = v79;
    v44 = sub_2104(&qword_20570, &qword_15730);
    sub_C17C(v44);
    v46 = *(v45 + 64) + 15;
    swift_task_alloc();
    sub_14A78();
    v47 = sub_14A88();
    v48 = objc_allocWithZone(sub_11094(v47));
    v49 = sub_1105C(v43, v42);

    v50 = *v40;
    if (!*v40)
    {
      v70 = *(*(v0 + 240) + 8);
      sub_14C98();
      sub_10FEC(&qword_20188);
      return sub_1103C();
    }

    v52 = *(v0 + 416);
    v51 = *(v0 + 424);
    v53 = *(v0 + 408);
    v55 = *(v0 + 360);
    v54 = *(v0 + 368);
    v56 = *(v0 + 352);
    v57 = v50;
    sub_14C88();

    (*(v55 + 8))(v54, v56);
    (*(v52 + 8))(v51, v53);
  }

  v58 = *(v0 + 424);
  v59 = *(v0 + 392);
  v60 = *(v0 + 400);
  v61 = *(v0 + 384);
  v62 = *(v0 + 368);
  v64 = *(v0 + 336);
  v63 = *(v0 + 344);
  v65 = *(v0 + 312);
  v66 = *(v0 + 288);
  v67 = *(v0 + 264);

  v68 = *(v0 + 8);

  return v68();
}

void sub_FFE8(uint64_t a1)
{
  v2 = sub_14128();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SiriHintsSnippetView();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_20180 != -1)
  {
    swift_once();
  }

  v13 = sub_14568();
  sub_1750(v13, static Logger.uiCategory);
  sub_104B0(a1, v12);
  v14 = sub_14548();
  v15 = sub_14DA8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v7;
    v41._countAndFlagsBits = v17;
    v18 = v17;
    *v16 = 136315138;
    v19 = *(v12 + 7);
    v42 = *(v12 + 40);
    v43 = v19;
    sub_2104(&qword_20830, &qword_15918);
    sub_14958();
    v20 = v44;
    v21 = v45;
    sub_10E34(v12);
    v22 = sub_D340(v20, v21, &v41._countAndFlagsBits);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v14, v15, "Component was tapped for suggestion with loggingID: %s", v16, 0xCu);
    sub_206C(v18);
    v7 = v40;
  }

  else
  {

    sub_10E34(v12);
  }

  (*(v3 + 104))(v7, enum case for Command.noOp(_:), v2);
  v23 = sub_14AA8();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v25);
  (*(v27 + 104))(&v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for InteractionType.buttonTapped(_:));
  v28 = sub_2104(&qword_20570, &qword_15730);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28 - 8, v30);
  v32 = &v40 - v31;
  sub_14A78();
  v33 = sub_14A88();
  sub_2AD0(v32, 0, 1, v33);
  v44 = 0x746E694869726953;
  v45 = 0xE900000000000023;
  v34 = *(a1 + 56);
  v42 = *(a1 + 40);
  v43 = v34;
  sub_2104(&qword_20830, &qword_15918);
  sub_14958();
  sub_14D08(v41);

  v35 = objc_allocWithZone(sub_14BE8());
  v36 = sub_14BD8();
  if (*a1)
  {
    v37 = v36;
    v38 = *a1;
    sub_14C88();
  }

  else
  {
    v39 = *(a1 + 8);
    sub_14C98();
    sub_10944(&qword_20188, &type metadata accessor for Context);
    sub_14628();
    __break(1u);
  }
}

uint64_t sub_104B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriHintsSnippetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriHintsSnippetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1057C()
{
  v2 = type metadata accessor for SiriHintsSnippetView();
  sub_C17C(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10644;

  return sub_F1F8(v0 + v4);
}

uint64_t sub_10644()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10758()
{
  result = qword_20858;
  if (!qword_20858)
  {
    sub_2240(&qword_20828, &qword_15910);
    sub_107D8();
    sub_1098C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20858);
  }

  return result;
}

unint64_t sub_107D8()
{
  result = qword_20860;
  if (!qword_20860)
  {
    sub_2240(&qword_20850, &qword_15948);
    sub_10858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20860);
  }

  return result;
}

unint64_t sub_10858()
{
  result = qword_20868;
  if (!qword_20868)
  {
    sub_2240(&qword_20838, &qword_15930);
    sub_108F0();
    sub_10944(&qword_20878, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20868);
  }

  return result;
}

unint64_t sub_108F0()
{
  result = qword_20870;
  if (!qword_20870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20870);
  }

  return result;
}

uint64_t sub_10944(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1098C()
{
  result = qword_20230;
  if (!qword_20230)
  {
    sub_2240(&qword_20238, qword_15460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20230);
  }

  return result;
}

uint64_t sub_109E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = (type metadata accessor for SiriHintsSnippetView() - 8);
  v12 = *(*v11 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = *(*v11 + 64);
  v15 = sub_14468();
  sub_DA94(v15);
  v17 = v16;
  v19 = v18;
  v20 = *(v17 + 80);
  v21 = (v13 + v14 + v20) & ~v20;
  v22 = *(v19 + 64);
  v23 = v12 | v20;
  v24 = v10 + v13;

  v25 = *(v24 + 24);

  v26 = *(v24 + 32);

  v27 = *(v24 + 48);

  v28 = *(v24 + 56);

  v29 = *(v24 + 72);

  v30 = *(v24 + 96);

  v31 = *(v24 + 104);

  v32 = v11[12];
  v33 = sub_14368();
  sub_C0CC(v33);
  (*(v34 + 8))(v24 + v32);
  (*(v17 + 8))(v10 + v21, v15);

  return _swift_deallocObject(v10, v21 + v22, v23 | 7, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_10B74()
{
  v2 = *(type metadata accessor for SiriHintsSnippetView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_14468();
  sub_C17C(v5);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10FDC;

  return sub_EA38(v0 + v3, v0 + v7);
}

uint64_t sub_10CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = type metadata accessor for SiriHintsSnippetView();
  sub_C0DC(v12);
  v14 = *(v13 + 80);
  v15 = (v14 + 16) & ~v14;
  v17 = *(v16 + 64);

  v18 = *(v11 + v15 + 24);

  v19 = *(v11 + v15 + 32);

  v20 = *(v11 + v15 + 48);

  v21 = *(v11 + v15 + 56);

  v22 = *(v11 + v15 + 72);

  v23 = *(v11 + v15 + 96);

  v24 = *(v11 + v15 + 104);

  v25 = *(v10 + 48);
  v26 = sub_14368();
  sub_C0CC(v26);
  (*(v27 + 8))(v11 + v15 + v25);

  return _swift_deallocObject(v11, v15 + v17, v14 | 7, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_10DC4(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SiriHintsSnippetView();
  sub_C17C(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_10E34(uint64_t a1)
{
  v2 = type metadata accessor for SiriHintsSnippetView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10E90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2104(a2, a3);
  sub_C0CC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_10EEC()
{
  result = qword_208A0;
  if (!qword_208A0)
  {
    sub_2240(&qword_208A8, &qword_159C0);
    sub_2240(&qword_20838, &qword_15930);
    sub_10858();
    swift_getOpaqueTypeConformance2();
    sub_2240(&qword_20828, &qword_15910);
    sub_10758();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_208A0);
  }

  return result;
}

uint64_t sub_10FEC(unint64_t *a1)
{

  return sub_10944(a1, &type metadata accessor for Context);
}

uint64_t sub_1103C()
{

  return sub_14628();
}

uint64_t sub_1105C(uint64_t a1, uint64_t a2)
{

  return RFComponentShown.init(componentName:componentType:componentIndex:)(a1, a2, v2, 0, 1);
}

uint64_t sub_1107C()
{
}

uint64_t sub_11094(uint64_t a1)
{
  sub_2AD0(v1, 0, 1, a1);

  return type metadata accessor for RFComponentShown(0);
}

uint64_t sub_110E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_143D8();
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_14A68();
      v11 = *(a3 + 24);
    }

    return sub_2990(a1 + v11, a2, v10);
  }
}

uint64_t sub_111CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_143D8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_14A68();
      v10 = *(a4 + 24);
    }

    return sub_2AD0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for SiriFeatureAnnouncementSnippetView()
{
  result = qword_20908;
  if (!qword_20908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_112E0()
{
  sub_2C60();
  if (v0 <= 0x3F)
  {
    sub_143D8();
    if (v1 <= 0x3F)
    {
      sub_14A68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_11398(uint64_t *a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  v4 = sub_C154(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  v44 = sub_2104(&qword_209B0, &qword_15AF0);
  sub_DA94(v44);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_10FE0();
  __chkstk_darwin(v14, v15);
  v17 = &v44 - v16;
  v18 = sub_2104(&qword_209B8, &qword_15AF8);
  sub_DA94(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_10FE0();
  __chkstk_darwin(v23, v24);
  v26 = &v44 - v25;
  sub_13374(v2, &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = swift_allocObject();
  sub_133DC(&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  sub_2104(&qword_209C0, &qword_15B00);
  sub_13A2C();
  sub_14988();
  v29 = sub_14608();
  v30 = sub_DA94(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30, v35);
  sub_13ED8();
  v38 = v37 - v36;
  sub_145F8();
  v39 = sub_2838(&qword_209F0, &qword_209B8, &qword_15AF8);
  v40 = sub_13B6C(&qword_209F8, &type metadata accessor for PlainButtonStyle);
  sub_148C8();
  (*(v32 + 8))(v38, v29);
  (*(v20 + 8))(v26, v18);
  v46 = v18;
  v47 = v29;
  v48 = v39;
  v49 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v44;
  v42 = sub_14828();
  (*(v11 + 8))(v17, v41);
  v43 = v45;
  v45[3] = &type metadata for AnyView;
  v43[4] = &protocol witness table for AnyView;
  *v43 = v42;
  sub_13F5C();
}

uint64_t sub_11724(uint64_t a1)
{
  v34 = a1;
  v35 = sub_149C8();
  v38 = *(v35 - 8);
  v1 = *(v38 + 64);
  __chkstk_darwin(v35, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_149E8();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8, v13);
  v14 = sub_14A08();
  v33 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = &v31 - v22;
  sub_13C00();
  v32 = sub_14DD8();
  sub_149F8();
  sub_14A18();
  v24 = *(v15 + 8);
  v24(v20, v14);
  sub_13374(v34, &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = swift_allocObject();
  sub_133DC(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  aBlock[4] = sub_13D4C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11BAC;
  aBlock[3] = &unk_1D690;
  v27 = _Block_copy(aBlock);

  sub_149D8();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_13E50(&qword_20A10, &type metadata accessor for DispatchWorkItemFlags);
  sub_2104(&qword_20A18, &qword_15B58);
  sub_13DEC();
  v28 = v35;
  sub_14DE8();
  v29 = v32;
  sub_14DC8();
  _Block_release(v27);

  (*(v38 + 8))(v4, v28);
  (*(v36 + 8))(v9, v37);
  return (v24)(v23, v33);
}

uint64_t sub_11B50(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  sub_2104(&qword_203E8, &qword_155D0);
  return sub_14968();
}

uint64_t sub_11BAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_11BF0@<X0>(uint64_t *a1@<X8>)
{
  sub_14918();
  v2 = sub_2104(&qword_20A00, &qword_15B20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v15 - v5;
  sub_14708();
  v7 = sub_14718();
  sub_2AD0(v6, 0, 1, v7);
  v8 = sub_14928();

  sub_B858(v6, &qword_20A00, &qword_15B20);
  v9 = sub_14908();
  v10 = (a1 + *(sub_2104(&qword_209C0, &qword_15B00) + 36));
  v11 = *(sub_2104(&qword_209E8, &qword_15B18) + 28);
  v12 = enum case for Image.Scale.medium(_:);
  v13 = sub_14938();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  result = swift_getKeyPath();
  *v10 = result;
  *a1 = v8;
  a1[1] = v9;
  return result;
}

void sub_11D74(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  v10 = sub_2104(&qword_20988, &qword_15AA8);
  sub_C17C(v10);
  v12 = *(v11 + 64);
  sub_10FE0();
  __chkstk_darwin(v13, v14);
  sub_13F24();
  v15 = *(v6 + 28);
  sub_143A8();
  if (!v16)
  {
    if (qword_20180 != -1)
    {
      sub_1884();
    }

    v22 = sub_14568();
    sub_1750(v22, static Logger.uiCategory);
    v23 = sub_14548();
    v24 = sub_14DB8();
    if (!sub_13F08(v24))
    {
      goto LABEL_15;
    }

    v25 = sub_DB84();
    sub_DBA8(v25);
    v28 = "Button label is nil, returning empty announcement view";
    goto LABEL_14;
  }

  v58 = v7;
  v17 = sub_143B8();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    sub_13FB8();
    v21 = sub_13FC8();
    if (sub_2990(v2, 1, v21) != 1)
    {
      sub_B858(v2, &qword_20988, &qword_15AA8);
      v56 = sub_2104(&qword_20990, &qword_15AB0);
      v57 = v51;
      v32 = *(*(v56 - 8) + 64);
      sub_10FE0();
      __chkstk_darwin(v33, v34);
      sub_13F24();
      v35 = sub_146E8();
      v55 = v51;
      v36 = sub_C17C(v35);
      v38 = *(v37 + 64);
      __chkstk_darwin(v36, v39);
      sub_13ED8();
      sub_146D8();
      sub_146C8();
      sub_146B8();

      sub_146C8();
      sub_146B8();
      sub_146C8();
      sub_146F8();
      v53 = sub_14808();
      v54 = v40;
      v42 = v41;
      v52 = v43;
      KeyPath = swift_getKeyPath();
      sub_13374(v3, &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v45 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v46 = swift_allocObject();
      sub_133DC(&v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v46 + v45);
      v47 = (v46 + ((v8 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v47 = v19;
      v47[1] = v20;
      v48 = (v2 + *(v56 + 36));
      v49 = *(sub_2104(&qword_20998, &qword_15AE8) + 28);
      sub_145D8();
      *v48 = KeyPath;
      *v2 = v53;
      *(v2 + 8) = v42;
      *(v2 + 16) = v52 & 1;
      *(v2 + 24) = v54;
      sub_13830();
      v50 = sub_14828();
      sub_B858(v2, &qword_20990, &qword_15AB0);
      *(a1 + 24) = &type metadata for AnyView;
      *(a1 + 32) = &protocol witness table for AnyView;
      *a1 = v50;
      goto LABEL_16;
    }

    sub_B858(v2, &qword_20988, &qword_15AA8);
  }

  else
  {
  }

  if (qword_20180 != -1)
  {
    sub_1884();
  }

  v29 = sub_14568();
  sub_1750(v29, static Logger.uiCategory);
  v23 = sub_14548();
  v30 = sub_14DB8();
  if (sub_13F08(v30))
  {
    v31 = sub_DB84();
    sub_DBA8(v31);
    v28 = "Button link is nil, returning empty announcement view";
LABEL_14:
    sub_13EE8(&dword_0, v26, v27, v28);
    sub_13F40();
  }

LABEL_15:

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
LABEL_16:
  sub_13F5C();
}

id sub_12234@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v37[1] = a2;
  v3 = sub_2104(&qword_20988, &qword_15AA8);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = v37 - v10;
  v12 = sub_14438();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = v37 - v20;
  v22 = a1 + *(type metadata accessor for SiriFeatureAnnouncementSnippetView() + 20);
  sub_14378();
  (*(v13 + 104))(v18, enum case for FeatureType.panIndia(_:), v12);
  LOBYTE(v22) = sub_125D8();
  v23 = *(v13 + 8);
  v23(v18, v12);
  v23(v21, v12);
  if (v22)
  {
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v25 = result;
    sub_13FB8();
    v26 = sub_13FC8();
    v28 = 0;
    if (sub_2990(v11, 1, v26) != 1)
    {
      sub_13FA8(v27);
      v28 = v29;
      (*(*(v26 - 8) + 8))(v11, v26);
    }

    v30 = sub_14CB8();
    sub_13990(v28, v30, v25);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v31 = result;
  sub_13FB8();
  v32 = sub_13FC8();
  v34 = 0;
  if (sub_2990(v8, 1, v32) != 1)
  {
    sub_13FA8(v33);
    v34 = v35;
    (*(*(v32 - 8) + 8))(v8, v32);
  }

  v36 = sub_14CB8();
  sub_13990(v34, v36, v31);

  return sub_145C8();
}

uint64_t sub_125D8()
{
  sub_14438();
  sub_13E50(&qword_20A28, &type metadata accessor for FeatureType);
  sub_14D38();
  sub_14D38();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_14E38();
  }

  return v1 & 1;
}

void sub_126B8(uint64_t a1@<X8>)
{
  v2 = sub_14048();
  v3 = sub_DA94(v2);
  v137 = v4;
  v138 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  sub_13ED8();
  v136 = v9 - v8;
  v10 = sub_14138();
  v11 = sub_DA94(v10);
  v134 = v12;
  v135 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_13ED8();
  v18 = (v17 - v16);
  v19 = sub_14168();
  v20 = sub_C17C(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  sub_13ED8();
  v133 = v25 - v24;
  v26 = sub_14438();
  v27 = sub_DA94(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  v33 = __chkstk_darwin(v27, v32);
  v35 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v36);
  v38 = &v126 - v37;
  v39 = *(type metadata accessor for SiriFeatureAnnouncementSnippetView() + 20);
  v40 = sub_143C8();
  if (v41)
  {
    v130 = v40;
    v131 = v41;
    v132 = a1;
    sub_14378();
    (*(v29 + 104))(v35, enum case for FeatureType.panIndia(_:), v26);
    v42 = sub_125D8();
    v43 = *(v29 + 8);
    v43(v35, v26);
    v43(v38, v26);
    if (v42)
    {
      sub_11D74(&v156);
      if (!v158)
      {

        sub_B858(&v156, &qword_20980, &qword_15AA0);
        if (qword_20180 != -1)
        {
          sub_1884();
        }

        v118 = sub_14568();
        sub_1750(v118, static Logger.uiCategory);
        v119 = sub_14548();
        v120 = sub_14DB8();
        v121 = sub_13F08(v120);
        v122 = v132;
        if (v121)
        {
          v123 = sub_DB84();
          sub_DBA8(v123);
          sub_13EE8(&dword_0, v124, v125, "Announcement button is nil, returning empty announcement view");
          sub_13F40();
        }

        v115 = sub_14C78();
        v116 = v122;
        v117 = 1;
        goto LABEL_14;
      }

      sub_B858(&v156, &qword_20980, &qword_15AA0);
      v156 = sub_14398();
      v157 = v44;
      sub_A8E0();
      v45 = sub_14818();
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v158 = &type metadata for Text;
      v159 = &protocol witness table for Text;
      sub_13F34();
      v52 = swift_allocObject();
      v155 = 0;
      v156 = v52;
      *(v52 + 16) = v45;
      *(v52 + 24) = v47;
      *(v52 + 32) = v49 & 1;
      *(v52 + 40) = v51;
      v153 = 0u;
      v154 = 0u;
      v149 = sub_14388();
      v150 = v53;
      v54 = sub_14818();
      v56 = v55;
      LOBYTE(v51) = v57;
      v59 = v58;
      v151 = &type metadata for Text;
      v152 = &protocol witness table for Text;
      sub_13F34();
      v60 = swift_allocObject();
      v149 = v60;
      *(v60 + 16) = v54;
      *(v60 + 24) = v56;
      *(v60 + 32) = v51 & 1;
      *(v60 + 40) = v59;
      sub_11D74(v147);
    }

    else
    {
      v156 = sub_14398();
      v157 = v72;
      sub_A8E0();
      v73 = sub_14818();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v158 = &type metadata for Text;
      v159 = &protocol witness table for Text;
      sub_13F34();
      v80 = swift_allocObject();
      v155 = 0;
      v156 = v80;
      *(v80 + 16) = v73;
      *(v80 + 24) = v75;
      *(v80 + 32) = v77 & 1;
      *(v80 + 40) = v79;
      v47 = v147;
      v153 = 0u;
      v154 = 0u;
      v149 = sub_14388();
      v150 = v81;
      v82 = sub_14818();
      v84 = v83;
      LOBYTE(v75) = v85;
      v87 = v86;
      v151 = &type metadata for Text;
      v152 = &protocol witness table for Text;
      sub_13F34();
      v88 = swift_allocObject();
      v149 = v88;
      *(v88 + 16) = v82;
      *(v88 + 24) = v84;
      *(v88 + 32) = v75 & 1;
      *(v88 + 40) = v87;
      v148 = 0;
      memset(v147, 0, sizeof(v147));
    }

    sub_11398(v146);
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    v89 = sub_2104(&qword_20978, &qword_15A98);
    v129 = &v126;
    v127 = sub_DA94(v89);
    v128 = v90;
    v92 = *(v91 + 64);
    sub_10FE0();
    __chkstk_darwin(v93, v94);
    sub_13F24();
    v95 = sub_14A28();
    v126 = &v126;
    v96 = sub_DA94(v95);
    v98 = v97;
    v100 = *(v99 + 64);
    __chkstk_darwin(v96, v101);
    sub_13ED8();
    v104 = v103 - v102;
    *v18 = sub_14218();
    v18[1] = v105;
    v107 = v134;
    v106 = v135;
    (*(v134 + 104))(v18, enum case for RFImage.Bundle.Location.path(_:), v135);
    sub_14148();

    (*(v107 + 8))(v18, v106);
    sub_14A38();
    v108 = v136;
    v109 = v137;
    v110 = v138;
    (*(v137 + 104))(v136, enum case for ImageElement.ImageStyle.image5(_:), v138);
    v111 = sub_13B6C(&qword_204F8, &type metadata accessor for RFImageView);
    sub_14838();
    (*(v109 + 8))(v108, v110);
    (*(v98 + 8))(v104, v95);
    v139 = v95;
    v140 = v111;
    swift_getOpaqueTypeConformance2();
    v112 = v127;
    v113 = sub_14828();
    (*(v128 + 8))(v47, v112);
    v141 = &type metadata for AnyView;
    v142 = &protocol witness table for AnyView;
    v139 = v113;
    v114 = v132;
    sub_14C68();
    v115 = sub_14C78();
    v116 = v114;
    v117 = 0;
LABEL_14:
    sub_2AD0(v116, v117, 1, v115);
    sub_13F5C();
    return;
  }

  if (qword_20180 != -1)
  {
    sub_1884();
  }

  v61 = sub_14568();
  sub_1750(v61, static Logger.uiCategory);
  v62 = sub_14548();
  v63 = sub_14DB8();
  if (sub_13F08(v63))
  {
    v64 = sub_DB84();
    sub_DBA8(v64);
    sub_13EE8(&dword_0, v65, v66, "Announcement icon is nil, returning empty announcement view");
    sub_13F40();
  }

  sub_14C78();
  sub_13F5C();

  sub_2AD0(v67, v68, v69, v70);
}

uint64_t sub_12F4C()
{
  v1 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  v2 = sub_C154(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_13374(v0, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_133DC(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_2104(&qword_20948, &qword_15A78);
  sub_134AC();
  return sub_14A98();
}

uint64_t sub_13068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_14438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  LOBYTE(v33) = *a1;
  v34 = v10;
  sub_2104(&qword_203E8, &qword_155D0);
  sub_14958();
  v11 = v32;
  v12 = sub_2104(&qword_20970, &qword_15A90);
  v14 = v12;
  if (v11 != 1)
  {
    return sub_2AD0(a2, 1, 1, v12);
  }

  v31 = v28;
  v30 = *(v12 - 8);
  v15 = *(v30 + 64);
  __chkstk_darwin(v12, v13);
  v29 = a2;
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = sub_2104(&qword_20958, &unk_15A80);
  v28[1] = v28;
  v18 = (*(*(v28[0] - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28[0], v19);
  v21 = v28 - v20;
  sub_126B8(v28 - v20);
  v22 = a1 + *(type metadata accessor for SiriFeatureAnnouncementSnippetView() + 20);
  sub_14378();
  v23 = sub_14428();
  v25 = v24;
  (*(v5 + 8))(v9, v4);
  v33 = 0xD000000000000014;
  v34 = 0x80000000000176B0;
  v35._countAndFlagsBits = v23;
  v35._object = v25;
  sub_14D08(v35);

  sub_13554();
  sub_14858();

  sub_B858(v21, &qword_20958, &unk_15A80);
  v26 = v29;
  (*(v30 + 32))(v29, v17, v14);
  return sub_2AD0(v26, 0, 1, v14);
}

uint64_t sub_13374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_133DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13440@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  sub_C17C(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_13068(v5, a1);
}

unint64_t sub_134AC()
{
  result = qword_20950;
  if (!qword_20950)
  {
    sub_2240(&qword_20948, &qword_15A78);
    sub_2240(&qword_20958, &unk_15A80);
    sub_13554();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20950);
  }

  return result;
}

unint64_t sub_13554()
{
  result = qword_20960;
  if (!qword_20960)
  {
    sub_2240(&qword_20958, &unk_15A80);
    sub_13B6C(&qword_20968, &type metadata accessor for SummaryItemDetailedTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20960);
  }

  return result;
}

uint64_t sub_135E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_AF3C(*(v10 + 16), *(v10 + 24), *(v10 + 32));
  v11 = *(v10 + 40);

  sub_13F34();

  return _swift_deallocObject(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_13670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  sub_C0DC(v12);
  v14 = v13;
  v16 = v15;
  v17 = *(v14 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = (*(v16 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v11 + v18;
  v21 = *(v11 + v18 + 8);

  v22 = *(v10 + 28);
  v23 = sub_143D8();
  sub_C0B8(v23);
  (*(v24 + 8))(v20 + v22);
  v25 = *(v10 + 32);
  v26 = sub_14A68();
  sub_C0B8(v26);
  (*(v27 + 8))(v20 + v25);
  v28 = *(v11 + v19 + 8);

  return _swift_deallocObject(v11, v19 + 16, v17 | 7, v29, v30, v31, v32, v33, a9, a10);
}

id sub_13788@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  sub_C154(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_12234(v1 + v8, a1);
}

unint64_t sub_13830()
{
  result = qword_209A0;
  if (!qword_209A0)
  {
    sub_2240(&qword_20990, &qword_15AB0);
    sub_2838(&qword_209A8, &qword_20998, &qword_15AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_209A0);
  }

  return result;
}

uint64_t sub_138D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  sub_DA94(v8);
  v10 = *(v9 + 64);
  sub_10FE0();
  __chkstk_darwin(v11, v12);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1);
  return a6(v14);
}

id sub_13990(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_14CA8().super.isa;

  v6 = [a3 openSensitiveURL:a1 withOptions:isa];

  return v6;
}

unint64_t sub_13A2C()
{
  result = qword_209C8;
  if (!qword_209C8)
  {
    sub_2240(&qword_209C0, &qword_15B00);
    sub_13ACC();
    sub_2838(&qword_209E0, &qword_209E8, &qword_15B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_209C8);
  }

  return result;
}

unint64_t sub_13ACC()
{
  result = qword_209D0;
  if (!qword_209D0)
  {
    sub_2240(&qword_209D8, &qword_15B08);
    sub_2838(&qword_20240, &qword_20248, &qword_15B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_209D0);
  }

  return result;
}

uint64_t sub_13B6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_13C00()
{
  result = qword_20A08;
  if (!qword_20A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_20A08);
  }

  return result;
}

uint64_t sub_13C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  sub_C0DC(v12);
  v14 = *(v13 + 80);
  v15 = (v14 + 16) & ~v14;
  v17 = *(v16 + 64);
  v18 = *(v11 + v15 + 8);

  v19 = *(v10 + 28);
  v20 = sub_143D8();
  sub_C0B8(v20);
  (*(v21 + 8))(v11 + v15 + v19);
  v22 = *(v10 + 32);
  v23 = sub_14A68();
  sub_C0B8(v23);
  (*(v24 + 8))(v11 + v15 + v22);

  return _swift_deallocObject(v11, v15 + v17, v14 | 7, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_13D64(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SiriFeatureAnnouncementSnippetView();
  sub_C17C(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_13DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_13DEC()
{
  result = qword_20A20;
  if (!qword_20A20)
  {
    sub_2240(&qword_20A18, &qword_15B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20A20);
  }

  return result;
}

uint64_t sub_13E50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_13EE8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_13F08(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_13F40()
{
}