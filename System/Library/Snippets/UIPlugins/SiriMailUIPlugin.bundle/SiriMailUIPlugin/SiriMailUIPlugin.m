uint64_t sub_1390(uint64_t a1, uint64_t a2)
{
  v129 = a2;
  v139 = a1;
  v134 = sub_2B68();
  v2 = sub_2A00(v134);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_2A60();
  sub_2A50(v6 - v5);
  v127 = sub_2B88();
  v7 = sub_2A00(v127);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_2A70();
  sub_2A40();
  __chkstk_darwin(v10);
  sub_2A40();
  __chkstk_darwin(v11);
  v136 = &v123 - v12;
  v128 = sub_2B08();
  v13 = sub_2A00(v128);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_2A60();
  sub_2A50(v17 - v16);
  v126 = sub_2B38();
  v18 = sub_2A00(v126);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_2A60();
  sub_2A50(v22 - v21);
  v23 = sub_2BC8();
  v24 = sub_2AC4(v23);
  v137 = v25;
  v138 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_2A70();
  v135 = v28 - v29;
  __chkstk_darwin(v30);
  sub_2A40();
  __chkstk_darwin(v31);
  sub_2A40();
  __chkstk_darwin(v32);
  v124 = &v123 - v33;
  v34 = sub_20C0(&qword_8130, &qword_2E38);
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34 - 8);
  sub_2A50(&v123 - v36);
  v37 = sub_2AE8();
  v38 = sub_2A00(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_2A70();
  sub_2A40();
  __chkstk_darwin(v41);
  sub_2A50(&v123 - v42);
  v43 = sub_2B28();
  v44 = sub_2A00(v43);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  sub_2A60();
  v49 = v48 - v47;
  v50 = sub_2BA8();
  v51 = sub_2AC4(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  __chkstk_darwin(v51);
  sub_2A70();
  v58 = v56 - v57;
  __chkstk_darwin(v59);
  v61 = &v123 - v60;
  v62 = sub_2AD8();
  v63 = sub_2A00(v62);
  v65 = *(v64 + 64);
  __chkstk_darwin(v63);
  sub_2A60();
  v68 = (v67 - v66);
  sub_2878(v139, v67 - v66, &type metadata accessor for MailPluginModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v96 = *v68;
      v97 = v68[1];
      v98 = v68[2];
      v99 = *(*v68 + 16) == 1;
      v101 = v137;
      v100 = v138;
      v102 = v131;
      if (!v99)
      {
        goto LABEL_12;
      }

      sub_2AB8(v146);
      sub_1F3C(v96, v103);
      if (sub_2798(v49, 1, v37) == 1)
      {
        sub_27C0(v49, &qword_8130, &qword_2E38);
LABEL_12:
        v104 = sub_2B98();
        (*(v101 + 16))(v102, v104, v100);
        v105 = sub_2BB8();
        v106 = sub_2C08();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&dword_0, v105, v106, "Picking ReadMessagesView", v107, 2u);
          sub_2A80(v107);
        }

        (*(v101 + 8))(v102, v100);
        sub_2AB8(&v147);
        sub_2AF8();
        sub_28D8(&qword_8150, &type metadata accessor for MessageListView);
        v69 = sub_2BD8();
        v108 = sub_2AAC();
        goto LABEL_17;
      }

      v115 = v125;
      sub_2818(v49, v125, &type metadata accessor for WidgetMessage);
      v116 = sub_2B98();
      v117 = v124;
      (*(v101 + 16))(v124, v116, v100);
      v118 = sub_2BB8();
      v119 = sub_2C08();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_0, v118, v119, "Picking MessageDetailView", v120, 2u);
        sub_2A80(v120);
      }

      (*(v101 + 8))(v117, v100);
      sub_2878(v115, v123, &type metadata accessor for WidgetMessage);
      sub_2AB8(&v145 + 8);
      sub_2B48();
      sub_28D8(&qword_8158, &type metadata accessor for MessageDetailView);
      v69 = sub_2BD8();
      v121 = sub_2AAC();
      sub_2920(v121, v122);
      v109 = &type metadata accessor for WidgetMessage;
      v108 = v115;
