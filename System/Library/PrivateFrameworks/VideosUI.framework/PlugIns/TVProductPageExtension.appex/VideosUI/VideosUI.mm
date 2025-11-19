char *sub_100001718(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = (*(*(sub_100006138(&qword_10000C410, &qword_100007180) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = sub_100006A88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(sub_100006AD8() - 8) + 64);
  __chkstk_darwin();
  v16 = &v3[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_lookupRequest];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v3[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_tvExtensionControllerTask] = 0;
  v17 = &v3[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig];
  *v17 = xmmword_1000070D0;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  v18 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController;
  sub_100006AC8();
  v19 = objc_allocWithZone(sub_100006AF8());
  *&v3[v18] = sub_100006AE8();
  *&v3[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child] = 0;
  sub_100006B38();
  sub_100006B28();
  sub_100006C18();
  v20 = VUISignpostLogObject();
  sub_100006A78();
  sub_100006A68();

  (*(v11 + 8))(v14, v10);
  if (a2)
  {
    v21 = sub_100006B68();
  }

  else
  {
    v21 = 0;
  }

  v22 = type metadata accessor for ProductPageViewController();
  v31.receiver = v4;
  v31.super_class = v22;
  v23 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", v21, a3);

  v24 = sub_100006BE8();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  sub_100006BC8();
  v25 = v23;
  v26 = sub_100006BB8();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v25;
  v28 = sub_100001EAC(0, 0, v9, &unk_1000071B8, v27);

  v29 = *&v25[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_tvExtensionControllerTask];
  *&v25[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_tvExtensionControllerTask] = v28;

  return v25;
}

uint64_t sub_100001A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = *(*(sub_100006138(&qword_10000C3E8, &qword_100007160) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  sub_100006BC8();
  v4[5] = sub_100006BB8();
  v7 = sub_100006BA8();
  v4[6] = v7;
  v4[7] = v6;

  return _swift_task_switch(sub_100001B5C, v7, v6);
}

uint64_t sub_100001B5C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_100006B38();
  v3 = sub_100006A28();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = async function pointer to static TVExtensionController.createTVExtensionController(delegate:url:)[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100001C58;
  v6 = v0[4];

  return static TVExtensionController.createTVExtensionController(delegate:url:)(v1, &off_100008588, v6);
}

uint64_t sub_100001C58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = v1;

  v7 = v4[4];
  if (v1)
  {
    sub_1000067D0(v7, &qword_10000C3E8, &qword_100007160);
    v8 = v4[6];
    v9 = v4[7];
    v10 = sub_100001E40;
  }

  else
  {
    v4[10] = a1;
    sub_1000067D0(v7, &qword_10000C3E8, &qword_100007160);
    v8 = v4[6];
    v9 = v4[7];
    v10 = sub_100001DC0;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100001DC0()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];

  *v4 = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_100001E40()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_100001EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_100006138(&qword_10000C410, &qword_100007180) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_100006768(a3, v23 - v9, &qword_10000C410, &qword_100007180);
  v11 = sub_100006BE8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000067D0(v10, &qword_10000C410, &qword_100007180);
  }

  else
  {
    sub_100006BD8();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100006BA8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_100006B88() + 32;
      sub_100006B38();

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1000067D0(a3, &qword_10000C410, &qword_100007180);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000067D0(a3, &qword_10000C410, &qword_100007180);
  sub_100006B38();
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100002164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_100006138(&qword_10000C410, &qword_100007180) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_100006768(a3, v23 - v9, &qword_10000C410, &qword_100007180);
  v11 = sub_100006BE8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000067D0(v10, &qword_10000C410, &qword_100007180);
  }

  else
  {
    sub_100006BD8();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100006BA8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100006B88() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1000067D0(a3, &qword_10000C410, &qword_100007180);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000067D0(a3, &qword_10000C410, &qword_100007180);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_100002504()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for ProductPageViewController();
  objc_msgSendSuper2(&v32, "viewWillLayoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child];
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_5:
  v15 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController;
  v16 = [*&v1[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController] parentViewController];
  if (v16)
  {
    v17 = v16;
    sub_100006234();
    v18 = v1;
    v19 = sub_100006C28();

    if (v19)
    {
      v20 = [*&v1[v15] view];
      if (v20)
      {
        v21 = v20;
        v22 = [v18 view];
        if (v22)
        {
          v23 = v22;
          [v22 bounds];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          [v21 setFrame:{v25, v27, v29, v31}];
          return;
        }

LABEL_14:
        __break(1u);
        return;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }
}

void sub_100002720(char a1)
{
  v3 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController;
  v4 = [*&v1[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController] parentViewController];
  if ((a1 & 1) == 0)
  {
    if (!v4)
    {
      return;
    }

    v27 = v4;
    sub_100006234();
    v5 = v1;
    v6 = sub_100006C28();

    if ((v6 & 1) == 0)
    {
      return;
    }

    [*&v1[v3] willMoveToParentViewController:0];
    v7 = [*&v1[v3] view];
    if (v7)
    {
      v8 = v7;
      [v7 removeFromSuperview];

      v9 = *&v1[v3];
      v10 = "removeFromParentViewController";

      goto LABEL_11;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (!v4)
  {
    [v1 addChildViewController:*&v1[v3]];
    v11 = [*&v1[v3] view];
    if (v11)
    {
      v12 = v11;
      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        [v12 setFrame:{v16, v18, v20, v22}];
        v23 = [v1 view];
        if (v23)
        {
          v24 = v23;
          v25 = [*&v1[v3] view];
          if (v25)
          {
            v26 = v25;
            [v24 addSubview:v25];

            v9 = *&v1[v3];
            v10 = "didMoveToParentViewController:";

LABEL_11:
            [v9 v10];
            return;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_1000029C4@<X0>(id a1@<X3>, uint64_t result@<X0>, __int128 *a3@<X8>)
{
  if (result)
  {
    v5 = [a1 rightBarButtonItem];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 title];

      if (v7)
      {
        sub_100006B78();
      }
    }

    v11 = [a1 leftBarButtonItem];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 title];

      if (v13)
      {
        sub_100006B78();
      }
    }

    result = sub_100006B08();
    v8 = v14;
    v9 = v15;
    v10 = v16;
  }

  else
  {
    v8 = xmmword_1000070D0;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  return result;
}

uint64_t sub_100002CCC(void *a1, uint64_t a2)
{
  v5 = (*(*(sub_100006138(&qword_10000C410, &qword_100007180) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v119 = &v102 - v6;
  v7 = sub_100006A28();
  v122 = *(v7 - 8);
  v8 = *(v122 + 64);
  v9 = (__chkstk_darwin)();
  v108 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v10;
  __chkstk_darwin(v9);
  v118 = &v102 - v11;
  v12 = sub_100006AB8();
  v120 = *(v12 - 8);
  v121 = v12;
  v13 = *(v120 + 64);
  v14 = __chkstk_darwin(v12);
  v109 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v111 = &v102 - v16;
  v114 = sub_100006A08();
  v113 = *(v114 - 8);
  v17 = *(v113 + 64);
  __chkstk_darwin(v114);
  v112 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100006138(&qword_10000C3E8, &qword_100007160);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v106 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v116 = &v102 - v24;
  v25 = __chkstk_darwin(v23);
  v117 = &v102 - v26;
  v27 = __chkstk_darwin(v25);
  v103 = &v102 - v28;
  __chkstk_darwin(v27);
  v30 = &v102 - v29;
  v31 = sub_100006A88();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C18();
  v36 = VUISignpostLogObject();
  sub_100006A78();
  sub_100006A68();

  (*(v32 + 8))(v35, v31);
  v105 = v2;
  v37 = &v2[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_lookupRequest];
  v38 = *&v2[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_lookupRequest];
  v39 = *&v2[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_lookupRequest + 8];
  *v37 = a1;
  *(v37 + 1) = a2;
  v104 = a1;
  v40 = a1;
  v110 = a2;
  v41 = v122;

  sub_100006280(v38);
  v42 = *(v41 + 56);
  v123 = v30;
  v115 = v42;
  v42(v30, 1, 1, v7);
  v43 = [v40 itemKind];
  if (v43)
  {
    v44 = v43;
    v45 = sub_100006B78();
    v47 = v46;

    if (v45 == 0x61506E6F73616573 && v47 == 0xEA00000000007373)
    {
    }

    else
    {
      v48 = sub_100006C88();

      if ((v48 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v49 = v40;
    v50 = v112;
    sub_1000069F8();
    sub_1000069E8();
    sub_1000069C8();
    v51 = v49;
    v52 = [v49 itemDictionary];
    v53 = sub_100006B48();

    v124 = 0x64496E6F73616573;
    v125 = 0xE800000000000000;
    sub_100006C58();
    if (*(v53 + 16) && (v54 = sub_1000059CC(&v126), (v55 & 1) != 0))
    {
      sub_1000061D4(*(v53 + 56) + 32 * v54, v128);
      sub_10000660C(&v126);

      if (swift_dynamicCast())
      {
        v56 = v124;
        v57 = v125;
        sub_100006138(&qword_10000C418, &qword_100007198);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1000070E0;
        *(v58 + 32) = 0x736165732D76742FLL;
        *(v58 + 40) = 0xEA00000000006E6FLL;
        v126 = 25705;
        v127 = 0xE200000000000000;
        v129._countAndFlagsBits = v56;
        v129._object = v57;
        sub_100006B98(v129);

        v59 = v127;
        *(v58 + 48) = v126;
        *(v58 + 56) = v59;
        v126 = v58;
        sub_100006138(&qword_10000C420, &qword_1000071A0);
        sub_100006660();
        sub_100006B58();

        sub_1000069D8();
        v60 = v103;
        sub_1000069B8();
        (*(v113 + 8))(v50, v114);
        v61 = v123;
        sub_1000067D0(v123, &qword_10000C3E8, &qword_100007160);
        sub_1000062C0(v60, v61);
        v40 = v51;
        goto LABEL_10;
      }
    }

    else
    {

      sub_10000660C(&v126);
    }

    v68 = sub_100006A98();
    v70 = v120;
    v69 = v121;
    v71 = v111;
    (*(v120 + 16))(v111, v68, v121);
    v72 = v51;
    v73 = sub_100006AA8();
    v74 = sub_100006C08();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      v77 = [v72 iTunesStoreIdentifier];
      *(v75 + 4) = v77;
      *v76 = v77;
      _os_log_impl(&_mh_execute_header, v73, v74, "No seasonId found for seasonPass %@", v75, 0xCu);
      sub_1000067D0(v76, &qword_10000C3E0, &qword_100007158);
    }

    (*(v70 + 8))(v71, v69);
    (*(v113 + 8))(v50, v114);
    goto LABEL_26;
  }

LABEL_10:
  v62 = v116;
  sub_100006768(v123, v116, &qword_10000C3E8, &qword_100007160);
  v63 = *(v41 + 48);
  if (v63(v62, 1, v7) == 1)
  {
    v64 = [v40 productPageURL];
    if (v64)
    {
      v65 = v106;
      v66 = v64;
      sub_100006A18();

      v67 = 0;
    }

    else
    {
      v67 = 1;
      v65 = v106;
    }

    v115(v65, v67, 1, v7);
    v78 = v117;
    sub_1000062C0(v65, v117);
    if (v63(v62, 1, v7) != 1)
    {
      sub_1000067D0(v62, &qword_10000C3E8, &qword_100007160);
    }
  }

  else
  {
    v78 = v117;
    (*(v41 + 32))(v117, v62, v7);
    v115(v78, 0, 1, v7);
  }

  if (v63(v78, 1, v7) != 1)
  {
    v121 = *(v41 + 32);
    v90 = v118;
    v121(v118, v78, v7);
    v91 = sub_100006BE8();
    (*(*(v91 - 8) + 56))(v119, 1, 1, v91);
    v92 = v108;
    (*(v41 + 16))(v108, v90, v7);
    sub_100006BC8();
    v93 = v110;

    v94 = v105;
    v95 = sub_100006BB8();
    v96 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v97 = v7;
    v98 = v41;
    v99 = (v107 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v100 = swift_allocObject();
    v100[2] = v95;
    v100[3] = &protocol witness table for MainActor;
    v100[4] = v94;
    v121(v100 + v96, v92, v97);
    *(v100 + v99) = v93;
    sub_100002164(0, 0, v119, &unk_100007190, v100);

    (*(v98 + 8))(v118, v97);
LABEL_26:
    v89 = 0;
    goto LABEL_27;
  }

  sub_1000067D0(v78, &qword_10000C3E8, &qword_100007160);
  v79 = sub_100006A98();
  v81 = v120;
  v80 = v121;
  v82 = v109;
  (*(v120 + 16))(v109, v79, v121);
  v83 = v40;
  v84 = sub_100006AA8();
  v85 = sub_100006C08();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v86 = 138477827;
    *(v86 + 4) = v83;
    *v87 = v104;
    v88 = v83;
    sub_1000067D0(v87, &qword_10000C3E0, &qword_100007158);
  }

  (*(v81 + 8))(v82, v80);
  v89 = 1;
LABEL_27:
  sub_1000067D0(v123, &qword_10000C3E8, &qword_100007160);
  return v89;
}

uint64_t sub_1000039D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = *(*(sub_100006138(&qword_10000C3E8, &qword_100007160) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v8 = sub_100006A28();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v6[9] = swift_task_alloc();
  v11 = sub_100006AB8();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v13 = *(v12 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = sub_100006BC8();
  v6[14] = sub_100006BB8();
  v15 = sub_100006BA8();
  v6[15] = v15;
  v6[16] = v14;

  return _swift_task_switch(sub_100003B60, v15, v14);
}

uint64_t sub_100003B60()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_tvExtensionControllerTask);
  v0[17] = v1;
  if (v1)
  {
    v2 = async function pointer to Task.value.getter[1];

    v3 = swift_task_alloc();
    v0[18] = v3;
    v4 = sub_100006B38();
    v5 = sub_100006138(&qword_10000C430, &qword_1000071A8);
    *v3 = v0;
    v3[1] = sub_100003D78;

    return Task.value.getter(v0 + 2, v1, v4, v5, &protocol self-conformance witness table for Error);
  }

  else
  {
    v6 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];

    v10 = sub_100006A98();
    (*(v8 + 16))(v7, v10, v9);
    v11 = sub_100006AA8();
    v12 = sub_100006C08();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No extension controller", v17, 2u);
    }

    (*(v15 + 8))(v14, v16);
    v18 = v0[12];
    v19 = v0[9];
    v20 = v0[6];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100003D78()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 152) = v0;

  v6 = *(v2 + 128);
  v7 = *(v2 + 120);
  if (v0)
  {
    v8 = sub_100004824;
  }

  else
  {
    v8 = sub_100003ED0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100003ED0()
{
  v0[20] = v0[2];
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_100003F70;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  return sub_100004940(v2, v4, v3);
}

uint64_t sub_100003F70()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return _swift_task_switch(sub_100004090, v4, v3);
}

uint64_t sub_100004090()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 72);
  if (v5 == 1)
  {
    (*(v2 + 16))(v6, *(v0 + 32), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_1000067D0(*(v0 + 48), &qword_10000C3E8, &qword_100007160);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
  }

  v7 = *(**(v0 + 160) + 256);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_10000426C;
  v10 = *(v0 + 160);
  v11 = *(v0 + 72);

  return v13(v11);
}

uint64_t sub_10000426C(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10000436C, 0, 0);
}

uint64_t sub_10000436C()
{
  v1 = *(v0 + 104);
  *(v0 + 192) = sub_100006BB8();
  v3 = sub_100006BA8();

  return _swift_task_switch(sub_1000043F8, v3, v2);
}

uint64_t sub_1000043F8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 24);

  v4 = *(v3 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child);
  *(v3 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child) = v2;
  v5 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child;
  v6 = *(v3 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child);
  v7 = v2;
  if (!v6)
  {
    if (!v4)
    {
      goto LABEL_24;
    }

    v9 = v4;
    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  sub_100006234();
  v8 = v6;
  v9 = v4;
  v10 = sub_100006C28();

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v11 = v9;
    [v11 willMoveToParentViewController:0];
    v12 = [v11 view];
    if (!v12)
    {
      __break(1u);
      goto LABEL_28;
    }

    v15 = v12;
    [v12 removeFromSuperview];

    [v11 removeFromParentViewController];
    v6 = *(v3 + v5);
    if (!v6)
    {
LABEL_19:
      v28 = [objc_opt_self() sharedInstance];
      v29 = *(v3 + v5);
      if (v29)
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v31 = v29;
        }
      }

      else
      {
        v30 = 0;
      }

      [v28 setCurrentNavigationController:{v30, v33}];

      goto LABEL_24;
    }

LABEL_9:
    v16 = *(v0 + 24);
    v17 = v6;
    [v16 addChildViewController:v17];
    v18 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController;
    v19 = [*&v16[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController] parentViewController];
    if (v19)
    {
      v20 = v19;
      v33 = v7;
      v21 = *(v0 + 24);
      sub_100006234();
      v22 = v21;
      v23 = sub_100006C28();

      v7 = v33;
      if (v23)
      {
        v12 = [*(v0 + 24) view];
        if (v12)
        {
          v24 = v12;
          v12 = [v17 view];
          if (v12)
          {
            v25 = v12;
            v12 = [*&v16[v18] view];
            if (v12)
            {
              v26 = v12;
              [v24 insertSubview:v25 belowSubview:v12];

              v7 = v33;
LABEL_18:
              v27 = *(v0 + 24);

              [v17 didMoveToParentViewController:v27];
              goto LABEL_19;
            }

LABEL_32:
            __break(1u);
            return _swift_task_switch(v12, v13, v14);
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    v12 = [*(v0 + 24) view];
    if (v12)
    {
      v25 = v12;
      v12 = [v17 view];
      if (v12)
      {
        v26 = v12;
        [v25 addSubview:v12];
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:

  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v12 = sub_10000475C;

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10000475C()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[14];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 8))(v4, v6);
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100004824()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[19];

  return v5();
}

uint64_t sub_100004940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v4 = *(*(sub_100006138(&qword_10000C3E8, &qword_100007160) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v5 = sub_100006A28();
  v3[29] = v5;
  v6 = *(v5 - 8);
  v3[30] = v6;
  v7 = *(v6 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v8 = sub_100006978();
  v3[33] = v8;
  v9 = *(v8 - 8);
  v3[34] = v9;
  v10 = *(v9 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v11 = *(*(sub_100006138(&qword_10000C3F0, &qword_100007168) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v12 = sub_100006A08();
  v3[38] = v12;
  v13 = *(v12 - 8);
  v3[39] = v13;
  v14 = *(v13 + 64) + 15;
  v3[40] = swift_task_alloc();
  sub_100006BC8();
  v3[41] = sub_100006BB8();
  v16 = sub_100006BA8();
  v3[42] = v16;
  v3[43] = v15;

  return _swift_task_switch(sub_100004B84, v16, v15);
}

uint64_t sub_100004B84()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[25];
  sub_1000069A8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[41];
    v6 = v0[37];
    v7 = v0[29];
    v8 = v0[30];
    v9 = v0[24];

    sub_1000067D0(v6, &qword_10000C3F0, &qword_100007168);
    (*(v8 + 56))(v9, 1, 1, v7);
LABEL_35:
    v69 = v0[40];
    v70 = v0[36];
    v71 = v0[37];
    v72 = v0[35];
    v74 = v0[31];
    v73 = v0[32];
    v76 = v0[27];
    v75 = v0[28];

    v77 = v0[1];

    return v77();
  }

  else
  {
    v10 = v0[34];
    v11 = v0[26];
    (*(v0[39] + 32))(v0[40], v0[37], v0[38]);
    v12 = v11 + 64;
    v13 = -1;
    v14 = -1 << *(v11 + 32);
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v15 = v13 & *(v11 + 64);
    v16 = (63 - v14) >> 6;
    v79 = v10;

    v20 = 0;
    v82 = v11;
    v83 = &_swiftEmptyArrayStorage;
    v80 = v16;
    v81 = v11 + 64;
    while (v15)
    {
LABEL_13:
      v22 = __clz(__rbit64(v15)) | (v20 << 6);
      v23 = (*(v11 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      sub_1000061D4(*(v11 + 56) + 32 * v22, (v0 + 4));
      v0[2] = v24;
      v0[3] = v25;
      sub_100006768((v0 + 2), (v0 + 8), &qword_10000C3F8, &qword_100007170);
      v26 = v0[9];

      if (swift_dynamicCast())
      {
        v27 = v0[36];
        v28 = v0[20];
        v29 = v0[21];
        sub_100006968();

        v30 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1000057F4(0, v83[2] + 1, 1, v83);
        }

        v32 = v30[2];
        v31 = v30[3];
        v16 = v80;
        v12 = v81;
        if (v32 >= v31 >> 1)
        {
          v30 = sub_1000057F4(v31 > 1, v32 + 1, 1, v30);
        }

        v33 = v0[36];
        v34 = v0[33];

        v30[2] = v32 + 1;
        (*(v79 + 32))(v30 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v32, v33, v34);
        v83 = v30;
        v11 = v82;
      }

      else
      {
        sub_100006768((v0 + 2), (v0 + 14), &qword_10000C3F8, &qword_100007170);
        v35 = v0[15];

        if (swift_dynamicCast())
        {
          v36 = v0[35];
          v0[23] = v0[22];
          sub_100006C78();
          sub_100006968();

          v37 = v83;
          v12 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_1000057F4(0, v83[2] + 1, 1, v83);
          }

          v39 = v37[2];
          v38 = v37[3];
          if (v39 >= v38 >> 1)
          {
            v37 = sub_1000057F4(v38 > 1, v39 + 1, 1, v37);
          }

          v16 = v80;
          v40 = v0[35];
          v41 = v0[33];

          v37[2] = v39 + 1;
          (*(v79 + 32))(v37 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v39, v40, v41);
          v83 = v37;
          v11 = v82;
        }

        else
        {

          v12 = v81;
          v11 = v82;
          v16 = v80;
        }
      }

      v15 &= v15 - 1;
      v17 = sub_1000067D0((v0 + 2), &qword_10000C3F8, &qword_100007170);
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return CampaignAttributor.processURL(_:ignoreMarketing:)(v17, v18, v19);
      }

      if (v21 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v21);
      ++v20;
      if (v15)
      {
        v20 = v21;
        goto LABEL_13;
      }
    }

    v42 = v0[40];
    v43 = v0[26];

    if (sub_100006988())
    {
    }

    else
    {
      sub_100005AD8(v83);
    }

    v44 = v0[40];
    v45 = v0[29];
    v46 = v0[30];
    v47 = v0[28];
    sub_100006998();
    sub_1000069C8();
    sub_1000069B8();
    v48 = *(v46 + 48);
    v0[44] = v48;
    v0[45] = (v46 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v48(v47, 1, v45) == 1)
    {
      v49 = v0[41];
      v50 = v0[29];
      v51 = v0[30];
      v52 = v0[28];
      v53 = v0[24];
      (*(v0[39] + 8))(v0[40], v0[38]);

      sub_1000067D0(v52, &qword_10000C3E8, &qword_100007160);
      (*(v51 + 56))(v53, 1, 1, v50);
      goto LABEL_35;
    }

    v54 = v0[32];
    v55 = v0[29];
    v56 = v0[30];
    v57 = v0[28];
    v58 = *(v56 + 32);
    v0[46] = v58;
    v0[47] = (v56 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v58(v54, v57, v55);
    v59 = [objc_opt_self() vui_defaultBag];
    v0[48] = v59;
    if (!v59)
    {
      v64 = v0[41];
      v65 = v0[32];
      v66 = v0[29];
      v67 = v0[30];
      v68 = v0[24];
      (*(v0[39] + 8))(v0[40], v0[38]);

      v58(v68, v65, v66);
      (*(v67 + 56))(v68, 0, 1, v66);
      goto LABEL_35;
    }

    v60 = v59;
    objc_allocWithZone(sub_100006A58());
    v61 = v60;
    v0[49] = sub_100006A48();
    v62 = async function pointer to CampaignAttributor.processURL(_:ignoreMarketing:)[1];
    v63 = swift_task_alloc();
    v0[50] = v63;
    *v63 = v0;
    v63[1] = sub_1000052F8;
    v18 = v0[32];
    v17 = v0[27];
    v19 = 0;

    return CampaignAttributor.processURL(_:ignoreMarketing:)(v17, v18, v19);
  }
}

uint64_t sub_1000052F8()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v6 = *v0;

  v3 = *(v1 + 344);
  v4 = *(v1 + 336);

  return _swift_task_switch(sub_100005418, v4, v3);
}

uint64_t sub_100005418()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  v8 = *(v0 + 232);
  v9 = *(v0 + 216);

  (*(v7 + 8))(v4, v6);
  v10 = v3(v9, 1, v8);
  v12 = *(v0 + 368);
  v11 = *(v0 + 376);
  v13 = *(v0 + 232);
  v14 = *(v0 + 216);
  if (v10 == 1)
  {
    v16 = *(v0 + 352);
    v15 = *(v0 + 360);
    v12(*(v0 + 248), *(v0 + 256), *(v0 + 232));
    if (v16(v14, 1, v13) != 1)
    {
      sub_1000067D0(*(v0 + 216), &qword_10000C3E8, &qword_100007160);
    }
  }

  else
  {
    v17 = *(v0 + 248);
    (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
    v12(v17, v14, v13);
  }

  v18 = *(v0 + 376);
  v19 = *(v0 + 240);
  v20 = *(v0 + 232);
  v21 = *(v0 + 192);
  (*(v0 + 368))(v21, *(v0 + 248), v20);
  (*(v19 + 56))(v21, 0, 1, v20);
  v22 = *(v0 + 320);
  v23 = *(v0 + 288);
  v24 = *(v0 + 296);
  v25 = *(v0 + 280);
  v27 = *(v0 + 248);
  v26 = *(v0 + 256);
  v29 = *(v0 + 216);
  v28 = *(v0 + 224);

  v30 = *(v0 + 8);

  return v30();
}

id sub_100005654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100005740()
{
  sub_100002720(0);

  return [v0 loadDidFinish];
}

uint64_t sub_100005778@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig);
  v4 = *(v1 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig);
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  result = sub_100006180(v4, v5);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  return result;
}

size_t sub_1000057F4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100006138(&qword_10000C400, &qword_100007178);
  v10 = *(sub_100006978() - 8);
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
  v15 = *(sub_100006978() - 8);
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

unint64_t sub_1000059CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100006C38(*(v2 + 40));

  return sub_100005A10(a1, v4);
}

unint64_t sub_100005A10(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000670C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100006C48();
      sub_10000660C(v8);
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

uint64_t sub_100005AD8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1000057F4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_100006978();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_100005C04()
{
  v1 = *(*(sub_100006AD8() - 8) + 64);
  __chkstk_darwin();
  v2 = (v0 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_lookupRequest);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_tvExtensionControllerTask) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig);
  *v3 = xmmword_1000070D0;
  v3[1] = 0u;
  v3[2] = 0u;
  v4 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController;
  sub_100006AC8();
  v5 = objc_allocWithZone(sub_100006AF8());
  *(v0 + v4) = sub_100006AE8();
  *(v0 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child) = 0;
  sub_100006C68();
  __break(1u);
}

id sub_100005D38()
{
  v1 = sub_100006B78();
  v3 = v2;
  if (v1 == sub_100006B78() && v3 == v4)
  {
    v7 = 1;
LABEL_8:

    goto LABEL_9;
  }

  v6 = sub_100006C88();

  if (v6)
  {
    v7 = 1;
    goto LABEL_9;
  }

  v9 = sub_100006B78();
  v11 = v10;
  if (v9 == sub_100006B78() && v11 == v12)
  {
    v7 = 2;
    goto LABEL_8;
  }

  v14 = sub_100006C88();

  if (v14)
  {
    v7 = 2;
    goto LABEL_9;
  }

  v15 = sub_100006B78();
  v17 = v16;
  if (v15 == sub_100006B78() && v17 == v18)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v19 = sub_100006C88();

  if (v19)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v20 = sub_100006B78();
  v22 = v21;
  if (v20 == sub_100006B78() && v22 == v23)
  {
    v7 = 4;
    goto LABEL_8;
  }

  v24 = sub_100006C88();

  if ((v24 & 1) == 0)
  {
    return result;
  }

  v7 = 4;
LABEL_9:

  return [v0 finishWithResult:v7 completion:0];
}

uint64_t sub_100005F74()
{
  v0 = sub_100006AB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006A98();
  (*(v1 + 16))(v4, v5, v0);
  swift_errorRetain();
  v6 = sub_100006AA8();
  v7 = sub_100006C08();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to load product page: %@", v8, 0xCu);
    sub_1000067D0(v9, &qword_10000C3E0, &qword_100007158);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100006138(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006180(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000061D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100006234()
{
  result = qword_10000C408;
  if (!qword_10000C408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C408);
  }

  return result;
}

void *sub_100006280(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000062C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006138(&qword_10000C3E8, &qword_100007160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006330()
{
  v1 = sub_100006A28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100006410()
{
  v2 = *(sub_100006A28() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100006518;

  return sub_1000039D0(v6, v7, v8, v4, v0 + v3, v5);
}

uint64_t sub_100006518()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100006660()
{
  result = qword_10000C428;
  if (!qword_10000C428)
  {
    sub_1000066C4(&qword_10000C420, &qword_1000071A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C428);
  }

  return result;
}

uint64_t sub_1000066C4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006138(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000067D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006138(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006830(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100006884()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000068C4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006964;

  return sub_100001A8C(a1, v5, v6, v4);
}