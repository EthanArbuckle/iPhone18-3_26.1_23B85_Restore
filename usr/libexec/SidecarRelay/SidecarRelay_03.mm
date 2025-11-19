uint64_t sub_1000429EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v8 = *(*(v51 - 8) + 64);
  v9 = __chkstk_darwin(v51);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v43 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1;
  v18 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v50 = a3;
  v21 = v17 / v16;
  v54 = a1;
  v53 = a4;
  v22 = v19 / v16;
  if (v17 / v16 >= v19 / v16)
  {
    sub_10003901C(a2, v19 / v16, a4, &qword_10009A850, &qword_100076A20);
    v27 = a4 + v22 * v16;
    v28 = -v16;
    v29 = v27;
    v30 = v50;
    v47 = a1;
    v48 = a4;
    v45 = v11;
    v46 = -v16;
LABEL_37:
    v49 = a2;
    v50 = a2 + v28;
    v31 = v30;
    v43 = v29;
    while (1)
    {
      if (v27 <= a4)
      {
        v54 = a2;
        v52 = v29;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v44 = v29;
      v32 = v31 + v28;
      v33 = v27 + v28;
      v34 = v27;
      v35 = v31;
      sub_100048658();
      sub_100048658();
      v36 = static Date.< infix(_:_:)();
      v37 = v11;
      v38 = v36;
      sub_100048978(v37, &qword_10009A850);
      sub_100048978(v14, &qword_10009A850);
      if (v38)
      {
        v43 = v34;
        v40 = v35 < v49 || v32 >= v49;
        v30 = v32;
        if (v40)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v11 = v45;
          a1 = v47;
          a4 = v48;
          v28 = v46;
          v27 = v43;
        }

        else
        {
          v11 = v45;
          v29 = v44;
          v18 = v35 == v49;
          v41 = v50;
          a2 = v50;
          a1 = v47;
          a4 = v48;
          v28 = v46;
          v27 = v43;
          if (!v18)
          {
            v42 = v44;
            swift_arrayInitWithTakeBackToFront();
            v27 = v43;
            a2 = v41;
            v29 = v42;
          }
        }

        goto LABEL_37;
      }

      if (v35 < v34 || v32 >= v34)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v32;
        v27 = v33;
        v29 = v33;
        v11 = v45;
        v28 = v46;
        a4 = v48;
        a2 = v49;
        a1 = v47;
      }

      else
      {
        v29 = v33;
        v18 = v34 == v35;
        v31 = v32;
        v27 = v33;
        v11 = v45;
        v28 = v46;
        a4 = v48;
        a2 = v49;
        a1 = v47;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v32;
          v27 = v33;
          v29 = v33;
        }
      }
    }

    v54 = a2;
    v52 = v43;
  }

  else
  {
    sub_10003901C(a1, v17 / v16, a4, &qword_10009A850, &qword_100076A20);
    v49 = a4 + v21 * v16;
    v52 = v49;
    while (a4 < v49 && a2 < v50)
    {
      sub_100048658();
      sub_100048658();
      v24 = static Date.< infix(_:_:)();
      sub_100048978(v11, &qword_10009A850);
      sub_100048978(v14, &qword_10009A850);
      if (v24)
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v53 = a4 + v16;
        a4 += v16;
      }

      a1 += v16;
      v54 = a1;
    }
  }

LABEL_59:
  sub_100043784(&v54, &v53, &v52, &qword_10009A850, &qword_100076A20);
  return 1;
}

uint64_t sub_100042EA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v98 = sub_10000FC6C(&qword_10009A9E0, &qword_100076B18);
  v8 = *(*(v98 - 8) + 64);
  v9 = __chkstk_darwin(v98);
  v86 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v85 = &v83 - v12;
  v13 = __chkstk_darwin(v11);
  v93 = &v83 - v14;
  v15 = __chkstk_darwin(v13);
  v90 = &v83 - v16;
  v17 = __chkstk_darwin(v15);
  v92 = &v83 - v18;
  v19 = __chkstk_darwin(v17);
  v91 = &v83 - v20;
  v21 = __chkstk_darwin(v19);
  result = __chkstk_darwin(v21);
  v25 = &v83 - v24;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v28 = a2 - a1;
  v29 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v29)
  {
    goto LABEL_71;
  }

  v30 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_72;
  }

  v32 = v28 / v27;
  v104 = a1;
  v103 = a4;
  v33 = v30 / v27;
  if (v28 / v27 < v30 / v27)
  {
    v94 = v23;
    sub_10003901C(a1, v28 / v27, a4, &qword_10009A9E0, &qword_100076B18);
    v89 = a3;
    v90 = a4 + v32 * v27;
    v102 = v90;
    v87 = v25;
    v88 = v27;
    while (1)
    {
      if (a4 >= v90 || a2 >= a3)
      {
        goto LABEL_69;
      }

      v96 = a1;
      v97 = a2;
      sub_100048658();
      v95 = a4;
      sub_100048658();
      v35 = v91;
      sub_100048658();
      v36 = v98;
      v37 = *&v35[*(v98 + 48)];

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v39 = sub_100010F24(isa);

      v99 = v39;
      v100 = 542327881;
      v101 = 0xE400000000000000;
      sub_100010C84();
      v40._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v40);

      v41 = v101;
      v93 = v100;
      sub_10003E708();
      v42 = v92;
      sub_100048658();
      v43 = *&v42[*(v36 + 48)];

      v44 = UUID._bridgeToObjectiveC()().super.isa;
      v45 = sub_100010F24(v44);

      v99 = v45;
      v100 = 542327881;
      v101 = 0xE400000000000000;
      v46._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v46);

      v48 = v100;
      v47 = v101;
      sub_10003E708();
      if (v93 == v48 && v41 == v47)
      {

        sub_100048978(v94, &qword_10009A9E0);
        sub_100048978(v87, &qword_10009A9E0);
        v51 = v96;
        v52 = v88;
      }

      else
      {
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100048978(v94, &qword_10009A9E0);
        sub_100048978(v87, &qword_10009A9E0);
        v51 = v96;
        v52 = v88;
        if (v50)
        {
          a2 = v97 + v88;
          v53 = v96 < v97 || v96 >= a2;
          a4 = v95;
          a3 = v89;
          if (v53)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v96 != v97)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_37;
        }
      }

      a4 = v95 + v52;
      v54 = v51 < v95 || v51 >= a4;
      a2 = v97;
      a3 = v89;
      if (v54)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v51 != v95)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v103 = a4;
LABEL_37:
      a1 = v51 + v52;
      v104 = a1;
    }
  }

  sub_10003901C(a2, v30 / v27, a4, &qword_10009A9E0, &qword_100076B18);
  v55 = a4 + v33 * v27;
  v56 = -v27;
  v57 = v55;
  v95 = a4;
  v96 = a1;
  v88 = v56;
LABEL_41:
  v58 = a3;
  v59 = v57;
  v97 = a2;
  v89 = a2 + v56;
  v87 = v57;
  while (1)
  {
    if (v55 <= a4)
    {
      v104 = a2;
      v102 = v59;
      goto LABEL_69;
    }

    if (a2 <= a1)
    {
      break;
    }

    v84 = v59;
    v94 = v55;
    v91 = (v55 + v56);
    v92 = v58;
    sub_100048658();
    sub_100048658();
    v60 = v85;
    sub_100048658();
    v61 = v98;
    v62 = *&v60[*(v98 + 48)];

    v63 = UUID._bridgeToObjectiveC()().super.isa;
    v64 = sub_100010F24(v63);

    v100 = 542327881;
    v101 = 0xE400000000000000;
    v102 = v64;
    sub_100010C84();
    v65._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v65);

    v66 = v100;
    v67 = v101;
    sub_10003E708();
    v68 = v86;
    sub_100048658();
    v69 = *&v68[*(v61 + 48)];

    v70 = UUID._bridgeToObjectiveC()().super.isa;
    v71 = sub_100010F24(v70);

    v100 = 542327881;
    v101 = 0xE400000000000000;
    v102 = v71;
    v72._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v72);

    v74 = v100;
    v73 = v101;
    sub_10003E708();
    if (v66 == v74 && v67 == v73)
    {
      v76 = 0;
    }

    else
    {
      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v77 = v92;

    v56 = v88;
    a3 = v77 + v88;
    sub_100048978(v93, &qword_10009A9E0);
    sub_100048978(v90, &qword_10009A9E0);
    a4 = v95;
    a1 = v96;
    a2 = v97;
    v55 = v94;
    v78 = v89;
    if (v76)
    {
      if (v77 < v97 || a3 >= v97)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v78;
        v57 = v84;
      }

      else
      {
        v57 = v84;
        a2 = v89;
        if (v77 != v97)
        {
          v57 = v84;
          swift_arrayInitWithTakeBackToFront();
          a2 = v78;
        }
      }

      goto LABEL_41;
    }

    if (v77 < v94 || a3 >= v94)
    {
      v80 = v91;
      swift_arrayInitWithTakeFrontToBack();
      v58 = (v77 + v56);
      v55 = v80;
      v59 = v80;
      v57 = v87;
    }

    else
    {
      v59 = v91;
      v29 = v94 == v77;
      v81 = v91;
      v58 = a3;
      v55 = v91;
      v57 = v87;
      if (!v29)
      {
        swift_arrayInitWithTakeBackToFront();
        v58 = a3;
        v55 = v81;
        v59 = v81;
      }
    }
  }

  v104 = a2;
  v102 = v57;
LABEL_69:
  sub_100043784(&v104, &v103, &v102, &qword_10009A9E0, &qword_100076B18);
  return 1;
}

uint64_t sub_100043784(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  v8 = sub_10000FC6C(a4, a5);
  result = sub_100011D00(v8);
  v11 = *(v10 + 72);
  if (!v11)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_20;
  }

  v13 = v6 + (v7 - v6) / v11 * v11;
  if (v5 < v6 || v5 >= v13)
  {
    sub_100049E94();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    sub_100049E94();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10004386C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
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
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10004390C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v36 = sub_10000FC6C(&qword_10009A9E0, &qword_100076B18);
  v33 = *(v36 - 8);
  v8 = *(v33 + 64);
  v9 = __chkstk_darwin(v36);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v34 = &v30 - v12;
  v37 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
    v20 = 0;
    a3 = 0;
LABEL_21:
    *a1 = v37;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v20;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = -1 << *(v14 - 32);
    v31 = a1;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v16) >> 6;
    v32 = a3;
    while (1)
    {
      if (v19 >= a3)
      {
        goto LABEL_24;
      }

      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_25;
      }

      if (!v18)
      {
        while (1)
        {
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v23 >= v21)
          {
            v18 = 0;
            a3 = v19;
            goto LABEL_19;
          }

          v18 = *(v14 + 8 * v23);
          ++v20;
          if (v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v23 = v20;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v23 << 6);
      v26 = v37;
      v27 = *(v37 + 48);
      v28 = *(*(type metadata accessor for SidecarIdentity() - 8) + 72);
      v29 = v35;
      sub_10003E75C();
      *&v29[*(v36 + 48)] = *(*(v26 + 56) + 8 * v25);
      sub_10004871C();
      sub_10004871C();
      a3 = v32;
      if (v22 == v32)
      {
        break;
      }

      a2 += *(v33 + 72);

      v19 = v22;
      v20 = v23;
    }

    v20 = v23;
LABEL_19:
    v16 = v30;
    a1 = v31;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100043BD4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100010FDC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100043BEC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for ServiceProvider();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_10003B96C(v7, result + 1, &unk_10009A828, &unk_100076A00, type metadata accessor for ServiceProvider);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          sub_10003B080();
        }

        v17 = v8;
        sub_10003BB3C();

        *v3 = v16;
LABEL_16:
        *a1 = v17;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for ServiceProvider();
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        v18 = *v3;
        swift_isUniquelyReferenced_nonNull_native();
        v22 = *v3;
        v17 = a2;
        sub_10004484C();
        *v3 = v22;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v19 = *(*(v6 + 48) + 8 * v13);
    *a1 = v19;
    v20 = v19;
    return 0;
  }

  return result;
}

