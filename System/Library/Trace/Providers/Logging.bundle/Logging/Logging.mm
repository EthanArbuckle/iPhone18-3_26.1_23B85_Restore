unint64_t sub_1190(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v3 = a2;
  if (a3 <= 1u)
  {
    if (!a3)
    {
      sub_A138(25);

      v9 = 0xD000000000000015;
      v10._countAndFlagsBits = a1;
      v10._object = v3;
      sub_A078(v10);
      v11._countAndFlagsBits = 11815;
      v11._object = 0xE200000000000000;
      sub_A078(v11);
      return v9;
    }

    sub_A138(33);

    v5 = 0xD00000000000001FLL;
LABEL_7:
    v9 = v5;
    if (v3)
    {
      v6._countAndFlagsBits = a1;
    }

    else
    {
      v6._countAndFlagsBits = 0;
    }

    if (!v3)
    {
      v3 = 0xE000000000000000;
    }

    v6._object = v3;
    sub_A078(v6);

    return v9;
  }

  if (a3 == 2)
  {

    sub_A138(31);

    v5 = 0xD00000000000001DLL;
    goto LABEL_7;
  }

  if (a1 <= 2)
  {
    if (a1 ^ 1 | a2)
    {
      v8 = 0xD00000000000002BLL;
    }

    else
    {
      v8 = 0xD000000000000030;
    }

    if (a1 | a2)
    {
      return v8;
    }

    else
    {
      return 0xD00000000000002CLL;
    }
  }

  else if (a1 > 4)
  {
    if (a1 ^ 5 | a2)
    {
      return 0xD000000000000030;
    }

    else
    {
      return 0xD000000000000032;
    }
  }

  else if (a1 ^ 3 | a2)
  {
    return 0xD00000000000002ELL;
  }

  else
  {
    return 0xD000000000000049;
  }
}

