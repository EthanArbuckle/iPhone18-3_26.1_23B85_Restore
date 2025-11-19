__n128 sub_14D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_14EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_15C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C78(&qword_100A8, &qword_8D40);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v30 - v4;
  v6 = sub_82E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_82F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_8324();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_8314();
  (*(v12 + 104))(v15, enum case for MatchingFlowState.listening(_:), v11);
  sub_8304();

  sub_82D4();
  LOBYTE(v11) = sub_8394();
  sub_8364();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v7 + 16))(v5, v10, v6);
  v27 = &v5[*(v2 + 36)];
  *v27 = v11;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  sub_1CC0();
  v28 = sub_8404();

  result = (*(v7 + 8))(v10, v6);
  *a1 = v28;
  return result;
}

uint64_t sub_1880(uint64_t a1, id *a2)
{
  result = sub_8444();
  *a2 = 0;
  return result;
}

uint64_t sub_18F8(uint64_t a1, id *a2)
{
  v3 = sub_8454();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1978@<X0>(void *a1@<X8>)
{
  sub_8464();
  v2 = sub_8434();

  *a1 = v2;
  return result;
}

uint64_t sub_19BC()
{
  v1 = *v0;
  sub_8464();
  v2 = sub_84A4();

  return v2;
}

uint64_t sub_19F8()
{
  v1 = *v0;
  sub_8464();
  sub_8484();
}

Swift::Int sub_1A4C()
{
  v1 = *v0;
  sub_8464();
  sub_8624();
  sub_8484();
  v2 = sub_8644();

  return v2;
}

uint64_t sub_1AC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_8464();
  v6 = v5;
  if (v4 == sub_8464() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_85C4();
  }

  return v9 & 1;
}

uint64_t sub_1B48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_8434();

  *a2 = v5;
  return result;
}

uint64_t sub_1B90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_8464();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1BBC(uint64_t a1)
{
  v2 = sub_1EF8(&qword_100E0, type metadata accessor for SHMediaItemProperty);
  v3 = sub_1EF8(&qword_100E8, type metadata accessor for SHMediaItemProperty);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1C78(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1CC0()
{
  result = qword_100B0;
  if (!qword_100B0)
  {
    sub_1D7C(&qword_100A8, &qword_8D40);
    sub_1EF8(&qword_100B8, &type metadata accessor for MatchingFlowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100B0);
  }

  return result;
}

uint64_t sub_1D7C(uint64_t *a1, uint64_t *a2)
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

void type metadata accessor for SHMediaItemProperty()
{
  if (!qword_100C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100C0);
    }
  }
}

uint64_t sub_1EF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C78(&qword_100F0, qword_8CB0);
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

uint64_t sub_203C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C78(&qword_100F0, qword_8CB0);
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

