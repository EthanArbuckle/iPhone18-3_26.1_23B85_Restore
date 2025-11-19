uint64_t sub_1000CE64C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_1000CE6DC()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__analyticsReporter;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianMegadomeSuggester()
{
  result = qword_1003DC158;
  if (!qword_1003DC158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CE834()
{
  sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000CE940(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1000CEC80(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1000D1134(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_1000CEAE0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1000CEEC0(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1000D10C0(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_1000CEC80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v37 = a4 + 56;

  v32 = 0;
  v33 = v5;
  v12 = 0;
  v35 = v10;
  v36 = v6;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v5 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v4 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v20 = Hasher._finalize()();
    v21 = -1 << *(v4 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) != 0)
    {
      v25 = v4;
      v26 = (*(v4 + 48) + 16 * v22);
      if (*v26 != v18 || v26[1] != v17)
      {
        v28 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v28;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) == 0)
          {
            v4 = v25;
            v5 = v33;
            goto LABEL_23;
          }

          v29 = (*(v25 + 48) + 16 * v22);
          if (*v29 == v18 && v29[1] == v17)
          {
            break;
          }
        }
      }

      v13 = a1[v23];
      a1[v23] = v13 | v24;
      v4 = v25;
      v5 = v33;
      v10 = v35;
      v6 = v36;
      if ((v13 & v24) == 0 && __OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_27:

        return sub_1000CF0A0(a1, a2, v32, v4);
      }
    }

    else
    {
LABEL_23:

      v10 = v35;
      v6 = v36;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CEEC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v14 = Hasher._finalize()();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_1000CF0A0(v26, a2, v25, a4);
}

uint64_t sub_1000CF0A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100005814(&unk_1003DC2C0, &unk_10034A390);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1000CF2C4(void *a1, int a2)
{
  v130 = a2;
  v136 = a1;
  v132 = type metadata accessor for EntityIdentifier();
  v134 = *(v132 - 8);
  v3 = *(v134 + 64);
  __chkstk_darwin(v132);
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PersonEntityTagType();
  v137 = *(v6 - 8);
  v7 = *(v137 + 64);
  __chkstk_darwin(v6);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PHPersonIdentifierMapView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewService();
  v15 = static ViewService.clientService.getter();
  ViewService.phPersonIdentifierMapView()();

  if (!v2)
  {
    v133 = v9;
    v123 = v14;
    v124 = v11;
    v125 = v10;
    v122 = v5;
    v16 = static ViewService.clientService.getter();
    v17 = ViewService.visualIdentifierView()();
    v135 = 0;

    if (qword_1003D7F20 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v18 = type metadata accessor for Logger();
      v19 = sub_100008D04(v18, qword_1003FAA40);
      v20 = v136;
      v118 = v19;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();

      v23 = os_log_type_enabled(v21, v22);
      v120 = v17;
      v24 = v137;
      v25 = v133;
      if (v23)
      {
        v26 = v6;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v136 = v20;
        v29 = v28;
        v138 = v28;
        *v27 = 136315138;
        PersonEntityTaggingService.ScoreRankedEntityTagPersons.tag.getter();
        v30 = PersonEntityTagType.rawValue.getter();
        v31 = v25;
        v33 = v32;
        (*(v24 + 8))(v31, v26);
        v34 = sub_10021145C(v30, v33, &v138);

        *(v27 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v21, v22, "Entities for tag: %s", v27, 0xCu);
        sub_10000839C(v29);
      }

      v35 = v134;
      v36 = v122;
      v17 = v125;
      v37 = PersonEntityTaggingService.ScoreRankedEntityTagPersons.scoredEntities.getter();
      v38 = v37;
      v39 = v124;
      if (v37 >> 62)
      {
        v40 = _CocoaArrayWrapper.endIndex.getter();
        if (!v40)
        {
LABEL_41:
          swift_unknownObjectRelease();

          (*(v39 + 8))(v123, v17);
          return;
        }
      }

      else
      {
        v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v40)
        {
          goto LABEL_41;
        }
      }

      v6 = 0;
      v133 = v38 & 0xC000000000000001;
      v114 = v38 & 0xFFFFFFFFFFFFFF8;
      v116 = v35 + 8;
      *(&v41 + 1) = 2;
      v115 = xmmword_10033EB30;
      *&v41 = 136316162;
      v113 = v41;
      *&v41 = 136315906;
      v112 = v41;
      v117 = v38;
      v131 = v40;
      while (1)
      {
        if (v133)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v114 + 16))
          {
            goto LABEL_38;
          }

          v43 = *(v38 + 8 * v6 + 32);
        }

        v44 = v43;
        v45 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.score.getter();
        if (v46 >= 0.5)
        {
          v127 = v6;
          v128 = v6 + 1;
          PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.id.getter();
          v47 = EntityIdentifier.stringValue.getter();
          v48 = v44;
          v50 = v49;
          v51 = *(v35 + 8);
          v52 = v132;
          v51(v36, v132);
          v119 = PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.inferenceEventId.getter();
          sub_100005814(&qword_1003DC2D0, &qword_1003407E8);
          v53 = *(v35 + 72);
          v54 = (*(v35 + 80) + 32) & ~*(v35 + 80);
          v55 = swift_allocObject();
          *(v55 + 16) = v115;
          v129 = v48;
          PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.id.getter();
          sub_1001323C8(v55);
          swift_setDeallocating();
          v51((v55 + v54), v52);
          swift_deallocClassInstance();
          v56 = v123;
          v57 = v135;
          v58 = PHPersonIdentifierMapView.phPersonIdentifiers(for:)();
          v135 = v57;
          if (v57)
          {
            (*(v124 + 8))(v56, v125);

            swift_unknownObjectRelease();

            return;
          }

          v59 = v58;

          v140[0] = v59;
          sub_100005814(&qword_1003DC2D8, qword_1003407F0);
          sub_1000D10EC(&unk_1003DC2E0, &qword_1003DC2D8, qword_1003407F0);
          sub_1000709A0();
          v121 = Sequence<>.joined(separator:)();
          v136 = v60;

          strcpy(v140, "UNKNOWN_NAME");
          BYTE5(v140[1]) = 0;
          HIWORD(v140[1]) = -5120;
          v126 = v50;
          v61 = String._bridgeToObjectiveC()();
          v62 = [v120 personForIdentifier:v61];

          v63 = v47;
          if (v62)
          {
            v64 = [v62 names];
            v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v66 = *(v65 + 16);

            v67 = v129;
            if (v66)
            {
              v68 = [v62 names];
              v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v139 = v69;
              sub_100005814(&qword_1003DA1E0, &qword_100345E50);
              sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50);
              v70 = BidirectionalCollection<>.joined(separator:)();
              v72 = v71;

              swift_beginAccess();
              v140[0] = v70;
              v140[1] = v72;
              v137 = v72;
            }

            else
            {
              v137 = 0xEC000000454D414ELL;
              v70 = 0x5F4E574F4E4B4E55;
            }

            v6 = v127;
            v73 = [v62 phoneNumbers];
            v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v75 = *(v74 + 16);

            if (v75)
            {
              v76 = [v62 phoneNumbers];
              v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v139 = v77;
              sub_100005814(&qword_1003DA1E0, &qword_100345E50);
              sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50);
              v70 = BidirectionalCollection<>.joined(separator:)();
              v79 = v78;

              swift_beginAccess();
              v140[0] = v70;
              v140[1] = v79;

              v137 = v79;
            }

            v80 = [v62 emails];
            v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v82 = *(v81 + 16);

            if (v82)
            {
              v83 = [v62 emails];
              v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v139 = v84;
              sub_100005814(&qword_1003DA1E0, &qword_100345E50);
              sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50);
              v70 = BidirectionalCollection<>.joined(separator:)();
              v86 = v85;

              swift_beginAccess();
              v140[0] = v70;
              v140[1] = v86;

              v137 = v86;
            }

            else
            {
            }

            v63 = v47;
          }

          else
          {
            v137 = 0xEC000000454D414ELL;
            v70 = 0x5F4E574F4E4B4E55;
            v67 = v129;
            v6 = v127;
          }

          v87 = v126;

          v88 = v67;
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.info.getter();

          v91 = os_log_type_enabled(v89, v90);
          if (v130)
          {
            if (v91)
            {
              v92 = swift_slowAlloc();
              v127 = swift_slowAlloc();
              v139 = v127;
              *v92 = v113;
              v93 = v137;

              v94 = sub_10021145C(v70, v93, &v139);
              v129 = v89;
              v95 = v94;

              *(v92 + 4) = v95;
              *(v92 + 12) = 2080;
              v96 = sub_10021145C(v121, v136, &v139);

              *(v92 + 14) = v96;
              *(v92 + 22) = 2080;
              v97 = sub_10021145C(v63, v87, &v139);

              *(v92 + 24) = v97;
              *(v92 + 32) = 2048;
              PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.score.getter();
              *(v92 + 34) = v98;
              *(v92 + 42) = 2048;
              *(v92 + 44) = v119;
              v99 = v90;
              v100 = v129;
              v101 = v129;
              v102 = "\t%s: \t%s : %s : %f : EventID %lld";
              v103 = v92;
              v104 = 52;
              goto LABEL_33;
            }

LABEL_34:
          }

          else
          {
            if (!v91)
            {
              goto LABEL_34;
            }

            v105 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            v139 = v127;
            *v105 = v112;
            v106 = v137;

            v107 = sub_10021145C(v70, v106, &v139);
            v129 = v89;
            v108 = v107;

            *(v105 + 4) = v108;
            *(v105 + 12) = 2080;
            v109 = sub_10021145C(v121, v136, &v139);

            *(v105 + 14) = v109;
            *(v105 + 22) = 2080;
            v110 = sub_10021145C(v63, v87, &v139);

            *(v105 + 24) = v110;
            *(v105 + 32) = 2048;
            PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.score.getter();
            *(v105 + 34) = v111;
            v99 = v90;
            v100 = v129;
            v101 = v129;
            v102 = "\t%s: \t%s : %s : %f";
            v103 = v105;
            v104 = 42;
LABEL_33:
            _os_log_impl(&_mh_execute_header, v101, v99, v102, v103, v104);
            swift_arrayDestroy();
          }

          v35 = v134;
          v36 = v122;
          v17 = v125;
          v39 = v124;
          v38 = v117;
          v42 = v131;
          v45 = v128;
          goto LABEL_9;
        }

        v42 = v131;
LABEL_9:
        ++v6;
        if (v45 == v42)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }
  }
}

uint64_t sub_1000D00CC()
{
  v17 = v0;
  v1 = [objc_opt_self() sharedInstance];
  v0[4] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[3];
    v4 = swift_allocObject();
    v0[5] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = async function pointer to withTimeout<A>(after:_:)[1];
    v6 = v2;

    v7 = swift_task_alloc();
    v0[6] = v7;
    v8 = sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    *v7 = v0;
    v7[1] = sub_1000D0360;

    return withTimeout<A>(after:_:)(v0 + 2, 0x8AC7230489E80000, 0, &unk_1003407C0, v4, v8);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA40);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10021145C(0xD000000000000021, 0x800000010032E0B0, &v16);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s IDSIDQueryController doesn't exist", v12, 0xCu);
      sub_10000839C(v13);
    }

    v14 = v0[1];

    return v14(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000D0360()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1000D04E0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1000D047C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D047C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000D04E0()
{
  v16 = v0;
  v1 = v0[5];

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA40);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_10021145C(0xD000000000000021, 0x800000010032E0B0, &v15);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s error: %@", v7, 0x16u);
    sub_100083380(v8);

    sub_10000839C(v9);
  }

  v11 = v0[7];
  v12 = v0[4];

  v13 = v0[1];

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_1000D06DC(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return _swift_task_switch(sub_1000D0700, 0, 0);
}

uint64_t sub_1000D0700()
{
  v59 = v0;
  v0[8] = _swiftEmptyArrayStorage;
  v1 = (v0 + 8);
  v2 = v0[9];
  v3 = *(v0[11] + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v3 contactForIdentifiers:isa];

  if (!v5)
  {
    v25 = v0[10];

    sub_10028BBC0(v26);
    goto LABEL_30;
  }

  v57 = v5;
  v6 = [v5 phoneNumberStrings];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = -v8;
    v11 = v7 + 40;
    v12 = _swiftEmptyArrayStorage;
    do
    {
      v13 = (v11 + 16 * v9++);
      while (1)
      {
        if ((v9 - 1) >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        v14 = *(v13 - 1);
        v15 = *v13;

        v16 = String._bridgeToObjectiveC()();
        v17 = _IDSCopyIDForPhoneNumberWithOptions();

        if (v17)
        {
          break;
        }

        ++v9;
        v13 += 2;
        if (v10 + v9 == 1)
        {
          goto LABEL_17;
        }
      }

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100305F30(0, *(v12 + 2) + 1, 1, v12);
      }

      v23 = *(v12 + 2);
      v22 = *(v12 + 3);
      if (v23 >= v22 >> 1)
      {
        v12 = sub_100305F30((v22 > 1), v23 + 1, 1, v12);
      }

      *(v12 + 2) = v23 + 1;
      v24 = &v12[16 * v23];
      *(v24 + 4) = v18;
      *(v24 + 5) = v21;
      *v1 = v12;
      v11 = v7 + 40;
    }

    while (v10 + v9);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

LABEL_17:

  v27 = [v57 emailAddressStrings];
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = *(v28 + 16);
  if (!v29)
  {
LABEL_29:

LABEL_30:
    if (qword_1003D7F20 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  v30 = 0;
  v31 = -v29;
LABEL_19:
  v32 = (v28 + 40 + 16 * v30++);
  while ((v30 - 1) < *(v28 + 16))
  {
    v33 = *(v32 - 1);
    v34 = *v32;

    v35 = String._bridgeToObjectiveC()();
    v36 = _IDSCopyIDForEmailAddress();

    if (v36)
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v38;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100305F30(0, *(v12 + 2) + 1, 1, v12);
      }

      v40 = *(v12 + 2);
      v39 = *(v12 + 3);
      if (v40 >= v39 >> 1)
      {
        v12 = sub_100305F30((v39 > 1), v40 + 1, 1, v12);
      }

      *(v12 + 2) = v40 + 1;
      v41 = &v12[16 * v40];
      *(v41 + 4) = v37;
      *(v41 + 5) = v56;
      *v1 = v12;
      if (v31 + v30)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

    ++v30;
    v32 += 2;
    if (v31 + v30 == 1)
    {
      goto LABEL_29;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  swift_once();
LABEL_31:
  v42 = type metadata accessor for Logger();
  sub_100008D04(v42, qword_1003FAA40);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v58 = v46;
    *v45 = 136315138;
    swift_beginAccess();
    v47 = *v1;

    v48 = Array.description.getter();
    v50 = v49;

    v51 = sub_10021145C(v48, v50, &v58);

    *(v45 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v43, v44, "Checking IDStatus for handles: %s", v45, 0xCu);
    sub_10000839C(v46);
  }

  swift_beginAccess();
  v52 = v0[8];
  v0[12] = v52;
  if (*(v52 + 16))
  {

    v53 = swift_task_alloc();
    v0[13] = v53;
    *v53 = v0;
    v53[1] = sub_1000D0CC4;

    return sub_1000D00AC(v52);
  }

  else
  {

    v55 = v0[1];

    return v55(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000D0CC4(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1000D0DE4, 0, 0);
}

uint64_t sub_1000D0DE4()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1000D0E48()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000D0E88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_1000CDC3C(a1, v5, v4);
}

uint64_t sub_1000D0F3C()
{
  v1 = sub_100005814(&qword_1003DC2A8, &unk_1003407D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000D0FD0(uint64_t a1)
{
  v2 = *(*(sub_100005814(&qword_1003DC2A8, &unk_1003407D0) - 8) + 80);

  return sub_1000CE10C(a1);
}

uint64_t sub_1000D104C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D10EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008CBC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D1160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1000D119C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA40);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "fetchSuggestedCustodians for now fetching megadome and family.", v17, 2u);
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = v5;
  v19[7] = a3;
  v19[8] = a4;

  sub_1000BCD5C(0, 0, v13, &unk_1003408C8, v19);
}

uint64_t sub_1000D139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1000D13C4, 0, 0);
}

uint64_t sub_1000D13C4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v2[12];
  v5 = type metadata accessor for CustodianMegadomeSuggester();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v0[7] = v8;
  swift_unknownObjectRetain();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v8[3] = v3;
  v8[4] = v1;
  v8[2] = v4;
  v9 = v2[5];
  v10 = v2[6];
  sub_1000080F8(v2 + 2, v9);
  v11 = *(v10 + 32);

  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_1000D15B0;
  v15 = v0[2];
  v14 = v0[3];

  return v17(v15, v14, v9, v10);
}

uint64_t sub_1000D15B0(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1000D16B0, 0, 0);
}

