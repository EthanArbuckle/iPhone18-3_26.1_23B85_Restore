uint64_t sub_100001230@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SWTFollowUpExtension22FollowUpViewController_log;
  swift_beginAccess();
  v4 = sub_100003914();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1000012B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20SWTFollowUpExtension22FollowUpViewController_log;
  swift_beginAccess();
  v4 = sub_100003914();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_1000013AC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1000013E0()
{
  v1 = sub_100003914();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003904();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC20SWTFollowUpExtension22FollowUpViewController_log, v5, v1);
  v6 = type metadata accessor for FollowUpViewController();
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
}

uint64_t type metadata accessor for FollowUpViewController()
{
  result = qword_10000C220;
  if (!qword_10000C220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100001670(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_1000017BC()
{
  v1 = sub_100003914();
  v66 = *(v1 - 8);
  v2 = *(v66 + 64);
  v3 = (__chkstk_darwin)();
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v58 - v6;
  v8 = sub_100001E58(&qword_10000C1B8, &qword_100003E28);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8 - 8);
  v11 = v58 - v10;
  v12 = sub_1000038E4();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v65 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v58 - v17;
  __chkstk_darwin(v16);
  v20 = v58 - v19;
  v22 = v21;
  sub_1000038D4();
  if ((*(v22 + 48))(v11, 1, v12) == 1)
  {
    return sub_100003610(v11, &qword_10000C1B8, &qword_100003E28);
  }

  v61 = v5;
  v24 = (*(v22 + 32))(v20, v11, v12);
  v25 = *((swift_isaMask & *v0) + 0x58);
  v26 = (swift_isaMask & *v0) + 88;
  v62 = v0;
  v58[2] = v26;
  v59 = v25;
  (v25)(v24);
  v27 = *(v22 + 16);
  v64 = v20;
  v58[0] = v27;
  v58[1] = v22 + 16;
  v27(v18, v20, v12);
  v28 = sub_1000038F4();
  v29 = sub_1000039A4();
  v30 = os_log_type_enabled(v28, v29);
  v63 = v22;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v67 = v32;
    *v31 = 136315138;
    v33 = sub_1000038B4();
    v60 = v1;
    v35 = v34;
    v36 = *(v22 + 8);
    v36(v18, v12);
    v37 = sub_100002C24(v33, v35, &v67);
    v1 = v60;

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Opening URL for followup %s", v31, 0xCu);
    sub_100003570(v32);

    v38 = v36;
  }

  else
  {

    v38 = *(v22 + 8);
    v38(v18, v12);
  }

  v39 = *(v66 + 8);
  v39(v7, v1);
  result = [objc_opt_self() defaultWorkspace];
  v41 = v64;
  if (result)
  {
    v42 = result;
    sub_1000038C4(v40);
    v44 = v43;
    sub_100003408(&_swiftEmptyArrayStorage);
    isa = sub_100003924().super.isa;

    v46 = [v42 openSensitiveURL:v44 withOptions:isa];

    if (v46)
    {
      return (v38)(v41, v12);
    }

    else
    {
      v47 = v61;
      v59();
      v48 = v65;
      (v58[0])(v65, v41, v12);
      v49 = v41;
      v50 = sub_1000038F4();
      v51 = sub_100003994();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v67 = v59;
        *v52 = 136315138;
        sub_100003518();
        v53 = sub_100003A24();
        v62 = v39;
        v54 = v53;
        v60 = v1;
        v56 = v55;
        v38(v48, v12);
        v57 = sub_100002C24(v54, v56, &v67);

        *(v52 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v50, v51, "Could not open url %s", v52, 0xCu);
        sub_100003570(v59);

        v62(v47, v60);
        return (v38)(v64, v12);
      }

      else
      {

        v38(v48, v12);
        v39(v47, v1);
        return (v38)(v49, v12);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001E58(uint64_t *a1, uint64_t *a2)
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

void FollowUpViewController.processFollowUpItem(_:selectedAction:completion:)(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v90 = a3;
  v86 = a1;
  v8 = sub_100003914();
  v9 = *(v8 - 8);
  v88 = v8;
  v89 = v9;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v85 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v85 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v85 - v21;
  __chkstk_darwin(v20);
  v24 = &v85 - v23;
  if (!a2)
  {
    __break(1u);
LABEL_44:
    __break(1u);
  }

  v87 = a4;
  v91 = 0x6E6F69746361;
  v92 = 0xE600000000000000;
  sub_1000039D4();
  v25 = [a2 userInfo];
  if (!v25)
  {
    goto LABEL_44;
  }

  v26 = v25;
  v27 = sub_100003934();

  if (!*(v27 + 16) || (v28 = v5, v29 = sub_100003244(v93), (v30 & 1) == 0))
  {

    v31 = sub_1000035BC(v93);
    goto LABEL_17;
  }

  sub_100003670(*(v27 + 56) + 32 * v29, v94);
  sub_1000035BC(v93);

  v31 = swift_dynamicCast();
  if ((v31 & 1) == 0)
  {
LABEL_17:
    (*((swift_isaMask & *v5) + 0x58))(v31);
    v46 = a2;
    v47 = sub_1000038F4();
    v48 = sub_100003994();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = v46;
      *v50 = a2;
      v51 = v46;
      _os_log_impl(&_mh_execute_header, v47, v48, "no action string for %@", v49, 0xCu);
      sub_100003610(v50, &qword_10000C1C8, &qword_100003E30);
    }

    (*(v89 + 8))(v13, v88);
    v52 = v90;
    if (v90)
    {
      goto LABEL_20;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v33 = v91;
  v32 = v92;
  v85 = v92;
  if (v91 == 0x41736C6961746564 && v92 == 0xED00006E6F697463 || (sub_100003A34() & 1) != 0)
  {
    v91 = 7107189;
    v92 = 0xE300000000000000;
    sub_1000039D4();
    v34 = [a2 userInfo];
    if (!v34)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v35 = v34;
    v36 = sub_100003934();

    if (*(v36 + 16) && (v37 = sub_100003244(v93), (v38 & 1) != 0))
    {
      sub_100003670(*(v36 + 56) + 32 * v37, v94);
      sub_1000035BC(v93);

      v39 = swift_dynamicCast();
      if (v39)
      {
        v41 = v91;
        v40 = v92;
        (*((swift_isaMask & *v5) + 0x58))();

        v42 = sub_1000038F4();
        v43 = sub_1000039A4();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v93[0] = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_100002C24(v41, v40, v93);
          _os_log_impl(&_mh_execute_header, v42, v43, "action, detailsActions, open URL %s", v44, 0xCu);
          sub_100003570(v45);
        }

        (*(v89 + 8))(v24, v88);
        (*((swift_isaMask & *v28) + 0x70))(v41, v40);

        goto LABEL_40;
      }
    }

    else
    {

      v39 = sub_1000035BC(v93);
    }

    (*((swift_isaMask & *v5) + 0x58))(v39);
    v53 = sub_1000038F4();
    v54 = sub_100003994();
    v55 = os_log_type_enabled(v53, v54);
    v52 = v90;
    if (v55)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "action, detailsActions, URL missing", v56, 2u);
    }

    (*(v89 + 8))(v22, v88);
LABEL_41:
    if (v52)
    {

LABEL_20:
      v52(1);
      return;
    }

    goto LABEL_46;
  }

  v57 = 0x7463417261656C63;
  if (v33 == 0x7463417261656C63 && v32 == 0xEB000000006E6F69 || (v57 = sub_100003A34(), (v57 & 1) != 0))
  {
    (*((swift_isaMask & *v5) + 0x58))(v57);
    v58 = v86;
    v59 = v86;
    v60 = sub_1000038F4();
    v61 = sub_1000039A4();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      *(v62 + 4) = v59;
      *v63 = v58;
      v64 = v59;
      _os_log_impl(&_mh_execute_header, v60, v61, "action, clearing item %@", v62, 0xCu);
      sub_100003610(v63, &qword_10000C1C8, &qword_100003E30);
    }

    (*(v89 + 8))(v19, v88);
    if (!v58)
    {
      goto LABEL_48;
    }

    v65 = [v59 uniqueIdentifier];
    v52 = v90;
    if (v65)
    {
      v66 = v65;
      v67 = sub_100003954();
      v69 = v68;

      v70 = [objc_allocWithZone(FLFollowUpController) init];
      sub_100001E58(&qword_10000C1D0, &qword_100003E38);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_100003E00;
      *(v71 + 56) = &type metadata for String;
      *(v71 + 32) = v67;
      *(v71 + 40) = v69;
      isa = sub_100003984().super.isa;

      v93[0] = 0;
      LODWORD(v69) = [v70 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:v93];

      if (v69)
      {
        v73 = v93[0];
      }

      else
      {
        v84 = v93[0];
        sub_1000038A4();

        swift_willThrow();
      }
    }

    goto LABEL_41;
  }

  (*((swift_isaMask & *v5) + 0x58))(v57);
  v74 = a2;
  v75 = sub_1000038F4();
  v76 = sub_100003994();
  if (!os_log_type_enabled(v75, v76))
  {

    goto LABEL_39;
  }

  v77 = swift_slowAlloc();
  v78 = swift_slowAlloc();
  v93[0] = v78;
  *v77 = 136315138;
  v79 = [v74 identifier];

  if (v79)
  {
    v80 = sub_100003954();
    v82 = v81;

    v83 = sub_100002C24(v80, v82, v93);

    *(v77 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "missing action: %s", v77, 0xCu);
    sub_100003570(v78);

LABEL_39:
    (*(v89 + 8))(v16, v88);
LABEL_40:
    v52 = v90;
    goto LABEL_41;
  }

LABEL_49:
  __break(1u);
}

id FollowUpViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100003944();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_100002B78(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FollowUpViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_100002C24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002CF0(v11, 0, 0, 1, a1, a2);
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
    sub_100003670(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003570(v11);
  return v7;
}

unint64_t sub_100002CF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002DFC(a5, a6);
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
    result = sub_1000039F4();
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

char *sub_100002DFC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002E48(a1, a2);
  sub_100002F78(&off_100008318);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002E48(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003064(v5, 0);
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

  result = sub_1000039F4();
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
        v10 = sub_100003974();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003064(v10, 0);
        result = sub_1000039E4();
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

uint64_t sub_100002F78(uint64_t result)
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

  result = sub_1000030D8(result, v12, 1, v3);
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

void *sub_100003064(uint64_t a1, uint64_t a2)
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

  sub_100001E58(&qword_10000C200, &qword_100003E58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000030D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001E58(&qword_10000C200, &qword_100003E58);
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

unint64_t sub_1000031CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100003A44();
  sub_100003964();
  v6 = sub_100003A54();

  return sub_100003288(a1, a2, v6);
}

unint64_t sub_100003244(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000039B4(*(v2 + 40));

  return sub_100003340(a1, v4);
}

unint64_t sub_100003288(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100003A34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100003340(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000037C4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000039C4();
      sub_1000035BC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100003408(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001E58(&qword_10000C208, &qword_100003E60);
    v3 = sub_100003A14();
    v4 = a1 + 32;

    while (1)
    {
      sub_100003824(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000031CC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100003894(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100003518()
{
  result = qword_10000C1C0;
  if (!qword_10000C1C0)
  {
    sub_1000038E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C0);
  }

  return result;
}

uint64_t sub_100003570(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003610(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001E58(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000036D4()
{
  result = sub_100003914();
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

uint64_t sub_100003764(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003774()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003824(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001E58(&qword_10000C210, &qword_100003E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100003894(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}