void sub_100043E48()
{
  sub_100011DD0();
  v3 = v2;
  v32 = v4;
  v5 = type metadata accessor for UUID();
  v6 = sub_100011C54(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100049818();
  v31 = v0;
  v11 = *v0;
  v12 = *(*v0 + 40);
  sub_10004978C();
  sub_100035114(v13);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v33 = v11;
  v34 = v11 + 56;
  v14 = *(v11 + 32);
  sub_100049C5C();
  v17 = ~v16;
  while (1)
  {
    v18 = v15 & v17;
    if (((1 << (v15 & v17)) & *(v34 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v23 = *v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v8[2];
      sub_100049CE8();
      v26();
      v35 = *v31;
      v27 = sub_10004A074();
      sub_100044458(v27, v28, isUniquelyReferenced_nonNull_native);
      *v31 = v35;
      v29 = v8[4];
      sub_100049CE8();
      v30();
      goto LABEL_7;
    }

    v19 = v8[9] * v18;
    v20 = v8[2];
    v20(v1, *(v33 + 48) + v19, v5);
    sub_10004978C();
    sub_100035114(&unk_10009A940);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = v8[1];
    v22(v1, v5);
    if (v21)
    {
      break;
    }

    v15 = v18 + 1;
  }

  v22(v3, v5);
  v20(v32, *(v33 + 48) + v19, v5);
LABEL_7:
  sub_100011DB8();
}

BOOL sub_1000440B4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v9 = *(v7 + 32);
  sub_100049C5C();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_1000446E4(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

uint64_t sub_1000441FC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_10003B96C(v7, result + 1, &unk_10009A950, &unk_100076AB8, type metadata accessor for Client);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          sub_10003B080();
        }

        v17 = v8;
        sub_10003BB3C();

        *v3 = v16;
LABEL_16:
        *a1 = v17;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for Client();
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        v18 = *v3;
        swift_isUniquelyReferenced_nonNull_native();
        v22 = *v3;
        v17 = a2;
        sub_10004484C();
        *v3 = v22;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v19 = *(*(v6 + 48) + 8 * v13);
    *a1 = v19;
    v20 = v19;
    return 0;
  }

  return result;
}

uint64_t sub_100044458(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10003B224(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_10003AB34(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_100035114(&unk_100099180);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_100035114(&unk_10009A940);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_10003A5F8();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

Swift::Int sub_1000446E4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10003B57C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10003AE4C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_10003A82C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_10004484C()
{
  sub_100011DD0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(*v0 + 16);
  v9 = *(*v0 + 24);
  if (v9 <= v8 || (v1 & 1) == 0)
  {
    if (v1)
    {
      sub_10004A0A4(v8);
      sub_10003B080();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      v14 = sub_10004A0A4(v8);
      sub_10003A984(v14, v15);
LABEL_10:
      v16 = *v0;
      NSObject._rawHashValue(seed:)(*(*v0 + 40));
      v17 = *(v16 + 32);
      sub_100049C5C();
      v20 = ~v19;
      while (1)
      {
        v5 = v18 & v20;
        if (((*(v16 + 56 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v20)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v3(0);
        v21 = *(*(v16 + 48) + 8 * v5);
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          goto LABEL_15;
        }

        v18 = v5 + 1;
      }
    }

    sub_10003A4DC();
  }

LABEL_7:
  v10 = *v0;
  *(*v0 + 8 * (v5 >> 6) + 56) |= 1 << v5;
  *(*(v10 + 48) + 8 * v5) = v7;
  v11 = *(v10 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v13;
    sub_100011DB8();
  }
}

unint64_t *sub_100044988(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_100045194(v10, v6, v4, a2);

      return a2;
    }
  }

  __chkstk_darwin(a1);
  v7 = (&v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_10003BBB8(0, v6, v7);
  v8 = sub_100044C7C(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

unint64_t *sub_100044AF8(uint64_t a1, uint64_t (*a2)(char *, uint64_t), unint64_t *a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_10004521C(v12, v8, v6, a2);

      return a3;
    }
  }

  __chkstk_darwin(a1);
  v9 = (&v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_10003BBB8(0, v8, v9);
  v10 = sub_100044F7C(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_100044C7C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a2;
  v44 = a4;
  v37 = a1;
  v43 = sub_10000FC6C(&qword_10009A788, &qword_100076988);
  v5 = *(*(v43 - 8) + 64);
  v6 = __chkstk_darwin(v43);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v35 - v8;
  v9 = type metadata accessor for Relay.ConnectedSessionKey(0);
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  result = __chkstk_darwin(v9 - 8);
  v38 = 0;
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v45 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v46 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = v45;
    v26 = v45[6] + *(v40 + 72) * v24;
    sub_10003E75C();
    v27 = v24;
    v28 = *(v25[7] + 8 * v24);
    v29 = v42;
    sub_10003E75C();
    v30 = v43;
    *&v29[*(v43 + 48)] = v28;
    v31 = v41;
    sub_10004871C();
    v32 = *(v31 + *(v30 + 48));
    swift_retain_n();

    v33 = *v31;
    sub_10003E708();

    result = sub_10003E708();
    v19 = v46;
    if (v33 != v44)
    {
      *(v37 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_1000452AC(v37, v36, v38, v45);
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_1000452AC(v37, v36, v38, v45);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v46 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100044F7C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  v27 = a2;
  v31 = a4;
  v28 = a1;
  v5 = _s7SessionC8IdentityVMa(0);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  result = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v10 = 0;
  v32 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v32;
    v23 = v32[6] + *(v30 + 72) * v21;
    sub_10003E75C();
    v24 = *(v22[7] + 8 * v21);

    v25 = v31(v9, v24);

    result = sub_10003E708();
    if (v25)
    {
      *(v28 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_100045680(v28, v27, v29, v32);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_100045680(v28, v27, v29, v32);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100045194(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100044C7C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_10004521C(unint64_t *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100044F7C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000452AC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v7 = type metadata accessor for Relay.ConnectedSessionKey(0);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v41 = &v38 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10000FC6C(&qword_10009A790, &qword_100076990);
  result = static _DictionaryStorage.allocate(capacity:)();
  v47 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v16 = v47 + 64;
  v38 = v11;
  v39 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v44 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[6];
    v46 = *(v42 + 72);
    sub_10003E75C();
    v22 = *(a4[7] + 8 * v20);
    sub_1000469E4();
    v23 = v47;
    v24 = *(v47 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(*v11);
    v25 = v11 + *(v43 + 20);
    type metadata accessor for UUID();
    sub_100035114(&unk_100099180);
    v45 = v22;

    dispatch thunk of Hashable.hash(into:)();
    v26 = _s7SessionC8IdentityVMa(0);
    Hasher._combine(_:)(*&v25[*(v26 + 20)]);
    Hasher._combine(_:)(v25[*(v26 + 24)]);
    result = Hasher._finalize()();
    v27 = -1 << *(v23 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v11 = v38;
      a4 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v11 = v38;
    a4 = v39;
LABEL_25:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = v47;
    v36 = *(v47 + 48);
    result = sub_1000469E4();
    *(*(v35 + 56) + 8 * v30) = v45;
    ++*(v35 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    v14 = v44;
    if (!a3)
    {
      return v47;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v47;
    }

    v19 = v40[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v44 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_100045680(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = _s7SessionC8IdentityVMa(0);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10000FC6C(&qword_10009A7E8, &qword_1000769D0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v20 = v17 | (v16 << 6);
    v21 = a4[6];
    v22 = *(v26 + 72);
    sub_10003E75C();
    v23 = *(a4[7] + 8 * v20);
    sub_1000469E4();

    result = sub_10003E4C0(v12, v23, v14);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
      return v14;
    }
  }

  v18 = v16;
  while (1)
  {
    v16 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v19 = a1[v16];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int sub_10004589C(unint64_t a1)
{
  if (sub_100037E08(a1))
  {
    sub_10000FC6C(&qword_10009A828, &qword_100076A00);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v18 = sub_100037E08(a1);
  if (v18)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v17 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_1000391C8(v3, v17 == 0, a1);
      result = v17 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = NSObject._rawHashValue(seed:)(v2[5]);
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *&v4[8 * v10];
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        type metadata accessor for ServiceProvider();
        v13 = *(v2[6] + 8 * v9);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *&v4[8 * v10] = v12 | v11;
      *(v2[6] + 8 * v9) = v6;
      v15 = v2[2];
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v16;
LABEL_17:
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unsigned __int8 *sub_100045A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_100047C14();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100045FD8();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100045FD8()
{
  v0 = sub_100046044();
  v4 = sub_100046078(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100046078(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100015064(v9, 0);
  v12 = sub_1000461D8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000461D8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1000463E8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1000463E8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000463E8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_100046464()
{
  sub_100011DD0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v65[3] = &type metadata for MutablePacket;
  v65[0] = v10;
  v65[1] = v8;
  v65[4] = sub_1000484A0();
  v65[2] = v7;
  if ((*(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) - 1) <= 2 && (Strong = swift_weakLoadStrong()) != 0)
  {
    v58 = Strong;
    v59 = v5;
    v60 = v3;
    sub_100013694(v65, v62);
    v57 = v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity;
    v13 = *(v57 + *(_s7SessionC8IdentityVMa(0) + 20));
    v15 = v63;
    v14 = v64;
    sub_100048510(v62, v63);
    v16 = *(v14 + 32);
    v17 = v11;
    sub_10001FCF8(v9, v7);
    v16(v13, v15, v14);
    mach_continuous_approximate_time();
    v18 = v63;
    v19 = v64;
    sub_100048510(v62, v63);
    v20 = *(v19 + 96);
    sub_100049CB8();
    v22(v21);
    if (qword_100098BA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    v23 = sub_100049D00();
    if (os_log_type_enabled(v23, v24))
    {
      if (qword_100098BB0 != -1)
      {
        sub_100049734();
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100049AD4(v25, qword_1000A1AE8);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        sub_100011DE8();
        v28 = swift_slowAlloc();
        v61[0] = swift_slowAlloc();
        *v28 = 136446466;
        sub_100027DA0();
        sub_100014C58(v29, v30, v61);
        sub_100049FA8();
        *(v28 + 4) = v18;
        *(v28 + 12) = 2082;
        sub_100011D50();
        swift_beginAccess();
        v32 = v63;
        v31 = v64;
        sub_10000FCB4(v62, v63);
        v33 = *(*(v31 + 8) + 8);
        sub_10001B944();
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_100014C58(v34, v35, v61);
        sub_100049FA8();
        *(v28 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s: Send %{public}s", v28, 0x16u);
        swift_arrayDestroy();
        sub_100011CF4();

        sub_100011CF4();
      }
    }

    v36 = swift_allocObject();
    v36[2] = v1;
    v36[3] = v59;
    v36[4] = v60;
    v61[3] = v58;
    sub_100011D50();
    swift_beginAccess();
    v37 = sub_10000FCB4(v62, v63);
    v38 = *v37;
    v39 = v37[1];
    v40 = v37[2];

    v41 = sub_100049EDC();
    sub_1000485AC(v41);
    v42 = sub_100049E64();
    v44 = sub_10001F8F4(v42, v43, v40);
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
    type metadata accessor for RapportRemoteDisplaySession();

    RapportMessageable.sendEvent(id:event:destinationID:options:completion:)(0xD000000000000011, 0x8000000100079E40, v44, v45, v47, 0, sub_1000485A0, v36);

    sub_100003458(v62);
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v48 = v11;
    sub_10001FCF8(v9, v7);
    sub_1000499C4();
    v55 = sub_10001E680(v49, v50, v51, v52, v53, v54, 528);
    __chkstk_darwin(v55);
    sub_100016F18(sub_1000484F4, v1, sub_100011C20);
    if (v5)
    {
      v56 = v55;
      v5(v55);
    }

    else
    {
    }
  }

  sub_100003458(v65);
  sub_100011DB8();
}

uint64_t sub_100046964(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = _HashTable.occupiedBucket(after:)();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000469E4()
{
  sub_100049C50();
  v2 = v1(0);
  sub_100011D00(v2);
  v4 = *(v3 + 32);
  v5 = sub_100049A98();
  v6(v5);
  return v0;
}

uint64_t sub_100046A7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100049C5C();
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_100046AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ServiceProvider();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_100046BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = sub_100035114(&unk_10009A858);
  swift_beginAccess();
  v14 = *(a3 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {
    v30 = v13;
    v31 = v5;
    v32 = a2;
    v33 = v10;
    v34 = a3;
    v16 = *(v5 + 48);
    v17 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

    v19 = 0;
    while (v19 < *(v14 + 16))
    {
      v20 = v6;
      v21 = *(v6 + 72);
      sub_100048658();
      v22 = *&v12[v16];
      result = sub_100048978(v12, &qword_10009A850);
      if (v22 == v35)
      {

        a3 = v34;
        goto LABEL_9;
      }

      ++v19;
      v6 = v20;
      if (v15 == v19)
      {

        v10 = v33;
        a3 = v34;
        v5 = v31;
        a2 = v32;
        v13 = v30;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v23 = &v10[*(v5 + 48)];
    v24 = type metadata accessor for Date();
    (*(*(v24 - 8) + 16))(v10, a2, v24);
    *v23 = v35;
    *(v23 + 1) = v13;
    swift_beginAccess();

    sub_1000387E8(sub_100038AB8);
    v25 = *(*(a3 + 16) + 16);
    sub_10003885C(v25, sub_100038AB8);
    v26 = *(a3 + 16);
    *(v26 + 16) = v25 + 1;
    v27 = v26 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v28 = *(v6 + 72);
    sub_10004871C();
    *(a3 + 16) = v26;
    swift_endAccess();
LABEL_9:
    swift_beginAccess();
    sub_10003807C((a3 + 16));
    swift_endAccess();
    return sub_1000566D0();
  }

  return result;
}

uint64_t sub_100046F1C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

void sub_100046F7C(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for Client();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for Client();
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v4 = v13;
      v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = *(*(a4 + 48) + 8 * v6);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          goto LABEL_15;
        }

        v7 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v11 = *(*(a4 + 48) + 8 * v6);

  v12 = v11;
}

uint64_t sub_100047168(void *a1, uint64_t a2)
{
  v24 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v24);
  v22[1] = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v22 - v8;
  sub_100035114(&unk_10009A858);
  swift_beginAccess();
  v22[0] = a2;
  v10 = *(a2 + 16);
  v11 = *(v10 + 16);

  v13 = 0;
  v23 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v11 == v13)
    {

      v21 = *(v22[0] + 16);
      *(v22[0] + 16) = v23;

      return sub_1000566D0();
    }

    if (v13 >= *(v10 + 16))
    {
      break;
    }

    v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = *(v4 + 72);
    sub_100048658();
    if (*&v9[*(v24 + 48)] == a1)
    {
      result = sub_100048978(v9, &qword_10009A850);
      ++v13;
    }

    else
    {
      sub_10004871C();
      v16 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = v16[2];
        v23 = a1;
        sub_10003EC7C();
        a1 = v23;
        v16 = v25;
      }

      v19 = v16[2];
      v20 = v19 + 1;
      if (v19 >= v16[3] >> 1)
      {
        v23 = a1;
        sub_10003EC7C();
        v20 = v19 + 1;
        a1 = v23;
        v16 = v25;
      }

      ++v13;
      v16[2] = v20;
      v23 = v16;
      result = sub_10004871C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004741C(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v15 = &type metadata for Packet;
  v12 = a1;
  v13 = a2;
  v16 = sub_100047ABC();
  v14 = a3;
  v7 = v12;
  sub_10001FCF8(v13, a3);
  if (sub_10001F00C(v7) == 1)
  {
    if (*(a4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) == 2)
    {
      if (qword_100098BF0 != -1)
      {
        swift_once();
      }

      sub_100047168(a4, qword_1000A1B78);
      sub_1000285E4(3uLL);
    }
  }

  else
  {
    v8 = *(a4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
    if (v8)
    {
      v9 = *((swift_isaMask & *v8) + 0xD8);
      v10 = v8;
      v9(a4, &v12);
    }

    else if (*(a4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) == 1)
    {
      sub_100047590(v7, a2, a3, a4);
    }
  }

  return sub_100003458(&v12);
}

uint64_t sub_100047590(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue;
  if (*(a4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue))
  {
    v8 = *(a4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = a1;
  sub_10001FCF8(a2, a3);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_100038DF0(0, v8[2] + 1, 1, v8);
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_100038DF0((v10 > 1), v11 + 1, 1, v8);
  }

  v17 = &type metadata for Packet;
  *&v15 = v9;
  *(&v15 + 1) = a2;
  v18 = sub_100047ABC();
  v16 = a3;
  v8[2] = v11 + 1;
  sub_1000136FC(&v15, &v8[5 * v11 + 4]);
  v12 = *(a4 + v7);
  *(a4 + v7) = v8;
  v13 = v9;
  sub_10001FCF8(a2, a3);

  return sub_100011358(a2, a3);
}

uint64_t sub_1000476D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Logger();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v6);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s7SessionC8IdentityVMa(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = sub_10001EBA0();
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  sub_10003E75C();
  *&v13[*(v9 + 20)] = v15;
  v13[*(v9 + 24)] = 1;
  swift_beginAccess();
  v16 = sub_100020BD8(v13, *(a5 + 120), sub_1000393BC);
  swift_endAccess();
  if (!v16)
  {
    sub_10001EEE8();
    if (v17)
    {
      sub_10003E75C();
      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v18 = sub_100003420(v6, qword_1000A1AE8);
      (*(v24 + 16))(v25, v18, v6);
      v19 = type metadata accessor for Relay.Session(0);
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      v16 = swift_allocObject();
      sub_1000280A8();
      sub_10002EB30(v16, v13);
      sub_1000285E4(1uLL);
      sub_100029F9C();
      sub_100029DD8();
      goto LABEL_7;
    }

    sub_10003E708();
    return 0;
  }

LABEL_7:
  sub_10003E708();
  return v16;
}

uint64_t sub_1000479E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100047A30(uint64_t result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_100032E2C(result);
}

uint64_t sub_100047A3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100047ABC()
{
  result = qword_10009A848;
  if (!qword_10009A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A848);
  }

  return result;
}

uint64_t sub_100047B38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_100047C68(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_100047C14()
{
  result = qword_10009A890;
  if (!qword_10009A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A890);
  }

  return result;
}

uint64_t sub_100047C68(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1000463E8(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1000463E8(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1000463E8(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_1000480A4()
{
  result = qword_10009A8A8;
  if (!qword_10009A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A8A8);
  }

  return result;
}

unint64_t sub_1000480F8()
{
  result = qword_10009A8B8;
  if (!qword_10009A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A8B8);
  }

  return result;
}

unint64_t sub_10004814C()
{
  result = qword_10009A8E0;
  if (!qword_10009A8E0)
  {
    sub_10000FD4C(&qword_10009A8D8, &unk_100076A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A8E0);
  }

  return result;
}

unint64_t sub_1000481D0()
{
  result = qword_100099140;
  if (!qword_100099140)
  {
    sub_10000FD4C(&qword_100099138, &qword_100076A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099140);
  }

  return result;
}

unint64_t sub_10004824C()
{
  result = qword_10009A910;
  if (!qword_10009A910)
  {
    sub_10000FD4C(&qword_10009A908, &unk_100076A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A910);
  }

  return result;
}

unint64_t sub_1000482D0()
{
  result = qword_10009B6F0;
  if (!qword_10009B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B6F0);
  }

  return result;
}

unint64_t sub_100048324()
{
  result = qword_10009A928;
  if (!qword_10009A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A928);
  }

  return result;
}

uint64_t sub_100048378(uint64_t a1, uint64_t a2)
{
  v4 = _s7SessionC8IdentityVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000483E4()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100049D5C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10004841C()
{
  swift_weakDestroy();
  v0 = sub_100049D5C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10004844C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000484A0()
{
  result = qword_10009A990;
  if (!qword_10009A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A990);
  }

  return result;
}

uint64_t sub_100048510(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100048560()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  v3 = sub_100049BC8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000485AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000485BC()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  v3 = sub_100049BC8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000485FC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v0 + 24;
    v2 = *(v0 + 24);
    return v1(*(v3 + 8));
  }

  return result;
}

unint64_t sub_100048638(unint64_t result)
{
  if (result >= 6)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_100048648(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

uint64_t sub_100048658()
{
  sub_100049C50();
  v4 = sub_100049EF4(v1, v2, v3);
  v6 = sub_10000FC6C(v4, v5);
  sub_100011D00(v6);
  v8 = *(v7 + 16);
  v9 = sub_100049A98();
  v10(v9);
  return v0;
}

uint64_t sub_10004871C()
{
  sub_100049C50();
  v4 = sub_100049EF4(v1, v2, v3);
  v6 = sub_10000FC6C(v4, v5);
  sub_100011D00(v6);
  v8 = *(v7 + 32);
  v9 = sub_100049A98();
  v10(v9);
  return v0;
}

uint64_t sub_100048770()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = sub_100049BC8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000487A8(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (a1)
  {
    v5 = 1;
  }

  else
  {
    a1 = *(v2 + 32);
    v5 = 0;
  }

  return v3(a1, v5);
}

uint64_t sub_100048800()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = sub_100049BC8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000488CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100049E4C();

  return _swift_deallocObject(v3, v4, v5);
}

unint64_t sub_100048910()
{
  result = qword_10009AB38;
  if (!qword_10009AB38)
  {
    sub_1000033E0(255, &qword_1000991A0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB38);
  }

  return result;
}

uint64_t sub_100048978(uint64_t a1, uint64_t a2)
{
  v3 = sub_100049C74(a1, a2);
  v5 = sub_10000FC6C(v3, v4);
  sub_100011D00(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1000489CC()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100049D5C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100048A04()
{
  v1 = *(v0 + 24);

  sub_100049E4C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100048A38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100048A60(uint64_t a1)
{
  result = sub_100049E1C(a1);
  if (!result)
  {
    v4 = sub_100049C74(0, v3);
    sub_10000FD4C(v4, v5);
    sub_100049F00();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Relay.RelayError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100048B68);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Relay.DiagnosticState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Relay.DiagnosticState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100048CF4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Relay.Session.DiagnosticState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Relay.Session.DiagnosticState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100048E80);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

__n128 sub_100048EB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100048ECC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100048F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100048F74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100048FB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004902C()
{
  result = qword_10009AB50;
  if (!qword_10009AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB50);
  }

  return result;
}

unint64_t sub_100049084()
{
  result = qword_10009AB58;
  if (!qword_10009AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB58);
  }

  return result;
}

unint64_t sub_1000490DC()
{
  result = qword_10009AB60;
  if (!qword_10009AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB60);
  }

  return result;
}

unint64_t sub_100049134()
{
  result = qword_10009AB68;
  if (!qword_10009AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB68);
  }

  return result;
}

unint64_t sub_10004918C()
{
  result = qword_10009AB70;
  if (!qword_10009AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB70);
  }

  return result;
}

unint64_t sub_1000491E4()
{
  result = qword_10009AB78;
  if (!qword_10009AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB78);
  }

  return result;
}

unint64_t sub_10004923C()
{
  result = qword_10009AB80;
  if (!qword_10009AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AB80);
  }

  return result;
}

unint64_t sub_100049290(uint64_t a1)
{
  result = sub_100049E1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_10000FD4C(&qword_10009A8C0, &qword_100076A68);
    v4();
    sub_10004A0D8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100049300()
{
  result = qword_10009ABA0;
  if (!qword_10009ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ABA0);
  }

  return result;
}

unint64_t sub_100049354()
{
  result = qword_10009ABA8;
  if (!qword_10009ABA8)
  {
    sub_10000FD4C(&qword_10009A8D8, &unk_100076A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ABA8);
  }

  return result;
}

unint64_t sub_1000493D8(uint64_t a1)
{
  result = sub_100049E1C(a1);
  if (!result)
  {
    sub_10000FD4C(&qword_100099160, &qword_100075748);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100049440()
{
  result = qword_100099230;
  if (!qword_100099230)
  {
    sub_10000FD4C(&qword_100099138, &qword_100076A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099230);
  }

  return result;
}

void sub_1000494BC()
{
  sub_10004A288();
  if (!sub_100049E1C(v2))
  {
    sub_100049E34();
    sub_10000FD4C(&qword_10009A8F8, &qword_100076A88);
    v1();
    sub_100049E64();
    atomic_store(swift_getWitnessTable(), v0);
  }

  sub_10004A29C();
}

unint64_t sub_10004952C()
{
  result = qword_10009ABB8;
  if (!qword_10009ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ABB8);
  }

  return result;
}

unint64_t sub_100049580()
{
  result = qword_10009ABC0;
  if (!qword_10009ABC0)
  {
    sub_10000FD4C(&qword_10009A908, &unk_100076A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ABC0);
  }

  return result;
}

unint64_t sub_100049604()
{
  result = qword_10009ABC8;
  if (!qword_10009ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ABC8);
  }

  return result;
}

uint64_t sub_100049844()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100049874()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1000498E0()
{

  return swift_once();
}

id sub_100049A10()
{
  v5 = *(v3 + 824);

  return [v1 v5];
}

void sub_100049A64()
{

  sub_100046464();
}

uint64_t sub_100049B4C()
{

  return swift_once();
}

id sub_100049C8C()
{
  v5 = *(v3 + 824);

  return [v0 v5];
}

uint64_t sub_100049D1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v3 = *(v2 - 512);
  return result;
}

uint64_t sub_100049DAC()
{
  v4 = *(*v0 + 24);

  return sub_10000FC6C(v2, v1);
}

uint64_t sub_100049F18(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t sub_100049F54()
{

  return swift_arrayDestroy();
}

uint64_t sub_100049F70()
{

  return swift_willThrow();
}

id sub_100049F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_10001E468(a1, a2, a3, v7, a5, v5);
}

uint64_t sub_100049FA8()
{
}

BOOL sub_10004A178()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

void sub_10004A1C8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10004A1E8()
{
}

uint64_t sub_10004A208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a3 - 256);
  v6 = *(v3 - 344);

  return sub_100046964(a1, v5, a2, v6);
}

uint64_t sub_10004A228()
{
}

uint64_t sub_10004A240()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_10004A258()
{
}

uint64_t sub_10004A270()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10004A2C4()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000A1B40);
  sub_100003420(v0, qword_1000A1B40);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004A340@<X0>(uint64_t a1@<X8>)
{
  if (qword_100098BD0 != -1)
  {
    sub_10004B36C();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100003420(v2, qword_1000A1B40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_10004A408(void (*a1)(void))
{
  a1();
  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  sub_100033BFC(v1);
}

void sub_10004A470(uint64_t a1, void (**a2)(void, void))
{
  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  sub_100033654();
  a2[2](a2, 0);

  _Block_release(a2);
}

uint64_t sub_10004A63C(uint64_t a1)
{
  _StringGuts.grow(_:)(41);

  v5 = *(a1 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x800000010007B440;
  v3._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v3);
  return 541346128;
}

void sub_10004A758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void))
{
  sub_10004B318();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_10001E468(v9, v10, -103, 0, 0, 0);
  if (qword_100098BD0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100003420(v12, qword_1000A1B40);
  v14 = __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  sub_100016F18(sub_10004B35C, v15, sub_100011C20);
  v16 = v11;
  v17 = _convertErrorToNSError(_:)();
  (a8)[2](a8, v17);

  _Block_release(a8);
}

uint64_t sub_10004A8E4(uint64_t a1)
{
  _StringGuts.grow(_:)(27);

  v5 = *(a1 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x800000010007B420;
  v3._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v3);
  return 541346128;
}

void sub_10004ABBC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100098BD0 != -1)
  {
    sub_10004B36C();
  }

  v9 = type metadata accessor for Logger();
  sub_100003420(v9, qword_1000A1B40);
  v10 = v4;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 67109378;
    *(v13 + 4) = *&v10[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v13 + 8) = 2082;
    *(v13 + 10) = sub_100014C58(a1, a2, v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "PID %d: Service Presenter Starting Service Extension '%{public}s'", v13, 0x12u);
    sub_100003458(v14);
    sub_100003534();
    sub_100003534();
  }

  else
  {
  }

  v15 = sub_100006E8C();
  v16 = String._bridgeToObjectiveC()();
  v18[4] = a3;
  v18[5] = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100025214;
  v18[3] = &unk_10008F740;
  v17 = _Block_copy(v18);

  [v15 relayPresenterStartServiceExtension:v16 completion:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

void sub_10004AE9C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100098BD0 != -1)
  {
    sub_10004B36C();
  }

  v8 = type metadata accessor for Logger();
  sub_100003420(v8, qword_1000A1B40);
  (*(v4 + 16))(v7, a1, v3);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 67109378;
    *(v13 + 4) = *&v9[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v13 + 8) = 2082;
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v4 + 8))(v7, v3);
    v18 = sub_100014C58(v15, v17, &v22);

    *(v13 + 10) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "PID %d: Service Presenter Service Extension Ready '%{public}s'", v13, 0x12u);
    sub_100003458(v14);
    sub_100003534();
    sub_100003534();
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v19 = sub_100006E8C();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v19 relayPresenterServiceExtensionReady:isa];
  swift_unknownObjectRelease();
}

id sub_10004B204()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServicePresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10004B260()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004B2B0(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004B318()
{
  result = qword_100099030;
  if (!qword_100099030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100099030);
  }

  return result;
}

uint64_t sub_10004B36C()
{

  return swift_once();
}

uint64_t sub_10004B38C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = sub_100011C54(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = *(a1 + 16);
  sub_10004F710(&unk_100099180, &type metadata accessor for UUID);
  v14 = Set.init(minimumCapacity:)();
  v25 = v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v18 = *(v5 + 16);
    v16 = v5 + 16;
    v17 = v18;
    v19 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v24 = a1;
    v20 = a1 + v19;
    v21 = *(v16 + 56);
    do
    {
      v17(v10, v20, v2);
      sub_100043E48();
      (*(v16 - 8))(v12, v2);
      v20 += v21;
      --v15;
    }

    while (v15);

    return v25;
  }

  else
  {
    v22 = v14;
  }

  return v22;
}

uint64_t sub_10004B540(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_1000440B4(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

void sub_10004B600()
{
  if ((byte_10009AC00 & 1) == 0)
  {
    v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v1)
    {
      v36 = v1;
      if (qword_100098BE8 != -1)
      {
        swift_once();
      }

      v2 = sub_100052BBC();

      if (qword_100098BD0 != -1)
      {
        sub_10004B36C();
      }

      v3 = type metadata accessor for Logger();
      sub_100003420(v3, qword_1000A1B40);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (sub_10004F9D8(v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        aBlock = v7;
        *v6 = 136446210;
        if (v2)
        {
          v8 = 0x64656B636F4CLL;
        }

        else
        {
          v8 = 0x64656B636F6C6E55;
        }

        if (v2)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xE800000000000000;
        }

        v10 = sub_100014C58(v8, v9, &aBlock);

        *(v6 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v4, v0, "=== Launching Service Presenter (Screen %{public}s) ===", v6, 0xCu);
        sub_100003458(v7);
        sub_100003534();
        sub_100003534();
      }

      sub_10000FC6C(&qword_10009B0B0, &qword_100077178);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100077090;
      aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v12;
      AnyHashable.init<A>(_:)();
      v13 = &type metadata for Bool;
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 1;
      aBlock = 0xD000000000000031;
      v40 = 0x800000010007B7C0;
      AnyHashable.init<A>(_:)();
      *(inited + 168) = &type metadata for Bool;
      *(inited + 144) = 1;
      v14 = Dictionary.init(dictionaryLiteral:)();
      if (qword_100098B98 != -1)
      {
        swift_once();
      }

      v15 = *(qword_1000A1AE0 + 56);
      if ([v15 respondsToSelector:"overridePresenterLaunchOptions:"])
      {
        swift_unknownObjectRetain();

        v13 = &protocol witness table for AnyHashable;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v17 = [v15 overridePresenterLaunchOptions:isa];

        swift_unknownObjectRelease();
        v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (sub_10004F9D8(v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, &protocol witness table for AnyHashable, "Overriding launch options", v21, 2u);
          sub_100003534();
        }

        v14 = v18;
      }

      sub_1000033E0(0, &qword_10009B0B8, FBSOpenApplicationOptions_ptr);

      v23 = sub_10004C83C(v22);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (sub_10004F9D8(v25))
      {
        v26 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v26 = 136446723;
        *(v26 + 4) = sub_100014C58(0xD000000000000011, 0x8000000100079E40, &aBlock);
        *(v26 + 12) = 2048;
        *(v26 + 14) = *(v14 + 16);
        *(v26 + 22) = 2081;

        v27 = Dictionary.description.getter();
        v29 = v28;

        v30 = sub_100014C58(v27, v29, &aBlock);

        *(v26 + 24) = v30;
        _os_log_impl(&_mh_execute_header, v24, v13, "Opening application with bundle identifier [%{public}s] using [%ld] options [%{private}s]", v26, 0x20u);
        swift_arrayDestroy();
        sub_100003534();
        sub_100003534();
      }

      v31 = String._bridgeToObjectiveC()();
      v32 = swift_allocObject();
      *(v32 + 16) = v38;
      v43 = sub_10004F38C;
      v44 = v32;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_10000CAE8;
      v42 = &unk_10008F790;
      v33 = _Block_copy(&aBlock);

      [v36 openApplication:v31 withOptions:v23 completion:v33];
      _Block_release(v33);

      byte_10009AC00 = 1;
    }

    else
    {
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = sub_10001E468(v34, v35, -999, 0, 0, 0);
      sub_10004BE18(0, v37);
    }
  }
}

uint64_t sub_10004BCDC()
{
  swift_beginAccess();
  objc_setAssociatedObject(v0, &unk_1000A1B60, 0, 0x301);
  return swift_endAccess();
}

uint64_t sub_10004BD38()
{
  v0 = sub_10004B540(&off_10008D9C0);
  result = sub_10004BD70(&off_10008DA50, v0);
  qword_1000A1B58 = result;
  return result;
}

uint64_t sub_10004BD70(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1000440B4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_10004BE18(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_getErrorValue();
    sub_10004C390(v11);
    if (qword_100098BD0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v3 = sub_100003420(v2, qword_1000A1B40);
    __chkstk_darwin(v3);
    sub_100016F18(sub_10004C820, 0, sub_10001132C);
    if (qword_100098B98 != -1)
    {
      swift_once();
    }

    sub_1000333C8();
  }

  else
  {
    if (qword_100098BD0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003420(v5, qword_1000A1B40);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      if (a1)
      {
        v10 = [v6 pid];
      }

      else
      {
        v10 = 0;
      }

      *(v9 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v7, v8, "Service Presenter PID %d Launched", v9, 8u);
    }

    else
    {
    }
  }

  byte_10009AC00 = 0;
}

uint64_t sub_10004C064()
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  sub_10004F3C8();
  v1 = v0;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = _convertErrorToNSError(_:)();

  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v5 && v8 == v7)
  {

    goto LABEL_11;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_11:

    if ([v3 code] == 1)
    {
      v11 = [v3 userInfo];
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100020974(v12, &v24);

      if (v25)
      {
        if (swift_dynamicCast())
        {
          v13 = sub_10004C064();

LABEL_28:
          return v13;
        }
      }

      else
      {
        sub_10001FD0C(&v24);
      }
    }

    goto LABEL_25;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v5 && v14 == v7)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if ([v3 code] == 7)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = sub_10001E468(v17, v18, -202, 0, 0, 0);
    goto LABEL_28;
  }

LABEL_25:
  *&v24 = v1;
  v19 = v1;
  v20 = _getErrorEmbeddedNSError<A>(_:)();
  if (!v20)
  {
    v13 = swift_allocError();
    *v21 = v19;
    goto LABEL_28;
  }

  v13 = v20;

  return v13;
}

uint64_t sub_10004C390(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v34 = *(v4 + 16);
  v34(&v32 - v9, v2, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v4 + 8))(v10, a1);
  }

  else
  {
    swift_allocError();
    (*(v4 + 32))(v11, v10, a1);
  }

  v12 = _convertErrorToNSError(_:)();

  v13 = [v12 domain];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v17 == v16)
  {
  }

  else
  {
    v33 = v12;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v24 == v16)
      {

        v12 = v33;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v33;
        if ((v26 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if ([v12 code] == 7)
      {
        sub_1000033E0(0, &qword_100099030, NSError_ptr);
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = sub_10001E468(v27, v28, -202, 0, 0, 0);
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    v12 = v33;
  }

  if ([v12 code] == 1)
  {
    v20 = [v12 userInfo];
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100020974(v21, &v36);

    if (v37)
    {
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      if (swift_dynamicCast())
      {
        v22 = v35;
        v23 = sub_10004C064();

        goto LABEL_28;
      }
    }

    else
    {
      sub_10001FD0C(&v36);
    }
  }

LABEL_25:
  v34(v8, v2, a1);
  v29 = _getErrorEmbeddedNSError<A>(_:)();
  if (v29)
  {
    v23 = v29;
    (*(v4 + 8))(v8, a1);
  }

  else
  {
    v23 = swift_allocError();
    (*(v4 + 32))(v30, v8, a1);
  }

LABEL_28:

  return v23;
}

id sub_10004C83C(uint64_t a1)
{
  if (a1)
  {
    v1.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary:v1.super.isa];

  return v2;
}

void sub_10004C8C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_secureAppAssertion;
  if (*(*(v2 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_secureAppAssertion) + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_orientations) != a1)
  {
    (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_logger);
    v10 = objc_allocWithZone(_s15AppPresentationC18SecureAppAssertionCMa(0));
    v11 = sub_10004E194(v8, a1);
    v12 = *(v2 + v9);
    *(v2 + v9) = v11;
  }
}

uint64_t sub_10004C9DC(char *a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(char *, uint64_t))
{
  v6 = v5;
  v42 = a5;
  v11 = type metadata accessor for Logger();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v14;
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  *(v6 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_suggestedAppAssertion) = 0;

  v45 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v15;
    v21 = v20;
    v22 = swift_slowAlloc();
    v47 = v22;
    *v21 = 67109378;
    *(v21 + 4) = a4;
    *(v21 + 8) = 2082;
    *(v21 + 10) = sub_100014C58(a2, a3, &v47);
    _os_log_impl(&_mh_execute_header, v18, v19, "Showing Service Presenter PID %d %{public}s", v21, 0x12u);
    sub_100003458(v22);

    v15 = v40;
  }

  v46 = a2;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  v23 = OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_logger;
  v24 = v43;
  v25 = *(v43 + 16);
  v26 = v45;
  v25(v6 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_logger, v45, v11);
  v25(v17, v6 + v23, v11);
  v27 = objc_allocWithZone(_s15AppPresentationC18SecureAppAssertionCMa(0));

  *(v6 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_secureAppAssertion) = sub_10004E194(v17, v42);
  v25(v17, v26, v11);
  v28 = _s15AppPresentationC20AppSwitcherAssertionCMa(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v25(v15, v17, v11);

  v41 = a3;
  v32 = sub_10004D304(v46, a3, v15, v31, &unk_10008F8E0, sub_10004F968, &unk_10008F8F8, &SBSRequestAppSwitcherAppearanceForHiddenApplication);
  v33 = v26;
  v42 = *(v24 + 8);
  v42(v17, v11);
  *(v6 + 40) = v32;
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v34 = static OS_dispatch_queue.main.getter();
  v35 = swift_allocObject();
  swift_weakInit();
  v25(v17, v33, v11);
  v36 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v37 = swift_allocObject();
  v38 = v46;
  *(v37 + 2) = v35;
  *(v37 + 3) = v38;
  *(v37 + 4) = v41;
  (*(v24 + 32))(&v37[v36], v17, v11);

  OS_dispatch_queue.after(_:closure:)();

  v42(v33, v11);

  return v6;
}

uint64_t sub_10004CE18(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *(v8 + 16);
    v17(v14, a4, v7);
    v18 = _s15AppPresentationC21SuggestedAppAssertionCMa(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    v17(v12, v14, v7);

    v22 = sub_10004D304(a2, a3, v12, v21, &unk_10008F840, sub_10004F5B4, &unk_10008F858, &SBSRequestSuggestedApplication);
    (*(v8 + 8))(v14, v7);
    v23 = *(v16 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_suggestedAppAssertion);
    *(v16 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_suggestedAppAssertion) = v22;
  }

  return result;
}

uint64_t sub_10004D008()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_logger, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = *(v1 + 32);

    _os_log_impl(&_mh_execute_header, v8, v9, "Dismissing Service Presenter PID %d", v10, 8u);
  }

  else
  {
  }

  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = *(v1 + 24);

  v13 = *(v1 + 40);

  v11((v1 + v7), v2);

  v14 = *(v1 + OBJC_IVAR____TtCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation_suggestedAppAssertion);

  return v1;
}

uint64_t sub_10004D220()
{
  result = type metadata accessor for Logger();
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

void *sub_10004D304(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(NSString, void *))
{
  v39 = a7;
  v40 = a8;
  v37[1] = a5;
  v38 = a6;
  v12 = type metadata accessor for Logger();
  v13 = sub_100011C54(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  a4[2] = 0;
  a4[3] = a1;
  v44 = a1;
  a4[4] = a2;
  v41 = v15;
  v42 = v18;
  v37[0] = *(v15 + 16);
  v19 = (v37[0])(a4 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation12AppAssertion_logger, a3);
  v43 = (*(*a4 + 128))(v19);
  v21 = v20;
  swift_bridgeObjectRetain_n();

  v22 = a3;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v45 = a3;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_100014C58(v43, v21, aBlock);
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_100014C58(v44, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v23, v24, "Acquiring '%{public}s' for '%{public}s'", v25, 0x16u);
    swift_arrayDestroy();
    v22 = v45;
    sub_100003534();
    sub_100003534();
  }

  v26 = v42;
  (v37[0])(v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v42);
  v27 = v41;
  v28 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v29 = (v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  (*(v27 + 32))(v30 + v28, v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v31 = (v30 + v29);
  v32 = v44;
  *v31 = v43;
  v31[1] = v21;
  v33 = (v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v33 = v32;
  v33[1] = a2;

  v34 = String._bridgeToObjectiveC()();
  aBlock[4] = v38;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004E010;
  aBlock[3] = v39;
  v35 = _Block_copy(aBlock);

  v40(v34, v35);
  _Block_release(v35);

  (*(v27 + 8))(v45, v26);
  return a4;
}

uint64_t sub_10004D698(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v40 - 8);
  v10 = *(v43 + 64);
  __chkstk_darwin(v40);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v38 = static OS_dispatch_queue.main.getter();
  (*(v17 + 16))(v19, a3, v16);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = (v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a1;
  (*(v17 + 32))(v23 + v20, v19, v16);
  v24 = (v23 + v21);
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  v26 = (v23 + v22);
  v27 = v37;
  *v26 = v36;
  v26[1] = v27;
  aBlock[4] = sub_10004F68C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_10008F8A8;
  v28 = _Block_copy(aBlock);
  v29 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10004F710(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_10001B67C();
  v31 = v39;
  v30 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = v38;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v43 + 8))(v31, v30);
  return (*(v41 + 8))(v15, v42);
}

void sub_10004DA7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = *(a1 + 16);
  *(a1 + 16) = a2;
  v13 = a2;

  oslog = Logger.logObject.getter();
  if (a2)
  {
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_100014C58(a4, a5, &v18);
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_100014C58(a6, a7, &v18);
      v16 = "Acquired '%{public}s' for '%{public}s'";
LABEL_6:
      _os_log_impl(&_mh_execute_header, oslog, v14, v16, v15, 0x16u);
      swift_arrayDestroy();

      return;
    }
  }

  else
  {
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_100014C58(a4, a5, &v18);
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_100014C58(a6, a7, &v18);
      v16 = "Failed to Acquire '%{public}s' for '%{public}s'";
      goto LABEL_6;
    }
  }
}

uint64_t sub_10004DCB4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation12AppAssertion_logger;
  (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation12AppAssertion_logger, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v7;
    v11 = v10;
    v21 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = (*(*v0 + 128))();
    v14 = sub_100014C58(v12, v13, &v21);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_100014C58(*(v0 + 24), *(v0 + 32), &v21);
    _os_log_impl(&_mh_execute_header, v8, v9, "Invalidating '%s' for '%{public}s'", v11, 0x16u);
    swift_arrayDestroy();

    v7 = v20;
  }

  v15 = *(v3 + 8);
  v15(v6, v2);
  v16 = *(v1 + 16);
  if (v16)
  {
    [v16 invalidate];
    v17 = *(v1 + 16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v1 + 32);

  v15((v1 + v7), v2);
  return v1;
}

uint64_t sub_10004DF50()
{
  result = type metadata accessor for Logger();
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

void sub_10004E010(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10004E0D8(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

char *sub_10004E194(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion] = 0;
  v6 = OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_logger;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  *&v2[OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_orientations] = a2;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v14, "init");
  sub_10004E2EC();
  v10 = *&v9[OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion];
  *&v9[OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion] = v11;

  v12 = [objc_opt_self() sharedBacklight];
  [v12 addObserver:v9];

  (*(v8 + 8))(a1, v7);
  return v9;
}

void sub_10004E2EC()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_orientations);

    _os_log_impl(&_mh_execute_header, v2, v3, "Acquiring Secure App Assertion (%lx)", v4, 0xCu);
  }

  else
  {

    v2 = v1;
  }

  v5 = objc_opt_self();
  v6 = *(&v1->isa + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_orientations);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_10004F8E8;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100025214;
  v10[3] = &unk_10008F948;
  v8 = _Block_copy(v10);

  v9 = [v5 acquireSecureAppAssertionWithType:6 supportedOrientations:v6 errorHandler:v8];
  _Block_release(v8);
  if (!v9)
  {
    __break(1u);
  }
}

id sub_10004E4AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_logger, v3);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v8 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_orientations);

    _os_log_impl(&_mh_execute_header, v9, v10, "Invalidating Secure App Assertion (%lx)", v11, 0xCu);
  }

  else
  {

    v9 = v8;
  }

  (*(v4 + 8))(v7, v3);
  v12 = [objc_opt_self() sharedBacklight];
  [v12 removeObserver:v8];

  v13 = *(&v8->isa + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion);
  if (v13)
  {
    [v13 invalidate];
  }

  v15.receiver = v8;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "dealloc");
}

uint64_t sub_10004E780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;
  aBlock[4] = sub_10004F930;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_10008F998;
  v15 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10004F710(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_10001B67C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v18);
}

void sub_10004EA54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10004EAB0(a2);
  }
}