uint64_t sub_1000D16B0()
{
  v1 = *(v0 + 32);
  v2 = v1[5];
  v3 = v1[6];
  sub_1000080F8(v1 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1000D17D8;

  return v8(v2, v3);
}

uint64_t sub_1000D17D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;
  v3[11] = a1;

  v6 = swift_task_alloc();
  v3[12] = v6;
  *v6 = v5;
  v6[1] = sub_1000D192C;
  v7 = v3[7];

  return sub_1000CCCE0(a1);
}

uint64_t sub_1000D192C(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1000D1A4C, 0, 0);
}

uint64_t sub_1000D1A4C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v15 = v0[9];
  sub_10028BDB8(v0[13]);
  sub_1000D1BDC(v15, v3, v2);

  swift_setDeallocating();
  v5 = *(v1 + 2);
  swift_unknownObjectRelease();
  v6 = *(v1 + 4);

  v7 = OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__analyticsReporter;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v8 - 8) + 8))(&v1[v7], v8);
  v9 = OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__accountStore;
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v10 - 8) + 8))(&v1[v9], v10);
  v11 = *(*v1 + 48);
  v12 = *(*v1 + 52);
  swift_deallocClassInstance();
  v13 = v0[1];

  return v13();
}

uint64_t sub_1000D1BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v30);
  v11 = &v28 - v10;
  v12 = type metadata accessor for URL();
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  v19 = sub_1000080F8((v4 + 56), *(v4 + 80));
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  v21 = sub_1000080F8((*v19 + 16), *(*v19 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v22 = *(v28 + 8);
  v23 = v16;
  v24 = v29;
  v22(v23, v29);
  v25 = v30;
  (*(v8 + 16))(v11, *v21 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v30);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v25);
  v26 = *sub_1000080F8(v31, v31[3]);
  sub_1000324D8(v18, sub_1000D22BC, v20);

  v22(v18, v24);
  return sub_10000839C(v31);
}

uint64_t sub_1000D1EB4(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), unint64_t a6)
{
  v11 = type metadata accessor for CustodianRecord();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v18 = v29 - v17;
  if (a2)
  {
    return a5(a1, 1);
  }

  v29[0] = a4;
  v29[1] = a6;
  v30 = a5;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v22 = *(v16 + 72);
    v23 = a1 + v21;
    v24 = _swiftEmptyArrayStorage;
    do
    {
      sub_100012050(v23, v18);
      if ((*&v18[*(v11 + 36)] - 1) > 2)
      {
        sub_1000120B4(v18);
      }

      else
      {
        sub_100012378(v18, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E0288(0, v24[2] + 1, 1);
          v24 = v31;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_1002E0288(v26 > 1, v27 + 1, 1);
          v24 = v31;
        }

        v24[2] = v27 + 1;
        sub_100012378(v15, v24 + v21 + v27 * v22);
      }

      v23 += v22;
      --v20;
    }

    while (v20);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v28 = sub_1000D22CC(v29[0], v24);

  v30(v28, 0);
}

uint64_t sub_1000D20DC()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000D2148()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000D2198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_1000D139C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D2274()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

void *sub_1000D22CC(unint64_t a1, uint64_t a2)
{
  v35 = a2;
  v34 = type metadata accessor for CustodianRecord();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = a1 & 0xC000000000000001;
    v28 = a1 + 32;
    v29 = i;
    v30 = a1;
    while (1)
    {
LABEL_6:
      if (v32)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v31 + 16))
        {
          goto LABEL_26;
        }

        v9 = *(v28 + 8 * v8);
      }

      v10 = v9;
      v11 = __OFADD__(v8, 1);
      v12 = v8 + 1;
      if (v11)
      {
        break;
      }

      v33 = v12;
      v13 = 0;
      v14 = *(v35 + 16);
      while (v14 != v13)
      {
        sub_100012050(v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v6);
        v15 = &v6[*(v34 + 24)];
        v16 = *v15;
        v17 = *(v15 + 1);
        v18 = [v10 handle];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        if (v16 == v19 && v17 == v21)
        {

          sub_1000120B4(v6);
LABEL_5:

          a1 = v30;
          v8 = v33;
          if (v33 != v29)
          {
            goto LABEL_6;
          }

          return v36;
        }

        ++v13;
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_1000120B4(v6);
        if (v23)
        {
          goto LABEL_5;
        }
      }

      v24 = [v10 isChild];
      v8 = v33;
      if (v24)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = v36[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      a1 = v30;
      if (v8 == v29)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000D25A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v8 = sub_100005814(a2, a3);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v17 - v10);
  sub_100012D04(a1, v17 - v10, a2, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v6 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    swift_getErrorValue();
    sub_1002DEA80(v17[1]);
    v14 = _convertErrorToNSError(_:)();

    [v6 populateUnderlyingErrorsStartingWithRootError:v14];
  }

  else
  {
    v16 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v6 setObject:v16 forKeyedSubscript:kAAFDidSucceed];

    return sub_100008D3C(v11, a2, a3);
  }
}

void sub_1000D2748(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v3 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    swift_getErrorValue();
    sub_1002DEA80(v7);
    v5 = _convertErrorToNSError(_:)();

    [v3 populateUnderlyingErrorsStartingWithRootError:v5];
  }

  else
  {
    v6 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v3 setObject:v6 forKeyedSubscript:kAAFDidSucceed];
  }
}

void sub_1000D2850(uint64_t a1, char a2)
{
  if (a2)
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v2 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    swift_getErrorValue();
    sub_1002DEA80(v6);
    v4 = _convertErrorToNSError(_:)();

    [v2 populateUnderlyingErrorsStartingWithRootError:v4];
  }

  else
  {
    v5 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v2 setObject:v5 forKeyedSubscript:kAAFDidSucceed];
  }
}

void sub_1000D2968(uint64_t *a1)
{
  v2 = v1;
  if (a1[4])
  {
    v3 = *a1;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v2 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    swift_getErrorValue();
    sub_1002DEA80(v7);
    v5 = _convertErrorToNSError(_:)();

    [v2 populateUnderlyingErrorsStartingWithRootError:v5];
  }

  else
  {
    v6 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v1 setObject:v6 forKeyedSubscript:kAAFDidSucceed];
  }
}

uint64_t sub_1000D2A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v62 = a8;
  v63 = a7;
  v61 = a6;
  v65 = a5;
  v68 = a1;
  v67 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  __chkstk_darwin(v67);
  v64 = &v55 - v14;
  v15 = type metadata accessor for UUID();
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  __chkstk_darwin(v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA88);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  v22 = os_log_type_enabled(v20, v21);
  v69 = a3;
  v60 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315394;
    v25 = v70;
    (*(v70 + 16))(v18, a2 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID, v15);
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = a4;
    v29 = v28;
    (*(v25 + 8))(v18, v15);
    v30 = sub_10021145C(v26, v29, aBlock);
    a4 = v27;

    *(v23 + 4) = v30;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v20, v21, "Custodian %s saving invitation status: %ld", v23, 0x16u);
    sub_10000839C(v24);
    a3 = v69;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v58 = a10;
    v32 = v15;
    v55 = a9;
    v33 = *(v70 + 16);
    v34 = v60;
    v35 = result;
    v33(v18, v60 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID, v32);
    v57 = *(v34 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow);
    v56 = *(v34 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow + 8);
    v36 = swift_allocObject();
    *(v36 + 16) = a10;
    *(v36 + 24) = a3;
    v37 = type metadata accessor for CustodianshipInfoRecord();
    v38 = swift_allocBox();
    v40 = v39;
    v33(&v39[v37[5]], v18, v32);
    v59 = v18;
    v60 = v32;
    v33(v40, v18, v32);
    v41 = &v40[v37[6]];
    *v41 = a4;
    *(v41 + 1) = v65;
    *&v40[v37[7]] = v68;
    *&v40[v37[8]] = xmmword_10033F8D0;
    v40[v37[9]] = 1;
    sub_100040738(v35 + 96, v73);
    v42 = sub_1000080F8(v73, v73[3]);
    v43 = swift_allocObject();
    v68 = v35;
    swift_weakInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v38;
    *(v44 + 24) = v43;
    v45 = v63;
    *(v44 + 32) = v61;
    *(v44 + 40) = v45;
    v46 = v55;
    *(v44 + 48) = v62;
    *(v44 + 56) = v46;
    *(v44 + 64) = v57;
    *(v44 + 72) = v56;
    *(v44 + 80) = sub_1000D8358;
    *(v44 + 88) = v36;
    v47 = v66;
    v48 = *v42 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage;
    v49 = v64;
    v50 = v67;
    (*(v66 + 16))(v64, v48, v67);

    v51 = v58;

    Dependency.wrappedValue.getter();
    (*(v47 + 8))(v49, v50);
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v52 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1000D83B8;
    *(v53 + 24) = v44;
    aBlock[4] = sub_100016014;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003A8888;
    v54 = _Block_copy(aBlock);

    [v52 accountInfoWithCompletionHandler:v54];
    _Block_release(v54);

    sub_10000839C(v72);
    (*(v70 + 8))(v59, v60);

    sub_10000839C(v73);
  }

  return result;
}

uint64_t sub_1000D322C(void *a1, void *a2)
{
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - v7;
  if (a2)
  {
    if (a1)
    {
      swift_getErrorValue();
      sub_1002DEA80(v10[1]);
      a1 = _convertErrorToNSError(_:)();
    }

    [a2 updateTaskResultWithError:a1];
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v5 + 16))(v8, result + OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter, v4);
    Dependency.wrappedValue.getter();

    (*(v5 + 8))(v8, v4);
    swift_getObjectType();
    sub_100246FA8(a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000D33E0()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  sub_10000839C(v0 + 17);
  v1 = OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsEventFactory;
  v2 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonInvitationHandler()
{
  result = qword_1003DC3E0;
  if (!qword_1003DC3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D3594()
{
  sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1000D36F0(uint64_t a1, char a2, id a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t), uint64_t a13)
{
  v59 = a5;
  v60 = a6;
  v18 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v54 - v21;
  if (a3)
  {
    sub_1000D2850(a1, a2 & 1);
  }

  if (a2)
  {
    v60 = a4;
    v61 = a13;
    v59 = a3;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA88);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = v19;
      v28 = swift_slowAlloc();
      *v26 = 138412290;
      v29 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "Something went wrong while validating account: %@", v26, 0xCu);
      sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);
      v19 = v27;
    }

    v62[0] = a1;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for AACustodianError(0);
    if (swift_dynamicCast())
    {
      v30 = v19;
      v31 = v65;
      v62[0] = v65;
      sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.code.getter();
      v32 = a12;
      if (v65 == -7012)
      {
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "This account is ineligible to be a custodian, marking as ineligible.", v35, 2u);
          v32 = a12;
        }

        a3 = v59;
        if (v59)
        {
          [v59 updateTaskResultWithError:0];
        }

        v32(5);

        v19 = v30;
        goto LABEL_26;
      }

      v19 = v30;
      a12(1);
    }

    else
    {
      a12(1);
    }

    a3 = v59;
    goto LABEL_26;
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      v61 = a13;
      v56 = a10;
      v57 = a12;
      sub_100012004();
      v58 = v19;
      v38 = kAAAnalyticsEventCustodianSetupFamilyMemberCheck;

      v39 = v38;

      v40 = sub_100245D38(v39, a8, a9, v56, a11);
      sub_100040738(v37 + 56, v62);
      v55 = v63;
      v56 = v22;
      v41 = v64;
      v54 = sub_1000080F8(v62, v63);
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      v43[2] = v40;
      v43[3] = v42;
      v44 = v61;
      v43[4] = v57;
      v43[5] = v44;
      v57 = v18;
      v45 = a3;
      v46 = *(v41 + 8);
      v47 = v40;

      v48 = v41;
      v22 = v56;
      v46(v59, v60, sub_1000D8308, v43, v55, v48);
      a3 = v45;
      v18 = v57;
      v19 = v58;

      sub_10000839C(v62);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAA88);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Account is ineligible for custodian auto-acceptance as a result of no manatee availability", v52, 2u);
    }

    a12(1);
  }

LABEL_26:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v19 + 16))(v22, result + OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter, v18);
    Dependency.wrappedValue.getter();

    (*(v19 + 8))(v22, v18);
    swift_getObjectType();
    sub_100246FA8(a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000D3DA4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  if (a3)
  {
    sub_1000D2850(a1, a2 & 1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v10 + 16))(v13, Strong + OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter, v9);
    Dependency.wrappedValue.getter();

    (*(v10 + 8))(v13, v9);
    swift_getObjectType();
    sub_100246FA8(a3);
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA88);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = _convertErrorToNSError(_:)();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch family circle: %@", v18, 0xCu);
      sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);
    }

    v21 = 1;
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Family circle fetch successful.", v25, 2u);
    }

    if (a1)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }
  }

  return a5(v21);
}

uint64_t sub_1000D4114(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v92 = a7;
  v93 = a8;
  v94 = a6;
  v91 = a5;
  v97 = a4;
  v14 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v99 = &v87 - v16;
  v17 = type metadata accessor for CustodianshipInfoRecord();
  v88 = *(v17 - 1);
  v18 = *(v88 + 64);
  v19 = __chkstk_darwin(v17);
  v90 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v98 = &v87 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v87 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v87 - v27;
  v89 = v29;
  __chkstk_darwin(v26);
  v96 = &v87 - v30;
  v31 = swift_projectBox();
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAA88);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v28;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v101 = v37;
      *v36 = 136315138;
      v100 = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v38 = String.init<A>(describing:)();
      v40 = sub_10021145C(v38, v39, &v101);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "Manatee status check failed: %s", v36, 0xCu);
      sub_10000839C(v37);

      v28 = v35;
    }

LABEL_18:
    v45 = 0;
    goto LABEL_19;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAA88);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Manatee is not available to save custodianship with E2E encryption", v49, 2u);
    }

    goto LABEL_18;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100008D04(v41, qword_1003FAA88);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Manatee is available to save custodianship with E2E encryption", v44, 2u);
  }

  v45 = 1;
LABEL_19:
  swift_beginAccess();
  sub_1000C522C(v31, v28);
  v50 = v17[7];
  v51 = (v31 + v17[6]);
  v53 = *v51;
  v52 = v51[1];
  v95 = v31;
  v54 = *(v31 + v50);
  v55 = type metadata accessor for UUID();
  v56 = *(*(v55 - 8) + 16);
  v56(v25, v28, v55);
  v56(&v25[v17[5]], &v28[v17[5]], v55);
  if (v45 == v28[v17[9]])
  {
    v59 = &v28[v17[8]];
    v57 = *v59;
    v58 = v59[1];

    sub_100015D6C(v57, v58);
    sub_1000D8450(v28);
  }

  else
  {

    sub_1000D8450(v28);
    v57 = 0;
    v58 = 0xC000000000000000;
  }

  v60 = &v25[v17[8]];
  *v60 = v57;
  v60[1] = v58;
  v61 = &v25[v17[6]];
  *v61 = v53;
  *(v61 + 1) = v52;
  *&v25[v17[7]] = v54;
  v25[v17[9]] = v45;
  v62 = v96;
  sub_1000C5368(v25, v96);
  v63 = v95;
  swift_beginAccess();
  sub_1000D84AC(v62, v63);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_100008D04(v64, qword_1003FAA88);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 67109120;
    *(v67 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v65, v66, "Saving CustodianshipInfoRecord in manatee? %{BOOL}d", v67, 8u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v69 = result;
    v87 = a12;
    LODWORD(v97) = a10;
    v96 = a9;
    swift_beginAccess();
    v70 = v98;
    sub_1000C522C(v63, v98);
    v71 = swift_allocObject();
    *(v71 + 16) = a11;
    *(v71 + 24) = a12;
    v72 = type metadata accessor for TaskPriority();
    (*(*(v72 - 8) + 56))(v99, 1, 1, v72);
    v73 = v70;
    v74 = v90;
    sub_1000C522C(v73, v90);
    v75 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v76 = (v89 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = (v76 + 31) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    sub_1000C5368(v74, v79 + v75);
    *(v79 + v76) = v69;
    v80 = v79 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v80 = v96;
    *(v80 + 8) = v97 & 1;
    v81 = (v79 + v77);
    v82 = v92;
    v83 = v93;
    v84 = v94;
    *v81 = v91;
    v81[1] = v84;
    v85 = (v79 + v78);
    *v85 = v82;
    v85[1] = v83;
    v86 = (v79 + ((v78 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v86 = sub_1000D8510;
    v86[1] = v71;

    sub_1000BCD5C(0, 0, v99, &unk_100340968, v79);

    return sub_1000D8450(v98);
  }

  return result;
}

uint64_t sub_1000D49A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 208) = v21;
  *(v8 + 176) = v19;
  *(v8 + 192) = v20;
  *(v8 + 432) = a7;
  *(v8 + 160) = a6;
  *(v8 + 168) = a8;
  *(v8 + 144) = a4;
  *(v8 + 152) = a5;
  v9 = type metadata accessor for UUID();
  *(v8 + 216) = v9;
  v10 = *(v9 - 8);
  *(v8 + 224) = v10;
  *(v8 + 232) = *(v10 + 64);
  *(v8 + 240) = swift_task_alloc();
  v11 = *(*(sub_100005814(&qword_1003DABF0, &qword_10033F8A0) - 8) + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 256) = v12;
  v13 = *(v12 - 8);
  *(v8 + 264) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v15 = type metadata accessor for CustodianshipInfoRecord();
  *(v8 + 280) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_1000D4B70, 0, 0);
}

