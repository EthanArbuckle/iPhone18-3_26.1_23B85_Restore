uint64_t sub_100000ED0()
{
  v0 = sub_100005990();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002EE0(&qword_10000C200, &qword_100005F58);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  v9 = sub_1000059E0();
  sub_100003CB8(v9, qword_10000C270);
  sub_100003C2C(v9, qword_10000C270);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return sub_1000059C0();
}

char *sub_10000107C()
{
  v1 = v0;
  v2 = *(*(sub_100002EE0(&qword_10000C200, &qword_100005F58) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v80 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v86 = v75 - v5;
  v6 = sub_1000059E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v85 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v78 = v75 - v11;
  v12 = [objc_opt_self() defaultManager];
  sub_1000059B0(&STSDiagnosticExtension);
  v14 = v13;
  v87 = 0;
  v15 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:0 options:0 error:&v87];

  v16 = v87;
  v79 = v6;
  if (v15)
  {
    v75[1] = 0;
    v17 = sub_100005AB0();
    v18 = v16;

    v19 = OBJC_IVAR____TtC13STSDiagnostic22STSDiagnosticExtension_logger;
    v20 = v1;
    v75[2] = v19;
    v21 = sub_100005A30();
    v22 = sub_100005B00();

    v23 = os_log_type_enabled(v21, v22);
    v75[3] = v1;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v87 = v84;
      *v24 = 136315394;
      sub_1000036E4();
      v25 = sub_100005B60();
      v27 = sub_10000313C(v25, v26, &v87);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = sub_100005AC0();
      v30 = sub_10000313C(v28, v29, &v87);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "#STS DE# content of path %s: %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    v31 = v6;
    v32 = v80;
    v33 = v78;
    v34 = &_swiftEmptyArrayStorage;
    v83 = *(v17 + 16);
    v76 = &_swiftEmptyArrayStorage;
    if (v83)
    {
      v35 = 0;
      v81 = v7 + 16;
      v82 = v17;
      v77 = (v7 + 8);
      v84 = (v7 + 32);
      while (v35 < *(v17 + 16))
      {
        v36 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v37 = v17 + v36;
        v38 = *(v7 + 72);
        (*(v7 + 16))(v33, v37 + v38 * v35, v31);
        sub_1000059A0();
        v88._countAndFlagsBits = 6709603;
        v88._object = 0xE300000000000000;
        v39 = sub_100005A80(v88);

        if (v39 || (sub_1000059A0(), v89._countAndFlagsBits = 0x6E6970736C696174, v89._object = 0xE800000000000000, v40 = sub_100005A80(v89), , v40))
        {
          v41 = *v84;
          (*v84)(v85, v33, v31);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v87 = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000037A8(0, v34[2] + 1, 1);
            v33 = v78;
            v34 = v87;
          }

          v44 = v34[2];
          v43 = v34[3];
          if (v44 >= v43 >> 1)
          {
            sub_1000037A8(v43 > 1, v44 + 1, 1);
            v33 = v78;
            v34 = v87;
          }

          v34[2] = v44 + 1;
          v45 = v34 + v36 + v44 * v38;
          v31 = v79;
          v41(v45, v85, v79);
          v32 = v80;
        }

        else
        {
          (*v77)(v33, v31);
        }

        ++v35;
        v17 = v82;
        if (v83 == v35)
        {
          goto LABEL_16;
        }
      }

LABEL_35:
      __break(1u);
    }

LABEL_16:

    v46 = 0;
    v87 = &_swiftEmptyArrayStorage;
    v84 = (v7 + 56);
    v85 = (v7 + 16);
    v47 = v34[2];
    if (v47)
    {
      while (v46 < v34[2])
      {
        v60 = v86;
        (*(v7 + 16))(v86, v34 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v46, v31);
        (*(v7 + 56))(v60, 0, 1, v31);
        sub_1000037C8(v60, v32);
        if ((*(v7 + 48))(v32, 1, v31) == 1)
        {
          v58 = 0;
        }

        else
        {
          sub_1000059B0(v61);
          v58 = v57;
          (*(v7 + 8))(v32, v31);
        }

        v59 = [objc_allocWithZone(DEAttachmentItem) initWithPathURL:v58];

        sub_100003838(v86, &qword_10000C200, &qword_100005F58);
        ++v46;
        if (v59)
        {
          sub_100005A90();
          if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v62 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_100005AD0();
            v31 = v79;
          }

          sub_100005AF0();
          v76 = v87;
          if (v47 == v46)
          {
            goto LABEL_17;
          }
        }

        else if (v47 == v46)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_17:

    v48 = v76;

    v49 = sub_100005A30();
    v50 = sub_100005B00();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v87 = v52;
      *v51 = 136315138;
      sub_100003898();
      v53 = sub_100005AC0();
      v55 = sub_10000313C(v53, v54, &v87);

      *(v51 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "#STS DE# filtered %s", v51, 0xCu);
      sub_10000373C(v52);
    }

    v56 = sub_1000019F0(v48);
  }

  else
  {
    v63 = v87;
    sub_100005980();

    swift_willThrow();
    v64 = v1;
    swift_errorRetain();
    v65 = sub_100005A30();
    v66 = sub_100005B00();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v87 = v69;
      *v67 = 138412546;
      swift_errorRetain();
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v70;
      *v68 = v70;
      *(v67 + 12) = 2080;
      sub_1000036E4();
      v71 = sub_100005B60();
      v73 = sub_10000313C(v71, v72, &v87);

      *(v67 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v65, v66, "#STS DE# attachmentList error: %@ at %s", v67, 0x16u);
      sub_100003838(v68, &qword_10000C210, &qword_100005F60);

      sub_10000373C(v69);
    }

    return &_swiftEmptyArrayStorage;
  }

  return v56;
}

