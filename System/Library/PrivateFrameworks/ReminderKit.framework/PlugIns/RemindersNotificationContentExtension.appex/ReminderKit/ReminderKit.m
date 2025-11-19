dispatch_workloop_t rd_dispatch_workloop_create(const char *a1)
{
  v1 = dispatch_workloop_create(a1);

  return v1;
}

uint64_t sub_100001598()
{
  v0 = sub_100004730();
  sub_100001608(v0, qword_10000CAD0);
  sub_10000166C(v0, qword_10000CAD0);
  v1 = [objc_opt_self() ui];
  return sub_100004740();
}

uint64_t *sub_100001608(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000166C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000016A4()
{
  v0 = sub_100004730();
  sub_100001608(v0, qword_10000C880);
  v1 = sub_10000166C(v0, qword_10000C880);
  if (qword_10000C850 != -1)
  {
    swift_once();
  }

  v2 = sub_10000166C(v0, qword_10000CAD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000018D4()
{
  v1 = v0;
  if (qword_10000C858 != -1)
  {
    swift_once();
  }

  v2 = sub_100004730();
  sub_10000166C(v2, qword_10000C880);
  v3 = sub_100004720();
  v4 = sub_1000047F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ContentExtension viewDidLoad", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for RDNotificationViewController();
  return objc_msgSendSuper2(&v7, "viewDidLoad");
}

void sub_100001A18(__objc2_prot_list *a1)
{
  v2 = v1;
  v180 = sub_100004690();
  v179 = *(v180 - 8);
  v4 = *(v179 + 64);
  __chkstk_darwin(v180);
  v177 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1000046D0();
  v176 = *(v178 - 8);
  v6 = *(v176 + 64);
  __chkstk_darwin(v178);
  v173 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_100004670();
  v174 = *(v175 - 8);
  v8 = *(v174 + 64);
  __chkstk_darwin(v175);
  v172 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_1000046F0();
  v182 = *(v194 - 8);
  v10 = *(v182 + 64);
  v11 = __chkstk_darwin(v194);
  v171 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v193 = &v163 - v13;
  v187 = sub_100004700();
  v185 = *(v187 - 8);
  v14 = *(v185 + 64);
  __chkstk_darwin(v187);
  v186 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003604(&qword_10000C950, "B\n");
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v163 - v18;
  v20 = sub_100004710();
  v192 = *(v20 - 1);
  v21 = *(v192 + 64);
  v22 = __chkstk_darwin(v20);
  v188 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  __chkstk_darwin(v24);
  v26 = &v163 - v25;
  if (qword_10000C858 != -1)
  {
LABEL_84:
    swift_once();
  }

  v190 = v26;
  v27 = sub_100004730();
  v191 = sub_10000166C(v27, qword_10000C880);
  v28 = sub_100004720();
  v29 = sub_1000047F0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "ContentExtension didReceiveNotification", v30, 2u);
  }

  v31 = [(__objc2_prot_list *)a1 request];
  v32 = [v31 content];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v35 = sub_100004790();
    [v34 setText:v35];
  }

  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    v38 = [v32 title];
    if (!v38)
    {
      sub_1000047A0();
      v38 = sub_100004790();
    }

    [v37 setText:v38];
  }

  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    v41 = sub_100004790();
    [v40 setText:v41];
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    v44 = [v32 body];
    if (!v44)
    {
      sub_1000047A0();
      v44 = sub_100004790();
    }

    [v43 setText:v44];
  }

  v45 = swift_unknownObjectWeakLoadStrong();
  if (!v45)
  {
    goto LABEL_88;
  }

  v46 = v45;
  a1 = &RDNotificationViewController;
  [v45 setConstant:0.0];

  v47 = swift_unknownObjectWeakLoadStrong();
  if (!v47)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v48 = v47;
  v49 = v2;
  [v47 setConstant:0.0];

  v2 = OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_appLinkButton;
  v189 = v49;
  v50 = swift_unknownObjectWeakLoadStrong();
  if (!v50)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v51 = v50;
  [v50 setHidden:1];

  sub_100004860();
  v52 = v192;
  if ((*(v192 + 48))(v19, 1, v20) == 1)
  {
    sub_10000364C(v19);
    v53 = v32;
    v54 = sub_100004720();
    v55 = sub_100004800();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v196 = v57;
      *v56 = 136315138;
      v58 = [v53 categoryIdentifier];
      v59 = sub_1000047A0();
      v61 = v60;

      v62 = sub_1000036B4(v59, v61, &v196);

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "Expect a non-nil notificationIdentifier in notification. {categoryIdentifier: %s}", v56, 0xCu);
      sub_100003C5C(v57);
    }

    else
    {
    }

    return;
  }

  v170 = v32;
  (*(v52 + 32))(v190, v19, v20);
  v169 = [objc_allocWithZone(REMStore) init];
  v168 = sub_100004890();
  v63 = [v168 userActivity];
  if (v63)
  {
    v64 = v189;
    v65 = *&v189[OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_notificationUserActivity];
    *&v189[OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_notificationUserActivity] = v63;
    v66 = v63;

    v67 = [v64 traitCollection];
    [v67 displayScale];
    v69 = v68;

    v70 = v185;
    v71 = v186;
    v72 = v187;
    (*(v185 + 104))(v186, enum case for REMApplicationIconFormat.notificationLongLook(_:), v187);
    v188 = v66;
    v73 = sub_100004810();
    (*(v70 + 8))(v71, v72);
    if (v73)
    {

      v74 = [objc_allocWithZone(UIImage) initWithCGImage:v73 scale:0 orientation:v69];
      v75 = swift_unknownObjectWeakLoadStrong();
      if (!v75)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v76 = v75;
      [v75 setImage:v74 forState:0];

      v77 = swift_unknownObjectWeakLoadStrong();
      if (!v77)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v78 = v77;
      [v77 setConstant:8.0];

      v79 = swift_unknownObjectWeakLoadStrong();
      if (!v79)
      {
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v80 = v79;
      [v79 setConstant:34.0];

      v81 = swift_unknownObjectWeakLoadStrong();
      if (!v81)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v82 = v81;
      [v81 setHidden:0];
    }

    else
    {
      v83 = swift_unknownObjectWeakLoadStrong();
      if (!v83)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v84 = v83;
      [v83 setConstant:0.0];

      v85 = swift_unknownObjectWeakLoadStrong();
      if (!v85)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v86 = v85;
      [v85 setConstant:0.0];

      v87 = swift_unknownObjectWeakLoadStrong();
      if (!v87)
      {
LABEL_97:
        __break(1u);
        return;
      }

      v82 = v87;
      [v87 setHidden:1];
    }
  }

  v88 = v189;
  v89 = [v189 extensionContext];
  v188 = v20;
  if (v89)
  {
    v90 = v89;
    v91 = [v89 notificationActions];

    v165 = sub_100003CA8();
    v92 = sub_1000047E0();

    v166 = v92 >> 62;
    v93 = v92 & 0xFFFFFFFFFFFFFF8;
    if (v92 >> 62)
    {
      v26 = sub_100004920();
    }

    else
    {
      v26 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v187 = v92 & 0xC000000000000001;
    v184 = enum case for RDUserNotificationAction.snoozeToNextThirds(_:);
    v183 = (v182 + 104);
    v185 = v182 + 8;

    v186 = -v26;
    v19 = 4;
    v182 = v92 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v186 + v19 == 4)
      {
        swift_bridgeObjectRelease_n();
        v88 = v189;
        goto LABEL_54;
      }

      if (v187)
      {
        v94 = v19 - 4;
        v95 = v92;
        v96 = sub_1000048F0();
      }

      else
      {
        if ((v19 - 4) >= *(v93 + 16))
        {
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v94 = v19 - 4;
        v95 = v92;
        v96 = *(v92 + 8 * v19);
      }

      v97 = v96;
      v98 = [v96 identifier];
      v99 = sub_1000047A0();
      a1 = v100;

      v26 = v193;
      v101 = v194;
      v181 = *v183;
      v181(v193, v184, v194);
      v102 = sub_1000046E0();
      v104 = v103;
      v105 = v101;
      v2 = *v185;
      (*v185)(v26, v105);
      if (v99 == v102 && a1 == v104)
      {
        break;
      }

      v107 = sub_100004930();

      if (v107)
      {
        goto LABEL_59;
      }

      ++v19;
      v108 = __OFADD__(v94, 1);
      v20 = v188;
      v92 = v95;
      v93 = v182;
      if (v108)
      {
        goto LABEL_83;
      }
    }

LABEL_59:

    v167 = v95;
    v164 = v94;
    if (v187)
    {
      v118 = sub_1000048F0();
      goto LABEL_63;
    }

    if (v94 >= *(v182 + 16))
    {
      __break(1u);
    }

    else
    {
      v118 = *(v95 + 8 * v19);
LABEL_63:
      v119 = v118;
      v120 = v173;
      sub_1000046B0();
      sub_100003604(&qword_10000C968, &qword_100005040);
      v121 = sub_1000046C0();
      v122 = *(v121 - 8);
      v123 = *(v122 + 72);
      v124 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v125 = swift_allocObject();
      *(v125 + 16) = xmmword_100004FD0;
      (*(v122 + 104))(v125 + v124, enum case for Calendar.Component.hour(_:), v121);
      sub_100003D58(v125);
      swift_setDeallocating();
      (*(v122 + 8))(v125 + v124, v121);
      swift_deallocClassInstance();
      v126 = v177;
      sub_100004680();
      v127 = v172;
      sub_1000046A0();

      (*(v179 + 8))(v126, v180);
      (*(v176 + 8))(v120, v178);
      v128 = sub_100004660();
      LOBYTE(v121) = v129;
      (*(v174 + 8))(v127, v175);
      if (v121)
      {
        v128 = 0;
      }

      [objc_opt_self() nextThirdsHourFromHour:v128];
      v130 = sub_100004870();
      v132 = v131;
      v133 = sub_100004880();
      v134 = [v119 title];
      v135 = sub_1000047A0();
      v137 = v136;

      if (v135 == v130 && v137 == v132)
      {

        v138 = v170;
        goto LABEL_69;
      }

      v193 = v133;
      v139 = sub_100004930();

      v138 = v170;
      if (v139)
      {
LABEL_69:
        (*(v192 + 8))(v190, v188);

        v140 = v169;
        goto LABEL_70;
      }

      v191 = v119;
      v145 = v171;
      v146 = v194;
      v181(v171, v184, v194);
      sub_1000046E0();
      (v2)(v145, v146);
      v147 = sub_100004790();

      v148 = [objc_opt_self() iconWithSystemImageName:v147];

      v149 = sub_100004790();

      v150 = sub_100004790();

      v151 = [objc_opt_self() actionWithIdentifier:v149 title:v150 options:0 icon:v148];

      v152 = v151;
      v153 = v167;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v166 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v156 = sub_100003CF4(v153) & 0xFFFFFFFFFFFFFF8;
        v155 = v189;
      }

      else
      {
        v155 = v189;
        v156 = v182;
      }

      v157 = v188;
      v158 = v190;
      if (v164 < *(v156 + 16))
      {
        v159 = *(v156 + 8 * v19);
        *(v156 + 8 * v19) = v152;

        v160 = [v155 extensionContext];
        if (v160)
        {
          v161 = v160;
          isa = sub_1000047D0().super.isa;
          [v161 setNotificationActions:isa];

          (*(v192 + 8))(v158, v157);
        }

        else
        {
          (*(v192 + 8))(v158, v157);

          v140 = v169;
          v119 = v191;
LABEL_70:
        }

        return;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_54:
  v109 = v88;
  v110 = sub_100004720();
  v111 = sub_100004800();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v196 = v113;
    *v112 = 136315138;
    v114 = [v109 extensionContext];
    if (v114)
    {
      v115 = v114;
      v116 = [v114 notificationActions];

      sub_100003CA8();
      v117 = sub_1000047E0();
    }

    else
    {
      v117 = 0;
    }

    v195 = v117;
    sub_100003604(&qword_10000C958, "B\n");
    v141 = sub_1000048A0();
    v143 = v142;

    v144 = sub_1000036B4(v141, v143, &v196);

    *(v112 + 4) = v144;
    _os_log_impl(&_mh_execute_header, v110, v111, "Cannot find notification action(s) to patch {actions: %s}", v112, 0xCu);
    sub_100003C5C(v113);

    (*(v192 + 8))(v190, v188);
  }

  else
  {

    (*(v192 + 8))(v190, v20);
  }
}

void sub_100003140()
{
  v1 = v0;
  if (qword_10000C858 != -1)
  {
    swift_once();
  }

  v2 = sub_100004730();
  sub_10000166C(v2, qword_10000C880);
  v3 = sub_100004720();
  v4 = sub_1000047F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ContentExtension didTapAppLinkButton", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_notificationUserActivity);
  if (v6)
  {
    v7 = v6;
    sub_100004820();
  }
}

id sub_1000032CC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_notificationUserActivity] = 0;
  if (a2)
  {
    v6 = sub_100004790();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for RDNotificationViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_100003428(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_notificationUserActivity] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RDNotificationViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100003520()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDNotificationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003604(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000364C(uint64_t a1)
{
  v2 = sub_100003604(&qword_10000C950, "B\n");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000036B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003780(v11, 0, 0, 1, a1, a2);
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
    sub_100004094(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003C5C(v11);
  return v7;
}

unint64_t sub_100003780(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000388C(a5, a6);
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
    result = sub_100004910();
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

char *sub_10000388C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000038D8(a1, a2);
  sub_100003A08(&off_1000084E0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000038D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003AF4(v5, 0);
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

  result = sub_100004910();
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
        v10 = sub_1000047C0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003AF4(v10, 0);
        result = sub_1000048E0();
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

uint64_t sub_100003A08(uint64_t result)
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

  result = sub_100003B68(result, v12, 1, v3);
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

void *sub_100003AF4(uint64_t a1, uint64_t a2)
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

  sub_100003604(&qword_10000C988, &unk_100005050);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003B68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003604(&qword_10000C988, &unk_100005050);
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

uint64_t sub_100003C5C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100003CA8()
{
  result = qword_10000C960;
  if (!qword_10000C960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C960);
  }

  return result;
}

uint64_t sub_100003CF4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100004920();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

void *sub_100003D58(uint64_t a1)
{
  v2 = sub_1000046C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100003604(&qword_10000C970, &qword_100005048);
    v10 = sub_1000048D0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_100004050(&qword_10000C978);
      v18 = sub_100004770();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_100004050(&qword_10000C980);
          v25 = sub_100004780();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100004050(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000046C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004094(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_100004170(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_100004214()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDDispatchQueue_ObjC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSObject *sub_10000426C()
{
  result = rd_dispatch_workloop_create("com.apple.remindd.xpc.default");
  qword_10000CAE8 = result;
  return result;
}

uint64_t sub_10000429C()
{
  v0 = sub_100004840();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004830();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_100004760();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1000044E0();
  sub_100004750();
  v11[1] = &_swiftEmptyArrayStorage;
  sub_10000452C();
  sub_100003604(&qword_10000CAC0, "F\n");
  sub_100004584();
  sub_1000048C0();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  if (qword_10000C870 != -1)
  {
    swift_once();
  }

  v9 = qword_10000CAF8;
  result = sub_100004850();
  qword_10000CAF0 = result;
  return result;
}

unint64_t sub_1000044E0()
{
  result = qword_10000CAB0;
  if (!qword_10000CAB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000CAB0);
  }

  return result;
}

unint64_t sub_10000452C()
{
  result = qword_10000CAB8;
  if (!qword_10000CAB8)
  {
    sub_100004830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CAB8);
  }

  return result;
}

unint64_t sub_100004584()
{
  result = qword_10000CAC8;
  if (!qword_10000CAC8)
  {
    sub_1000045E8(&qword_10000CAC0, "F\n");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CAC8);
  }

  return result;
}

uint64_t sub_1000045E8(uint64_t *a1, uint64_t *a2)
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

NSObject *sub_100004630()
{
  result = rd_dispatch_workloop_create("com.apple.remindd.discretionary");
  qword_10000CAF8 = result;
  return result;
}