uint64_t sub_1000D4B70()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 144);
  v3 = type metadata accessor for Logger();
  *(v0 + 312) = sub_100008D04(v3, qword_1003FAA88);
  sub_1000C522C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 304);
  if (v6)
  {
    v8 = *(v0 + 280);
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    LODWORD(v8) = *(v7 + *(v8 + 36));
    sub_1000D8450(v7);
    *(v9 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Manatee status is %{BOOL}d for record being saved.", v9, 8u);
  }

  else
  {
    sub_1000D8450(*(v0 + 304));
  }

  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v12 = *(v0 + 256);
  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v17 = *(v0 + 152);

  v18 = OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter;
  *(v0 + 320) = OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter;
  v19 = *(v11 + 16);
  *(v0 + 328) = v19;
  *(v0 + 336) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v10, v17 + v18, v12);
  Dependency.wrappedValue.getter();
  v20 = *(v11 + 8);
  *(v0 + 344) = v20;
  *(v0 + 352) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v10, v12);
  *(v0 + 360) = *(v0 + 88);
  v21 = kAAAnalyticsEventCustodianSetupStoreInvitationToCloud;
  *(v0 + 368) = sub_100012004();

  v22 = v21;

  v23 = sub_100245D38(v22, v16, v15, v14, v13);
  *(v0 + 376) = v23;
  if (v23)
  {
    v24 = *(v0 + 432);
    v25 = *(v0 + 160);
    v26 = v23;
    sub_100245E08(v25, v24 & 1);
  }

  sub_100257274(v22);
  v27 = swift_task_alloc();
  *(v0 + 384) = v27;
  *v27 = v0;
  v27[1] = sub_1000D52AC;
  v29 = *(v0 + 144);
  v28 = *(v0 + 152);

  return sub_1000D645C(v27, v28, v29);
}

uint64_t sub_1000D52AC()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_1000D53C0;
  }

  else
  {
    v3 = sub_1000D585C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D53C0()
{
  v1 = v0[49];
  v0[50] = v1;
  swift_getErrorValue();
  v2 = v0[2];
  v3 = v0[4];
  v4 = sub_1002DEA80(v0[3]);
  swift_getErrorValue();
  v5 = v0[5];
  v6 = v0[7];
  v7 = sub_1002DEC1C(v0[6]);
  v8 = v0[47];
  if (!v7)
  {
    swift_errorRetain();
    if (!v8)
    {
      goto LABEL_9;
    }

    v8 = v0[47];
    if (v4)
    {
      v9 = v8;
      swift_errorRetain();
      v10 = _convertErrorToNSError(_:)();

      v8 = v0[47];
LABEL_8:
      v11 = v0[45];
      [v9 updateTaskResultWithError:v10];

      swift_getObjectType();
      v12 = v9;
      sub_100246FA8(v8);
      goto LABEL_9;
    }

LABEL_7:
    v9 = v8;
    v10 = 0;
    goto LABEL_8;
  }

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_9:
  v13 = v0[47];
  v14 = v0[45];
  swift_willThrow();
  swift_unknownObjectRelease();

  v0[14] = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v15 = v0[15];
    v0[51] = v15;
    if (sub_1002DECC8(v15))
    {
      v16 = v0[39];
      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Conflict occured when saving invitation, fetching from cloud. %@", v19, 0xCu);
        sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);
      }

      v22 = v0[19];

      v23 = *sub_1000080F8((v22 + 96), *(v22 + 120));
      v24 = swift_task_alloc();
      v0[52] = v24;
      *v24 = v0;
      v24[1] = sub_1000D5D08;
      v25 = v0[36];
      v26 = v0[18];

      return sub_10022C868(v25, v26);
    }
  }

  v28 = v0[39];
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = _convertErrorToNSError(_:)();
    *(v31 + 4) = v33;
    *v32 = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unable to persist invitation: %@", v31, 0xCu);
    sub_100008D3C(v32, &unk_1003D9140, &qword_10033E640);
  }

  v35 = v0[25];
  v34 = v0[26];

  swift_errorRetain();
  v35(v1);

  v37 = v0[37];
  v36 = v0[38];
  v38 = v0[36];
  v39 = v0[34];
  v41 = v0[30];
  v40 = v0[31];

  v42 = v0[1];

  return v42();
}

uint64_t sub_1000D585C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  if (v1)
  {
    [*(v0 + 376) updateTaskResultWithError:0];
    swift_getObjectType();
    v3 = v1;
    sub_100246FA8(v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v0 + 360);
    swift_unknownObjectRelease();
  }

  v5 = *(v0 + 312);
  sub_1000C522C(*(v0 + 144), *(v0 + 296));
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 296);
  if (v8)
  {
    v10 = *(v0 + 280);
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    v12 = *(v9 + *(v10 + 28));
    sub_1000D8450(v9);
    *(v11 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Saved invitation status: %ld.", v11, 0xCu);
  }

  else
  {
    sub_1000D8450(*(v0 + 296));
  }

  v13 = *(v0 + 280);
  v14 = *(v0 + 144);

  v15 = *(v14 + *(v13 + 28));
  switch(v15)
  {
    case 1:
      v32 = &kAAAnalyticsEventCustodianSetupInvitationProcessedForManualAccept;
LABEL_13:
      v33 = *(v0 + 368);
      v35 = *(v0 + 184);
      v34 = *(v0 + 192);
      v37 = *(v0 + 168);
      v36 = *(v0 + 176);
      v38 = *v32;

      v39 = sub_100245D38(v38, v37, v36, v35, v34);
      v40 = v39;
      if (v39)
      {
        v41 = *(v0 + 432);
        v42 = *(v0 + 160);
        [v39 updateTaskResultWithError:0];
        sub_100245E08(v42, v41 & 1);
      }

      goto LABEL_16;
    case 5:
      v32 = &kAAAnalyticsEventCustodianSetupAccountNotEligible;
      goto LABEL_13;
    case 2:
      v16 = *(v0 + 280);
      v18 = *(v0 + 240);
      v17 = *(v0 + 248);
      v19 = *(v0 + 224);
      v59 = *(v0 + 232);
      v20 = *(v0 + 216);
      v68 = *(v0 + 208);
      v67 = *(v0 + 200);
      v21 = *(v0 + 176);
      v65 = *(v0 + 184);
      v66 = *(v0 + 192);
      v63 = *(v0 + 432);
      v64 = *(v0 + 168);
      v62 = *(v0 + 160);
      v23 = *(v0 + 144);
      v22 = *(v0 + 152);
      [objc_opt_self() postRecoveryContactChangedNotification];
      v24 = *(v16 + 20);
      v25 = (v23 + *(v16 + 24));
      v60 = v25[1];
      v61 = *v25;
      v26 = type metadata accessor for TaskPriority();
      (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
      (*(v19 + 16))(v18, v23 + v24, v20);
      v27 = (*(v19 + 80) + 88) & ~*(v19 + 80);
      v28 = (v59 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = v22;
      *(v29 + 40) = v62;
      *(v29 + 48) = v63 & 1;
      *(v29 + 56) = v64;
      *(v29 + 64) = v21;
      *(v29 + 72) = v65;
      *(v29 + 80) = v66;
      (*(v19 + 32))(v29 + v27, v18, v20);
      v30 = (v29 + v28);
      *v30 = v61;
      v30[1] = v60;
      v31 = (v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v31 = v67;
      v31[1] = v68;

      sub_1000BCD5C(0, 0, v17, &unk_100340978, v29);

      goto LABEL_17;
  }

  v40 = 0;
LABEL_16:
  v44 = *(v0 + 344);
  v43 = *(v0 + 352);
  v45 = *(v0 + 336);
  v46 = *(v0 + 272);
  v47 = *(v0 + 256);
  v49 = *(v0 + 200);
  v48 = *(v0 + 208);
  (*(v0 + 328))(v46, *(v0 + 152) + *(v0 + 320), v47);
  Dependency.wrappedValue.getter();
  v44(v46, v47);
  v50 = *(v0 + 136);
  swift_getObjectType();
  sub_100246FA8(v40);
  swift_unknownObjectRelease();
  v49(0);

LABEL_17:
  v52 = *(v0 + 296);
  v51 = *(v0 + 304);
  v53 = *(v0 + 288);
  v54 = *(v0 + 272);
  v56 = *(v0 + 240);
  v55 = *(v0 + 248);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1000D5D08()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v6 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = sub_1000D6278;
  }

  else
  {
    sub_1000D8450(*(v2 + 288));
    v4 = sub_1000D5E24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D5E24()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  v3 = *(v0 + 312);
  sub_1000C522C(*(v0 + 144), *(v0 + 296));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v8 = *(v0 + 280);
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = *(v7 + *(v8 + 28));
    sub_1000D8450(v7);
    *(v9 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Saved invitation status: %ld.", v9, 0xCu);
  }

  else
  {
    sub_1000D8450(*(v0 + 296));
  }

  v11 = *(v0 + 280);
  v12 = *(v0 + 144);

  v13 = *(v12 + *(v11 + 28));
  switch(v13)
  {
    case 1:
      v30 = &kAAAnalyticsEventCustodianSetupInvitationProcessedForManualAccept;
LABEL_10:
      v31 = *(v0 + 368);
      v33 = *(v0 + 184);
      v32 = *(v0 + 192);
      v35 = *(v0 + 168);
      v34 = *(v0 + 176);
      v36 = *v30;

      v37 = sub_100245D38(v36, v35, v34, v33, v32);
      v38 = v37;
      if (v37)
      {
        v39 = *(v0 + 432);
        v40 = *(v0 + 160);
        [v37 updateTaskResultWithError:0];
        sub_100245E08(v40, v39 & 1);
      }

      goto LABEL_13;
    case 5:
      v30 = &kAAAnalyticsEventCustodianSetupAccountNotEligible;
      goto LABEL_10;
    case 2:
      v14 = *(v0 + 280);
      v16 = *(v0 + 240);
      v15 = *(v0 + 248);
      v17 = *(v0 + 224);
      v57 = *(v0 + 232);
      v18 = *(v0 + 216);
      v66 = *(v0 + 208);
      v65 = *(v0 + 200);
      v19 = *(v0 + 176);
      v63 = *(v0 + 184);
      v64 = *(v0 + 192);
      v61 = *(v0 + 432);
      v62 = *(v0 + 168);
      v60 = *(v0 + 160);
      v21 = *(v0 + 144);
      v20 = *(v0 + 152);
      [objc_opt_self() postRecoveryContactChangedNotification];
      v22 = *(v14 + 20);
      v23 = (v21 + *(v14 + 24));
      v58 = v23[1];
      v59 = *v23;
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
      (*(v17 + 16))(v16, v21 + v22, v18);
      v25 = (*(v17 + 80) + 88) & ~*(v17 + 80);
      v26 = (v57 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = v20;
      *(v27 + 40) = v60;
      *(v27 + 48) = v61 & 1;
      *(v27 + 56) = v62;
      *(v27 + 64) = v19;
      *(v27 + 72) = v63;
      *(v27 + 80) = v64;
      (*(v17 + 32))(v27 + v25, v16, v18);
      v28 = (v27 + v26);
      *v28 = v59;
      v28[1] = v58;
      v29 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v29 = v65;
      v29[1] = v66;

      sub_1000BCD5C(0, 0, v15, &unk_100340978, v27);

      goto LABEL_14;
  }

  v38 = 0;
LABEL_13:
  v42 = *(v0 + 344);
  v41 = *(v0 + 352);
  v43 = *(v0 + 336);
  v44 = *(v0 + 272);
  v45 = *(v0 + 256);
  v47 = *(v0 + 200);
  v46 = *(v0 + 208);
  (*(v0 + 328))(v44, *(v0 + 152) + *(v0 + 320), v45);
  Dependency.wrappedValue.getter();
  v42(v44, v45);
  v48 = *(v0 + 136);
  swift_getObjectType();
  sub_100246FA8(v38);
  swift_unknownObjectRelease();
  v47(0);

LABEL_14:
  v50 = *(v0 + 296);
  v49 = *(v0 + 304);
  v51 = *(v0 + 288);
  v52 = *(v0 + 272);
  v54 = *(v0 + 240);
  v53 = *(v0 + 248);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_1000D6278()
{
  v1 = v0[53];
  v2 = v0[39];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[53];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error fetching invitation after conflict: %@", v6, 0xCu);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);
  }

  v9 = v0[53];
  v10 = v0[50];
  v11 = v0[51];
  v13 = v0[25];
  v12 = v0[26];

  swift_getErrorValue();
  v14 = v0[8];
  sub_100255F6C(-7099, v0[9], v0[10]);
  v13();

  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[36];
  v18 = v0[34];
  v20 = v0[30];
  v19 = v0[31];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000D645C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = type metadata accessor for CustodianshipInfoRecord();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000D64F0, 0, 0);
}

uint64_t sub_1000D64F0()
{
  v1 = v0[4];
  v0[2] = *sub_1000080F8((v0[3] + 96), *(v0[3] + 120));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1000D65F4;
  v6 = v0[5];
  v5 = v0[6];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0x293A5F2865766173, 0xE800000000000000, sub_1000D8AF8, v2, v6);
}

uint64_t sub_1000D65F4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1000D683C;
  }

  else
  {
    v5 = *(v2 + 56);
    sub_1000D8450(*(v2 + 48));

    v4 = sub_1000D6718;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D6718()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Invitation, CustodianshipInfoRecord, saved successfully", v4, 2u);
  }

  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000D683C()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1000D68A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v17;
  *(v8 + 120) = v16;
  *(v8 + 104) = v15;
  *(v8 + 88) = v14;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 216) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 144) = v9;
  v10 = *(v9 - 8);
  *(v8 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_1000D699C, 0, 0);
}