BOOL sub_1488(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_14B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_14E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_15D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_59E4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1664@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_9FB8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_16E4()
{
  v1 = (v0 + OBJC_IVAR___ATSLoggingProvider_resolvedFilterPredicateString);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_173C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ATSLoggingProvider_resolvedFilterPredicateString);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1904(uint64_t a1)
{
  v3 = v1;
  v36 = a1;
  v4 = *(*(sub_62F4(&qword_14D38, qword_ABB0) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = sub_9FB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___ATSLoggingProvider_archivePath;
  swift_beginAccess();
  sub_8BD4(v3 + v14, v8, &qword_14D38, qword_ABB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_8C3C(v8, &qword_14D38, qword_ABB0);
    sub_633C();
    swift_allocError();
    *v15 = xmmword_AB60;
    *(v15 + 16) = 3;
    return swift_willThrow();
  }

  v33 = v2;
  v17 = *(v10 + 32);
  v17(v13, v8, v9);
  v18 = (v3 + OBJC_IVAR___ATSLoggingProvider_initializationError);
  v19 = *(v3 + OBJC_IVAR___ATSLoggingProvider_initializationError + 16);
  if (v19 != 255)
  {
    v21 = *v18;
    v20 = v18[1];
    sub_633C();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = v19;
    swift_willThrow();
    sub_641C(v21, v20, v19);
    return (*(v10 + 8))(v13, v9);
  }

  v32 = v17;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  aBlock[4] = sub_63A0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E10;
  aBlock[3] = &unk_10868;
  v24 = _Block_copy(aBlock);

  ktrace_file_iterate();
  _Block_release(v24);
  swift_beginAccess();
  if (*(v23 + 16) == 1)
  {
    sub_633C();
    swift_allocError();
    *v25 = xmmword_AB50;
    *(v25 + 16) = 3;
    swift_willThrow();
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v36 = v23;
    v26 = [objc_opt_self() defaultManager];
    sub_9FA8();
    v27 = sub_A028();

    v28 = [v26 fileExistsAtPath:v27];

    if (v28)
    {
      v29 = v34;
      v32(v34, v13, v9);
      (*(v10 + 56))(v29, 0, 1, v9);
      swift_beginAccess();
      sub_8CE4(v29, v3 + v14, &qword_14D38, qword_ABB0);
      swift_endAccess();
    }

    sub_633C();
    swift_allocError();
    *v30 = xmmword_AB40;
    *(v30 + 16) = 3;
    swift_willThrow();
    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_1E10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

void sub_1EE8()
{
  v1 = (v0 + OBJC_IVAR___ATSLoggingProvider_initializationError);
  v2 = *(v0 + OBJC_IVAR___ATSLoggingProvider_initializationError + 16);
  if (v2 != 255)
  {
    v4 = *v1;
    v3 = v1[1];
    sub_633C();
    swift_allocError();
    *v5 = v4;
    *(v5 + 8) = v3;
    *(v5 + 16) = v2;
    swift_willThrow();
    sub_641C(v4, v3, v2);
  }
}

void sub_2038()
{
  if ((*(v0 + OBJC_IVAR___ATSLoggingProvider_recordingLayerOptions) & 2) != 0)
  {
    v7 = nullsub_1;
    v8 = 0;
    v3 = _NSConcreteStackBlock;
    v4 = 1107296256;
    v5 = sub_2174;
    v6 = &unk_10890;
    v1 = _Block_copy(&v3);
    ktrace_events_range();
    _Block_release(v1);
    v7 = nullsub_1;
    v8 = 0;
    v3 = _NSConcreteStackBlock;
    v4 = 1107296256;
    v5 = sub_2174;
    v6 = &unk_108B8;
    v2 = _Block_copy(&v3);
    ktrace_events_range();
    _Block_release(v2);
  }
}

uint64_t sub_2174(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2220(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_A168();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_A168();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_4C04(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_57A8(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23AC(uint64_t (*a1)@<X0>(void *a1@<X0>, uint64_t a2@<X8>))
{
  v2 = sub_9E68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_2588();
    sub_273C(a1, v7);
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_2588()
{
  v0 = sub_9F68();
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  __chkstk_darwin(v2);
  if (ktrace_file_earliest_walltime())
  {
    v3 = 5;
LABEL_5:
    sub_633C();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    return swift_willThrow();
  }

  if (ktrace_file_latest_walltime())
  {
    v3 = 6;
    goto LABEL_5;
  }

  sub_9F48();
  sub_9F48();
  return sub_9E48();
}

void sub_273C(uint64_t (*a1)@<X0>(void *a1@<X0>, uint64_t a2@<X8>), uint64_t a2)
{
  v87 = a2;
  v88 = a1;
  v92 = sub_9FE8();
  v91 = *(v92 - 8);
  v3 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_9F68();
  v85 = *(v86 - 8);
  v5 = *(v85 + 64);
  __chkstk_darwin(v86);
  v84 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_9EE8();
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = v94[8];
  __chkstk_darwin(v7);
  v93 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_62F4(&qword_14F90, &qword_B128);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v82 - v12;
  v14 = sub_9F18();
  v96 = *(v14 - 8);
  v97 = v14;
  v15 = v96[8];
  __chkstk_darwin(v14);
  v83 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_62F4(&qword_14D38, qword_ABB0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v82 - v19;
  v21 = sub_9FB8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v82 - v27;
  v29 = OBJC_IVAR___ATSLoggingProvider_archivePath;
  swift_beginAccess();
  v89 = v2;
  sub_8BD4(v2 + v29, v20, &qword_14D38, qword_ABB0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_8C3C(v20, &qword_14D38, qword_ABB0);
    v30 = [objc_opt_self() localStore];
  }

  else
  {
    (*(v22 + 32))(v28, v20, v21);
    (*(v22 + 16))(v26, v28, v21);
    v31 = v93;
    (v94[13])(v93, enum case for URL.DirectoryHint.inferFromPath(_:), v95);
    sub_3BE4(v26, v31, v13);
    v33 = v96;
    v32 = v97;
    if ((v96[6])(v13, 1, v97) == 1)
    {
      sub_8C3C(v13, &qword_14F90, &qword_B128);
      sub_633C();
      swift_allocError();
      *v34 = xmmword_AB40;
      *(v34 + 16) = 3;
      swift_willThrow();
      (*(v22 + 8))(v28, v21);
      return;
    }

    v35 = v83;
    (v33[4])(v83, v13, v32);
    sub_9EF8(v36);
    v38 = v37;
    v30 = [objc_opt_self() storeWithArchiveURL:v37];

    (v33[1])(v35, v32);
    (*(v22 + 8))(v28, v21);
  }

  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = v40;
  v103 = sub_82CC;
  v104 = v41;
  aBlock = _NSConcreteStackBlock;
  v100 = 1107296256;
  v101 = sub_3EF8;
  v102 = &unk_10A78;
  v42 = _Block_copy(&aBlock);
  v43 = v30;
  v97 = v39;

  [v43 prepareWithCompletionHandler:v42];
  _Block_release(v42);
  v96 = v43;

  swift_beginAccess();
  v44 = *(v39 + 16);
  if (v44)
  {
    v45 = v44;
    v46 = dispatch_semaphore_create(0);
    v47 = OSLogEventSerializerVersion;
    sub_8DE8(0, &qword_14F98, OSLogEventSerializer_ptr);
    v48 = swift_allocObject();
    v49 = v88;
    *(v48 + 16) = v88;
    *(v48 + 24) = v47;
    v50 = v89;
    *(v48 + 32) = v89;
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = v49;
    *(v51 + 32) = v47;
    *(v51 + 40) = v46;
    v52 = v50;
    v53 = v45;
    v54 = v52;
    v55 = v46;
    v56 = sub_3F84(v53, sub_8394, v48, sub_86DC, v51);
    v57 = v56;
    if (v56)
    {
      [v56 setFlags:*&v54[OBJC_IVAR___ATSLoggingProvider_streamFlags]];
      [v57 setFilterPredicate:*&v54[OBJC_IVAR___ATSLoggingProvider_predicate]];
      if (v54[OBJC_IVAR___ATSLoggingProvider_shouldRedactContent] != 1)
      {
        v93 = v55;
        v94 = v53;
        v95 = v40;
        v58 = v57;
        v88 = 0;
        v89 = 0;
        v59 = 0;
LABEL_15:
        [v58 setArgumentRedactionBlock:v59];
        _Block_release(v59);

        v73 = v58;
        v74 = v84;
        sub_9E58();
        isa = sub_9F38().super.isa;
        v76 = *(v85 + 8);
        v77 = v86;
        v76(v74, v86);
        sub_9E38();
        v78 = sub_9F38().super.isa;
        v76(v74, v77);
        [v73 serializeFromDate:isa toDate:v78];

        v53 = v94;
        v55 = v93;
        v79 = v88;
LABEL_20:
        v81 = v90;
        sub_9FD8();
        sub_A0E8();

        sub_8B04(v79);
        (*(v91 + 8))(v81, v92);

        return;
      }
    }

    else if ((v54[OBJC_IVAR___ATSLoggingProvider_shouldRedactContent] & 1) == 0)
    {
      v79 = 0;
      goto LABEL_20;
    }

    v69 = SignpostSupportAllowlistedStringSetForCurrentDevice();
    v70 = sub_A0C8();

    v71 = swift_allocObject();
    v72 = v71;
    *(v71 + 16) = v70;
    if (!v57)
    {
      v79 = sub_8B5C;
      goto LABEL_20;
    }

    v93 = v55;
    v94 = v53;
    v95 = v40;
    v103 = sub_8B5C;
    v104 = v71;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_4608;
    v102 = &unk_10AF0;
    v59 = _Block_copy(&aBlock);
    v58 = v57;
    v88 = sub_8B5C;
    v89 = v72;
    sub_8B14(sub_8B5C);

    goto LABEL_15;
  }

  swift_beginAccess();
  if (*(v40 + 16))
  {
    ErrorValue = swift_getErrorValue();
    v61 = v98;
    v62 = *(v98 - 8);
    v63 = *(v62 + 64);
    __chkstk_darwin(ErrorValue);
    v65 = &v82 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v62 + 16))(v65);
    v66 = sub_A1D8();
    v68 = v67;
    (*(v62 + 8))(v65, v61);
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  sub_633C();
  swift_allocError();
  *v80 = v66;
  *(v80 + 8) = v68;
  *(v80 + 16) = 1;
  swift_willThrow();
}

uint64_t sub_33BC()
{
  v0 = ktrace_chunk_tag();
  if (v0 == 32785)
  {
    return 0x746E6F6320676F6CLL;
  }

  if (v0 == 32786)
  {
    return 0x6174656D20676F6CLL;
  }

  return 0;
}

uint64_t sub_362C(uint64_t (*a1)@<X0>(void *a1@<X0>, uint64_t a2@<X8>), uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v20 = a3;
  v4 = sub_9F68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = sub_9E68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + 16);
  v17(v11, a2, v4);
  v17(v9, v20, v4);
  sub_9E48();
  sub_273C(v21, v16);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_3BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_62F4(&qword_14F90, &qword_B128);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v29 = v26 - v7;
  v8 = sub_9EE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_9FB8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  (*(v14 + 16))(v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = sub_A068();
  if (v18)
  {
    v19 = *(v9 + 16);
    v26[1] = v17;
    v28 = v8;
    v19(v12, a2, v8);
    v20 = sub_9F18();
    v26[0] = a2;
    v21 = v20;
    v22 = *(*(v20 - 8) + 56);
    v27 = a1;
    v23 = v30;
    v22(v29, 1, 1, v20);
    sub_9F08();
    (*(v9 + 8))(v26[0], v28);
    (*(v14 + 8))(v27, v13);
    return (v22)(v23, 0, 1, v21);
  }

  else
  {
    (*(v9 + 8))(a2, v8);
    (*(v14 + 8))(a1, v13);
    v25 = sub_9F18();
    return (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  }
}

void sub_3EF8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_3F84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_49B0;
  aBlock[3] = &unk_10B40;
  v11 = _Block_copy(aBlock);
  v15[4] = a4;
  v15[5] = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_4A38;
  v15[3] = &unk_10B68;
  v12 = _Block_copy(v15);
  v13 = [v10 initWithSource:a1 dataProcessingBlock:v11 completionBlock:v12];
  _Block_release(v11);

  _Block_release(v12);

  return v13;
}

uint64_t sub_40CC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v5 = sub_62F4(&qword_14FA0, &qword_B130);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v44 = &v38 - v10;
  __chkstk_darwin(v9);
  v48 = &v38 - v11;
  v12 = [a1 decomposedMessage];
  v13 = sub_9F98();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v49 = v12;
  if (v12)
  {
    v16 = v14;
    v38 = a3;
    v40 = v15;
    v41 = v14 + 56;
    v15(v48, 1, 1, v13);
    v47 = [v49 placeholderCount];
    if (!v47)
    {
LABEL_31:

      return sub_8B64(v48, v38);
    }

    v17 = 0;
    v39 = v43 + 7;
    v45 = v13;
    v46 = (v16 + 48);
    v18 = &ATSLoggingProvider__prots;
    while (1)
    {
      v20 = [v49 v18[218].count];
      if (!v20)
      {
        goto LABEL_6;
      }

      v21 = v20;
      if ([v20 category] == &dword_0 + 3)
      {
        goto LABEL_9;
      }

      if ([v21 category] == &dword_0 + 2)
      {
        v26 = [v21 objectRepresentation];
        if (v26)
        {
          break;
        }
      }

LABEL_5:

LABEL_6:
      if (++v17 == v47)
      {
        goto LABEL_31;
      }
    }

    v27 = v26;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_6;
    }

    v50 = 0;
    v51 = 0;
    sub_A038();

    v28 = v51;
    if (!v51)
    {

LABEL_30:
      v13 = v45;
      v18 = &ATSLoggingProvider__prots;
      goto LABEL_6;
    }

    if (v43[2])
    {
      v29 = v50;
      v30 = v43;
      v31 = v43[5];
      sub_A228();
      sub_A058();
      v32 = sub_A248();
      v33 = -1 << *(v30 + 32);
      v34 = v32 & ~v33;
      if ((*(v39 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (1)
        {
          v36 = (v43[6] + 16 * v34);
          v37 = *v36 == v29 && v28 == v36[1];
          if (v37 || (sub_A1B8() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v39 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_30;
      }
    }

LABEL_24:

    v13 = v45;
    v18 = &ATSLoggingProvider__prots;
LABEL_9:
    v22 = v44;
    sub_8BD4(v48, v44, &qword_14FA0, &qword_B130);
    v23 = *v46;
    v24 = (*v46)(v22, 1, v13);
    sub_8C3C(v22, &qword_14FA0, &qword_B130);
    if (v24 == 1)
    {
      v50 = &_swiftEmptyArrayStorage;
      sub_8C9C(&qword_14FA8, &type metadata accessor for IndexSet);
      sub_62F4(&qword_14FB0, &qword_B138);
      sub_8DA0(&qword_14FB8, &qword_14FB0, &qword_B138);
      v25 = v42;
      v13 = v45;
      sub_A128();
      v40(v25, 0, 1, v13);
      v18 = &ATSLoggingProvider__prots;
      sub_8CE4(v25, v48, &qword_14FA0, &qword_B130);
    }

    result = v23(v48, 1, v13);
    if (!result)
    {
      if (v17 < 0)
      {
        __break(1u);
        return result;
      }

      sub_9F88(v17);
    }

    goto LABEL_5;
  }

  return (v15)(a3, 1, 1, v13);
}

id sub_4608(uint64_t a1, void *a2)
{
  v4 = sub_62F4(&qword_14FA0, &qword_B130);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);

  v10 = a2;
  v9();

  v11 = sub_9F98();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    sub_9F78(v13);
    v16 = v15;
    (*(v12 + 8))(v7, v11);
    v14 = v16;
  }

  return v14;
}

id sub_4758()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_478C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___ATSLoggingProvider_logger] = 0;
  *&v0[OBJC_IVAR___ATSLoggingProvider_streamFlags] = 615;
  *&v0[OBJC_IVAR___ATSLoggingProvider_predicate] = 0;
  v0[OBJC_IVAR___ATSLoggingProvider_shouldRedactContent] = 0;
  *&v0[OBJC_IVAR___ATSLoggingProvider_recordingLayerOptions] = 0;
  *&v0[OBJC_IVAR___ATSLoggingProvider_modifiedCategories] = _swiftEmptyArrayStorage;
  v2 = OBJC_IVAR___ATSLoggingProvider_archivePath;
  v3 = sub_9FB8();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v0[OBJC_IVAR___ATSLoggingProvider_requiresSignpost] = 2;
  v4 = &v0[OBJC_IVAR___ATSLoggingProvider_resolvedFilterPredicateString];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR___ATSLoggingProvider_initializationError];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = -1;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_48D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_49B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = sub_9F28();
  v8 = v7;

  v4(v6, v8);
  sub_8D4C(v6, v8);
}

uint64_t sub_4A38(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = sub_9F28();
  v10 = v9;

  v6(v8, v10, a3);
  sub_8D4C(v8, v10);
}

unint64_t sub_4AD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_A228();
  sub_A058();
  v6 = sub_A248();

  return sub_4B4C(a1, a2, v6);
}

unint64_t sub_4B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_A1B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_4C04(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_A168();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_A158();
  *v1 = result;
  return result;
}

uint64_t sub_4CA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_62F4(&qword_14F80, &qword_B118);
  v40 = a2;
  result = sub_A188();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_A228();
      sub_A058();
      result = sub_A248();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_4F64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_62F4(&qword_14F68, &qword_B108);
  v38 = a2;
  result = sub_A188();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_A228();
      sub_A058();
      result = sub_A248();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_4AD4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_4CA4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_4AD4(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_A1C8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_5394();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_5394()
{
  v1 = v0;
  sub_62F4(&qword_14F80, &qword_B118);
  v2 = *v0;
  v3 = sub_A178();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_550C()
{
  v1 = v0;
  sub_62F4(&qword_14F68, &qword_B108);
  v2 = *v0;
  v3 = sub_A178();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

char *sub_567C(char *a1, int64_t a2, char a3)
{
  result = sub_569C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_569C(char *result, int64_t a2, char a3, char *a4)
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
    sub_62F4(&qword_14F78, &qword_B110);
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

uint64_t sub_57A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_A168();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_A168();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_8DA0(&qword_14FD0, &qword_14FC8, &unk_B140);
          for (i = 0; i != v6; ++i)
          {
            sub_62F4(&qword_14FC8, &unk_B140);
            v9 = sub_595C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_8DE8(0, &qword_14FC0, OSLogPreferencesCategory_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_595C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_A148();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_59DC;
  }

  __break(1u);
  return result;
}

uint64_t sub_59E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_5A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_62F4(&qword_14F80, &qword_B118);
    v3 = sub_A198();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_4AD4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_5B30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_62F4(&qword_14F88, &qword_B120);
    v3 = sub_A198();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_4AD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_5C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_62F4(&qword_14F68, &qword_B108);
    v3 = sub_A198();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_4AD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_5D38(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___ATSLoggingProvider_logger);
  *(v2 + OBJC_IVAR___ATSLoggingProvider_logger) = a1;
  swift_unknownObjectRelease();
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v58 = (v2 + OBJC_IVAR___ATSLoggingProvider_initializationError);
  v57 = OBJC_IVAR___ATSLoggingProvider_archivePath;
  v62 = v2;
  v10 = (v2 + OBJC_IVAR___ATSLoggingProvider_resolvedFilterPredicateString);
  v53 = OBJC_IVAR___ATSLoggingProvider_shouldRedactContent;
  v54 = OBJC_IVAR___ATSLoggingProvider_requiresSignpost;
  v55 = OBJC_IVAR___ATSLoggingProvider_predicate;
  v59 = OBJC_IVAR___ATSLoggingProvider_recordingLayerOptions;
  v60 = OBJC_IVAR___ATSLoggingProvider_streamFlags;
  swift_unknownObjectRetain();
  v61 = a2;

  v56 = v10;
  swift_beginAccess();
  v11 = 0;
  v12 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = (v11 << 10) | (16 * v14);
    v16 = (*(v61 + 48) + v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(v61 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    swift_bridgeObjectRetain_n();

    v22._rawValue = &off_10730;
    v63._countAndFlagsBits = v18;
    v63._object = v17;
    v23 = sub_A1A8(v22, v63);

    if (v23 > 4)
    {
      if (v23 <= 6)
      {
        if (v23 == 5)
        {

          v36 = *(v62 + v59);
          if ((v36 & 1) == 0)
          {
            v34 = v36 | 1;
            goto LABEL_37;
          }
        }

        else
        {

          v33 = *(v62 + v59);
          if ((v33 & 2) == 0)
          {
            v34 = v33 | 2;
            goto LABEL_37;
          }
        }
      }

      else if (v23 == 7)
      {

        v37 = *(v62 + v59);
        if ((v37 & 4) == 0)
        {
          v34 = v37 | 4;
LABEL_37:
          *(v62 + v59) = v34;
        }
      }

      else if (v23 == 8 || v23 == 9)
      {
      }

      else
      {
LABEL_39:

        v42 = v58;
        v43 = *v58;
        v44 = v58[1];
        *v58 = v18;
        v42[1] = v17;
        v45 = *(v42 + 16);
        *(v42 + 16) = 0;
        sub_7C50(v43, v44, v45);
      }
    }

    else if (v23 <= 1)
    {
      if (v23)
      {
        if (v23 != 1)
        {
          goto LABEL_39;
        }

        v30 = *(v62 + v54);
        if (v30 != 2 && (v30 & 1) != 0)
        {
LABEL_45:
          sub_633C();
          swift_allocError();
          *v52 = 0xD000000000000057;
          *(v52 + 8) = 0x800000000000BB40;
          *(v52 + 16) = 2;
          swift_willThrow();
        }

        v31 = *(v62 + v60);
        if ((v31 & 0x20) != 0)
        {
          v32 = v31 & 0xFFFFFFFFFFFFFFDFLL;
          goto LABEL_30;
        }
      }

      else
      {

        v35 = *(v62 + v60);
        if ((v35 & 0x200) != 0)
        {
          v32 = v35 & 0xFFFFFFFFFFFFFDFFLL;
LABEL_30:
          *(v62 + v60) = v32;
        }
      }
    }

    else if (v23 == 2)
    {

      if (&_SignpostSupportAllowlistedStringSetForCurrentDevice)
      {
        *(v62 + v53) = 1;
      }

      else
      {
        v46 = v58;
        v47 = *v58;
        v48 = v58[1];
        *v58 = 0;
        v46[1] = 0;
        v49 = *(v46 + 16);
        *(v46 + 16) = 3;
        sub_7C50(v47, v48, v49);
      }
    }

    else
    {

      if (v23 == 3)
      {
        v38 = v56;
        v39 = v56[1];
        *v56 = v20;
        v38[1] = v21;

        sub_8DE8(0, &qword_14FD8, NSPredicate_ptr);
        v40 = sub_A0D8();

        v41 = *(v62 + v55);
        *(v62 + v55) = v40;
      }

      else
      {
        v24 = (*(*(sub_62F4(&qword_14D38, qword_ABB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin();
        v26 = &v53 - v25;
        sub_9FC8();
        v27 = sub_9FB8();
        (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
        v28 = v62;
        v29 = v57;
        swift_beginAccess();
        sub_8CE4(v26, v28 + v29, &qword_14D38, qword_ABB0);
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v13 >= v12)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  if ((*(v62 + v60) & 0x220) == 0x200)
  {
    sub_633C();
    swift_allocError();
    *v51 = xmmword_AB70;
    *(v51 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_62F4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_633C()
{
  result = qword_14D40;
  if (!qword_14D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14D40);
  }

  return result;
}

BOOL sub_63A0()
{
  v1 = ktrace_chunk_tag() - 32787;
  if (v1 >= 0xFFFFFFFE)
  {
    swift_beginAccess();
    *(v0 + 16) = 1;
  }

  return v1 < 0xFFFFFFFE;
}

uint64_t sub_6404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_641C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void sub_6434()
{
  v1 = OBJC_IVAR___ATSLoggingProvider_recordingLayerOptions;
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR___ATSLoggingProvider_recordingLayerOptions);
  if (v3)
  {
    v4 = objc_allocWithZone(OSLogPreferencesSubsystem);
    v5 = sub_A028();
    v6 = [v4 initWithName:v5];

    v7 = objc_allocWithZone(OSLogPreferencesCategory);
    v8 = v6;
    v9 = sub_A028();
    v10 = [v7 initWithName:v9 subsystem:v8];

    v11 = objc_allocWithZone(OSLogPreferencesCategory);
    v12 = v8;
    v13 = sub_A028();
    v14 = [v11 initWithName:v13 subsystem:v12];

    [v10 setSignpostEnabled:1];
    [v10 setSignpostPersisted:1];
    [v14 setSignpostEnabled:1];
    [v14 setSignpostPersisted:1];
    sub_62F4(&qword_14F60, &qword_B100);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AB80;
    *(inited + 32) = v10;
    *(inited + 40) = v14;
    swift_beginAccess();
    v16 = v10;
    v17 = v14;
    sub_2220(inited);
    swift_endAccess();

    v3 = *(v2 + v1);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v18 = objc_allocWithZone(OSLogPreferencesSubsystem);
  v19 = sub_A028();
  v20 = [v18 initWithName:v19];

  v21 = objc_allocWithZone(OSLogPreferencesCategory);
  v22 = v20;
  v23 = sub_A028();
  v24 = [v21 initWithName:v23 subsystem:v22];

  [v24 setSignpostEnabled:1];
  [v24 setSignpostPersisted:1];
  v25 = OBJC_IVAR___ATSLoggingProvider_modifiedCategories;
  swift_beginAccess();
  v26 = v24;
  sub_A088();
  if (*(&dword_10 + (*(v2 + v25) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v25) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v79 = *(&dword_10 + (*(v2 + v25) & 0xFFFFFFFFFFFFFF8));
    sub_A0A8();
  }

  sub_A0B8();
  swift_endAccess();

  if ((*(v2 + v1) & 4) != 0)
  {
LABEL_9:
    v27 = objc_allocWithZone(OSLogPreferencesSubsystem);
    v28 = sub_A028();
    v29 = [v27 initWithName:v28];

    v30 = objc_allocWithZone(OSLogPreferencesCategory);
    v31 = v29;
    v32 = sub_A028();
    v33 = [v30 initWithName:v32 subsystem:v31];

    v91 = v31;
    [v33 setSignpostEnabled:1];
    [v33 setSignpostPersisted:1];
    v34 = OBJC_IVAR___ATSLoggingProvider_modifiedCategories;
    swift_beginAccess();
    v35 = v33;
    sub_A088();
    if (*(&dword_10 + (*(v2 + v34) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v34) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v80 = *(&dword_10 + (*(v2 + v34) & 0xFFFFFFFFFFFFFF8));
      sub_A0A8();
    }

    sub_A0B8();
    swift_endAccess();
    v36 = objc_allocWithZone(OSLogPreferencesSubsystem);
    v37 = sub_A028();
    v38 = [v36 initWithName:v37];

    v39 = objc_allocWithZone(OSLogPreferencesCategory);
    v40 = v38;
    v90 = v35;
    v41 = sub_A028();
    v42 = [v39 initWithName:v41 subsystem:v40];

    v43 = objc_allocWithZone(OSLogPreferencesCategory);
    v44 = v40;
    v45 = sub_A028();
    v46 = [v43 initWithName:v45 subsystem:v44];

    v47 = objc_allocWithZone(OSLogPreferencesCategory);
    v48 = v44;
    v49 = sub_A028();
    v50 = [v47 initWithName:v49 subsystem:v48];

    [v42 setSignpostEnabled:1];
    [v42 setSignpostPersisted:1];
    v86 = v46;
    [v46 setSignpostEnabled:1];
    [v46 setSignpostPersisted:1];
    v85 = v50;
    [v50 setSignpostEnabled:1];
    [v50 setSignpostPersisted:1];
    v51 = objc_allocWithZone(OSLogPreferencesCategory);
    v52 = v48;
    v53 = sub_A028();
    v54 = [v51 initWithName:v53 subsystem:v52];

    v55 = objc_allocWithZone(OSLogPreferencesCategory);
    v88 = v52;
    v56 = sub_A028();
    v57 = [v55 initWithName:v56 subsystem:v88];

    v83 = v54;
    [v54 setSignpostEnabled:1];
    [v54 setSignpostPersisted:1];
    v82 = v57;
    [v57 setSignpostEnabled:1];
    [v57 setSignpostPersisted:1];
    v58 = objc_allocWithZone(OSLogPreferencesSubsystem);
    v59 = sub_A028();
    v60 = [v58 initWithName:v59];

    v61 = objc_allocWithZone(OSLogPreferencesCategory);
    v62 = v60;
    v63 = sub_A028();
    v64 = v61;
    v65 = v62;
    v84 = v62;
    v66 = [v64 initWithName:v63 subsystem:v62];

    [v66 setSignpostEnabled:1];
    [v66 setSignpostPersisted:1];
    v67 = objc_allocWithZone(OSLogPreferencesSubsystem);
    v68 = sub_A028();
    v69 = [v67 initWithName:v68];

    v70 = objc_allocWithZone(OSLogPreferencesCategory);
    v81 = v69;
    v71 = sub_A028();
    v72 = [v70 initWithName:v71 subsystem:v81];

    [v72 setSignpostEnabled:1];
    [v72 setSignpostPersisted:1];
    sub_62F4(&qword_14F60, &qword_B100);
    v73 = swift_initStackObject();
    *(v73 + 16) = xmmword_AB90;
    *(v73 + 32) = v42;
    *(v73 + 40) = v86;
    *(v73 + 48) = v85;
    *(v73 + 56) = v83;
    *(v73 + 64) = v82;
    *(v73 + 72) = v66;
    *(v73 + 80) = v72;
    swift_beginAccess();
    v89 = v42;
    v87 = v86;
    v74 = v85;
    v75 = v83;
    v76 = v82;
    v77 = v66;
    v78 = v72;
    sub_2220(v73);
    swift_endAccess();
  }
}

uint64_t sub_6E74()
{
  v1 = OBJC_IVAR___ATSLoggingProvider_modifiedCategories;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_A168();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_A148();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 reset];
    }
  }

  return result;
}

uint64_t sub_6F60(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    goto LABEL_26;
  }

  v3 = a3;
  v4 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
    goto LABEL_25;
  }

  v5 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
LABEL_26:
    v109 = 0;
    v7 = 0;
    v8 = 0;
LABEL_27:
    *(v96 + OBJC_IVAR___ATSLoggingProvider_requiresSignpost) = v109 & 1;
    v21 = sub_5A1C(_swiftEmptyArrayStorage);
    v108 = v8;
    v103 = v7;
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = sub_5B30(_swiftEmptyArrayStorage);
    }

    v110 = v22 + 64;
    v23 = 1 << *(v22 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v22 + 64);
    v106 = (v23 + 63) >> 6;

    v26 = 0;
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v25)
          {
            while (1)
            {
              v27 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                __break(1u);
                goto LABEL_80;
              }

              if (v27 >= v106)
              {
                break;
              }

              v25 = *(v110 + 8 * v27);
              ++v26;
              if (v25)
              {
                v26 = v27;
                goto LABEL_38;
              }
            }

            if (v108)
            {
              if (*(v21 + 16))
              {
                v85 = sub_4AD4(0x7461636964657270, 0xE900000000000065);
                v86 = v103;
                if (v87)
                {
                  v88 = (*(v21 + 56) + 16 * v85);
                  v90 = *v88;
                  v89 = v88[1];

                  v120._countAndFlagsBits = v90;
                  v120._object = v89;
                  sub_A078(v120);

                  v121._countAndFlagsBits = 0x20524F2029;
                  v121._object = 0xE500000000000000;
                  sub_A078(v121);
                  v122._countAndFlagsBits = v103;
                  v122._object = v108;
                  sub_A078(v122);

                  v86 = 40;
                  v108 = 0xE100000000000000;
                }
              }

              else
              {
                v86 = v103;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_520C(v86, v108, 0x7461636964657270, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
            }

            sub_5D38(a1, v21);
          }

LABEL_38:
          v28 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          v29 = v28 | (v26 << 6);
          v30 = *(*(v22 + 56) + 8 * v29);
          v31 = v30[2];
        }

        while (!v31);
        v32 = (*(v22 + 48) + 16 * v29);
        v33 = v32[1];
        if (v31 == 1)
        {
          break;
        }

        if (*v32 == 0x7461636964657270 && v33 == 0xE900000000000065)
        {
          v35 = 0x7461636964657270;
LABEL_51:
          v95 = v35;
          v99 = v22;
          v93 = v21;
          v101 = v33;

          sub_567C(0, v31, 0);
          v52 = (v30 + 5);
          do
          {
            v53 = *(v52 - 1);
            v54 = *v52;

            v118._countAndFlagsBits = v53;
            v118._object = v54;
            sub_A078(v118);
            v119._countAndFlagsBits = 41;
            v119._object = 0xE100000000000000;
            sub_A078(v119);

            v56 = _swiftEmptyArrayStorage[2];
            v55 = _swiftEmptyArrayStorage[3];
            if (v56 >= v55 >> 1)
            {
              sub_567C((v55 > 1), v56 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v56 + 1;
            v57 = &_swiftEmptyArrayStorage[2 * v56];
            *(v57 + 4) = 40;
            *(v57 + 5) = 0xE100000000000000;
            v52 += 2;
            --v31;
          }

          while (v31);

          sub_62F4(&qword_14F58, &qword_B0F8);
          sub_8DA0(&qword_14F70, &qword_14F58, &qword_B0F8);
          v58 = sub_A018();
          v60 = v59;

          v61 = swift_isUniquelyReferenced_nonNull_native();
          v62 = sub_4AD4(v95, v101);
          v64 = v93[2];
          v65 = (v63 & 1) == 0;
          v48 = __OFADD__(v64, v65);
          v66 = v64 + v65;
          if (v48)
          {
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          v67 = v63;
          if (v93[3] >= v66)
          {
            if ((v61 & 1) == 0)
            {
              v79 = v62;
              sub_5394();
              v62 = v79;
            }
          }

          else
          {
            sub_4CA4(v66, v61);
            v62 = sub_4AD4(v95, v101);
            if ((v67 & 1) != (v68 & 1))
            {
              goto LABEL_85;
            }
          }

          v22 = v99;
          if (v67)
          {
            v69 = v62;

            v21 = v93;
            v70 = (v93[7] + 16 * v69);
            v71 = v70[1];
            *v70 = v58;
            v70[1] = v60;
          }

          else
          {
            v21 = v93;
            v93[(v62 >> 6) + 8] |= 1 << v62;
            v72 = (v93[6] + 16 * v62);
            *v72 = v95;
            v72[1] = v101;
            v73 = (v93[7] + 16 * v62);
            *v73 = v58;
            v73[1] = v60;
            v74 = v93[2];
            v48 = __OFADD__(v74, 1);
            v75 = v74 + 1;
            if (v48)
            {
              goto LABEL_82;
            }

            v93[2] = v75;
          }
        }

        else
        {
          v35 = *v32;
          if (sub_A1B8())
          {
            goto LABEL_51;
          }
        }
      }

      v36 = v21;
      v37 = *v32;
      v98 = v22;
      v100 = v30[4];
      v38 = v30[5];
      v39 = v32[1];

      v40 = swift_isUniquelyReferenced_nonNull_native();
      v112 = v36;
      v41 = v37;
      v42 = v37;
      v43 = v39;
      v44 = sub_4AD4(v42, v39);
      v46 = v36[2];
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        goto LABEL_81;
      }

      v50 = v45;
      if (v36[3] < v49)
      {
        break;
      }

      if (v40)
      {
        goto LABEL_66;
      }

      v80 = v44;
      sub_5394();
      v44 = v80;
      if (v50)
      {
LABEL_67:
        v76 = v44;

        v21 = v112;
        v77 = (v112[7] + 16 * v76);
        v78 = v77[1];
        *v77 = v100;
        v77[1] = v38;

        goto LABEL_71;
      }

LABEL_69:
      v36[(v44 >> 6) + 8] |= 1 << v44;
      v81 = (v36[6] + 16 * v44);
      *v81 = v41;
      v81[1] = v43;
      v82 = (v36[7] + 16 * v44);
      *v82 = v100;
      v82[1] = v38;
      v83 = v36[2];
      v48 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v48)
      {
        goto LABEL_83;
      }

      v21 = v36;
      v36[2] = v84;
LABEL_71:
      v22 = v98;
    }

    sub_4CA4(v49, v40);
    v44 = sub_4AD4(v41, v43);
    if ((v50 & 1) != (v51 & 1))
    {
      goto LABEL_85;
    }

LABEL_66:
    if (v50)
    {
      goto LABEL_67;
    }

    goto LABEL_69;
  }

LABEL_4:
  v102 = v4;
  v6 = 0;
  v109 = 0;
  v7 = 0;
  v8 = 0;
  v4 = v3 & 0xC000000000000001;
  v97 = v3;
  v9 = &ATSLoggingProvider__prots;
  v105 = v3 & 0xC000000000000001;
  v107 = v5;
  while (1)
  {
    if (v4)
    {
      v10 = sub_A148();
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v6 >= *(v102 + 16))
      {
        goto LABEL_24;
      }

      v10 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v5 = sub_A168();
        if (!v5)
        {
          goto LABEL_26;
        }

        goto LABEL_4;
      }
    }

    if ([v10 v9[206].count])
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_6:
    ++v6;
    if (v11 == v5)
    {
      goto LABEL_27;
    }
  }

  swift_getObjectType();
  v12 = swift_conformsToProtocol2();
  if (!v12 || !v10)
  {
    sub_A138(33);

    swift_getObjectType();
    v116._countAndFlagsBits = sub_A258();
    sub_A078(v116);

    v20 = sub_A028();

    [a1 warnWithMessage:v20];
    swift_unknownObjectRelease();

LABEL_22:
    v4 = v105;
    v5 = v107;
    v9 = &ATSLoggingProvider__prots;
    goto LABEL_6;
  }

  v13 = v12;
  v14 = v7;
  v15 = v8;
  ObjectType = swift_getObjectType();
  v17 = *(v13 + 16);
  swift_unknownObjectRetain();
  v18 = v17(ObjectType, v13);
  v19._countAndFlagsBits = (*(v13 + 8))(ObjectType, v13);
  if (v19._object)
  {
    v109 |= v18;
    if (v15)
    {
      sub_A078(v19);

      v114._countAndFlagsBits = 41;
      v114._object = 0xE100000000000000;
      sub_A078(v114);
      v111 = v14;
      v113 = v15;

      v115._countAndFlagsBits = 0x2820524F20;
      v115._object = 0xE500000000000000;
      sub_A078(v115);

      swift_unknownObjectRelease_n();
    }

    else
    {
      v111 = 40;
      v113 = 0xE100000000000000;
      sub_A078(v19);

      v117._countAndFlagsBits = 41;
      v117._object = 0xE100000000000000;
      sub_A078(v117);
      swift_unknownObjectRelease_n();
    }

    v7 = v111;
    v8 = v113;
    v3 = v97;
    goto LABEL_22;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  result = sub_A1C8();
  __break(1u);
  return result;
}

uint64_t sub_7910(uint64_t a1)
{
  sub_62F4(&qword_14F60, &qword_B100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_ABA0;
  type metadata accessor for MetalFramePacingDataCategory();
  *(inited + 32) = sub_9084(a1);
  v3 = inited + 32;
  type metadata accessor for HangsDataCategory();
  *(inited + 40) = sub_9238(a1);
  type metadata accessor for ScrollingDataCategory();
  *(inited + 48) = sub_941C(a1);
  type metadata accessor for AppLaunchDataCategory();
  *(inited + 56) = sub_95F8(a1);
  type metadata accessor for InteractionTrackingDataCategory();
  *(inited + 64) = sub_97C0(a1);
  type metadata accessor for PerfPowerMetricsDataCategory();
  *(inited + 72) = sub_997C(a1);
  v4 = sub_5C34(_swiftEmptyArrayStorage);
  v5 = 0;
  v6 = &ATSLoggingProvider__prots;
LABEL_2:
  v7 = v5;
  while ((inited & 0xC000000000000001) != 0)
  {
    v8 = sub_A148();
    v5 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_24;
    }

LABEL_6:
    if ([v8 isAvailable])
    {
      v30 = v3;
      v9 = [v8 v6[207].count];
      v10 = sub_A048();
      v31 = v11;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_4AD4(v10, v31);
      v15 = v4[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_26;
      }

      v19 = v14;
      if (v4[3] >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = v13;
          sub_550C();
          v13 = v24;
          v6 = &ATSLoggingProvider__prots;
          if (v19)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }
      }

      else
      {
        sub_4F64(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_4AD4(v10, v31);
        if ((v19 & 1) != (v20 & 1))
        {
          goto LABEL_28;
        }
      }

      v6 = &ATSLoggingProvider__prots;
      if (v19)
      {
LABEL_18:
        v21 = v13;

        v22 = v4[7];
        v23 = *(v22 + 8 * v21);
        *(v22 + 8 * v21) = v8;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_22;
      }

LABEL_20:
      v4[(v13 >> 6) + 8] |= 1 << v13;
      v25 = (v4[6] + 16 * v13);
      *v25 = v10;
      v25[1] = v31;
      *(v4[7] + 8 * v13) = v8;
      swift_unknownObjectRelease();
      v26 = v4[2];
      v17 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v17)
      {
        goto LABEL_27;
      }

      v4[2] = v27;
LABEL_22:
      v3 = v30;
      if (v5 != 6)
      {
        goto LABEL_2;
      }

LABEL_23:
      swift_setDeallocating();
      v28 = *(inited + 16);
      swift_arrayDestroy();
      return v4;
    }

    swift_unknownObjectRelease();
    ++v7;
    if (v5 == 6)
    {
      goto LABEL_23;
    }
  }

  if (v7 >= *(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_25;
  }

  v8 = *(inited + 8 * v7 + 32);
  swift_unknownObjectRetain();
  v5 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_6;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_A1C8();
  __break(1u);
  return result;
}

uint64_t sub_7C50(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_7C64(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_7C64(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_7C80(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_7C9C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_7CB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_7CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_7D3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for LoggingProvider()
{
  result = qword_15230;
  if (!qword_15230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7DB8()
{
  sub_7E98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_7E98()
{
  if (!qword_14E60)
  {
    sub_9FB8();
    v0 = sub_A108();
    if (!v1)
    {
      atomic_store(v0, &qword_14E60);
    }
  }
}

void type metadata accessor for OSLogEventStreamFlags()
{
  if (!qword_14EC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_14EC8);
    }
  }
}

unint64_t sub_8074()
{
  result = qword_15640;
  if (!qword_15640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15640);
  }

  return result;
}

unint64_t sub_80CC()
{
  result = qword_15648[0];
  if (!qword_15648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_15648);
  }

  return result;
}

unint64_t sub_8124()
{
  result = qword_156D0;
  if (!qword_156D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_156D0);
  }

  return result;
}

unint64_t sub_817C()
{
  result = qword_156D8[0];
  if (!qword_156D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_156D8);
  }

  return result;
}

uint64_t sub_81D0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_821C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8254()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_828C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_82CC(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_beginAccess();
  v7 = *(v5 + 16);
  *(v5 + 16) = a1;
  v8 = a1;

  swift_beginAccess();
  v9 = *(v6 + 16);
  *(v6 + 16) = a2;
  swift_errorRetain();
}

uint64_t sub_835C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_869C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_86DC(uint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  if (a3 != 5)
  {
LABEL_7:
    v11 = *(v5 + OBJC_IVAR___ATSLoggingProvider_logger);
    if (v11)
    {
      v12 = *(v5 + OBJC_IVAR___ATSLoggingProvider_logger);
      swift_unknownObjectRetain();
      v13 = sub_A028();

      [v11 failWithReason:v13];

LABEL_9:
      swift_unknownObjectRelease();
      return sub_A0F8();
    }

    goto LABEL_36;
  }

  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_27;
    }

    v14 = result;
    v15 = *(result + 16);
    v16 = sub_9E78();
    if (!v16)
    {
LABEL_30:
      sub_9E88();
      return sub_A0F8();
    }

    v17 = v16;
    result = sub_9E98();
    if (__OFSUB__(v15, result))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v18 = v15 - result + v17;
    result = sub_9E88();
    if (!v18)
    {
      return sub_A0F8();
    }

    if (__OFSUB__(*(v14 + 24), *(v14 + 16)))
    {
      goto LABEL_34;
    }

    result = ktrace_file_append_chunk();
    if (result)
    {
      return sub_A0F8();
    }

    v10 = *(v5 + OBJC_IVAR___ATSLoggingProvider_logger);
    if (v10)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (!v9)
  {
    result = ktrace_file_append_chunk();
    if (result)
    {
      return sub_A0F8();
    }

    v10 = *(v5 + OBJC_IVAR___ATSLoggingProvider_logger);
    if (!v10)
    {
      __break(1u);
      goto LABEL_7;
    }

LABEL_29:
    swift_unknownObjectRetain();
    v24 = sub_A028();
    [v10 failWithReason:v24];

    goto LABEL_9;
  }

  v19 = result;
  if (result > result >> 32)
  {
    __break(1u);
    goto LABEL_32;
  }

  v20 = result;
  v21 = sub_9E78();
  if (!v21)
  {
    goto LABEL_30;
  }

  v22 = v21;
  result = sub_9E98();
  if (__OFSUB__(v19, result))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = v19 - result + v22;
  result = sub_9E88();
  if (!v23)
  {
    return sub_A0F8();
  }

  if (__OFSUB__(HIDWORD(v20), v20))
  {
    goto LABEL_35;
  }

  if (ktrace_file_append_chunk())
  {
    return sub_A0F8();
  }

  v10 = *(v5 + OBJC_IVAR___ATSLoggingProvider_logger);
  if (v10)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_27:
  result = ktrace_file_append_chunk();
  if (result)
  {
    return sub_A0F8();
  }

  v10 = *(v5 + OBJC_IVAR___ATSLoggingProvider_logger);
  if (v10)
  {
    goto LABEL_29;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_8B04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_8B14(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_8B24()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_62F4(&qword_14FA0, &qword_B130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8BD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_62F4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_8C3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_62F4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_8C9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8CE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_62F4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_8D4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_8DA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_81D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8DE8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Int sub_8EA0(unsigned __int8 a1)
{
  sub_A228();
  sub_A238(a1);
  return sub_A248();
}

Swift::Int sub_8EFC()
{
  v1 = *v0;
  sub_A228();
  sub_A238(v1);
  return sub_A248();
}

Swift::Int sub_8F70()
{
  v1 = *v0;
  sub_A228();
  sub_A238(v1);
  return sub_A248();
}

uint64_t sub_8FB4()
{
  v0 = ktrace_machine_sw_platform();
  if (v0 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x4050203010006uLL >> (8 * v0));
  }
}

unint64_t sub_8FF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Logging28MetalFramePacingDataCategory_machine);
  if (ktrace_machine_sw_platform() - 1 >= 2)
  {
    return 0;
  }

  else
  {
    return 0xD000000000000024;
  }
}

unint64_t sub_9194()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Logging17HangsDataCategory_machine);
  v2 = ktrace_machine_sw_platform();
  if ((v2 - 1) < 4 || v2 == 6)
  {
    return 0xD000000000000044;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_91F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Logging17HangsDataCategory_machine);
  v2 = ktrace_machine_sw_platform();
  return (v2 < 7) & (0x5Eu >> v2);
}

unint64_t sub_9344()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Logging21ScrollingDataCategory_machine);
  if (ktrace_machine_sw_platform() - 1 > 1)
  {
    return 0;
  }

  v2 = sub_8FB4();
  if (v2 != 1)
  {
    if (!v2)
    {
      return 0xD00000000000003CLL;
    }

    return 0;
  }

  return 0xD00000000000003BLL;
}

unint64_t sub_9530()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Logging21AppLaunchDataCategory_machine);
  v2 = ktrace_machine_sw_platform();
  if ((v2 - 1) >= 4 && v2 != 6)
  {
    return 0;
  }

  if ((sub_8FB4() - 5) >= 2u)
  {
    return 0xD000000000000053;
  }

  return 0;
}

uint64_t sub_95B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Logging21AppLaunchDataCategory_machine);
  v2 = ktrace_machine_sw_platform();
  return (v2 < 7) & (0x5Eu >> v2);
}

unint64_t sub_9710()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Logging31InteractionTrackingDataCategory_machine);
  if (ktrace_machine_sw_platform() != 2)
  {
    return 0;
  }

  if (sub_8FB4() == 1)
  {
    return 0xD000000000000056;
  }

  return 0;
}

unint64_t sub_98CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Logging28PerfPowerMetricsDataCategory_machine);
  if (ktrace_machine_sw_platform() != 2)
  {
    return 0;
  }

  if (sub_8FB4() == 1)
  {
    return 0xD00000000000004ELL;
  }

  return 0;
}

id sub_9988(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_99EC(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[*a2] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_9A50(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&a1[*a4] = a3;
  v9.receiver = a1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

unint64_t sub_9B94()
{
  result = qword_15010;
  if (!qword_15010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15010);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Platform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Platform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}