char *sub_1000019F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100005B40();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100003788(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100005B20();
        sub_100003898();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100003788((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1000058BC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100003898();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100003788((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1000058BC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_100001C2C()
{
  v1 = v0;
  v2 = sub_100002EE0(&qword_10000C200, &qword_100005F58);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v85 = v74 - v7;
  v8 = sub_1000059E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v83 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v78 = v74 - v13;
  v14 = [objc_opt_self() defaultManager];
  v15 = OBJC_IVAR____TtC13STSDiagnostic22STSDiagnosticExtension_cachePath;
  sub_1000059B0(&STSDiagnosticExtension);
  v17 = v16;
  v86 = 0;
  v18 = [v14 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:0 error:&v86];

  v19 = v86;
  if (v18)
  {
    v84 = v15;
    v74[1] = 0;
    v20 = sub_100005AB0();
    v21 = v19;

    v22 = OBJC_IVAR____TtC13STSDiagnostic22STSDiagnosticExtension_logger;
    v23 = v1;
    v74[2] = v22;
    v24 = sub_100005A30();
    v25 = sub_100005B00();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v86 = v82;
      *v26 = 136315394;
      sub_1000036E4();
      v27 = sub_100005B60();
      v29 = sub_10000313C(v27, v28, &v86);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = sub_100005AC0();
      v32 = sub_10000313C(v30, v31, &v86);

      *(v26 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "#STS DE# content of path %s: %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    v33 = v78;
    v74[3] = v1;
    v34 = *(v20 + 16);
    v35 = &_swiftEmptyArrayStorage;
    v77 = v6;
    v82 = v34;
    v75 = &_swiftEmptyArrayStorage;
    if (v34)
    {
      v36 = 0;
      v76 = (v9 + 8);
      v79 = (v9 + 32);
      v80 = v9 + 16;
      v84 = v8;
      v81 = v20;
      while (v36 < *(v20 + 16))
      {
        v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v38 = v20 + v37;
        v39 = *(v9 + 72);
        (*(v9 + 16))(v33, v38 + v39 * v36, v8);
        sub_1000059A0();
        v87._countAndFlagsBits = 7235938;
        v87._object = 0xE300000000000000;
        v40 = sub_100005A80(v87);

        if (v40)
        {
          v41 = v33;
          v42 = *v79;
          (*v79)(v83, v41, v8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000037A8(0, *(v35 + 2) + 1, 1);
            v35 = v86;
          }

          v45 = *(v35 + 2);
          v44 = *(v35 + 3);
          if (v45 >= v44 >> 1)
          {
            sub_1000037A8(v44 > 1, v45 + 1, 1);
            v35 = v86;
          }

          *(v35 + 2) = v45 + 1;
          v42(&v35[v37 + v45 * v39], v83, v84);
          v6 = v77;
          v33 = v78;
        }

        else
        {
          (*v76)(v33, v8);
        }

        ++v36;
        v20 = v81;
        v8 = v84;
        if (v82 == v36)
        {
          goto LABEL_15;
        }
      }

LABEL_34:
      __break(1u);
    }

LABEL_15:

    v46 = 0;
    v86 = &_swiftEmptyArrayStorage;
    v83 = (v9 + 56);
    v84 = v9 + 16;
    v47 = *(v35 + 2);
    if (v47)
    {
      while (v46 < *(v35 + 2))
      {
        v59 = v85;
        (*(v9 + 16))(v85, &v35[((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v46], v8);
        (*(v9 + 56))(v59, 0, 1, v8);
        sub_1000037C8(v59, v6);
        if ((*(v9 + 48))(v6, 1, v8) == 1)
        {
          v57 = 0;
        }

        else
        {
          sub_1000059B0(v60);
          v57 = v56;
          (*(v9 + 8))(v6, v8);
        }

        v58 = [objc_allocWithZone(DEAttachmentItem) initWithPathURL:v57];

        sub_100003838(v85, &qword_10000C200, &qword_100005F58);
        ++v46;
        if (v58)
        {
          sub_100005A90();
          if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v61 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_100005AD0();
            v6 = v77;
          }

          sub_100005AF0();
          v75 = v86;
          if (v47 == v46)
          {
            goto LABEL_16;
          }
        }

        else if (v47 == v46)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_16:

    v48 = v75;

    v49 = sub_100005A30();
    v50 = sub_100005B00();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315138;
      sub_100003898();
      v53 = sub_100005AC0();
      v55 = sub_10000313C(v53, v54, &v86);

      *(v51 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "#STS DE# filtered %s", v51, 0xCu);
      sub_10000373C(v52);
    }
  }

  else
  {
    v62 = v86;
    sub_100005980();

    swift_willThrow();
    v63 = v1;
    swift_errorRetain();
    v64 = sub_100005A30();
    v65 = sub_100005B00();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v86 = v68;
      *v66 = 138412546;
      swift_errorRetain();
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v69;
      *v67 = v69;
      *(v66 + 12) = 2080;
      sub_1000036E4();
      v70 = sub_100005B60();
      v72 = sub_10000313C(v70, v71, &v86);

      *(v66 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "#STS DE# attachmentList error: %@ at %s", v66, 0x16u);
      sub_100003838(v67, &qword_10000C210, &qword_100005F60);

      sub_10000373C(v68);
    }

    return &_swiftEmptyArrayStorage;
  }

  return v48;
}

uint64_t sub_10000254C(void *a1, void *a2)
{
  v4 = sub_100002EE0(&qword_10000C248, &qword_100005F88);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v38 - v19;
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  sub_1000058CC(a1, a1[3]);
  v23 = sub_100005B70();
  result = [v23 respondsToSelector:"modificationDate"];
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v39 = v11;
  v25 = [v23 modificationDate];
  if (v25)
  {
    v26 = v25;
    sub_100005A00();

    v27 = sub_100005A10();
    (*(*(v27 - 8) + 56))(v17, 0, 1, v27);
  }

  else
  {
    v27 = sub_100005A10();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  sub_100005910(v17, v20);
  sub_100005910(v20, v22);
  sub_100005A10();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  result = v29(v22, 1, v27);
  if (result == 1)
  {
    goto LABEL_13;
  }

  sub_1000058CC(a2, a2[3]);
  v30 = sub_100005B70();
  result = [v30 respondsToSelector:"modificationDate"];
  if ((result & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v31 = [v30 modificationDate];
  if (v31)
  {
    v32 = v31;
    sub_100005A00();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  (*(v28 + 56))(v8, v33, 1, v27);
  v34 = v8;
  v35 = v39;
  sub_100005910(v34, v39);
  sub_100005910(v35, v14);
  result = v29(v14, 1, v27);
  if (result != 1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v36 = sub_1000059F0();
    v37 = *(v28 + 8);
    v37(v14, v27);
    v37(v22, v27);
    return v36 & 1;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1000029A8()
{
  v1 = sub_100005990();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A40();
  if (qword_10000C258 != -1)
  {
    swift_once();
  }

  v6 = sub_1000059E0();
  sub_100003C2C(v6, qword_10000C270);
  v7 = enum case for URL.DirectoryHint.isDirectory(_:);
  v14 = v2[13];
  v14(v5, enum case for URL.DirectoryHint.isDirectory(_:), v1);
  sub_100003C64();
  sub_1000059D0();
  v8 = v2[1];
  v8(v5, v1);
  v13 = OBJC_IVAR____TtC13STSDiagnostic22STSDiagnosticExtension_cachePath;
  sub_100002EE0(&qword_10000C238, &qword_100005F78);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100005F20;
  *(v9 + 32) = 0x7972617262694CLL;
  *(v9 + 40) = 0xE700000000000000;
  *(v9 + 48) = 0x736568636143;
  *(v9 + 56) = 0xE600000000000000;
  *(v9 + 64) = 0x53545469726953;
  *(v9 + 72) = 0xE700000000000000;
  *(v9 + 80) = 0x65646F4D534E4E42;
  *(v9 + 88) = 0xEA0000000000736CLL;
  *(v9 + 96) = sub_100005A20();
  *(v9 + 104) = v10;
  v14(v5, v7, v1);
  sub_1000059D0();

  v8(v5, v1);
  v11 = type metadata accessor for STSDiagnosticExtension();
  v15.receiver = v0;
  v15.super_class = v11;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_100002CA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STSDiagnosticExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for STSDiagnosticExtension()
{
  result = qword_10000C260;
  if (!qword_10000C260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002E14()
{
  result = sub_100005A50();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1000059E0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100002EE0(uint64_t *a1, uint64_t *a2)
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

char *sub_100002F28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EE0(&qword_10000C240, &qword_100005F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100003038(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EE0(&qword_10000C250, &unk_100005F90);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10000313C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003208(v11, 0, 0, 1, a1, a2);
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
    sub_100003BD0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000373C(v11);
  return v7;
}

unint64_t sub_100003208(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003314(a5, a6);
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
    result = sub_100005B30();
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

char *sub_100003314(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003360(a1, a2);
  sub_100003490(&off_100008370);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003360(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000357C(v5, 0);
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

  result = sub_100005B30();
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
        v10 = sub_100005A70();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000357C(v10, 0);
        result = sub_100005B10();
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

uint64_t sub_100003490(uint64_t result)
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

  result = sub_1000035F0(result, v12, 1, v3);
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

void *sub_10000357C(uint64_t a1, uint64_t a2)
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

  sub_100002EE0(&qword_10000C228, &qword_100005F70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000035F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EE0(&qword_10000C228, &qword_100005F70);
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

unint64_t sub_1000036E4()
{
  result = qword_10000C208;
  if (!qword_10000C208)
  {
    sub_1000059E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C208);
  }

  return result;
}

uint64_t sub_10000373C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_100003788(char *a1, int64_t a2, char a3)
{
  result = sub_1000038E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000037A8(size_t a1, int64_t a2, char a3)
{
  result = sub_1000039F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000037C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EE0(&qword_10000C200, &qword_100005F58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003838(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002EE0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003898()
{
  result = qword_10000C218;
  if (!qword_10000C218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C218);
  }

  return result;
}

char *sub_1000038E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EE0(&qword_10000C240, &qword_100005F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000039F4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002EE0(&qword_10000C220, &qword_100005F68);
  v10 = *(sub_1000059E0() - 8);
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
  v15 = *(sub_1000059E0() - 8);
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

uint64_t sub_100003BD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003C2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100003C64()
{
  result = qword_10000C230;
  if (!qword_10000C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C230);
  }

  return result;
}

uint64_t *sub_100003CB8(uint64_t a1, uint64_t *a2)
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

Swift::Int sub_100003D1C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100005600(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100003E80(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_100003D88(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100002F28(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Int sub_100003E80(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100005B50(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_100005AE0();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000043FC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100003F7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100003F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100002EE0(&qword_10000C248, &qword_100005F88);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v11 = __chkstk_darwin(v10);
  v62 = &v54[-v12];
  v13 = __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v13);
  v16 = &v54[-v15];
  v17 = __chkstk_darwin(v14);
  v63 = &v54[-v18];
  result = __chkstk_darwin(v17);
  v71 = &v54[-v22];
  v55 = a2;
  if (a3 != a2)
  {
    v23 = v20;
    v59 = *a4;
    v60 = v16;
    v24 = (v59 + 32 * a3);
    v25 = a1 - a3;
    v26 = &STSDiagnosticExtension;
    v61 = v21;
LABEL_5:
    v57 = v24;
    v58 = a3;
    v56 = v25;
    v27 = v25;
    while (1)
    {
      sub_100003BD0(v24, &v69);
      sub_100003BD0((v24 - 2), v68);
      sub_1000058CC(&v69, v70);
      v28 = sub_100005B70();
      result = [v28 respondsToSelector:*&v26[3].flags];
      if ((result & 1) == 0)
      {
        break;
      }

      v29 = v23;
      v30 = *&v26[3].flags;
      v65 = v28;
      v31 = [v28 v30];
      v66 = v24;
      v67 = v27;
      v64 = v24 - 2;
      if (v31)
      {
        v32 = v31;
        sub_100005A00();

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v34 = sub_100005A10();
      v35 = *(v34 - 8);
      v36 = v35[7];
      v36(v16, v33, 1, v34);
      v37 = v63;
      sub_100005910(v16, v63);
      v38 = v71;
      sub_100005910(v37, v71);
      v39 = v35[6];
      result = v39(v38, 1, v34);
      if (result == 1)
      {
        goto LABEL_22;
      }

      sub_1000058CC(v68, v68[3]);
      v40 = sub_100005B70();
      result = [v40 respondsToSelector:"modificationDate"];
      if ((result & 1) == 0)
      {
        goto LABEL_24;
      }

      v41 = [v40 modificationDate];
      if (v41)
      {
        v42 = v41;
        sub_100005A00();

        v43 = 0;
      }

      else
      {
        v43 = 1;
      }

      v36(v29, v43, 1, v34);
      v44 = v62;
      sub_100005910(v29, v62);
      v45 = v61;
      sub_100005910(v44, v61);
      result = v39(v45, 1, v34);
      if (result == 1)
      {
        goto LABEL_23;
      }

      v23 = v29;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v46 = v71;
      v47 = sub_1000059F0();
      v48 = v35[1];
      v48(v45, v34);
      v48(v46, v34);
      sub_10000373C(v68);
      result = sub_10000373C(&v69);
      v16 = v60;
      v26 = &STSDiagnosticExtension;
      v50 = v66;
      v49 = v67;
      if (v47)
      {
        if (!v59)
        {
          goto LABEL_25;
        }

        sub_1000058BC(v66, &v69);
        v51 = v64;
        v52 = v64[1];
        *v50 = *v64;
        v50[1] = v52;
        result = sub_1000058BC(&v69, v51);
        v24 = v51;
        v53 = __CFADD__(v49, 1);
        v27 = v49 + 1;
        if (!v53)
        {
          continue;
        }
      }

      a3 = v58 + 1;
      v24 = v57 + 2;
      v25 = v56 - 1;
      if (v58 + 1 == v55)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000043FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v154 = a4;
  v153 = a1;
  v6 = sub_100002EE0(&qword_10000C248, &qword_100005F88);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v9 = __chkstk_darwin(v8);
  v172 = &v153 - v10;
  v11 = __chkstk_darwin(v9);
  v12 = __chkstk_darwin(v11);
  v14 = &v153 - v13;
  v15 = __chkstk_darwin(v12);
  v173 = &v153 - v16;
  v17 = __chkstk_darwin(v15);
  v179 = &v153 - v18;
  v19 = __chkstk_darwin(v17);
  v20 = __chkstk_darwin(v19);
  v162 = &v153 - v21;
  v22 = __chkstk_darwin(v20);
  v161 = &v153 - v23;
  v24 = __chkstk_darwin(v22);
  v164 = &v153 - v25;
  v26 = __chkstk_darwin(v24);
  v163 = &v153 - v27;
  result = __chkstk_darwin(v26);
  v166 = &v153 - v32;
  v165 = a3;
  v33 = *(a3 + 8);
  if (v33 >= 1)
  {
    v160 = v31;
    v34 = 0;
    v35 = &_swiftEmptyArrayStorage;
    v36 = &STSDiagnosticExtension;
    v170 = v30;
    v171 = v29;
    v174 = v14;
    while (1)
    {
      v157 = v35;
      v155 = v34;
      if (v34 + 1 >= v33)
      {
        v38 = v34 + 1;
        v62 = v154;
      }

      else
      {
        v167 = v33;
        a3 = *v165;
        sub_100003BD0(*v165 + 32 * (v34 + 1), &v182);
        sub_100003BD0(a3 + 32 * v34, v180);
        LODWORD(v175) = sub_10000254C(&v182, v180);
        if (v168)
        {
          sub_10000373C(v180);
          sub_10000373C(&v182);
        }

        sub_10000373C(v180);
        result = sub_10000373C(&v182);
        v37 = (v34 + 2);
        v169 = 32 * v34;
        v4 = a3 + 32 * v34 + 64;
        while (1)
        {
          v38 = v167;
          if (v167 == v37)
          {
            break;
          }

          sub_100003BD0(v4, &v182);
          sub_100003BD0(v4 - 32, v180);
          sub_1000058CC(&v182, v183);
          v39 = sub_100005B70();
          result = [v39 respondsToSelector:*&v36[3].flags];
          if ((result & 1) == 0)
          {
            goto LABEL_154;
          }

          v40 = [v39 *&v36[3].flags];
          v41 = v164;
          v177 = v4;
          v178 = v37;
          v176 = v39;
          if (v40)
          {
            v42 = v40;
            sub_100005A00();

            v43 = 0;
          }

          else
          {
            v43 = 1;
          }

          v44 = sub_100005A10();
          v45 = *(v44 - 8);
          v46 = v45[7];
          v46(v41, v43, 1, v44);
          v47 = v41;
          v48 = v163;
          sub_100005910(v47, v163);
          v49 = v48;
          v50 = v166;
          sub_100005910(v49, v166);
          v51 = v45[6];
          result = v51(v50, 1, v44);
          if (result == 1)
          {
            goto LABEL_155;
          }

          sub_1000058CC(v180, v181);
          v52 = sub_100005B70();
          result = [v52 respondsToSelector:"modificationDate"];
          if ((result & 1) == 0)
          {
            goto LABEL_156;
          }

          v53 = [v52 modificationDate];
          if (v53)
          {
            v54 = v160;
            v55 = v53;
            sub_100005A00();

            v56 = 0;
          }

          else
          {
            v56 = 1;
            v54 = v160;
          }

          v46(v54, v56, 1, v44);
          v57 = v54;
          v58 = v162;
          sub_100005910(v57, v162);
          v59 = v161;
          sub_100005910(v58, v161);
          result = v51(v59, 1, v44);
          if (result == 1)
          {
            goto LABEL_157;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v60 = v166;
          a3 = sub_1000059F0() & 1;
          v61 = v45[1];
          v61(v59, v44);
          v61(v60, v44);
          sub_10000373C(v180);
          result = sub_10000373C(&v182);
          v37 = v178 + 1;
          v4 = v177 + 32;
          v14 = v174;
          v36 = &STSDiagnosticExtension;
          if ((v175 & 1) != a3)
          {
            v38 = v178;
            break;
          }
        }

        v62 = v154;
        if (v175)
        {
          v63 = v155;
          if (v38 < v155)
          {
            goto LABEL_147;
          }

          if (v155 < v38)
          {
            v64 = 32 * v38 - 32;
            v65 = v38;
            v66 = v169;
            do
            {
              if (v63 != --v65)
              {
                v67 = v66;
                v68 = *v165;
                if (!*v165)
                {
                  goto LABEL_159;
                }

                v69 = v38;
                v70 = v67;
                a3 = v68 + v67;
                v4 = v68 + v64;
                sub_1000058BC((v68 + v67), &v182);
                v71 = *(v4 + 16);
                *a3 = *v4;
                *(a3 + 16) = v71;
                result = sub_1000058BC(&v182, v4);
                v66 = v70;
                v62 = v154;
                v38 = v69;
              }

              ++v63;
              v64 -= 32;
              v66 += 32;
            }

            while (v63 < v65);
          }
        }
      }

      v72 = v165[1];
      if (v38 >= v72)
      {
        goto LABEL_39;
      }

      if (__OFSUB__(v38, v155))
      {
        goto LABEL_144;
      }

      if (v38 - v155 >= v62)
      {
LABEL_39:
        v34 = v38;
LABEL_40:
        v74 = v155;
      }

      else
      {
        if (__OFADD__(v155, v62))
        {
          goto LABEL_145;
        }

        if (v155 + v62 >= v72)
        {
          v73 = v165[1];
        }

        else
        {
          v73 = v155 + v62;
        }

        if (v73 < v155)
        {
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          result = sub_1000055EC(v4);
          goto LABEL_117;
        }

        v74 = v155;
        if (v38 != v73)
        {
          v169 = *v165;
          v122 = (v169 + 32 * v38);
          v123 = v155 - v38;
          v156 = v73;
LABEL_95:
          v167 = v38;
          v158 = v123;
          a3 = v123;
          v159 = v122;
          while (1)
          {
            sub_100003BD0(v122, &v182);
            sub_100003BD0((v122 - 2), v180);
            sub_1000058CC(&v182, v183);
            v124 = sub_100005B70();
            result = [v124 respondsToSelector:*&v36[3].flags];
            if ((result & 1) == 0)
            {
              break;
            }

            v125 = [v124 *&v36[3].flags];
            v176 = v122;
            v177 = a3;
            v175 = v122 - 2;
            v178 = v124;
            if (v125)
            {
              v126 = v125;
              sub_100005A00();

              v127 = 0;
            }

            else
            {
              v127 = 1;
            }

            v128 = sub_100005A10();
            v129 = *(v128 - 8);
            v130 = v129[7];
            v130(v14, v127, 1, v128);
            v131 = v173;
            sub_100005910(v14, v173);
            v132 = v131;
            v133 = v179;
            sub_100005910(v132, v179);
            v134 = v129[6];
            result = v134(v133, 1, v128);
            if (result == 1)
            {
              goto LABEL_151;
            }

            sub_1000058CC(v180, v181);
            v135 = sub_100005B70();
            result = [v135 respondsToSelector:*&v36[3].flags];
            if ((result & 1) == 0)
            {
              goto LABEL_152;
            }

            v136 = [v135 *&v36[3].flags];
            if (v136)
            {
              v137 = v136;
              v138 = v171;
              sub_100005A00();

              v139 = 0;
            }

            else
            {
              v139 = 1;
              v138 = v171;
            }

            v130(v138, v139, 1, v128);
            v140 = v138;
            v141 = v172;
            sub_100005910(v140, v172);
            v142 = v170;
            sub_100005910(v141, v170);
            result = v134(v142, 1, v128);
            v36 = &STSDiagnosticExtension;
            if (result == 1)
            {
              goto LABEL_150;
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v143 = v179;
            v4 = sub_1000059F0();
            v144 = v129[1];
            a3 = (v129 + 1);
            v144(v142, v128);
            v144(v143, v128);
            sub_10000373C(v180);
            result = sub_10000373C(&v182);
            if ((v4 & 1) == 0)
            {
              v14 = v174;
LABEL_94:
              v38 = v167 + 1;
              v122 = v159 + 2;
              v123 = v158 - 1;
              v34 = v156;
              if (v167 + 1 == v156)
              {
                goto LABEL_40;
              }

              goto LABEL_95;
            }

            v14 = v174;
            v145 = v177;
            if (!v169)
            {
              goto LABEL_153;
            }

            v4 = v176;
            sub_1000058BC(v176, &v182);
            v122 = v175;
            v146 = v175[1];
            *v4 = *v175;
            *(v4 + 16) = v146;
            sub_1000058BC(&v182, v122);
            v147 = __CFADD__(v145, 1);
            a3 = v145 + 1;
            if (v147)
            {
              goto LABEL_94;
            }
          }

          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        v34 = v38;
      }

      if (v34 < v74)
      {
        goto LABEL_143;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v35 = v157;
      }

      else
      {
        result = sub_100003038(0, *(v157 + 2) + 1, 1, v157);
        v35 = result;
      }

      v76 = *(v35 + 2);
      v75 = *(v35 + 3);
      v4 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        result = sub_100003038((v75 > 1), v76 + 1, 1, v35);
        v35 = result;
      }

      *(v35 + 2) = v4;
      v77 = &v35[16 * v76];
      *(v77 + 4) = v155;
      *(v77 + 5) = v34;
      a3 = *v153;
      if (!*v153)
      {
        goto LABEL_161;
      }

      if (v76)
      {
        while (1)
        {
          v78 = v4 - 1;
          if (v4 >= 4)
          {
            break;
          }

          if (v4 == 3)
          {
            v79 = *(v35 + 4);
            v80 = *(v35 + 5);
            v89 = __OFSUB__(v80, v79);
            v81 = v80 - v79;
            v82 = v89;
LABEL_61:
            if (v82)
            {
              goto LABEL_132;
            }

            v95 = &v35[16 * v4];
            v97 = *v95;
            v96 = *(v95 + 1);
            v98 = __OFSUB__(v96, v97);
            v99 = v96 - v97;
            v100 = v98;
            if (v98)
            {
              goto LABEL_135;
            }

            v101 = &v35[16 * v78 + 32];
            v103 = *v101;
            v102 = *(v101 + 1);
            v89 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v89)
            {
              goto LABEL_138;
            }

            if (__OFADD__(v99, v104))
            {
              goto LABEL_139;
            }

            if (v99 + v104 >= v81)
            {
              if (v81 < v104)
              {
                v78 = v4 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v105 = &v35[16 * v4];
          v107 = *v105;
          v106 = *(v105 + 1);
          v89 = __OFSUB__(v106, v107);
          v99 = v106 - v107;
          v100 = v89;
LABEL_75:
          if (v100)
          {
            goto LABEL_134;
          }

          v108 = &v35[16 * v78];
          v110 = *(v108 + 4);
          v109 = *(v108 + 5);
          v89 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v89)
          {
            goto LABEL_137;
          }

          if (v111 < v99)
          {
            goto LABEL_3;
          }

LABEL_82:
          v116 = v78 - 1;
          if (v78 - 1 >= v4)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

          if (!*v165)
          {
            goto LABEL_158;
          }

          v117 = v35;
          v4 = *&v35[16 * v116 + 32];
          v118 = *&v35[16 * v78 + 40];
          v119 = v168;
          sub_100005220((*v165 + 32 * v4), (*v165 + 32 * *&v35[16 * v78 + 32]), (*v165 + 32 * v118), a3);
          v168 = v119;
          if (v119)
          {
          }

          if (v118 < v4)
          {
            goto LABEL_128;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v120 = v117;
          }

          else
          {
            v120 = sub_1000055EC(v117);
          }

          v36 = &STSDiagnosticExtension;
          if (v116 >= *(v120 + 2))
          {
            goto LABEL_129;
          }

          v121 = &v120[16 * v116];
          *(v121 + 4) = v4;
          *(v121 + 5) = v118;
          v184 = v120;
          result = sub_100005560(v78);
          v35 = v184;
          v4 = *(v184 + 16);
          if (v4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v83 = &v35[16 * v4 + 32];
        v84 = *(v83 - 64);
        v85 = *(v83 - 56);
        v89 = __OFSUB__(v85, v84);
        v86 = v85 - v84;
        if (v89)
        {
          goto LABEL_130;
        }

        v88 = *(v83 - 48);
        v87 = *(v83 - 40);
        v89 = __OFSUB__(v87, v88);
        v81 = v87 - v88;
        v82 = v89;
        if (v89)
        {
          goto LABEL_131;
        }

        v90 = &v35[16 * v4];
        v92 = *v90;
        v91 = *(v90 + 1);
        v89 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v89)
        {
          goto LABEL_133;
        }

        v89 = __OFADD__(v81, v93);
        v94 = v81 + v93;
        if (v89)
        {
          goto LABEL_136;
        }

        if (v94 >= v86)
        {
          v112 = &v35[16 * v78 + 32];
          v114 = *v112;
          v113 = *(v112 + 1);
          v89 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v89)
          {
            goto LABEL_140;
          }

          if (v81 < v115)
          {
            v78 = v4 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_3:
      v33 = v165[1];
      if (v34 >= v33)
      {
        goto LABEL_114;
      }
    }
  }

  v35 = &_swiftEmptyArrayStorage;
LABEL_114:
  a3 = *v153;
  if (*v153)
  {
    v4 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_148;
    }

    result = v4;
LABEL_117:
    v184 = result;
    v4 = *(result + 16);
    if (v4 < 2)
    {
    }

    while (*v165)
    {
      v148 = *(result + 16 * v4);
      v149 = result;
      v150 = *(result + 16 * (v4 - 1) + 40);
      v151 = v168;
      sub_100005220((*v165 + 32 * v148), (*v165 + 32 * *(result + 16 * (v4 - 1) + 32)), (*v165 + 32 * v150), a3);
      v168 = v151;
      if (v151)
      {
      }

      if (v150 < v148)
      {
        goto LABEL_141;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = sub_1000055EC(v149);
      }

      if (v4 - 2 >= *(v149 + 2))
      {
        goto LABEL_142;
      }

      v152 = &v149[16 * v4];
      *v152 = v148;
      *(v152 + 1) = v150;
      v184 = v149;
      sub_100005560(v4 - 1);
      result = v184;
      v4 = *(v184 + 16);
      if (v4 <= 1)
      {
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100005220(char *__dst, char *__src, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 5;
  v12 = a3 - __src;
  v13 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 5;
  if (v11 >= v13 >> 5)
  {
    if (a4 != __src || &__src[32 * v14] <= a4)
    {
      memmove(a4, __src, 32 * v14);
    }

    v15 = (v5 + 32 * v14);
    if (v12 >= 32 && v7 > v8)
    {
      v22 = -v5;
      v39 = -v5;
      while (1)
      {
        v21 = v7 - 32;
        v23 = v15 - 2;
        v24 = v15 + v22;
        v6 -= 32;
        while (1)
        {
          sub_100003BD0(v23, v38);
          sub_100003BD0((v7 - 32), v37);
          v27 = sub_10000254C(v38, v37);
          if (v4)
          {
            sub_10000373C(v37);
            sub_10000373C(v38);
            if (v24 >= 0)
            {
              v34 = v24;
            }

            else
            {
              v34 = v24 + 31;
            }

            if (v7 >= v5 && v7 < v5 + (v34 & 0xFFFFFFFFFFFFFFE0) && v7 == v5)
            {
              return 1;
            }

            v32 = 32 * (v34 >> 5);
            v33 = v7;
            goto LABEL_59;
          }

          v28 = v27;
          sub_10000373C(v37);
          sub_10000373C(v38);
          if (v28)
          {
            break;
          }

          if (v6 + 32 != (v23 + 2))
          {
            v29 = v23[1];
            *v6 = *v23;
            *(v6 + 1) = v29;
          }

          v25 = v23 - 2;
          v24 -= 32;
          v6 -= 32;
          v26 = v23 > v5;
          v23 -= 2;
          if (!v26)
          {
            v15 = v25 + 2;
            goto LABEL_52;
          }
        }

        if (v6 + 32 != v7)
        {
          v30 = *(v7 - 1);
          *v6 = *v21;
          *(v6 + 1) = v30;
        }

        v15 = v23 + 2;
        v22 = v39;
        if ((v23 + 2) > v5)
        {
          v7 -= 32;
          if (v21 > v8)
          {
            continue;
          }
        }

        v15 = v23 + 2;
        goto LABEL_53;
      }
    }

LABEL_52:
    v21 = v7;
LABEL_53:
    v35 = v15 - v5 + 31;
    if ((v15 - v5) >= 0)
    {
      v35 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v35 & 0xFFFFFFFFFFFFFFE0) && v21 == v5)
    {
      return 1;
    }

    v32 = 32 * (v35 >> 5);
    v33 = v21;
LABEL_59:
    memmove(v33, v5, v32);
    return 1;
  }

  if (a4 != __dst || &__dst[32 * v11] <= a4)
  {
    memmove(a4, __dst, 32 * v11);
  }

  v15 = (v5 + 32 * v11);
  if (v9 < 32 || v7 >= v6)
  {
LABEL_20:
    v21 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    sub_100003BD0(v7, v38);
    sub_100003BD0(v5, v37);
    v16 = sub_10000254C(v38, v37);
    if (v4)
    {
      break;
    }

    v17 = v16;
    sub_10000373C(v37);
    sub_10000373C(v38);
    if ((v17 & 1) == 0)
    {
      v18 = v5;
      v19 = v8 == v5;
      v5 += 32;
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_17:
      v20 = v18[1];
      *v8 = *v18;
      *(v8 + 1) = v20;
      goto LABEL_18;
    }

    v18 = v7;
    v19 = v8 == v7;
    v7 += 32;
    if (!v19)
    {
      goto LABEL_17;
    }

LABEL_18:
    v8 += 32;
    if (v5 >= v15 || v7 >= v6)
    {
      goto LABEL_20;
    }
  }

  sub_10000373C(v37);
  sub_10000373C(v38);
  v31 = v15 - v5 + 31;
  if ((v15 - v5) >= 0)
  {
    v31 = v15 - v5;
  }

  if (v8 < v5 || v8 >= v5 + (v31 & 0xFFFFFFFFFFFFFFE0) || v8 != v5)
  {
    v32 = 32 * (v31 >> 5);
    v33 = v8;
    goto LABEL_59;
  }

  return 1;
}

uint64_t sub_100005560(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000055EC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100005614()
{
  v1 = [v0 attachmentList];
  if (v1)
  {
    v2 = v1;
    v3 = sub_100005AB0();

    v22 = v3;

    sub_100003D1C(&v22);

    v4 = v22;

    v5 = sub_100005A30();
    v6 = sub_100005B00();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315138;
      v9 = sub_100005AC0();
      v11 = sub_10000313C(v9, v10, &v22);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "#STS DE# Attaching: %s", v7, 0xCu);
      sub_10000373C(v8);
    }

    v12 = sub_100001C2C();
    v13 = sub_100005A30();
    v14 = sub_100005B00();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      sub_100003898();
      v17 = sub_100005AC0();
      v19 = sub_10000313C(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "#STS DE# Attaching: %s", v15, 0xCu);
      sub_10000373C(v16);
    }

    v20 = sub_1000019F0(v12);

    v22 = v4;
    sub_100003D88(v20);
    return v22;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

_OWORD *sub_1000058BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_1000058CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005910(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EE0(&qword_10000C248, &qword_100005F88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}