uint64_t sub_1000D699C()
{
  v32 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  (*(v2 + 16))(v1, *(v0 + 56) + OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__analyticsReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  *(v0 + 168) = *(v0 + 40);
  v8 = kAAAnalyticsEventCustodianSetupSendAutoAcceptInvitationMessage;
  sub_100012004();

  v9 = v8;

  v10 = sub_100245D38(v9, v7, v6, v5, v4);
  *(v0 + 176) = v10;
  if (v10)
  {
    v11 = *(v0 + 216);
    v12 = *(v0 + 64);
    v13 = v10;
    sub_100245E08(v12, v11 & 1);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  *(v0 + 184) = sub_100008D04(v14, qword_1003FAA40);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10021145C(0xD000000000000019, 0x800000010032E210, &v31);
    _os_log_impl(&_mh_execute_header, v15, v16, "Performing: %s...", v17, 0xCu);
    sub_10000839C(v18);
  }

  sub_100257274(v9);
  v19 = *(v0 + 104);
  v20 = *(v0 + 216);
  v21 = *(v0 + 56);
  v22 = objc_allocWithZone(AACustodianInvitationResponseContext);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v24 = [v22 initWithCustodianID:isa didAccept:1];
  *(v0 + 192) = v24;

  v25 = *sub_1000080F8((v21 + 16), *(v21 + 40));
  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_1000D6EF0;
  v27 = *(v0 + 112);
  v28 = *(v0 + 120);
  v29 = *(v0 + 64);

  return sub_1002627F8(v24, v27, v28, v29, v20 & 1);
}

uint64_t sub_1000D6EF0()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1000D71A8;
  }

  else
  {
    v3 = sub_1000D7004;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D7004()
{
  v15 = v0;
  v1 = *(v0 + 184);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD000000000000019, 0x800000010032E210, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "✅ %s - successfully completed!", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v0 + 176);
  if (v6)
  {
    v7 = *(v0 + 168);
    [*(v0 + 176) updateTaskResultWithError:0];
    swift_getObjectType();
    v8 = v6;
    sub_100246FA8(v6);
  }

  v9 = *(v0 + 168);
  v10 = *(v0 + 136);
  (*(v0 + 128))(0);
  swift_unknownObjectRelease();
  v11 = *(v0 + 160);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000D71A8()
{
  v23 = v0;

  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(0xD000000000000019, 0x800000010032E210, &v22);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "❌ %s - failed with error: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v9 = *(v0 + 176);
  swift_getErrorValue();
  v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  sub_1002DEA80(*(v0 + 24));
  if (v9)
  {
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v14 = v12;
    swift_errorRetain();
    v15 = _convertErrorToNSError(_:)();
    [v14 updateTaskResultWithError:v15];

    swift_getObjectType();
    sub_100246FA8(v12);
  }

  else
  {
    swift_errorRetain();
    v14 = 0;
  }

  v16 = *(v0 + 168);
  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  swift_willThrow();

  v18(v1);
  swift_unknownObjectRelease();

  v19 = *(v0 + 160);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000D7428(uint64_t a1)
{
  v2 = type metadata accessor for CustodianshipInfoRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v11 - v8);
  sub_100012D04(a1, v11 - v8, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000C5368(v9, v5);
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000D758C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = *a2;
  (*(v7 + 16))(&v15 - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  sub_100230FD4(a3, sub_1000D8B94, v13);
}

uint64_t sub_1000D76E0(char *a1, uint64_t a2, unint64_t a3)
{
  v97 = a2;
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v82 - v8;
  v100 = type metadata accessor for UUID();
  v96 = *(v100 - 8);
  v10 = *(v96 + 64);
  v11 = __chkstk_darwin(v100);
  v99 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v12;
  __chkstk_darwin(v11);
  v95 = &v82 - v13;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA88);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = os_log_type_enabled(v15, v16);
  v94 = a3;
  v90 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v101 = v6;
    v102[0] = v19;
    v20 = v100;
    v93 = v19;
    *v18 = 136315394;
    v21 = v95;
    v22 = v96;
    (*(v96 + 16))(v95, &a1[OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID], v20);
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v26 = v20;
    v6 = v101;
    (*(v22 + 8))(v21, v26);
    v27 = sub_10021145C(v23, v25, v102);

    *(v18 + 4) = v27;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(v97, v94, v102);
    _os_log_impl(&_mh_execute_header, v15, v16, "Received invitation to Custodian %s from %s", v18, 0x16u);
    swift_arrayDestroy();

    a3 = v94;
  }

  (v6[2])(v9, v98 + OBJC_IVAR____TtC13appleaccountd23DaemonInvitationHandler__accountStore, v5);
  Dependency.wrappedValue.getter();
  (v6[1])(v9, v5);
  v28 = [*(*sub_1000080F8(v102 v103) + 16)];
  v29 = v96;
  if (v28 && (v30 = v28, v31 = [v28 aa_altDSID], v30, v31))
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  sub_10000839C(v102);
  v35 = v95;
  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  v88 = *(v29 + 8);
  v89 = v29 + 8;
  v88(v35, v100);
  v39 = kAAAnalyticsEventCustodianSetupProcessInvitation;
  v93 = v32;
  v40 = a3;
  if (v34)
  {
    swift_bridgeObjectRetain_n();
    v41 = v39;

    v42 = String._bridgeToObjectiveC()();
    v43 = v34;
  }

  else
  {
    v43 = 0;
    swift_bridgeObjectRetain_n();
    v44 = v39;
    v42 = 0;
  }

  v45 = objc_opt_self();
  v46 = String._bridgeToObjectiveC()();
  v47 = v38;

  v87 = v45;
  v48 = [v45 analyticsEventWithName:v39 altDSID:v42 flowID:v46];

  v49 = v90;
  v101 = v48;
  if (v48)
  {
    v50 = *&v90[OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow];
    v51 = v90[OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow + 8];
    v52 = v101;
    sub_100245E08(v50, v51);
  }

  v86 = *(v29 + 16);
  v86(v99, &v49[OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID], v100);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  *(v54 + 2) = v49;
  *(v54 + 3) = v53;
  v92 = v53;
  *(v54 + 4) = v97;
  *(v54 + 5) = v40;
  *(v54 + 6) = v93;
  *(v54 + 7) = v43;
  *(v54 + 8) = v36;
  *(v54 + 9) = v47;
  v55 = v47;
  v83 = v54;
  *(v54 + 10) = v101;
  v56 = kAAAnalyticsEventCustodianSetupAccountEligibilityCheck;
  v85 = v43;
  if (v43)
  {
    swift_bridgeObjectRetain_n();

    v57 = v101;

    v58 = v56;
    v59 = String._bridgeToObjectiveC()();
  }

  else
  {

    v60 = v101;

    v61 = v56;
    v59 = 0;
  }

  v84 = v36;
  v62 = String._bridgeToObjectiveC()();

  v63 = [v87 analyticsEventWithName:v56 altDSID:v59 flowID:v62];

  sub_100040738(v98 + 136, v102);
  v90 = sub_1000080F8(v102, v103);
  v64 = swift_allocObject();
  v87 = v64;
  swift_weakInit();
  v65 = v95;
  v66 = v100;
  v86(v95, v99, v100);
  v67 = v96;
  v68 = (*(v96 + 80) + 48) & ~*(v96 + 80);
  v69 = (v91 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = v55;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  *(v71 + 2) = v63;
  *(v71 + 3) = v64;
  v72 = v94;
  *(v71 + 4) = v97;
  *(v71 + 5) = v72;
  (*(v67 + 32))(&v71[v68], v65, v66);
  v73 = &v71[v69];
  v74 = v85;
  *v73 = v93;
  v73[1] = v74;
  v75 = &v71[v70];
  v76 = v98;
  *v75 = v84;
  v75[1] = v76;
  v77 = &v71[(v70 + 23) & 0xFFFFFFFFFFFFFFF8];
  v78 = v83;
  *v77 = sub_1000D8044;
  v77[1] = v78;
  v79 = *v90;

  v80 = v63;

  sub_10003A550(sub_1000D8198, v71);

  v88(v99, v66);

  sub_10000839C(v102);
}

uint64_t sub_1000D7FAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000D7FE4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1000D807C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 24);

  v8 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4 + 8);

  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16);
}

uint64_t sub_1000D8198(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000D36F0(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000D8278(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D82C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000D8318()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000D8360()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1000D8400()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000D8438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D8450(uint64_t a1)
{
  v2 = type metadata accessor for CustodianshipInfoRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D84AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianshipInfoRecord();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D8510()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000D8538()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v9(v7 + v1[7], v8);
  v10 = *(v7 + v1[8] + 8);

  sub_100012324(*(v7 + v1[10]), *(v7 + v1[10] + 8));
  v11 = *(v0 + v3);

  v12 = *(v0 + v4 + 8);

  v13 = *(v0 + v5 + 8);

  v14 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16);
}

uint64_t sub_1000D86C8(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v1 + 24);
  v23 = *(v1 + 16);
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v1 + v6);
  v10 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = *v10;
  v11 = *(v10 + 8);
  v13 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = *(v1 + v9);
  v17 = *(v1 + v9 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_10000EF88;

  return sub_1000D49A4(a1, v23, v22, v1 + v5, v21, v20, v11, v13);
}

uint64_t sub_1000D8860()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 8);

  v9 = *(v0 + 10);

  (*(v2 + 8))(&v0[v3], v1);
  v10 = *&v0[v4 + 8];

  v11 = *&v0[v5 + 8];

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_1000D8970(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 64) + ((*(v4 + 80) + 88) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v1 + 24);
  v21 = *(v1 + 16);
  v19 = *(v1 + 32);
  v18 = *(v1 + 40);
  v17 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v9 = *(v1 + 72);
  v8 = *(v1 + 80);
  v10 = *(v1 + v5);
  v11 = *(v1 + v5 + 8);
  v12 = (v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000082A8;

  return sub_1000D68A8(a1, v21, v20, v19, v18, v17, v6, v7);
}

uint64_t sub_1000D8B00()
{
  v1 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000D8B94(uint64_t a1)
{
  v2 = *(*(sub_100005814(&unk_1003D9260, &unk_10033ECE0) - 8) + 80);

  return sub_1000D7428(a1);
}

uint64_t sub_1000D8C14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v87 = a3;
  v71 = a2;
  v6 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v92 = &v71 - v8;
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v71 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v75 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v71 - v20;
  v85 = v22;
  __chkstk_darwin(v19);
  v24 = &v71 - v23;
  v78 = OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_accepted;
  if (*(a1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_accepted))
  {
    v25 = &kAAAnalyticsEventCustodianSetupProcessInvitationAcceptanceResponse;
  }

  else
  {
    v25 = &kAAAnalyticsEventCustodianSetupProcessInvitationDeclineResponse;
  }

  v86 = *v25;
  v82 = *(a1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow);
  v79 = (a1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow);
  v81 = *(a1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow + 8);
  UUID.init()();
  v80 = UUID.uuidString.getter();
  v83 = v26;
  v84 = v24;
  v27 = v14;
  v89 = v15[1];
  v90 = v15 + 1;
  v89(v24, v14);
  v28 = *(v10 + 16);
  v88 = v4;
  v28(v13, v4 + OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__accountStore, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v29 = [*(*sub_1000080F8(v93 v93[3]) + 16)];
  if (v29 && (v30 = v29, v31 = [v29 aa_altDSID], v30, v31))
  {
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v32;
  }

  else
  {
    v77 = 0;
    v76 = 0;
  }

  v33 = v14;
  v34 = v87;
  sub_10000839C(v93);
  v87 = v15;
  v35 = v15[2];
  v35(v21, a1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_custodianID, v27);
  v36 = v75;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_100008D04(v37, qword_1003FAA88);
  v91 = v21;
  v74 = v35;
  v35(v36, v21, v33);
  swift_retain_n();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  v40 = os_log_type_enabled(v38, v39);
  v73 = v33;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v41 = 136315650;
    sub_1000DAD7C();
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v33;
    v45 = v44;
    v89(v36, v43);
    v46 = sub_10021145C(v42, v45, v93);

    *(v41 + 4) = v46;
    *(v41 + 12) = 1024;
    v47 = v78;
    LODWORD(v46) = *(a1 + v78);

    *(v41 + 14) = v46;

    *(v41 + 18) = 2080;
    *(v41 + 20) = sub_10021145C(v71, v34, v93);
    _os_log_impl(&_mh_execute_header, v38, v39, "Custodian invitation %s was accepted %{BOOL}d by %s", v41, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v89(v36, v33);
    v47 = v78;
  }

  v72 = a1;
  if (*(a1 + v47))
  {
    v48 = 2;
  }

  else
  {
    v48 = 4;
  }

  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v78 = swift_allocBox();
  v51 = v50;
  v52 = v91;
  v53 = v73;
  v54 = v74;
  v74(v50, v91, v73);
  *&v51[updated[5]] = v48;
  v51[updated[6]] = 1;
  v51[updated[7]] = 0;
  v55 = &v51[updated[8]];
  *&v51[updated[9]] = 1;
  v56 = &v51[updated[10]];
  v57 = v79;
  v58 = v80;
  v59 = v83;
  *v55 = v80;
  v55[1] = v59;
  v60 = *v57;
  LOBYTE(v57) = *(v57 + 8);
  *v56 = v60;
  v56[8] = v57;
  v61 = type metadata accessor for TaskPriority();
  (*(*(v61 - 8) + 56))(v92, 1, 1, v61);
  v62 = v84;
  v54(v84, v52, v53);
  v63 = v87;
  v64 = (*(v87 + 80) + 112) & ~*(v87 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v65 + 24) = 0;
  v66 = v86;
  *(v65 + 32) = v88;
  *(v65 + 40) = v66;
  *(v65 + 48) = v82;
  *(v65 + 56) = v81;
  v67 = v76;
  *(v65 + 64) = v77;
  *(v65 + 72) = v67;
  *(v65 + 80) = v58;
  *(v65 + 88) = v59;
  v68 = v72;
  *(v65 + 96) = v78;
  *(v65 + 104) = v68;
  (v63[4])(v65 + v64, v62, v53);

  v69 = v66;

  sub_10001359C(0, 0, v92, &unk_100340A10, v65);

  v89(v91, v53);
}

uint64_t sub_1000D93C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 112) = v16;
  *(v8 + 120) = v17;
  *(v8 + 104) = v15;
  *(v8 + 88) = v14;
  *(v8 + 232) = a7;
  *(v8 + 72) = a6;
  *(v8 + 80) = a8;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 128) = v9;
  v10 = *(v9 - 8);
  *(v8 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  type metadata accessor for CustodianStatusUpdateRequest(0);
  *(v8 + 152) = swift_projectBox();

  return _swift_task_switch(sub_1000D94C8, 0, 0);
}

uint64_t sub_1000D94C8()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  (*(v2 + 16))(v1, *(v0 + 56) + OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__analyticsReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  *(v0 + 160) = *(v0 + 40);
  if (v4)
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 64);

    v9 = String._bridgeToObjectiveC()();

    v10 = *(v0 + 104);
    v11 = *(v0 + 64);
  }

  else
  {
    v12 = *(v0 + 104);
    v11 = *(v0 + 64);

    v9 = 0;
  }

  v13 = *(v0 + 96);
  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 analyticsEventWithName:v11 altDSID:v9 flowID:v15];
  *(v0 + 168) = v16;

  if (v16)
  {
    v17 = *(v0 + 232);
    v18 = *(v0 + 72);
    v19 = v16;
    sub_100245E08(v18, v17 & 1);
  }

  sub_100257274(*(v0 + 64));
  v20 = *(v0 + 152);
  v21 = *(v0 + 56);
  v22 = swift_task_alloc();
  *(v0 + 176) = v22;
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  v23 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v24 = swift_task_alloc();
  *(v0 + 184) = v24;
  *v24 = v0;
  v24[1] = sub_1000D9838;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, 0, 0, 0xD000000000000010, 0x800000010032E290, sub_1000DADD4, v22, &type metadata for () + 8);
}

uint64_t sub_1000D9838()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1000D9BC0;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_1000D9954;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D9954()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 160);
    [*(v0 + 168) updateTaskResultWithError:0];
    swift_getObjectType();
    v3 = v1;
    sub_100246FA8(v1);
  }

  v4 = *(v0 + 160);
  v5 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = *(v0 + 232);
  swift_unknownObjectRelease();
  if ((*(v5 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_accepted) & 1) != 0 || (v7 & 1) != 0 || v6 != 13)
  {
    v17 = *(v0 + 144);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v8 = sub_1000C0C98(*(*(v0 + 112) + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason));
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    *(v0 + 200) = sub_100008D04(v9, qword_1003FAA88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v10, v11, "Owner received tear-down from custodian, reason: %ld", v12, 0xCu);
    }

    v13 = *(v0 + 56);

    *(v0 + 208) = *(v13 + OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler_metadataController);

    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_1000D9D08;
    v15 = *(v0 + 120);

    return sub_100014544(v8, 0, v15);
  }
}

uint64_t sub_1000D9BC0()
{
  v1 = v0[22];

  v2 = v0[24];
  v3 = v0[21];
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[4];
  sub_1002DEA80(v0[3]);
  if (v3)
  {
    v7 = v0[20];
    v6 = v0[21];
    v8 = v6;
    swift_errorRetain();
    v9 = _convertErrorToNSError(_:)();
    [v8 updateTaskResultWithError:v9];

    swift_getObjectType();
    v10 = v8;
    sub_100246FA8(v6);
  }

  else
  {
    swift_errorRetain();
  }

  v11 = v0[20];
  v12 = v0[21];
  v13 = v0[18];
  swift_willThrow();
  swift_unknownObjectRelease();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000D9D08()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000D9E4C, 0, 0);
  }

  else
  {
    v4 = v3[26];

    v5 = v3[18];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1000D9E4C()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Problem handling tear-down from custodian: %@", v8, 0xCu);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
  }

  else
  {
  }

  v11 = v0[18];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D9FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v38 = a1;
  v3 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v39 = &v34 - v5;
  v6 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v37 = *(updated - 8);
  v12 = *(v37 + 64);
  v13 = __chkstk_darwin(updated - 8);
  v14 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = sub_100005814(&qword_1003DB620, &unk_10033FAA0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  (*(v18 + 16))(&v34 - v20, v35 + OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__statusUpdater, v17);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v21, v17);
  v22 = sub_1000080F8(v40, v40[3]);
  v23 = v36;
  swift_beginAccess();
  sub_1000DADDC(v23, v16);
  (*(v7 + 16))(v10, v38, v6);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  (*(v7 + 32))(v25 + v24, v10, v6);
  v26 = *v22;
  v27 = type metadata accessor for TaskPriority();
  v28 = v39;
  (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
  sub_1000DADDC(v16, v14);
  v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v30 = (v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  sub_1000DB06C(v14, v31 + v29);
  *(v31 + v30) = v26;
  v32 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_1000DAED4;
  v32[1] = v25;

  sub_1000BCD5C(0, 0, v28, &unk_10033F360, v31);

  sub_1000DB214(v16);
  return sub_10000839C(v40);
}

uint64_t sub_1000DA3E8(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v18 - v4);
  sub_1000DB270(a1, v18 - v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA88);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error updating status %@", v10, 0xCu);
      sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);
    }

    v18[1] = v6;
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Status update successful!", v17, 2u);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    CheckedContinuation.resume(returning:)();
    return sub_100008D3C(v5, &unk_1003DA200, &unk_10033FA80);
  }
}