void sub_10004EAB0(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    __chkstk_darwin(a1);
    swift_errorRetain();
    sub_100016F18(sub_10004EC10, 0, sub_100011C20);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Secure App Assertion Failed", v5, 2u);
    }
  }

  v6 = OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion;
  v7 = *(v2 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v2 + v6);
  }

  else
  {
    v8 = 0;
  }

  *(v2 + v6) = 0;
}

void sub_10004EC2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v5 = a3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = NSStringFromBLSBacklightState();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100014C58(v10, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = v5;
    sub_10000FC6C(&unk_10009B0D0, &unk_100077180);
    v15 = String.init<A>(describing:)();
    v17 = sub_100014C58(v15, v16, &v21);

    *(v8 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Backlight Changed: %s, for reason %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v18 = OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion;
  if (!*(v4 + OBJC_IVAR____TtCCC12SidecarRelay16ServicePresenterP33_82D211662E7B4B6BB6B9239E3718712D15AppPresentation18SecureAppAssertion_assertion) && (BLSBacklightStateIsActive() & 1) == 0)
  {
    sub_10004E2EC();
    v19 = *(v4 + v18);
    *(v4 + v18) = v20;
  }
}

uint64_t sub_10004EEF0()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10004EF98(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = sub_100011C54(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = objc_getAssociatedObject(v2, &unk_1000A1B60);
  swift_endAccess();
  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (*(&v22 + 1))
  {
    _s15AppPresentationCMa(0);
    if (swift_dynamicCast())
    {
      sub_10004C8C8(a1);
    }
  }

  else
  {
    sub_10001FD0C(v23);
  }

  if (qword_100098BD0 != -1)
  {
    sub_10004B36C();
  }

  v13 = sub_100003420(v4, qword_1000A1B40);
  (*(v7 + 16))(v11, v13, v4);
  v14 = *&v2[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];
  v15 = _s15AppPresentationCMa(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_10004C9DC(v11, 0xD000000000000011, 0x8000000100079E40, v14, a1);
  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_1000A1B60, v18, 0x301);
  swift_endAccess();
}

uint64_t sub_10004F1DC(void (*a1)(char *, uint64_t))
{
  if (qword_100098BD0 != -1)
  {
    sub_10004B36C();
  }

  v3 = type metadata accessor for Logger();
  sub_100003420(v3, qword_1000A1B40);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = *(&v4->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    *(v7 + 8) = 2048;
    *(v7 + 10) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "=== Service Presenter PID %d Ready %lu ===", v7, 0x12u);
    sub_100003534();
  }

  else
  {

    v5 = v4;
  }

  return sub_10004EF98(a1);
}

uint64_t sub_10004F3B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004F3C8()
{
  result = qword_10009B0C8;
  if (!qword_10009B0C8)
  {
    sub_1000033E0(255, &qword_100099030, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B0C8);
  }

  return result;
}

uint64_t sub_10004F430()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100049D5C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10004F460()
{
  swift_weakDestroy();
  v0 = sub_100049D5C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10004F490()
{
  v1 = type metadata accessor for Logger();
  sub_100011C54(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  v8 = sub_10004F970();
  v9(v8);

  return _swift_deallocObject(v0, ((v3 + 40) & ~v3) + v5, v3 | 7);
}

uint64_t sub_10004F548()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_10004CE18(v2, v3, v4, v5);
}

uint64_t sub_10004F5B8()
{
  v3 = type metadata accessor for Logger();
  sub_100011C54(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  sub_10004F980();

  v8 = sub_10004F970();
  v9(v8);
  v10 = *(v0 + v1 + 8);

  v11 = *(v0 + v2 + 8);

  return _swift_deallocObject(v0, v2 + 16, v5 | 7);
}

void sub_10004F68C()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  sub_10004F9C0();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_10004F9A8();

  sub_10004DA7C(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10004F710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004F758()
{
  v3 = type metadata accessor for Logger();
  sub_100011C54(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  sub_10004F980();
  v8 = sub_10004F970();
  v9(v8);
  v10 = *(v0 + v1 + 8);

  v11 = *(v0 + v2 + 8);

  return _swift_deallocObject(v0, v2 + 16, v5 | 7);
}

uint64_t sub_10004F824(void *a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_10004F9C0();
  v6 = *(v1 + 16);
  sub_10004F9A8();

  return sub_10004D698(a1, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10004F8B8()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100049D5C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10004F8F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004F980()
{
  v2 = *(v0 + 16);
}

void sub_10004F9A8()
{
  v3 = (v2 + v0);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v2 + v1);
  v7 = *(v2 + v1 + 8);
}

BOOL sub_10004F9D8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10004F9F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_10009B0E0);
  sub_100003420(v0, qword_10009B0E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004FA74()
{
  v1 = v0;
  if (*(v0 + 56))
  {
    v2 = qword_100098BE0;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      sub_10004FE24();
    }

    v3 = type metadata accessor for Logger();
    sub_100003420(v3, qword_10009B0E0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cancelling timer that is still alive during deinitialization.", v6, 2u);
    }

    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  v7 = *(v1 + 40);
  if (v7)
  {
    v8 = *(v1 + 48);
    v9 = qword_100098BE0;

    if (v9 != -1)
    {
      sub_10004FE24();
    }

    v10 = type metadata accessor for Logger();
    sub_100003420(v10, qword_10009B0E0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Calling completion block that was left unexecuted during deinitialization.", v13, 2u);
    }

    sub_10004B318();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = sub_10001E468(v14, v15, -999, 0xD000000000000043, 0x800000010007B970, 0);
    v7(v16, v17);

    sub_100010FE8(v7);
  }

  v18 = *(v1 + 24);

  v19 = *(v1 + 32);

  v20 = *(v1 + 48);
  sub_100010FE8(*(v1 + 40));
  v21 = *(v1 + 56);
  swift_unknownObjectRelease();
  v22 = *(v1 + 64);

  return v1;
}

uint64_t sub_10004FCDC()
{
  sub_10004FA74();

  return _swift_deallocClassInstance(v0, 82, 7);
}

uint64_t sub_10004FD34()
{
  _StringGuts.grow(_:)(39);
  countAndFlagsBits = v0->_countAndFlagsBits;
  v2 = _typeName(_:qualified:)();

  v3._object = 0x800000010007B940;
  v3._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v3);
  String.append(_:)(v0[1]);
  v4._countAndFlagsBits = 93;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return v2;
}

uint64_t sub_10004FE24()
{

  return swift_once();
}

uint64_t sub_10004FE44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000FC6C(&unk_1000991E0, &qword_100075788);
  v7 = sub_1000499EC(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = _s7SessionC8IdentityVMa(0);
  v11 = sub_100011D00(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100011CD4();
  v16 = v15 - v14;
  if (sub_1000113A4(a1, 1, v17) == 1)
  {
    sub_100011668(a1, &unk_1000991E0, &qword_100075788);
    sub_10003C008();
    v18 = type metadata accessor for UUID();
    sub_100011D00(v18);
    (*(v19 + 8))(a2);
    v20 = sub_10004A098();
    return sub_100011668(v20, v21, &qword_100075788);
  }

  else
  {
    sub_100051A48(a1, v16, _s7SessionC8IdentityVMa);
    v23 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_10003D9D0();
    *v3 = v26;
    v24 = type metadata accessor for UUID();
    sub_100011D00(v24);
    return (*(v25 + 8))(a2);
  }
}

uint64_t sub_100050008()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *v0;
  }

  else
  {
    v3 = SidecarMapTableCreateStrong();
    *v0 = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  v5 = SidecarMapTableAddObject();

  return v5;
}

_BYTE *sub_100050070(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect) = 0;
  v7 = (v3 + OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = a3;
  v9 = sub_1000035F0(v8);
  v10 = a1 == 0xD000000000000019 && 0x80000001000799B0 == a2;
  if (v10 || (sub_100051AD4() & 1) != 0)
  {
    v9[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect] = 1;
  }

  if (a1 == 0xD000000000000019 && 0x8000000100079A50 == a2)
  {
    v14 = v9;
  }

  else
  {
    v12 = sub_100051AD4();
    v13 = v9;

    if ((v12 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v9[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect] = 1;
LABEL_15:

  return v9;
}

void sub_1000501A4(void (*a1)(void))
{
  a1();
  if (qword_100098B98 != -1)
  {
    sub_100011C88();
  }

  sub_100033444(v1);
}

uint64_t sub_1000501FC(uint64_t a1)
{
  v2 = v1;
  v4 = _s7SessionC8IdentityVMa(0);
  v5 = sub_100011D00(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100011CD4();
  v10 = v9 - v8;
  v11 = type metadata accessor for SidecarIdentity();
  v12 = sub_1000499EC(v11);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v72 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v68 - v17;
  v19 = sub_10000FC6C(&unk_1000991E0, &qword_100075788);
  v20 = sub_1000499EC(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v68 - v23;
  v25 = type metadata accessor for UUID();
  v26 = sub_100011C54(v25);
  v74 = v27;
  v75 = v26;
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v26);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v68 - v33;
  result = sub_100006980();
  if (v36)
  {
    sub_100051AF8();
    v37 = sub_100050008();
    swift_endAccess();
    v73 = v37;
    v38 = sub_1000517D8(v37);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v74 + 16))(v32, v34, v75);
    v39 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity;
    sub_10005186C(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity, v24);
    sub_10001137C(v24, 0, 1, v4);
    sub_100051AF8();
    sub_10004FE44(v24, v32);
    swift_endAccess();
    if (qword_100098B98 != -1)
    {
      sub_100011C88();
    }

    sub_10005186C(a1 + v39, v10);
    v40 = sub_100051AB0();
    sub_100051A48(v40, v18, v41);
    sub_1000278C4(v18, 0);
    v42 = v39;
    sub_1000518D0(v18);
    sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);
    v43 = sub_100058458();
    if (!v43)
    {
      v44 = sub_1000052A4();
      v46 = v45;
      if (qword_100098BB0 != -1)
      {
        sub_1000200E0();
      }

      v47 = type metadata accessor for Logger();
      sub_100003420(v47, qword_1000A1AE8);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      v71 = v48;
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v69 = v32;
        v51 = v50;
        v52 = swift_slowAlloc();
        v70 = v34;
        v53 = v52;
        v76[0] = v52;
        *v51 = 136446210;
        v54 = sub_100014C58(v44, v46, v76);
        v55 = v42;
        v56 = v54;

        *(v51 + 4) = v56;
        v42 = v55;
        v57 = v71;
        _os_log_impl(&_mh_execute_header, v71, v49, "%{public}s: Device Not Found", v51, 0xCu);
        sub_100003458(v53);
        v34 = v70;
        sub_100003534();
        v32 = v69;
        sub_100003534();
      }

      else
      {
      }

      sub_10005186C(a1 + v42, v10);
      v58 = sub_100051AB0();
      v59 = v72;
      sub_100051A48(v58, v72, v60);
      (*(v74 + 32))(v32, v59, v75);
      v61 = objc_allocWithZone(SidecarDevice);
      v43 = sub_10005192C(v32);
    }

    v62 = v43;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v64 = *(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_dataLink);
    v65 = *(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
    v66 = *(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);
    v67 = String._bridgeToObjectiveC()();
    [v2 relaySession:isa openedByDevice:v62 dataLink:v64 service:v67];

    (*(v74 + 8))(v34, v75);
    return v73;
  }

  return result;
}

uint64_t sub_100050788(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[4];
  sub_10000FCB4(a2, a2[3]);
  v6 = *(v5 + 16);
  v7 = sub_10004A098();
  result = v8(v7);
  if (v10 >> 60 != 15)
  {
    v11 = sub_1000501FC(a1);
    sub_10004A098();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v3 relaySession:v11 receivedOPACKData:isa dataLink:*(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_dataLink)];

    v13 = sub_10004A098();

    return sub_100011358(v13, v14);
  }

  return result;
}

void sub_10005086C(char *a1, void (**a2)(void, void))
{
  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  sub_10003306C(a1);
  a2[2](a2, 0);

  _Block_release(a2);
}

uint64_t sub_100050A38(uint64_t a1)
{
  _StringGuts.grow(_:)(40);

  v5 = *(a1 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x800000010007BA90;
  v3._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v3);
  return 541346128;
}

void sub_100050B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void))
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_10001E468(v9, v10, -103, 0, 0, 0);
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100003420(v12, qword_1000A1AE8);
  v14 = __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  sub_100016F18(sub_10004B35C, v15, sub_100011C20);
  v16 = v11;
  v17 = _convertErrorToNSError(_:)();
  (a8)[2](a8, v17);

  _Block_release(a8);
}

void sub_100050ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a6;
  v11 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v12 = sub_1000499EC(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v17.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_100051750(a2, v16);
  v18 = type metadata accessor for UUID();
  isa = 0;
  if (sub_1000113A4(v16, 1, v18) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v18 - 8) + 8))(v16, v18);
  }

  v20 = String._bridgeToObjectiveC()();
  v21 = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a7;
  aBlock[5] = a8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100025214;
  aBlock[3] = &unk_10008F9C0;
  v22 = _Block_copy(aBlock);

  v23 = type metadata accessor for ServiceProvider();
  v26.receiver = v24;
  v26.super_class = v23;
  objc_msgSendSuper2(&v26, "relaySessionOpen:reconnect:serviceIdentifier:destination:transport:completion:", v17.super.isa, isa, v20, v21, v25, v22);
  _Block_release(v22);
}

