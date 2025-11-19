Swift::Int sub_1300()
{
  sub_2FD8();
  sub_2FE8(0);
  return sub_2FF8();
}

Swift::Int sub_136C()
{
  sub_2FD8();
  sub_2FE8(0);
  return sub_2FF8();
}

uint64_t sub_140C@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

unint64_t sub_1440(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_150C(v11, 0, 0, 1, a1, a2);
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
    sub_2908(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2874(v11);
  return v7;
}

unint64_t sub_150C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1618(a5, a6);
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
    result = sub_2F78();
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

char *sub_1618(uint64_t a1, unint64_t a2)
{
  v4 = sub_1664(a1, a2);
  sub_1794(&off_4400);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1664(uint64_t a1, unint64_t a2)
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

  v6 = sub_1880(v5, 0);
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

  result = sub_2F78();
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
        v10 = sub_2F38();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1880(v10, 0);
        result = sub_2F68();
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

uint64_t sub_1794(uint64_t result)
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

  result = sub_18F4(result, v12, 1, v3);
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

void *sub_1880(uint64_t a1, uint64_t a2)
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

  sub_2964(&qword_8170, &unk_3240);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2964(&qword_8170, &unk_3240);
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

NSObject *sub_19E8(uint64_t a1)
{
  v84 = sub_2EA8();
  v2 = *(v84 - 8);
  v3 = *(v2 + 64);
  (__chkstk_darwin)();
  v91 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EE8();
  v90 = *(v5 - 8);
  v6 = *(v90 + 64);
  v7 = (__chkstk_darwin)();
  v88 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = &v80 - v9;
  v10 = sub_2E68();
  v97 = *(v10 - 8);
  v98 = v10;
  v11 = *(v97 + 64);
  __chkstk_darwin(v10);
  v95 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2E78();
  v94 = *(v96 - 8);
  v13 = *(v94 + 64);
  v14 = __chkstk_darwin(v96);
  v92 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v93 = &v80 - v16;
  v17 = sub_2EC8();
  v104 = *(v17 - 8);
  v105 = v17;
  v18 = *(v104 + 64);
  __chkstk_darwin(v17);
  v102 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_2ED8();
  v101 = *(v103 - 8);
  v20 = *(v101 + 64);
  v21 = __chkstk_darwin(v103);
  v99 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v100 = &v80 - v23;
  v24 = sub_2E38();
  v111 = *(v24 - 8);
  v112 = v24;
  v25 = *(v111 + 64);
  __chkstk_darwin(v24);
  v109 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2E48();
  v108 = *(v110 - 8);
  v27 = *(v108 + 64);
  v28 = __chkstk_darwin(v110);
  v106 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v107 = &v80 - v30;
  v31 = sub_2E88();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v87 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v115 = &v80 - v37;
  __chkstk_darwin(v36);
  v39 = &v80 - v38;
  if (qword_8098 != -1)
  {
    swift_once();
  }

  v40 = sub_2F18();
  v41 = sub_27E8(v40, static Logger.siriHomeCommunicationUIPlugin);
  v113 = *(v32 + 16);
  v114 = a1;
  v113(v39, a1, v31);
  v85 = v41;
  v42 = sub_2EF8();
  v43 = sub_2F48();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v83 = v2;
    v45 = v44;
    v81 = swift_slowAlloc();
    v117 = v81;
    *v45 = 136315138;
    sub_28C0(&qword_8148, &type metadata accessor for HomeCommunicationSnippetModel);
    v46 = sub_2F88();
    v82 = v5;
    v48 = v47;
    v86 = *(v32 + 8);
    v86(v39, v31);
    v49 = sub_1440(v46, v48, &v117);
    v5 = v82;

    *(v45 + 4) = v49;
    _os_log_impl(&dword_0, v42, v43, "#HomeCommunicationUIPlugin getting snippet for %s", v45, 0xCu);
    sub_2874(v81);

    v2 = v83;
  }

  else
  {

    v86 = *(v32 + 8);
    v86(v39, v31);
  }

  v50 = v114;
  v51 = v115;
  v52 = v31;
  v53 = v31;
  v54 = v113;
  v113(v115, v114, v53);
  v55 = (*(v32 + 88))(v51, v52);
  if (v55 == enum case for HomeCommunicationSnippetModel.appLaunch(_:))
  {
    (*(v32 + 96))(v51, v52);
    v57 = v107;
    v56 = v108;
    v58 = v110;
    (*(v108 + 32))(v107, v51, v110);
    (*(v56 + 16))(v106, v57, v58);
    v59 = v109;
    sub_2E28();
    sub_28C0(&qword_8168, &type metadata accessor for HomeAppLaunchView);
    v60 = v112;
    v61 = sub_2F28();
    v62 = v111;
LABEL_12:
    (*(v62 + 8))(v59, v60);
    (*(v56 + 8))(v57, v58);
    return v61;
  }

  if (v55 == enum case for HomeCommunicationSnippetModel.carPlayIntercomControl(_:))
  {
    (*(v32 + 96))(v51, v52);
    v57 = v100;
    v56 = v101;
    v58 = v103;
    (*(v101 + 32))(v100, v51, v103);
    (*(v56 + 16))(v99, v57, v58);
    v59 = v102;
    sub_2EB8();
    sub_28C0(&qword_8160, &type metadata accessor for CarPlayIntercomControlView);
    v60 = v105;
    v61 = sub_2F28();
    v62 = v104;
    goto LABEL_12;
  }

  if (v55 == enum case for HomeCommunicationSnippetModel.homeDisambiguation(_:))
  {
    (*(v32 + 96))(v51, v52);
    v56 = v94;
    v57 = v93;
    v58 = v96;
    (*(v94 + 32))(v93, v51, v96);
    (*(v56 + 16))(v92, v57, v58);
    v59 = v95;
    sub_2E58();
    sub_28C0(&qword_8158, &type metadata accessor for HomeDisambiguationView);
    v60 = v98;
    v61 = sub_2F28();
    v62 = v97;
    goto LABEL_12;
  }

  if (v55 == enum case for HomeCommunicationSnippetModel.sendAnnouncementNeedsValue(_:))
  {
    (*(v32 + 96))(v51, v52);
    v64 = v90;
    v65 = v89;
    (*(v90 + 32))(v89, v51, v5);
    (*(v64 + 16))(v88, v65, v5);
    v66 = v91;
    sub_2E98();
    sub_28C0(&qword_8150, &type metadata accessor for SendAnnouncementView);
    v67 = v84;
    v61 = sub_2F28();
    (*(v2 + 8))(v66, v67);
    (*(v64 + 8))(v65, v5);
  }

  else
  {
    v68 = v87;
    v54(v87, v50, v52);
    v61 = sub_2EF8();
    v69 = sub_2F58();
    if (os_log_type_enabled(v61, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v117 = v71;
      *v70 = 136315138;
      sub_28C0(&qword_8148, &type metadata accessor for HomeCommunicationSnippetModel);
      v72 = sub_2F88();
      v73 = v52;
      v75 = v74;
      v76 = v68;
      v77 = v86;
      v86(v76, v73);
      v78 = sub_1440(v72, v75, &v117);
      v52 = v73;

      *(v70 + 4) = v78;
      _os_log_impl(&dword_0, v61, v69, "#HomeCommunicationUIPlugin unknown snippet model %s. Throwing.", v70, 0xCu);
      sub_2874(v71);
    }

    else
    {

      v79 = v68;
      v77 = v86;
      v86(v79, v52);
    }

    sub_2820();
    v116 = swift_allocError();
    swift_willThrow();
    v77(v115, v52);
  }

  return v61;
}

uint64_t sub_27E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2820()
{
  result = qword_8140;
  if (!qword_8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8140);
  }

  return result;
}

uint64_t sub_2874(void *a1)
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

uint64_t sub_28C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2908(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2964(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for HomeCommunicationUIPlugin.HomeCommunicationUIPluginError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HomeCommunicationUIPlugin.HomeCommunicationUIPluginError(_WORD *result, int a2, int a3)
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

unint64_t sub_2AA8()
{
  result = qword_8178;
  if (!qword_8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8178);
  }

  return result;
}

uint64_t sub_2B20()
{
  v0 = sub_2F18();
  sub_2D84(v0, static Logger.siriHomeCommunicationUIFramework);
  sub_27E8(v0, static Logger.siriHomeCommunicationUIFramework);
  return sub_2F08();
}

uint64_t sub_2BC0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2F18();

  return sub_27E8(v3, a2);
}

uint64_t sub_2C38()
{
  v0 = sub_2F18();
  sub_2D84(v0, static Logger.siriHomeCommunicationUIPlugin);
  sub_27E8(v0, static Logger.siriHomeCommunicationUIPlugin);
  return sub_2F08();
}

uint64_t sub_2CDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2F18();
  v6 = sub_27E8(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *sub_2D84(uint64_t a1, uint64_t *a2)
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