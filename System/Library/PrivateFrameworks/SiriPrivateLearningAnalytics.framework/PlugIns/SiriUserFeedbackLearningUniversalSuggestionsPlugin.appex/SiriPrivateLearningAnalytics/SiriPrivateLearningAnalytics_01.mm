uint64_t sub_10001A1F0()
{
  result = sub_10001FC2C(&off_100030FD8);
  qword_1000367B8 = result;
  return result;
}

uint64_t sub_10001A218()
{
  result = sub_10001FC2C(&off_100031090);
  qword_1000367C0 = result;
  return result;
}

uint64_t sub_10001A240()
{
  result = sub_10001FC2C(&off_100030FB0);
  qword_1000367C8 = result;
  return result;
}

uint64_t sub_10001A268()
{
  result = sub_10001FC2C(&off_100031040);
  qword_1000367D0 = result;
  return result;
}

uint64_t sub_10001A290()
{
  result = sub_10001FC2C(&off_100031068);
  qword_1000367D8 = result;
  return result;
}

uint64_t sub_10001A2B8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_10001CC60(&v10, *(*(v1 + 48) + ((v8 << 8) | (4 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10001A398@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v133 = a3;
  v142 = a1;
  v139 = a4;
  v141 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v5 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v138 = &v132 - v6;
  v7 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v132 - v13;
  __chkstk_darwin(v12);
  v16 = &v132 - v15;
  v17 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v135 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v136 = &v132 - v23;
  v24 = __chkstk_darwin(v22);
  v134 = &v132 - v25;
  v26 = __chkstk_darwin(v24);
  v137 = &v132 - v27;
  __chkstk_darwin(v26);
  v29 = &v132 - v28;
  sub_10000ED84(a2, v16, &qword_100034E28, &qword_100029570);
  v30 = *(v18 + 48);
  v140 = v17;
  if (v30(v16, 1, v17) != 1)
  {
    sub_10001FB2C(v16, v29, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    if ((sub_100020BA0(v142, v29) & 1) == 0)
    {
      sub_10001FAA8(v29, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      goto LABEL_22;
    }

    v31 = *(v29 + v140[9]);
    v30 = (v31 >> 62);
    if (v31 >> 62)
    {
LABEL_49:
      v32 = sub_1000288CC();
      v132 = v29;
      if (v32)
      {
LABEL_6:
        v29 = 0;
        v142 = v31 & 0xC000000000000001;
        v138 = (v31 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v142)
          {
            v33 = sub_10002883C();
          }

          else
          {
            if (v29 >= *(v138 + 2))
            {
              goto LABEL_48;
            }

            v33 = *(v31 + 32 + 8 * v29);
          }

          v34 = v33;
          if (__OFADD__(v29++, 1))
          {
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          if (qword_100034AE0 != -1)
          {
            swift_once();
          }

          v11 = qword_1000367C8;
          v36 = [v34 flowStateType];
          if (*(v11 + 16))
          {
            v37 = v36;
            v38 = *(v11 + 40);
            sub_10002894C();
            sub_10002896C(v37);
            v39 = sub_10002897C();
            v40 = -1 << *(v11 + 32);
            v41 = v39 & ~v40;
            if ((*(v11 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
            {
              break;
            }
          }

LABEL_7:

          if (v29 == v32)
          {
            goto LABEL_50;
          }
        }

        v42 = ~v40;
        while (*(*(v11 + 48) + 4 * v41) != v37)
        {
          v41 = (v41 + 1) & v42;
          if (((*(v11 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        if (v30)
        {
          v141 = sub_1000288CC();
        }

        else
        {
          v141 = *(v138 + 2);
        }

        v14 = 0;
        v43 = &off_100031128;
        a2 = v31;
        do
        {
          v65 = v141 != v14;
          if (v141 == v14)
          {
            break;
          }

          if (v142)
          {
            v66 = sub_10002883C();
          }

          else
          {
            if (v14 >= *(v138 + 2))
            {
              goto LABEL_45;
            }

            v66 = *(v31 + 8 * v14 + 32);
          }

          v67 = v66;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v64 = [v66 currentTaskName];
          if (v64)
          {
            v61 = v64;
            v62 = sub_10002860C();
            v30 = v63;
          }

          else
          {
            v62 = 0;
            v30 = 0;
          }

          v143[0] = v62;
          v143[1] = v30;
          __chkstk_darwin(v64);
          *(&v132 - 2) = v143;
          v11 = sub_100016080(sub_1000226EC, (&v132 - 4), &off_100031128);

          sub_100001DBC(&qword_100035520, &qword_100029A88);
          swift_arrayDestroy();

          ++v14;
          v31 = a2;
        }

        while ((v11 & 1) == 0);
LABEL_51:
        if (qword_100034AF8 != -1)
        {
          swift_once();
        }

        v68 = sub_10002858C();
        sub_10000AEF4(v68, qword_100035430);
        v69 = v132;
        v70 = v137;
        sub_10001FA40(v132, v137, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v71 = sub_10002856C();
        v72 = sub_10002875C();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v143[0] = v74;
          *v73 = 67109378;
          *(v73 + 4) = v65;
          *(v73 + 8) = 2080;
          v75 = v140[5];
          sub_100027DAC();
          sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
          v76 = sub_1000288EC();
          v78 = v77;
          sub_10001FAA8(v70, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v79 = sub_100027364(v76, v78, v143);

          *(v73 + 10) = v79;
          _os_log_impl(&_mh_execute_header, v71, v72, "Did user select a disambiguation? %{BOOL}d; in request %s", v73, 0x12u);
          sub_100001EB8(v74);

          if (!v65)
          {
LABEL_55:
            v80 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
            (*(*(v80 - 8) + 56))(v139, 1, 1, v80);
            goto LABEL_90;
          }
        }

        else
        {

          sub_10001FAA8(v70, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          if (!v65)
          {
            goto LABEL_55;
          }
        }

        v81 = v140;
        v82 = (v69 + v140[8]);
        if (!*v82)
        {
          v92 = v135;
          sub_10001FA40(v69, v135, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v93 = sub_10002856C();
          v94 = sub_10002875C();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v143[0] = v96;
            *v95 = 136315138;
            v97 = v92 + v81[5];
            v98 = sub_100027D8C();
            v100 = v99;
            sub_10001FAA8(v92, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
            v101 = sub_100027364(v98, v100, v143);

            *(v95 + 4) = v101;
            v102 = "No executed ControlHomeIntent found after disambiguation selection in request: %s";
LABEL_87:
            _os_log_impl(&_mh_execute_header, v93, v94, v102, v95, 0xCu);
            sub_100001EB8(v96);

LABEL_89:
            v130 = v139;
            v131 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
            (*(*(v131 - 8) + 56))(v130, 1, 1, v131);
            goto LABEL_90;
          }

LABEL_88:

          sub_10001FAA8(v92, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          goto LABEL_89;
        }

        v83 = v82[1];
        v84 = v83 >> 62;
        if (v83 >> 62)
        {
          result = sub_1000288CC();
          if (!result)
          {
            goto LABEL_85;
          }
        }

        else
        {
          result = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_85;
          }
        }

        if ((v83 & 0xC000000000000001) != 0)
        {
          v85 = sub_10002883C();
        }

        else
        {
          if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v85 = *(v83 + 32);
        }

        v86 = v85;
        v87 = [v85 entityIdentifier];

        if (v87)
        {
          v88 = sub_10002860C();
          v90 = v89;

          if (v84)
          {
            v91 = sub_1000288CC();
          }

          else
          {
            v91 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v91 != 1)
          {

            v104 = v134;
            sub_10001FA40(v69, v134, type metadata accessor for UniversalSuggestionsFeaturisedTurn);

            v105 = sub_10002856C();
            v106 = sub_10002875C();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v143[0] = v108;
              *v107 = 134218242;
              if (v84)
              {
                v109 = sub_1000288CC();
              }

              else
              {
                v109 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v107 + 4) = v109;

              *(v107 + 12) = 2080;
              v117 = v134;
              v118 = v134 + v140[5];
              v119 = sub_100027D8C();
              v121 = v120;
              sub_10001FAA8(v117, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
              v122 = sub_100027364(v119, v121, v143);

              *(v107 + 14) = v122;
              _os_log_impl(&_mh_execute_header, v105, v106, "Selected disambiguation resolved %ld entities indicating Everywhere was selected, which is unsupported; requestId=%s", v107, 0x16u);
              sub_100001EB8(v108);
            }

            else
            {

              sub_10001FAA8(v104, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
            }

            v123 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
            (*(*(v123 - 8) + 56))(v139, 1, 1, v123);
            v124 = v132;
            return sub_10001FAA8(v124, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          }

          if (v88 == *v133 && v90 == v133[1])
          {

            v103 = 4;
          }

          else
          {
            v110 = sub_10002890C();

            if (v110)
            {
              v103 = 4;
            }

            else
            {
              v103 = 0;
            }
          }

          v111 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
          v112 = *(v111 + 20);
          v113 = v81[5];
          v114 = sub_100027DAC();
          v115 = *(v114 - 8);
          v116 = v139;
          (*(v115 + 16))(&v139[v112], v69 + v113, v114);
          (*(v115 + 56))(&v116[v112], 0, 1, v114);
          *v116 = v103;
          (*(*(v111 - 8) + 56))(v116, 0, 1, v111);
LABEL_90:
          v124 = v69;
          return sub_10001FAA8(v124, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        }

LABEL_85:
        v92 = v136;
        sub_10001FA40(v69, v136, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v93 = sub_10002856C();
        v94 = sub_10002875C();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v143[0] = v96;
          *v95 = 136315138;
          v125 = v92 + v81[5];
          v126 = sub_100027D8C();
          v128 = v127;
          sub_10001FAA8(v92, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v129 = sub_100027364(v126, v128, v143);

          *(v95 + 4) = v129;
          v102 = "No resolved entity found in the ControlHomeIntent after disambiguation selection in request: %s";
          goto LABEL_87;
        }

        goto LABEL_88;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v132 = v29;
      if (v32)
      {
        goto LABEL_6;
      }
    }

LABEL_50:
    v65 = 0;
    goto LABEL_51;
  }

  sub_10000EDEC(v16, &qword_100034E28, &qword_100029570);
LABEL_22:
  v43 = v140;
  if (qword_100034AF8 != -1)
  {
LABEL_46:
    swift_once();
  }

  v44 = sub_10002858C();
  sub_10000AEF4(v44, qword_100035430);
  sub_10000ED84(a2, v14, &qword_100034E28, &qword_100029570);
  v45 = sub_10002856C();
  v46 = sub_10002875C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v143[0] = v48;
    *v47 = 136315138;
    sub_10000ED84(v14, v11, &qword_100034E28, &qword_100029570);
    if (v30(v11, 1, v43) == 1)
    {
      sub_10000EDEC(v11, &qword_100034E28, &qword_100029570);
      v49 = sub_100027DAC();
      (*(*(v49 - 8) + 56))(v138, 1, 1, v49);
    }

    else
    {
      v50 = *(v43 + 5);
      v51 = sub_100027DAC();
      v52 = *(v51 - 8);
      v53 = v11 + v50;
      v54 = v138;
      (*(v52 + 16))(v138, v53, v51);
      sub_10001FAA8(v11, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      (*(v52 + 56))(v54, 0, 1, v51);
    }

    v55 = sub_10002861C();
    v57 = v56;
    sub_10000EDEC(v14, &qword_100034E28, &qword_100029570);
    v58 = sub_100027364(v55, v57, v143);

    *(v47 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v45, v46, "The next turn is outside the response window for a disambiguation selection; requestId=%s", v47, 0xCu);
    sub_100001EB8(v48);
  }

  else
  {

    sub_10000EDEC(v14, &qword_100034E28, &qword_100029570);
  }

  v59 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
  return (*(*(v59 - 8) + 56))(v139, 1, 1, v59);
}

id *sub_10001B4D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v107 = a1;
  v105 = a3;
  v106 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v4 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v103 = &v99 - v5;
  v6 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v99 - v12;
  __chkstk_darwin(v11);
  v15 = &v99 - v14;
  v16 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v102 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v101 = &v99 - v22;
  __chkstk_darwin(v21);
  v24 = &v99 - v23;
  sub_10000ED84(a2, v15, &qword_100034E28, &qword_100029570);
  v25 = *(v17 + 48);
  v104 = v16;
  if ((v25)(v15, 1, v16) == 1)
  {
    sub_10000EDEC(v15, &qword_100034E28, &qword_100029570);
    goto LABEL_18;
  }

  sub_10001FB2C(v15, v24, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  if ((sub_100020BA0(v107, v24) & 1) == 0)
  {
    sub_10001FAA8(v24, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
LABEL_18:
    if (qword_100034AF8 != -1)
    {
      goto LABEL_58;
    }

    goto LABEL_19;
  }

  v26 = *(v104 + 36);
  v103 = v24;
  v25 = *&v24[v26];
  v100 = v25 >> 62;
  v106 = v25 & 0xFFFFFFFFFFFFFF8;
  if (v25 >> 62)
  {
    a2 = sub_1000288CC();
  }

  else
  {
    a2 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v107 = v25 & 0xC000000000000001;
  v10 = &off_100031168;
  while (1)
  {
    if (a2 == v13)
    {
      if (qword_100034AF8 != -1)
      {
        swift_once();
      }

      v54 = sub_10002858C();
      sub_10000AEF4(v54, qword_100035430);
      v56 = v102;
      v55 = v103;
      sub_10001FA40(v103, v102, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v57 = sub_10002856C();
      v58 = sub_10002875C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v108[0] = v60;
        *v59 = 136315138;
        v61 = *(v104 + 20);
        sub_100027DAC();
        sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
        v62 = sub_1000288EC();
        v64 = v63;
        sub_10001FAA8(v56, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v65 = sub_100027364(v62, v64, v108);

        *(v59 + 4) = v65;
        v66 = "The next turn does not match a ControlHome task for a disambiguation cancel; requestId=%s";
LABEL_51:
        _os_log_impl(&_mh_execute_header, v57, v58, v66, v59, 0xCu);
        sub_100001EB8(v60);

        v97 = v55;
LABEL_54:
        sub_10001FAA8(v97, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v98 = v105;
        v51 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
        v52 = *(*(v51 - 8) + 56);
        v53 = v98;
        return v52(v53, 1, 1, v51);
      }

      v68 = v56;
LABEL_53:
      sub_10001FAA8(v68, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v97 = v55;
      goto LABEL_54;
    }

    if (v107)
    {
      v33 = sub_10002883C();
    }

    else
    {
      if (v13 >= *(v106 + 16))
      {
        goto LABEL_57;
      }

      v33 = *(v25 + 8 * v13 + 32);
    }

    v34 = v33;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v31 = [v33 currentTaskName];
    if (v31)
    {
      v27 = v31;
      v28 = sub_10002860C();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v108[0] = v28;
    v108[1] = v30;
    __chkstk_darwin(v31);
    *(&v99 - 2) = v108;
    v32 = sub_100016080(sub_1000226EC, (&v99 - 4), &off_100031168);

    sub_100001DBC(&qword_100035520, &qword_100029A88);
    swift_arrayDestroy();

    ++v13;
    if (v32)
    {
      if (v100)
      {
        v67 = sub_1000288CC();
      }

      else
      {
        v67 = *(v106 + 16);
      }

      v69 = v101;
      v70 = _swiftEmptyArrayStorage;
      if (v67)
      {
        v108[0] = _swiftEmptyArrayStorage;
        result = sub_10001EA0C(0, v67 & ~(v67 >> 63), 0);
        if (v67 < 0)
        {
          __break(1u);
          return result;
        }

        v72 = 0;
        v70 = v108[0];
        do
        {
          if (v107)
          {
            v73 = sub_10002883C();
          }

          else
          {
            v73 = *(v25 + 8 * v72 + 32);
          }

          v74 = v73;
          v75 = [v73 flowStateType];

          v108[0] = v70;
          v77 = v70[2];
          v76 = v70[3];
          if (v77 >= v76 >> 1)
          {
            sub_10001EA0C((v76 > 1), (v77 + 1), 1);
            v70 = v108[0];
          }

          ++v72;
          v70[2] = v77 + 1;
          *(v70 + v77 + 8) = v75;
        }

        while (v67 != v72);
      }

      v78 = sub_10001FC2C(v70);

      v79 = sub_10001FC2C(&off_1000311A8);
      v80 = sub_10001FC2C(&off_1000311D0);
      v81 = sub_1000206D8(v80);

      v82 = sub_10001FC2C(&off_1000311F8);
      v83 = sub_10001C854(v82, v81);
      LOBYTE(v81) = sub_1000189B0(v78, v79);

      v55 = v103;
      if (v81)
      {
        v84 = sub_100018B24(v78, v83);

        if (v84)
        {
          v85 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
          v86 = *(v85 + 20);
          v87 = *(v104 + 20);
          v88 = sub_100027DAC();
          v89 = *(v88 - 8);
          v90 = v105;
          (*(v89 + 16))(&v105[v86], v55 + v87, v88);
          sub_10001FAA8(v55, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          (*(v89 + 56))(&v90[v86], 0, 1, v88);
          *v90 = 1;
          return (*(*(v85 - 8) + 56))(v90, 0, 1, v85);
        }
      }

      else
      {
      }

      if (qword_100034AF8 != -1)
      {
        swift_once();
      }

      v91 = sub_10002858C();
      sub_10000AEF4(v91, qword_100035430);
      sub_10001FA40(v55, v69, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v57 = sub_10002856C();
      v58 = sub_10002875C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v108[0] = v60;
        *v59 = 136315138;
        v92 = *(v104 + 20);
        sub_100027DAC();
        sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
        v93 = sub_1000288EC();
        v95 = v94;
        sub_10001FAA8(v69, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v96 = sub_100027364(v93, v95, v108);

        *(v59 + 4) = v96;
        v66 = "The next turn flow states do not match flow states for a disambiguation cancel; requestId=%s)";
        goto LABEL_51;
      }

      v68 = v69;
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  swift_once();
LABEL_19:
  v35 = sub_10002858C();
  sub_10000AEF4(v35, qword_100035430);
  sub_10000ED84(a2, v13, &qword_100034E28, &qword_100029570);
  v36 = sub_10002856C();
  v37 = sub_10002875C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v108[0] = v39;
    *v38 = 136315138;
    sub_10000ED84(v13, v10, &qword_100034E28, &qword_100029570);
    v40 = v104;
    if ((v25)(v10, 1, v104) == 1)
    {
      sub_10000EDEC(v10, &qword_100034E28, &qword_100029570);
      v41 = sub_100027DAC();
      (*(*(v41 - 8) + 56))(v103, 1, 1, v41);
    }

    else
    {
      v42 = *(v40 + 20);
      v43 = sub_100027DAC();
      v44 = *(v43 - 8);
      v45 = &v10[v42];
      v46 = v103;
      (*(v44 + 16))(v103, v45, v43);
      sub_10001FAA8(v10, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      (*(v44 + 56))(v46, 0, 1, v43);
    }

    v47 = sub_10002861C();
    v49 = v48;
    sub_10000EDEC(v13, &qword_100034E28, &qword_100029570);
    v50 = sub_100027364(v47, v49, v108);

    *(v38 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v36, v37, "The next turn is outside the response window for a disambiguation cancel; requestId=%s", v38, 0xCu);
    sub_100001EB8(v39);
  }

  else
  {

    sub_10000EDEC(v13, &qword_100034E28, &qword_100029570);
  }

  v51 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
  v52 = *(*(v51 - 8) + 56);
  v53 = v105;
  return v52(v53, 1, 1, v51);
}

uint64_t sub_10001C21C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v52 - v10;
  v12 = a1 + *(v9 + 44);
  if ((*(v12 + 4) & 1) == 0)
  {
    v23 = *v12;
    sub_1000281CC();
    v24 = sub_10002819C();
    v25 = *(v24 + 16);
    if (v25)
    {
      v53 = a2;
      v54 = v24;
      v55 = _swiftEmptyArrayStorage;
      sub_10001EA2C(0, v25, 0);
      v26 = v54;
      v27 = v55;
      v28 = v55[2];
      v29 = 32;
      do
      {
        v30 = *(v26 + v29);
        v55 = v27;
        v31 = v27[3];
        if (v28 >= v31 >> 1)
        {
          sub_10001EA2C((v31 > 1), (v28 + 1), 1);
          v26 = v54;
          v27 = v55;
        }

        v27[2] = v28 + 1;
        *(v27 + v28 + 8) = v30;
        v29 += 4;
        ++v28;
        --v25;
      }

      while (v25);

      a2 = v53;
    }

    else
    {

      v27 = _swiftEmptyArrayStorage;
    }

    v33 = v27[2];
    v34 = 32;
    while (v33)
    {
      v35 = *(v27 + v34);
      v34 += 4;
      --v33;
      if (v35 == v23)
      {

        v36 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
        v37 = *(v36 + 20);
        v38 = sub_100027DAC();
        (*(*(v38 - 8) + 56))(&a2[v37], 1, 1, v38);
        *a2 = 2;
        v39 = *(*(v36 - 8) + 56);

        return v39(a2, 0, 1, v36);
      }
    }

    if (qword_100034AF8 != -1)
    {
      swift_once();
    }

    v41 = sub_10002858C();
    sub_10000AEF4(v41, qword_100035430);
    sub_10001FA40(a1, v11, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v42 = sub_10002856C();
    v43 = sub_10002875C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55 = v45;
      *v44 = 136315138;
      v46 = *(v4 + 20);
      sub_100027DAC();
      sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
      v47 = sub_1000288EC();
      v49 = v48;
      sub_10001FAA8(v11, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v50 = sub_100027364(v47, v49, &v55);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "The dismissal reason does not match user dismissal reasons; requestId=%s", v44, 0xCu);
      sub_100001EB8(v45);

      goto LABEL_26;
    }

    v32 = v11;
    goto LABEL_25;
  }

  if (qword_100034AF8 != -1)
  {
    swift_once();
  }

  v13 = sub_10002858C();
  sub_10000AEF4(v13, qword_100035430);
  sub_10001FA40(a1, v8, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v14 = sub_10002856C();
  v15 = sub_10002875C();
  if (!os_log_type_enabled(v14, v15))
  {

    v32 = v8;
LABEL_25:
    sub_10001FAA8(v32, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    goto LABEL_26;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v55 = v17;
  *v16 = 136315138;
  v18 = *(v4 + 20);
  sub_100027DAC();
  sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
  v19 = sub_1000288EC();
  v21 = v20;
  sub_10001FAA8(v8, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v22 = sub_100027364(v19, v21, &v55);

  *(v16 + 4) = v22;
  _os_log_impl(&_mh_execute_header, v14, v15, "The dismissal reason could not be extracted for a disambguation abandonment; requestId=%s", v16, 0xCu);
  sub_100001EB8(v17);

LABEL_26:
  v51 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
  return (*(*(v51 - 8) + 56))(a2, 1, 1, v51);
}

uint64_t sub_10001C854(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_10001CC60(&v11, *(*(v2 + 48) + ((v9 << 8) | (4 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001C934()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100035430);
  v1 = sub_10000AEF4(v0, qword_100035430);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10001CA3C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10001CAB0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10001CAE0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10001CB10(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10002894C();
  sub_10002862C();
  v9 = sub_10002897C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10002890C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10001D844(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10001CC60(Swift::UInt32 *a1, Swift::UInt32 a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10002894C();
  sub_10002896C(a2);
  v7 = sub_10002897C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10001D9C4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10001CD58(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100020F24(&qword_100035578, &type metadata accessor for UUID);
  v36 = a2;
  v13 = sub_1000285CC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100020F24(&qword_100035580, &type metadata accessor for UUID);
      v23 = sub_1000285EC();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10001DB20(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10001D038(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001DBC(&qword_100035568, &qword_100029AE8);
  result = sub_1000287FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_10002894C();
      sub_10002862C();
      result = sub_10002897C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10001D298(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001DBC(&qword_100035538, &qword_100029AA8);
  result = sub_1000287FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_10002894C();
      sub_10002896C(v18);
      result = sub_10002897C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10001D4E8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100027DAC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100001DBC(&qword_100035588, &qword_100029B08);
  result = sub_1000287FC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100020F24(&qword_100035578, &type metadata accessor for UUID);
      result = sub_1000285CC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

Swift::Int sub_10001D844(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10001D038(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10001DDC4();
      goto LABEL_16;
    }

    sub_10001E298(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10002894C();
  sub_10002862C();
  result = sub_10002897C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10002890C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10002892C();
  __break(1u);
  return result;
}

void sub_10001D9C4(Swift::UInt32 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001D298(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_10001DF20();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10001E4D0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_10002894C();
  sub_10002896C(a1);
  v10 = sub_10002897C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for FLOWSchemaFLOWStateType();
    a2 = v13;
    while (*(*(v8 + 48) + 4 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 4 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_10002892C();
  __break(1u);
}

uint64_t sub_10001DB20(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001D4E8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10001E060();
      goto LABEL_12;
    }

    sub_10001E6F0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100020F24(&qword_100035578, &type metadata accessor for UUID);
  v15 = sub_1000285CC();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100020F24(&qword_100035580, &type metadata accessor for UUID);
      v23 = sub_1000285EC();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10002892C();
  __break(1u);
  return result;
}

void *sub_10001DDC4()
{
  v1 = v0;
  sub_100001DBC(&qword_100035568, &qword_100029AE8);
  v2 = *v0;
  v3 = sub_1000287EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_10001DF20()
{
  v1 = v0;
  sub_100001DBC(&qword_100035538, &qword_100029AA8);
  v2 = *v0;
  v3 = sub_1000287EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10001E060()
{
  v1 = v0;
  v2 = sub_100027DAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001DBC(&qword_100035588, &qword_100029B08);
  v7 = *v0;
  v8 = sub_1000287EC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_10001E298(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001DBC(&qword_100035568, &qword_100029AE8);
  result = sub_1000287FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_10002894C();

      sub_10002862C();
      result = sub_10002897C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10001E4D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001DBC(&qword_100035538, &qword_100029AA8);
  result = sub_1000287FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_10002894C();
      sub_10002896C(v17);
      result = sub_10002897C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10001E6F0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100027DAC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100001DBC(&qword_100035588, &qword_100029B08);
  v10 = sub_1000287FC();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100020F24(&qword_100035578, &type metadata accessor for UUID);
      result = sub_1000285CC();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

id *sub_10001EA0C(id *a1, int64_t a2, char a3)
{
  result = sub_10001EA4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10001EA2C(id *a1, int64_t a2, char a3)
{
  result = sub_10001EB50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10001EA4C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DBC(&qword_100035550, &qword_100029AB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 2));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

id *sub_10001EB50(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DBC(&qword_100035530, &qword_100029AA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 2));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_10001EC54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10002894C();
  sub_10002862C();
  v6 = sub_10002897C();

  return sub_10001ECCC(a1, a2, v6);
}

unint64_t sub_10001ECCC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10002890C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10001ED84(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_10001F304(*(*(v2 + 48) + ((v9 << 8) | (4 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10001EE7C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v48 = a1;
    v49 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v48;
          v16 = v49;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v49 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v48;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v49 << 8) | (4 * v18)));
        v19 = v6[5];
        sub_10002894C();
        sub_10002896C(v5);
        v20 = sub_10002897C();
        v21 = -1 << *(v6 + 32);
        v2 = v20 & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & v13[v2 >> 6]) == 0);
      v22 = v6[6];
      if (*(v22 + 4 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & v13[v2 >> 6]) == 0)
        {
          break;
        }

        if (*(v22 + 4 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v52 = v47;
    v53 = v49;
    v54 = v11;
    v51[0] = v48;
    v51[1] = v8;
    v14 = (63 - v21) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v41 = swift_slowAlloc();
      memcpy(v41, v6 + 7, v5);
      v42 = sub_10001F418(v41, v14, v6, v2, v51);

      v47 = v52;
      v49 = v53;
      v6 = v42;
      goto LABEL_43;
    }

LABEL_18:
    v44 = v14;
    v45 = &v43;
    __chkstk_darwin(v23);
    v14 = &v43 - v24;
    memcpy(&v43 - v24, v6 + 7, v5);
    v25 = v6[2];
    *(v14 + 8 * v3) &= ~v4;
    v26 = v25 - 1;
    v3 = 1;
    v4 = v48;
LABEL_19:
    v46 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v49 << 8) | (4 * v30)));
      v31 = v6[5];
      sub_10002894C();
      v2 = &v50;
      sub_10002896C(v5);
      v32 = sub_10002897C();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & v13[v34 >> 6]) != 0)
      {
        v37 = v6[6];
        if (*(v37 + 4 * v34) == v5)
        {
LABEL_20:
          v27 = *(v14 + 8 * v35);
          *(v14 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v46 - 1;
            if (__OFSUB__(v46, 1))
            {
              __break(1u);
            }

            if (v46 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & v13[v34 >> 6]) == 0)
            {
              break;
            }

            if (*(v37 + 4 * v34) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v49;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v49 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v49 + 1)
    {
      v39 = v49 + 1;
    }

    else
    {
      v39 = v12;
    }

    v49 = v39 - 1;
    v6 = sub_10001F5F0(v14, v44, v46, v6);
LABEL_43:
    sub_100020E5C();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

unint64_t sub_10001F304(Swift::UInt32 a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_10002894C();
  sub_10002896C(a1);
  v5 = sub_10002897C();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (*(*(v3 + 48) + 4 * v7) != a1)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    v15 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10001DF20();
      v13 = v15;
    }

    v9 = *(*(v13 + 48) + 4 * v7);
    sub_10001F7F8(v7);
    v10 = 0;
    *v1 = v15;
  }

  else
  {
LABEL_5:
    v9 = 0;
    v10 = 1;
  }

  return v9 | (v10 << 32);
}

Swift::Int sub_10001F418(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 8) | (4 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v18 = *(a3 + 40);
    sub_10002894C();
    sub_10002896C(v17);
    result = sub_10002897C();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 4 * v20) == v17)
      {
LABEL_2:
        v11 = v7[v21];
        v7[v21] = v11 & ~v22;
        if ((v11 & v22) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 4 * v20) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v26 = v12 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_10001F5F0(v7, a2, v9, a3);
}

uint64_t sub_10001F5F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100001DBC(&qword_100035538, &qword_100029AA8);
  result = sub_10002880C();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    v17 = v9[5];
    sub_10002894C();
    sub_10002896C(v16);
    result = sub_10002897C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 4 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

unint64_t sub_10001F7F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1000287DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 4 * v6);
        sub_10002894C();
        sub_10002896C(v12);
        v13 = sub_10002897C() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 4 * v2);
          v16 = (v14 + 4 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

BOOL sub_10001F9A0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_10002890C() & 1;
    }
  }

  return result;
}

uint64_t sub_10001FA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FAA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001FB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FB94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10002873C();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10001CB10(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10001FC2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for FLOWSchemaFLOWStateType();
  sub_100020F24(&qword_100035548, type metadata accessor for FLOWSchemaFLOWStateType);
  result = sub_10002873C();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10001CC60(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10001FCD8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_10002890C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for UniversalSuggestionItem(0);
  v7 = *(v6 + 24);
  if ((sub_100027D9C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v6 + 28);

  return sub_1000282AC();
}

uint64_t sub_10001FDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000280AC();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - v10;
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100001DBC(&qword_100035570, &unk_100029AF8);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v40 - v21;
  v23 = &v40 + *(v20 + 56) - v21;
  sub_10001FA40(a1, &v40 - v21, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  sub_10001FA40(a2, v23, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  v24 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v22, 2, v24);
  if (!v26)
  {
    v41 = v13;
    v42 = v11;
    v27 = v43;
    sub_10001FA40(v22, v17, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    v28 = *(v24 + 48);
    if (!v25(v23, 2, v24))
    {
      v32 = v27;
      v33 = *(v27 + 32);
      v34 = v41;
      v33(v41, v23, v4);
      v33(v42, &v17[v28], v4);
      v35 = &v23[v28];
      v36 = v34;
      v33(v8, v35, v4);
      v37 = sub_10002808C();
      v38 = *(v32 + 8);
      v38(v17, v4);
      if (v37)
      {
        v39 = v42;
        v30 = sub_10002808C();
        v38(v8, v4);
        v38(v39, v4);
        v38(v36, v4);
        sub_10001FAA8(v22, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
        return v30 & 1;
      }

      v38(v8, v4);
      v38(v42, v4);
      v38(v34, v4);
      sub_10001FAA8(v22, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
      goto LABEL_10;
    }

    v29 = *(v27 + 8);
    v29(&v17[v28], v4);
    v29(v17, v4);
    goto LABEL_9;
  }

  if (v26 != 1)
  {
    if (v25(v23, 2, v24) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_10000EDEC(v22, &qword_100035570, &unk_100029AF8);
LABEL_10:
    v30 = 0;
    return v30 & 1;
  }

  if (v25(v23, 2, v24) != 1)
  {
    goto LABEL_9;
  }

LABEL_8:
  sub_10001FAA8(v22, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_100020220(uint64_t a1)
{
  v2 = sub_100027DAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100020F24(&qword_100035578, &type metadata accessor for UUID);
  result = sub_10002873C();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_10001CD58(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_1000203BC()
{
  v0 = sub_100027E4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  sub_100027E0C();
  v8 = sub_100027EBC();

  if (*(v8 + 16))
  {
    v9 = sub_10001EC54(0x73656D616ELL, 0xE500000000000000);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      if (v11 >> 62)
      {
        goto LABEL_21;
      }

      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v13 = sub_10002883C();
          }

          else
          {
            if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v13 = *(v11 + 32);
          }

          v11 = v13;
          v14 = sub_100027EAC();

          v24 = *(v14 + 16);
          if (v24)
          {
            v22 = v7;
            v7 = 0;
            v15 = v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
            v23 = 0x800000010002A630;
            while (v7 < *(v14 + 16))
            {
              (*(v1 + 16))(v5, v15 + *(v1 + 72) * v7, v0);
              v11 = v5;
              v17 = sub_100027E3C();
              if (v18)
              {
                if (v17 == 0xD000000000000012 && v18 == v23)
                {

LABEL_17:

                  v19 = v22;
                  (*(v1 + 32))(v22, v5, v0);
                  v20 = sub_100027E2C();
                  (*(v1 + 8))(v19, v0);
                  return v20;
                }

                v11 = v18;
                v16 = sub_10002890C();

                if (v16)
                {
                  goto LABEL_17;
                }
              }

              ++v7;
              (*(v1 + 8))(v5, v0);
              if (v24 == v7)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_21:
            result = sub_1000288CC();
            if (result)
            {
              continue;
            }
          }

          break;
        }
      }
    }
  }

LABEL_18:

  return 0;
}

void *sub_1000206D8(uint64_t a1)
{
  if (qword_100034AE8 != -1)
  {
    swift_once();
  }

  v2 = qword_100034AF0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_100034AD8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_100034AE0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_10001A2B8(v5);

  sub_10001A2B8(v6);

  sub_10001A2B8(v7);

  sub_10001A2B8(v8);
  sub_100001DBC(&qword_100035540, &qword_100029AB0);
  swift_arrayDestroy();
  if (*(a1 + 16) > _swiftEmptySetSingleton[2] >> 3)
  {
    return sub_10001EE7C(a1, _swiftEmptySetSingleton);
  }

  sub_10001ED84(a1);
  return _swiftEmptySetSingleton;
}

uint64_t sub_1000208D0(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v4 = v3;
  v5 = *(a1 + *(v3 + 36));
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v28 = *(a1 + *(v3 + 36));
    }

    v6 = sub_1000288CC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v31 = _swiftEmptyArrayStorage;
    v8 = &v31;
    sub_10001EA0C(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
LABEL_31:
      result = sub_1000288CC();
      if (!result)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v9 = 0;
    v7 = v31;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = sub_10002883C();
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 flowStateType];

      v31 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_10001EA0C((v13 > 1), (v14 + 1), 1);
        v7 = v31;
      }

      ++v9;
      v7[2] = v14 + 1;
      *(v7 + v14 + 8) = v12;
    }

    while (v6 != v9);
  }

  v15 = sub_10001FC2C(v7);

  v16 = sub_10001FC2C(&off_1000310B8);
  v17 = sub_1000206D8(_swiftEmptySetSingleton);
  v18 = sub_1000189B0(v15, v16);

  if ((v18 & 1) == 0)
  {

    v27 = 0;
LABEL_25:

    return v27 & 1;
  }

  v19 = sub_100018B24(v15, v17);

  if ((v19 & 1) == 0 || (v20 = (a1 + *(v4 + 32)), !*v20))
  {
LABEL_32:
    v27 = 0;
    return v27 & 1;
  }

  v8 = v20[1];
  a1 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    goto LABEL_31;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_17:
  if ((v8 & 0xC000000000000001) != 0)
  {

    v22 = sub_10002883C();

LABEL_20:
    v23 = [v22 entityIdentifier];

    if (v23)
    {
      v24 = sub_10002860C();
      v26 = v25;

      if (v24 == *v30 && v26 == v30[1])
      {
        v27 = 1;
      }

      else
      {
        v27 = sub_10002890C();
      }

      goto LABEL_25;
    }

    goto LABEL_32;
  }

  if (*(a1 + 16))
  {
    v22 = v8[4];
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020BA0(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for UniversalSuggestionsPromptState(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  sub_10000ED84(a1 + *(v18 + 40), v9, &qword_100034EC8, &unk_100029AC0);
  v19 = *(v11 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    v20 = v9;
  }

  else
  {
    sub_10001FB2C(v9, v17, type metadata accessor for UniversalSuggestionsPromptState);
    sub_10000ED84(v24 + *(v18 + 40), v7, &qword_100034EC8, &unk_100029AC0);
    if (v19(v7, 1, v10) != 1)
    {
      sub_10001FB2C(v7, v15, type metadata accessor for UniversalSuggestionsPromptState);
      v21 = sub_100027D9C();
      sub_10001FAA8(v15, type metadata accessor for UniversalSuggestionsPromptState);
      sub_10001FAA8(v17, type metadata accessor for UniversalSuggestionsPromptState);
      return v21 & 1;
    }

    sub_10001FAA8(v17, type metadata accessor for UniversalSuggestionsPromptState);
    v20 = v7;
  }

  sub_10000EDEC(v20, &qword_100034EC8, &unk_100029AC0);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_100020F24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100020F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000210E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100027DAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_100021238()
{
  sub_100027DAC();
  if (v0 <= 0x3F)
  {
    sub_100021B00(319, &unk_1000355F8, &type metadata accessor for UUID);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000213B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002143C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100021528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100021664(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1000217A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100021848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001DBC(&qword_100034E10, &qword_100029AF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100021958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100027DAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001DBC(&qword_100034E10, &qword_100029AF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100021A60()
{
  sub_100027DAC();
  if (v0 <= 0x3F)
  {
    sub_100021B00(319, &unk_100035858, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100021B00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000287BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100021B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100034E18, &qword_100029560);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100021BF4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100001DBC(&qword_100034E18, &qword_100029560);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100021CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_100021D00()
{
  if (!qword_100035908)
  {
    v0 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
    if (!v1)
    {
      atomic_store(v0, &qword_100035908);
    }
  }
}

uint64_t sub_100021D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100021E34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

void sub_100021EF8()
{
  sub_100021B00(319, &unk_1000355F8, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for UniversalSuggestionDisambiguationOffered.DisambiguationOfferedState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UniversalSuggestionDisambiguationOffered.DisambiguationOfferedState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10002210C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100027DAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000282BC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100022244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100027DAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000282BC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100022368()
{
  sub_100022414();
  if (v0 <= 0x3F)
  {
    sub_100027DAC();
    if (v1 <= 0x3F)
    {
      sub_1000282BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100022414()
{
  if (!qword_100035A28)
  {
    v0 = sub_1000287BC();
    if (!v1)
    {
      atomic_store(v0, &qword_100035A28);
    }
  }
}

uint64_t sub_100022488(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_100022550(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000225FC()
{
  sub_100021B00(319, &unk_1000355F8, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_100022698()
{
  result = qword_100035AF0;
  if (!qword_100035AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AF0);
  }

  return result;
}

void sub_100022708(const char *a1, uint64_t a2, char a3)
{
  if (qword_100034B00 != -1)
  {
    swift_once();
  }

  v5 = byte_1000367E0;
  log = sub_1000284FC();
  v6 = sub_10002879C();
  v7 = sub_1000287AC();
  if (v5 == 1)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (a3)
    {
      if (a1 >> 32)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (a1 >> 16 > 0x10)
      {
        goto LABEL_28;
      }

      a1 = &v12;
    }

    else if (!a1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1000284CC();
    v10 = "";
LABEL_25:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, v6, v9, a1, v10, v8, 2u);

    return;
  }

LABEL_8:
  if (v7)
  {
    if ((a3 & 1) == 0)
    {
      if (!a1)
      {
        __break(1u);
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_31:
        __break(1u);
        return;
      }

      if (a1 >> 16 <= 0x10)
      {
        a1 = &v13;
LABEL_24:
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_1000284CC();
        v10 = "enableTelemetry=YES";
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_12:
}

uint64_t sub_1000228E8(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_1000284DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100034B00 != -1)
  {
    swift_once();
  }

  v12 = byte_1000367E0;
  v13 = sub_1000284FC();
  v14 = sub_10002878C();
  result = sub_1000287AC();
  if (v12 == 1)
  {
    if ((result & 1) == 0)
    {
LABEL_23:

      (*(v8 + 16))(v11, a4, v7);
      v19 = sub_10002854C();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      return sub_10002853C();
    }

    if (a3)
    {
LABEL_12:
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (a1 >> 16 <= 0x10)
        {
          a1 = v22;
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (a1)
    {
LABEL_16:
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_1000284CC();
      v18 = "";
LABEL_22:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, a1, v18, v16, 2u);

      goto LABEL_23;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_12;
    }

LABEL_21:
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1000284CC();
    v18 = "enableTelemetry=YES";
    goto LABEL_22;
  }

  if (a1 >> 32)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 > 0x10)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    a1 = &v23;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_100022B60()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1000285FC();
  v2 = [v0 BOOLForKey:v1];

  byte_1000367E0 = v2;
}

uint64_t sub_100022BF0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100022CC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100022D38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100022E78(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1000230B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a1;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UniversalSuggestionsPromptCoalescedAsyncSequence.UniversalSuggestionsPromptCoalescedFeaturisedTurnAsyncIterator();
  v10 = v9[9];
  v11 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a3 + v10, 1, 1, v11);
  v12(a3 + v9[10], 1, 1, v11);
  *(a3 + v9[11]) = 0;
  v13 = v16;
  (*(v5 + 16))(v8, v16, a2);
  sub_1000286FC();
  return (*(v5 + 8))(v13, a2);
}

uint64_t sub_100023240(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = *(*(sub_100001DBC(&qword_100034E28, &qword_100029570) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000233B4, 0, 0);
}

uint64_t sub_1000233B4()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 44);
  *(v0 + 216) = v2;
  if (*(v1 + v2))
  {
    (*(*(v0 + 48) + 56))(*(v0 + 16), 1, 1, *(v0 + 40));
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v33 = *(v0 + 64);
    v35 = *(v0 + 56);

    v13 = *(v0 + 8);
LABEL_5:

    return v13();
  }

  if (sub_1000286EC())
  {
    *(v1 + v2) = 1;
    sub_1000286BC();
    sub_1000259FC(qword_100035B90, &type metadata accessor for CancellationError);
    swift_allocError();
    sub_10002859C();
    swift_willThrow();
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);
    v22 = *(v0 + 72);
    v23 = *(v0 + 80);
    v32 = *(v0 + 64);
    v34 = *(v0 + 56);

    v13 = *(v0 + 8);
    goto LABEL_5;
  }

  v25 = *(v0 + 24);
  *(v0 + 152) = *(v25 + 24);
  *(v0 + 160) = *(v25 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v29 = swift_task_alloc();
  *(v0 + 168) = v29;
  *v29 = v0;
  v29[1] = sub_1000236C4;
  v30 = *(v0 + 144);
  v31 = *(v0 + 32);

  return dispatch thunk of AsyncIteratorProtocol.next()(v30, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1000236C4()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_100024308;
  }

  else
  {
    v3 = sub_1000237D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000237D8()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 48) + 48);
  if (v2(*(v0 + 144), 1, v1) == 1)
  {
    *(*(v0 + 32) + *(v0 + 216)) = 1;
    v1 = *(v0 + 40);
  }

  v3 = *(v0 + 136);
  v4 = *(v0 + 32);
  v5 = *(*(v0 + 24) + 36);
  sub_10000ED84(v4 + v5, v3, &qword_100034E28, &qword_100029570);
  if (v2(v3, 1, v1) == 1)
  {
    sub_10000EDEC(*(v0 + 136), &qword_100034E28, &qword_100029570);
  }

  else
  {
    v6 = *(v0 + 144);
    v7 = *(v0 + 128);
    v8 = *(v0 + 40);
    sub_100025934(*(v0 + 136), *(v0 + 80), type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10000ED84(v6, v7, &qword_100034E28, &qword_100029570);
    if (v2(v7, 1, v8) == 1)
    {
      v9 = *(v0 + 128);
      sub_10002599C(*(v0 + 80), type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      sub_10000EDEC(v9, &qword_100034E28, &qword_100029570);
    }

    else
    {
      v10 = *(v0 + 152);
      v11 = *(v0 + 160);
      v13 = *(v0 + 72);
      v12 = *(v0 + 80);
      sub_100025934(*(v0 + 128), v13, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      if (sub_10002501C(v12, v13))
      {
        sub_100024E80(*(v0 + 144), *(v0 + 32) + *(*(v0 + 24) + 40));
        v14 = swift_task_alloc();
        *(v0 + 184) = v14;
        *v14 = v0;
        v15 = sub_100023E98;
LABEL_12:
        v14[1] = v15;
        v20 = *(v0 + 24);
        v21 = *(v0 + 32);
        v22 = *(v0 + 16);

        return sub_100023240(v22, v20);
      }

      v16 = *(v0 + 80);
      sub_10002599C(*(v0 + 72), type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      sub_10002599C(v16, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    }
  }

  v17 = *(v0 + 120);
  v18 = *(v0 + 40);
  sub_10000ED84(v4 + v5, v17, &qword_100034E28, &qword_100029570);
  if (v2(v17, 1, v18) == 1)
  {
    v19 = *(v0 + 144);
    sub_10000EDEC(*(v0 + 120), &qword_100034E28, &qword_100029570);
    sub_100024E80(v19, v4 + v5);
    v14 = swift_task_alloc();
    *(v0 + 200) = v14;
    *v14 = v0;
    v15 = sub_1000240E8;
    goto LABEL_12;
  }

  v64 = v5;
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v27 = *(v0 + 32);
  v26 = *(v0 + 40);
  v28 = *(v0 + 24);
  sub_100025934(*(v0 + 120), *(v0 + 64), type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v61 = *(v28 + 40);
  v62 = v27;
  sub_10000ED84(v27 + v61, v25, &qword_100034E28, &qword_100029570);
  sub_10000ED84(v25, v24, &qword_100034E28, &qword_100029570);
  if (v2(v24, 1, v26) == 1)
  {
    v29 = *(v0 + 112);
    v30 = *(v0 + 40);
    v31 = *(v0 + 48);
    sub_10000EDEC(*(v0 + 104), &qword_100034E28, &qword_100029570);
    (*(v31 + 56))(v29, 1, 1, v30);
  }

  else
  {
    v60 = *(v0 + 176);
    v32 = *(v0 + 152);
    v33 = *(v0 + 160);
    v34 = *(v0 + 112);
    v36 = *(v0 + 56);
    v35 = *(v0 + 64);
    v37 = *(v0 + 32);
    sub_100025934(*(v0 + 96), v36, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10002465C(v36, v37, v35, v34);
    result = sub_10002599C(v36, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    if (v60)
    {
      return result;
    }

    sub_10000EDEC(*(v0 + 104), &qword_100034E28, &qword_100029570);
  }

  v38 = *(v0 + 112);
  v39 = *(v0 + 88);
  v40 = *(v0 + 40);
  v41 = *(v0 + 48);
  sub_100024E80(*(v0 + 144), v4 + v64);
  sub_10000EDEC(v62 + v61, &qword_100034E28, &qword_100029570);
  v42 = *(v41 + 56);
  v42(v62 + v61, 1, 1, v40);
  sub_100010250(v38, v39, &qword_100034E28, &qword_100029570);
  v43 = v2(v39, 1, v40);
  v44 = *(v0 + 88);
  if (v43 == 1)
  {
    v45 = *(v0 + 40);
    sub_100024EF0(*(v0 + 64), *(v0 + 16));
    if (v2(v44, 1, v45) != 1)
    {
      sub_10000EDEC(*(v0 + 88), &qword_100034E28, &qword_100029570);
    }
  }

  else
  {
    sub_100025934(*(v0 + 88), *(v0 + 16), type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  v46 = *(v0 + 64);
  v47 = *(v0 + 40);
  v48 = *(v0 + 16);
  sub_10000EDEC(*(v0 + 144), &qword_100034E28, &qword_100029570);
  v42(v48, 0, 1, v47);
  sub_10002599C(v46, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v50 = *(v0 + 136);
  v49 = *(v0 + 144);
  v52 = *(v0 + 120);
  v51 = *(v0 + 128);
  v54 = *(v0 + 104);
  v53 = *(v0 + 112);
  v56 = *(v0 + 88);
  v55 = *(v0 + 96);
  v58 = *(v0 + 72);
  v57 = *(v0 + 80);
  v63 = *(v0 + 64);
  v65 = *(v0 + 56);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_100023E98()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100024404;
  }

  else
  {
    v3 = sub_100023FAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100023FAC()
{
  v1 = v0[18];
  v2 = v0[10];
  sub_10002599C(v0[9], type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  sub_10002599C(v2, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  sub_10000EDEC(v1, &qword_100034E28, &qword_100029570);
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  v15 = v0[8];
  v16 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000240E8()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_100024548;
  }

  else
  {
    v3 = sub_1000241FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000241FC()
{
  sub_10000EDEC(v0[18], &qword_100034E28, &qword_100029570);
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  v13 = v0[8];
  v14 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100024308()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v10 = v0[10];
  v13 = v0[8];
  v14 = v0[7];
  v15 = v0[22];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100024404()
{
  v1 = v0[18];
  v2 = v0[10];
  sub_10002599C(v0[9], type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  sub_10002599C(v2, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  sub_10000EDEC(v1, &qword_100034E28, &qword_100029570);
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v15 = v0[8];
  v16 = v0[7];
  v17 = v0[24];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100024548()
{
  sub_10000EDEC(v0[18], &qword_100034E28, &qword_100029570);
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v10 = v0[10];
  v13 = v0[8];
  v14 = v0[7];
  v15 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002465C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UniversalSuggestionsPromptCoalescedAsyncSequence.UniversalSuggestionsPromptCoalescedFeaturisedTurnAsyncIterator();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, a2, v8);
  sub_1000247B8(a3, a1, a4);
  (*(v9 + 8))(v12, v8);
  v13 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  return (*(*(v13 - 8) + 56))(a4, 0, 1, v13);
}

uint64_t sub_1000247B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v5 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - v7;
  v9 = sub_100027DAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v34 - v16;
  sub_10000ED84(a1, &v34 - v16, &qword_100034ED0, &qword_100029610);
  v18 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v19 = *(v10 + 16);
  v20 = a1 + v18[5];
  v38 = v9;
  v19(v13, v20, v9);
  v21 = *(a1 + v18[7]);
  v35 = *(a1 + v18[6]);
  v36 = v21;
  v22 = (a1 + v18[8]);
  v24 = *v22;
  v23 = v22[1];
  v37 = *(a1 + v18[9]);
  v25 = a1 + v18[10];
  v39 = v8;
  sub_10000ED84(v25, v8, &qword_100034EC8, &unk_100029AC0);
  v26 = v18[11];
  v27 = (a1 + v26);
  if (*(a1 + v26 + 4) == 1)
  {
    v27 = (v34 + v26);
    LODWORD(v34) = *(v34 + v26 + 4);
  }

  else
  {
    LODWORD(v34) = 0;
  }

  v28 = *v27;
  v29 = *(a1 + v18[12]);
  sub_100010250(v17, a3, &qword_100034ED0, &qword_100029610);
  (*(v10 + 32))(a3 + v18[5], v13, v38);
  v30 = v36;
  *(a3 + v18[6]) = v35;
  *(a3 + v18[7]) = v30;
  v31 = (a3 + v18[8]);
  *v31 = v24;
  v31[1] = v23;
  *(a3 + v18[9]) = v37;
  sub_100010250(v39, a3 + v18[10], &qword_100034EC8, &unk_100029AC0);
  v32 = a3 + v18[11];
  *v32 = v28;
  *(v32 + 4) = v34;
  *(a3 + v18[12]) = v29;

  sub_100025A5C(v24);
}

uint64_t sub_100024AB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E984;

  return sub_100023240(a1, a2);
}

uint64_t sub_100024B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu[1];
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_100024C34;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_100024C34()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_100024D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = *(a1 + 24);
  return sub_1000230B4(v7, v4, a2);
}

uint64_t sub_100024E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100024D44(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_100024E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024F54()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100035AF8);
  v1 = sub_10000AEF4(v0, qword_100035AF8);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10002501C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v98 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v97 = &v92 - v8;
  v9 = sub_10002807C();
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = *(v100 + 64);
  __chkstk_darwin(v9);
  v99 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v92 - v17;
  v19 = type metadata accessor for UniversalSuggestionsPromptState(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v102 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v92 - v24;
  v26 = *(v4 + 40);
  v96 = a1;
  sub_10000ED84(a1 + v26, v18, &qword_100034EC8, &unk_100029AC0);
  v27 = *(v20 + 48);
  if (v27(v18, 1, v19) == 1)
  {
    sub_10000EDEC(v18, &qword_100034EC8, &unk_100029AC0);
    return 0;
  }

  sub_100025934(v18, v25, type metadata accessor for UniversalSuggestionsPromptState);
  sub_10000ED84(a2 + *(v4 + 40), v16, &qword_100034EC8, &unk_100029AC0);
  if (v27(v16, 1, v19) == 1)
  {
    sub_10002599C(v25, type metadata accessor for UniversalSuggestionsPromptState);
    sub_10000EDEC(v16, &qword_100034EC8, &unk_100029AC0);
    return 0;
  }

  v28 = v4;
  v29 = a2;
  v30 = v102;
  sub_100025934(v16, v102, type metadata accessor for UniversalSuggestionsPromptState);
  if ((sub_100027D9C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v31 = *&v25[*(v19 + 20)];
  v32 = sub_100008790(v31);
  if (!v33)
  {
    goto LABEL_20;
  }

  v34 = v32;
  v35 = v33;
  v36 = *(v30 + *(v19 + 20));
  v37 = sub_100008790(v36);
  if (!v38)
  {
    goto LABEL_19;
  }

  if (v34 == v37 && v35 == v38)
  {
  }

  else
  {
    v39 = sub_10002890C();

    if ((v39 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v94 = v28;
  v95 = v31;
  v93 = v36;
  v40 = v99;
  v41 = v100;
  v42 = v101;
  (*(v100 + 104))(v99, enum case for PromptEventType.Beginning.disambiguation(_:), v101);
  v43 = sub_10002806C();
  v45 = v44;
  (*(v41 + 8))(v40, v42);
  if (v34 == v43 && v35 == v45)
  {

    v47 = v94;
    v46 = v95;
  }

  else
  {
    v48 = sub_10002890C();

    v47 = v94;
    v46 = v95;
    if ((v48 & 1) == 0)
    {
LABEL_20:
      v52 = v30;
LABEL_21:
      sub_10002599C(v52, type metadata accessor for UniversalSuggestionsPromptState);
      sub_10002599C(v25, type metadata accessor for UniversalSuggestionsPromptState);
      return 0;
    }
  }

  v49 = v93;
  sub_1000087A8(v93);
  if (v50)
  {
    goto LABEL_19;
  }

  sub_100008990(v49);
  if (v51)
  {
    goto LABEL_19;
  }

  v54 = sub_1000089A8(v46);
  if (!v55)
  {
    goto LABEL_20;
  }

  v56 = v55;
  v57 = v54;
  v58 = sub_1000089C0(v46);
  if (!v59)
  {
LABEL_19:

    goto LABEL_20;
  }

  v60 = v59;
  v101 = v29;
  v61 = v58;
  v62 = v93;
  v63 = sub_1000089A8(v93);
  if (!v64)
  {
LABEL_32:

    v52 = v102;
    goto LABEL_21;
  }

  v65 = v63;
  v66 = v64;
  v67 = sub_1000089C0(v62);
  if (!v68)
  {

    goto LABEL_32;
  }

  v69 = v67;
  v70 = v68;
  if (v57 == v65 && v56 == v66)
  {
  }

  else
  {
    v71 = sub_10002890C();

    if ((v71 & 1) == 0)
    {

      v73 = v102;
      goto LABEL_45;
    }
  }

  if (v61 != v69 || v60 != v70)
  {
    v74 = sub_10002890C();

    v72 = v101;
    v73 = v102;
    if (v74)
    {
      goto LABEL_38;
    }

LABEL_45:
    v52 = v73;
    goto LABEL_21;
  }

  v72 = v101;
  v73 = v102;
LABEL_38:
  v75 = v97;
  if (qword_100034B08 != -1)
  {
    swift_once();
  }

  v76 = sub_10002858C();
  sub_10000AEF4(v76, qword_100035AF8);
  sub_100024EF0(v72, v75);
  v77 = v98;
  sub_100024EF0(v96, v98);
  v78 = sub_10002856C();
  v79 = sub_10002875C();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v103 = v101;
    *v80 = 136315394;
    LODWORD(v100) = v79;
    v81 = *(v47 + 20);
    sub_100027DAC();
    sub_1000259FC(&qword_100034E20, &type metadata accessor for UUID);
    v82 = sub_1000288EC();
    v84 = v83;
    sub_10002599C(v75, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v85 = sub_100027364(v82, v84, &v103);

    *(v80 + 4) = v85;
    *(v80 + 12) = 2080;
    v86 = v77 + *(v47 + 20);
    v87 = sub_1000288EC();
    v89 = v88;
    sub_10002599C(v77, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v90 = sub_100027364(v87, v89, &v103);

    *(v80 + 14) = v90;
    _os_log_impl(&_mh_execute_header, v78, v100, "Coalescing a featurised turn with request id %s into turn with request id %s due to a reprompt", v80, 0x16u);
    swift_arrayDestroy();

    v91 = v102;
  }

  else
  {

    sub_10002599C(v77, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10002599C(v75, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v91 = v73;
  }

  sub_10002599C(v91, type metadata accessor for UniversalSuggestionsPromptState);
  sub_10002599C(v25, type metadata accessor for UniversalSuggestionsPromptState);
  return 1;
}

uint64_t sub_100025934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002599C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000259FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100025A5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100025AD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_10002651C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100025B7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  v10 = *(v9 + 84);
  v52 = sub_100027D7C();
  v11 = *(v52 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(sub_100027DAC() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  v19 = v18 - 1;
  if (v17 > v19)
  {
    v19 = v17;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v20 - 1 <= v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = v20 - 1;
  }

  v22 = *(v14 + 80);
  v23 = *(v11 + 64);
  if (!v12)
  {
    ++v23;
  }

  v24 = *(v14 + 64);
  if (!a2)
  {
    return 0;
  }

  v25 = v22;
  v26 = *(v11 + 80) & 0xF8 | v22 | 7u;
  v27 = *(v9 + 64) + v26;
  v28 = v22 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v29 = v24 + 7;
  v30 = v23 + v22;
  v31 = v22 + 8;
  if (a2 > v21)
  {
    v32 = (((v29 & 0xFFFFFFFFFFFFFFF8) + ((v31 + ((((((((v29 + (v30 & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v28) + 20) & 0xFFFFFFFFFFFFFFF8) + 8;
    v33 = ((((v27 | v26) + v32) & ~v26) + v32) | 1;
    v34 = 8 * v33;
    if (v33 > 3)
    {
      goto LABEL_23;
    }

    v36 = (a2 - v21 + ~(-1 << v34)) >> v34;
    if (v36 > 0xFFFE)
    {
      v35 = *(a1 + v33);
      if (!v35)
      {
        goto LABEL_42;
      }

      goto LABEL_30;
    }

    if (v36 > 0xFE)
    {
      v35 = *(a1 + v33);
      if (!*(a1 + v33))
      {
        goto LABEL_42;
      }

      goto LABEL_30;
    }

    if (v36)
    {
LABEL_23:
      v35 = *(a1 + v33);
      if (!*(a1 + v33))
      {
        goto LABEL_42;
      }

LABEL_30:
      v37 = (v35 - 1) << v34;
      if (v33 <= 3)
      {
        v38 = v33;
      }

      else
      {
        v37 = 0;
        v38 = 4;
      }

      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v39 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v39 = *a1;
        }
      }

      else if (v38 == 1)
      {
        v39 = *a1;
      }

      else
      {
        v39 = *a1;
      }

      return v21 + (v39 | v37) + 1;
    }
  }

LABEL_42:
  if (v10 >= v20 - 1)
  {
    v45 = *(v9 + 48);

    return v45(a1, v10, v53);
  }

  v41 = (a1 + v27) & ~v26;
  if (v13 == v20)
  {
    if (v12 < 2)
    {
      return 0;
    }

    v42 = (*(v11 + 48))(v41, v12, v52);
  }

  else
  {
    v46 = (v30 + v41) & ~v25;
    if (v16 == v20)
    {
      v47 = (*(v15 + 48))(v46);
      v44 = v47 != 0;
      result = (v47 - 1);
      if (result != 0 && v44)
      {
        return result;
      }

      return 0;
    }

    v48 = ((v29 + v46) & 0xFFFFFFFFFFFFFFF8);
    if ((v19 & 0x80000000) == 0)
    {
      v49 = *v48;
      if (*v48 >= 0xFFFFFFFF)
      {
        LODWORD(v49) = -1;
      }

      result = v49;
      if (v49 == 0 || v49 == -1)
      {
        return 0;
      }

      return result;
    }

    v50 = (v31 + ((((((v48 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v28;
    if (v16 < 0x7FFFFFFF)
    {
      v51 = *((v29 + v50) & 0xFFFFFFFFFFFFFFF8);
      if (v51 >= 0xFFFFFFFF)
      {
        LODWORD(v51) = -1;
      }

      v42 = v51 + 1;
    }

    else
    {
      v42 = (*(v15 + 48))(v50);
    }
  }

  if (v42 < 2)
  {
    return 0;
  }

  v43 = v42 - 1;
  v44 = v43 != 0;
  result = v43 - 1;
  if (result == 0 || !v44)
  {
    return 0;
  }

  return result;
}

void sub_100025FBC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v57 = v9;
  v58 = AssociatedTypeWitness;
  v10 = *(v9 + 84);
  v56 = sub_100027D7C();
  v11 = *(v56 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  v15 = *(sub_100027DAC() - 8);
  v16 = *(v15 + 84);
  v17 = *(v15 + 64);
  if (v16 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = *(v15 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = *(v15 + 84);
  }

  v20 = v19 - 1;
  if (v18 > v19 - 1)
  {
    v20 = v18;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v22 = v21 - 1;
  if (v21 - 1 <= v10)
  {
    v23 = v10;
  }

  else
  {
    v23 = v21 - 1;
  }

  v24 = *(v15 + 80);
  v25 = *(v11 + 80) & 0xF8 | *(v15 + 80) | 7u;
  v26 = *(v9 + 64) + v25;
  if (v12)
  {
    v27 = *(v11 + 64);
  }

  else
  {
    v27 = *(v11 + 64) + 1;
  }

  v28 = *(v15 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v29 = v17 + 7;
  v30 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v27 + v24;
  v32 = v17 + 7 + (v31 & ~v24);
  v33 = v24 + 8;
  v34 = ((v30 + ((v24 + 8 + (((((((v32 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v28) + 20) & 0xFFFFFFFFFFFFFFF8) + 8;
  v35 = ((((v26 | v25) + v34) & ~v25) + v34) | 1;
  if (a3 > v23)
  {
    if (v35 <= 3)
    {
      v36 = (a3 - v23 + ~(-1 << (8 * v35))) >> (8 * v35);
      if (v36 > 0xFFFE)
      {
        v14 = 4;
      }

      else
      {
        if (v36 < 0xFF)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        if (v36)
        {
          v14 = v37;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  if (v23 >= a2)
  {
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        *&a1[v35] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_47;
      }

      *&a1[v35] = 0;
    }

    else if (v14)
    {
      a1[v35] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    if (!a2)
    {
      return;
    }

LABEL_47:
    if (v10 >= v22)
    {
      v44 = v58;
      v45 = *(v57 + 56);
      v46 = a1;
      v47 = a2;
      v48 = v10;
    }

    else
    {
      v40 = v30 + 8;
      v41 = (&a1[v26] & ~v25);
      if (v22 < a2)
      {
        if (((((v33 + (((((((v32 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v28) + v40 + 12) & 0xFFFFFFF8) == 0xFFFFFFF8)
        {
          return;
        }

        v42 = a2 - v21;
        v43 = v41;
        v40 = ((((v33 + (((((((v32 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v28) + v40 + 12) & 0xFFFFFFF8) + 8;
        goto LABEL_51;
      }

      v50 = a2 - v21;
      if (a2 >= v21)
      {
        if (((((v33 + (((((((v32 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v28) + v40 + 12) & 0xFFFFFFF8) != 0xFFFFFFF8)
        {
          bzero(v41, ((((v33 + (((((((v32 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v28) + v40 + 12) & 0xFFFFFFF8) + 8);
          *v41 = v50;
        }

        return;
      }

      if (v13 != v21)
      {
        v51 = a2 + 1;
        v52 = (v41 + v31) & ~v24;
        if (v16 == v21)
        {
          v53 = *(v15 + 56);
          v54 = a2 + 1;
        }

        else
        {
          v55 = ((v29 + v52) & 0xFFFFFFFFFFFFFFF8);
          if ((v20 & 0x80000000) == 0)
          {
            if ((v51 & 0x80000000) != 0)
            {
              *v55 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v55 = a2;
            }

            return;
          }

          v41 = ((v33 + ((((((v55 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v28);
          if (a2 + 2 > v19)
          {
            if (!v40)
            {
              return;
            }

            v42 = v51 - v19;
            v43 = ((v33 + ((((((v55 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v28);
LABEL_51:
            bzero(v43, v40);
            *v41 = v42;
            return;
          }

          if (v16 < 0x7FFFFFFF)
          {
            if (((a2 + 2) & 0x80000000) != 0)
            {
              v51 = a2 - 2147483646;
            }

            *((v41 + v29) & 0xFFFFFFFFFFFFFFF8) = v51;
            return;
          }

          v53 = *(v15 + 56);
          v52 = (v33 + ((((((v55 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v28;
          v54 = a2 + 2;
        }

        v53(v52, v54);
        return;
      }

      v45 = *(v11 + 56);
      v47 = a2 + 2;
      v46 = v41;
      v48 = v12;
      v44 = v56;
    }

    v45(v46, v47, v48, v44);
    return;
  }

  v38 = ~v23 + a2;
  if (v35 < 4)
  {
    v39 = (v38 >> (8 * v35)) + 1;
    bzero(a1, v35);
    if (v35 == 1)
    {
      *a1 = v38;
      if (v14 <= 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v49 = v38 & ~(-1 << (8 * v35));
      *a1 = v49;
      a1[2] = BYTE2(v49);
      if (v14 <= 1)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    bzero(a1, v35);
    *a1 = v38;
    v39 = 1;
    if (v14 <= 1)
    {
LABEL_57:
      if (v14)
      {
        a1[v35] = v39;
      }

      return;
    }
  }

  if (v14 == 2)
  {
    *&a1[v35] = v39;
  }

  else
  {
    *&a1[v35] = v39;
  }
}

void sub_10002651C()
{
  if (!qword_100035C18)
  {
    type metadata accessor for UniversalSuggestionsFeaturisedTurn(255);
    v0 = sub_1000287BC();
    if (!v1)
    {
      atomic_store(v0, &qword_100035C18);
    }
  }
}

id *sub_100026594()
{
  v1 = [*(v0 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin14HomeKitManager_homeManager) homes];
  sub_100026A24();
  v2 = sub_10002866C();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000288CC())
  {
    v4 = 0;
    v20 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v19 = v2 & 0xFFFFFFFFFFFFFF8;
    v6 = v2;
    while (v20)
    {
      v7 = sub_10002883C();
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v25 = &type metadata for HomeKitHome;
      v26 = &off_1000315A8;
      v24[0] = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100026EF4(0, v5[2] + 1, 1, v5, &qword_100035CD8, &qword_10002A1F0, &unk_100035CE0, &qword_10002A1F8);
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        v5 = sub_100026EF4((v9 > 1), v10 + 1, 1, v5, &qword_100035CD8, &qword_10002A1F0, &unk_100035CE0, &qword_10002A1F8);
      }

      v11 = v25;
      v12 = sub_100014554(v24, v25);
      v13 = *(v11[-1].Description + 8);
      __chkstk_darwin(v12);
      v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v23 = &off_1000315A8;
      v22 = &type metadata for HomeKitHome;
      *&v21 = v17;
      v5[2] = (v10 + 1);
      sub_10000EB50(&v21, &v5[5 * v10 + 4]);
      sub_100001EB8(v24);
      ++v4;
      v2 = v6;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    if (v4 >= *(v19 + 16))
    {
      goto LABEL_16;
    }

    v7 = *(v2 + 8 * v4 + 32);
    v8 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_19:

  return v5;
}

id sub_100026980()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeKitManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100026A24()
{
  result = qword_100035CD0;
  if (!qword_100035CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035CD0);
  }

  return result;
}

uint64_t sub_100026A70()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100035C20);
  v1 = sub_10000AEF4(v0, qword_100035C20);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100026B38(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

id *sub_100026B48(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DBC(&qword_100035420, &qword_10002A210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100026CC4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = sub_100027268();
    v11 = *(v10 + 52);
    v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    v13[2] = v8;
    v13[3] = (2 * (v15 >> 3));
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = (v13 + 4);
  v17 = (a4 + 32);
  if (v5)
  {
    if (v13 != a4 || v16 >= &v17[8 * v8])
    {
      memmove(v16, v17, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v16, v17, 8 * v8);
  }

  return v13;
}

id *sub_100026DC4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DBC(&qword_100035D40, &qword_10002A248);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100026EF4(id *result, int64_t a2, char a3, id *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100001DBC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = (2 * ((v17 - 32) / 40));
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001DBC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_10002708C(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001DBC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = (2 * ((result - v16) / v15));
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100027268()
{
  v0 = sub_100001DBC(&qword_100035D58, &qword_10002A260);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_100035D60;
    v3 = &unk_10002A268;
  }

  else
  {
    v2 = &unk_100035D68;
    v3 = &unk_10002A270;
  }

  return sub_100001DBC(v2, v3);
}

uint64_t sub_100027308(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100027364(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100027364(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100027430(v11, 0, 0, 1, a1, a2);
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
    sub_100027C78(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100001EB8(v11);
  return v7;
}

unint64_t sub_100027430(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002753C(a5, a6);
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
    result = sub_10002884C();
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

id *sub_10002753C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100027588(a1, a2);
  sub_1000276B8(&off_100030F88);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

id *sub_100027588(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000277A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10002884C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10002864C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000277A4(v10, 0);
        result = sub_10002881C();
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

uint64_t sub_1000276B8(uint64_t result)
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

  result = sub_100027818(result, v12, 1, v3);
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

id *sub_1000277A4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001DBC(&qword_100035CF8, &qword_10002A200);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *sub_100027818(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DBC(&qword_100035CF8, &qword_10002A200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_10002790C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10002791C()
{
  v0 = sub_100001DBC(&unk_100034B68, qword_1000298D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - v3;
  v5 = sub_100001DBC(&qword_100035CF0, &qword_100029288);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  if (qword_100034B10 != -1)
  {
    swift_once();
  }

  v9 = sub_10002858C();
  sub_10000AEF4(v9, qword_100035C20);
  v10 = sub_10002856C();
  v11 = sub_10002875C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100027364(0xD00000000000001DLL, 0x800000010002AE10, &v18);
    _os_log_impl(&_mh_execute_header, v10, v11, "HomeKitManager.%s", v12, 0xCu);
    sub_100001EB8(v13);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_homeManagerDidUpdateHomesContinuation;
    swift_beginAccess();
    sub_100027C08(v15 + v16, v8);
    if ((*(v1 + 48))(v8, 1, v0))
    {
      swift_unknownObjectRelease();
      return sub_100001F04(v8);
    }

    else
    {
      (*(v1 + 16))(v4, v8, v0);
      sub_100001F04(v8);
      sub_1000286AC();
      swift_unknownObjectRelease();
      return (*(v1 + 8))(v4, v0);
    }
  }

  return result;
}

uint64_t sub_100027C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100035CF0, &qword_100029288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027C78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}