void sub_1000510C4(void *a1, void (**a2)(void, void))
{
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003420(v4, qword_1000A1AE8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = *(&v5->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    *(v8 + 8) = 1024;
    *(v8 + 10) = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "PID %d: Allow Reconnect = %{BOOL}d", v8, 0xEu);
  }

  else
  {

    v6 = v5;
  }

  *(&v5->isa + OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect) = 0;
  a2[2](a2, 0);

  _Block_release(a2);
}

void sub_10005123C(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_1000512B0(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = sub_100011C54(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100011CD4();
  v11 = v10 - v9;
  if (qword_100098BB0 != -1)
  {
    sub_1000200E0();
  }

  v12 = type metadata accessor for Logger();
  sub_100003420(v12, qword_1000A1AE8);
  (*(v6 + 16))(v11, a1, v3);
  v13 = v1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 67109378;
    *(v16 + 4) = *&v13[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v16 + 8) = 2082;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    (*(v6 + 8))(v11, v3);
    v21 = sub_100014C58(v18, v20, &v28);

    *(v16 + 10) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "PID %d: Service Extension Ready '%{public}s'", v16, 0x12u);
    sub_100003458(v17);
    sub_100003534();
    sub_100003534();
  }

  else
  {

    (*(v6 + 8))(v11, v3);
  }

  if (qword_100098B98 != -1)
  {
    sub_100011C88();
  }

  v22 = *(qword_1000A1AE0 + 176);
  if (v22)
  {
    v23 = v22;
    v24.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    [v23 relayPresenterServiceExtensionReady:v24.super.isa];
  }

  else
  {
    v25 = v13;
    v24.super.isa = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24.super.isa, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = *&v25[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

      _os_log_impl(&_mh_execute_header, v24.super.isa, v26, "PID %d: No Service Presenter", v27, 8u);
      sub_100003534();
    }

    else
    {

      v24.super.isa = v25;
    }
  }
}