uint64_t sub_1000DA6C8()
{
  v1 = OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__statusUpdater;
  v2 = sub_100005814(&qword_1003DB620, &unk_10033FAA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__analyticsReporter;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler_metadataController);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonInvitationResponseHandler()
{
  result = qword_1003DC5D8;
  if (!qword_1003DC5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DA86C()
{
  sub_10000DAB8(319, &unk_1003DB270, &unk_1003D98A0, &unk_10033FA20);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1000DA9C4()
{
  sub_100005814(&unk_1003D98A0, &unk_10033FA20);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  v1 = OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler_metadataController;
  v2 = type metadata accessor for CustodianMetadataController(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_100005814(&unk_1003D98F0, &qword_10033E9C0);
  Dependency.init(dependencyId:config:)();
  v6 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_encoder;
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v5 + v6) = JSONEncoder.init()();
  v10 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder;
  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v5 + v10) = JSONDecoder.init()();
  *(v0 + v1) = v5;
  return v0;
}

uint64_t sub_1000DAB3C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + 72);

  v8 = *(v0 + 88);

  v9 = *(v0 + 96);

  v10 = *(v0 + 104);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000DAC30(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v15 = *(v1 + 88);
  v16 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = v1 + ((*(v3 + 80) + 112) & ~*(v3 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1000082A8;

  return sub_1000D93C4(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000DAD7C()
{
  result = qword_1003D9150;
  if (!qword_1003D9150)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D9150);
  }

  return result;
}

uint64_t sub_1000DADDC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1000DAE40()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000DAED4(uint64_t a1)
{
  v2 = *(*(sub_100005814(&qword_1003DABC0, &unk_100342840) - 8) + 80);

  return sub_1000DA3E8(a1);
}

uint64_t sub_1000DAF50()
{
  v1 = (type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[10] + 8);

  v9 = *(v0 + v3);

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000DB06C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_1000DB0D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000082A8;

  return sub_10013F41C(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1000DB214(uint64_t a1)
{
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_1000DB270(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000DB2E0(uint64_t a1)
{
  v47 = a1;
  v2 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v46 = &v45 - v4;
  v49 = type metadata accessor for UUID();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v49);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v45 - v12;
  v14 = *(v10 + 16);
  v48 = v1;
  v14(&v45 - v12, v1 + OBJC_IVAR____TtC13appleaccountd29DaemonCustodianRemovedHandler__accountStore, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v15 = [*(*sub_1000080F8(v50 v51) + 16)];
  if (v15 && (v16 = v15, v17 = [v15 aa_altDSID], v16, v17))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  sub_10000839C(v50);
  UUID.init()();
  UUID.uuidString.getter();
  v20 = *(v5 + 8);
  v20(v8, v49);
  v21 = kAAAnalyticsEventCustodianSetupProcessRemoveCustodian;
  v22 = kAAAnalyticsEventCustodianSetupProcessRemoveCustodian;
  if (v19)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_opt_self();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v24 analyticsEventWithName:v21 altDSID:v23 flowID:v25];

  v27 = v47;
  if (v26)
  {
    v28 = *(v47 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow);
    v29 = *(v47 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow + 8);
    v30 = v26;
    sub_100245E08(v28, v29);
  }

  sub_100040738(v48 + 56, v50);
  v31 = sub_1000080F8(v50, v51);
  v32 = v49;
  (*(v5 + 16))(v8, v27 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v49);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v26;
  v34[4] = v27;
  v35 = *v31;
  v36 = v26;

  sub_1000259E4(v8, sub_1000DCBF8, v34);

  v20(v8, v32);

  sub_10000839C(v50);
  if ((*(v27 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow + 8) & 1) == 0 && *(v27 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow) == 12)
  {
    v37 = sub_1000C0C98(*(v27 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason));
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAA88);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v39, v40, "Custodian received tear-down from owner, reason: %ld", v41, 0xCu);
    }

    v42 = type metadata accessor for TaskPriority();
    v43 = v46;
    (*(*(v42 - 8) + 56))(v46, 1, 1, v42);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    *(v44 + 32) = v48;
    *(v44 + 40) = v37;
    *(v44 + 48) = v27;

    sub_1000BCD5C(0, 0, v43, &unk_100340AB8, v44);
  }
}

void sub_1000DB8F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v72 = a4;
  v75 = a3;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  __chkstk_darwin(v6);
  v68 = &v67 - v8;
  v9 = type metadata accessor for UUID();
  v73 = *(v9 - 8);
  v10 = *(v73 + 64);
  __chkstk_darwin(v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianshipInfoRecord();
  v14 = *(*(v13 - 1) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v67 - v19;
  __chkstk_darwin(v18);
  v22 = &v67 - v21;
  v23 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v67 - v25);
  swift_beginAccess();
  v74 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v71 = Strong;
    sub_1000DCD18(a1, v26);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *v26;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100008D04(v29, qword_1003FAA88);
      v30 = v72;

      swift_errorRetain();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v76[0] = v67;
        *v33 = 136315394;
        v35 = v73;
        (*(v73 + 16))(v12, v30 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v9);
        sub_1000DAD7C();
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        (*(v35 + 8))(v12, v9);
        v39 = sub_10021145C(v36, v38, v76);

        *(v33 + 4) = v39;
        *(v33 + 12) = 2112;
        v40 = _convertErrorToNSError(_:)();
        *(v33 + 14) = v40;
        *v34 = v40;
        _os_log_impl(&_mh_execute_header, v31, v32, "Error fetching custodianship %s: %@", v33, 0x16u);
        sub_100008D3C(v34, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v67);
      }

      v41 = v75;
      if (v75)
      {
        v42 = _convertErrorToNSError(_:)();
        [v41 updateTaskResultWithError:v42];
      }

      swift_beginAccess();
      v43 = swift_weakLoadStrong();
      if (v43)
      {
        v44 = v68;
        v45 = v69;
        v46 = v70;
        (*(v69 + 16))(v68, v43 + OBJC_IVAR____TtC13appleaccountd29DaemonCustodianRemovedHandler__analyticsReporter, v70);
        Dependency.wrappedValue.getter();

        (*(v45 + 8))(v44, v46);
        swift_getObjectType();
        sub_100246FA8(v41);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      sub_1000C5368(v26, v22);
      sub_1000C522C(v22, v17);
      v51 = &v22[v13[6]];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = *(v73 + 16);
      v54(v20, v17, v9);
      v54(&v20[v13[5]], &v17[v13[5]], v9);
      v55 = v13[8];
      v56 = *&v17[v55];
      v57 = *&v17[v55 + 8];
      v58 = &v20[v55];
      *v58 = v56;
      v58[1] = v57;
      v59 = &v20[v13[6]];
      *v59 = v53;
      *(v59 + 1) = v52;
      *&v20[v13[7]] = 4;
      v60 = v17[v13[9]];

      sub_100015D6C(v56, v57);
      sub_1000D8450(v17);
      v20[v13[9]] = v60;
      sub_100040738(v71 + 16, v76);
      v61 = sub_1000080F8(v76, v76[3]);
      v62 = swift_allocObject();
      v64 = v74;
      v63 = v75;
      *(v62 + 16) = v75;
      *(v62 + 24) = v64;
      v65 = *v61;
      v66 = v63;

      sub_100230FD4(v20, sub_1000DCDC8, v62);

      sub_1000D8450(v20);
      sub_1000D8450(v22);
      sub_10000839C(v76);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100008D04(v47, qword_1003FAA88);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Error updating custodianship - couldn't get strong ref", v50, 2u);
    }
  }
}

void sub_1000DC050(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v25 - v6);
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  if (a2)
  {
    sub_1000D2720(a1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v9 + 16))(v12, Strong + OBJC_IVAR____TtC13appleaccountd29DaemonCustodianRemovedHandler__analyticsReporter, v8);
    Dependency.wrappedValue.getter();

    (*(v9 + 8))(v12, v8);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  sub_1000DCD18(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v7;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA88);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = _convertErrorToNSError(_:)();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error updating custodianship %@", v18, 0xCu);
      sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  else
  {
    [objc_opt_self() postRecoveryContactChangedNotification];
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA88);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Custodianship status updated", v24, 2u);
    }

    sub_100008D3C(v7, &unk_1003DA0E0, &unk_10033F1D0);
  }
}

uint64_t sub_1000DC458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = type metadata accessor for UUID();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000DC51C, 0, 0);
}

uint64_t sub_1000DC51C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 56) = *(*(v0 + 16) + 96);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v3);

  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1000DC5F8;
  v6 = *(v0 + 48);
  v7 = *(v0 + 80);

  return sub_100014544(v7, 1, v6);
}

uint64_t sub_1000DC5F8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_1000DC7D0, 0, 0);
  }

  else
  {
    v9 = *(v2 + 48);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_1000DC7D0()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Owner received tear-down from custodian, reason: %ld", v5, 0xCu);
  }

  v6 = *(v0 + 72);

  v7 = *(v0 + 48);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000DC904()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  v1 = v0[12];

  v2 = OBJC_IVAR____TtC13appleaccountd29DaemonCustodianRemovedHandler__accountStore;
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13appleaccountd29DaemonCustodianRemovedHandler__analyticsReporter;
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonCustodianRemovedHandler()
{
  result = qword_1003DC768;
  if (!qword_1003DC768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DCA64()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000DCB78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000DCBB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000DCC04()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000DCC4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000082A8;

  return sub_1000DC458(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_1000DCD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DCD88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000DCDD0(uint64_t a1)
{
  sub_100005814(&unk_1003D9800, &unk_10033EFB0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A10, &qword_100343D80);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_10004035C(a1, &v6);
  if (v7)
  {
    sub_100008D3C(a1, &qword_1003DCB30, &unk_10033F030);
    sub_10003E950(&v6, &v8);
  }

  else
  {
    *(&v9 + 1) = &type metadata for FinalizeSetupRetryDelay;
    v10 = sub_1000E0088();
    *&v8 = 30;
    sub_100008D3C(a1, &qword_1003DCB30, &unk_10033F030);
    if (v7)
    {
      sub_100008D3C(&v6, &qword_1003DCB30, &unk_10033F030);
    }
  }

  v3 = v1 + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler_retrySchedulerDelay;
  v4 = v9;
  *v3 = v8;
  *(v3 + 16) = v4;
  *(v3 + 32) = v10;
  return v1;
}

uint64_t sub_1000DCFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[39] = a7;
  v8[40] = a8;
  v8[37] = a5;
  v8[38] = a6;
  v8[36] = a4;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v8[41] = v9;
  v10 = *(v9 - 8);
  v8[42] = v10;
  v11 = *(v10 + 64) + 15;
  v8[43] = swift_task_alloc();
  v12 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v8[44] = v12;
  v13 = *(v12 - 8);
  v8[45] = v13;
  v14 = *(v13 + 64) + 15;
  v8[46] = swift_task_alloc();
  v15 = type metadata accessor for TrustedContactUserNotification();
  v8[47] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[48] = swift_task_alloc();
  v17 = type metadata accessor for CustodianRecoveryInfoRecord();
  v8[49] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v8[50] = swift_task_alloc();
  v19 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v8[51] = v19;
  v20 = *(v19 - 8);
  v8[52] = v20;
  v21 = *(v20 + 64) + 15;
  v8[53] = swift_task_alloc();
  v22 = type metadata accessor for CustodianRecord();
  v8[54] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v8[55] = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v8[56] = RecoveryRecordsRequest;
  v25 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  v8[57] = swift_task_alloc();
  v26 = type metadata accessor for UUID();
  v8[58] = v26;
  v27 = *(v26 - 8);
  v8[59] = v27;
  v28 = *(v27 + 64) + 15;
  v8[60] = swift_task_alloc();
  v29 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8[61] = v29;
  v30 = *(v29 - 8);
  v8[62] = v30;
  v31 = *(v30 + 64) + 15;
  v8[63] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD314, 0, 0);
}

uint64_t sub_1000DD314()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  (*(v2 + 16))(v1, v0[36] + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8(v0 + 8 v0[11]) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v0[65] = v9;
  v0[64] = v7;
  v11 = v0[59];
  v10 = v0[60];
  v12 = v0[58];
  sub_10000839C(v0 + 8);
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v0[66] = v13;
  v0[67] = v14;
  (*(v11 + 8))(v10, v12);
  v16 = kAAAnalyticsEventCustodianSetupProcessFinalizeSetupMessage;
  v17 = kAAAnalyticsEventCustodianSetupProcessFinalizeSetupMessage;

  if (v9)
  {

    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v43 = v7;
  v19 = objc_opt_self();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 analyticsEventWithName:v16 altDSID:v18 flowID:v20];
  v0[68] = v21;

  if (v21)
  {
    v22 = v0[37] + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = v21;
    sub_100245E08(v23, v24);
  }

  v27 = v0[56];
  v26 = v0[57];
  v29 = v0[52];
  v28 = v0[53];
  v30 = v0[51];
  v31 = v0[36];
  (*(v0[59] + 16))(v26, v0[37] + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID, v0[58]);
  *(v26 + v27[5]) = 1;
  v32 = v26 + v27[6];
  *v32 = 2;
  *(v32 + 8) = 0;
  *(v26 + v27[7]) = 1;
  v33 = (v26 + v27[8]);
  *v33 = v43;
  v33[1] = v9;
  v34 = (v26 + v27[9]);
  *v34 = v13;
  v34[1] = v15;
  v35 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__storageController;
  v0[69] = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__storageController;
  v36 = *(v29 + 16);
  v0[70] = v36;
  v0[71] = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v36(v28, v31 + v35, v30);

  Dependency.wrappedValue.getter();
  v37 = *(v29 + 8);
  v0[72] = v37;
  v0[73] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v28, v30);
  v38 = *sub_1000080F8(v0 + 13, v0[16]);
  v39 = swift_task_alloc();
  v0[74] = v39;
  *v39 = v0;
  v39[1] = sub_1000DD6CC;
  v40 = v0[57];
  v41 = v0[55];

  return sub_100023C4C(v41, v40);
}

uint64_t sub_1000DD6CC()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v8 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v4 = *(v2 + 536);
    v5 = *(v2 + 520);

    v6 = sub_1000DDA34;
  }

  else
  {
    v6 = sub_1000DD7F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000DD7F4()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[53];
  v7 = v0[51];
  v8 = v0[36];
  sub_10000839C(v0 + 13);
  v4(v6, v8 + v5, v7);
  Dependency.wrappedValue.getter();
  v2(v6, v7);
  v9 = *sub_1000080F8(v0 + 18, v0[21]);
  v10 = swift_task_alloc();
  v0[76] = v10;
  *v10 = v0;
  v10[1] = sub_1000DD90C;
  v11 = v0[57];
  v12 = v0[50];

  return sub_100021548(v12, v11, 0, 0);
}