uint64_t type metadata accessor for ShazamSuccessfulMatchView()
{
  result = qword_10150;
  if (!qword_10150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214C()
{
  sub_21D0();
  if (v0 <= 0x3F)
  {
    sub_2228();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21D0()
{
  if (!qword_10160)
  {
    type metadata accessor for ShazamSuccessfulMatchModel();
    v0 = sub_83F4();
    if (!v1)
    {
      atomic_store(v0, &qword_10160);
    }
  }
}

void sub_2228()
{
  if (!qword_10168)
  {
    sub_8414();
    sub_43F4(&unk_10170, &type metadata accessor for Context);
    v0 = sub_8384();
    if (!v1)
    {
      atomic_store(v0, &qword_10168);
    }
  }
}

uint64_t sub_22D8@<X0>(uint64_t *a1@<X8>)
{
  v137 = a1;
  v136 = sub_1C78(&qword_100A8, &qword_8D40);
  v1 = (*(*(v136 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v135 = &v115 - v2;
  v3 = sub_82E4();
  v133 = *(v3 - 8);
  v134 = v3;
  v4 = *(v133 + 64);
  (__chkstk_darwin)();
  v132 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_82F4();
  v130 = *(v6 - 8);
  v131 = v6;
  v7 = *(v130 + 64);
  (__chkstk_darwin)();
  v129 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_82C4();
  v139 = *(v128 - 8);
  v9 = *(v139 + 64);
  (__chkstk_darwin)();
  v138 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for ShazamSuccessfulMatchModel();
  v12 = *(matched - 8);
  v120 = (matched - 8);
  v13 = *(v12 + 64);
  v14 = (__chkstk_darwin)();
  v127 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v126 = &v115 - v17;
  v18 = __chkstk_darwin(v16);
  v124 = &v115 - v19;
  v20 = __chkstk_darwin(v18);
  v122 = &v115 - v21;
  v22 = __chkstk_darwin(v20);
  v121 = &v115 - v23;
  v24 = __chkstk_darwin(v22);
  v119 = &v115 - v25;
  v26 = __chkstk_darwin(v24);
  v118 = &v115 - v27;
  v28 = __chkstk_darwin(v26);
  v116 = &v115 - v29;
  v30 = __chkstk_darwin(v28);
  v115 = &v115 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v115 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v115 - v36;
  __chkstk_darwin(v35);
  v39 = (&v115 - v38);
  v125 = sub_443C(0, &qword_101A0, SHMediaItem_ptr);
  sub_1C78(&qword_101A8, &qword_8D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8C80;
  *(inited + 32) = SHMediaItemShazamID;
  v123 = inited + 32;
  v41 = SHMediaItemShazamID;
  sub_1C78(&qword_100F0, qword_8CB0);
  sub_83E4();
  v43 = *v39;
  v42 = v39[1];

  sub_36B4(v39);
  v44 = sub_1C78(&qword_101B0, &qword_8D50);
  *(inited + 40) = v43;
  *(inited + 48) = v42;
  *(inited + 64) = v44;
  *(inited + 72) = SHMediaItemTitle;
  v45 = SHMediaItemTitle;
  sub_83E4();
  v47 = *(v37 + 2);
  v46 = *(v37 + 3);

  sub_36B4(v37);
  *(inited + 80) = v47;
  *(inited + 88) = v46;
  *(inited + 104) = v44;
  *(inited + 112) = SHMediaItemSubtitle;
  v48 = SHMediaItemSubtitle;
  sub_83E4();
  v50 = *(v34 + 4);
  v49 = *(v34 + 5);

  sub_36B4(v34);
  *(inited + 120) = v50;
  *(inited + 128) = v49;
  *(inited + 144) = v44;
  *(inited + 152) = SHMediaItemArtist;
  v51 = SHMediaItemArtist;
  v52 = v115;
  sub_83E4();
  v54 = *(v52 + 48);
  v53 = *(v52 + 56);

  sub_36B4(v52);
  *(inited + 160) = v54;
  *(inited + 168) = v53;
  *(inited + 184) = v44;
  *(inited + 192) = SHMediaItemGenres;
  v117 = v44;
  sub_1C78(&qword_101B8, &qword_8D58);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_8C90;
  v56 = SHMediaItemGenres;
  v57 = v116;
  sub_83E4();
  v59 = v57[8];
  v58 = v57[9];

  sub_36B4(v57);
  *(v55 + 32) = v59;
  *(v55 + 40) = v58;
  v60 = sub_1C78(&qword_101C0, &qword_8D60);
  *(inited + 200) = v55;
  *(inited + 224) = v60;
  *(inited + 232) = SHMediaItemAppleMusicID;
  v61 = SHMediaItemAppleMusicID;
  sub_83E4();
  v63 = v57[10];
  v62 = v57[11];

  sub_36B4(v57);
  *(inited + 240) = v63;
  *(inited + 248) = v62;
  *(inited + 264) = v44;
  *(inited + 272) = SHMediaItemAppleMusicURL;
  v64 = SHMediaItemAppleMusicURL;
  v65 = v118;
  sub_83E4();
  v66 = v120;
  v67 = v120[12];
  v68 = sub_1C78(&qword_101C8, &qword_8D68);
  *(inited + 304) = v68;
  v69 = sub_3710((inited + 280));
  sub_4488(v65 + v67, v69, &qword_101C8, &qword_8D68);
  sub_36B4(v65);
  *(inited + 312) = SHMediaItemWebURL;
  v70 = SHMediaItemWebURL;
  v71 = v119;
  sub_83E4();
  v72 = v66[13];
  *(inited + 344) = v68;
  v73 = sub_3710((inited + 320));
  sub_4488(v71 + v72, v73, &qword_101C8, &qword_8D68);
  sub_36B4(v71);
  *(inited + 352) = SHMediaItemArtworkURL;
  v74 = SHMediaItemArtworkURL;
  v75 = v121;
  sub_83E4();
  v76 = v66[14];
  *(inited + 384) = v68;
  v77 = sub_3710((inited + 360));
  sub_4488(v75 + v76, v77, &qword_101C8, &qword_8D68);
  sub_36B4(v75);
  *(inited + 392) = SHMediaItemVideoURL;
  v78 = SHMediaItemVideoURL;
  v79 = v122;
  sub_83E4();
  v80 = v66[15];
  *(inited + 424) = v68;
  v81 = sub_3710((inited + 400));
  sub_4488(v79 + v80, v81, &qword_101C8, &qword_8D68);
  sub_36B4(v79);
  *(inited + 432) = SHMediaItemExplicitContent;
  v82 = SHMediaItemExplicitContent;
  v83 = v124;
  sub_83E4();
  LOBYTE(v80) = *(v83 + v66[16]);
  sub_36B4(v83);
  v84 = sub_1C78(&qword_101D0, &qword_8D70);
  *(inited + 440) = v80;
  *(inited + 464) = v84;
  *(inited + 472) = SHMediaItemISRC;
  v85 = SHMediaItemISRC;
  v86 = v126;
  sub_83E4();
  v87 = (v86 + v66[17]);
  v89 = *v87;
  v88 = v87[1];

  sub_36B4(v86);
  *(inited + 504) = v117;
  *(inited + 480) = v89;
  *(inited + 488) = v88;
  v90 = sub_408C(inited);
  swift_setDeallocating();
  sub_1C78(&qword_101D8, &qword_8D78);
  swift_arrayDestroy();
  v91 = sub_2D08(v90);
  v92 = sub_8324();
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  sub_8314();
  v95 = v127;
  sub_83E4();
  LODWORD(v90) = *(v95 + v66[18]);
  sub_36B4(v95);
  v96 = v91;
  v97 = v138;
  sub_82B4();
  sub_82A4();
  v99 = v128;
  v98 = v129;
  (*(v139 + 16))(v129, v97, v128);
  (*(v130 + 104))(v98, enum case for MatchingFlowState.match(_:), v131);
  sub_8304();

  v100 = v132;
  sub_82D4();
  LOBYTE(v98) = sub_8394();
  sub_8364();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v133;
  v109 = v134;
  v111 = v135;
  (*(v133 + 16))(v135, v100, v134);
  v112 = &v111[*(v136 + 36)];
  *v112 = v98;
  *(v112 + 1) = v102;
  *(v112 + 2) = v104;
  *(v112 + 3) = v106;
  *(v112 + 4) = v108;
  v112[40] = 0;
  sub_1CC0();
  v113 = sub_8404();

  (*(v110 + 8))(v100, v109);
  result = (*(v139 + 8))(v138, v99);
  *v137 = v113;
  return result;
}

uint64_t sub_2D08(void *a1)
{
  sub_1C78(&qword_101E0, &qword_8D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8CA0;
  *(inited + 32) = sub_84C4();
  *(inited + 40) = SHMediaItemTimeRanges;
  v3 = SHMediaItemTimeRanges;
  *(inited + 48) = sub_84D4();
  *(inited + 56) = SHMediaItemFrequencySkewRanges;
  v4 = SHMediaItemFrequencySkewRanges;
  v5 = sub_41C8(inited);
  swift_setDeallocating();
  sub_1C78(&qword_101E8, &qword_8D88);
  swift_arrayDestroy();
  v6 = 0;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = v10;
LABEL_10:
    v10 = (v12 - 1) & v12;
    if (a1[2])
    {
      v94 = (v12 - 1) & v12;
      v14 = (v6 << 9) | (8 * __clz(__rbit64(v12)));
      v15 = *(*(v5 + 56) + v14);
      v16 = *(*(v5 + 48) + v14);
      v17 = v15;
      v18 = sub_3FEC(v16, sub_3D8C);
      if (v19)
      {
        sub_42D4(a1[7] + 32 * v18, v98);
        sub_42D4(v98, &v96);
        sub_1C78(&qword_101F0, &qword_8D90);
        if (swift_dynamicCast())
        {
          v20 = *&v95[0];
          v21 = *(*&v95[0] + 16);
          if (v21)
          {
            v89 = v17;
            v91 = v5;
            *&v96 = &_swiftEmptyArrayStorage;
            sub_3E90(0, v21, 0);
            v22 = v96;
            v23 = (v20 + 40);
            do
            {
              v24 = [objc_allocWithZone(SHRange) initWithLowerBound:*(v23 - 1) upperBound:*v23];
              *&v96 = v22;
              v26 = v22[2];
              v25 = v22[3];
              if (v26 >= v25 >> 1)
              {
                v87 = v24;
                sub_3E90((v25 > 1), v26 + 1, 1);
                v24 = v87;
                v22 = v96;
              }

              v22[2] = v26 + 1;
              v22[v26 + 4] = v24;
              v23 += 2;
              --v21;
            }

            while (v21);

            v17 = v89;
            v5 = v91;
          }

          else
          {

            v22 = &_swiftEmptyArrayStorage;
          }

          *(&v97 + 1) = sub_1C78(&qword_10208, &qword_8DA8);
          *&v96 = v22;
          sub_4330(&v96, v95);
          v45 = a1;
          v46 = v17;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = sub_3FEC(v46, sub_3D8C);
          v50 = v45[2];
          v51 = (v49 & 1) == 0;
          v52 = __OFADD__(v50, v51);
          v53 = v50 + v51;
          if (v52)
          {
            goto LABEL_68;
          }

          v54 = v49;
          if (v45[3] >= v53)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_37;
            }

            v72 = v48;
            sub_3774();
            v48 = v72;
            if ((v54 & 1) == 0)
            {
              goto LABEL_54;
            }

LABEL_38:
            v56 = v45;
            v57 = (v45[7] + 32 * v48);
            sub_4340(v57);
            sub_4330(v95, v57);
          }

          else
          {
            sub_38F4(v53, isUniquelyReferenced_nonNull_native);
            v48 = sub_3FEC(v46, sub_3D8C);
            if ((v54 & 1) != (v55 & 1))
            {
              goto LABEL_74;
            }

LABEL_37:
            if (v54)
            {
              goto LABEL_38;
            }

LABEL_54:
            v45[(v48 >> 6) + 8] |= 1 << v48;
            *(v45[6] + 8 * v48) = v46;
            sub_4330(v95, (v45[7] + 32 * v48));
            v73 = v45[2];
            v52 = __OFADD__(v73, 1);
            v74 = v73 + 1;
            if (v52)
            {
              goto LABEL_71;
            }

            v56 = v45;
            v45[2] = v74;
          }

          v58 = v56;
          goto LABEL_60;
        }

        sub_42D4(v98, &v96);
        sub_1C78(&qword_101F8, &qword_8D98);
        if (swift_dynamicCast())
        {
          v27 = *&v95[0];
          v28 = *(*&v95[0] + 16);
          if (v28)
          {
            v90 = v17;
            v92 = v5;
            *&v95[0] = &_swiftEmptyArrayStorage;
            sub_3E90(0, v28, 0);
            v29 = *&v95[0];
            v30 = (v27 + 36);
            do
            {
              v31 = [objc_allocWithZone(SHRange) initWithLowerBound:*(v30 - 1) upperBound:*v30];
              *&v95[0] = v29;
              v33 = v29[2];
              v32 = v29[3];
              if (v33 >= v32 >> 1)
              {
                v88 = v31;
                sub_3E90((v32 > 1), v33 + 1, 1);
                v31 = v88;
                v29 = *&v95[0];
              }

              v29[2] = v33 + 1;
              v29[v33 + 4] = v31;
              v30 += 2;
              --v28;
            }

            while (v28);

            v17 = v90;
            v5 = v92;
          }

          else
          {

            v29 = &_swiftEmptyArrayStorage;
          }

          *(&v97 + 1) = sub_1C78(&qword_10208, &qword_8DA8);
          *&v96 = v29;
          sub_4330(&v96, v95);
          v58 = a1;
          v62 = v17;
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v64 = sub_3FEC(v62, sub_3D8C);
          v66 = v58[2];
          v67 = (v65 & 1) == 0;
          v52 = __OFADD__(v66, v67);
          v68 = v66 + v67;
          if (v52)
          {
            goto LABEL_69;
          }

          v69 = v65;
          if (v58[3] < v68)
          {
            sub_38F4(v68, v63);
            v64 = sub_3FEC(v62, sub_3D8C);
            if ((v69 & 1) != (v70 & 1))
            {
              goto LABEL_74;
            }

            goto LABEL_51;
          }

          if (v63)
          {
LABEL_51:
            if (v69)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v76 = v64;
            sub_3774();
            v64 = v76;
            if (v69)
            {
LABEL_52:
              v71 = (v58[7] + 32 * v64);
              sub_4340(v71);
              sub_4330(v95, v71);

              goto LABEL_60;
            }
          }

          v58[(v64 >> 6) + 8] |= 1 << v64;
          *(v58[6] + 8 * v64) = v62;
          sub_4330(v95, (v58[7] + 32 * v64));
          v77 = v58[2];
          v52 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v52)
          {
            goto LABEL_73;
          }

          v58[2] = v78;
          goto LABEL_60;
        }

        sub_42D4(v98, &v96);
        v34 = a1;
        v35 = v17;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        *&v95[0] = v34;
        v38 = sub_3FEC(v35, sub_3D8C);
        v39 = v34[2];
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          goto LABEL_70;
        }

        if (v34[3] >= v41)
        {
          if ((v36 & 1) == 0)
          {
            v75 = v37;
            sub_3774();
            v37 = v75;
          }
        }

        else
        {
          v93 = v37;
          sub_38F4(v41, v36);
          v42 = sub_3FEC(v35, sub_3D8C);
          v44 = v43 & 1;
          v37 = v93;
          if ((v93 & 1) != v44)
          {
            goto LABEL_74;
          }

          v38 = v42;
        }

        v58 = *&v95[0];
        if (v37)
        {
          v59 = (*(*&v95[0] + 56) + 32 * v38);
          sub_4340(v59);
          sub_4330(&v96, v59);
        }

        else
        {
          *(*&v95[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
          *(v58[6] + 8 * v38) = v35;
          sub_4330(&v96, (v58[7] + 32 * v38));
          v60 = v58[2];
          v52 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v52)
          {
            goto LABEL_72;
          }

          v58[2] = v61;
        }

LABEL_60:
        v79 = sub_3FEC(v16, sub_3D8C);
        if (v80)
        {
          v81 = v79;
          v82 = swift_isUniquelyReferenced_nonNull_native();
          *&v95[0] = v58;
          if ((v82 & 1) == 0)
          {
            sub_3774();
            v58 = *&v95[0];
          }

          sub_4330((v58[7] + 32 * v81), &v96);
          a1 = v58;
          sub_3BC4(v81, v58);

          sub_4340(v98);
        }

        else
        {
          a1 = v58;
          sub_4340(v98);

          v96 = 0u;
          v97 = 0u;
        }

        sub_438C(&v96);
        v10 = v94;
      }

      else
      {

        v10 = v94;
      }
    }
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      type metadata accessor for SHMediaItemProperty();
      sub_43F4(&qword_100E0, type metadata accessor for SHMediaItemProperty);
      isa = sub_8424().super.isa;
      v85 = [ObjCClassFromMetadata mediaItemWithProperties:isa];

      return v85;
    }

    v12 = *(v7 + 8 * v13);
    ++v6;
    if (v12)
    {
      v6 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  type metadata accessor for SHMediaItemProperty();
  result = sub_85D4();
  __break(1u);
  return result;
}

uint64_t sub_36B4(uint64_t a1)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel();
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t *sub_3710(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_3774()
{
  v1 = v0;
  sub_1C78(&qword_10220, &qword_8DB8);
  v2 = *v0;
  v3 = sub_8524();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_42D4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_4330(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_38F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C78(&qword_10220, &qword_8DB8);
  v37 = a2;
  result = sub_8534();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_4330(v23, v38);
      }

      else
      {
        sub_42D4(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_8464();
      sub_8624();
      sub_8484();
      v26 = sub_8644();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_4330(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void sub_3BC4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_84F4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_8464();
      sub_8624();
      v12 = v11;
      sub_8484();
      v13 = sub_8644();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_3D8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_8464();
      v9 = v8;
      if (v7 == sub_8464() && v9 == v10)
      {
        break;
      }

      v12 = sub_85C4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_3E90(void *a1, int64_t a2, char a3)
{
  result = sub_3EB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_3EB0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C78(&qword_10210, &qword_8DB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3)) | 1;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_443C(0, &qword_10218, SHRange_ptr);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_3FEC(uint64_t a1, uint64_t (*a2)(uint64_t, Swift::Int))
{
  v4 = *(v2 + 40);
  sub_8464();
  sub_8624();
  sub_8484();
  v5 = sub_8644();

  return a2(a1, v5);
}

unint64_t sub_408C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C78(&qword_10220, &qword_8DB8);
    v3 = sub_8544();
    v4 = a1 + 32;

    while (1)
    {
      sub_4488(v4, &v11, &qword_101D8, &qword_8D78);
      v5 = v11;
      result = sub_3FEC(v11, sub_3D8C);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_4330(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_41C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C78(&qword_10228, &unk_8DC0);
    v3 = sub_8544();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_3FEC(v6, sub_3D8C);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_42D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_4330(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_4340(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_438C(uint64_t a1)
{
  v2 = sub_1C78(&qword_10200, &qword_8DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_43F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_443C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_4488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C78(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_4528@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C78(&qword_100A8, &qword_8D40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  v6 = sub_82E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_82F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_8324();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_8314();
  *v15 = 0;
  (*(v12 + 104))(v15, enum case for MatchingFlowState.noMatch(_:), v11);
  sub_8304();

  sub_82D4();
  LOBYTE(v11) = sub_8394();
  sub_8364();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v7 + 16))(v5, v10, v6);
  v27 = &v5[*(v2 + 36)];
  *v27 = v11;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  sub_1CC0();
  v28 = sub_8404();

  result = (*(v7 + 8))(v10, v6);
  *a1 = v28;
  return result;
}

unint64_t sub_47B8()
{
  result = qword_100B8;
  if (!qword_100B8)
  {
    sub_82E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100B8);
  }

  return result;
}

uint64_t sub_481C()
{
  v0 = sub_8354();
  sub_5A28(v0, qword_11380);
  sub_573C(v0, qword_11380);
  return sub_8344();
}

Swift::Int sub_48B0()
{
  v1 = *v0;
  sub_8624();
  sub_8634(v1);
  return sub_8644();
}

Swift::Int sub_4924()
{
  v1 = *v0;
  sub_8624();
  sub_8634(v1);
  return sub_8644();
}

uint64_t sub_49AC@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_49F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4AC4(v11, 0, 0, 1, a1, a2);
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
    sub_42D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4340(v11);
  return v7;
}

unint64_t sub_4AC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_4BD0(a5, a6);
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
    result = sub_8514();
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

char *sub_4BD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_4C1C(a1, a2);
  sub_4D4C(&off_C830);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_4C1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_4E38(v5, 0);
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

  result = sub_8514();
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
        v10 = sub_8494();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4E38(v10, 0);
        result = sub_8504();
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

uint64_t sub_4D4C(uint64_t result)
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

  result = sub_4EAC(result, v12, 1, v3);
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

void *sub_4E38(uint64_t a1, uint64_t a2)
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

  sub_1C78(&qword_10300, &qword_8ED8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4EAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C78(&qword_10300, &qword_8ED8);
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

uint64_t sub_4FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel();
  v7 = *(*(matched - 8) + 64);
  v8 = __chkstk_darwin(matched);
  v65 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v63 - v11;
  __chkstk_darwin(v10);
  v64 = v63 - v13;
  v67 = type metadata accessor for ShazamSuccessfulMatchView();
  v14 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v66 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_8354();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100A0 != -1)
  {
    swift_once();
  }

  v21 = sub_573C(v16, qword_11380);
  (*(v17 + 16))(v20, v21, v16);

  v22 = sub_8334();
  v74 = v16;
  v23 = v22;
  v24 = sub_84B4();

  v25 = os_log_type_enabled(v23, v24);
  v69 = v12;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v63[3] = a4;
    v27 = v26;
    v28 = swift_slowAlloc();
    v63[2] = a3;
    v29 = v28;
    v71 = v28;
    *v27 = 136315138;
    v30 = sub_8474();
    v32 = sub_49F8(v30, v31, &v71);
    v63[1] = a2;
    v33 = v32;

    *(v27 + 4) = v33;
    _os_log_impl(&dword_0, v23, v24, "ShazamUIPlugin#view %s", v27, 0xCu);
    sub_4340(v29);
  }

  (*(v17 + 8))(v20, v74);
  v35 = sub_8474();
  v36 = v34;
  if (v35 == 0x6E696E657473696CLL && v34 == 0xE900000000000067 || (sub_85C4() & 1) != 0)
  {

    v37 = sub_8254();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_8244();
    sub_5980();
    v40 = v70;
    sub_8234();

    if (v40)
    {
      return result;
    }

    sub_83D4();
    v42 = v71;
    sub_8414();
    sub_5890(&unk_10170, &type metadata accessor for Context);
    v43 = sub_8374();
    v71 = v42;
    v72 = v43;
    v73 = v44;
    sub_59D4();
    return sub_8404();
  }

  if (v35 == 0x686374616D6F6ELL && v36 == 0xE700000000000000 || (sub_85C4() & 1) != 0)
  {

    v45 = sub_8254();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    sub_8244();
    sub_58D8();
    v48 = v70;
    sub_8234();

    if (!v48)
    {
      sub_83D4();
      v49 = v71;
      sub_8414();
      sub_5890(&unk_10170, &type metadata accessor for Context);
      v50 = sub_8374();
      v71 = v49;
      v72 = v50;
      v73 = v51;
      sub_592C();
      return sub_8404();
    }
  }

  else
  {
    if (v35 == 0x6673736563637573 && v36 == 0xEF686374616D6C75)
    {

      v52 = v69;
    }

    else
    {
      v53 = sub_85C4();

      v52 = v69;
      if ((v53 & 1) == 0)
      {
        sub_5774();
        swift_allocError();
        *v62 = 0;
        return swift_willThrow();
      }
    }

    v54 = sub_8254();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    sub_8244();
    sub_5890(&qword_102D0, type metadata accessor for ShazamSuccessfulMatchModel);
    v57 = v70;
    sub_8234();

    if (!v57)
    {
      v58 = v64;
      sub_57C8(v52, v64);
      sub_582C(v58, v65);
      v59 = v66;
      sub_83D4();
      sub_36B4(v58);
      v60 = &v59[*(v67 + 20)];
      sub_8414();
      sub_5890(&unk_10170, &type metadata accessor for Context);
      *v60 = sub_8374();
      v60[1] = v61;
      sub_5890(&qword_102D8, type metadata accessor for ShazamSuccessfulMatchView);
      return sub_8404();
    }
  }

  return result;
}

uint64_t sub_573C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_5774()
{
  result = qword_102C8;
  if (!qword_102C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102C8);
  }

  return result;
}

uint64_t sub_57C8(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel();
  (*(*(matched - 8) + 32))(a2, a1, matched);
  return a2;
}

uint64_t sub_582C(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel();
  (*(*(matched - 8) + 16))(a2, a1, matched);
  return a2;
}

uint64_t sub_5890(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_58D8()
{
  result = qword_102E0;
  if (!qword_102E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102E0);
  }

  return result;
}

unint64_t sub_592C()
{
  result = qword_102E8;
  if (!qword_102E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102E8);
  }

  return result;
}

unint64_t sub_5980()
{
  result = qword_102F0;
  if (!qword_102F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102F0);
  }

  return result;
}

unint64_t sub_59D4()
{
  result = qword_102F8;
  if (!qword_102F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102F8);
  }

  return result;
}

uint64_t *sub_5A28(uint64_t a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for Plugin.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Plugin.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_5C08()
{
  result = qword_10308;
  if (!qword_10308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10308);
  }

  return result;
}

uint64_t sub_5C90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_5D18(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v6 = sub_8254();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_8244();
  a3();
  sub_8234();
  sub_5C90(a1, a2);
}

uint64_t ShazamSuccessfulMatchModel.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_8254();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_8244();
  type metadata accessor for ShazamSuccessfulMatchModel();
  sub_768C(&qword_102D0, type metadata accessor for ShazamSuccessfulMatchModel);
  sub_8234();
  sub_5C90(a1, a2);
}

uint64_t type metadata accessor for ShazamSuccessfulMatchModel()
{
  result = qword_103C8;
  if (!qword_103C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5EF4(uint64_t a1)
{
  v2 = sub_5FF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5F30(uint64_t a1)
{
  v2 = sub_5FF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_5FB0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_5FF4()
{
  result = qword_10318;
  if (!qword_10318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10318);
  }

  return result;
}

unint64_t sub_60C0()
{
  result = qword_10320;
  if (!qword_10320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10320);
  }

  return result;
}

uint64_t sub_6114@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_6150(uint64_t a1)
{
  v2 = sub_632C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_618C(uint64_t a1)
{
  v2 = sub_632C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_620C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = sub_1C78(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_5FB0(a1, a1[3]);
  a4();
  sub_8664();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_632C()
{
  result = qword_10330;
  if (!qword_10330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10330);
  }

  return result;
}

uint64_t sub_63EC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_1C78(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_5FB0(a1, a1[3]);
  a6();
  sub_8664();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_6540(void (*a1)(void))
{
  v2 = sub_8284();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_8274();
  a1();
  v5 = sub_8264();

  return v5;
}

unint64_t sub_65C8()
{
  result = qword_10338;
  if (!qword_10338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10338);
  }

  return result;
}

unint64_t sub_661C(char a1)
{
  result = 0x44496D617A616873;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65726E6567;
      break;
    case 5:
    case 6:
      result = 0x73754D656C707061;
      break;
    case 7:
      result = 0x4C5255626577;
      break;
    case 8:
      result = 0x556B726F77747261;
      break;
    case 9:
      result = 0x4C52556F65646976;
      break;
    case 10:
      result = 0x746963696C707865;
      break;
    case 11:
      result = 1668445033;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_67C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7DF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_67F4(uint64_t a1)
{
  v2 = sub_6C04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6830(uint64_t a1)
{
  v2 = sub_6C04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShazamSuccessfulMatchModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C78(&qword_10340, &unk_8FA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34[-v8];
  v10 = a1[4];
  sub_5FB0(a1, a1[3]);
  sub_6C04();
  sub_8664();
  v11 = *v3;
  v12 = v3[1];
  v34[31] = 0;
  sub_8594();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v34[30] = 1;
    sub_8594();
    v15 = v3[4];
    v16 = v3[5];
    v34[29] = 2;
    sub_8594();
    v17 = v3[6];
    v18 = v3[7];
    v34[28] = 3;
    sub_8594();
    v19 = v3[8];
    v20 = v3[9];
    v34[27] = 4;
    sub_8594();
    v21 = v3[10];
    v22 = v3[11];
    v34[26] = 5;
    sub_8594();
    matched = type metadata accessor for ShazamSuccessfulMatchModel();
    v24 = matched[10];
    v34[25] = 6;
    sub_8294();
    sub_768C(&qword_10350, &type metadata accessor for URL);
    sub_85B4();
    v25 = matched[11];
    v34[24] = 7;
    sub_85B4();
    v26 = matched[12];
    v34[15] = 8;
    sub_85B4();
    v27 = matched[13];
    v34[14] = 9;
    sub_85B4();
    v28 = *(v3 + matched[14]);
    v34[13] = 10;
    sub_85A4();
    v29 = (v3 + matched[15]);
    v30 = *v29;
    v31 = v29[1];
    v34[12] = 11;
    sub_8594();
    v32 = *(v3 + matched[16]);
    v34[11] = 12;
    sub_85A4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_6C04()
{
  result = qword_10348;
  if (!qword_10348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10348);
  }

  return result;
}

uint64_t ShazamSuccessfulMatchModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_1C78(&qword_101C8, &qword_8D68);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v73 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v68 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v68 - v11;
  __chkstk_darwin(v10);
  v14 = v68 - v13;
  v77 = sub_1C78(&qword_10358, &qword_8FB0);
  v74 = *(v77 - 8);
  v15 = *(v74 + 64);
  __chkstk_darwin(v77);
  v17 = v68 - v16;
  matched = type metadata accessor for ShazamSuccessfulMatchModel();
  v19 = *(*(matched - 8) + 64);
  __chkstk_darwin(matched);
  v21 = (v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1[3];
  v22 = a1[4];
  v79 = a1;
  sub_5FB0(a1, v23);
  sub_6C04();
  v76 = v17;
  v24 = v78;
  sub_8654();
  if (v24)
  {
    return sub_4340(v79);
  }

  v25 = v14;
  v71 = v9;
  v72 = v12;
  v27 = v74;
  v26 = v75;
  v78 = matched;
  v92 = 0;
  v28 = v76;
  v29 = v77;
  *v21 = sub_8564();
  v21[1] = v31;
  v91 = 1;
  v21[2] = sub_8564();
  v21[3] = v32;
  v90 = 2;
  v69 = 0;
  v21[4] = sub_8564();
  v21[5] = v33;
  v89 = 3;
  v21[6] = sub_8564();
  v21[7] = v34;
  v88 = 4;
  v21[8] = sub_8564();
  v21[9] = v35;
  v87 = 5;
  v36 = sub_8564();
  v70 = 0;
  v21[10] = v36;
  v21[11] = v37;
  v38 = sub_8294();
  v86 = 6;
  v39 = sub_768C(&qword_10360, &type metadata accessor for URL);
  v68[0] = v38;
  v68[1] = v39;
  v40 = v70;
  sub_8584();
  v70 = v40;
  if (v40)
  {
    (*(v27 + 8))(v28, v29);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    sub_752C(v25, v21 + v78[10]);
    v85 = 7;
    v43 = v72;
    v44 = v70;
    sub_8584();
    v70 = v44;
    if (v44)
    {
      (*(v27 + 8))(v28, v77);
      v42 = 0;
      v41 = 1;
    }

    else
    {
      sub_752C(v43, v21 + v78[11]);
      v84 = 8;
      v45 = v70;
      v46 = v71;
      v47 = v77;
      sub_8584();
      v70 = v45;
      if (!v45)
      {
        sub_752C(v46, v21 + v78[12]);
        v83 = 9;
        v56 = v70;
        sub_8584();
        if (v56)
        {
          (*(v27 + 8))(v76, v77);
          sub_4340(v79);
          v58 = v21[1];

          v59 = v21[3];

          v60 = v21[5];

          v61 = v21[7];

          v62 = v21[9];

          v63 = v21[11];

          v64 = v78;
          sub_74C4(v21 + v78[10]);
          sub_74C4(v21 + v64[11]);
          return sub_74C4(v21 + v64[12]);
        }

        else
        {
          sub_752C(v73, v21 + v78[13]);
          v82 = 10;
          *(v21 + v78[14]) = sub_8574();
          v81 = 11;
          v57 = sub_8564();
          v65 = (v21 + v78[15]);
          *v65 = v57;
          v65[1] = v66;
          v80 = 12;
          v67 = sub_8574();
          (*(v27 + 8))(v76, v77);
          *(v21 + v78[16]) = v67;
          sub_582C(v21, v26);
          sub_4340(v79);
          return sub_36B4(v21);
        }
      }

      (*(v27 + 8))(v28, v47);
      v41 = 1;
      v42 = 1;
    }
  }

  v48 = v69;
  sub_4340(v79);
  v49 = v21[1];

  if (!v48)
  {
    v52 = v21[3];
  }

  v50 = v21[5];

  v53 = v21[7];

  v51 = v21[9];

  v54 = v21[11];

  v55 = v78;
  if (v41)
  {
    result = sub_74C4(v21 + v78[10]);
    if ((v42 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v42)
  {
    return result;
  }

  return sub_74C4(v21 + v55[11]);
}

uint64_t sub_74C4(uint64_t a1)
{
  v2 = sub_1C78(&qword_101C8, &qword_8D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_752C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C78(&qword_101C8, &qword_8D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ShazamSuccessfulMatchModel.serializedData.getter()
{
  v0 = sub_8284();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_8274();
  type metadata accessor for ShazamSuccessfulMatchModel();
  sub_768C(&qword_10368, type metadata accessor for ShazamSuccessfulMatchModel);
  v3 = sub_8264();

  return v3;
}

uint64_t sub_768C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7708(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1C78(&qword_101C8, &qword_8D68);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_77E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1C78(&qword_101C8, &qword_8D68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7894()
{
  sub_79C4(319, &qword_103D8);
  if (v0 <= 0x3F)
  {
    sub_796C();
    if (v1 <= 0x3F)
    {
      sub_79C4(319, &unk_103E8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_796C()
{
  if (!qword_103E0)
  {
    sub_8294();
    v0 = sub_84E4();
    if (!v1)
    {
      atomic_store(v0, &qword_103E0);
    }
  }
}

void sub_79C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_84E4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ShazamSuccessfulMatchModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShazamSuccessfulMatchModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_7B8C()
{
  result = qword_10448;
  if (!qword_10448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10448);
  }

  return result;
}

unint64_t sub_7BE4()
{
  result = qword_10450;
  if (!qword_10450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10450);
  }

  return result;
}

unint64_t sub_7C3C()
{
  result = qword_10458;
  if (!qword_10458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10458);
  }

  return result;
}

unint64_t sub_7C94()
{
  result = qword_10460;
  if (!qword_10460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10460);
  }

  return result;
}

unint64_t sub_7CEC()
{
  result = qword_10468;
  if (!qword_10468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10468);
  }

  return result;
}

unint64_t sub_7D44()
{
  result = qword_10470;
  if (!qword_10470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10470);
  }

  return result;
}

unint64_t sub_7D9C()
{
  result = qword_10478;
  if (!qword_10478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10478);
  }

  return result;
}

uint64_t sub_7DF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D617A616873 && a2 == 0xE800000000000000;
  if (v4 || (sub_85C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_85C4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_85C4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_85C4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_85C4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xEC00000044496369 || (sub_85C4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xED00004C52556369 || (sub_85C4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_85C4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_85C4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4C52556F65646976 && a2 == 0xE800000000000000 || (sub_85C4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF746E65746E6F43 || (sub_85C4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1668445033 && a2 == 0xE400000000000000 || (sub_85C4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000009D40 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_85C4();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}