id sub_1000516E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100051750(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000517C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000517D8(int a1)
{
  v3[0] = HIBYTE(a1);
  v3[1] = BYTE2(a1);
  v3[2] = BYTE1(a1);
  v3[3] = a1;
  v4 = -1;
  v5 = -1;
  v1 = [[NSUUID alloc] initWithUUIDBytes:v3];

  return v1;
}

uint64_t sub_10005186C(uint64_t a1, uint64_t a2)
{
  v4 = _s7SessionC8IdentityVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000518D0(uint64_t a1)
{
  v2 = type metadata accessor for SidecarIdentity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10005192C(uint64_t a1)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [v2 initWithIdentifier:isa model:v5 name:v6 version:v7];

  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

uint64_t sub_100051A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100011D00(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100051AD4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100051AF8()
{

  return swift_beginAccess();
}

uint64_t sub_100051B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_1000113A4(a1, a2, v4);
}

uint64_t sub_100051B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_10001137C(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SidecarIdentity()
{
  result = qword_10009B320;
  if (!qword_10009B320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100051C20()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100051C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_1000523D4();
  sub_100051F04(*(a1 + 16), v2);

  v7 = type metadata accessor for SidecarIdentity();
  if (sub_1000523E4())
  {
    sub_10005235C(v2, &qword_10009A718, &qword_100076940);
    v8 = 1;
  }

  else
  {
    sub_100052288(v2, a2);
    v8 = 0;
  }

  return sub_10001137C(a2, v8, 1, v7);
}

uint64_t sub_100051D6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_1000523D4();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();

  if (sub_1000523E4() == 1)
  {
    sub_10005235C(v1, &qword_1000991D8, &qword_100075780);
    v10 = 1;
  }

  else
  {
    v11 = *(v6 + 32);
    v11(v9, v1, v5);
    v11(a1, v9, v5);
    v10 = 0;
  }

  v12 = type metadata accessor for SidecarIdentity();
  return sub_10001137C(a1, v10, 1, v12);
}

uint64_t sub_100051F04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_1000523D4();
  v7 = a1;
  sub_1000522EC(v7);
  if (v8)
  {
    sub_100051D6C(v2);

    v9 = type metadata accessor for SidecarIdentity();
    if (sub_1000523E4() != 1)
    {
      sub_100052288(v2, a2);
      v11 = a2;
      v12 = 0;
      v10 = v9;
      return sub_10001137C(v11, v12, 1, v10);
    }

    sub_10005235C(v2, &qword_10009A718, &qword_100076940);
  }

  else
  {
  }

  v10 = type metadata accessor for SidecarIdentity();
  v11 = a2;
  v12 = 1;
  return sub_10001137C(v11, v12, 1, v10);
}

uint64_t sub_100052008()
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_100010F24(isa);

  sub_100010C84();
  v1._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v1);

  return 542327881;
}

uint64_t sub_10005208C()
{
  type metadata accessor for UUID();
  sub_1000523BC();
  sub_100052240(v0, v1);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100052100()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000523BC();
  sub_100052240(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100052180()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000523BC();
  sub_100052240(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100052240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100052288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidecarIdentity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000522EC(void *a1)
{
  v2 = [a1 idsDeviceIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10005235C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000FC6C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000523E4()
{

  return sub_1000113A4(v0, 1, v1);
}

const char *sub_100052400()
{
  v12[0].sa_len = *v0;
  memcpy(&v12[0].sa_family, v0 + 1, 0x7FuLL);
  if (v12[0].sa_len)
  {
    sa_len = v12[0].sa_len;
  }

  else
  {
    sa_len = 128;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v4 = getnameinfo(v12, sa_len, v2, 0x401u, v3, 0x20u, 26);
  if (!v4)
  {
    v6 = String.init(cString:)();
    v7 = String.init(cString:)();
    v9 = v8;
    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = v7;
    v11._object = v9;
    String.append(_:)(v11);

    goto LABEL_8;
  }

  result = gai_strerror(v4);
  if (result)
  {
    v6 = String.init(cString:)();
LABEL_8:

    return v6;
  }

  __break(1u);
  return result;
}

ValueMetadata *type metadata accessor for Sockaddr()
{
  return &type metadata for Sockaddr;
}

{
  return &type metadata for Sockaddr;
}

uint64_t sub_100052578(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000525BC()
{
  if (qword_100098BE8 != -1)
  {
    swift_once();
  }

  if (sub_100052BC8())
  {
    v0 = 2;
  }

  else
  {
    v0 = 0;
  }

  if (sub_100052BBC())
  {
    v1 = v0 | 8;
  }

  else
  {
    v1 = v0;
  }

  IsActive = IOPMUserIsActive();

  if (IsActive)
  {
    return v1 | 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10005265C()
{
  type metadata accessor for System();
  swift_allocObject();
  result = sub_100052698();
  qword_1000A1B68 = result;
  return result;
}

uint64_t sub_100052698()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = [objc_allocWithZone(CUSystemMonitor) init];
  *(v0 + 24) = sub_1000721C4();
  v7 = *(v0 + 16);
  sub_100013764();
  (*(v3 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v2);
  v8 = v7;
  v9 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v6, v2);
  [v8 setDispatchQueue:v9];

  v19 = RapportDeviceChangeFlags.rawValue.getter;
  v20 = 0;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100052C90;
  v18 = &unk_10008FA68;
  v10 = _Block_copy(&aBlock);
  [v8 setPrimaryAppleIDChangedHandler:v10];
  _Block_release(v10);
  v19 = RapportDeviceChangeFlags.rawValue.getter;
  v20 = 0;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100052C90;
  v18 = &unk_10008FA90;
  v11 = _Block_copy(&aBlock);
  [v8 setScreenLockedChangedHandler:v11];
  _Block_release(v11);
  v19 = RapportDeviceChangeFlags.rawValue.getter;
  v20 = 0;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100052C90;
  v18 = &unk_10008FAB8;
  v12 = _Block_copy(&aBlock);
  [v8 setScreenOnChangedHandler:v12];
  _Block_release(v12);
  v19 = sub_100052C7C;
  v20 = v1;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100052C90;
  v18 = &unk_10008FAE0;
  v13 = _Block_copy(&aBlock);

  [v8 activateWithCompletion:v13];
  _Block_release(v13);

  return v1;
}

id sub_1000529E4()
{
  sub_100072268(*(v0 + 24));
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (*(&v11 + 1))
  {
    if (sub_100052CA0() && (v9 & 1) != 0)
    {
      return 0;
    }
  }

  else
  {
    sub_10001FD0C(&v12);
  }

  v5 = [v1 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (*(&v11 + 1))
  {
    if (sub_100052CA0() && (v9 & 1) != 0)
    {
      return 0;
    }
  }

  else
  {
    sub_10001FD0C(&v12);
  }

  return [*(v0 + 16) manateeAvailable];
}

uint64_t sub_100052C08()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100052C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100052CA0()
{

  return swift_dynamicCast();
}

void sub_100052CC0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100052D24(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a1)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7.super.isa = 0;
  if (a2)
  {
LABEL_3:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7.super.isa, isa);
}

BOOL sub_100052E0C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

id sub_100052E38()
{
  v1 = type metadata accessor for UUID();
  v2 = sub_100011C54(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100011CD4();
  v9 = v8 - v7;
  UUID.init()();
  (*(v4 + 32))(v0 + OBJC_IVAR____TtC12SidecarRelay10TestDevice_uuid, v9, v1);
  v11.receiver = v0;
  v11.super_class = type metadata accessor for TestDevice();
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_100052FB8()
{
  v2 = *(*(sub_10000FC6C(&qword_10009A718, &qword_100076940) - 8) + 64);
  sub_100049C0C();
  __chkstk_darwin(v3);
  v4 = sub_10005615C();
  v5 = sub_100011D00(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100011CD4();
  v10 = v9 - v8;
  sub_100051F04(v0, v1);
  result = sub_1000113A4(v1, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100052288(v1, v10);
    v12._countAndFlagsBits = sub_100052008();
    String.append(_:)(v12);

    sub_1000518D0(v10);
    return 0x6976654474736554;
  }

  return result;
}

uint64_t sub_100053278()
{
  v0 = sub_100055D9C();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t type metadata accessor for TestDevice()
{
  result = qword_10009B460;
  if (!qword_10009B460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100053488()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100053530()
{
  v2 = *(*(sub_10000FC6C(&qword_10009A718, &qword_100076940) - 8) + 64);
  sub_100049C0C();
  __chkstk_darwin(v3);
  v4 = sub_10005615C();
  v5 = sub_100011D00(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100011CD4();
  v10 = v9 - v8;
  sub_100051F04(*(v0 + OBJC_IVAR____TtC12SidecarRelay11TestSession_testDevice), v1);
  result = sub_1000113A4(v1, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100052288(v1, v10);
    strcpy(v13, "TestSession ");
    BYTE5(v13[1]) = 0;
    HIWORD(v13[1]) = -5120;
    v12._countAndFlagsBits = sub_100052008();
    String.append(_:)(v12);

    sub_1000518D0(v10);
    return v13[0];
  }

  return result;
}

void *sub_100053694()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SidecarRelay11TestSession_testDevice);
  v2 = v1;
  return v1;
}

uint64_t sub_10005371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_100049E4C();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = OBJC_IVAR____TtC12SidecarRelay11TestSession_handlers;
  swift_beginAccess();

  v11 = *(v6 + v10);
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v6 + v10);
  sub_10003E3A4();
  *(v6 + v10) = v13;
  return swift_endAccess();
}

void sub_1000538DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  isa = v6.super.isa;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_100053990()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12SidecarRelay11TestSession_handlers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = sub_1000391EC();
  if (v5)
  {
    v6 = v4;
    v7 = *(v1 + v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v1 + v2);
    v9 = v13[3];
    sub_10000FC6C(&qword_10009A930, &qword_100076AA0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
    v10 = *(v13[6] + 16 * v6 + 8);

    v11 = *(v13[7] + 16 * v6 + 8);
    sub_10000FC6C(&qword_10009B5C0, &qword_100077410);
    _NativeDictionary._delete(at:)();
    *(v1 + v2) = v13;
  }

  return swift_endAccess();
}

void sub_100053B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v8 = sub_10001E674(-6772, 0, 0, "SidecarRelay/TestRelay.swift", 28, 2, 105);
  if (a7)
  {
    v9 = v8;
    a7();
    v8 = v9;
  }
}

uint64_t sub_100053DD0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100011C54(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100011CD4();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchQoS();
  v11 = sub_100011C54(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100011CD4();
  v18 = v17 - v16;
  v19 = [v0 dispatchQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  v30 = sub_100055CA0;
  v31 = v20;
  sub_100018BA0();
  sub_100018B88(COERCE_DOUBLE(1107296256));
  v28 = v21;
  v29 = &unk_10008FC48;
  v22 = _Block_copy(aBlock);
  v23 = v0;
  static DispatchQoS.unspecified.getter();
  sub_1000560BC();
  sub_100055C20(v24, 255, v25);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_10001B67C();
  sub_100056140();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v4 + 8))(v9, v1);
  (*(v13 + 8))(v18, v10);
}

void sub_10005413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void, void, void))
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_10001E468(v9, v10, 3328, 0, 0, 0);
  v12 = _convertErrorToNSError(_:)();
  (a8)[2](a8, 0, 0, v12);

  _Block_release(a8);
}

id sub_10005447C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_1000544EC()
{
  v1 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v12 - v3;
  v5 = type metadata accessor for SidecarIdentity();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051F04(*(v0 + OBJC_IVAR____TtC12SidecarRelay11TestSession_testDevice), v4);
  result = sub_1000113A4(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100052288(v4, v8);
    strcpy(v12, "ProxySession ");
    HIWORD(v12[1]) = -4864;
    v10._countAndFlagsBits = sub_100052008();
    String.append(_:)(v10);

    v11 = v12[0];
    sub_1000518D0(v8);
    return v11;
  }

  return result;
}

uint64_t sub_100054660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = sub_100011C54(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100011CD4();
  v18 = v17 - v16;
  v35 = type metadata accessor for DispatchQoS();
  v19 = sub_100011C54(v35);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_100011CD4();
  v26 = v25 - v24;
  v27 = [v7 dispatchQueue];
  sub_100049E4C();
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  v39 = a4;
  v40 = v28;
  sub_100018BA0();
  sub_100018B88(COERCE_DOUBLE(1107296256));
  v37 = v29;
  v38 = a5;
  v30 = _Block_copy(aBlock);
  sub_1000485AC(a1);
  static DispatchQoS.unspecified.getter();
  sub_1000560BC();
  sub_100055C20(v31, 255, v32);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_10001B67C();
  sub_100056140();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v13 + 8))(v18, v10);
  (*(v21 + 8))(v26, v35);
}

id sub_100054988()
{
  v1 = OBJC_IVAR____TtC12SidecarRelay10TestServer_sessions;
  type metadata accessor for TestSession();
  type metadata accessor for TestServer.ProxySession();
  sub_100055C20(&qword_10009B5B0, v2, type metadata accessor for TestSession);
  *&v0[v1] = Dictionary.init(dictionaryLiteral:)();
  v3 = OBJC_IVAR____TtC12SidecarRelay10TestServer_proxies;
  sub_100055C20(&qword_10009B5B8, 255, type metadata accessor for TestServer.ProxySession);
  *&v0[v3] = Dictionary.init(dictionaryLiteral:)();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TestServer();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_100054B60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736569786F7270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6973736573 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_100054C28(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100054C70(char a1)
{
  if (a1)
  {
    return 0x736E6F6973736573;
  }

  else
  {
    return 0x736569786F7270;
  }
}

uint64_t sub_100054CA8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000FC6C(&qword_10009B598, &qword_100077400);
  sub_100011C54(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_100049C0C();
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  v15 = a1[4];
  sub_10000FCB4(a1, a1[3]);
  sub_100055B64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v18 = 0;
  sub_10000FC6C(&qword_100099138, &qword_100076A80);
  sub_100011A38(&qword_100099140);
  sub_100056114();
  if (!v3)
  {
    v19 = a3;
    v18 = 1;
    sub_100056114();
  }

  return (*(v9 + 8))(v14, v7);
}

uint64_t sub_100054E2C(uint64_t *a1)
{
  v2 = sub_10000FC6C(&unk_10009B5E0, &qword_100077590);
  sub_100011C54(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_100049C0C();
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_10000FCB4(a1, a1[3]);
  sub_100055B64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10000FC6C(&qword_100099138, &qword_100076A80);
  v14 = 0;
  sub_100011A38(&qword_100099230);
  sub_1000560E4();
  v12 = v15;
  v14 = 1;
  sub_1000560E4();
  (*(v4 + 8))(v9, v2);
  sub_100003458(a1);
  return v12;
}

uint64_t sub_100055010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100055038@<X0>(_BYTE *a1@<X8>)
{
  result = static RapportDeviceChangeFlags.distance.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100055060(uint64_t a1)
{
  v2 = sub_100055B64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005509C(uint64_t a1)
{
  v2 = sub_100055B64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000550D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100054E2C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

id sub_100055120(void *a1)
{
  v3 = OBJC_IVAR____TtC12SidecarRelay10TestClient_testDevice;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for TestDevice()) init];
  v4 = a1;
  v5 = sub_1000035F0(v4);
  v6 = qword_100098B98;
  v7 = v5;
  if (v6 != -1)
  {
    sub_1000560A8();
    swift_once();
  }

  return v7;
}

uint64_t sub_1000551E0(uint64_t (*a1)(void))
{
  result = a1();
  if (qword_100098B98 != -1)
  {
    sub_1000560A8();

    return swift_once();
  }

  return result;
}

void sub_100055230(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void, void))
{
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003420(v8, qword_1000A1AE8);
  v9 = a3;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 67109378;
    *(v12 + 4) = *&v9[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v12 + 8) = 2082;
    *(v12 + 10) = sub_100014C58(a1, a2, &v25);
    _os_log_impl(&_mh_execute_header, v10, v11, "PID %d: Devices '%{public}s'", v12, 0x12u);
    sub_100003458(v13);
  }

  else
  {
  }

  v14 = *&v9[OBJC_IVAR____TtC12SidecarRelay10TestClient_testDevice];
  type metadata accessor for RapportRemoteDisplayDevice();
  swift_allocObject();
  RapportRemoteDisplayDevice.init(device:)(v14);
  sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);
  v15 = v14;

  v16 = sub_100058458();
  if (v16)
  {
    v17 = v16;
    sub_10000FC6C(&qword_10009B5A8, &qword_100077408);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100077360;
    *(v18 + 32) = v17;
    v19 = v17;
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (a4)[2](a4, v20.super.isa, 0);
  }

  else
  {

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = sub_10001E468(v21, v22, -200, 0, 0, 0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v20.super.isa = _convertErrorToNSError(_:)();
    (a4)[2](a4, isa, v20.super.isa);
  }

  _Block_release(a4);
}

void sub_100055670(void (*a1)(void))
{
  a1();
  if (qword_100098B98 != -1)
  {
    sub_1000560A8();
    swift_once();
  }

  sub_100033444(v1);
}

void sub_1000556CC(uint64_t a1, uint64_t a2)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100025214;
  aBlock[3] = &unk_10008FB58;
  v3 = _Block_copy(aBlock);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for TestProvider();
  objc_msgSendSuper2(&v4, "relayRegisterServiceProvider:", v3);
  _Block_release(v3);
  if (qword_100098B98 != -1)
  {
    sub_1000560A8();
    swift_once();
  }
}

id sub_100055AA4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100055B10()
{
  result = qword_10009B570;
  if (!qword_10009B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B570);
  }

  return result;
}

unint64_t sub_100055B64()
{
  result = qword_10009B5A0;
  if (!qword_10009B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B5A0);
  }

  return result;
}

uint64_t sub_100055BB8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100055BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100055C20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100055C68()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100055CA0()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC12SidecarRelay11TestSession_valid) == 1)
  {
    *(v1 + OBJC_IVAR____TtC12SidecarRelay11TestSession_valid) = 0;
  }
}

uint64_t sub_100055CC0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  sub_100049E4C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100055CFC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1(0);
  }

  return result;
}