uint64_t sub_1000DD90C()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v8 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v4 = *(v2 + 536);
    v5 = *(v2 + 520);

    v6 = sub_1000DDFB4;
  }

  else
  {
    v6 = sub_1000DDD3C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000DDA34()
{
  sub_10000839C((v0 + 104));
  v1 = *(v0 + 600);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error occurred during finalize setup after retry: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v8 = *(v0 + 544);

  if (v8)
  {
    v9 = *(v0 + 544);
    v10 = _convertErrorToNSError(_:)();
    [v9 updateTaskResultWithError:v10];
  }

  v11 = *(v0 + 544);
  v12 = *(v0 + 456);
  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v15 = *(v0 + 328);
  v16 = *(v0 + 312);
  (*(v14 + 16))(v13, *(v0 + 288) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter, v15);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v13, v15);
  v17 = *(v0 + 264);
  swift_getObjectType();
  sub_100246FA8(v11);
  swift_unknownObjectRelease();
  swift_errorRetain();
  v16(v1);

  sub_1000E0858(v12, type metadata accessor for FetchRecoveryRecordsRequest);
  v18 = *(v0 + 504);
  v19 = *(v0 + 480);
  v20 = *(v0 + 456);
  v21 = *(v0 + 440);
  v22 = *(v0 + 424);
  v23 = *(v0 + 400);
  v24 = *(v0 + 384);
  v25 = *(v0 + 368);
  v26 = *(v0 + 344);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1000DDD3C()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[38];
  sub_10000839C(v0 + 18);
  v6 = [objc_allocWithZone(AKCustodianContext) init];
  v0[78] = v6;
  v7 = [v5 aa_altDSID];
  [v6 setAltDSID:v7];

  v8 = (v3 + *(v4 + 24));
  v9 = *v8;
  v10 = v8[1];
  v11 = String._bridgeToObjectiveC()();
  [v6 setOwnerCustodianAltDSID:v11];

  v12 = v3 + *(v4 + 20);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v6 setCustodianUUID:isa];

  v14 = (v1 + *(v2 + 40));
  if (v14[1] >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v16 = *v14;
    v15 = Data._bridgeToObjectiveC()().super.isa;
  }

  v17 = v0[67];
  v18 = v0[64];
  v20 = v0[36];
  v19 = v0[37];
  [v6 setWrappingKeyRKC:{v15, v0[65], v0[66]}];

  sub_10004035C(v20 + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler_retrySchedulerDelay, (v0 + 23));
  v21 = type metadata accessor for ExponentialRetryScheduler();
  v22 = objc_allocWithZone(v21);
  v23 = ExponentialRetryScheduler.init(maxRetries:power:schedulerDelay:)();
  v0[79] = v23;
  v0[34] = v23;
  v24 = swift_task_alloc();
  v0[80] = v24;
  *(v24 + 16) = v20;
  *(v24 + 24) = v6;
  *(v24 + 32) = v19;
  *(v24 + 40) = v18;
  *(v24 + 48) = v28;
  *(v24 + 64) = v17;
  v25 = async function pointer to RetryScheduler.schedule<A>(_:shouldRetry:)[1];
  v26 = swift_task_alloc();
  v0[81] = v26;
  *v26 = v0;
  v26[1] = sub_1000DE2D8;

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v26, &unk_100340B70, v24, sub_1000DF754, 0, v21, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_1000DDFB4()
{
  sub_1000E0858(*(v0 + 440), type metadata accessor for CustodianRecord);
  sub_10000839C((v0 + 144));
  v1 = *(v0 + 616);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error occurred during finalize setup after retry: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v8 = *(v0 + 544);

  if (v8)
  {
    v9 = *(v0 + 544);
    v10 = _convertErrorToNSError(_:)();
    [v9 updateTaskResultWithError:v10];
  }

  v11 = *(v0 + 544);
  v12 = *(v0 + 456);
  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v15 = *(v0 + 328);
  v16 = *(v0 + 312);
  (*(v14 + 16))(v13, *(v0 + 288) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter, v15);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v13, v15);
  v17 = *(v0 + 264);
  swift_getObjectType();
  sub_100246FA8(v11);
  swift_unknownObjectRelease();
  swift_errorRetain();
  v16(v1);

  sub_1000E0858(v12, type metadata accessor for FetchRecoveryRecordsRequest);
  v18 = *(v0 + 504);
  v19 = *(v0 + 480);
  v20 = *(v0 + 456);
  v21 = *(v0 + 440);
  v22 = *(v0 + 424);
  v23 = *(v0 + 400);
  v24 = *(v0 + 384);
  v25 = *(v0 + 368);
  v26 = *(v0 + 344);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1000DE2D8()
{
  v2 = *(*v1 + 648);
  v3 = *(*v1 + 640);
  v4 = *(*v1 + 536);
  v5 = *(*v1 + 520);
  v8 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v6 = sub_1000DE7E8;
  }

  else
  {
    v6 = sub_1000DE448;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000DE448()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 352);
  v5 = *(v0 + 288);
  sub_100012050(*(v0 + 440), *(v0 + 384));
  swift_storeEnumTagMultiPayload();
  sub_1002CA150((v0 + 16));
  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__notificationManager, v4);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  v6 = *sub_1000080F8((v0 + 224), *(v0 + 248));
  sub_1002D2E28(v0 + 16, sub_1000DF950, 0);
  sub_10000839C((v0 + 224));
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAA88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Successfully finalize setup", v10, 2u);
  }

  v11 = *(v0 + 544);

  if (v11)
  {
    [*(v0 + 544) updateTaskResultWithError:0];
  }

  v12 = *(v0 + 632);
  v13 = *(v0 + 624);
  v14 = *(v0 + 544);
  v34 = *(v0 + 440);
  v32 = *(v0 + 456);
  v33 = *(v0 + 400);
  v15 = *(v0 + 384);
  v17 = *(v0 + 336);
  v16 = *(v0 + 344);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  (*(v17 + 16))(v16, *(v0 + 288) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter, v18);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  v20 = *(v0 + 280);
  swift_getObjectType();
  sub_100246FA8(v14);
  swift_unknownObjectRelease();
  v19(0);

  sub_1000C5460(v0 + 16);
  sub_1000E0858(v15, type metadata accessor for TrustedContactUserNotification);
  sub_1000E0858(v32, type metadata accessor for FetchRecoveryRecordsRequest);
  sub_1000E0858(v33, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1000E0858(v34, type metadata accessor for CustodianRecord);
  v21 = *(v0 + 504);
  v22 = *(v0 + 480);
  v23 = *(v0 + 456);
  v24 = *(v0 + 440);
  v25 = *(v0 + 424);
  v26 = *(v0 + 400);
  v27 = *(v0 + 384);
  v28 = *(v0 + 368);
  v29 = *(v0 + 344);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000DE7E8()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 440);
  v3 = *(v0 + 400);

  sub_1000E0858(v3, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1000E0858(v2, type metadata accessor for CustodianRecord);

  v4 = *(v0 + 656);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA88);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error occurred during finalize setup after retry: %@", v8, 0xCu);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
  }

  v11 = *(v0 + 544);

  if (v11)
  {
    v12 = *(v0 + 544);
    v13 = _convertErrorToNSError(_:)();
    [v12 updateTaskResultWithError:v13];
  }

  v14 = *(v0 + 544);
  v15 = *(v0 + 456);
  v17 = *(v0 + 336);
  v16 = *(v0 + 344);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  (*(v17 + 16))(v16, *(v0 + 288) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter, v18);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  v20 = *(v0 + 264);
  swift_getObjectType();
  sub_100246FA8(v14);
  swift_unknownObjectRelease();
  swift_errorRetain();
  v19(v4);

  sub_1000E0858(v15, type metadata accessor for FetchRecoveryRecordsRequest);
  v21 = *(v0 + 504);
  v22 = *(v0 + 480);
  v23 = *(v0 + 456);
  v24 = *(v0 + 440);
  v25 = *(v0 + 424);
  v26 = *(v0 + 400);
  v27 = *(v0 + 384);
  v28 = *(v0 + 368);
  v29 = *(v0 + 344);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000DEB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  return _swift_task_switch(sub_1000DEB64, 0, 0);
}

uint64_t sub_1000DEB64()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Scheduling finalize setup", v4, 2u);
  }

  v5 = v0[8];
  v6 = v0[4];

  v7 = *(v6 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow);
  v8 = *(v6 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow + 8);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1000DECE8;
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  v15 = v0[2];
  v14 = v0[3];

  return sub_1000DEDDC(v14, v12, v7, v8, v13, v10, v11, v5);
}

uint64_t sub_1000DECE8()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000DEDDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = a8;
  *(v9 + 152) = v8;
  *(v9 + 128) = a6;
  *(v9 + 136) = a7;
  *(v9 + 256) = a4;
  *(v9 + 112) = a3;
  *(v9 + 120) = a5;
  *(v9 + 96) = a1;
  *(v9 + 104) = a2;
  v10 = sub_100005814(&qword_1003DA1C0, &qword_10033F2D0);
  *(v9 + 160) = v10;
  v11 = *(v10 - 8);
  *(v9 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v9 + 184) = v13;
  v14 = *(v13 - 8);
  *(v9 + 192) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1000DEF20, 0, 0);
}

uint64_t sub_1000DEF20()
{
  v1 = objc_opt_self();
  *(v0 + 208) = v1;
  if ([v1 shouldSkipIdMSFinalizeCustodian])
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "🚨 TCS IdMS Endpoint Testing: SkipIdMSFinalizeCustodian. Custodian setup skipped.", v5, 2u);
    }

    v6 = *(v0 + 200);
    v7 = *(v0 + 176);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v11 = *(v0 + 184);
    v12 = *(v0 + 144);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    (*(v10 + 16))(v9, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter, v11);
    Dependency.wrappedValue.getter();
    (*(v10 + 8))(v9, v11);
    *(v0 + 216) = *(v0 + 80);
    v16 = kAAAnalyticsEventCustodianSetupFinalizeSetupWithServer;
    sub_100012004();

    v17 = v16;

    v18 = sub_100245D38(v17, v15, v14, v13, v12);
    *(v0 + 224) = v18;
    if (v18)
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 112);
      v21 = v18;
      sub_100245E08(v20, v19 & 1);
    }

    sub_100257274(v17);
    v22 = *(v0 + 152);
    v23 = *(v0 + 96);
    v24 = swift_task_alloc();
    *(v0 + 232) = v24;
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    v25 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v26 = swift_task_alloc();
    *(v0 + 240) = v26;
    *v26 = v0;
    v26[1] = sub_1000DF320;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v26, 0, 0, 0xD000000000000035, 0x800000010032E360, sub_1000E08B8, v24, &type metadata for () + 8);
  }
}

uint64_t sub_1000DF320()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_1000DF5F8;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_1000DF43C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000DF43C()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 216);
    [*(v0 + 224) updateTaskResultWithError:0];
    swift_getObjectType();
    v3 = v1;
    sub_100246FA8(v1);
  }

  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  swift_unknownObjectRelease();
  [objc_opt_self() postRecoveryContactChangedNotification];
  if (([v5 simulate2FAFA] & 1) == 0 && (*(*(v0 + 104) + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess) & 1) == 0)
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    (*(v7 + 16))(v6, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__healthCheckScheduler, v8);
    Dependency.wrappedValue.getter();
    (*(v7 + 8))(v6, v8);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    sub_1000080F8((v0 + 16), v9);
    (*(v10 + 16))(sub_1000E0578, 0, v9, v10);
    sub_10000839C((v0 + 16));
  }

  v11 = *(v0 + 200);
  v12 = *(v0 + 176);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000DF5F8()
{
  v1 = v0[29];

  v2 = v0[31];
  v3 = v0[28];
  swift_getErrorValue();
  v4 = v0[7];
  v5 = v0[9];
  sub_1002DEA80(v0[8]);
  if (v3)
  {
    v7 = v0[27];
    v6 = v0[28];
    v8 = v6;
    swift_errorRetain();
    v9 = _convertErrorToNSError(_:)();
    [v8 updateTaskResultWithError:v9];

    swift_getObjectType();
    v10 = v8;
    sub_100246FA8(v6);
  }

  else
  {
    swift_errorRetain();
    v10 = 0;
  }

  v11 = v0[27];
  v12 = v0[25];
  v13 = v0[22];
  swift_willThrow();
  swift_unknownObjectRelease();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000DF754()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008D04(v0, qword_1003FAA88);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error occurred during finalize setup: %@", v3, 0xCu);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);
  }

  v6 = _convertErrorToNSError(_:)();
  v7 = [v6 ak_isAuthenticationErrorWithCode:-7026];

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    v11 = v7 ^ 1;
    *(v10 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v8, v9, "Should retry finalize setup: %{BOOL}d", v10, 8u);
  }

  else
  {

    return v7 ^ 1;
  }

  return v11;
}

void sub_1000DF950(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Accepted banner notification posted", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Error occured posting accept banner notification %@", v3, 0xCu);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);

LABEL_10:

    return;
  }
}

uint64_t sub_1000DFBA0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__requestManager;
  v2 = sub_100005814(&unk_1003DB090, &qword_100340B80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__storageController;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__notificationManager;
  v6 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__healthCheckScheduler;
  v8 = sub_100005814(&qword_1003DA1C0, &qword_10033F2D0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__accountStore;
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter;
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  sub_100008D3C(v0 + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler_retrySchedulerDelay, &qword_1003DCB30, &unk_10033F030);
  v13 = *(*v0 + 48);
  v14 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonSetupFinalizationHandler()
{
  result = qword_1003DC920;
  if (!qword_1003DC920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DFE38()
{
  sub_10000DAB8(319, &unk_1003DC930, &unk_1003D9800, &unk_10033EFB0);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_10000DAB8(319, qword_1003DC950, &qword_1003D9A10, &qword_100343D80);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000E0088()
{
  result = qword_1003DCB38;
  if (!qword_1003DCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCB38);
  }

  return result;
}

uint64_t sub_1000E00DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-1] - v9;
  v11 = sub_100005814(&unk_1003DB090, &qword_100340B80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20[-1] - v14;
  (*(v12 + 16))(&v20[-1] - v14, a2 + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__requestManager, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v15, v11);
  sub_1000080F8(v20, v20[3]);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v10, v6);
  sub_100119EF0(a3, sub_1000E0954, v17);

  return sub_10000839C(v20);
}

uint64_t sub_1000E0320(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAA88);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = _convertErrorToNSError(_:)();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error finalizing custodianship: %@", v4, 0xCu);
      sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Custodian setup complete!", v11, 2u);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1000E0578(uint64_t a1)
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      v7 = v6;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *(v4 + 4) = v6;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Error performing health checks after finalizing setup: %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }
}

uint64_t sub_1000E06E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000082A8;

  return sub_1000E09E0(v2);
}

uint64_t sub_1000E077C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_1000DEB38(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000E0858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E08C0()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000E0954(uint64_t a1)
{
  v2 = *(*(sub_100005814(&qword_1003DABC0, &unk_100342840) - 8) + 80);

  return sub_1000E0320(a1);
}

uint64_t sub_1000E09E0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for ContinuousClock();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000E0AA0, 0, 0);
}

uint64_t sub_1000E0AA0()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  v5 = (v2 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1000E0B94;
  v7 = v0[5];

  return (sub_10015FEF4)(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_1000E0B94()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[7] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_10002059C, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1000E0D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7[16] = v8;
  v9 = *(v8 - 8);
  v7[17] = v9;
  v10 = *(v9 + 64) + 15;
  v7[18] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v7[19] = v11;
  v12 = *(v11 - 8);
  v7[20] = v12;
  v13 = *(v12 + 64) + 15;
  v7[21] = swift_task_alloc();
  v14 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v7[22] = v14;
  v15 = *(v14 - 8);
  v7[23] = v15;
  v16 = *(v15 + 64) + 15;
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000E0ED0, 0, 0);
}

uint64_t sub_1000E0ED0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v2 + 16))(v1, v0[12] + OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v33 = 0;
    v8 = 0;
  }

  v0[25] = v8;
  v10 = v0[20];
  v9 = v0[21];
  v12 = v0[18];
  v11 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[12];
  v31 = v0[13];
  sub_10000839C(v0 + 2);
  UUID.init()();
  v32 = UUID.uuidString.getter();
  v0[26] = v16;
  (*(v10 + 8))(v9, v11);
  (*(v13 + 16))(v12, v15 + OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__analyticsReporter, v14);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v12, v14);
  v0[27] = v0[10];
  v17 = kAAAnalyticsEventCustodianSetupProcessSharedRecoveryInfo;
  swift_retain_n();

  v18 = v17;
  if (v8)
  {

    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 analyticsEventWithName:v17 altDSID:v19 flowID:v21];
  v0[28] = v22;

  if (v22)
  {
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v23 = v22;
    v24 = NSString.init(stringLiteral:)();
    [v23 setObject:0 forKeyedSubscript:v24];
  }

  sub_100257274(v17);
  v25 = swift_task_alloc();
  v0[29] = v25;
  *v25 = v0;
  v25[1] = sub_1000E1390;
  v26 = v0[14];
  v27 = v0[15];
  v29 = v0[12];
  v28 = v0[13];

  return sub_1000E17C0(v25, v28, v29, v26, v27, v33, v8, v32);
}

uint64_t sub_1000E1390()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 200);
  v5 = *v1;
  v2[30] = v0;

  v6 = v2[26];
  if (v0)
  {

    v7 = sub_1000E1508;
  }

  else
  {
    v8 = v2[13];

    v7 = sub_1000E1698;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000E1508()
{
  v1 = v0[30];
  v2 = v0[28];
  swift_getErrorValue();
  v3 = v0[7];
  v4 = v0[9];
  sub_1002DEA80(v0[8]);
  if (v2)
  {
    v6 = v0[27];
    v5 = v0[28];
    v7 = v0[13];
    v8 = v5;
    swift_errorRetain();
    v9 = _convertErrorToNSError(_:)();
    [v8 updateTaskResultWithError:v9];

    sub_100245E08(*(v7 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow), *(v7 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow + 8));
    swift_getObjectType();
    v10 = v8;
    sub_100246FA8(v5);
  }

  else
  {
    swift_errorRetain();
  }

  v11 = v0[27];
  v12 = v0[28];
  v13 = v0[24];
  v14 = v0[21];
  v15 = v0[18];
  v16 = v0[13];
  swift_willThrow();

  swift_unknownObjectRelease();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000E1698()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 104);
  if (v2)
  {
    [*(v0 + 224) updateTaskResultWithError:0];
    sub_100245E08(*(v3 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow), *(v3 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow + 8));
    v4 = v2;

    swift_getObjectType();
    v5 = v4;
    sub_100246FA8(v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = *(v0 + 104);

    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 144);
  v10 = *(v0 + 104);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000E17C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v17;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v11 = *(v10 + 64) + 15;
  v8[20] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v8[21] = v12;
  v13 = *(v12 - 8);
  v8[22] = v13;
  v14 = *(v13 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1914, 0, 0);
}

uint64_t sub_1000E1914()
{
  v41 = v0;
  if (qword_1003D7EF0 != -1)
  {
    swift_once();
  }

  v1 = v0[10] + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo;
  v2 = (qword_1003FAA20 + 40);
  v3 = *(qword_1003FAA20 + 16) + 1;
  while (--v3)
  {
    v5 = *(v2 - 1);
    v4 = *v2;
    v6 = (v1 + *(type metadata accessor for CloudShareInfo() + 20));
    if (v5 != *v6 || v4 != v6[1])
    {
      v2 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v8 = v0[25];
    v9 = v0[21];
    v10 = v0[22];
    v11 = v0[17];
    v12 = v0[10];
    v13 = OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID;
    v0[26] = OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID;
    v14 = *(v10 + 16);
    v0[27] = v14;
    v0[28] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v8, v12 + v13, v9);
    v15 = swift_task_alloc();
    v0[29] = v15;
    *v15 = v0;
    v15[1] = sub_1000E1CC8;
    v16 = v0[25];
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[13];
    v20 = v0[14];
    v22 = v0[11];
    v21 = v0[12];

    return sub_1000E305C(v16, v21, v19, v20, v17, v18, v11);
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v24 = v0[10];
  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAA88);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v29;
    *v28 = 136315138;
    v30 = (v1 + *(type metadata accessor for CloudShareInfo() + 20));
    v31 = *v30;
    v32 = v30[1];

    v33 = sub_10021145C(v31, v32, &v40);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Invalid container ID received %s", v28, 0xCu);
    sub_10000839C(v29);
  }

  type metadata accessor for AACustodianError(0);
  v0[9] = -7056;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v34 = v0[8];
  swift_willThrow();
  v36 = v0[24];
  v35 = v0[25];
  v37 = v0[23];
  v38 = v0[20];

  v39 = v0[1];

  return v39();
}