LABEL_17:
      sub_2920(v108, v109);
      return v69;
    case 2u:
      v72 = *v68;
      v73 = v68[1];
      v74 = v68[2];
      sub_2B98();
      sub_2A98();
      v75 = v130;
      v76(v130);
      v77 = sub_2BB8();
      v78 = sub_2C08();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_0, v77, v78, "Picking DisambiguationRecipientView", v79, 2u);
        sub_2A80(v79);
      }

      (*(v53 + 8))(v75, v68);
      sub_2B78();
      v144 = *&v143[8];
      v145 = *&v143[24];
      v147 = *v143;
      v140 = *v143;
      v141 = *&v143[16];
      v142 = *&v143[32];
      sub_26C4();
      v69 = sub_2BD8();
      sub_2718(&v147);
      sub_2744(&v144);
      sub_27C0(&v145, &qword_8148, &qword_2E40);
      return v69;
    case 3u:
      v80 = v136;
      sub_2818(v68, v136, &type metadata accessor for DisambiguateHandlesDataModel);
      sub_2B98();
      sub_2A98();
      v81 = v135;
      v82(v135);
      sub_2A28();
      v83 = v132;
      sub_2878(v80, v132, v84);
      v85 = sub_2BB8();
      v86 = sub_2C08();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v143 = v88;
        *v87 = 136315138;
        sub_2A28();
        v89 = v133;
        sub_2878(v83, v133, v90);
        v91 = sub_2BE8();
        v93 = v92;
        sub_2A10();
        sub_2920(v83, v94);
        v95 = sub_2108(v91, v93, v143);
        v80 = v136;

        *(v87 + 4) = v95;
        _os_log_impl(&dword_0, v85, v86, "Picking DisambiguationHandleView: %s", v87, 0xCu);
        sub_2678(v88);
        sub_2A80(v88);
        sub_2A80(v87);

        (*(v53 + 8))(v135, v138);
      }

      else
      {

        sub_2A10();
        sub_2920(v83, v110);
        (*(v53 + 8))(v81, v68);
        v89 = v133;
      }

      sub_2A28();
      sub_2878(v80, v89, v111);
      sub_2AB8(&v148);
      sub_2B58();
      sub_28D8(&qword_8138, &type metadata accessor for DisambiguateHandlesView);
      v69 = sub_2BD8();
      v112 = sub_2AAC();
      sub_2920(v112, v113);
      sub_2A10();
      v108 = v80;
      goto LABEL_17;
    default:
      (*(v53 + 32))(v61, v68, v50);
      (*(v53 + 16))(v58, v61, v50);
      sub_2B18();
      sub_28D8(&qword_8160, &type metadata accessor for SendMessageView);
      v69 = sub_2BD8();
      v70 = sub_2AAC();
      sub_2920(v70, v71);
      (*(v53 + 8))(v61, v50);
      return v69;
  }
}

uint64_t sub_1F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2AE8();
  v6 = v5;
  if (v4)
  {
    sub_2878(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &type metadata accessor for WidgetMessage);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_2978(a2, v7, 1, v6);
}

uint64_t sub_2080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2028();
  *a1 = result;
  return result;
}

uint64_t sub_20C0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2108(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21CC(v11, 0, 0, 1, a1, a2);
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
    sub_29A0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2678(v11);
  return v7;
}

unint64_t sub_21CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22CC(a5, a6);
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
    result = sub_2C28();
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

char *sub_22CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2318(a1, a2);
  sub_2430(&off_4318);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_2318(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2BF8())
  {
    result = sub_2514(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2C18();
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
          result = sub_2C28();
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

uint64_t sub_2430(uint64_t result)
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

    result = sub_2584(result, v8, 1, v3);
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

void *sub_2514(uint64_t a1, uint64_t a2)
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

  sub_20C0(&qword_8168, qword_2E48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2584(char *result, int64_t a2, char a3, char *a4)
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
    sub_20C0(&qword_8168, qword_2E48);
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

uint64_t sub_2678(void *a1)
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

unint64_t sub_26C4()
{
  result = qword_8140;
  if (!qword_8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8140);
  }

  return result;
}

uint64_t *sub_2718(uint64_t *a1)
{
  v2 = *a1;

  return a1;
}

uint64_t sub_27C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_20C0(a2, a3);
  sub_2A00(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_2A00(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_2A00(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_28D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_2A00(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_29A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2A80(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}