uint64_t sub_100055D38()
{
  v1 = *(v0 + 24);

  sub_100049E4C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100055D6C(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

id sub_100055D9C()
{
  v0 = MGGetStringAnswer();

  return v0;
}

_BYTE *storeEnumTagSinglePayload for TestServer.DiagnosticState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100055E9CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100055ED4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100055F14(uint64_t result, int a2, int a3)
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

unint64_t sub_100055F64()
{
  result = qword_10009B5C8;
  if (!qword_10009B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B5C8);
  }

  return result;
}

unint64_t sub_100055FBC()
{
  result = qword_10009B5D0;
  if (!qword_10009B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B5D0);
  }

  return result;
}

unint64_t sub_100056014()
{
  result = qword_10009B5D8;
  if (!qword_10009B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B5D8);
  }

  return result;
}

uint64_t sub_1000560E4()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100056114()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_10005615C()
{

  return type metadata accessor for SidecarIdentity();
}

uint64_t sub_10005617C(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v20 = _swiftEmptyArrayStorage;
  sub_10003ECBC(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  v8 = *(sub_10000FC6C(&qword_10009A850, &qword_100076A20) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);
  while (1)
  {
    a1(v19, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v10 = v19[0];
    v11 = v19[1];
    v12 = v19[2];
    v20 = v6;
    v14 = v6[2];
    v13 = v6[3];
    if (v14 >= v13 >> 1)
    {
      sub_10003ECBC((v13 > 1), v14 + 1, 1);
      v6 = v20;
    }

    v6[2] = v14 + 1;
    v15 = &v6[3 * v14];
    v15[4] = v10;
    v15[5] = v11;
    v15[6] = v12;
    v9 += v17;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100056300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v6 = v5;
  if (v4)
  {
    sub_100057CB4(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_10001137C(a2, v7, 1, v6);
}

BOOL sub_1000563B0()
{
  v2 = type metadata accessor for Date();
  v3 = sub_100011C54(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10005840C();
  swift_beginAccess();
  v8 = *(v0 + 16);
  v13 = v1;

  v9 = sub_10005617C(sub_100057E14, v12, v8);

  v10 = *(v0 + 24);
  if (!*(v9 + 16))
  {
  }

  (*(v5 + 8))(v1, v2);
  return v10 != 0;
}

uint64_t sub_1000564D4()
{
  type metadata accessor for Watchdog();
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  *(result + 24) = 0;
  qword_1000A1B78 = result;
  return result;
}

uint64_t sub_10005650C()
{
  v2 = type metadata accessor for Date();
  v3 = sub_100011C54(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10005840C();
  swift_beginAccess();
  v8 = *(v0 + 16);

  sub_100020D74();
  v9 = *(v0 + 16);
  *(v0 + 16) = v10;

  sub_1000566D0(v11);
  return (*(v5 + 8))(v1, v2);
}

uint64_t sub_100056610(uint64_t a1)
{
  type metadata accessor for Date();
  sub_100057D44(&qword_10009B770, &type metadata accessor for Date);
  v2 = dispatch thunk of static Comparable.< infix(_:_:)();
  if ((v2 & 1) == 0)
  {
    v3 = *(a1 + *(sub_10000FC6C(&qword_10009A850, &qword_100076A20) + 48));
    sub_100029EC8();
  }

  return v2 & 1;
}

uint64_t sub_1000566D0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = sub_100011C54(v2);
  v54 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100011D10();
  v53 = (v7 - v8);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for DispatchWallTime();
  v56 = sub_100011C54(v12);
  v57 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v56);
  sub_100011D10();
  v18 = (v16 - v17);
  __chkstk_darwin(v19);
  v55 = &v51 - v20;
  v21 = *(*(sub_10000FC6C(&unk_10009B740, &qword_100077620) - 8) + 64);
  sub_100049C0C();
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  v25 = type metadata accessor for Date();
  v26 = sub_100011C54(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_100011D10();
  v33 = (v31 - v32);
  __chkstk_darwin(v34);
  v36 = &v51 - v35;
  swift_beginAccess();
  sub_100056300(*(v1 + 16), v24);
  v37 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  if (sub_1000113A4(v24, 1, v37) == 1)
  {
    result = sub_100057C34(v24);
    if (*(v1 + 24))
    {
      v39 = *(v1 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
      v40 = *(v1 + 24);
      *(v1 + 24) = 0;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v52 = v2;
    v41 = *&v24[*(v37 + 48)];
    swift_unknownObjectRelease();
    v42 = *(v28 + 32);
    v42(v33, v24, v25);
    v42(v36, v33, v25);
    Date.timeIntervalSinceNow.getter();
    if (v43 <= 0.0)
    {
      sub_10005650C();
    }

    else
    {
      static DispatchWallTime.now()();
      + infix(_:_:)();
      v44 = *(v57 + 8);
      v57 += 8;
      v51 = v44;
      v44(v18, v56);
      if (*(v1 + 24))
      {
        v45 = *(v1 + 24);
      }

      else
      {
        sub_100056B04(v1);
      }

      swift_getObjectType();
      sub_100056FD4(v11);
      v46 = v53;
      sub_100057048(v53);
      swift_unknownObjectRetain();
      v47 = v55;
      OS_dispatch_source_timer.schedule(wallDeadline:repeating:leeway:)();
      v48 = *(v54 + 8);
      v49 = v46;
      v50 = v52;
      v48(v49, v52);
      v48(v11, v50);
      OS_dispatch_source.activate()();
      swift_unknownObjectRelease();
      v51(v47, v56);
    }

    return (*(v28 + 8))(v36, v25);
  }

  return result;
}

uint64_t sub_100056B04(uint64_t a1)
{
  v24 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v1 - 8);
  v23 = v1;
  v2 = *(v22 + 64);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100057D44(&unk_10009C1A0, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10000FC6C(&unk_10009B760, &qword_100077628);
  sub_100018B20(&unk_10009C1B0, &unk_10009B760, &qword_100077628);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v10 + 8))(v13, v9);
  swift_getObjectType();
  aBlock[4] = sub_100056EA4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_10008FE70;
  v16 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v16);
  (*(v22 + 8))(v4, v23);
  (*(v20 + 8))(v8, v21);
  v17 = *(v24 + 24);
  *(v24 + 24) = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_100056EA4()
{
  if (qword_100098BF0 != -1)
  {
    swift_once();
  }

  return sub_10005650C();
}

uint64_t sub_100056EFC()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100057D44(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100056FD4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100057048@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000570C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000570E8()
{
  sub_1000570C0();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100057144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100057210(char a1)
{
  if (a1)
  {
    return 0x7463656A626FLL;
  }

  else
  {
    return 0x6974617269707865;
  }
}

uint64_t sub_100057248(void *a1)
{
  v4 = sub_10000FC6C(&qword_10009B790, &qword_100077810);
  sub_100011C54(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100049C0C();
  __chkstk_darwin(v9);
  sub_1000583EC();
  v10 = a1[4];
  sub_10000FCB4(a1, a1[3]);
  sub_100058098();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1000573B0(uint64_t *a1)
{
  v3 = sub_10000FC6C(&qword_10009B7A0, &qword_100077818);
  sub_100011C54(v3);
  v5 = *(v4 + 64);
  sub_100049C0C();
  __chkstk_darwin(v6);
  sub_1000583EC();
  v7 = a1[4];
  v8 = sub_10000FCB4(a1, a1[3]);
  sub_100058098();
  sub_100058434();
  if (!v1)
  {
    sub_1000583FC();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000583FC();
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = sub_1000583DC();
    v11(v10);
  }

  sub_100003458(a1);
  return v8;
}

uint64_t sub_10005751C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100057144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100057544(uint64_t a1)
{
  v2 = sub_100058098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100057580(uint64_t a1)
{
  v2 = sub_100058098();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000575BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000573B0(a1);
  if (!v2)
  {
    *a2 = v6;
    a2[1] = result;
    a2[2] = v5;
  }

  return result;
}

uint64_t sub_1000575EC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_100057248(a1);
}

uint64_t sub_10005760C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656D6974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000576D4(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 0x72656D6974;
  }
}

uint64_t sub_1000576FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FC6C(&qword_10009B718, &qword_100077610);
  sub_100011C54(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100049C0C();
  __chkstk_darwin(v11);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_10000FCB4(a1, a1[3]);
  sub_100057B8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v16[1] = a3;
    v17 = 1;
    sub_10000FC6C(&qword_10009B728, &qword_100077618);
    sub_1000580EC(&qword_10009B730, sub_100057BE0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_1000578B4(uint64_t *a1)
{
  v2 = sub_10000FC6C(&qword_10009B7A8, &qword_100077820);
  sub_100011C54(v2);
  v4 = *(v3 + 64);
  sub_100049C0C();
  __chkstk_darwin(v5);
  sub_1000583EC();
  v6 = a1[4];
  sub_10000FCB4(a1, a1[3]);
  sub_100057B8C();
  sub_100058434();
  sub_1000583FC();
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10000FC6C(&qword_10009B728, &qword_100077618);
  sub_1000580EC(&qword_10009B7B0, sub_100058164);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v8 = sub_1000583DC();
  v9(v8);
  sub_100003458(a1);
  return v7 & 1;
}

uint64_t sub_100057A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005760C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100057AC0(uint64_t a1)
{
  v2 = sub_100057B8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100057AFC(uint64_t a1)
{
  v2 = sub_100057B8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100057B38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000578B4(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

unint64_t sub_100057B8C()
{
  result = qword_10009B720;
  if (!qword_10009B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B720);
  }

  return result;
}

unint64_t sub_100057BE0()
{
  result = qword_10009B738;
  if (!qword_10009B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B738);
  }

  return result;
}

uint64_t sub_100057C34(uint64_t a1)
{
  v2 = sub_10000FC6C(&unk_10009B740, &qword_100077620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100057C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100057CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057D44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100057D8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  Date.timeIntervalSince(_:)();
  v5 = v4;
  v6 = (a1 + *(sub_10000FC6C(&qword_10009A850, &qword_100076A20) + 48));
  v7 = *v6;
  v8 = v6[1];
  swift_getObjectType();
  v9 = *(v8 + 8);
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a2 = v5;
  a2[1] = result;
  a2[2] = v11;
  return result;
}

uint64_t sub_100057E34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100057E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100057EDC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100057F30(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100057F94()
{
  result = qword_10009B778;
  if (!qword_10009B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B778);
  }

  return result;
}

unint64_t sub_100057FEC()
{
  result = qword_10009B780;
  if (!qword_10009B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B780);
  }

  return result;
}

unint64_t sub_100058044()
{
  result = qword_10009B788;
  if (!qword_10009B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B788);
  }

  return result;
}