uint64_t sub_1000E1CC8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[25];
  v6 = v2[22];
  v7 = v2[21];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);
    v11 = sub_1000E2FD0;
  }

  else
  {
    v2[31] = v9;
    v2[32] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = sub_1000E1E48;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000E1E48()
{
  if ([objc_opt_self() isSimulateUnhealthyCustodianEnabled])
  {
    type metadata accessor for AACustodianError(0);
    v0[7] = -7059;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v1 = v0[6];
    swift_willThrow();
    v3 = v0[24];
    v2 = v0[25];
    v4 = v0[23];
    v5 = v0[20];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[17];
    v11 = v0[18];
    v12 = v0[15];
    v13 = v0[16];
    v14 = v0[14];
    v15 = v0[11];
    v29 = v0[10];
    v16 = OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__analyticsReporter;
    v0[33] = OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__analyticsReporter;
    v17 = *(v9 + 16);
    v0[34] = v17;
    v0[35] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v8, v15 + v16, v11);
    Dependency.wrappedValue.getter();
    v18 = *(v9 + 8);
    v0[36] = v18;
    v0[37] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v8, v11);
    v19 = v0[2];
    v0[38] = v19;
    v20 = swift_allocObject();
    v0[39] = v20;
    v20[2] = v14;
    v20[3] = v12;
    v20[4] = v13;
    v20[5] = v10;
    v21 = swift_task_alloc();
    v0[40] = v21;
    *(v21 + 16) = v15;
    *(v21 + 24) = v29;
    v22 = type metadata accessor for ExponentialRetryScheduler();
    v0[41] = v22;

    v23 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
    v0[42] = v23;
    v24 = swift_allocObject();
    v0[43] = v24;
    *(v24 + 16) = 0;
    v0[3] = v23;
    v25 = swift_task_alloc();
    v0[44] = v25;
    v25[2] = v24;
    v25[3] = sub_1000E46A8;
    v25[4] = v20;
    v25[5] = 0;
    v25[6] = 0;
    v25[7] = &unk_100340C90;
    v25[8] = v21;
    v25[9] = v19;
    v25[10] = 1;
    v26 = swift_allocObject();
    v0[45] = v26;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v27 = async function pointer to RetryScheduler.schedule<A>(_:shouldRetry:)[1];
    v28 = swift_task_alloc();
    v0[46] = v28;
    *v28 = v0;
    v28[1] = sub_1000E21CC;

    return RetryScheduler.schedule<A>(_:shouldRetry:)(v28, &unk_10033F200, v25, sub_10005237C, v26, v22, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
  }
}

uint64_t sub_1000E21CC()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v8 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_1000E29F0;
  }

  else
  {
    v6 = *(v2 + 352);
    v5 = *(v2 + 360);

    v4 = sub_1000E22F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E22F0()
{
  v87 = v0;
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[38];
  v6 = v0[10];

  swift_unknownObjectRelease();

  if (*(v6 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_finalizeSetup) == 1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v7 = v0[10];
    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA88);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v80 = v0[31];
      v83 = v0[32];
      v11 = v0[27];
      v77 = v0[28];
      v12 = v0[26];
      v13 = v0[24];
      v14 = v0[21];
      v15 = v0[10];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v86 = v17;
      *v16 = 136315138;
      v11(v13, v15 + v12, v14);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v80(v13, v14);
      v21 = sub_10021145C(v18, v20, &v86);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "This is a setup flow, let's finalize %s with owner.", v16, 0xCu);
      sub_10000839C(v17);
    }

    v84 = v0[41];
    v71 = v0[36];
    v72 = v0[37];
    v23 = v0[34];
    v22 = v0[35];
    v24 = v0[33];
    v25 = v0[28];
    v26 = v0[23];
    v27 = v0[20];
    v28 = v0[18];
    v76 = v0[17];
    v29 = v0[15];
    v75 = v0[16];
    v73 = v0[14];
    v81 = v0[13];
    v30 = v0[11];
    v78 = v0[12];
    v31 = v0[10];
    (v0[27])(v26, v31 + v0[26], v0[21]);
    v32 = v31 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow;
    v33 = *(v31 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow);
    v74 = *(v32 + 8);
    v23(v27, v30 + v24, v28);
    Dependency.wrappedValue.getter();
    v71(v27, v28);
    v34 = v0[4];
    v0[48] = v34;
    v35 = swift_allocObject();
    v0[49] = v35;
    v35[2] = v73;
    v35[3] = v29;
    v35[4] = v75;
    v35[5] = v76;
    v36 = swift_task_alloc();
    v0[50] = v36;
    *(v36 + 16) = v30;
    *(v36 + 24) = v26;
    *(v36 + 32) = v78;
    *(v36 + 40) = v81;
    *(v36 + 48) = v33;
    *(v36 + 56) = v74;

    v37 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
    v0[51] = v37;
    v38 = swift_allocObject();
    v0[52] = v38;
    *(v38 + 16) = 0;
    v0[5] = v37;
    v39 = swift_task_alloc();
    v0[53] = v39;
    v39[2] = v38;
    v39[3] = sub_1000E4C58;
    v39[4] = v35;
    v39[5] = 0;
    v39[6] = 0;
    v39[7] = &unk_100340CA8;
    v39[8] = v36;
    v39[9] = v34;
    v39[10] = 1;
    v40 = swift_allocObject();
    v0[54] = v40;
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    v41 = async function pointer to RetryScheduler.schedule<A>(_:shouldRetry:)[1];
    v42 = swift_task_alloc();
    v0[55] = v42;
    *v42 = v0;
    v42[1] = sub_1000E2AC4;
    v43 = v0[41];

    return RetryScheduler.schedule<A>(_:shouldRetry:)(v42, &unk_100340CB0, v39, sub_10005B8F4, v40, v43, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v44 = v0[10];
    v45 = type metadata accessor for Logger();
    sub_100008D04(v45, qword_1003FAA88);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v82 = v0[31];
      v85 = v0[32];
      v48 = v0[27];
      v79 = v0[28];
      v49 = v0[26];
      v50 = v0[24];
      v51 = v0[21];
      v52 = v0[10];
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v86 = v54;
      *v53 = 136315138;
      v48(v50, v52 + v49, v51);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v82(v50, v51);
      v58 = sub_10021145C(v55, v57, &v86);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v46, v47, "Share for %s was accepted successfully.", v53, 0xCu);
      sub_10000839C(v54);
    }

    v59 = v0[31];
    v60 = v0[32];
    v61 = v0[28];
    v62 = v0[25];
    v63 = v0[24];
    v64 = v0[21];
    v66 = v0[16];
    v65 = v0[17];
    v68 = v0[14];
    v67 = v0[15];
    (v0[27])(v63, v0[10] + v0[26], v64);
    sub_1000E4774(v63, v66, v65, v68, v67);
    v59(v63, v64);

    v69 = v0[1];

    return v69();
  }
}

uint64_t sub_1000E29F0()
{
  v2 = v0[44];
  v1 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];

  swift_unknownObjectRelease();

  v8 = v0[47];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[23];
  v12 = v0[20];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000E2AC4()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v8 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = sub_1000E2ECC;
  }

  else
  {
    v6 = *(v2 + 424);
    v5 = *(v2 + 432);

    v4 = sub_1000E2BE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E2BE8()
{
  v41 = v0;
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v5 = v0[48];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[23];
  v9 = v0[21];

  swift_unknownObjectRelease();

  v7(v8, v9);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v10 = v0[10];
  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA88);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v38 = v0[31];
    v39 = v0[32];
    v14 = v0[27];
    v37 = v0[28];
    v15 = v0[26];
    v16 = v0[24];
    v17 = v0[21];
    v18 = v0[10];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v20;
    *v19 = 136315138;
    v14(v16, v18 + v15, v17);
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v38(v16, v17);
    v24 = sub_10021145C(v21, v23, &v40);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "Share for %s was accepted successfully.", v19, 0xCu);
    sub_10000839C(v20);
  }

  v25 = v0[31];
  v26 = v0[32];
  v27 = v0[28];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[21];
  v32 = v0[16];
  v31 = v0[17];
  v34 = v0[14];
  v33 = v0[15];
  (v0[27])(v29, v0[10] + v0[26], v30);
  sub_1000E4774(v29, v32, v31, v34, v33);
  v25(v29, v30);

  v35 = v0[1];

  return v35();
}

uint64_t sub_1000E2ECC()
{
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[48];
  v8 = v0[31];
  v18 = v0[32];
  v9 = v0[23];
  v10 = v0[21];

  swift_unknownObjectRelease();

  v8(v9, v10);
  v11 = v0[56];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[23];
  v15 = v0[20];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000E2FD0()
{
  v1 = v0[30];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000E305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[15] = a7;
  v8[16] = v7;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[9] = a1;
  v8[10] = a2;
  v9 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64) + 15;
  v8[19] = swift_task_alloc();
  v12 = type metadata accessor for CustodianshipInfoRecord();
  v8[20] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v8[22] = RecoveryRecordsRequest;
  v15 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000E3194, 0, 0);
}

uint64_t sub_1000E3194()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[15];
  v19 = v0[14];
  v20 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[9];
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 16))(v1, v9, v10);
  *(v1 + v2[5]) = 1;
  v11 = v1 + v2[6];
  *v11 = 2;
  *(v11 + 8) = 0;
  *(v1 + v2[7]) = 1;
  v12 = (v1 + v2[8]);
  *v12 = v8;
  v12[1] = v7;
  v13 = (v1 + v2[9]);
  *v13 = v19;
  v13[1] = v6;
  (*(v4 + 16))(v3, v20 + OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__custodianStorage, v5);

  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v3, v5);
  v14 = *sub_1000080F8(v0 + 2, v0[5]);
  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_1000E3354;
  v16 = v0[23];
  v17 = v0[21];

  return sub_1000268EC(v17, v16);
}

uint64_t sub_1000E3354()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1000E3770;
  }

  else
  {
    v3 = sub_1000E3468;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E3468()
{
  v28 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[10];
  v3 = v0[11];
  sub_10000839C(v0 + 2);
  v5 = (v2 + *(v1 + 24));
  v6 = *v5 == v4 && v5[1] == v3;
  if (v6 || (v7 = v0[10], v8 = v0[11], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v9 = v0[21];
    v10 = v0[19];
    sub_1000E4E98(v0[23], type metadata accessor for FetchRecoveryRecordsRequest);
    sub_1000E4E98(v9, type metadata accessor for CustodianshipInfoRecord);

    v11 = v0[1];
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v12 = v0[11];
    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[10];
      v16 = v0[11];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10021145C(v17, v16, &v27);
      _os_log_impl(&_mh_execute_header, v14, v15, "Custodian record is received from unknown sender: %s", v18, 0xCu);
      sub_10000839C(v19);
    }

    v20 = v0[23];
    v21 = v0[21];
    type metadata accessor for AACustodianError(0);
    v0[8] = -7075;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = v0[7];
    swift_willThrow();
    sub_1000E4E98(v20, type metadata accessor for FetchRecoveryRecordsRequest);
    sub_1000E4E98(v21, type metadata accessor for CustodianshipInfoRecord);
    v23 = v0[23];
    v24 = v0[21];
    v25 = v0[19];

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_1000E3770()
{
  sub_1000E4E98(v0[23], type metadata accessor for FetchRecoveryRecordsRequest);
  sub_10000839C(v0 + 2);
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[19];

  v5 = v0[1];

  return v5();
}

id sub_1000E3818(uint64_t a1, uint64_t a2)
{
  v2 = kAAAnalyticsEventCustodianSetupAcceptSharedRecoveryInfo;
  if (a2)
  {
    v3 = kAAAnalyticsEventCustodianSetupAcceptSharedRecoveryInfo;

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = kAAAnalyticsEventCustodianSetupAcceptSharedRecoveryInfo;

    v4 = 0;
  }

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 analyticsEventWithName:v2 altDSID:v4 flowID:v7];

  return v8;
}

uint64_t sub_1000E3904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v4 = *(*(type metadata accessor for CloudShareInfo() - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000E3994, 0, 0);
}

uint64_t sub_1000E3994()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_100040738(v0[7] + 56, (v0 + 2));
  v3 = sub_1000080F8(v0 + 2, v0[5]);
  sub_1000E4E34(v2 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo, v1);
  v4 = *v3;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1000E3A74;
  v6 = v0[9];

  return sub_10030CA20(v6, 1);
}

uint64_t sub_1000E3A74()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1000E4E98(v3, type metadata accessor for CloudShareInfo);
  if (v0)
  {
    v4 = sub_1000E3C28;
  }

  else
  {
    v4 = sub_1000E3BB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E3BB8()
{
  v1 = v0[9];
  sub_10000839C(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000E3C28()
{
  v1 = v0[9];
  sub_10000839C(v0 + 2);

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1000E3C98()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  v1 = OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__custodianStorage;
  v2 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__analyticsReporter;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonShareHandler()
{
  result = qword_1003DCB80;
  if (!qword_1003DCB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E3E3C()
{
  sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000E3F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA88);
    (*(v5 + 16))(v9, a2, v4);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v15 = 136315394;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v5 + 8))(v9, v4);
      v20 = sub_10021145C(v17, v19, &v32);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      v21 = _convertErrorToNSError(_:)();
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed performing initial health check for %s. Error: %@", v15, 0x16u);
      sub_100083380(v16);

      sub_10000839C(v31);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    (*(v5 + 16))(v11, a2, v4);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v5 + 8))(v11, v4);
      v30 = sub_10021145C(v27, v29, &v32);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Completed initial health check for %s", v25, 0xCu);
      sub_10000839C(v26);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }
}

id sub_1000E4438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v8 = kAAAnalyticsEventCustodianSetupSendFinalizeSetupMessage;

  v9 = v8;

  return sub_100245D38(v9, a1, a2, a3, a4);
}

uint64_t sub_1000E44D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 64) = a7;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  return _swift_task_switch(sub_1000E44FC, 0, 0);
}

uint64_t sub_1000E44FC()
{
  v1 = *(v0 + 64);
  v2 = *sub_1000080F8((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1000E45B0;
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  return sub_1000E98AC(v7, v6, v4, v5, v1 & 1);
}

uint64_t sub_1000E45B0()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_1000E46A8()
{
  v1 = v0[4];
  v2 = v0[5];
  return sub_1000E3818(v0[2], v0[3]);
}

uint64_t sub_1000E46B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_1000E3904(a1, v5, v4);
}

uint64_t sub_1000E4774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v40 = v13;
  v41 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA88);
  v38 = *(v10 + 16);
  v38(v15, a1, v9);
  v17 = Logger.logObject.getter();
  v43 = v10;
  v18 = v17;
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v9;
    v21 = v20;
    v36 = swift_slowAlloc();
    v37 = a5;
    v44 = v36;
    *v21 = 136315138;
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v43 + 8))(v15, v42);
    v25 = sub_10021145C(v22, v24, &v44);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "Starting initial health check for %s", v21, 0xCu);
    sub_10000839C(v36);
    a5 = v37;

    v9 = v42;
  }

  else
  {

    (*(v43 + 8))(v15, v9);
  }

  v26 = type metadata accessor for CustodianHealthCheck();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E55D0, &unk_100340CC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  v29 = v41;
  v38(v41, a1, v9);
  v30 = v43;
  v31 = v9;
  v32 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v33 = swift_allocObject();
  (*(v30 + 32))(v33 + v32, v29, v31);
  sub_100072B90(a1, a2, a3, v39, a5, sub_1000E4DC4, v33);
}

uint64_t sub_1000E4C18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000E4C64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EF88;

  return sub_1000E44D0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000E4D3C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1000E4DC4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1000E3F94(a1, v4);
}

uint64_t sub_1000E4E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudShareInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *sub_1000E4F00(uint64_t *a1)
{
  v4 = type metadata accessor for UUID();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003DCDF0, &qword_100340D90);
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v26 = a1;
  v27 = v1;
  v12 = &v1[OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow];
  *v12 = 0;
  v12[8] = 1;
  v13 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000E5914();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for CustodianInvitationMessage();
    v21 = v27;
    v17 = *(*v27 + 48);
    v18 = *(*v27 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v25;
    v32 = 0;
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v8;
    v27[16] = v33;
    v31 = 1;
    sub_1000E5A10(&unk_1003DD720, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v14;
    v20 = v27;
    (*(v24 + 32))(&v27[OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID], v7, v4);
    type metadata accessor for AnalyticsContextType(0);
    v30 = 2;
    sub_1000E5A10(&qword_1003DCE08, type metadata accessor for AnalyticsContextType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v20;
    v22 = v28;
    LOBYTE(v20) = v29;
    (*(v16 + 8))(v11, v15);
    v23 = &v21[OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow];
    *v23 = v22;
    v23[8] = v20;
  }

  sub_10000839C(v26);
  return v21;
}

uint64_t sub_1000E52D8()
{
  v1 = 0x6169646F74737563;
  if (*v0 != 1)
  {
    v1 = 2003790950;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000E532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E5B70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E5360(uint64_t a1)
{
  v2 = sub_1000E5914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E539C(uint64_t a1)
{
  v2 = sub_1000E5914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E53D8()
{
  v1 = OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianInvitationMessage()
{
  result = qword_1003DCD18;
  if (!qword_1003DCD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E54C8()
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

uint64_t sub_1000E556C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v18[0] = *(v4 - 8);
  v5 = *(v18[0] + 64);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003DCE10, &qword_100340D98);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  v13 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000E5914();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = *(v2 + 16);
  v22 = 0;
  sub_1000E59BC();
  v14 = v18[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    v15 = v18[0];
    (*(v18[0] + 16))(v7, v2 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID, v4);
    v21 = 1;
    sub_1000E5A10(&unk_1003DDA80, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v15 + 8))(v7, v4);
    v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow + 8);
    v18[2] = *(v2 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow);
    v19 = v16;
    v20 = 2;
    type metadata accessor for AnalyticsContextType(0);
    sub_1000E5A10(&qword_1003DCE20, type metadata accessor for AnalyticsContextType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

_BYTE *sub_1000E5894@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for CustodianInvitationMessage();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_1000E4F00(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_1000E5914()
{
  result = qword_1003DCDF8;
  if (!qword_1003DCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCDF8);
  }

  return result;
}

unint64_t sub_1000E5968()
{
  result = qword_1003DCE00;
  if (!qword_1003DCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCE00);
  }

  return result;
}

unint64_t sub_1000E59BC()
{
  result = qword_1003DCE18;
  if (!qword_1003DCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCE18);
  }

  return result;
}

uint64_t sub_1000E5A10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000E5A6C()
{
  result = qword_1003DCE28;
  if (!qword_1003DCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCE28);
  }

  return result;
}

unint64_t sub_1000E5AC4()
{
  result = qword_1003DCE30;
  if (!qword_1003DCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCE30);
  }

  return result;
}

unint64_t sub_1000E5B1C()
{
  result = qword_1003DCE38;
  if (!qword_1003DCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCE38);
  }

  return result;
}

uint64_t sub_1000E5B70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000E5C8C(uint64_t *a1)
{
  v3 = type metadata accessor for UUID();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003DCF80, &qword_100340FB8);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason;
  *(v1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason) = 11;
  v27 = v1;
  v28 = a1;
  v12 = v1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000E6870();
  v14 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    v19 = v27;
    type metadata accessor for CustodianInvitationResponseMessage();
    v16 = *(*v19 + 48);
    v17 = *(*v19 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v11;
    v15 = v25;
    v31 = 0;
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v27;
    *(v27 + 16) = v29;
    LOBYTE(v29) = 1;
    sub_1000E5A10(&unk_1003DD720, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v24 + 32))(v19 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_custodianID, v6, v3);
    LOBYTE(v29) = 2;
    *(v19 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_accepted) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v31 = 3;
    sub_1000E68C4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v19 + v26) = v29;
    type metadata accessor for AnalyticsContextType(0);
    v31 = 4;
    sub_1000E5A10(&qword_1003DCE08, type metadata accessor for AnalyticsContextType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = v29;
    v21 = v30;
    (*(v15 + 8))(v10, v7);
    v22 = v19 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow;
    *v22 = v20;
    *(v22 + 8) = v21;
  }

  sub_10000839C(v28);
  return v19;
}

uint64_t sub_1000E614C()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6465747065636361;
  v4 = 0x6E6F73616572;
  if (v1 != 3)
  {
    v4 = 2003790950;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6169646F74737563;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E61DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E6BC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E6210(uint64_t a1)
{
  v2 = sub_1000E6870();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E624C(uint64_t a1)
{
  v2 = sub_1000E6870();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E6288()
{
  v1 = OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_custodianID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianInvitationResponseMessage()
{
  result = qword_1003DCE68;
  if (!qword_1003DCE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E6378()
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

uint64_t sub_1000E6430(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v20[0] = *(v4 - 8);
  v5 = *(v20[0] + 64);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003DCF98, &qword_100340FC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - v11;
  v13 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000E6870();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = *(v2 + 16);
  v23 = 0;
  sub_1000E59BC();
  v14 = v20[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v16 = v9;
  v17 = v20[0];
  (*(v20[0] + 16))(v7, v2 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_custodianID, v4);
  LOBYTE(v21) = 1;
  sub_1000E5A10(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v17 + 8))(v7, v4);
  v18 = *(v2 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_accepted);
  LOBYTE(v21) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v21) = *(v2 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason);
  v23 = 3;
  sub_1000E6918();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v19 = *(v2 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow + 8);
  v21 = *(v2 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow);
  v22 = v19;
  v23 = 4;
  type metadata accessor for AnalyticsContextType(0);
  sub_1000E5A10(&qword_1003DCE20, type metadata accessor for AnalyticsContextType);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v16 + 8))(v12, 0);
}

uint64_t sub_1000E67F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for CustodianInvitationResponseMessage();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_1000E5C8C(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_1000E6870()
{
  result = qword_1003DCF88;
  if (!qword_1003DCF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCF88);
  }

  return result;
}

unint64_t sub_1000E68C4()
{
  result = qword_1003DCF90;
  if (!qword_1003DCF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCF90);
  }

  return result;
}

unint64_t sub_1000E6918()
{
  result = qword_1003DCFA0;
  if (!qword_1003DCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCFA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000E6AC0()
{
  result = qword_1003DCFA8;
  if (!qword_1003DCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCFA8);
  }

  return result;
}

unint64_t sub_1000E6B18()
{
  result = qword_1003DCFB0;
  if (!qword_1003DCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCFB0);
  }

  return result;
}

unint64_t sub_1000E6B70()
{
  result = qword_1003DCFB8;
  if (!qword_1003DCFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCFB8);
  }

  return result;
}

uint64_t sub_1000E6BC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000E6D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000E6E0C(uint64_t a1)
{
  v2 = sub_1000E7568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E6E48(uint64_t a1)
{
  v2 = sub_1000E7568();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E6E94(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003DD098, &qword_1003412C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000E7568();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = *(v2 + 16);
  sub_1000E59BC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000E6FE0(uint64_t *a1)
{
  v4 = sub_100005814(&qword_1003DD088, &qword_1003412C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000E7568();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for CustodianMessage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v12;
  }

  sub_10000839C(a1);
  return v1;
}

uint64_t sub_1000E7184@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CustodianMessage();
  v5 = swift_allocObject();
  result = sub_1000E6FE0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int sub_1000E723C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003413E8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000E72C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003413E8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1000E7310@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13appleaccountd11MessageTypeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s13appleaccountd11MessageTypeO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 5;
  }

  else
  {
    return (0x4050503020100uLL >> (8 * a1));
  }
}

unint64_t sub_1000E74E0()
{
  result = qword_1003DCFC0;
  if (!qword_1003DCFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCFC0);
  }

  return result;
}

unint64_t sub_1000E7568()
{
  result = qword_1003DD090;
  if (!qword_1003DD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD090);
  }

  return result;
}

unint64_t sub_1000E75BC()
{
  result = qword_1003DD0A0;
  if (!qword_1003DD0A0)
  {
    type metadata accessor for AnalyticsContextType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD0A0);
  }

  return result;
}

unint64_t sub_1000E7614()
{
  result = qword_1003DD0A8;
  if (!qword_1003DD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD0A8);
  }

  return result;
}

unint64_t sub_1000E767C()
{
  result = qword_1003DD0B0;
  if (!qword_1003DD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD0B0);
  }

  return result;
}

unint64_t sub_1000E76D4()
{
  result = qword_1003DD0B8;
  if (!qword_1003DD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD0B8);
  }

  return result;
}

unint64_t sub_1000E772C()
{
  result = qword_1003DD0C0;
  if (!qword_1003DD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD0C0);
  }

  return result;
}

_BYTE *sub_1000E7780(uint64_t *a1)
{
  v3 = type metadata accessor for UUID();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003DD1E8, &qword_1003414E0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason;
  v1[OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason] = 11;
  v28 = a1;
  v29 = v1;
  v12 = &v1[OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow];
  *v12 = 0;
  v12[8] = 1;
  v13 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000E8268();
  v14 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    type metadata accessor for CustodianRemovedMessage();
    v17 = v29;
    v18 = *(*v29 + 48);
    v19 = *(*v29 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v11;
    v15 = v26;
    v36 = 0;
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v7;
    v17 = v29;
    v29[16] = v37;
    v35 = 1;
    sub_1000E5A10(&unk_1003DD720, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v25 + 32))(&v17[OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID], v6, v3);
    v33 = 2;
    sub_1000E68C4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17[v27] = v34;
    type metadata accessor for AnalyticsContextType(0);
    v32 = 3;
    sub_1000E5A10(&qword_1003DCE08, type metadata accessor for AnalyticsContextType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v30;
    v22 = v31;
    (*(v15 + 8))(v10, v16);
    v23 = &v17[OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow];
    *v23 = v21;
    v23[8] = v22;
  }

  sub_10000839C(v28);
  return v17;
}

uint64_t sub_1000E7BB0()
{
  v1 = 1701869940;
  v2 = 0x6E6F73616572;
  if (*v0 != 2)
  {
    v2 = 2003790950;
  }

  if (*v0)
  {
    v1 = 0x6169646F74737563;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000E7C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E83D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E7C48(uint64_t a1)
{
  v2 = sub_1000E8268();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E7C84(uint64_t a1)
{
  v2 = sub_1000E8268();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E7CC0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianRemovedMessage()
{
  result = qword_1003DD0F0;
  if (!qword_1003DD0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E7DB0()
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

uint64_t sub_1000E7E60(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for UUID();
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003DD1F8, &qword_1003414E8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v14 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000E8268();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = *(v3 + 16);
  v28 = 0;
  sub_1000E59BC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v16 = v10;
  v18 = v20;
  v17 = v21;
  (*(v20 + 16))(v8, v3 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v21);
  v27 = 1;
  sub_1000E5A10(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v18 + 8))(v8, v17);
  v26 = *(v3 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason);
  v25 = 2;
  sub_1000E6918();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v19 = *(v3 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow + 8);
  v22 = *(v3 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow);
  v23 = v19;
  v24 = 3;
  type metadata accessor for AnalyticsContextType(0);
  sub_1000E5A10(&qword_1003DCE20, type metadata accessor for AnalyticsContextType);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v16 + 8))(v13, v9);
}

_BYTE *sub_1000E81E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for CustodianRemovedMessage();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_1000E7780(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_1000E8268()
{
  result = qword_1003DD1F0;
  if (!qword_1003DD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD1F0);
  }

  return result;
}

unint64_t sub_1000E82D0()
{
  result = qword_1003DD200;
  if (!qword_1003DD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD200);
  }

  return result;
}

unint64_t sub_1000E8328()
{
  result = qword_1003DD208;
  if (!qword_1003DD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD208);
  }

  return result;
}

unint64_t sub_1000E8380()
{
  result = qword_1003DD210;
  if (!qword_1003DD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD210);
  }

  return result;
}

uint64_t sub_1000E83D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

_BYTE *sub_1000E8538(uint64_t *a1)
{
  v3 = v1;
  v5 = type metadata accessor for UUID();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003DD338, &qword_1003416E8);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v3[OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess] = 0;
  v13 = &v3[OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow];
  *v13 = 0;
  v13[8] = 1;
  v15 = a1[3];
  v14 = a1[4];
  v29 = a1;
  sub_1000080F8(a1, v15);
  sub_1000E8FFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for FinalizeCustodianSetupMessage();
    v19 = *(*v3 + 48);
    v20 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v28;
    v35 = 0;
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v9;
    v3[16] = v36;
    v34 = 1;
    sub_1000E5A10(&unk_1003DD720, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v16;
    (*(v27 + 32))(&v3[OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID], v8, v5);
    type metadata accessor for AnalyticsContextType(0);
    v33 = 3;
    sub_1000E5A10(&qword_1003DCE08, type metadata accessor for AnalyticsContextType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22 = v31;
    v23 = &v3[OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow];
    *v23 = v30;
    v23[8] = v22;
    v24 = OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess;
    v3[OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess] = 0;
    v32 = 2;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v18 + 8))(v12, v17);
    v3[v24] = v25 & 1;
  }

  sub_10000839C(v29);
  return v3;
}

unint64_t sub_1000E896C()
{
  v1 = 1701869940;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 2003790950;
  }

  if (*v0)
  {
    v1 = 0x6169646F74737563;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000E89E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E9168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E8A0C(uint64_t a1)
{
  v2 = sub_1000E8FFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E8A48(uint64_t a1)
{
  v2 = sub_1000E8FFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E8A84()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinalizeCustodianSetupMessage()
{
  result = qword_1003DD240;
  if (!qword_1003DD240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E8B74()
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

uint64_t sub_1000E8C24(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v19[0] = *(v4 - 8);
  v5 = *(v19[0] + 64);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003DD348, &qword_1003416F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  v13 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000E8FFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = *(v2 + 16);
  v24 = 0;
  sub_1000E59BC();
  v14 = v19[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    v15 = v19[0];
    (*(v19[0] + 16))(v7, v2 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID, v4);
    v23 = 1;
    sub_1000E5A10(&unk_1003DDA80, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v15 + 8))(v7, v4);
    v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess);
    v22 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v2 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow + 8);
    v19[2] = *(v2 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow);
    v20 = v17;
    v21 = 3;
    type metadata accessor for AnalyticsContextType(0);
    sub_1000E5A10(&qword_1003DCE20, type metadata accessor for AnalyticsContextType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

_BYTE *sub_1000E8F7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FinalizeCustodianSetupMessage();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_1000E8538(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_1000E8FFC()
{
  result = qword_1003DD340;
  if (!qword_1003DD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD340);
  }

  return result;
}

unint64_t sub_1000E9064()
{
  result = qword_1003DD350;
  if (!qword_1003DD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD350);
  }

  return result;
}

unint64_t sub_1000E90BC()
{
  result = qword_1003DD358;
  if (!qword_1003DD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD358);
  }

  return result;
}

unint64_t sub_1000E9114()
{
  result = qword_1003DD360;
  if (!qword_1003DD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD360);
  }

  return result;
}

uint64_t sub_1000E9168(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010032E510 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000E9388(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for UUID();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000E9450, 0, 0);
}

uint64_t sub_1000E9450()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 64);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = type metadata accessor for CustodianRecord();
  (*(v2 + 16))(v1, v6 + *(v7 + 20), v3);
  v8 = type metadata accessor for CustodianInvitationMessage();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v11 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v11 + 16) = 0;
  (*(v2 + 32))(v11 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID, v1, v3);
  v13 = v11 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow;
  *v13 = v5;
  *(v13 + 8) = v4 & 1;
  v14 = sub_1000E9D30(*(v6 + *(v7 + 24)), *(v6 + *(v7 + 24) + 8));
  v15 = *(v0 + 32);
  sub_100262B4C(v11, v14, 0xD000000000000022, 0x800000010032E5C0);

  v17 = *(v0 + 56);

  v18 = *(v0 + 8);

  return v18();
}