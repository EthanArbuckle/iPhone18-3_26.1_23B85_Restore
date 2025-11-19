void sub_100017D30(uint64_t a1, void (*a2)(void))
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10005FF5C();
    swift_unknownObjectRetain();
    sub_10008A878();
    sub_10005FCB8();
    sub_100011D84(v4, v5, v6);
    sub_10005C60C();
    sub_10005FCB8();
    sub_10005B4C0(v7, v8, v9);
    sub_10005EDA0();
    sub_10008A428();
    v3 = v24;
    v10 = v25;
    v11 = v26;
    v12 = v27;
  }

  else
  {
    v13 = *(a1 + 32);
    sub_10005EB04();
    v10 = v3 + 56;
    v14 = *(v3 + 56);
    v11 = ~v15;
    sub_10005E054();
    v12 = v16 & v17;
  }

  while (v3 < 0)
  {
    if (!sub_10008A8A8() || (sub_100011D84(0, &qword_1000A6540, WFResource_ptr), sub_10005ED24(), swift_dynamicCast(), (v21 = v23) == 0))
    {
LABEL_18:
      sub_10005DC4C();
      sub_100011E9C();
      return;
    }

LABEL_13:
    a2(0);
    sub_10005E028();
    if (swift_dynamicCastClass())
    {
      sub_10008A308();
      sub_100060E6C();
      if (v22)
      {
        sub_10008A348();
      }

      sub_10005ECCC();
      sub_10008A368();
    }

    else
    {
    }
  }

  sub_100060EDC();
  if (v12)
  {
LABEL_9:
    sub_10005D470();
    v21 = sub_1000607C8(v20);
    if (!v21)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= ((v11 + 64) >> 6))
    {
      goto LABEL_18;
    }

    ++v18;
    if (*(v10 + 8 * v19))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100017F50(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
LABEL_2:
  v4 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_12;
    }

    v6 = *(v4 - 1);
    v7 = *v4;

    v8 = sub_10008A238();
    v9 = WFLinkActionIdentifierFromShortcutsActionIdentifier();

    ++v1;
    v4 += 2;
    if (v9)
    {
      sub_10008A308();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10008A348();
      }

      sub_10008A368();
      v1 = v5;
      goto LABEL_2;
    }
  }
}

id *sub_10001806C()
{
  v0 = sub_100088988();
  v14 = *(v0 - 8);
  v1 = *(v14 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008A498();
  sub_10005AE38(&qword_1000A65E0, &type metadata accessor for NSFastEnumerationIterator);
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10008A7D8();
    if (!v20)
    {
      break;
    }

    sub_10000A6AC(&v19, v18);
    sub_10000A650(v18, v15);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v17 = 0;
    }

    sub_10005B1BC(v18);
    v5 = v17;
    if (v17)
    {
      v6 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = v4[2];
        sub_1000802EC();
        v4 = v10;
      }

      v7 = v4[2];
      if (v7 >= v4[3] >> 1)
      {
        sub_1000802EC();
        v4 = v11;
      }

      v4[2] = (v7 + 1);
      v8 = &v4[2 * v7];
      v8[4] = v6;
      v8[5] = v5;
    }
  }

  (*(v14 + 8))(v3, v0);
  return v4;
}

uint64_t sub_100018280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100008DC0(&qword_1000A65D0, &qword_10008D950);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3);
  v7 = (&v15 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {

    return sub_100009158(a1, 1, 1, v3);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v11 = *(_s15ActionParameterVMa(0) - 8);
      v12 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v8;
      v1[1] = v8 + 1;
      v13 = *(v3 + 48);
      v14 = v1[2];
      *v7 = v14;
      result = sub_10005B654(v12, v7 + v13);
      if (!__OFADD__(v14, 1))
      {
        v1[2] = v14 + 1;
        sub_10005BFBC();
        return sub_100009158(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100018420()
{
  sub_100012404();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100088EA8();
  v1[4] = v3;
  sub_100017A0C(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_10005F3EC();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = sub_100088DC8();
  v1[10] = v7;
  sub_100017A0C(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = sub_10005F3EC();
  v1[13] = swift_task_alloc();
  v11 = sub_100008DC0(&qword_1000A6700, &qword_10008DA08);
  sub_10005E3B0(v11);
  v13 = *(v12 + 64);
  v1[14] = sub_10005F3EC();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v14 = sub_100088E08();
  v1[23] = v14;
  sub_100017A0C(v14);
  v1[24] = v15;
  v17 = *(v16 + 64);
  v1[25] = sub_10005F4D4();
  v18 = sub_10005CFA0();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_100018618()
{
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[3];
  v8 = sub_1000124F4(v5);
  v9(v8);
  v11 = *(v5 + 88);
  v10 = v5 + 88;
  v12 = sub_100012498();
  v14 = v13(v12);
  if (v14 != enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    if (v14 == enum case for ToolKitIndexingReason.Changeset.full(_:))
    {
      v99 = async function pointer to static LaunchServicesSnapshot.complete()[1];
      swift_task_alloc();
      sub_100012480();
      v0[26] = v100;
      *v100 = v101;
      v100[1] = sub_100018FA0;
      v102 = v0[2];
      sub_100012624();

      return static LaunchServicesSnapshot.complete()();
    }

    if (v14 != enum case for ToolKitIndexingReason.Changeset.none(_:))
    {
      v146 = v0[23];
      goto LABEL_38;
    }

    v114 = v0[2];
    sub_100088E68();
    goto LABEL_42;
  }

  v15 = sub_10005F600();
  v16(v15);
  v17 = *(v4 + 8);
  v187 = *v4;
  v18 = *(v4 + 16);

  v19 = sub_100012448();
  sub_100009158(v19, v20, v21, v1);
  sub_10005E98C();
  sub_10005BF68();
  v23 = v18 + 56;
  v22 = *(v18 + 56);
  v24 = *(v18 + 32);
  sub_100012500();
  sub_100060D48();
  v205 = enum case for ToolKitIndexingReason.Changeset.Provenance.launchServicesSnapshot(_:);
  HIDWORD(v195) = enum case for ToolKitIndexingReason.Changeset.Provenance.appIntentsChange(_:);
  HIDWORD(v191) = enum case for ToolKitIndexingReason.Changeset.Provenance.appProtectionChange(_:);
  v203 = (v3 + 8);
  HIDWORD(v185) = enum case for ToolKitIndexingReason.Changeset.Provenance.cascadeSync(_:);
  v209 = v3;
  v193 = v3 + 96;
  v211 = (v6 + 32);
  v200 = (v6 + 8);
  v189 = v6 + 16;
  v213 = v18;

  v25 = 0;
  v202 = v10;
  if (v2)
  {
    goto LABEL_6;
  }

  do
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return static LaunchServicesSnapshot.partial(_:failIfContainerNotFound:)();
    }

    if (v26 >= v10)
    {
      v104 = v0[21];
      v105 = v0[22];
      v107 = v0[19];
      v106 = v0[20];
      v108 = v0[4];
      sub_10005FB08();
      sub_100017954(v109, v110, v111);

      sub_10005E428();
      sub_100060CC8();
      sub_10005BFBC();

      sub_10005E12C();
      sub_100060CC8();
      sub_10005BF68();
      v112 = sub_10005EC70();
      sub_10005DC64(v112, v113, v108);
      if (v145)
      {
        v122 = &_swiftEmptySetSingleton;
      }

      else
      {
        v115 = v0[19];
        v116 = v0[7];
        v117 = v0[4];
        v118 = sub_10005E144();
        v119(v118);
        v120 = sub_100088E48();
        sub_10001B5A4(v120);
        v122 = v121;
        sub_100060340(v121, v123, v124, v125, v126, v127, v128, v129, v181, v183, v185, v187, v189, v191, v193, v195, v197, v200);
        v130 = sub_100012498();
        v131(v130);
      }

      v132 = sub_100049398(v122, v187);
      v0[28] = v132;

      if (v132[2])
      {
        v133 = async function pointer to static LaunchServicesSnapshot.partial(_:failIfContainerNotFound:)[1];
        swift_task_alloc();
        sub_100012480();
        v0[29] = v134;
        *v134 = v135;
        sub_100060304(v134);
        sub_100012624();

        return static LaunchServicesSnapshot.partial(_:failIfContainerNotFound:)();
      }

      sub_1000611DC();
      sub_1000124C8();
      sub_10005BF68();
      v137 = sub_10005E2A4();
      v139 = sub_100008E78(v137, v138, v23);
      v140 = v0[22];
      v141 = v0[14];
      v142 = v0[4];
      v143 = v0[2];
      if (v139 == 1)
      {
        v144 = v0[2];
        sub_100088E68();
        sub_100017954(v140, &qword_1000A6700, &qword_10008DA08);
        sub_10005D4A8();
        if (!v145)
        {
          sub_100017954(v0[14], &qword_1000A6700, &qword_10008DA08);
        }
      }

      else
      {
        sub_100017954(v0[22], &qword_1000A6700, &qword_10008DA08);
        sub_10005EAD4();
        sub_10005F620();
        v148();
      }

LABEL_42:
      sub_10005CD7C();
      sub_100060094();

      sub_100012420();
      goto LABEL_46;
    }

    ++v25;
  }

  while (!*(v23 + 8 * v26));
LABEL_6:
  while (1)
  {
    sub_10006037C();
    v27 = *(v213 + 48);
    v29 = sub_100060364(v28);
    v6(v29);
    v30 = sub_10005E150();
    v6(v30);
    v31 = *(v209 + 88);
    v32 = sub_10005E44C();
    v34 = v33(v32);
    if (v34 != v205)
    {
      break;
    }

    v35 = v0[20];
    v36 = v0[16];
    v37 = v0[12];
    v39 = v0[9];
    v38 = v0[10];
    v40 = v0[4];
    v41 = sub_10005E59C();
    v42(v41);
    v198 = *v211;
    (*v211)(v39, v37, v40);
    sub_10005E9B4();
    sub_10005BF68();
    sub_10005D2C8(v36);
    if (!v145)
    {
      v43 = sub_10006034C();
      v198(v43);
      sub_10005AE38(&qword_1000A6708, &type metadata accessor for LaunchServicesSnapshot);
      sub_100060134();
      if (&qword_10008DA08)
      {
        sub_10005F698();

        v149 = *v200;
        v150 = sub_10005E44C();
        v151 = v149(v150);
        sub_10006031C(v151, v152, v153, v154, v155, v156, v157, v158, v181, &qword_10008DA08, v185, v187, v189, v191, v193, v195, v198, v200, v202, v203);
        v159 = sub_10005E464();
        v160(v159);
        sub_100012584();
        sub_100017954(v161, v162, v163);
        sub_100012584();
        sub_100017954(v164, v165, v166);
        v167 = sub_10005FB20();
        v149(v167);

        v168 = v0[25];
        v170 = v0[21];
        v169 = v0[22];
        v172 = v0[19];
        v171 = v0[20];
        v174 = v0[17];
        v173 = v0[18];
        v175 = v0[15];
        v176 = v0[16];
        v204 = v0[14];
        v206 = v0[13];
        v207 = v0[12];
        v208 = v0[9];
        v210 = v0[8];
        v212 = v0[7];
        v214 = v0[6];

        sub_10001248C();
LABEL_46:
        sub_100012624();

        __asm { BRAA            X1, X16 }
      }

      sub_100060340(v0[8], v0[4], v44, v45, v46, v47, v48, v49, v181, 0, v185, v187, v189, v191, v193, v195, v198, v200);
      v50();
    }

    v51 = sub_100060328();
    sub_10006031C(v51, v52, v53, v54, v55, v56, v57, v58, v181, v183, v185, v187, v189, v191, v193, v195, v198, v200, v202, v203);
    v59();
    v60 = sub_100060FB4();
    sub_100017954(v60, v61, &qword_10008DA08);
    sub_10005FBAC();
    sub_100009158(v62, v63, v64, v65);
    v66 = sub_10005F090();
    sub_10005EFA4(v66, v67, v37);
    v69 = v0[17];
    v68 = v0[18];
    if (v70 == 1)
    {
      (*v190)(v68, v0[9], v0[4]);
      sub_10005D2C8(v69);
      if (!v145)
      {
        sub_100017954(v0[17], &qword_1000A6700, &qword_10008DA08);
      }
    }

    else
    {
      v199(v68, v0[17], v0[4]);
    }

    v74 = v0[18];
    v75 = v0[9];
    v6 = v0[4];
    sub_10005D968();
    v80 = sub_100009158(v76, v77, v78, v79);
    sub_100060340(v80, v81, v82, v83, v84, v85, v86, v87, v182, v184, v186, v188, v190, v192, v194, v196, v199, v201);
    v88 = sub_100012498();
    v89(v88);
LABEL_21:
    sub_1000600BC();
  }

  if (v34 == HIDWORD(v195))
  {
    v71 = v0[20];
    v72 = v0[18];
    v197 = v0[12];
    v73 = v0[10];
    v6 = *v203;
    (*v203)(v0[13], v73);
    sub_10005BFBC();
    (v6)(v197, v73);
    goto LABEL_21;
  }

  if (v34 == HIDWORD(v191) || v34 == HIDWORD(v185))
  {
    v90 = sub_10005DFC4();
    sub_10006031C(v90, v91, v92, v93, v94, v95, v96, v97, v181, v183, v185, v187, v189, v191, v193, v195, v197, v200, v202, v203);
    v98();
    sub_100012498();
    sub_10005BFBC();
    goto LABEL_21;
  }

  v179 = v0[10];
LABEL_38:
  sub_100012624();

  return sub_10008AA58();
}

uint64_t sub_100018FA0()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100019098()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *(v4 + 224);
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  *(v9 + 240) = v0;

  sub_100012554();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000191AC()
{
  *(sub_10006061C() + 16) = v2;
  sub_100061184(sub_10005C010, v3, &type metadata accessor for LaunchServicesSnapshot, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  v9 = sub_10005E12C();
  sub_100017954(v9, v10, &qword_10008DA08);

  if (v0)
  {
    v11 = sub_10005EEE0();
    v12(v11);
    sub_10005D23C();
    sub_10005F454();

    sub_10005D498();
  }

  else
  {
    v14 = v1[15];
    v15 = v1[4];
    sub_10005D4A8();
    if (v16)
    {
      v17 = sub_100060B74();
      v18(v17);
      sub_10005D4A8();
      if (!v16)
      {
        sub_100017954(v1[15], &qword_1000A6700, &qword_10008DA08);
      }
    }

    else
    {
      v19 = v1[2];
      v20 = *(v1[5] + 32);
      sub_10005F620();
      v21();
    }

    v22 = sub_10005EEE0();
    v23(v22);
    sub_10005CD7C();
    sub_1000605D4();

    sub_100012420();
  }

  return v13();
}

uint64_t sub_100019408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  sub_100017954(*(v18 + 176), &qword_1000A6700, &qword_10008DA08);
  v28 = *(v18 + 240);
  sub_10005D23C();
  sub_10005DCD4();

  sub_10001248C();
  sub_10005F3D0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, v28, a16, a17, a18);
}

uint64_t sub_100019504()
{
  sub_100012404();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100088D48();
  v1[4] = v3;
  sub_100017A0C(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_10005F3EC();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = sub_100088DC8();
  v1[10] = v7;
  sub_100017A0C(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = sub_10005F3EC();
  v1[13] = swift_task_alloc();
  v11 = sub_100008DC0(&qword_1000A66F0, &qword_10008D9F8);
  sub_10005E3B0(v11);
  v13 = *(v12 + 64);
  v1[14] = sub_10005F3EC();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v14 = sub_100088E08();
  v1[23] = v14;
  sub_100017A0C(v14);
  v1[24] = v15;
  v17 = *(v16 + 64);
  v1[25] = sub_10005F4D4();
  v18 = sub_10005CFA0();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_1000196FC()
{
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[3];
  v8 = sub_1000124F4(v5);
  v9(v8);
  v11 = *(v5 + 88);
  v10 = v5 + 88;
  v12 = sub_100012498();
  v14 = v13(v12);
  if (v14 != enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    if (v14 == enum case for ToolKitIndexingReason.Changeset.full(_:))
    {
      v86 = async function pointer to static LinkSnapshot.complete()[1];
      swift_task_alloc();
      sub_100012480();
      v0[26] = v87;
      *v87 = v88;
      v87[1] = sub_10001A050;
      v89 = v0[2];
      sub_100012624();

      return static LinkSnapshot.complete()();
    }

    if (v14 != enum case for ToolKitIndexingReason.Changeset.none(_:))
    {
      v126 = v0[23];
      goto LABEL_38;
    }

    v101 = v0[2];
    sub_100088D18();
    goto LABEL_42;
  }

  v15 = sub_10005F600();
  v16(v15);
  v17 = *(v4 + 8);
  v158 = *v4;
  v18 = *(v4 + 16);

  v19 = sub_100012448();
  sub_100009158(v19, v20, v21, v1);
  sub_10005E98C();
  sub_10005BF68();
  v23 = v18 + 56;
  v22 = *(v18 + 56);
  v24 = *(v18 + 32);
  sub_100012500();
  sub_100060D48();
  v170 = enum case for ToolKitIndexingReason.Changeset.Provenance.launchServicesSnapshot(_:);
  HIDWORD(v164) = enum case for ToolKitIndexingReason.Changeset.Provenance.appIntentsChange(_:);
  HIDWORD(v160) = enum case for ToolKitIndexingReason.Changeset.Provenance.appProtectionChange(_:);
  v168 = (v3 + 8);
  HIDWORD(v157) = enum case for ToolKitIndexingReason.Changeset.Provenance.cascadeSync(_:);
  v174 = v3;
  v159 = (v3 + 96);
  v166 = (v6 + 32);
  v163 = (v6 + 8);
  v156 = (v6 + 16);
  v176 = v18;

  v25 = 0;
  v167 = v10;
  v165 = v18 + 56;
  if (v2)
  {
    goto LABEL_6;
  }

  do
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return static LinkSnapshot.partial(_:failIfContainerNotFound:)();
    }

    if (v26 >= v10)
    {
      v91 = v0[21];
      v92 = v0[22];
      v94 = v0[19];
      v93 = v0[20];
      v95 = v0[4];
      sub_10005FB08();
      sub_100017954(v96, v97, v98);

      sub_10005E428();
      sub_100060CC8();
      sub_10005BFBC();

      sub_10005E12C();
      sub_100060CC8();
      sub_10005BF68();
      v99 = sub_10005EC70();
      sub_10005DC64(v99, v100, v95);
      if (v46)
      {
        v109 = &_swiftEmptySetSingleton;
      }

      else
      {
        v102 = v0[19];
        v103 = v0[7];
        v104 = v0[4];
        v105 = sub_10005E144();
        v106(v105);
        v107 = sub_100088CF8();
        sub_10001B5A4(v107);
        v109 = v108;
        v110 = *v163;
        v111 = sub_100012498();
        v112(v111);
      }

      v113 = sub_100049398(v109, v158);
      v0[28] = v113;

      if (v113[2])
      {
        v114 = async function pointer to static LinkSnapshot.partial(_:failIfContainerNotFound:)[1];
        swift_task_alloc();
        sub_100012480();
        v0[29] = v115;
        *v115 = v116;
        sub_100060304(v115);
        sub_100012624();

        return static LinkSnapshot.partial(_:failIfContainerNotFound:)();
      }

      sub_1000611DC();
      sub_1000124C8();
      sub_10005BF68();
      v118 = sub_10005E2A4();
      v120 = sub_100008E78(v118, v119, v23);
      v121 = v0[22];
      v122 = v0[14];
      v123 = v0[4];
      v124 = v0[2];
      if (v120 == 1)
      {
        v125 = v0[2];
        sub_100088D18();
        sub_100017954(v121, &qword_1000A66F0, &qword_10008D9F8);
        sub_10005D4A8();
        if (!v46)
        {
          sub_100017954(v0[14], &qword_1000A66F0, &qword_10008D9F8);
        }
      }

      else
      {
        sub_100017954(v0[22], &qword_1000A66F0, &qword_10008D9F8);
        sub_10005E974();
        sub_10005F620();
        v128();
      }

LABEL_42:
      sub_10005CD7C();
      sub_100060094();

      sub_100012420();
      goto LABEL_43;
    }

    ++v25;
  }

  while (!*(v23 + 8 * v26));
  while (1)
  {
LABEL_6:
    sub_10006037C();
    v27 = *(v176 + 48);
    v29 = sub_100060364(v28);
    v6(v29);
    v30 = sub_10005E150();
    v6(v30);
    v31 = *(v174 + 88);
    v32 = sub_10005E44C();
    v34 = v33(v32);
    if (v34 == v170)
    {
      v35 = v0[20];
      v6 = v0[18];
      v36 = v0[12];
      v37 = *v168;
      (*v168)(v0[13], v0[10]);
      sub_100012498();
      sub_10005BFBC();
      v38 = sub_10005F62C();
      v37(v38);
      goto LABEL_20;
    }

    if (v34 != HIDWORD(v164))
    {
      break;
    }

    v39 = v0[20];
    v40 = v0[16];
    v41 = v0[9];
    v42 = v0[4];
    (*v159)(v0[12], v0[10]);
    v43 = *v166;
    v44 = sub_10005ECCC();
    v162 = v45;
    v45(v44);
    sub_10005F384();
    sub_10005BF68();
    sub_10005D2C8(v40);
    if (!v46)
    {
      v47 = sub_10006034C();
      v162(v47);
      sub_10005AE38(&qword_1000A66F8, &type metadata accessor for LinkSnapshot);
      sub_100060134();
      v155 = &qword_10008D9F8;
      if (&qword_10008D9F8)
      {
        sub_10005F698();

        v132 = *v163;
        v133 = sub_10005E44C();
        v134 = v132(v133);
        sub_100060B08(v134, v135, v136, v137, v138, v139, v140, v141, &qword_10008D9F8, v156, v157, v158, v159, v160, v162, v163, v164, v165, v166, v167, v168);
        v142 = sub_10005E464();
        v143(v142);
        sub_100012584();
        sub_100017954(v144, v145, v146);
        sub_100012584();
        sub_100017954(v147, v148, v149);
        v150 = sub_10005FB20();
        v132(v150);

        sub_10005D23C();
        v151 = v0[15];
        v152 = v0[16];
        v169 = v0[14];
        v171 = v0[13];
        v172 = v0[12];
        v173 = v0[9];
        v175 = v0[8];
        v153 = v0[6];
        v177 = v0[7];

        sub_10001248C();
LABEL_43:
        sub_100012624();

        __asm { BRAA            X1, X16 }
      }

      (*v163)(v0[8], v0[4]);
    }

    v48 = sub_100060328();
    sub_100060B08(v48, v49, v50, v51, v52, v53, v54, v55, v155, v156, v157, v158, v159, v160, v162, v163, v164, v165, v166, v167, v168);
    v56();
    v57 = sub_100060FB4();
    sub_100017954(v57, v58, &qword_10008D9F8);
    sub_10005FBAC();
    sub_100009158(v59, v60, v61, v62);
    v63 = sub_10005F090();
    sub_10005EFA4(v63, v64, v40);
    v66 = v0[17];
    v65 = v0[18];
    if (v67 == 1)
    {
      (*v156)(v65, v0[9], v0[4]);
      sub_10005D2C8(v66);
      if (!v46)
      {
        sub_100017954(v0[17], &qword_1000A66F0, &qword_10008D9F8);
      }
    }

    else
    {
      v161(v65, v0[17], v0[4]);
    }

    v77 = v0[18];
    v78 = v0[9];
    v6 = v0[4];
    sub_10005D968();
    sub_100009158(v79, v80, v81, v82);
    v83 = *v163;
    v84 = sub_100012498();
    v85(v84);
LABEL_20:
    sub_1000600BC();
  }

  if (v34 == HIDWORD(v160) || v34 == HIDWORD(v157))
  {
    v68 = sub_10005DFC4();
    sub_100060B08(v68, v69, v70, v71, v72, v73, v74, v75, v155, v156, v157, v158, v159, v160, v161, v163, v164, v165, v166, v167, v168);
    v76();
    sub_100012498();
    sub_10005BFBC();
    goto LABEL_20;
  }

  v131 = v0[10];
LABEL_38:
  sub_100012624();

  return sub_10008AA58();
}

uint64_t sub_10001A050()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10001A148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  sub_10005CD7C();
  v30 = v20;
  v31 = v19;
  v32 = v18[9];
  v33 = v18[8];
  v34 = v18[7];
  v35 = v18[6];

  sub_100012420();
  sub_10005F3D0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, v34, v35, a16, a17, a18);
}

uint64_t sub_10001A234()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *(v4 + 224);
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  *(v9 + 240) = v0;

  sub_100012554();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10001A348()
{
  *(sub_10006061C() + 16) = v2;
  sub_100061184(sub_10005BF04, v3, &type metadata accessor for LinkSnapshot, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  v9 = sub_10005E12C();
  sub_100017954(v9, v10, &qword_10008D9F8);

  if (v0)
  {
    v11 = sub_10005EEE0();
    v12(v11);
    sub_10005D23C();
    sub_10005F454();

    sub_10005D498();
  }

  else
  {
    v14 = v1[15];
    v15 = v1[4];
    sub_10005D4A8();
    if (v16)
    {
      v17 = sub_100060B74();
      v18(v17);
      sub_10005D4A8();
      if (!v16)
      {
        sub_100017954(v1[15], &qword_1000A66F0, &qword_10008D9F8);
      }
    }

    else
    {
      v19 = v1[2];
      v20 = *(v1[5] + 32);
      sub_10005F620();
      v21();
    }

    v22 = sub_10005EEE0();
    v23(v22);
    sub_10005CD7C();
    sub_1000605D4();

    sub_100012420();
  }

  return v13();
}

uint64_t sub_10001A5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  v28 = *(v18 + 216);
  sub_10005D23C();
  sub_10005DCD4();

  sub_10001248C();
  sub_10005F3D0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, v28, a16, a17, a18);
}

uint64_t sub_10001A688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  sub_100017954(*(v18 + 176), &qword_1000A66F0, &qword_10008D9F8);
  v28 = *(v18 + 240);
  sub_10005D23C();
  sub_10005DCD4();

  sub_10001248C();
  sub_10005F3D0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, v28, a16, a17, a18);
}

void sub_10001A784(uint64_t a1)
{
  v3 = 0;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = *(a1 + 32);
  sub_10005EE64();
  if (v2)
  {
    while (1)
    {
      v7 = v3;
LABEL_7:
      sub_10005F1C4(v7);
      sub_100060274();
      sub_100054CF0(v8, v9, v10);
    }
  }

  while (1)
  {
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v7 >= v1)
    {

      return;
    }

    ++v3;
    if (*(v5 + 8 * v7))
    {
      v3 = v7;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_10001A83C(uint64_t a1)
{
  v3 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v34[1] = v1;
  v43 = _swiftEmptyArrayStorage;
  v41 = v5;
  sub_100081C98();
  v9 = v43;
  result = sub_100083920(v41);
  v12 = result;
  v13 = v41;
  v15 = v14;
  v16 = 0;
  v17 = v41 + 56;
  v37 = v41 + 56;
  v38 = WFLocalizationUsageDisplay;
  v35 = v41 + 64;
  v36 = v8;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v12 < 1 << *(v13 + 32))
    {
      v18 = v12 >> 6;
      if ((*(v17 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v13 + 36) != v11)
      {
        goto LABEL_25;
      }

      v42 = v11;
      v19 = (*(v13 + 48) + 16 * v12);
      v21 = *v19;
      v20 = v19[1];
      swift_bridgeObjectRetain_n();
      sub_1000889F8();
      v22 = v40;
      v23 = v38;
      *&v7[*(v40 + 20)] = v38;
      *&v7[*(v22 + 24)] = 0;
      v24 = v23;

      v43 = v9;
      v25 = v9[2];
      if (v25 >= v9[3] >> 1)
      {
        sub_100081C98();
        v9 = v43;
      }

      v9[2] = (v25 + 1);
      result = sub_10005B6A8(v7, v9 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25);
      if (v15)
      {
        goto LABEL_29;
      }

      v13 = v41;
      v26 = 1 << *(v41 + 32);
      v17 = v37;
      if (v12 >= v26)
      {
        goto LABEL_26;
      }

      v27 = *(v37 + 8 * v18);
      if ((v27 & (1 << v12)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v41 + 36) != v42)
      {
        goto LABEL_28;
      }

      v28 = v27 & (-2 << (v12 & 0x3F));
      if (v28)
      {
        v26 = __clz(__rbit64(v28)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v18 << 6;
        v30 = v18 + 1;
        v31 = (v35 + 8 * v18);
        while (v30 < (v26 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_100011DC4(v12, v42, 0);
            v13 = v41;
            v26 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_100011DC4(v12, v42, 0);
        v13 = v41;
      }

LABEL_19:
      if (++v16 == v36)
      {
        return v9;
      }

      v15 = 0;
      v11 = *(v13 + 36);
      v12 = v26;
      if (v26 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10001AB74(uint64_t a1)
{
  v51 = sub_100089918();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v51);
  v50 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000899A8();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v46 = v9;
    v39 = v1;
    v55 = _swiftEmptyArrayStorage;
    v12 = v10;
    sub_100081BE8(0, v10, 0);
    v13 = v55;
    result = sub_100083920(a1);
    v16 = v3;
    v17 = result;
    v18 = 0;
    v54 = a1 + 56;
    v47 = v6;
    v48 = v16;
    v44 = v16 + 8;
    v45 = v16 + 16;
    v42 = a1;
    v43 = v6 + 32;
    v40 = a1 + 64;
    v41 = v12;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v17 < 1 << *(a1 + 32))
      {
        v19 = v17 >> 6;
        if ((*(v54 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          goto LABEL_25;
        }

        if (*(a1 + 36) != v14)
        {
          goto LABEL_26;
        }

        v53 = v15;
        v52 = v14;
        v20 = v48;
        v22 = v50;
        v21 = v51;
        (*(v48 + 16))(v50, *(a1 + 48) + *(v48 + 72) * v17, v51);
        v23 = v46;
        sub_1000898D8();
        v24 = v22;
        v25 = v13;
        (*(v20 + 8))(v24, v21);
        v55 = v13;
        v27 = v13[2];
        v26 = v13[3];
        if (v27 >= v26 >> 1)
        {
          sub_100081BE8(v26 > 1, v27 + 1, 1);
          v25 = v55;
        }

        v25[2] = (v27 + 1);
        v13 = v25;
        result = (*(v47 + 32))(v25 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v27, v23, v49);
        if (v53)
        {
          goto LABEL_30;
        }

        a1 = v42;
        v28 = 1 << *(v42 + 32);
        if (v17 >= v28)
        {
          goto LABEL_27;
        }

        v29 = *(v54 + 8 * v19);
        if ((v29 & (1 << v17)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v42 + 36) != v52)
        {
          goto LABEL_29;
        }

        v30 = v29 & (-2 << (v17 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v17 & 0x7FFFFFFFFFFFFFC0;
          v31 = v41;
        }

        else
        {
          v32 = v19 << 6;
          v33 = v19 + 1;
          v34 = (v40 + 8 * v19);
          while (v33 < (v28 + 63) >> 6)
          {
            v36 = *v34++;
            v35 = v36;
            v32 += 64;
            ++v33;
            if (v36)
            {
              v37 = v41;
              result = sub_100011DC4(v17, v52, 0);
              v31 = v37;
              v28 = __clz(__rbit64(v35)) + v32;
              goto LABEL_19;
            }
          }

          v38 = v41;
          result = sub_100011DC4(v17, v52, 0);
          v31 = v38;
        }

LABEL_19:
        if (++v18 == v31)
        {
          return v13;
        }

        v15 = 0;
        v14 = *(a1 + 36);
        v17 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

unint64_t sub_10001AF5C(uint64_t a1)
{
  v55 = sub_1000899A8();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v55);
  v54 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100089888();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v11 = (v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v52 = v8;
  v42[1] = v1;
  v62 = _swiftEmptyArrayStorage;
  v56 = v9;
  sub_100081DB8(0, v12, 0);
  v14 = v56;
  v13 = v62;
  result = sub_100083920(a1);
  v18 = 0;
  v19 = a1 + 56;
  v51 = v3 + 16;
  v50 = enum case for TypeInstance.type(_:);
  v53 = v3;
  v48 = v3 + 8;
  v49 = (v14 + 104);
  v46 = a1;
  v47 = v14 + 32;
  v43 = a1 + 64;
  v44 = v12;
  v45 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v20 = result >> 6;
      v21 = 1 << result;
      if ((*(v19 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v16)
      {
        goto LABEL_25;
      }

      v60 = v17;
      v58 = result;
      v59 = v16;
      v57 = v18;
      v22 = *(a1 + 48);
      v23 = v53;
      v24 = v22 + *(v53 + 72) * result;
      v25 = *(v53 + 16);
      v61 = v13;
      v27 = v54;
      v26 = v55;
      v25(v54, v24, v55);
      v28 = swift_allocBox();
      v25(v29, v27, v26);
      *v11 = v28;
      v30 = v52;
      (*v49)(v11, v50, v52);
      v31 = v27;
      v13 = v61;
      (*(v23 + 8))(v31, v26);
      v62 = v13;
      v33 = v13[2];
      v32 = v13[3];
      if (v33 >= v32 >> 1)
      {
        sub_100081DB8(v32 > 1, v33 + 1, 1);
        v13 = v62;
      }

      v13[2] = (v33 + 1);
      result = (*(v56 + 32))(v13 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v33, v11, v30);
      if (v60)
      {
        goto LABEL_29;
      }

      v19 = v45;
      a1 = v46;
      v34 = 1 << *(v46 + 32);
      result = v58;
      if (v58 >= v34)
      {
        goto LABEL_26;
      }

      v35 = *(v45 + 8 * v20);
      if ((v35 & v21) == 0)
      {
        goto LABEL_27;
      }

      if (*(v46 + 36) != v59)
      {
        goto LABEL_28;
      }

      v36 = v35 & (-2 << (v58 & 0x3F));
      if (v36)
      {
        v34 = __clz(__rbit64(v36)) | v58 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v20 << 6;
        v38 = v20 + 1;
        v39 = (v43 + 8 * v20);
        while (v38 < (v34 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            sub_100011DC4(v58, v59, 0);
            v34 = __clz(__rbit64(v40)) + v37;
            goto LABEL_19;
          }
        }

        sub_100011DC4(v58, v59, 0);
      }

LABEL_19:
      v18 = v57 + 1;
      if (v57 + 1 == v44)
      {
        return v13;
      }

      v17 = 0;
      v16 = *(a1 + 36);
      result = v34;
      if (v34 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id *sub_10001B38C(uint64_t a1)
{
  v3 = sub_100089BA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v16[1] = v1;
    v23 = _swiftEmptyArrayStorage;
    sub_100081D20(0, v8, 0);
    v9 = v23;
    v22 = sub_10008A0B8();
    v10 = *(v22 - 8);
    v11 = *(v10 + 16);
    v10 += 16;
    v21 = v11;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v19 = enum case for RuntimeRequirement.platform(_:);
    v20 = v10;
    v17 = *(v10 + 56);
    v18 = v4 + 32;
    do
    {
      v21(v7, v12, v22);
      (*(v4 + 104))(v7, v19, v3);
      v23 = v9;
      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        sub_100081D20(v13 > 1, v14 + 1, 1);
        v9 = v23;
      }

      v9[2] = (v14 + 1);
      (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v7, v3);
      v12 += v17;
      --v8;
    }

    while (v8);
  }

  return v9;
}

void sub_10001B5A4(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = 0;
  sub_10008A418();
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  sub_10005EE64();
  if (v2)
  {
    while (1)
    {
      v8 = v5;
LABEL_7:
      sub_10005F1C4(v8);
      sub_100060274();
      sub_100054CF0(v9, v10, v11);
    }
  }

  while (1)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v8 >= v1)
    {

      return;
    }

    ++v5;
    if (*(a1 + 64 + 8 * v8))
    {
      v5 = v8;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_10001B674(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10005AE38(&qword_1000A66C8, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
  v11 = sub_10008A418();
  v18 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_10005B654(v13, v7);
      sub_100055054(v9, v7);
      sub_10005B2EC(v9, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      v13 += v14;
      --v12;
    }

    while (v12);

    return v18;
  }

  else
  {
    v15 = v11;
  }

  return v15;
}

uint64_t sub_10001B82C(uint64_t a1)
{
  v2 = sub_1000899A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = *(a1 + 16);
  sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
  v11 = sub_10008A418();
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v7, v17, v2);
      sub_100055C68(v9, v7);
      (*(v13 - 8))(v9, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

uint64_t sub_10001B9EC(uint64_t a1)
{
  v2 = sub_100089888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = *(a1 + 16);
  sub_10005AE38(&qword_1000A6660, &type metadata accessor for TypeInstance);
  v11 = sub_10008A418();
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v7, v17, v2);
      sub_1000559A0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

uint64_t sub_10001BBAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10008A418();
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

    sub_100054CF0(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001BC6C(uint64_t a1)
{
  v2 = sub_1000897A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = *(a1 + 16);
  sub_10005AE38(&qword_1000A6638, &type metadata accessor for TypedValue);
  v11 = sub_10008A418();
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v7, v17, v2);
      sub_1000556D8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

id *sub_10001BE2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10004F5AC(*(a1 + 16), 0);
  v4 = sub_10005B040(&v6, v3 + 4, v2, a1);
  sub_100011E9C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10001BEBC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10008A9D8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10001BF0C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100057EF0(result, 1, sub_100080604);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10001BFD8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100057EF0(result, 1, a2);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10001C0EC()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock(v1 + 6);
  sub_10005FD14();
  sub_10005B3CC(v2, v3);
  os_unfair_lock_unlock(v1 + 6);

  return sub_10005E694();
}

uint64_t sub_10001C158()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_10005FD14();
  sub_10005B39C(v2, v3);
  os_unfair_lock_unlock(v1 + 6);

  return sub_10005E694();
}

uint64_t sub_10001C1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 24);

  os_unfair_lock_lock(v5 + 6);
  sub_10005FD14();
  sub_10005B344();
  os_unfair_lock_unlock(v5 + 6);

  v6 = sub_1000899A8();
  sub_100017A1C(v6);
  return (*(v7 + 8))(a3);
}

uint64_t sub_10001C270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 32);

  os_unfair_lock_lock(v5 + 6);
  sub_10005FD14();
  sub_10005B2D0();
  os_unfair_lock_unlock(v5 + 6);

  return sub_10005B2EC(a3, type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey);
}

uint64_t sub_10001C308()
{
  sub_10005F538();
  if ((sub_100089998() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0) + 20);

  return sub_100088A38();
}

uint64_t sub_10001C364()
{
  sub_1000899A8();
  sub_10005D134();
  sub_10005AE38(v0, v1);
  sub_1000124C8();
  sub_10008A218();
  v2 = *(type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0) + 20);
  sub_100088A68();
  sub_10005CCF0();
  sub_10005AE38(v3, v4);
  sub_1000124C8();
  return sub_10008A218();
}

Swift::Int sub_10001C414()
{
  sub_10008AB08();
  sub_1000899A8();
  sub_10005D134();
  v2 = sub_10005AE38(v0, v1);
  sub_100060F30(v2, v3, v4, v5, v6, v7, v8, v9, v22, v24);
  sub_10008A218();
  v10 = *(type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0) + 20);
  sub_100088A68();
  sub_10005CCF0();
  v13 = sub_10005AE38(v11, v12);
  sub_100060F30(v13, v14, v15, v16, v17, v18, v19, v20, v23, v25);
  sub_10008A218();
  return sub_10008AB28();
}

Swift::Int sub_10001C4E4(uint64_t a1, uint64_t a2)
{
  sub_10008AB08();
  sub_1000899A8();
  sub_10005D134();
  v5 = sub_10005AE38(v3, v4);
  sub_100060F30(v5, v6, v7, v8, v9, v10, v11, v12, v25, v27);
  sub_10008A218();
  v13 = *(a2 + 20);
  sub_100088A68();
  sub_10005CCF0();
  v16 = sub_10005AE38(v14, v15);
  sub_100060F30(v16, v17, v18, v19, v20, v21, v22, v23, v26, v28);
  sub_10008A218();
  return sub_10008AB28();
}

uint64_t sub_10001C5A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  if (*(*result + 16) && (result = sub_100081308(a2, a3), (v6 & 1) != 0))
  {
    v7 = 0;
    v8 = *(*(v5 + 56) + 8 * result);
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  *a4 = v8;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_10001C614(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    result = sub_100081308(a2, a3);
    if (v9)
    {
      v10 = result;
      v11 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *a1;
      v13 = *(*a1 + 24);
      sub_100008DC0(&qword_1000A6488, &qword_10008D890);
      sub_10008A9A8(isUniquelyReferenced_nonNull_native, v13);
      v14 = *(*(v18 + 48) + 16 * v10 + 8);

      result = sub_10008A9B8();
      *a1 = v18;
    }
  }

  else
  {
    v16 = *a1;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a1;
    result = sub_10004FB24(a4, a2, a3, v17);
    *a1 = v19;
  }

  return result;
}

uint64_t sub_10001C72C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000899A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a2, v8);
  if (a4)
  {

    v13 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a1;
    sub_10004FC4C(a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *a1 = v17;
  }

  else
  {
    sub_10004F89C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10001C884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = a3(a2), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
  }

  else
  {
    v10 = 0;
    result = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t sub_10001C8F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005B654(a2, v11);
  if (a4)
  {

    v12 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_10004FE20(a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *a1 = v16;
  }

  else
  {
    sub_10004F9E0(v11);
  }

  return sub_10005B2EC(v11, type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey);
}

uint64_t sub_10001CA10()
{
  sub_100017674();
  sub_100009BA0();

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_10001CA40()
{
  sub_100008DC0(&qword_1000A66B0, &qword_10008D9C0);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = &_swiftEmptyDictionarySingleton;
  v0[2] = v1;
  sub_100008DC0(&qword_1000A66B8, &qword_10008D9C8);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = &_swiftEmptyDictionarySingleton;
  v0[3] = v2;
  sub_100008DC0(&qword_1000A66C0, &unk_10008D9D0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = &_swiftEmptyDictionarySingleton;
  v0[4] = v3;
  return v0;
}

id ToolKitIndexer.init(clientIdentifier:)()
{

  sub_1000896F8();
  v2 = sub_1000896A8();
  if (v1)
  {
    type metadata accessor for ToolKitIndexer();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *&v0[OBJC_IVAR___WFToolKitIndexer_toolDatabase] = v2;
    v4.receiver = v0;
    v4.super_class = type metadata accessor for ToolKitIndexer();
    return objc_msgSendSuper2(&v4, "init");
  }
}

uint64_t ToolKitIndexer.reindex(request:)()
{
  sub_100012404();
  v1[28] = v2;
  v1[29] = v0;
  v3 = sub_100089008();
  v1[30] = v3;
  sub_100017A0C(v3);
  v1[31] = v4;
  v6 = *(v5 + 64);
  v1[32] = sub_10005F3EC();
  v1[33] = swift_task_alloc();
  v7 = sub_100089408();
  v1[34] = v7;
  sub_100017A0C(v7);
  v1[35] = v8;
  v10 = *(v9 + 64);
  v1[36] = sub_10005F4D4();
  v11 = sub_100088E08();
  v1[37] = v11;
  sub_100017A0C(v11);
  v1[38] = v12;
  v14 = *(v13 + 64);
  v1[39] = sub_10005F4D4();
  v15 = sub_100008DC0(&qword_1000A6288, &qword_10008D698);
  sub_10005E3B0(v15);
  v17 = *(v16 + 64);
  v1[40] = sub_10005F4D4();
  v18 = sub_100008DC0(&qword_1000A6290, &qword_10008D6A0);
  v1[41] = v18;
  sub_10005E3B0(v18);
  v20 = *(v19 + 64);
  v1[42] = sub_10005F3EC();
  v1[43] = swift_task_alloc();
  v21 = sub_100089348();
  v1[44] = v21;
  sub_100017A0C(v21);
  v1[45] = v22;
  v24 = *(v23 + 64);
  v1[46] = sub_10005F3EC();
  v1[47] = swift_task_alloc();
  v25 = sub_1000889E8();
  v1[48] = v25;
  sub_100017A0C(v25);
  v1[49] = v26;
  v1[50] = *(v27 + 64);
  v1[51] = sub_10005F3EC();
  v1[52] = swift_task_alloc();
  v28 = sub_10005CFA0();

  return _swift_task_switch(v28, v29, v30);
}

uint64_t sub_10001CED4()
{
  v1 = *(v0 + 416);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 352);
  v5 = *(v0 + 360);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  *(v0 + 424) = os_transaction_create();
  sub_100088F08();
  *(v0 + 432) = CACurrentMediaTime();
  *(v0 + 440) = *(v7 + OBJC_IVAR___WFToolKitIndexer_toolDatabase);
  sub_100089388();
  (*(v5 + 104))(v3, enum case for ToolDatabase.Environment.simulation(_:), v4);
  sub_10005AE38(&qword_1000A6298, &type metadata accessor for ToolDatabase.Environment);
  sub_10005D9DC();
  sub_10005F910();
  LOBYTE(v6) = sub_10008A228();
  v8 = *(v5 + 8);
  v9 = sub_10005EC4C();
  v8(v9);
  v10 = sub_10005E494();
  v8(v10);
  if (v6)
  {
    v11 = *(v0 + 256);
    sub_100088F28();
    v12 = sub_100088FF8();
    v13 = sub_10008A5E8();
    if (sub_10005F6E4(v13))
    {
      sub_10005E3C8();
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Skipping re-indexing due to simulation mode", v14, 2u);
      sub_10005D4F8();
    }

    v16 = *(v0 + 248);
    v15 = *(v0 + 256);
    v17 = *(v0 + 240);

    v18 = *(v16 + 8);
    v19 = sub_1000124C8();
    v20(v19);
    sub_100008FE0();
    sub_10005ECC0();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_10005DC7C();
    v58 = *(v0 + 264);
    v59 = *(v0 + 256);
    (*(v22 + 8))(v15);

    sub_10001248C();
    sub_10005F6C8();

    __asm { BRAA            X1, X16 }
  }

  v25 = *(v0 + 408);
  v26 = *(v0 + 416);
  v27 = *(v0 + 392);
  v28 = *(v0 + 384);
  v29 = *(v0 + 320);
  v30 = *(v0 + 232);
  v60 = *(v0 + 400);
  v61 = *(v0 + 224);
  v31 = objc_opt_self();
  *(v0 + 448) = v31;
  v32 = [v31 defaultCenter];
  v33 = sub_10008A678();
  v34 = sub_10008A1E8();
  sub_10005A9BC(v33, 0, v34, v32);

  v35 = enum case for ToolDatabase.Transaction.Mode.immediate(_:);
  v36 = sub_100089358();
  sub_100017A1C(v36);
  (*(v37 + 104))(v29, v35, v36);
  sub_10005DC34();
  sub_100009158(v38, v39, v40, v41);
  v42 = sub_1000124F4(v27);
  v43(v42, v26, v28);
  v44 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v45 = swift_allocObject();
  *(v0 + 456) = v45;
  *(v45 + 16) = v30;
  *(v45 + 24) = v61;
  v46 = *(v27 + 32);
  sub_10005F360();
  v47();
  v48 = async function pointer to ToolDatabase.inTransaction<A>(mode:work:)[1];
  v49 = v30;
  v50 = v61;
  swift_task_alloc();
  sub_100012480();
  *(v0 + 464) = v51;
  *v51 = v52;
  v51[1] = sub_10001D344;
  v53 = *(v0 + 344);
  v54 = *(v0 + 320);
  v55 = *(v0 + 328);
  sub_10005F6C8();

  return ToolDatabase.inTransaction<A>(mode:work:)();
}

uint64_t sub_10001D344()
{
  sub_100012604();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = v4[58];
  v6 = v4[57];
  v7 = v4[40];
  v8 = *v1;
  sub_10001237C();
  *v9 = v8;
  *(v10 + 472) = v0;

  sub_100017954(v7, &qword_1000A6288, &qword_10008D698);

  sub_100012554();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10001D48C()
{
  sub_100012604();
  sub_1000893D8();
  sub_1000893C8();
  sub_10005F668();
  v1 = async function pointer to ToolDatabase.checkpointWAL(maxRetries:waitInterval:)[1];
  v2 = swift_task_alloc();
  *(v0 + 480) = v2;
  *v2 = v0;
  v2[1] = sub_10001D538;
  v3 = *(v0 + 440);
  sub_10005EB1C();
  sub_10005ECB4();

  return ToolDatabase.checkpointWAL(maxRetries:waitInterval:)();
}

uint64_t sub_10001D538()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 488) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10001D630()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 296);
  sub_10005BF68();
  sub_10005D2C8(v2);
  if (v4)
  {
    sub_100017954(*(v0 + 336), &qword_1000A6290, &qword_10008D6A0);
  }

  else
  {
    v5 = *(v0 + 488);
    (*(*(v0 + 304) + 32))(*(v0 + 312), *(v0 + 336), *(v0 + 296));
    v6 = sub_100088DF8();
    if (v5)
    {
      v8 = *(v0 + 424);
      v9 = *(v0 + 344);
      v11 = *(v0 + 304);
      v10 = *(v0 + 312);
      v12 = *(v0 + 296);
      swift_unknownObjectRelease();
      v13 = *(v11 + 8);
      v14 = sub_10005E088();
      v15(v14);
      sub_100017954(v9, &qword_1000A6290, &qword_10008D6A0);
      v16 = *(v0 + 408);
      v18 = *(v0 + 368);
      v17 = *(v0 + 376);
      v20 = *(v0 + 336);
      v19 = *(v0 + 344);
      v22 = *(v0 + 312);
      v21 = *(v0 + 320);
      v23 = *(v0 + 288);
      v71 = *(v0 + 264);
      v74 = *(v0 + 256);
      (*(*(v0 + 392) + 8))(*(v0 + 416), *(v0 + 384));

      sub_10005D498();
      goto LABEL_10;
    }

    v25 = v6;
    v26 = v7;
    v27 = *(v0 + 304);
    v28 = *(v0 + 288);
    v72 = *(v0 + 296);
    v75 = *(v0 + 312);
    v30 = *(v0 + 272);
    v29 = *(v0 + 280);
    v69 = [*(v0 + 448) defaultCenter];
    v67 = sub_10008A688();
    sub_100008DC0(&qword_1000A62A0, &qword_10008D6B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008D610;
    *(v0 + 192) = 0x657365676E616863;
    *(v0 + 200) = 0xE900000000000074;
    sub_10005EC64();
    sub_10008A8B8();
    *(inited + 96) = sub_100008DC0(&qword_1000A62A8, qword_10008D6C0);
    *(inited + 72) = v25;
    *(inited + 80) = v26;
    *(v0 + 208) = 0x656372756F73;
    *(v0 + 216) = 0xE600000000000000;
    v32 = sub_10005E088();
    sub_10005AB3C(v32, v33);
    sub_10005EC64();
    sub_10008A8B8();
    (*(v29 + 104))(v28, enum case for ToolDatabase.DidChangeNotificationSource.local(_:), v30);
    v34 = sub_1000893F8();
    v35 = *(v29 + 8);
    v36 = sub_10005F384();
    v37(v36);
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = v34;
    sub_10008A1E8();
    v38 = sub_10005F5F4();
    sub_10005A9BC(v38, v39, v40, v69);

    v41 = sub_10005E088();
    sub_10005ABA8(v41, v42);
    (*(v27 + 8))(v75, v72);
  }

  v43 = *(v0 + 264);
  sub_100088F28();
  v44 = sub_100088FF8();
  v45 = sub_10008A5E8();
  if (sub_10005F6E4(v45))
  {
    v46 = *(v0 + 432);
    sub_10005E048();
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    *(v47 + 4) = CACurrentMediaTime() - v46;
    _os_log_impl(&_mh_execute_header, v44, v45, "Finished in %fs", v47, 0xCu);
    sub_10005D4F8();
  }

  v49 = *(v0 + 416);
  v48 = *(v0 + 424);
  v50 = *(v0 + 384);
  v51 = *(v0 + 392);
  v63 = *(v0 + 408);
  v64 = *(v0 + 376);
  v52 = *(v0 + 344);
  v65 = *(v0 + 368);
  v66 = *(v0 + 336);
  v68 = *(v0 + 320);
  v70 = *(v0 + 312);
  v53 = *(v0 + 264);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v55 = *(v0 + 240);
  v54 = *(v0 + 248);

  v56 = *(v54 + 8);
  v57 = sub_10005D9DC();
  v58(v57);
  sub_100017954(v52, &qword_1000A6290, &qword_10008D6A0);
  v59 = *(v51 + 8);
  v60 = sub_10005F2C4();
  v61(v60);
  swift_unknownObjectRelease();

  sub_100012420();
LABEL_10:

  return v24();
}

uint64_t sub_10001DAF4()
{
  v1 = *(v0 + 424);
  swift_unknownObjectRelease();
  v2 = *(v0 + 472);
  sub_10005DC7C();
  v4 = sub_1000604A8(v3);
  v5(v4);

  sub_10001248C();

  return v6();
}

uint64_t sub_10001DBE4()
{
  v1 = v0[53];
  v2 = v0[43];
  swift_unknownObjectRelease();
  sub_100017954(v2, &qword_1000A6290, &qword_10008D6A0);
  v3 = v0[61];
  sub_10005DC7C();
  v5 = sub_1000604A8(v4);
  v6(v5);

  sub_10001248C();

  return v7();
}

uint64_t sub_10001DCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = _s23IndexingPreflightResultVMa(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = sub_100089008();
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();
  v11 = sub_1000889E8();
  v5[12] = v11;
  v12 = *(v11 - 8);
  v5[13] = v12;
  v13 = *(v12 + 64) + 15;
  v5[14] = swift_task_alloc();
  v14 = sub_100088E08();
  v5[15] = v14;
  v15 = *(v14 - 8);
  v5[16] = v15;
  v16 = *(v15 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_10001DEB8, 0, 0);
}

uint64_t sub_10001DEB8()
{
  sub_100060400();
  v1 = v0[5];
  sub_10001F270();
  v2 = v0[5];
  v3 = v0[3];
  sub_100088A98();
  v4 = v2;
  v0[20] = sub_100088A88();
  v5 = *(&async function pointer to dispatch thunk of ToolKitIndexingPolicy.effectiveChangeset(transaction:) + 1);
  v10 = (&async function pointer to dispatch thunk of ToolKitIndexingPolicy.effectiveChangeset(transaction:) + async function pointer to dispatch thunk of ToolKitIndexingPolicy.effectiveChangeset(transaction:));
  swift_task_alloc();
  sub_100012480();
  v0[21] = v6;
  *v6 = v7;
  v6[1] = sub_10001E010;
  v8 = v0[19];

  return v10(v8, v3);
}

uint64_t sub_10001E010()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (!v0)
  {
    v9 = *(v3 + 160);
  }

  sub_100012554();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10001E114(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, void *a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10005F7EC();
  sub_100060250();
  v27 = v26[19];
  v28 = v26[16];
  v93 = v26[15];
  v94 = v26[18];
  v29 = v26[13];
  v30 = v26[14];
  v32 = v26[11];
  v31 = v26[12];
  v33 = v26[5];
  sub_100089818();
  sub_100089808();
  sub_100088F08();
  sub_1000897D8();

  v34 = *(v29 + 8);
  v35 = sub_10005E51C();
  v36(v35);
  sub_100088F28();
  (*(v28 + 16))(v94, v27, v93);
  v37 = v33;
  v38 = sub_100088FF8();
  v39 = sub_10008A5E8();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v26[18];
  v42 = v26[15];
  v43 = v26[16];
  v44 = v26[10];
  v45 = v26[9];
  if (v40)
  {
    v94 = v26[11];
    v46 = v26[5];
    swift_slowAlloc();
    v93 = v45;
    a11 = sub_10005F8BC();
    sub_10005DC40();
    a12 = swift_slowAlloc();
    a15 = a12;
    *v45 = 138412802;
    *(v45 + 4) = v46;
    *a11 = v46;
    sub_100060DC8();
    v47 = v46;
    sub_100088DD8();
    log = v38;
    HIDWORD(a9) = v39;
    v48 = *(v43 + 8);
    v49 = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50 = sub_100012498();
    v48(v50);
    v51 = sub_10005DB50();
    sub_100080D2C(v51, v52, v53);
    sub_10005E7B8();

    *(v45 + 14) = v41;
    *(v45 + 22) = 1024;
    *(v45 + 24) = BSPthreadGetCurrentPriority();
    _os_log_impl(&_mh_execute_header, v38, BYTE4(a9), "Indexing for request: %@, changeset: %s, priority: %d", v45, 0x1Cu);
    sub_100017954(a11, &qword_1000A6460, &qword_10008D878);
    sub_10005D4F8();

    sub_10005B1BC(a12);
    sub_10005D4F8();

    sub_10005D4F8();

    (*(v44 + 8))(v94, v45);
  }

  else
  {

    v48 = *(v43 + 8);
    v49 = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54 = sub_100012498();
    v48(v54);
    v55 = *(v44 + 8);
    v56 = sub_10005D9DC();
    v58(v56, v57);
  }

  v26[23] = v48;
  v59 = v26[19];
  v60 = v26[16];
  v61 = v26[17];
  v62 = v26[15];
  v63 = enum case for ToolKitIndexingReason.Changeset.none(_:);
  v64 = *(v60 + 104);
  v26[24] = v64;
  v26[25] = (v60 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v64(v61, v63, v62);
  sub_10005AE38(&qword_1000A6458, &type metadata accessor for ToolKitIndexingReason.Changeset);
  sub_100012498();
  LOBYTE(v59) = sub_10008A228();
  v26[26] = v49;
  v65 = sub_1000124C8();
  v48(v65);
  if (v59)
  {
    v66 = v26[15];
    v67 = v26[2];
    (v48)(v26[19], v66);
    sub_10005DA80();
    sub_100009158(v68, v69, v70, v66);
    sub_1000603F4();
    v71 = v26[14];
    v72 = v26[11];
    v73 = v26[8];

    sub_100012420();
    sub_10005F3D0();

    return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, log, a11, a12, v93, v94, a15, a16, a17, a18);
  }

  else
  {
    swift_task_alloc();
    sub_100012480();
    v26[27] = v83;
    *v83 = v84;
    v83[1] = sub_10001E518;
    v85 = v26[19];
    v86 = v26[8];
    v87 = v26[3];
    v88 = v26[4];
    sub_10005F3D0();

    return sub_10000AA54(v89, v90, v91);
  }
}

uint64_t sub_10001E518()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 224) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

void sub_10001E610()
{
  sub_10001F660();
  v2 = v1;
  v45 = v0;
  v0[29] = v1;
  v3 = sub_10008391C(v1);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v46 = v2;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = sub_10008A928();
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v46 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v9 = [v7 localizationUsage];
    v10 = sub_10008A268();
    v12 = v11;
    if (v10 == sub_10008A268() && v12 == v13)
    {
    }

    else
    {
      sub_100060D08();
      v15 = sub_10008AA68();

      if ((v15 & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    sub_10008A948();
    v16 = _swiftEmptyArrayStorage[2];
    sub_10008A978();
    sub_10008A988();
    sub_10008A958();
LABEL_15:
    ++v4;
  }

  v17 = v45;
  v18 = v45[28];
  v19 = v45[19];
  v20 = v45[3];
  v45[30] = _swiftEmptyArrayStorage;
  type metadata accessor for ToolKitIndexer.SharedIndexingState();
  sub_100009BA0();
  v21 = swift_allocObject();
  v45[31] = v21;
  sub_10001CA40();
  sub_100029630();
  if (v18)
  {
    v27 = v45[26];
    v28 = v45[23];
    v29 = v45[19];
    v30 = v45[15];
    v31 = v45[8];

    sub_10005CD08();
    sub_10005B2EC(v31, v32);
    v33 = sub_10005ED94();
    v28(v33);
    sub_1000603F4();
    sub_10005F09C();

    sub_10005D498();
    sub_10005F6C8();

    __asm { BRAA            X1, X16 }
  }

  sub_100028BEC(v45[3], v45[19], _swiftEmptyArrayStorage, v22, v23, v24, v25, v26, v44, v45, v46, _swiftEmptyArrayStorage, v47, v48, v49, v50, v51, v52, v53, v54);
  v17[32] = 0;
  v36 = v17[3];

  type metadata accessor for ContainerIndexer();
  sub_10005D504();
  v37 = swift_allocObject();
  v17[33] = v37;
  *(v37 + 16) = v21;
  *(v37 + 24) = _swiftEmptyArrayStorage;
  type metadata accessor for TypeIndexer();
  sub_100009BA0();
  swift_allocObject();
  v38 = sub_10005D9B8();
  v17[34] = sub_100013468(v38, v21, v37);
  swift_retain_n();

  v39 = swift_task_alloc();
  v17[35] = v39;
  *v39 = v17;
  v39[1] = sub_10001E988;
  v40 = v17[19];
  v41 = v17[8];
  v42 = v17[6];
  sub_10005F6C8();

  sub_100020080();
}

uint64_t sub_10001E988()
{
  sub_100012404();
  sub_100012474();
  v2 = *(v1 + 280);
  v3 = *v0;
  sub_10001237C();
  *v4 = v3;

  v5 = sub_10005CFA0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10001EA6C()
{
  sub_1000615C8();
  sub_10005EC9C();
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 152);
  (*(v0 + 192))(*(v0 + 136), enum case for ToolKitIndexingReason.Changeset.full(_:), *(v0 + 120));
  sub_100012498();
  LOBYTE(v4) = sub_100088DE8();
  v5 = sub_1000124C8();
  v3(v5);
  if (v4)
  {
    v6 = swift_task_alloc();
    *(v0 + 288) = v6;
    *v6 = v0;
    v6[1] = sub_10001EBC0;
    v7 = *(v0 + 272);
    v8 = *(v0 + 240);
    sub_10005E7C4(*(v0 + 24));
    sub_1000615B4();

    return sub_100026644(v9, v10, v11, v12);
  }

  else
  {
    v14 = *(v0 + 240);

    *(v0 + 304) = *(v0 + 256);
    v15 = swift_task_alloc();
    *(v0 + 312) = v15;
    *v15 = v0;
    sub_10005E9CC(v15);
    v16 = *(v0 + 264);
    v17 = *(v0 + 232);
    v18 = *(v0 + 64);
    v19 = *(v0 + 48);
    v20 = *(v0 + 32);
    sub_10005E7C4(*(v0 + 24));
    sub_1000615B4();

    return sub_100026758();
  }
}

uint64_t sub_10001EBC0()
{
  sub_100012604();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *(v5 + 240);
  v8 = *v1;
  sub_10001237C();
  *v9 = v8;
  v3[37] = v0;

  if (v0)
  {
    v10 = v3[29];

    v11 = sub_10005CFA0();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v3[38] = 0;
    v14 = swift_task_alloc();
    v3[39] = v14;
    *v14 = v8;
    sub_10005E9CC(v14);
    v15 = v3[33];
    v16 = v3[29];
    v17 = v3[8];
    v18 = v3[6];
    v19 = v3[4];
    sub_10005E7C4(v3[3]);

    return sub_100026758();
  }
}

uint64_t sub_10001ED3C()
{
  sub_100012404();
  sub_100012474();
  v2 = *(v1 + 312);
  v3 = *(v1 + 232);
  v4 = *v0;
  sub_10001237C();
  *v5 = v4;

  v6 = sub_10005CFA0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10001EE3C()
{
  sub_10005EAC8();
  v1 = v0[38];
  v2 = v0[8];
  v3 = v0[3];
  sub_10004887C();
  if (v1)
  {
    v7 = v0[33];
    v8 = v0[34];
    v9 = v0[31];
    v10 = v0[26];
    v11 = v0[23];
    v12 = v0[19];
    v13 = v0[15];
    v14 = v0[8];

    sub_10005CD08();
    sub_10005B2EC(v14, v15);
    v16 = sub_10005DC4C();
    v11(v16);
    sub_1000603F4();
    sub_10005F09C();

    sub_10005D498();
  }

  else
  {
    v4 = v0[8];
    v5 = v0[3];
    v6 = *(v0[7] + 20);
    sub_1000488D0();
    v18 = v0[3];
    sub_100089368();
    v19 = v0[3];
    sub_100089368();
    v20 = v0[33];
    v21 = v0[34];
    v22 = v0[31];
    v23 = v0[19];
    v24 = v0[15];
    v25 = v0[16];
    v26 = v0[8];
    v27 = v0[2];
    sub_10005CD08();
    sub_10005B2EC(v28, v29);

    v30 = *(v25 + 32);
    sub_10005E0AC();
    v31();
    sub_100009158(v27, 0, 1, v24);
    sub_1000603F4();
    v32 = v0[14];
    v33 = v0[11];
    v34 = v0[8];

    sub_100012420();
  }

  return v35();
}

uint64_t sub_10001F058()
{
  sub_10005EC9C();
  v1 = *(v0 + 160);

  v2 = *(v0 + 176);
  sub_10005EF50();

  sub_10001248C();

  return v3();
}

uint64_t sub_10001F0F0()
{
  sub_10005EC9C();
  v1 = *(v0 + 208);
  (*(v0 + 184))(*(v0 + 152), *(v0 + 120));
  v2 = *(v0 + 224);
  sub_10005EF50();

  sub_10001248C();

  return v3();
}

uint64_t sub_10001F194()
{
  sub_100060400();
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[19];
  v7 = v0[15];
  v8 = v0[8];

  sub_10005CD08();
  sub_10005B2EC(v8, v9);
  v10 = sub_10005DB50();
  v5(v10);
  v11 = v0[37];
  sub_10005EF50();

  sub_10001248C();

  return v12();
}

void sub_10001F270()
{
  sub_1000602E0();
  v1 = v0;
  v2 = sub_100008DC0(&qword_1000A6710, &qword_10008DA10);
  sub_10005E3B0(v2);
  v4 = *(v3 + 64);
  sub_1000602BC();
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = sub_100088EC8();
  v9 = sub_100012368(v8);
  v54 = v10;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v9);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = &v53 - v16;
  v18 = sub_100008DC0(&qword_1000A6718, &qword_10008DA18);
  sub_10005E3B0(v18);
  v20 = *(v19 + 64);
  sub_1000602BC();
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = sub_100088EE8();
  v25 = sub_100012368(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_1000123E8();
  v53 = v1;
  sub_100088EF8();
  if (sub_100008E78(v23, 1, v24) == 1)
  {
    v30 = &qword_1000A6718;
    v31 = &qword_10008DA18;
    v32 = v23;
LABEL_5:
    sub_100017954(v32, v30, v31);
LABEL_6:
    sub_1000601E4();
    return;
  }

  v33 = *(v27 + 32);
  sub_10005E458();
  v34();
  sub_100088ED8();
  v35 = sub_10005EFF4();
  if (sub_100008E78(v35, v36, v8) == 1)
  {
    v37 = sub_10005FF1C();
    v38(v37);
    v30 = &qword_1000A6710;
    v31 = &qword_10008DA10;
    v32 = v7;
    goto LABEL_5;
  }

  v39 = v7;
  v40 = v54;
  (*(v54 + 32))(v17, v39, v8);
  v41 = *(v40 + 16);
  v42 = sub_10005F2C4();
  v43(v42);
  if ((*(v40 + 88))(v15, v8) == enum case for ToolKitIndexingRequest.TestingConfig.Failure.retryingError(_:))
  {
    (*(v40 + 96))(v15, v8);
    v44 = *v15;
    if (sub_100088EB8() >= v44)
    {
      v52 = *(v40 + 8);
    }

    else
    {
      v45 = sub_100088F18();
      sub_10005AE38(&qword_1000A6720, &type metadata accessor for ToolKitTestingRetryingError);
      sub_10005FBFC();
      sub_10005ECC0();
      swift_allocError();
      sub_10005D92C(v45);
      (*(v46 + 104))();
      swift_willThrow();
      v47 = *(v40 + 8);
    }

    v48 = sub_10005E810();
    v49(v48);
    v50 = sub_10005FF1C();
    v51(v50);
    goto LABEL_6;
  }

  sub_10008AA58();
  __break(1u);
}

void sub_10001F660()
{
  sub_1000611A4();
  v2 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v3 = sub_100012368(v2);
  v139 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  sub_100060BFC();
  v10 = sub_100088A68();
  v11 = sub_100012368(v10);
  v142 = v12;
  v143 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10005CFB0();
  v138 = v15;
  sub_10005EC34();
  __chkstk_darwin(v16);
  v135 = &v130 - v17;
  sub_10005EC34();
  __chkstk_darwin(v18);
  v136 = &v130 - v19;
  sub_10005FA24();
  v20 = sub_100089008();
  v21 = sub_100012368(v20);
  v145 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_10005CFB0();
  v141 = v25;
  sub_10005EC34();
  __chkstk_darwin(v26);
  v140 = &v130 - v27;
  sub_10005EC34();
  v29 = __chkstk_darwin(v28);
  v31 = &v130 - v30;
  __chkstk_darwin(v29);
  v33 = &v130 - v32;
  sub_10005EC34();
  __chkstk_darwin(v34);
  sub_100060BE8();
  sub_100088A98();
  v35 = sub_100088A78();
  sub_10001A83C(v35);
  sub_100060280();

  v36 = sub_10001B674(0);
  v148 = v36;
  v37 = *(v36 + 16);
  v144 = v2;
  if (!v37)
  {
    sub_100088F28();
    v38 = sub_100088FF8();
    v39 = sub_10008A5D8();
    if (sub_10005F6E4(v39))
    {
      sub_10005E3C8();
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "No preferred localizations. Falling back to English", v40, 2u);
      v2 = v144;
      sub_10005D4F8();
    }

    sub_10006025C();
    v41(v1, v20);
  }

  v42 = &unk_10008D000;
  if (VCIsInternalBuild() && *(v36 + 16) >= 0x15uLL)
  {
    v133 = v31;
    v134 = v20;
    sub_100088A58();
    v43 = v33;
    sub_100088F28();
    v44 = *(v142 + 16);
    v45 = v135;
    v46 = sub_10005DC1C();
    v132 = v47;
    v131 = v48;
    (v48)(v46);
    v49 = sub_100088FF8();
    v50 = sub_10008A5C8();
    v51 = os_log_type_enabled(v49, v50);
    v137 = v0;
    if (v51)
    {
      sub_10005E048();
      v52 = swift_slowAlloc();
      sub_10005DC40();
      v53 = swift_slowAlloc();
      v147 = v53;
      *v52 = 136315138;
      sub_10005CCF0();
      sub_10005AE38(v54, v55);
      v130 = v43;
      v56 = v143;
      sub_10008AA28();
      v135 = *(v142 + 8);
      (v135)(v45, v56);
      v57 = sub_10005E9B4();
      v60 = sub_100080D2C(v57, v58, v59);

      *(v52 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v49, v50, "AppleInternal: Detected too many localizations, so only localizing in %s.", v52, 0xCu);
      sub_10005B1BC(v53);
      sub_10005D0A0();

      sub_10005CF50();

      sub_10006025C();
      v62 = v130;
    }

    else
    {

      v135 = *(v142 + 8);
      (v135)(v45, v143);
      sub_10006025C();
      v62 = v43;
    }

    v61(v62, v134);
    sub_100008DC0(&qword_1000A66D0, &qword_10008E3B0);
    v63 = *(v139 + 72);
    v64 = (*(v139 + 80) + 32) & ~*(v139 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_10008C980;
    v66 = v65 + v64;
    v67 = v143;
    v131(v65 + v64, v136, v143);
    v68 = WFLocalizationUsageDisplay;
    v69 = v144;
    *(v66 + *(v144 + 20)) = WFLocalizationUsageDisplay;
    *(v66 + *(v69 + 24)) = 0;
    v70 = v68;
    sub_1000563B0(v65);
    v71 = sub_10005E434();
    (v135)(v71, v67);

    v148 = v65;
    v2 = v69;
    v0 = v137;
    v20 = v134;
    v42 = &unk_10008D000;
  }

  sub_1000889F8();
  v72 = WFLocalizationUsageDisplay;
  *&v9[*(v2 + 20)] = WFLocalizationUsageDisplay;
  *&v9[*(v2 + 24)] = 0;
  v73 = v72;
  v74 = sub_10005EB28();
  v76 = sub_100055054(v74, v75);
  sub_10005D370();
  v77 = WFLogCategoryToolKit;
  if (v76)
  {
    sub_100088F28();
    v78 = sub_100088FF8();
    v79 = sub_10008A5C8();
    if (sub_10005F6E4(v79))
    {
      sub_10005E3C8();
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "Inserted en/display in preferred localizations.", v80, 2u);
      sub_10005D4F8();
    }

    sub_10006025C();
    v81 = sub_10005F2C4();
    v82(v81);
  }

  sub_1000889F8();
  v83 = WFLocalizationUsageLanguageModel;
  *&v9[*(v2 + 20)] = WFLocalizationUsageLanguageModel;
  *&v9[*(v2 + 24)] = 1;
  v84 = v83;
  v85 = sub_10005EB28();
  v87 = sub_100055054(v85, v86);
  sub_10005D370();
  if (v87)
  {
    sub_100088F28();
    v88 = sub_100088FF8();
    v89 = sub_10008A5C8();
    if (sub_10005F438(v89))
    {
      sub_10005E3C8();
      *swift_slowAlloc() = 0;
      sub_10005EEB4();
      _os_log_impl(v90, v91, v92, v93, v94, 2u);
      sub_10005D4F8();
    }

    sub_10006025C();
    v95(v140, v20);
  }

  sub_100088F28();
  v96 = sub_100088FF8();
  v97 = sub_10008A5E8();
  if (sub_10005F438(v97))
  {
    sub_10005E048();
    v77 = swift_slowAlloc();
    sub_10005DC40();
    v98 = swift_slowAlloc();
    v147 = v98;
    *v77 = v42[204];
    sub_10005E4A0();
    swift_beginAccess();
    sub_10005EA80();
    sub_10005AE38(v99, v100);
    v137 = v0;

    sub_10008A408();

    v101 = sub_100060D08();
    v104 = sub_100080D2C(v101, v102, v103);

    *(v77 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v96, v9, "Resolved Preferred localizations: %s", v77, 0xCu);
    sub_10005B1BC(v98);
    sub_10005D4F8();

    sub_10005D4F8();

    v105 = *(v145 + 8);
    v106 = sub_10005F378();
    v0 = v137;
  }

  else
  {

    v108 = *(v145 + 8);
    v106 = sub_10005F378();
  }

  v107(v106);
  sub_10005E4A0();
  swift_beginAccess();
  v109 = v148;

  sub_10002A684(v110);
  sub_100060280();

  v111 = *(v77 + 16);
  if (v111)
  {
    v141 = v109;
    v146 = _swiftEmptyArrayStorage;
    sub_10008A968();
    sub_10005D14C();
    v140 = v77;
    v113 = v77 + v112;
    v114 = v144;
    v145 = *(v115 + 72);
    v116 = (v142 + 16);
    do
    {
      sub_10005B654(v113, v0);
      v117 = *v116;
      sub_10005E458();
      v118();
      sub_100088A08();
      v120 = v119;
      v121 = objc_allocWithZone(INStringLocalizer);
      v122 = sub_10005E120();
      sub_10004F2E4(v122, v120);
      v123 = *(v0 + *(v114 + 20));
      v124 = objc_allocWithZone(WFLocalizationContext);
      v125 = v123;
      v126 = sub_10005E470();
      sub_10004F348(v126, v127, v128);
      sub_10005D370();
      sub_10008A948();
      v129 = v146[2];
      sub_10008A978();
      sub_10008A988();
      sub_10008A958();
      v113 += v145;
      --v111;
    }

    while (v111);
  }

  sub_10006110C();
}

uint64_t sub_100020080()
{
  sub_100012404();
  v0[67] = v1;
  v0[66] = v2;
  v0[65] = v3;
  v0[63] = v4;
  v0[64] = v5;
  v6 = sub_100088A68();
  v0[68] = v6;
  sub_100017A0C(v6);
  v0[69] = v7;
  v9 = *(v8 + 64);
  v0[70] = sub_10005F4D4();
  v10 = sub_100089008();
  v0[71] = v10;
  sub_100017A0C(v10);
  v0[72] = v11;
  v13 = *(v12 + 64);
  v0[73] = sub_10005F3EC();
  v0[74] = swift_task_alloc();
  v0[75] = swift_task_alloc();
  v0[76] = swift_task_alloc();
  v14 = sub_100088FA8();
  v0[77] = v14;
  sub_100017A0C(v14);
  v0[78] = v15;
  v17 = *(v16 + 64);
  v0[79] = sub_10005F3EC();
  v0[80] = swift_task_alloc();
  v0[81] = swift_task_alloc();
  v18 = sub_1000899A8();
  v0[82] = v18;
  sub_100017A0C(v18);
  v0[83] = v19;
  v21 = *(v20 + 64);
  v0[84] = sub_10005F3EC();
  v0[85] = swift_task_alloc();
  v0[86] = swift_task_alloc();
  v22 = sub_100088F78();
  v0[87] = v22;
  sub_100017A0C(v22);
  v0[88] = v23;
  v25 = *(v24 + 64);
  v0[89] = sub_10005F3EC();
  v0[90] = swift_task_alloc();
  v0[91] = swift_task_alloc();
  v0[92] = swift_task_alloc();
  v0[93] = swift_task_alloc();
  v0[94] = swift_task_alloc();
  v0[95] = swift_task_alloc();
  v26 = sub_100088F98();
  v0[96] = v26;
  sub_100017A0C(v26);
  v0[97] = v27;
  v29 = *(v28 + 64);
  v0[98] = sub_10005F3EC();
  v0[99] = swift_task_alloc();
  v0[100] = swift_task_alloc();
  v0[101] = swift_task_alloc();
  v0[102] = swift_task_alloc();
  v0[103] = swift_task_alloc();
  v0[104] = swift_task_alloc();
  v30 = sub_100088D98();
  v0[105] = v30;
  sub_100017A0C(v30);
  v0[106] = v31;
  v33 = *(v32 + 64);
  v0[107] = sub_10005F3EC();
  v0[108] = swift_task_alloc();
  v0[109] = swift_task_alloc();
  v34 = sub_100089978();
  v0[110] = v34;
  sub_100017A0C(v34);
  v0[111] = v35;
  v37 = *(v36 + 64);
  v0[112] = sub_10005F4D4();
  v38 = sub_100088E08();
  v0[113] = v38;
  sub_100017A0C(v38);
  v0[114] = v39;
  v41 = *(v40 + 64);
  v0[115] = sub_10005F3EC();
  v0[116] = swift_task_alloc();
  v42 = sub_10005CFA0();

  return _swift_task_switch(v42, v43, v44);
}

uint64_t sub_100020498()
{
  v500 = v0;
  v1 = *(v0 + 928);
  v2 = *(v0 + 912);
  v3 = *(v0 + 904);
  v4 = *(v0 + 504);
  *(v0 + 400) = _swiftEmptyArrayStorage;
  v5 = *(v2 + 104);
  v6 = sub_10005E81C();
  v7(v6);
  sub_10005E428();
  LOBYTE(v4) = sub_100088DE8();
  v8 = *(v2 + 8);
  v9 = sub_100012498();
  v8(v9);
  v10 = &WFLogCategoryToolKit;
  v11 = &unk_10008D000;
  v12 = &ContainerIndexer;
  v496 = v0;
  if (v4)
  {
    v454 = *(sub_100089968() + 16);
    if (v454)
    {
      v423 = v0 + 496;
      v13 = *(*(v0 + 888) + 80);
      sub_10005D9C4();
      v15 = *(v0 + 776);
      v446 = v14 + v16;
      v439 = (v15 + 16);
      v490 = (*(v0 + 704) + 8);
      v488 = (v15 + 8);
      v426 = (*(v0 + 664) + 8);
      v432 = (*(v0 + 848) + 8);
      v450 = v17;
      v430 = *(v0 + 576) + 8;
      v431 = (v17 + 8);
      v18 = *(v0 + 624);
      v422 = (v18 + 8);
      v428 = v18 + 88;
      v429 = WFLogCategoryToolKitIndexing;
      HIDWORD(v427) = enum case for OSSignpostError.doubleEnd(_:);
      *(&v19 + 1) = 6;
      v20 = 0;
      *&v19 = 136315394;
      v424 = v19;
      v434 = v14;
      do
      {
        v21 = *(v0 + 896);
        v22 = *(v0 + 880);
        v23 = *(v0 + 832);
        v24 = *(v0 + 760);
        sub_10004F858(v20, 1, v14);
        v467 = v20;
        (*(v450 + 16))(v21, v446 + *(v450 + 72) * v20, v22);
        sub_100089958();
        sub_10005EDEC();
        sub_10008A2C8(v501);
        v25 = v499;
        sub_10005D504();
        v26 = swift_allocObject();
        *(v26 + 16) = v498;
        *(v26 + 24) = v25;
        sub_10005D9D0();
        v27 = swift_allocObject();
        sub_10005EDE0(v27);
        sub_10005D9D0();
        v28 = swift_allocObject();
        *(v28 + 16) = 8;
        sub_10005D504();
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10005C5DC;
        *(v29 + 24) = v26;
        sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10008D620;
        *(inited + 32) = sub_10005C5C8;
        *(inited + 40) = v27;
        *(inited + 48) = sub_10005C5C8;
        *(inited + 56) = v28;
        *(inited + 64) = sub_10005C5D0;
        *(inited + 72) = v29;

        sub_100088D68();
        sub_100088F88();
        sub_100088F58();
        v31 = sub_100088F88();
        v32 = sub_10008A6A8();
        if (sub_10008A7B8())
        {
          sub_10005E048();
          v33 = swift_slowAlloc();
          sub_10005DC40();
          v34 = swift_slowAlloc();
          v35 = 0;
          v498 = v34;
          sub_10005E4D8(v33);
          while (v35 != 48)
          {
            v37 = *(inited + v35 + 32);
            v36 = *(inited + v35 + 40);

            v38 = sub_10005E4C8();
            v37(v38);

            v35 += 16;
          }

          v0 = v496;
          v39 = *(v496 + 760);

          v40 = sub_100088F68();
          sub_10006132C(&_mh_execute_header, v31, v32, v40, "IndexType", "type=%{signpost.description:attribute}s");
          sub_10005B1BC(v34);
          sub_10005D4F8();

          sub_10005CF50();
        }

        else
        {

          v0 = v496;
        }

        v479 = *(v0 + 896);
        v41 = *(v0 + 872);
        v42 = *(v0 + 832);
        v43 = *(v0 + 824);
        v44 = *(v0 + 768);
        v45 = *(v0 + 760);
        v46 = *(v0 + 752);
        v47 = *(v0 + 696);
        v48 = *(v0 + 688);
        v470 = *(v0 + 520);
        v49 = sub_10005E144();
        v50(v49, v45, v47);
        v51 = sub_100088FD8();
        sub_10005E928(v51);
        swift_allocObject();
        sub_1000124D4();
        v52 = *v439;
        v53 = sub_10005FA98();
        v54(v53);
        sub_10005E4AC();
        v464 = *v490;
        (*v490)(v45, v47);
        v55 = *v488;
        v56 = sub_10005F5BC();
        v460 = v57;
        v57(v56);
        sub_100015104(v479, v48);
        v478 = 0;
        v58 = *(v0 + 688);
        v59 = *(v0 + 656);
        v60 = *(v0 + 528);

        sub_100089818();
        sub_100089808();
        sub_10005D9B8();
        sub_1000897E8();

        v61 = *v426;
        v62 = sub_10005E088();
        v63(v62);
        v64 = *(v0 + 872);
        v65 = *(v0 + 816);
        v66 = *(v0 + 744);
        sub_100088D58();
        v67 = sub_100088D78();
        v69 = v68;
        sub_100088D88();
        v70 = sub_100088F88();
        sub_100088FB8();
        sub_10008A698();
        LOBYTE(v64) = sub_10008A7B8();

        if (v64)
        {
          if (v69)
          {
            if (HIDWORD(v67))
            {
              goto LABEL_175;
            }

            sub_10005EBF0();
            if (v74)
            {
              goto LABEL_182;
            }

            v75 = v67 > 0x10FFFF;
            v67 = v423;
            if (v75)
            {
              goto LABEL_176;
            }
          }

          else if (!v67)
          {
            goto LABEL_174;
          }

          v0 = v496;
          v76 = *(v496 + 648);
          v77 = *(v496 + 616);

          sub_100088FE8();

          v78 = sub_10005E144();
          v80 = "[Error] Interval already ended";
          if (v79(v78, v77) != HIDWORD(v427))
          {
            (*v422)(*(v496 + 648), *(v496 + 616));
            v80 = "";
          }

          v81 = *(v496 + 744);
          sub_10005E3C8();
          v82 = swift_slowAlloc();
          *v82 = 0;
          sub_100088F68();
          sub_100060424();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, v83, v84, v67, v80, v82, 2u);
          sub_10005D0A0();
        }

        v85 = v70;
        v20 = v467 + 1;
        v481 = *(v0 + 896);
        v10 = *(v0 + 880);
        v86 = *(v0 + 872);
        v87 = *(v0 + 840);
        v88 = *(v0 + 816);
        v89 = *(v0 + 768);
        v90 = *(v0 + 744);
        v91 = *(v0 + 696);

        v92 = sub_10005DC1C();
        v464(v92);
        v93 = sub_10005E44C();
        v94 = v460(v93);
        sub_10006031C(v94, v95, v96, v97, v98, v99, v100, v101, v422, v423, v424, *(&v424 + 1), v425, v426, v427, v428, v429, v430, v431, v432);
        v102 = sub_10005DC4C();
        v103(v102);
        (*v431)(v481, v10);
        v14 = v434;
      }

      while (v467 + 1 != v454);

      v11 = &unk_10008D000;
      v12 = &ContainerIndexer;
    }

    else
    {
    }

    v131 = [objc_opt_self() v12[51].ivar_lyt];
    sub_10005F674();
    v132 = sub_10008A6F8();
    sub_10001BF0C(v132);
  }

  else
  {
    v104 = *(v0 + 920);
    v105 = *(v0 + 912);
    v106 = *(v0 + 904);
    v107 = *(v0 + 504);
    v108 = sub_1000124F4(v105);
    v109(v108);
    v110 = *(v105 + 88);
    v111 = sub_100012498();
    v113 = v112(v111);
    v114 = *(v0 + 920);
    if (v113 == enum case for ToolKitIndexingReason.Changeset.partial(_:))
    {
      (*(*(v0 + 912) + 96))(*(v0 + 920), *(v0 + 904));
      v115 = *v114;
      v116 = v114[1];
      v117 = v114[2];

      v118 = [objc_opt_self() sharedRegistry];
      v119 = sub_10008A6F8();
      v120 = *(v119 + 16);
      if (v120)
      {
        v121 = (v119 + 32);
        v122 = _swiftEmptyArrayStorage;
        do
        {
          v123 = *v121;
          if (sub_10008A588())
          {
            v498 = v122;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v124 = v122[2];
              v125 = sub_10005D7F4();
              sub_100081CE0(v125, v126, v127);
              v122 = v498;
            }

            v129 = v122[2];
            v128 = v122[3];
            if (v129 >= v128 >> 1)
            {
              v130 = sub_10005D920(v128);
              sub_100081CE0(v130, v129 + 1, 1);
              v122 = v498;
            }

            v122[2] = (v129 + 1);
            v122[v129 + 4] = v123;
          }

          ++v121;
          --v120;
        }

        while (v120);
      }

      else
      {
        v122 = _swiftEmptyArrayStorage;
      }

      v0 = v496;
      sub_10001BF0C(v122);

      v11 = &unk_10008D000;
    }

    else
    {
      (v8)(*(v0 + 920), *(v0 + 904));
    }
  }

  v436 = v0 + 424;
  v447 = v0 + 440;
  v133 = *(v0 + 512);
  v134 = *(v133 + *(_s23IndexingPreflightResultVMa(0) + 24));
  if ((v134 & 0xC000000000000001) != 0)
  {

    sub_10008A878();
    sub_10005ECB4();
    sub_100011D84(v135, v136, v137);
    sub_10005C60C();
    sub_10005ECB4();
    sub_10005B4C0(v138, v139, v140);
    sub_10005E9C0();
    sub_10008A428();
    v141 = *(v0 + 256);
    v142 = *(v0 + 264);
    v143 = *(v0 + 272);
    v144 = *(v0 + 280);
    v145 = *(v0 + 288);
  }

  else
  {
    v146 = *(v134 + 32);
    sub_10005EB04();
    v142 = (v147 + 56);
    v148 = *(v147 + 56);
    v143 = ~v149;
    sub_10005E054();
    v145 = (v150 & v151);

    v144 = 0;
  }

  v152 = 0;
  *(v0 + 952) = v143;
  *(v0 + 944) = v142;
  *(v0 + 936) = v141;
  *(v0 + 960) = WFLogCategoryToolKitIndexing;
  *(v0 + 968) = WFLogCategoryToolKit;
  *(v0 + 1152) = enum case for OSSignpostError.doubleEnd(_:);
  v455 = v11[98];
LABEL_42:
  v475 = v152;
  while (1)
  {
    v153 = *(v0 + 936);
    if (v153 < 0)
    {
      v142 = (v153 & 0x7FFFFFFFFFFFFFFFLL);
      v164 = sub_10008A8A8();
      if (!v164)
      {
        break;
      }

      v165 = sub_100060F9C(v164);
      sub_100011D84(v165, &qword_1000A5EA8, WFAction_ptr);
      sub_10005F0B8();
      sub_10005ED24();
      swift_dynamicCast();
      v142 = *(v0 + 472);
      v155 = v144;
      v161 = v145;
    }

    else
    {
      sub_100060EDC();
      v155 = v144;
      if (!v145)
      {
        while (1)
        {
          v155 = v154 + 1;
          if (__OFADD__(v154, 1))
          {
            break;
          }

          sub_10005FF7C();
          if (v156 == v157)
          {
            goto LABEL_100;
          }

          sub_10005FF6C();
          if (v158)
          {
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

LABEL_49:
      sub_10005D470();
      v161 = (v160 & v159);
      v142 = sub_10005F868(v162, v163);
    }

    *(v0 + 992) = v161;
    *(v0 + 984) = v155;
    *(v0 + 976) = v142;
    if (!v142)
    {
      break;
    }

    v71 = sub_10008A788();
    v152 = *(v71 + 16);
    v166 = *(v0 + 400);
    v167 = *(v166 + 16);
    v143 = v167 + v152;
    if (__OFADD__(v167, v152))
    {
      goto LABEL_171;
    }

    v168 = v71;
    if (!swift_isUniquelyReferenced_nonNull_native() || v143 > *(v166 + 24) >> 1)
    {
      sub_100080604();
      v166 = v169;
    }

    if (*(v168 + 16))
    {
      v170 = *(v166 + 16);
      v171 = *(v166 + 24);
      sub_10005F348();
      if (v173 < v152)
      {
        goto LABEL_173;
      }

      memcpy((v166 + 8 * v172 + 32), (v168 + 32), 8 * v152);

      if (v152)
      {
        v174 = *(v166 + 16);
        v157 = __OFADD__(v174, v152);
        v175 = (v174 + v152);
        if (v157)
        {
          goto LABEL_180;
        }

        *(v166 + 16) = v175;
      }
    }

    else
    {

      if (v152)
      {
        goto LABEL_172;
      }
    }

    v0 = v496;
    *(v496 + 400) = v166;
    v176 = [v142 parameters];
    v177 = sub_10006028C();
    sub_100011D84(v177, &qword_1000A6530, WFParameter_ptr);
    v178 = sub_10008A328();
    *(v496 + 1000) = v178;

    if (v178 >> 62)
    {
      sub_10005FF5C();
      v179 = sub_10008A9D8();
    }

    else
    {
      v179 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v496 + 1008) = v179;
    if (v179)
    {
      v152 = v475;
      while (1)
      {
        *(v0 + 1016) = v152;
        sub_100060EE8();
        if (v74)
        {
          sub_10005D988(v180, v181);
          if (v183)
          {
            goto LABEL_184;
          }

          v182 = sub_1000604FC(v71, v72);
        }

        else
        {
          v182 = sub_10008A928();
        }

        v71 = sub_10005F138(v182);
        *(v0 + 1032) = v184;
        if (v157)
        {
          goto LABEL_181;
        }

        v185 = *(v0 + 976);
        objc_opt_self();
        sub_10005E028();
        v186 = swift_dynamicCastObjCClass();
        *(v0 + 1040) = v186;
        if (v186)
        {
          goto LABEL_156;
        }

        v187 = *(v0 + 1024);
        v188 = *(v0 + 968);
        v189 = *(v0 + 808);
        v190 = *(v0 + 736);
        v191 = [*(v0 + 976) identifier];
        v192 = sub_10008A268();
        v194 = v193;

        *(v0 + 368) = v192;
        *(v0 + 376) = v194;
        sub_10005FC3C();
        v195 = [v187 key];
        sub_10008A268();

        v502._countAndFlagsBits = sub_10005DB50();
        sub_10008A2C8(v502);

        v197 = *(v0 + 368);
        v196 = *(v0 + 376);
        *(v0 + 1072) = v196;
        sub_10005D504();
        v198 = swift_allocObject();
        *(v198 + 16) = v197;
        *(v198 + 24) = v196;
        sub_10005D9D0();
        v199 = swift_allocObject();
        sub_10005EDE0(v199);
        sub_10005D9D0();
        v200 = swift_allocObject();
        *(v200 + 16) = 8;
        sub_10005D504();
        swift_allocObject();
        sub_10005EA98();
        *(v201 + 16) = v202;
        *(v201 + 24) = v198;
        sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
        v203 = v0;
        v204 = swift_initStackObject();
        v205 = sub_10005C6B8(v204, v455);
        v205[2].n128_u64[0] = v206;
        v205[2].n128_u64[1] = v199;
        v205[3].n128_u64[0] = sub_10005C5C8;
        v205[3].n128_u64[1] = v200;
        v205[4].n128_u64[0] = sub_10005C5D0;
        v205[4].n128_u64[1] = v161;

        sub_100088D68();
        sub_100088F88();
        sub_100088F58();
        v207 = sub_100088F88();
        v208 = sub_10008A6A8();
        if (sub_10008A7B8())
        {
          sub_10005E048();
          v209 = swift_slowAlloc();
          sub_10005DC40();
          v210 = swift_slowAlloc();
          v211 = 0;
          v203[57] = 0;
          v203[58] = v210;
          *v209 = 258;
          v203[56] = v209 + 2;
          while (v211 != 3)
          {
            v213 = v204[v211 + 2].n128_u64[0];
            v212 = v204[v211 + 2].n128_u64[1];

            v213(v496 + 448, v496 + 456, v496 + 464);

            ++v211;
          }

          v203 = v496;
          v214 = *(v496 + 736);

          v215 = sub_100088F68();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v207, v208, v215, "IndexType", "type=%{signpost.description:attribute}s", v209, 0xCu);
          sub_10005B1BC(v210);
          sub_10005D4F8();

          sub_10005D4F8();
        }

        else
        {
        }

        v216 = v203[108];
        v217 = v203[103];
        v218 = v203[101];
        v219 = v203[97];
        v220 = v203[96];
        v221 = v203[94];
        v222 = v203[92];
        v223 = v203[88];
        v224 = v203[87];
        v491 = v203[67];
        v225 = sub_10005D480();
        v226(v225);
        v227 = sub_100088FD8();
        sub_10005E928(v227);
        swift_allocObject();
        sub_1000124D4();
        v228 = sub_10005D458();
        v229(v228);
        sub_10005E4AC();
        v203[135] = *(v223 + 8);
        sub_100060E14();
        v203[136] = v230;
        v231 = sub_10005DC4C();
        v232(v231);
        v203[137] = *(v219 + 8);
        sub_100060E08();
        v203[138] = v233;
        v234 = sub_10005EB28();
        v235(v234);
        v0 = v203;
        v71 = v491 >> 62 ? sub_10005FB38() : sub_100060E38(v203[67]);
        v203[139] = v71;
        if (v71)
        {
          break;
        }

        v476 = v203[127];
        v236 = v203[134];
        v237 = *(v0 + 864);
        v238 = *(v0 + 800);
        v239 = *(v0 + 728);
        sub_100088D58();
        v240 = sub_100088D78();
        v242 = v241;
        sub_100088D88();
        v243 = sub_100088F88();
        sub_100088FB8();
        v244 = sub_10008A698();
        LOBYTE(v237) = sub_10008A7B8();

        if (v237)
        {
          if (v242)
          {
            if (HIDWORD(v240))
            {
              goto LABEL_186;
            }

            sub_10005EBF0();
            if (v74)
            {
              goto LABEL_188;
            }

            v75 = v240 > 0x10FFFF;
            v240 = v447;
            if (v75)
            {
              goto LABEL_187;
            }
          }

          else if (!v240)
          {
            goto LABEL_185;
          }

          v493 = v244;
          v0 = v496;
          v253 = *(v496 + 1152);
          v254 = *(v496 + 640);
          v255 = *(v496 + 624);
          v256 = *(v496 + 616);

          sub_100088FE8();

          v257 = *(v255 + 88);
          v258 = sub_10005E694();
          v161 = "[Error] Interval already ended";
          if (v259(v258) != v253)
          {
            v260 = sub_10005F068();
            v261(v260);
            v161 = "";
          }

          v488 = *(v496 + 1104);
          v472 = *(v496 + 1096);
          v465 = *(v496 + 1088);
          v461 = *(v496 + 1080);
          v143 = *(v496 + 1024);
          v483 = *(v496 + 864);
          v262 = *(v496 + 848);
          v468 = *(v496 + 840);
          v457 = *(v496 + 800);
          v451 = *(v496 + 768);
          v142 = *(v496 + 728);
          v263 = *(v496 + 696);
          sub_10005E3C8();
          v264 = swift_slowAlloc();
          *v264 = 0;
          v265 = sub_100088F68();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v243, v493, v265, v240, v161, v264, 2u);
          sub_10005D4F8();

          v266 = sub_10005E12C();
          v461(v266);
          v472(v457, v451);
          (*(v262 + 8))(v483, v468);
        }

        else
        {
          v482 = *(v0 + 1096);
          v245 = v243;
          v246 = *(v0 + 1088);
          v142 = *(v0 + 1080);
          v143 = *(v0 + 1024);
          v488 = *(v0 + 864);
          v492 = *(v0 + 1104);
          v247 = *(v0 + 848);
          v471 = *(v0 + 840);
          v248 = *(v0 + 800);
          v249 = *(v0 + 768);
          v250 = *(v0 + 728);
          v161 = *(v0 + 696);

          v251 = sub_10005F294();
          (v142)(v251);
          v252 = sub_10005DC4C();
          v482(v252);
          (*(v247 + 8))(v488, v471);
        }

        sub_10005F058();
        v152 = v476;
        if (v74)
        {
          sub_100061464();

          v145 = *(v0 + 992);
          v144 = *(v0 + 984);
          goto LABEL_42;
        }
      }

      if (v71 >= 1)
      {
        v203[140] = 0;
        v337 = v203[67];
        if ((v337 & 0xC000000000000001) != 0)
        {
          v413 = sub_10008A928();
LABEL_167:
          *(v0 + 1128) = v413;
          swift_task_alloc();
          sub_100012480();
          *(v0 + 1136) = v414;
          *v414 = v415;
          sub_10005CC00(v414);
          sub_10005DD04();
          sub_100060FD8();

          return sub_100014AB4(v416, v417, v418, v419);
        }

LABEL_166:
        v413 = *(v337 + 32);
        goto LABEL_167;
      }

LABEL_189:
      __break(1u);
      return _swift_task_switch(v71, v72, v73);
    }

    v144 = v155;
    v145 = v161;
  }

  sub_100060F70();
LABEL_100:
  v267 = *(v0 + 944);
  sub_10005FB8C();
  v452 = v268;
  if (!v268)
  {
LABEL_149:

    sub_10005CDDC();
    v433 = *(v0 + 800);
    v435 = *(v0 + 792);
    v437 = *(v0 + 784);
    v438 = *(v0 + 760);
    v441 = *(v0 + 752);
    v443 = *(v0 + 744);
    v445 = *(v0 + 736);
    v449 = *(v0 + 728);
    v453 = *(v0 + 720);
    v456 = *(v0 + 712);
    v459 = *(v0 + 688);
    v463 = *(v0 + 680);
    v466 = *(v0 + 672);
    v469 = *(v0 + 648);
    v474 = *(v0 + 640);
    v477 = *(v0 + 632);
    v480 = *(v0 + 608);
    v487 = *(v0 + 600);
    v489 = *(v0 + 592);
    v495 = *(v0 + 584);
    v497 = *(v0 + 560);

    sub_10001248C();
    sub_100060FD8();

    __asm { BRAA            X1, X16 }
  }

  v269 = sub_100061434();
  sub_10005FED4(v269);
  v444 = v270;
  v448 = v142;
  sub_100060D68();
  v440 = v271;
  v442 = v143;
LABEL_102:
  v272 = *(v0 + 968);
  v273 = *(v0 + 792);
  v484 = *(v0 + 720);
  v274 = sub_10005E2A4();
  sub_10004F858(v274, v275, v143);
  v276 = v152;
  v277 = *(v444 + 8 * v152);
  *(v0 + 408) = v277;
  sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
  v278 = sub_1000614C4();
  v280 = v279;
  sub_10005D504();
  v281 = swift_allocObject();
  *(v281 + 16) = v278;
  *(v281 + 24) = v280;
  sub_10005D9D0();
  v282 = swift_allocObject();
  sub_10005EDE0(v282);
  sub_10005D9D0();
  v283 = swift_allocObject();
  sub_10005FF3C(v283);
  sub_10005D504();
  v284 = swift_allocObject();
  *(v284 + 16) = sub_10005C5DC;
  *(v284 + 24) = v281;
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  v285 = swift_initStackObject();
  v286 = sub_10005C6B8(v285, v455);
  v286[2].n128_u64[0] = v287;
  v286[2].n128_u64[1] = v282;
  v286[3].n128_u64[0] = sub_10005C5C8;
  v286[3].n128_u64[1] = v280;
  v286[4].n128_u64[0] = sub_10005C5D0;
  v286[4].n128_u64[1] = v284;
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v288 = sub_100088F88();
  v289 = sub_10008A6A8();
  v494 = v277;
  if (sub_10008A7B8())
  {
    sub_10005E048();
    v290 = swift_slowAlloc();
    sub_10005DC40();
    v291 = swift_slowAlloc();
    sub_10005FF2C(v291);
    sub_10005E4D8(v290);
    v292 = v276;
    while (v0 != 48)
    {
      v293 = *(v285[2].n128_u64 + v0);
      v294 = *(&v285[2].n128_i64[1] + v0);

      v295 = sub_10005E4C8();
      v293(v295);

      v0 += 16;
    }

    v296 = v496;
    v297 = *(v496 + 720);

    v298 = sub_100088F68();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v288, v289, v298, "IndexType", "type=%{signpost.description:attribute}s", v290, 0xCu);
    sub_10005B1BC(v280);
    sub_10005D4F8();

    sub_10005D0A0();
  }

  else
  {

    v296 = v496;
    v292 = v276;
  }

  v473 = (v292 + 1);
  v299 = v296[107];
  v300 = v296[103];
  v301 = v296[99];
  v302 = v296[97];
  v303 = v296[96];
  v304 = v296[94];
  v305 = v296[90];
  v306 = v296[88];
  v307 = v296[87];
  v308 = sub_1000124F4(v306);
  v309(v308, v305, v307);
  v310 = sub_100088FD8();
  sub_10005E928(v310);
  swift_allocObject();
  sub_1000124D4();
  v311 = *(v302 + 16);
  sub_10005E0AC();
  v312();
  sub_10005E4AC();
  v313 = *(v306 + 8);
  v314 = sub_10005ECCC();
  v462 = v315;
  (v315)(v314);
  v316 = *(v302 + 8);
  v143 = v302 + 8;
  v317 = sub_10005DC4C();
  v318 = v316(v317);
  v319 = 0;
  v320 = _swiftEmptyArrayStorage;
  v321 = v296;
  v0 = v475;
  v322 = v478;
  v458 = v316;
  while (2)
  {
    if (v488 == v319)
    {
      v343 = v320[2];
      v475 = v0;
      v478 = v322;
      if (v343)
      {
        sub_100089818();
        v344 = *(v448 + 80);
        sub_10005D9C4();
        v346 = v320 + v345;
        v485 = v448[9];
        v347 = v448[2];
        do
        {
          v348 = *(v321 + 672);
          v349 = *(v321 + 664);
          v350 = *(v496 + 656);
          v351 = *(v496 + 528);
          v352 = sub_10005D978();
          v347(v352);
          sub_100089808();
          sub_10005E98C();
          sub_1000897E8();

          v353 = *(v349 + 8);
          v0 = v349 + 8;
          v354 = sub_10005D9DC();
          v321 = v496;
          v355(v354);
          v346 += v485;
          --v343;
        }

        while (v343);
      }

      goto LABEL_138;
    }

    v323 = *(v321 + 536);
    if ((v323 & 0xC000000000000001) != 0)
    {
      v326 = sub_10008A928();
    }

    else
    {
      sub_10005E804(v318, v323);
      if (v319 >= v325)
      {
        goto LABEL_153;
      }

      v326 = *(v324 + 8 * v319 + 32);
    }

    v327 = v326;
    if (!__OFADD__(v319, 1))
    {
      v328 = *(v321 + 520);
      v322 = v0;
      sub_100013478(v494, v326);
      if (!v0)
      {
        v330 = v329;

        v143 = *(v330 + 16);
        v0 = v320[2];
        v331 = v0 + v143;
        if (__OFADD__(v0, v143))
        {
          goto LABEL_154;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v331 > (v320[3] >> 1))
        {
          if (v0 <= v331)
          {
            v333 = v0 + v143;
          }

          else
          {
            v333 = v0;
          }

          sub_1000804D0(isUniquelyReferenced_nonNull_native, v333, 1, v320);
          v320 = v334;
        }

        if (*(v330 + 16))
        {
          v335 = v320[2];
          v336 = v320[3];
          sub_10005F0F8();
          if (v156 != v157)
          {
            __break(1u);
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          v338 = *(v321 + 656);
          v339 = *(v448 + 80);
          sub_10005E0A0();
          v340 = v448[9];
          sub_10005FAA4();

          if (v143)
          {
            v341 = v320[2];
            v157 = __OFADD__(v341, v143);
            v342 = &v341[v143];
            if (v157)
            {
              goto LABEL_165;
            }

            v320[2] = v342;
          }
        }

        else
        {

          if (v143)
          {
            goto LABEL_155;
          }
        }

        v0 = 0;
        ++v319;
        continue;
      }

      v356 = *(v321 + 960);
      v357 = *(v321 + 600);

      sub_10006138C();
      swift_errorRetain();
      v358 = sub_100088FF8();
      v359 = sub_10008A5D8();

      v360 = os_log_type_enabled(v358, v359);
      v361 = *(v321 + 600);
      v362 = *(v321 + 576);
      v363 = *(v321 + 568);
      if (v360)
      {
        sub_10005E91C();
        v486 = v363;
        v364 = swift_slowAlloc();
        v321 = sub_10005FEE4();
        sub_10005DC40();
        v365 = swift_slowAlloc();
        v498 = v365;
        *v364 = 136315394;
        v366 = sub_10008AB38();
        sub_100080D2C(v366, v367, &v498);
        sub_100060454();

        *(v364 + 4) = v361;
        *(v364 + 12) = 2112;
        swift_errorRetain();
        v368 = _swift_stdlib_bridgeErrorToNSError();
        *(v364 + 14) = v368;
        *v321 = v368;
        _os_log_impl(&_mh_execute_header, v358, v359, "Failed to index content item type %s: %@", v364, 0x16u);
        sub_100017954(v321, &qword_1000A6460, &qword_10008D878);
        sub_10005FA30();
        sub_10005D4F8();

        sub_10005B1BC(v365);
        sub_10005D4F8();

        sub_10005D0A0();

        (*(v362 + 8))(v361, v486);
      }

      else
      {

        v369 = *(v362 + 8);
        v370 = sub_10005E088();
        v371(v370);
      }

      v372 = *(v321 + 528);
      sub_100089818();
      sub_100089808();
      sub_10005E068();
      v499 = v440;
      v503._countAndFlagsBits = sub_10008AB38();
      sub_10008A2C8(v503);

      swift_getErrorValue();
      v374 = *(v321 + 296);
      v373 = *(v321 + 304);
      v375 = *(v321 + 312);
      sub_10008AAB8();
      v321 = v376;
      sub_10005DC4C();
      sub_1000897F8();
      sub_10005FA30();

      v478 = v0;

      v475 = 0;
LABEL_138:
      v377 = *(v321 + 856);
      v378 = *(v321 + 784);
      v379 = *(v321 + 712);
      sub_100088D58();
      v380 = sub_100088D78();
      v382 = v381;
      sub_100088D88();
      v383 = sub_100088F88();
      sub_100088FB8();
      v384 = sub_10008A698();
      v71 = sub_10008A7B8();
      if (v71)
      {
        if (v382)
        {
          if (HIDWORD(v380))
          {
            goto LABEL_178;
          }

          sub_10005EBF0();
          if (v74)
          {
            goto LABEL_183;
          }

          sub_10006097C();
          v380 = v436;
          if (!v74 & v183)
          {
            goto LABEL_179;
          }
        }

        else if (!v380)
        {
          goto LABEL_177;
        }

        v0 = *(v321 + 1152);
        v385 = *(v321 + 632);
        v386 = *(v321 + 624);
        v387 = *(v321 + 616);

        sub_100088FE8();

        v388 = *(v386 + 88);
        v389 = sub_10005E694();
        v391 = "[Error] Interval already ended";
        if (v390(v389) != v0)
        {
          v392 = sub_10005EF74();
          v393(v392);
          v391 = "";
        }

        v394 = *(v321 + 712);
        sub_10005E3C8();
        v395 = swift_slowAlloc();
        *v395 = 0;
        v396 = sub_100088F68();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v383, v384, v396, v380, v391, v395, 2u);
        sub_10005D4F8();
      }

      v397 = *(v321 + 856);
      v398 = *(v321 + 848);
      v399 = *(v321 + 840);
      v400 = *(v321 + 784);
      v401 = *(v321 + 768);
      v402 = *(v496 + 712);
      v403 = *(v496 + 696);

      v404 = sub_100060BC4();
      v462(v404, v403);
      v405 = sub_10005DC4C();
      v458(v405);
      v406 = *(v398 + 8);
      v407 = sub_10005E694();
      v408(v407);
      v152 = v473;
      v143 = v442;
      if (v473 == v452)
      {
        goto LABEL_149;
      }

      goto LABEL_102;
    }

    break;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  v411 = *(v0 + 976);
  if (![v143 key])
  {
    sub_10008A268();
    sub_10008A238();
    sub_10005D9B8();
  }

  sub_1000613D4();
  sub_10005F674();
  *(v0 + 1056) = sub_10008A3A8();
  sub_10005D9B8();
  sub_10008A388();
  sub_10005CA4C();
  sub_100060FD8();

  return _swift_task_switch(v71, v72, v73);
}

uint64_t sub_100022484()
{
  sub_100012404();
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];

  v4 = sub_100060FA8();
  v0[133] = [v4 v5];

  v6 = sub_10005CFA0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100022508()
{
  v299 = v0;
  v262 = (v0 + 424);
  v270 = (v0 + 440);
  v5 = *(v0 + 1064);
  if (!v5)
  {
    v26 = (v0 + 976);
LABEL_7:

    goto LABEL_110;
  }

  v6 = [v5 valueType];
  v7 = [v6 wf_unionValueType];

  if (!v7)
  {
    v26 = (v0 + 1064);

    goto LABEL_7;
  }

  v8 = *(v0 + 1024);
  v9 = *(v0 + 976);
  v10 = *(v0 + 960);
  v11 = *(v0 + 608);

  sub_100088F28();
  v12 = v9;
  v13 = v8;
  v14 = sub_100088FF8();
  v15 = sub_10008A5D8();

  v16 = sub_100060890();
  v2 = *(v0 + 1064);
  v17 = *(v0 + 1024);
  v18 = *(v0 + 608);
  v19 = *(v0 + 576);
  v1 = *(v0 + 568);
  if (v16)
  {
    sub_10005E91C();
    v21 = v20;
    v282 = v20;
    swift_slowAlloc();
    v295 = v1;
    v4 = sub_10005F8BC();
    sub_10005DC40();
    v3 = swift_slowAlloc();
    v298[0] = v3;
    *v1 = 138412546;
    *(v1 + 4) = v17;
    *v4 = v17;
    sub_100060DC8();
    v290 = v17;
    v279 = v2;
    v2 = [v21 identifier];
    v17 = sub_10008A268();

    v22 = sub_1000124C8();
    sub_100080D2C(v22, v23, v24);
    sub_100060454();

    *(v1 + 14) = v17;
    sub_10005E620(&_mh_execute_header, v25, v15, "Skipping: %@ in %s because union values themselves are not treated as a type");
    sub_100017954(v4, &qword_1000A6460, &qword_10008D878);
    sub_10005D4F8();

    sub_10005B1BC(v3);
    v0 = v297;
    sub_10005D4F8();

    sub_10005D4F8();

    (*(v19 + 8))(v18, v1);
  }

  else
  {

    v27 = *(v19 + 8);
    v28 = sub_10005D9DC();
    v30(v28, v29);
  }

  v31 = *(v0 + 1016);
  while (2)
  {
    sub_10005F058();
    if (!v142)
    {
      goto LABEL_104;
    }

    sub_100061464();

    v2 = *(v0 + 992);
    v4 = *(v0 + 984);
    while (1)
    {
      v32 = *(v0 + 936);
      if (v32 < 0)
      {
        v14 = (v32 & 0x7FFFFFFFFFFFFFFFLL);
        v39 = sub_10008A8A8();
        if (!v39)
        {
          goto LABEL_35;
        }

        v40 = sub_100060F9C(v39);
        sub_100011D84(v40, &qword_1000A5EA8, WFAction_ptr);
        sub_10005F0B8();
        sub_10005ED24();
        swift_dynamicCast();
        v14 = *(v0 + 472);
        v1 = v4;
        v36 = v2;
        goto LABEL_18;
      }

      sub_100060EDC();
      v1 = v4;
      if (!v2)
      {
        break;
      }

LABEL_15:
      sub_10005D470();
      v36 = (v35 & v34);
      v14 = *(*(v37 + 48) + ((v1 << 9) | (8 * v38)));
LABEL_18:
      *(v0 + 992) = v36;
      *(v0 + 984) = v1;
      *(v0 + 976) = v14;
      if (!v14)
      {
LABEL_35:
        sub_100060F70();
        goto LABEL_36;
      }

      v17 = v31;
      v41 = sub_10008A788();
      v31 = *(v41 + 16);
      v4 = *(v0 + 400);
      v0 = *(v4 + 16);
      v3 = v0 + v31;
      if (__OFADD__(v0, v31))
      {
        goto LABEL_96;
      }

      v2 = v41;
      if (!swift_isUniquelyReferenced_nonNull_native() || v3 > *(v4 + 24) >> 1)
      {
        sub_100080604();
        v4 = v42;
      }

      v0 = v297;
      if (*(v2 + 16))
      {
        v43 = *(v4 + 16);
        v44 = *(v4 + 24);
        sub_10005F348();
        if (v46 < v31)
        {
          goto LABEL_98;
        }

        memcpy((v4 + 8 * v45 + 32), (v2 + 32), 8 * v31);

        if (v31)
        {
          v47 = *(v4 + 16);
          v48 = __OFADD__(v47, v31);
          v49 = (v47 + v31);
          if (v48)
          {
            goto LABEL_102;
          }

          *(v4 + 16) = v49;
        }
      }

      else
      {

        if (v31)
        {
          goto LABEL_97;
        }
      }

      *(v297 + 400) = v4;
      v2 = [v14 parameters];
      sub_100011D84(0, &qword_1000A6530, WFParameter_ptr);
      v4 = sub_10008A328();
      *(v297 + 1000) = v4;

      if (v4 >> 62)
      {
        v50 = sub_10008A9D8();
      }

      else
      {
        v50 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = v17;
      *(v297 + 1008) = v50;
      if (v50)
      {
        goto LABEL_104;
      }

      v4 = v1;
      v2 = v36;
    }

    while (1)
    {
      v1 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_95;
      }

      if (v1 >= ((*(v0 + 952) + 64) >> 6))
      {
        break;
      }

      ++v33;
      if (*(*(v0 + 944) + 8 * v1))
      {
        goto LABEL_15;
      }
    }

LABEL_36:
    v51 = *(v0 + 944);
    sub_10005FB8C();
    v271 = v52;
    if (!v52)
    {
LABEL_85:

      sub_10005CDDC();
      sub_1000602A4();
      sub_10005F258();
      v265 = *(v0 + 736);
      v267 = *(v0 + 728);
      v269 = *(v0 + 720);
      sub_10005E6A0();

      sub_10001248C();
      sub_10005F3B4();

      __asm { BRAA            X1, X16 }
    }

    v280 = v31;
    v53 = 0;
    v266 = v17 + 32;
    v268 = sub_100061434();
    sub_100060D68();
    v270 = v14;
    v263 = v54;
    v264 = v17;
LABEL_38:
    v55 = *(v0 + 968);
    v56 = *(v0 + 792);
    v291 = *(v0 + 720);
    v57 = sub_10005E2A4();
    sub_10004F858(v57, v58, v17);
    v4 = *&v266[8 * v53];
    *(v0 + 408) = v4;
    sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
    v59 = sub_1000614C4();
    v61 = v60;
    sub_10005D504();
    v62 = swift_allocObject();
    *(v62 + 16) = v59;
    *(v62 + 24) = v61;
    sub_10005D9D0();
    v63 = swift_allocObject();
    sub_10005EDE0(v63);
    sub_10005D9D0();
    v64 = swift_allocObject();
    sub_10005FF3C(v64);
    sub_10005D504();
    v17 = swift_allocObject();
    sub_10005D18C(v17);
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    inited = swift_initStackObject();
    v66 = sub_10005C6B8(inited, xmmword_10008D620);
    v66[2].n128_u64[0] = v67;
    v66[2].n128_u64[1] = v63;
    v66[3].n128_u64[0] = sub_10005C5C8;
    v66[3].n128_u64[1] = v61;
    v66[4].n128_u64[0] = sub_10005C5D0;
    v66[4].n128_u64[1] = v17;
    sub_100088D68();
    sub_100088F88();
    sub_100088F58();
    v68 = sub_100088F88();
    v69 = sub_10008A6A8();
    if (sub_10008A7B8())
    {
      v283 = v53;
      sub_10005E048();
      v17 = swift_slowAlloc();
      sub_10005DC40();
      v70 = swift_slowAlloc();
      v71 = 0;
      v298[0] = v70;
      sub_10005E4D8(v17);
      while (v71 != 3)
      {
        v73 = inited[v71 + 2].n128_u64[0];
        v72 = inited[v71 + 2].n128_u64[1];

        v74 = sub_10005E4C8();
        v73(v74);

        ++v71;
      }

      v75 = *(v0 + 720);

      v76 = sub_100088F68();
      sub_10006132C(&_mh_execute_header, v68, v69, v76, "IndexType", "type=%{signpost.description:attribute}s");
      sub_10005B1BC(v70);
      sub_10005D0A0();

      sub_10005CF50();

      v53 = v283;
    }

    else
    {
    }

    v284 = v53 + 1;
    sub_10005D938();
    v77 = *(v0 + 704);
    v78 = *(v297 + 696);
    sub_1000124F4(v77);
    sub_10005FB08();
    v79();
    v80 = sub_100088FD8();
    sub_10005E928(v80);
    swift_allocObject();
    sub_1000124D4();
    v81 = sub_10005DE88();
    v82(v81);
    sub_10005E4AC();
    v83 = *(v77 + 8);
    v0 = v77 + 8;
    v84 = sub_10005F62C();
    v3 = v297;
    v275 = v85;
    (v85)(v84);
    v86 = *(v53 + 9);
    v87 = sub_10005E088();
    v273 = v88;
    v89 = (v88)(v87);
    v2 = 0;
    v1 = _swiftEmptyArrayStorage;
    v90 = v280;
    v31 = v270;
    while (2)
    {
      if (v268 == v2)
      {
        v110 = *(v1 + 16);
        v280 = v90;
        if (v110)
        {
          sub_100089818();
          v111 = *(v270 + 80);
          sub_10005D9C4();
          v113 = v1 + v112;
          v287 = v270[9];
          v0 = v270[2];
          do
          {
            v114 = *(v3 + 672);
            v115 = *(v3 + 664);
            v116 = *(v3 + 656);
            v117 = *(v297 + 528);
            v118 = sub_10005DEB4();
            (v0)(v118);
            sub_100089808();
            sub_10005E434();
            v3 = v297;
            sub_1000897E8();

            v119 = *(v115 + 8);
            v120 = sub_10005E7F8();
            v121(v120);
            v113 += v287;
            --v110;
          }

          while (v110);
        }

        v90 = v295;
        goto LABEL_74;
      }

      v91 = *(v297 + 536);
      if ((v91 & 0xC000000000000001) != 0)
      {
        v94 = sub_10008A928();
      }

      else
      {
        sub_10005E804(v89, v91);
        if (v2 >= v93)
        {
          goto LABEL_90;
        }

        v94 = *(v92 + 8 * v2 + 32);
      }

      v17 = v94;
      if (!__OFADD__(v2, 1))
      {
        v95 = *(v297 + 520);
        sub_100013478(v4, v94);
        if (!v90)
        {
          v97 = v96;
          v295 = 0;

          v17 = *(v97 + 16);
          v0 = *(v1 + 16);
          v98 = &v17[v0];
          if (__OFADD__(v0, v17))
          {
            goto LABEL_91;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v98 > *(v1 + 24) >> 1)
          {
            if (v0 <= v98)
            {
              v100 = &v17[v0];
            }

            else
            {
              v100 = v0;
            }

            sub_1000804D0(isUniquelyReferenced_nonNull_native, v100, 1, v1);
            v1 = v101;
          }

          if (*(v97 + 16))
          {
            v102 = *(v1 + 16);
            v103 = *(v1 + 24);
            sub_10005F0F8();
            if (v104 != v48)
            {
              goto LABEL_93;
            }

            v105 = *(v297 + 656);
            v106 = *(v270 + 80);
            sub_10005E0A0();
            v107 = v270[9];
            sub_10005FAA4();

            if (v17)
            {
              v108 = *(v1 + 16);
              v48 = __OFADD__(v108, v17);
              v109 = &v17[v108];
              if (v48)
              {
                goto LABEL_94;
              }

              *(v1 + 16) = v109;
            }
          }

          else
          {

            if (v17)
            {
              goto LABEL_92;
            }
          }

          v90 = 0;
          ++v2;
          continue;
        }

        v122 = *(v297 + 960);
        v123 = *(v297 + 600);

        sub_10006135C();
        swift_errorRetain();
        v124 = sub_100088FF8();
        v125 = sub_10008A5D8();

        v126 = sub_100061314();
        v127 = *(v297 + 600);
        v128 = *(v297 + 576);
        v0 = *(v297 + 568);
        if (v126)
        {
          sub_10005E91C();
          v292 = v127;
          v296 = v0;
          v129 = swift_slowAlloc();
          v130 = sub_10005FEE4();
          sub_10005DC40();
          v0 = swift_slowAlloc();
          v298[0] = v0;
          *v129 = 136315394;
          v131 = sub_10008AB38();
          sub_100080D2C(v131, v132, v298);

          sub_100061144();
          v133 = _swift_stdlib_bridgeErrorToNSError();
          *(v129 + 14) = v133;
          *v130 = v133;
          _os_log_impl(&_mh_execute_header, v124, v125, "Failed to index content item type %s: %@", v129, 0x16u);
          sub_100017954(v130, &qword_1000A6460, &qword_10008D878);
          sub_10005D4F8();

          sub_10005B1BC(v0);
          sub_10005D4F8();

          sub_10005CF50();

          (*(v128 + 8))(v292, v296);
        }

        else
        {

          (*(v128 + 8))(v127, v0);
        }

        v3 = v297;
        v134 = *(v297 + 528);
        sub_100089818();
        sub_100089808();
        sub_10005E068();
        v298[1] = v263;
        v300._countAndFlagsBits = sub_10008AB38();
        sub_10008A2C8(v300);

        swift_getErrorValue();
        v136 = *(v297 + 296);
        v135 = *(v297 + 304);
        v137 = *(v297 + 312);
        sub_10008AAB8();
        sub_100060E98();
        sub_10005DC58();
        sub_100060810();

        v280 = 0;
LABEL_74:
        v138 = *(v3 + 856);
        v139 = *(v3 + 784);
        v31 = *(v3 + 712);
        sub_100088D58();
        v4 = sub_100088D78();
        v141 = v140;
        v1 = sub_100088D88();
        v2 = sub_100088F88();
        sub_100088FB8();
        v17 = sub_10008A698();
        v295 = v90;
        if (sub_10008A7B8())
        {
          if (v141)
          {
            if (HIDWORD(v4))
            {
              goto LABEL_100;
            }

            sub_10005EBF0();
            if (v142)
            {
              goto LABEL_103;
            }

            sub_10006097C();
            v4 = v262;
            if (!v142 & v143)
            {
              goto LABEL_101;
            }
          }

          else if (!v4)
          {
            goto LABEL_99;
          }

          v144 = *(v3 + 1152);
          v145 = *(v3 + 632);
          v146 = *(v3 + 624);
          v147 = *(v3 + 616);

          sub_100088FE8();

          v148 = *(v146 + 88);
          v149 = sub_10005E9C0();
          v151 = "[Error] Interval already ended";
          if (v150(v149) != v144)
          {
            (*(*(v3 + 624) + 8))(*(v3 + 632), *(v3 + 616));
            v151 = "";
          }

          v152 = *(v3 + 712);
          sub_10005E3C8();
          v153 = swift_slowAlloc();
          *v153 = 0;
          sub_100088F68();
          sub_100060424();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v154, v155, v4, v151, v153, 2u);
          sub_10005D4F8();
        }

        v156 = *(v3 + 856);
        v157 = *(v3 + 848);
        v158 = *(v3 + 840);
        v159 = *(v3 + 784);
        v160 = *(v3 + 768);
        v161 = *(v297 + 712);
        v162 = *(v297 + 696);

        v0 = v297;
        v275(v161, v162);
        v163 = sub_10005DC4C();
        v273(v163);
        v164 = *(v157 + 8);
        v165 = sub_100012498();
        v166(v165);
        v53 = v284;
        v17 = v264;
        if (v284 == v271)
        {
          goto LABEL_85;
        }

        goto LABEL_38;
      }

      break;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    *(v0 + 1016) = v31;
    sub_100060EE8();
    if (!v142)
    {
      v171 = sub_10008A928();
      goto LABEL_108;
    }

    sub_10005D988(v169, v170);
    if (v143)
    {
      goto LABEL_150;
    }

    v171 = sub_1000604FC(v172, v173);
LABEL_108:
    v172 = sub_10005F138(v171);
    *(v0 + 1032) = v175;
    if (v48)
    {
      __break(1u);
      goto LABEL_148;
    }

    v176 = *(v0 + 976);
    objc_opt_self();
    sub_10005E028();
    v177 = swift_dynamicCastObjCClass();
    *(v0 + 1040) = v177;
    if (v177)
    {
      v248 = *(v0 + 976);
      if (![v17 key])
      {
        sub_10008A268();
        sub_10008A238();
        sub_10005D9B8();
      }

      sub_1000613D4();
      sub_10005F674();
      *(v0 + 1056) = sub_10008A3A8();
      sub_10005D9B8();
      v249 = sub_10008A388();
      sub_10005CA4C(v249);
      sub_10005F3B4();

      return _swift_task_switch(v172, v173, v174);
    }

LABEL_110:
    v178 = *(v0 + 1024);
    v179 = *(v0 + 968);
    v180 = *(v0 + 808);
    v181 = *(v0 + 736);
    v182 = [*(v0 + 976) identifier];
    sub_10008A268();
    sub_1000601B4();

    *(v0 + 368) = v1;
    *(v0 + 376) = v2;
    sub_10005FC3C();
    v183 = [v178 key];
    sub_10008A268();
    sub_10005F650();

    v301._countAndFlagsBits = sub_10005DC58();
    sub_10008A2C8(v301);

    v185 = *(v0 + 368);
    v184 = *(v0 + 376);
    *(v0 + 1072) = v184;
    sub_10005D504();
    v186 = swift_allocObject();
    *(v186 + 16) = v185;
    *(v186 + 24) = v184;
    sub_10005D9D0();
    v187 = swift_allocObject();
    *(v187 + 16) = 32;
    sub_10005D9D0();
    v188 = swift_allocObject();
    *(v188 + 16) = 8;
    sub_10005D504();
    swift_allocObject();
    sub_10005EA98();
    *(v189 + 16) = v190;
    *(v189 + 24) = v186;
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    v191 = swift_initStackObject();
    v192 = sub_10005C6B8(v191, xmmword_10008D620);
    v192[2].n128_u64[0] = v193;
    v192[2].n128_u64[1] = v187;
    v192[3].n128_u64[0] = sub_10005C5C8;
    v192[3].n128_u64[1] = v188;
    v192[4].n128_u64[0] = sub_10005C5D0;
    v192[4].n128_u64[1] = v3;

    sub_100088D68();
    sub_100088F88();
    sub_100088F58();
    v194 = sub_100088F88();
    v195 = sub_10008A6A8();
    if (sub_10008A7B8())
    {
      sub_10005E048();
      v196 = swift_slowAlloc();
      sub_10005DC40();
      v197 = swift_slowAlloc();
      v198 = 0;
      *(v297 + 456) = 0;
      *(v297 + 464) = v197;
      *v196 = 258;
      *(v297 + 448) = v196 + 2;
      while (v198 != 3)
      {
        v200 = v191[v198 + 2].n128_u64[0];
        v199 = v191[v198 + 2].n128_u64[1];

        v200(v297 + 448, v297 + 456, v297 + 464);

        ++v198;
      }

      v201 = *(v297 + 736);

      v202 = sub_100088F68();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v194, v195, v202, "IndexType", "type=%{signpost.description:attribute}s", v196, 0xCu);
      sub_10005B1BC(v197);
      sub_10005D4F8();

      sub_10005D4F8();
    }

    else
    {
    }

    v203 = *(v297 + 864);
    v204 = *(v297 + 824);
    v205 = *(v297 + 808);
    sub_10005CFEC();
    v207 = *(v206 + 536);
    v208 = sub_10005D480();
    v209(v208);
    v210 = sub_100088FD8();
    sub_10005E928(v210);
    swift_allocObject();
    sub_1000124D4();
    v211 = sub_10005D458();
    v212(v211);
    sub_10005E4AC();
    *(v297 + 1080) = *(v4 + 8);
    sub_100060E14();
    *(v297 + 1088) = v213;
    v214 = sub_10005DC4C();
    v215(v214);
    *(v297 + 1096) = *(v297 + 8);
    sub_100060E08();
    *(v297 + 1104) = v216;
    v217 = sub_1000124C8();
    v218(v217);
    if (v207 >> 62)
    {
      v172 = sub_10005FB38();
    }

    else
    {
      v172 = sub_100060E38(*(v297 + 536));
    }

    *(v297 + 1112) = v172;
    if (v172)
    {
      if (v172 < 1)
      {
        goto LABEL_152;
      }

      *(v297 + 1120) = 0;
      v246 = *(v297 + 536);
      if ((v246 & 0xC000000000000001) != 0)
      {
        v247 = sub_10008A928();
      }

      else
      {
        v247 = *(v246 + 32);
      }

      *(v297 + 1128) = v247;
      v251 = swift_task_alloc();
      *(v297 + 1136) = v251;
      *v251 = v297;
      sub_10005CC00(v251);
      v252 = *(v297 + 1024);
      v253 = *(v297 + 976);
      v254 = *(v297 + 680);
      v255 = *(v297 + 520);
      sub_10005F3B4();

      return sub_100014AB4(v256, v257, v258, v259);
    }

    v281 = *(v297 + 1016);
    v219 = *(v297 + 1072);
    v220 = *(v297 + 864);
    v221 = *(v297 + 800);
    v222 = *(v297 + 728);
    sub_100088D58();
    v223 = sub_100088D78();
    v225 = v224;
    v17 = sub_100088D88();
    v226 = sub_100088F88();
    sub_100088FB8();
    v227 = sub_10008A698();
    LOBYTE(v220) = sub_10008A7B8();

    if ((v220 & 1) == 0)
    {
      goto LABEL_123;
    }

    if ((v225 & 1) == 0)
    {
      if (!v223)
      {
        __break(1u);
LABEL_123:
        v288 = *(v297 + 1096);
        v228 = *(v297 + 1088);
        v14 = *(v297 + 1080);
        v3 = *(v297 + 1024);
        v293 = *(v297 + 864);
        v295 = *(v297 + 1104);
        v229 = *(v297 + 848);
        v285 = *(v297 + 840);
        v230 = *(v297 + 800);
        v1 = *(v297 + 768);
        v2 = *(v297 + 728);
        v4 = *(v297 + 696);

        v0 = v297;
        v231 = sub_10005ECCC();
        (v14)(v231);
        v232 = sub_10005DC58();
        v288(v232);
        (*(v229 + 8))(v293, v285);
LABEL_130:
        v31 = v281;
        continue;
      }

LABEL_127:
      v295 = v226;
      v234 = *(v297 + 1152);
      v235 = *(v297 + 640);
      v236 = *(v297 + 624);
      v237 = *(v297 + 616);

      sub_100088FE8();

      v238 = *(v236 + 88);
      v239 = sub_10005ED94();
      v4 = "[Error] Interval already ended";
      if (v240(v239) != v234)
      {
        (*(*(v297 + 624) + 8))(*(v297 + 640), *(v297 + 616));
        v4 = "";
      }

      v294 = *(v297 + 1104);
      v286 = *(v297 + 1096);
      v276 = *(v297 + 1080);
      v277 = *(v297 + 1088);
      v1 = *(v297 + 1024);
      v289 = *(v297 + 864);
      v241 = *(v297 + 848);
      v278 = *(v297 + 840);
      v274 = *(v297 + 800);
      v272 = *(v297 + 768);
      v14 = *(v297 + 728);
      v2 = *(v297 + 696);
      sub_10005E3C8();
      v242 = swift_slowAlloc();
      *v242 = 0;
      v243 = sub_100088F68();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v295, v227, v243, v223, v4, v242, 2u);
      sub_10005D4F8();

      v244 = sub_10005E9B4();
      v276(v244);
      v286(v274, v272);
      v245 = *(v241 + 8);
      v3 = v241 + 8;
      v245(v289, v278);
      v0 = v297;
      goto LABEL_130;
    }

    break;
  }

  if (HIDWORD(v223))
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  sub_10005EBF0();
  if (!v142)
  {
    v233 = v223 > 0x10FFFF;
    v223 = v270;
    if (!v233)
    {
      goto LABEL_127;
    }

LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
  }

  __break(1u);
LABEL_152:
  __break(1u);
  return _swift_task_switch(v172, v173, v174);
}

uint64_t sub_100023B00()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 1136);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 1144) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100023BF8()
{
  v301 = v0;
  v2 = *(v0 + 141);
  v3 = *(v0 + 85);
  v6 = *(v0 + 83);
  v4 = *(v0 + 82);
  v5 = *(v0 + 66);
  sub_100089818();
  sub_100089808();
  sub_10005D9B8();
  sub_1000897E8();

  v7 = *(v6 + 8);
  LODWORD(v6) = v6 + 8;
  v8 = sub_1000124C8();
  v9(v8);
  v10 = sub_100060A24();
  if (!v11)
  {
LABEL_123:
    *(v0 + 140) = v10;
    v250 = *(v0 + 67);
    if ((v250 & 0xC000000000000001) != 0)
    {
      v251 = sub_10008A928();
    }

    else
    {
      v251 = *(v250 + 8 * v10 + 32);
    }

    *(v0 + 141) = v251;
    swift_task_alloc();
    sub_100012480();
    *(v0 + 142) = v252;
    *v252 = v253;
    sub_10005CC00(v252, v254);
    sub_10005DD04();
    sub_10005F3B4();

    return sub_100014AB4(v255, v256, v257, v258);
  }

  v262 = (v0 + 424);
  v270 = (v0 + 440);
  v12 = (v0 + 1144);
  v295 = (v0 + 1016);
  v299 = v0;
  while (1)
  {
    v288 = *v12;
    sub_100060568();
    v13 = sub_100088D78();
    v15 = v14;
    sub_100088D88();
    v16 = sub_100088F88();
    sub_100088FB8();
    v17 = sub_10008A698();
    v18 = sub_10008A7B8();

    if (v18)
    {
      if (v15)
      {
        v0 = v299;
        if (HIDWORD(v13))
        {
          goto LABEL_141;
        }

        sub_10005EBF0();
        if (v11)
        {
          goto LABEL_144;
        }

        v27 = v13 > 0x10FFFF;
        v13 = v270;
        if (v27)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v0 = v299;
        if (!v13)
        {
          goto LABEL_140;
        }
      }

      v294 = v17;
      sub_100060044();
      sub_100088FE8();

      v28 = *(v16 + 88);
      v16 += 88;
      v29 = sub_100012498();
      v17 = "[Error] Interval already ended";
      if (v30(v29) != v6)
      {
        v31 = sub_10005F068();
        v32(v31);
        v17 = "";
      }

      v290 = *(v0 + 138);
      v279 = *(v0 + 135);
      v281 = *(v0 + 136);
      v33 = *(v0 + 128);
      v284 = *(v0 + 137);
      v286 = *(v0 + 108);
      v34 = *(v0 + 106);
      v283 = *(v0 + 105);
      v277 = *(v0 + 100);
      v273 = *(v0 + 96);
      v18 = *(v0 + 91);
      v35 = *(v0 + 87);
      sub_10005E3C8();
      v36 = swift_slowAlloc();
      sub_100060448(v36);
      v37 = sub_100088F68();
      sub_10006001C(&_mh_execute_header, v38, v294, v37);
      sub_10005CF50();

      v39 = sub_10005E12C();
      v279(v39);
      v284(v277, v273);
      v40 = *(v34 + 8);
      v1 = (v34 + 8);
      v40(v286, v283);
    }

    else
    {
      v296 = *(v0 + 138);
      v289 = *(v0 + 137);
      sub_100060DE0();
      v293 = v22;
      v23 = *(v0 + 106);
      v285 = *(v0 + 105);
      sub_100060714();

      v24 = sub_10005E51C();
      (v18)(v24);
      v25 = sub_10005E494();
      v289(v25);
      v26 = *(v23 + 8);
      v15 = v23 + 8;
      v26(v293, v285);
    }

    sub_10005F058();
    if (v11)
    {
      break;
    }

LABEL_44:
    *(v0 + 127) = v288;
    sub_100060EE8();
    if (v11)
    {
      sub_10005D988(v64, v65);
      if (v67)
      {
        goto LABEL_143;
      }

      v66 = sub_1000604FC(v19, v20);
    }

    else
    {
      v66 = sub_10008A928();
    }

    v19 = sub_10005F138(v66);
    *(v0 + 129) = v68;
    if (v45)
    {
      goto LABEL_138;
    }

    v69 = *(v0 + 122);
    objc_opt_self();
    sub_10005E028();
    v70 = swift_dynamicCastObjCClass();
    *(v0 + 130) = v70;
    if (v70)
    {
      goto LABEL_115;
    }

    v71 = [sub_10005FB54() identifier];
    v72 = sub_10008A268();
    v74 = v73;

    *(v0 + 46) = v72;
    *(v0 + 47) = v74;
    sub_10005FC3C();
    v75 = [v15 key];
    sub_10008A268();
    sub_10005F668();

    v302._countAndFlagsBits = sub_1000124C8();
    sub_10008A2C8(v302);

    v77 = *(v0 + 46);
    v76 = *(v0 + 47);
    *(v0 + 134) = v76;
    sub_10005D504();
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    *(v78 + 24) = v76;
    sub_10005D9D0();
    v6 = swift_allocObject();
    sub_10005EDE0(v6);
    sub_10005D9D0();
    v79 = swift_allocObject();
    v80 = v0;
    sub_10005FDAC(v79);
    sub_10005D504();
    v81 = swift_allocObject();
    sub_10005E900(v81);
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    inited = swift_initStackObject();
    v83 = sub_10005C6B8(inited, xmmword_10008D620);
    v83[2].n128_u64[0] = v84;
    v83[2].n128_u64[1] = v6;
    v83[3].n128_u64[0] = sub_10005C5C8;
    v83[3].n128_u64[1] = v17;
    v83[4].n128_u64[0] = sub_10005C5D0;
    v83[4].n128_u64[1] = v13;

    sub_100088D68();
    sub_100088F88();
    sub_100088F58();
    v85 = sub_100088F88();
    sub_10008A6A8();
    if (sub_10008A7B8())
    {
      sub_10005E048();
      v86 = swift_slowAlloc();
      sub_10005DC40();
      v1 = swift_slowAlloc();
      v87 = 0;
      *(v80 + 57) = 0;
      *(v80 + 58) = v1;
      *v86 = 258;
      *(v80 + 56) = v86 + 2;
      while (v87 != 3)
      {
        v6 = inited[v87 + 2].n128_i64[0];
        v88 = inited[v87 + 2].n128_u64[1];

        (v6)(v80 + 448, v80 + 456, v80 + 464);

        ++v87;
      }

      v89 = *(v80 + 92);

      sub_100088F68();
      sub_100060424();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v85, v90, v91, "IndexType", "type=%{signpost.description:attribute}s", v86, 0xCu);
      sub_10005B1BC(v1);
      sub_10005D340();

      sub_10005D4F8();
    }

    else
    {
    }

    v92 = *(v299 + 108);
    v93 = *(v299 + 103);
    v94 = *(v299 + 101);
    sub_10005CFEC();
    v297 = *(v95 + 536);
    v96 = sub_10005D480();
    v97(v96);
    v98 = sub_100088FD8();
    sub_10005E928(v98);
    swift_allocObject();
    sub_1000124D4();
    v99 = sub_10005D458();
    v100(v99);
    v0 = v299;
    sub_10005E4AC();
    *(v299 + 135) = *(v80 + 1);
    sub_100060E14();
    *(v299 + 136) = v101;
    v102 = sub_10005DC4C();
    v103(v102);
    v104 = v1[1];
    ++v1;
    *(v299 + 137) = v104;
    sub_100060E08();
    *(v299 + 138) = v105;
    v106 = sub_1000124C8();
    v107(v106);
    if (v297 >> 62)
    {
      v19 = sub_10005FB38();
    }

    else
    {
      v19 = sub_100060E38(*(v299 + 67));
    }

    *(v299 + 139) = v19;
    v12 = v295;
    if (v19)
    {
      goto LABEL_121;
    }
  }

  sub_100061464();

  v13 = *(v0 + 124);
  v41 = *(v0 + 123);
  while (1)
  {
    v19 = *(v0 + 117);
    if (v19 < 0)
    {
      v18 = v19 & 0x7FFFFFFFFFFFFFFFLL;
      v51 = sub_10008A8A8();
      if (!v51)
      {
        break;
      }

      v52 = sub_100060F9C(v51);
      sub_100011D84(v52, &qword_1000A5EA8, WFAction_ptr);
      sub_10005F0B8();
      sub_10005ED24();
      swift_dynamicCast();
      v18 = *(v0 + 59);
      v43 = v41;
      v17 = v13;
    }

    else
    {
      v42 = v41;
      v43 = v41;
      if (!v13)
      {
        do
        {
          v43 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_130;
          }

          sub_10005FF7C();
          if (v44 == v45)
          {
            goto LABEL_62;
          }

          sub_10005FF6C();
        }

        while (!v46);
      }

      sub_10005D470();
      v17 = (v48 & v47);
      v18 = sub_10005F868(v49, v50);
    }

    *(v0 + 124) = v17;
    *(v0 + 123) = v43;
    *(v0 + 122) = v18;
    if (!v18)
    {
      break;
    }

    v53 = sub_10008A788();
    v19 = sub_1000609FC(v53);
    if (v45)
    {
      goto LABEL_131;
    }

    sub_100060C1C();
    if (!swift_isUniquelyReferenced_nonNull_native() || v13 > *(v15 + 24) >> 1)
    {
      sub_1000610AC();
      v15 = v54;
    }

    if (*(v16 + 16))
    {
      v55 = *(v15 + 16);
      v56 = *(v15 + 24);
      sub_10005F348();
      if (v58 < v41)
      {
        goto LABEL_133;
      }

      sub_10006108C(v57);

      if (v41)
      {
        v59 = *(v15 + 16);
        v45 = __OFADD__(v59, v41);
        v60 = v59 + v41;
        if (v45)
        {
          goto LABEL_137;
        }

        *(v15 + 16) = v60;
      }
    }

    else
    {

      if (v41)
      {
        goto LABEL_132;
      }
    }

    *(v299 + 50) = v15;
    v61 = [v18 parameters];
    v62 = sub_10006028C();
    sub_100011D84(v62, &qword_1000A6530, WFParameter_ptr);
    v15 = sub_10008A328();
    *(v299 + 125) = v15;

    if (v15 >> 62)
    {
      v63 = sub_10008A9D8();
    }

    else
    {
      v63 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v299 + 126) = v63;
    if (v63)
    {
      v0 = v299;
      goto LABEL_44;
    }

    v41 = v43;
    v13 = v17;
    v0 = v299;
  }

  sub_100060F70();
LABEL_62:
  v108 = *(v0 + 118);
  sub_10005FB8C();
  v274 = v109;
  if (!v109)
  {
LABEL_108:

    sub_10005CDDC();
    v261 = *(v0 + 100);
    v263 = *(v0 + 99);
    v264 = *(v0 + 98);
    v266 = *(v0 + 95);
    v267 = *(v0 + 94);
    v269 = *(v0 + 93);
    v272 = *(v0 + 92);
    v275 = *(v0 + 91);
    v276 = *(v0 + 90);
    sub_10005E6A0();

    sub_10001248C();
    sub_10005F3B4();

    __asm { BRAA            X1, X16 }
  }

  v110 = sub_100061434();
  sub_10005FED4(v110);
  v271 = v111;
  sub_100060D68();
  v278 = v18;
  v265 = v112;
  v268 = v15;
LABEL_64:
  v113 = *(v0 + 121);
  v114 = *(v0 + 99);
  v115 = *(v0 + 90);
  v116 = sub_10005E2A4();
  sub_10004F858(v116, v117, v15);
  v298 = *(v271 + 8 * v16);
  *(v0 + 51) = v298;
  sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
  v118 = sub_1000614C4();
  v120 = v119;
  sub_10005D504();
  v121 = swift_allocObject();
  *(v121 + 16) = v118;
  *(v121 + 24) = v120;
  sub_10005D9D0();
  v122 = swift_allocObject();
  sub_10005EDE0(v122);
  sub_10005D9D0();
  v123 = swift_allocObject();
  sub_10005FF3C(v123);
  sub_10005D504();
  v124 = swift_allocObject();
  sub_10005D18C(v124);
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  v125 = swift_initStackObject();
  v126 = sub_10005C6B8(v125, xmmword_10008D620);
  v126[2].n128_u64[0] = v127;
  v126[2].n128_u64[1] = v122;
  v126[3].n128_u64[0] = sub_10005C5C8;
  v126[3].n128_u64[1] = v120;
  v126[4].n128_u64[0] = sub_10005C5D0;
  v126[4].n128_u64[1] = v124;
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v128 = sub_100088F88();
  v15 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    sub_10005E048();
    v129 = swift_slowAlloc();
    sub_10005DC40();
    v130 = swift_slowAlloc();
    sub_10005FF2C(v130);
    sub_10005E4D8(v129);
    while (v0 != 48)
    {
      v132 = *&v0[v125 + 32];
      v131 = *&v0[v125 + 40];

      v133 = sub_10005E4C8();
      v132(v133);

      v0 += 16;
    }

    v134 = v299;
    v135 = *(v299 + 90);

    sub_100088F68();
    sub_100060424();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v128, v136, v137, "IndexType", "type=%{signpost.description:attribute}s", v129, 0xCu);
    sub_10005B1BC(v120);
    sub_10005D4F8();

    sub_10005D4F8();
  }

  else
  {

    v134 = v299;
  }

  v287 = v16 + 1;
  sub_10005D938();
  v138 = *(v134 + 88);
  v139 = *(v134 + 87);
  sub_1000124F4(v138);
  sub_10005FB08();
  v142(v140, v141);
  v143 = sub_100088FD8();
  sub_10005E928(v143);
  swift_allocObject();
  sub_1000124D4();
  v144 = sub_10005DE88();
  v145(v144);
  sub_10005E4AC();
  v146 = *(v138 + 8);
  v147 = sub_10005F62C();
  v282 = v148;
  v148(v147);
  v149 = *(v16 + 9);
  v150 = sub_10005E088();
  v19 = v149(v150);
  v151 = 0;
  v152 = _swiftEmptyArrayStorage;
  v153 = v134;
  v154 = v288;
  v0 = v298;
  v280 = v149;
  while (2)
  {
    if (v295 == v151)
    {
      v176 = v152[2];
      v288 = v154;
      if (v176)
      {
        sub_10005D14C();
        sub_100060968();
        v291 = v177;
        do
        {
          v178 = *(v153 + 84);
          v179 = *(v153 + 83);
          v180 = *(v153 + 82);
          v181 = *(v299 + 66);
          sub_10005E458();
          v291(v182, v183);
          sub_100089808();
          sub_10005E464();
          v153 = v299;
          sub_1000897E8();

          v184 = *(v179 + 8);
          v185 = sub_10005DC4C();
          v186(v185);
          v15 += v298;
          --v176;
        }

        while (v176);
      }

      goto LABEL_97;
    }

    v155 = *(v153 + 67);
    if ((v155 & 0xC000000000000001) != 0)
    {
      v158 = sub_10008A928();
    }

    else
    {
      sub_10005E804(v19, v155);
      if (v151 >= v157)
      {
        goto LABEL_112;
      }

      v158 = *(v156 + 8 * v151 + 32);
    }

    v15 = v158;
    if (!__OFADD__(v151, 1))
    {
      v159 = *(v153 + 65);
      v160 = sub_10005F36C();
      sub_100013478(v160, v161);
      if (!v154)
      {
        v163 = v162;

        v15 = *(v163 + 16);
        v0 = v152[2];
        if (__OFADD__(v0, v15))
        {
          goto LABEL_113;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || &v0[v15] > (v152[3] >> 1))
        {
          sub_10005DC34();
          sub_1000804D0(v164, v165, v166, v167);
          v152 = v168;
        }

        v0 = v298;
        if (!*(v163 + 16))
        {

          if (v15)
          {
            goto LABEL_114;
          }

          goto LABEL_87;
        }

        v169 = v152[2];
        v170 = v152[3];
        sub_10005F0F8();
        if (v44 != v45)
        {
          __break(1u);
LABEL_121:
          if (v19 >= 1)
          {
            v10 = 0;
            goto LABEL_123;
          }
        }

        else
        {
          v171 = *(v153 + 82);
          v172 = *(v278 + 80);
          sub_10005E0A0();
          v173 = *(v278 + 72);
          sub_10005FAA4();

          if (!v15)
          {
LABEL_87:
            v154 = 0;
            ++v151;
            continue;
          }

          v174 = v152[2];
          v45 = __OFADD__(v174, v15);
          v175 = &v174[v15];
          if (!v45)
          {
            v152[2] = v175;
            goto LABEL_87;
          }

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
        }

        __break(1u);
        return _swift_task_switch(v19, v20, v21);
      }

      v187 = *(v153 + 120);
      v188 = *(v153 + 75);

      sub_10006135C();
      swift_errorRetain();
      v189 = sub_100088FF8();
      v190 = sub_10008A5D8();

      v191 = sub_100061314();
      v192 = *(v153 + 75);
      v193 = *(v153 + 72);
      v194 = *(v153 + 71);
      if (v191)
      {
        sub_10005E91C();
        swift_slowAlloc();
        v292 = v192;
        v195 = sub_10005F8BC();
        sub_10005DC40();
        v196 = swift_slowAlloc();
        v300[0] = v196;
        sub_100060948(v196, v197, v198, v199, v200, v201, v202, v203, v204);
        v205 = sub_100061584();
        sub_100080D2C(v205, v206, v300);
        sub_100060924();

        *(v153 + 4) = v152;
        *(v153 + 6) = 2112;
        swift_errorRetain();
        v207 = _swift_stdlib_bridgeErrorToNSError();
        *(v153 + 14) = v207;
        *v195 = v207;
        sub_10005F754(&_mh_execute_header, v189, v190, "Failed to index content item type %s: %@");
        sub_100017954(v195, &qword_1000A6460, &qword_10008D878);
        sub_10005D4F8();

        sub_10005B1BC(v196);
        sub_10005D4F8();

        sub_10005FA30();
        sub_10005D4F8();

        (*(v193 + 8))(v292, v194);
      }

      else
      {

        v208 = *(v193 + 8);
        v209 = sub_10005DEB4();
        v211(v209, v210);
      }

      v212 = *(v153 + 66);
      sub_100089808();
      sub_10005E068();
      v300[1] = v265;
      v303._countAndFlagsBits = sub_100061584();
      sub_10008A2C8(v303);

      sub_10005FFF4();
      sub_10006010C();
      sub_100060E98();
      sub_10005DC58();
      sub_100060810();

      sub_10005FA30();

      v288 = 0;
LABEL_97:
      v213 = *(v153 + 107);
      v214 = *(v153 + 98);
      v215 = *(v153 + 89);
      sub_100088D58();
      v216 = sub_100088D78();
      v218 = v217;
      sub_100088D88();
      v219 = sub_100088F88();
      sub_100088FB8();
      v220 = sub_10008A698();
      v19 = sub_10008A7B8();
      if (v19)
      {
        if (v218)
        {
          if (HIDWORD(v216))
          {
            goto LABEL_135;
          }

          sub_10005EBF0();
          if (v11)
          {
            goto LABEL_139;
          }

          sub_10006097C();
          v216 = v262;
          if (!v11 & v67)
          {
            goto LABEL_136;
          }
        }

        else if (!v216)
        {
          goto LABEL_134;
        }

        v153 = v299;
        v221 = *(v299 + 288);
        v222 = *(v299 + 79);
        v223 = *(v299 + 78);
        v224 = *(v299 + 77);

        sub_100088FE8();

        v225 = *(v223 + 88);
        v226 = sub_100012498();
        v228 = "[Error] Interval already ended";
        if (v227(v226) != v221)
        {
          v229 = sub_10005EF74();
          v230(v229);
          v228 = "";
        }

        v231 = *(v299 + 89);
        sub_10005E3C8();
        v232 = swift_slowAlloc();
        *v232 = 0;
        v233 = sub_100088F68();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v219, v220, v233, v216, v228, v232, 2u);
        sub_10005D4F8();
      }

      v234 = *(v153 + 107);
      v235 = *(v153 + 106);
      v236 = *(v153 + 105);
      v237 = *(v153 + 98);
      v238 = *(v153 + 96);
      v239 = *(v153 + 89);
      v240 = *(v153 + 87);

      v241 = sub_10005E44C();
      v282(v241);
      v280(v237, v238);
      v242 = *(v235 + 8);
      v243 = sub_100012498();
      v244(v243);
      v16 = v287;
      v0 = v153;
      v15 = v268;
      if (v287 == v274)
      {
        goto LABEL_108;
      }

      goto LABEL_64;
    }

    break;
  }

  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  v247 = *(v0 + 122);
  if (![v15 key])
  {
    sub_10008A268();
    sub_10008A238();
    sub_10005D9B8();
  }

  sub_1000613D4();
  sub_10005F674();
  *(v0 + 132) = sub_10008A3A8();
  sub_10005D9B8();
  v248 = sub_10008A388();
  sub_10005CA4C(v248);
  sub_10005F3B4();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_100024EE0()
{
  v340 = v0;
  v1 = v0;
  v2 = v0[143];
  v3 = v0[141];
  v4 = v1[128];
  v5 = v1[122];
  v6 = v1[120];
  v7 = v1[73];
  sub_100088F28();
  v8 = v5;
  v9 = v4;
  swift_errorRetain();
  v10 = v3;
  v11 = sub_100088FF8();
  v12 = sub_10008A5D8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v1[143];
    v308 = v1[141];
    v14 = v1[128];
    v15 = v1[122];
    v325 = v1[72];
    v329 = v1[71];
    v332 = v1[73];
    v314 = v12;
    v16 = v1[70];
    loga = v11;
    v17 = v1[69];
    v311 = v1[68];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v339[0] = swift_slowAlloc();
    *v18 = 138413058;
    *(v18 + 4) = v14;
    *v19 = v14;
    sub_100060DC8();
    v20 = v14;
    v21 = [v15 identifier];
    sub_10008A268();

    v22 = sub_10005E98C();
    v25 = sub_100080D2C(v22, v23, v24);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v26;
    v19[1] = v26;
    *(v18 + 32) = 2080;
    v27 = [v308 locale];
    sub_100088A48();

    sub_100088A08();
    (*(v17 + 8))(v16, v311);
    v28 = sub_10005DB50();
    sub_100080D2C(v28, v29, v30);
    sub_10005E7B8();

    *(v18 + 34) = v16;
    _os_log_impl(&_mh_execute_header, loga, v314, "Failed to index parameter type: %@ in %s: %@ for locale: %s", v18, 0x2Au);
    sub_100008DC0(&qword_1000A6460, &qword_10008D878);
    swift_arrayDestroy();
    sub_10005D340();

    swift_arrayDestroy();
    sub_10005D4F8();

    sub_10005D4F8();

    (*(v325 + 8))(v332, v329);
  }

  else
  {
    v31 = v1[73];
    v32 = v1[72];
    v33 = v1[71];

    v34 = *(v32 + 8);
    v35 = sub_10005E694();
    v36(v35);
  }

  v37 = v1;
  v38 = v1[143];
  v39 = v1[141];
  v40 = v1[128];
  v41 = v1[122];
  v42 = v1[70];
  v43 = v1[69];
  v330 = v1[68];
  v333 = v1[66];
  v338 = v1;
  sub_100089818();
  v44 = sub_100089808();
  v37[48] = 0x6574656D61726170;
  v37[49] = 0xEA00000000002072;
  v45 = [v40 key];
  v46 = sub_10008A268();
  v48 = v47;

  sub_100060418();
  v341._countAndFlagsBits = v46;
  v341._object = v48;
  sub_10008A2C8(v341);

  sub_100060418();
  sub_10008A2C8(v342);
  v49 = [v41 identifier];
  sub_10008A268();

  sub_100060418();
  v343._countAndFlagsBits = sub_10005EB28();
  sub_10008A2C8(v343);

  sub_100060418();
  sub_10008A2C8(v344);
  v50 = [v39 locale];
  sub_100088A48();

  sub_100088A08();
  v52 = *(v43 + 8);
  v51 = (v43 + 8);
  v52(v42, v330);
  sub_100060418();
  v345._countAndFlagsBits = sub_10005EB28();
  sub_10008A2C8(v345);

  v53 = v338[48];
  v54 = v338[49];
  swift_getErrorValue();
  v55 = v338[40];
  v56 = v338[41];
  v57 = v338[42];
  sub_10008AAB8();
  sub_100060E98();
  sub_10005EB28();
  sub_1000897F8();

  sub_100060BC4();

  v58 = sub_100060A24();
  if (!v59)
  {
LABEL_126:
    v37[140] = v58;
    v278 = v37[67];
    if ((v278 & 0xC000000000000001) != 0)
    {
      v279 = sub_10008A928();
    }

    else
    {
      v279 = *(v278 + 8 * v58 + 32);
    }

    v37[141] = v279;
    swift_task_alloc();
    sub_100012480();
    v37[142] = v280;
    *v280 = v281;
    sub_10005CC00(v280, v282);
    sub_10005DD04();
    sub_100061010();

    return sub_100014AB4(v283, v284, v285, v286);
  }

  log = 0;
  v289 = (v37 + 53);
  v295 = (v37 + 55);
  while (1)
  {
    sub_100060568();
    v60 = sub_100088D78();
    v62 = v61;
    sub_100088D88();
    v63 = sub_100088F88();
    sub_100088FB8();
    v64 = sub_10008A698();
    v65 = sub_10008A7B8();

    if (v65)
    {
      if (v62)
      {
        v37 = v338;
        if (HIDWORD(v60))
        {
          goto LABEL_144;
        }

        sub_10005EBF0();
        if (v59)
        {
          goto LABEL_147;
        }

        v77 = v60 > 0x10FFFF;
        v60 = v295;
        if (v77)
        {
          goto LABEL_145;
        }
      }

      else
      {
        v37 = v338;
        if (!v60)
        {
          goto LABEL_143;
        }
      }

      LODWORD(v330) = v64;
      sub_100060044();
      sub_100088FE8();

      v78 = *(v63 + 88);
      v63 += 88;
      v79 = sub_100012498();
      v64 = "[Error] Interval already ended";
      if (v80(v79) != v44)
      {
        v81 = sub_10005F068();
        v82(v81);
        v64 = "";
      }

      v327 = v37[138];
      v315 = v37[137];
      v305 = v37[135];
      v309 = v37[136];
      v83 = v37[128];
      v322 = v37[108];
      v84 = v37[106];
      v312 = v37[105];
      v299 = v37[96];
      v302 = v37[100];
      v65 = v37[91];
      v44 = v37[87];
      sub_10005E3C8();
      v85 = swift_slowAlloc();
      sub_100060448(v85);
      v86 = sub_100088F68();
      sub_10006001C(&_mh_execute_header, v87, v330, v86);
      sub_10005CF50();

      v88 = sub_10005E12C();
      v305(v88);
      v315(v302, v299);
      v89 = *(v84 + 8);
      v51 = (v84 + 8);
      v89(v322, v312);
    }

    else
    {
      v69 = v37[138];
      v70 = v37[137];
      sub_100060DE0();
      v330 = v71;
      v72 = v37[106];
      v321 = v37[105];
      v326 = v73;
      sub_100060714();

      v74 = sub_10005E51C();
      (v65)(v74);
      v75 = sub_10005E494();
      v326(v75);
      v76 = *(v72 + 8);
      v62 = v72 + 8;
      v76(v330, v321);
    }

    sub_10005F058();
    if (v59)
    {
      break;
    }

LABEL_47:
    v37[127] = log;
    sub_100060EE8();
    if (v59)
    {
      sub_10005D988(v112, v113);
      if (v115)
      {
        goto LABEL_146;
      }

      v114 = sub_1000604FC(v66, v67);
    }

    else
    {
      v114 = sub_10008A928();
    }

    v66 = sub_10005F138(v114);
    v37[129] = v116;
    if (v93)
    {
      goto LABEL_141;
    }

    v117 = v37[122];
    objc_opt_self();
    sub_10005E028();
    v118 = swift_dynamicCastObjCClass();
    v37[130] = v118;
    if (v118)
    {
      goto LABEL_118;
    }

    v119 = [sub_10005FB54() identifier];
    v120 = sub_10008A268();
    v122 = v121;

    v37[46] = v120;
    v37[47] = v122;
    sub_10005FC3C();
    v123 = [v62 key];
    sub_10008A268();
    sub_10005F668();

    v346._countAndFlagsBits = sub_1000124C8();
    sub_10008A2C8(v346);

    v125 = v37[46];
    v124 = v37[47];
    v37[134] = v124;
    sub_10005D504();
    v126 = swift_allocObject();
    *(v126 + 16) = v125;
    *(v126 + 24) = v124;
    sub_10005D9D0();
    v44 = swift_allocObject();
    sub_10005EDE0(v44);
    sub_10005D9D0();
    v127 = swift_allocObject();
    v128 = v37;
    sub_10005FDAC(v127);
    sub_10005D504();
    v129 = swift_allocObject();
    sub_10005E900(v129);
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    inited = swift_initStackObject();
    v131 = sub_10005C6B8(inited, xmmword_10008D620);
    v131[2].n128_u64[0] = v132;
    v131[2].n128_u64[1] = v44;
    v131[3].n128_u64[0] = sub_10005C5C8;
    v131[3].n128_u64[1] = v64;
    v131[4].n128_u64[0] = sub_10005C5D0;
    v131[4].n128_u64[1] = v60;

    sub_100088D68();
    sub_100088F88();
    sub_100088F58();
    v133 = sub_100088F88();
    v134 = sub_10008A6A8();
    if (sub_10008A7B8())
    {
      sub_10005E048();
      v135 = swift_slowAlloc();
      sub_10005DC40();
      v51 = swift_slowAlloc();
      v136 = 0;
      v128[57] = 0;
      v128[58] = v51;
      *v135 = 258;
      v128[56] = v135 + 1;
      while (v136 != 3)
      {
        v44 = inited[v136 + 2].n128_u64[0];
        v137 = inited[v136 + 2].n128_u64[1];

        (v44)(v128 + 56, v128 + 57, v128 + 58);

        ++v136;
      }

      v138 = v128[92];

      v139 = sub_100088F68();
      sub_10006132C(&_mh_execute_header, v133, v134, v139, "IndexType", "type=%{signpost.description:attribute}s");
      sub_10005B1BC(v51);
      sub_10005D340();

      sub_10005CF50();
    }

    else
    {
    }

    v140 = v338[108];
    v141 = v338[103];
    v142 = v338[101];
    sub_10005CFEC();
    v334 = *(v143 + 536);
    v144 = sub_10005D480();
    v145(v144);
    v146 = sub_100088FD8();
    sub_10005E928(v146);
    swift_allocObject();
    sub_1000124D4();
    v147 = sub_10005D458();
    v148(v147);
    v37 = v338;
    sub_10005E4AC();
    v338[135] = v128[1];
    sub_100060E14();
    v338[136] = v149;
    v150 = sub_10005DC4C();
    v151(v150);
    v152 = v51[1];
    ++v51;
    v338[137] = v152;
    sub_100060E08();
    v338[138] = v153;
    v154 = sub_1000124C8();
    v155(v154);
    if (v334 >> 62)
    {
      v66 = sub_10005FB38();
    }

    else
    {
      v66 = sub_100060E38(v338[67]);
    }

    v338[139] = v66;
    if (v66)
    {
      goto LABEL_124;
    }

    log = v338[127];
  }

  sub_100061464();

  v60 = v37[124];
  v90 = v37[123];
  while (1)
  {
    v66 = v37[117];
    if (v66 < 0)
    {
      v65 = v66 & 0x7FFFFFFFFFFFFFFFLL;
      v99 = sub_10008A8A8();
      if (!v99)
      {
        break;
      }

      v100 = sub_100060F9C(v99);
      sub_100011D84(v100, &qword_1000A5EA8, WFAction_ptr);
      sub_10005F0B8();
      sub_10005ED24();
      swift_dynamicCast();
      v65 = v37[59];
      v44 = v90;
      v64 = v60;
    }

    else
    {
      v91 = v90;
      v44 = v90;
      if (!v60)
      {
        do
        {
          v44 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            goto LABEL_133;
          }

          sub_10005FF7C();
          if (v92 == v93)
          {
            goto LABEL_65;
          }

          sub_10005FF6C();
        }

        while (!v94);
      }

      sub_10005D470();
      v64 = (v96 & v95);
      v65 = sub_10005F868(v97, v98);
    }

    v37[124] = v64;
    v37[123] = v44;
    v37[122] = v65;
    if (!v65)
    {
      break;
    }

    v101 = sub_10008A788();
    v66 = sub_1000609FC(v101);
    if (v93)
    {
      goto LABEL_134;
    }

    sub_100060C1C();
    if (!swift_isUniquelyReferenced_nonNull_native() || v60 > *(v62 + 24) >> 1)
    {
      sub_1000610AC();
      v62 = v102;
    }

    if (*(v63 + 16))
    {
      v103 = *(v62 + 16);
      v104 = *(v62 + 24);
      sub_10005F348();
      if (v106 < v90)
      {
        goto LABEL_136;
      }

      sub_10006108C(v105);

      if (v90)
      {
        v107 = *(v62 + 16);
        v93 = __OFADD__(v107, v90);
        v108 = &v90[v107];
        if (v93)
        {
          goto LABEL_140;
        }

        *(v62 + 16) = v108;
      }
    }

    else
    {

      if (v90)
      {
        goto LABEL_135;
      }
    }

    v338[50] = v62;
    v109 = [v65 parameters];
    v110 = sub_10006028C();
    sub_100011D84(v110, &qword_1000A6530, WFParameter_ptr);
    v62 = sub_10008A328();
    v338[125] = v62;

    if (v62 >> 62)
    {
      v111 = sub_10008A9D8();
    }

    else
    {
      v111 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v338[126] = v111;
    if (v111)
    {
      v37 = v338;
      goto LABEL_47;
    }

    v90 = v44;
    v60 = v64;
    v37 = v338;
  }

  sub_100060F70();
LABEL_65:
  v156 = v37[118];
  sub_10005FB8C();
  v296 = v157;
  if (!v157)
  {
LABEL_111:

    sub_10005CDDC();
    sub_1000602A4();
    sub_10005F258();
    v292 = v37[92];
    v294 = v37[91];
    v297 = v37[90];
    v298 = v37[89];
    v301 = v37[86];
    v304 = v37[85];
    v307 = v37[84];
    v310 = v37[81];
    v313 = v37[80];
    v317 = v37[79];
    logb = v37[76];
    v324 = v37[75];
    v328 = v37[74];
    v331 = v37[73];
    v337 = v37[70];

    sub_10001248C();
    sub_100061010();

    __asm { BRAA            X1, X16 }
  }

  v158 = sub_100061434();
  sub_10005FED4(v158);
  v293 = v159;
  sub_100060D68();
  v300 = v65;
  v290 = v160;
  v291 = v62;
LABEL_67:
  v161 = v37[121];
  v162 = v37[99];
  v163 = v37[90];
  v164 = sub_10005E2A4();
  sub_10004F858(v164, v165, v62);
  v335 = *(v293 + 8 * v63);
  v37[51] = v335;
  sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
  sub_1000614C4();
  sub_10005F650();
  sub_10005D504();
  v166 = swift_allocObject();
  *(v166 + 16) = v44;
  *(v166 + 24) = v64;
  sub_10005D9D0();
  v167 = swift_allocObject();
  sub_10005EDE0(v167);
  sub_10005D9D0();
  v168 = swift_allocObject();
  *(v168 + 16) = 8;
  sub_10005D504();
  v62 = swift_allocObject();
  sub_10005D18C(v62);
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  v169 = swift_initStackObject();
  v170 = sub_10005C6B8(v169, xmmword_10008D620);
  v170[2].n128_u64[0] = v171;
  v170[2].n128_u64[1] = v167;
  v170[3].n128_u64[0] = sub_10005C5C8;
  v170[3].n128_u64[1] = v168;
  v170[4].n128_u64[0] = sub_10005C5D0;
  v170[4].n128_u64[1] = v62;
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v172 = sub_100088F88();
  v173 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    sub_10005E048();
    v62 = swift_slowAlloc();
    sub_10005DC40();
    v174 = swift_slowAlloc();
    sub_10005FF2C(v174);
    sub_10005E4D8(v62);
    while (v37 != 48)
    {
      v176 = *(v37 + v169 + 32);
      v175 = *(v37 + v169 + 40);

      v177 = sub_10005E4C8();
      v176(v177);

      v37 += 2;
    }

    v178 = v338;
    v179 = v338[90];

    v180 = sub_100088F68();
    sub_10006132C(&_mh_execute_header, v172, v173, v180, "IndexType", "type=%{signpost.description:attribute}s");
    sub_10005B1BC(v167);
    sub_10005D4F8();

    sub_10005CF50();
  }

  else
  {

    v178 = v338;
  }

  v316 = v63 + 1;
  sub_10005D938();
  v181 = v178[88];
  v182 = v178[87];
  sub_1000124F4(v181);
  sub_10005FB08();
  v183();
  v184 = sub_100088FD8();
  sub_10005E928(v184);
  swift_allocObject();
  sub_1000124D4();
  v185 = sub_10005DE88();
  v186(v185);
  sub_10005E4AC();
  v187 = *(v181 + 8);
  v188 = sub_10005F62C();
  v306 = v189;
  v189(v188);
  v190 = *(v63 + 9);
  v191 = sub_10005E088();
  v66 = v190(v191);
  v192 = 0;
  v193 = _swiftEmptyArrayStorage;
  v194 = v178;
  v195 = log;
  v37 = v335;
  v303 = v190;
  while (2)
  {
    if (v330 == v192)
    {
      v217 = v193[2];
      log = v195;
      if (v217)
      {
        sub_10005D14C();
        sub_100060968();
        v323 = v218;
        do
        {
          v219 = v194[84];
          v220 = v194[83];
          v221 = v194[82];
          v222 = v338[66];
          sub_10005E458();
          v323();
          sub_100089808();
          sub_10005E464();
          v194 = v338;
          sub_1000897E8();

          v223 = *(v220 + 8);
          v224 = sub_10005DC4C();
          v225(v224);
          v62 += v335;
          --v217;
        }

        while (v217);
      }

      goto LABEL_100;
    }

    v196 = v194[67];
    if ((v196 & 0xC000000000000001) != 0)
    {
      v199 = sub_10008A928();
    }

    else
    {
      sub_10005E804(v66, v196);
      if (v192 >= v198)
      {
        goto LABEL_115;
      }

      v199 = *(v197 + 8 * v192 + 32);
    }

    v62 = v199;
    if (!__OFADD__(v192, 1))
    {
      v200 = v194[65];
      v201 = sub_10005F36C();
      sub_100013478(v201, v202);
      if (!v195)
      {
        v204 = v203;

        v62 = *(v204 + 16);
        v37 = v193[2];
        if (__OFADD__(v37, v62))
        {
          goto LABEL_116;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v37 + v62) > (v193[3] >> 1))
        {
          sub_10005DC34();
          sub_1000804D0(v205, v206, v207, v208);
          v193 = v209;
        }

        v37 = v335;
        if (!*(v204 + 16))
        {

          if (v62)
          {
            goto LABEL_117;
          }

          goto LABEL_90;
        }

        v210 = v193[2];
        v211 = v193[3];
        sub_10005F0F8();
        if (v92 != v93)
        {
          __break(1u);
LABEL_124:
          if (v66 >= 1)
          {
            v58 = 0;
            goto LABEL_126;
          }
        }

        else
        {
          v212 = v194[82];
          v213 = *(v300 + 80);
          sub_10005E0A0();
          v214 = *(v300 + 72);
          sub_10005FAA4();

          if (!v62)
          {
LABEL_90:
            v195 = 0;
            ++v192;
            continue;
          }

          v215 = v193[2];
          v93 = __OFADD__(v215, v62);
          v216 = &v215[v62];
          if (!v93)
          {
            v193[2] = v216;
            goto LABEL_90;
          }

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
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
        }

        __break(1u);
        return _swift_task_switch(v66, v67, v68);
      }

      v226 = v194[120];
      v227 = v194[75];

      sub_10006135C();
      swift_errorRetain();
      v228 = sub_100088FF8();
      v229 = sub_10008A5D8();

      v230 = sub_100061314();
      v231 = v194[75];
      v232 = v194[72];
      v233 = v194[71];
      if (v230)
      {
        sub_10005E91C();
        v336 = v233;
        v234 = swift_slowAlloc();
        v194 = sub_10005FEE4();
        sub_10005DC40();
        v235 = swift_slowAlloc();
        v339[0] = v235;
        *v234 = 136315394;
        v236 = sub_100061584();
        sub_100080D2C(v236, v237, v339);
        sub_100060924();

        sub_100061144();
        v238 = _swift_stdlib_bridgeErrorToNSError();
        *(v234 + 14) = v238;
        *v194 = v238;
        _os_log_impl(&_mh_execute_header, v228, v229, "Failed to index content item type %s: %@", v234, 0x16u);
        sub_100017954(v194, &qword_1000A6460, &qword_10008D878);
        sub_10005FA30();
        sub_10005D4F8();

        sub_10005B1BC(v235);
        sub_10005D4F8();

        sub_10005CF50();

        (*(v232 + 8))(v231, v336);
      }

      else
      {

        (*(v232 + 8))(v231, v233);
      }

      v239 = v194[66];
      sub_100089808();
      sub_10005E068();
      v339[1] = v290;
      v347._countAndFlagsBits = sub_100061584();
      sub_10008A2C8(v347);

      sub_10005FFF4();
      sub_10006010C();
      sub_100060E98();
      sub_10005DC58();
      sub_100060810();

      sub_10005FA30();

      log = 0;
LABEL_100:
      v240 = v194[107];
      v241 = v194[98];
      v242 = v194;
      v243 = v194[89];
      sub_100088D58();
      v244 = sub_100088D78();
      v246 = v245;
      sub_100088D88();
      v247 = sub_100088F88();
      sub_100088FB8();
      sub_10008A698();
      v66 = sub_10008A7B8();
      if (v66)
      {
        if (v246)
        {
          v248 = v338;
          if (HIDWORD(v244))
          {
            goto LABEL_138;
          }

          sub_10005EBF0();
          if (v59)
          {
            goto LABEL_142;
          }

          sub_10006097C();
          v244 = v289;
          if (!v59 & v115)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v248 = v338;
          if (!v244)
          {
            goto LABEL_137;
          }
        }

        v249 = *(v248 + 288);
        v250 = v248[79];
        v251 = v248[78];
        v252 = v248[77];

        sub_100088FE8();

        v253 = *(v251 + 88);
        v254 = sub_10005E12C();
        v256 = "[Error] Interval already ended";
        if (v255(v254) != v249)
        {
          v257 = sub_10005EF74();
          v258(v257);
          v256 = "";
        }

        v259 = v248[89];
        sub_10005E3C8();
        v242 = v248;
        v260 = swift_slowAlloc();
        *v260 = 0;
        sub_100088F68();
        sub_100060424();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v247, v261, v262, v244, v256, v260, 2u);
        sub_10005D4F8();
      }

      v263 = v242[107];
      v264 = v242[106];
      v265 = v242[105];
      v44 = v242[98];
      v64 = v242[96];
      v266 = v242[89];
      v267 = v242[87];

      v268 = sub_10005E44C();
      v306(v268);
      v269 = sub_10005DC58();
      v303(v269);
      v270 = *(v264 + 8);
      v271 = sub_100012498();
      v272(v271);
      v37 = v242;
      v63 = v316;
      v62 = v291;
      if (v316 == v296)
      {
        goto LABEL_111;
      }

      goto LABEL_67;
    }

    break;
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  v275 = v37[122];
  if (![v62 key])
  {
    sub_10008A268();
    sub_10008A238();
    sub_10005D9B8();
  }

  sub_1000613D4();
  sub_10005F674();
  v37[132] = sub_10008A3A8();
  sub_10005D9B8();
  v276 = sub_10008A388();
  sub_10005CA4C(v276);
  sub_100061010();

  return _swift_task_switch(v66, v67, v68);
}

uint64_t sub_100026644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v5 = sub_10005CFA0();
  return _swift_task_switch(v5, v6, v7);
}

void sub_100026670()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100011D84(0, &qword_1000A6468, WFTrigger_ptr);
  v1 = sub_10008A7C8();
  v2 = (v1 + 40);
  v3 = -*(v1 + 16);
  v4 = -1;
  while (v3 + v4 != -1)
  {
    if (++v4 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v2 + 2;
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[2];
    v9 = *(v2 - 1);
    v10 = *v2;
    sub_100029F84();
    v2 = v5;
  }

  sub_100012420();
  sub_1000615B4();

  v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_100026758()
{
  sub_100012404();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[15] = v5;
  v1[16] = v6;
  v7 = sub_100089008();
  v1[21] = v7;
  sub_100017A0C(v7);
  v1[22] = v8;
  v10 = *(v9 + 64);
  v1[23] = sub_10005F3EC();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v11 = sub_10005CFA0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100027140()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v6 = *(v5 + 320);
  *v4 = *v1;
  v3[41] = v7;
  v3[42] = v0;

  if (v0)
  {
    v8 = v3[39];
  }

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000289A4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100028A68;

  return ToolKitIndexer.reindex(request:)();
}

uint64_t sub_100028A68()
{
  sub_10005EC9C();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[4];
  if (v2)
  {
    v11 = sub_100088968();

    sub_100060214();
    v12 = sub_10005F378();
    v13(v12);
  }

  else
  {
    sub_100060214();
    v14(v10, 0);
  }

  _Block_release(v4[4]);
  v15 = v9[1];

  return v15();
}

void sub_100028BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000602E0();
  a19 = v22;
  a20 = v23;
  v122 = v21;
  v116 = v25;
  v117 = v24;
  v27 = v26;
  v28 = sub_100088F78();
  v29 = sub_100012368(v28);
  v113 = v30;
  v114 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_10005CFB0();
  v110 = v33;
  sub_10005EC34();
  __chkstk_darwin(v34);
  v35 = sub_100088F98();
  v36 = sub_100012368(v35);
  v111 = v37;
  v112 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_10005CFB0();
  v109 = v40;
  sub_10005EC34();
  __chkstk_darwin(v41);
  sub_100060BFC();
  v42 = sub_100088D98();
  v43 = sub_100012368(v42);
  v119 = v44;
  v120 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v43);
  sub_1000123E8();
  v118 = v48 - v47;
  sub_10005FA24();
  v121 = sub_100089008();
  v49 = sub_100012368(v121);
  v51 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v49);
  sub_10005CFB0();
  v108 = v54;
  sub_10005EC34();
  __chkstk_darwin(v55);
  v57 = v106 - v56;
  v58 = sub_100088E08();
  v59 = sub_100012368(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  __chkstk_darwin(v59);
  sub_1000123E8();
  v66 = v65 - v64;
  sub_100060214();
  v115 = v27;
  v67(v66, v27, v58);
  v68 = *(v61 + 88);
  v69 = sub_10005FBB8();
  v71 = v70(v69);
  LODWORD(v27) = enum case for ToolKitIndexingReason.Changeset.partial(_:);
  v72 = *(v61 + 8);
  v73 = sub_10005FBB8();
  v74(v73);
  v123 = _swiftEmptyArrayStorage;
  if (v71 == v27)
  {
    v106[2] = WFLogCategoryToolKitIndexing;
    sub_100088F28();
    v75 = sub_100088FF8();
    v76 = sub_10008A5B8();
    if (os_log_type_enabled(v75, v76))
    {
      sub_10005E3C8();
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Clearing underspecified containers...", v77, 2u);
      sub_10005D340();
    }

    v107 = *(v51 + 8);
    v106[1] = v51 + 8;
    v107(v57, v121);
    sub_100088D68();
    sub_100088F88();
    sub_100088F58();
    v78 = sub_100088F88();
    v79 = sub_10008A6A8();
    if (sub_10008A7B8())
    {
      sub_10005E3C8();
      v80 = swift_slowAlloc();
      *v80 = 0;
      v81 = sub_100088F68();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, v79, v81, "ContainerCleanup", "Cleaning up underspecified containers", v80, 2u);
      sub_10005D340();
    }

    v82 = v113;
    sub_1000609C8();
    v83 = sub_10005DC58();
    v84(v83);
    v85 = sub_100088FD8();
    sub_10005E928(v85);
    swift_allocObject();
    sub_10005E434();
    sub_100088FC8();
    v86 = v111;
    (*(v111 + 16))(v109, v20, v112);
    v87 = v118;
    sub_100088DA8();
    v88 = *(v82 + 8);
    v89 = sub_10005EC58();
    v90(v89);
    v91 = *(v86 + 8);
    v92 = sub_100060FB4();
    v94 = v93(v92);
    a10 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v94);
    v106[-4] = v115;
    v106[-3] = &a10;
    v106[-2] = v116;
    v95 = v122;
    sub_100089368();
    if (v95)
    {

      sub_10002B2D8();
      (*(v119 + 8))(v87, v120);
    }

    else
    {
      v123 = a10;
      if (a10[2])
      {
        v96 = v108;
        sub_100088F28();
        v97 = sub_100088FF8();
        v98 = sub_10008A5E8();
        if (os_log_type_enabled(v97, v98))
        {
          sub_10005E048();
          v99 = swift_slowAlloc();
          sub_10005DC40();
          v100 = swift_slowAlloc();
          v124 = v100;
          *v99 = 136315138;

          sub_10008A338();
          sub_10005F650();

          v101 = sub_10005DC58();
          v104 = sub_100080D2C(v101, v102, v103);

          *(v99 + 4) = v104;
          _os_log_impl(&_mh_execute_header, v97, v98, "Updated containers without localized names: %s", v99, 0xCu);
          sub_10005B1BC(v100);
          sub_10005D0A0();

          sub_10005D4F8();

          v105 = v108;
        }

        else
        {

          v105 = v96;
        }

        v107(v105, v121);
      }

      sub_10002B2D8();
      (*(v119 + 8))(v87, v120);
    }
  }

  sub_1000601E4();
}

void sub_1000292A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = sub_100088A68();
  v42 = *(v46 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v46);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100088E08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v16, a2, v12);
  if ((*(v13 + 88))(v16, v12) == enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    v40[2] = a1;
    v41 = v4;
    v40[0] = a3;
    (*(v13 + 96))(v16, v12);
    v18 = *v16;
    v17 = v16[1];
    v19 = v16[2];

    v40[1] = sub_10001BE2C(v18);
    v20 = sub_10008391C(a4);
    v21 = 0;
    v44 = a4 & 0xC000000000000001;
    v45 = v20;
    v43 = a4 & 0xFFFFFFFFFFFFFF8;
    v22 = (v42 + 8);
    v23 = _swiftEmptyArrayStorage;
    v24 = a4;
    while (v45 != v21)
    {
      if (v44)
      {
        v25 = sub_10008A928();
      }

      else
      {
        if (v21 >= *(v43 + 16))
        {
          goto LABEL_20;
        }

        v25 = *(a4 + 8 * v21 + 32);
      }

      v26 = v25;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v27 = [v25 locale];
      sub_100088A48();

      v28 = sub_100088A08();
      v30 = v29;

      (*v22)(v11, v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = v23[2];
        sub_1000802EC();
        v23 = v34;
      }

      v31 = v23[2];
      if (v31 >= v23[3] >> 1)
      {
        sub_1000802EC();
        v23 = v35;
      }

      v23[2] = (v31 + 1);
      v32 = &v23[2 * v31];
      v32[4] = v28;
      v32[5] = v30;
      ++v21;
      a4 = v24;
    }

    v36 = v41;
    v37 = sub_1000895D8();
    if (v36)
    {
    }

    else
    {
      v38 = v37;

      v39 = *v40[0];
      *v40[0] = v38;
    }
  }

  else
  {
    (*(v13 + 8))(v16, v12);
  }
}

void sub_100029630()
{
  sub_1000602E0();
  v57 = v3;
  v58 = v2;
  v55 = sub_100088F78();
  v4 = sub_100012368(v55);
  v53 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10005CFB0();
  v50 = v8;
  sub_10005EC34();
  __chkstk_darwin(v9);
  sub_100060BE8();
  v51 = sub_100088F98();
  v10 = sub_100012368(v51);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10005CFB0();
  v49 = v15;
  sub_10005EC34();
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v56 = sub_100088D98();
  v19 = sub_100012368(v56);
  v54 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_1000123E8();
  v52 = v24 - v23;
  sub_10005FA24();
  v25 = sub_100089008();
  v26 = sub_100012368(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_1000123E8();
  sub_100088F28();
  v31 = sub_100088FF8();
  v32 = sub_10008A5B8();
  if (os_log_type_enabled(v31, v32))
  {
    sub_10005E3C8();
    v33 = swift_slowAlloc();
    sub_100060448(v33);
    _os_log_impl(&_mh_execute_header, v31, v32, "Clearing database", v0, 2u);
    sub_10005CF50();
  }

  v34 = *(v28 + 8);
  v35 = sub_10005E12C();
  v36(v35);
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v37 = sub_100088F88();
  v38 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    sub_10005E3C8();
    v39 = swift_slowAlloc();
    sub_100060448(v39);
    v40 = sub_100088F68();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v38, v40, "DatabaseWipe", "Clearing database prior to indexing", v0, 2u);
    sub_10005CF50();
  }

  v41 = v53;
  v42 = v55;
  (*(v53 + 16))(v50, v1, v55);
  v43 = sub_100088FD8();
  sub_10005E928(v43);
  swift_allocObject();
  sub_10005D9B8();
  sub_100088FC8();
  (*(v12 + 16))(v49, v18, v51);
  v44 = v52;
  sub_100088DA8();
  (*(v41 + 8))(v1, v42);
  v45 = *(v12 + 8);
  v46 = sub_10005E470();
  v48 = v47(v46);
  __chkstk_darwin(v48);
  *(&v49 - 2) = v57;
  sub_100089368();
  sub_10002B2D8();
  (*(v54 + 8))(v44, v56);
  sub_1000601E4();
}

void sub_100029A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100088E08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, a2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = *v8;
    v11 = v8[1];
    v12 = v8[2];

    sub_10001A784(v11);
    v25 = v13;
    v14 = sub_10008A268();
    sub_100050BE8(v14, v15);
    v17 = v16;

    if (v17)
    {

      v18 = v25;

      v20._rawValue = sub_10001BE2C(v19);
      sub_100089648(v20, 1);

      if (v2)
      {
LABEL_11:

        return;
      }
    }

    else
    {
      v18 = v25;
    }

    v21 = sub_10001BE2C(v18);
    v22 = sub_100089658() & 1;
    v23._rawValue = v21;
    sub_100089648(v23, v22);
    goto LABEL_11;
  }

  if (v9 == enum case for ToolKitIndexingReason.Changeset.full(_:))
  {
    sub_100089698();
  }

  else if (v9 != enum case for ToolKitIndexingReason.Changeset.none(_:))
  {
    (*(v5 + 8))(v8, v4);
  }
}

id ToolKitIndexer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ToolKitIndexer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToolKitIndexer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id *sub_100029D74(uint64_t a1)
{
  result = sub_10008391C(a1);
  v3 = result;
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v3 == v4)
    {

      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = sub_10008A928();
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      result = *(a1 + 8 * v4 + 32);
    }

    v6 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = [result actionIdentifier];
    sub_10008A268();

    v8 = sub_10008A008();

    v9 = *(v8 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v11 > (v5[3] >> 1))
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      sub_10008070C(isUniquelyReferenced_nonNull_native, v13, 1, v5);
      v5 = v14;
    }

    if (*(v8 + 16))
    {
      v15 = (v5[3] >> 1) - v5[2];
      result = sub_10008A018();
      v16 = *(result - 1);
      if (v15 < v9)
      {
        goto LABEL_27;
      }

      v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v18 = *(v16 + 72);
      swift_arrayInitWithCopy();

      if (v9)
      {
        v19 = v5[2];
        v20 = __OFADD__(v19, v9);
        v21 = &v19[v9];
        if (v20)
        {
          goto LABEL_28;
        }

        v5[2] = v21;
      }
    }

    else
    {

      if (v9)
      {
        goto LABEL_26;
      }
    }

    v4 = (v4 + 1);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_100029F84()
{
  sub_1000602E0();
  v52 = v0;
  v48 = v1;
  v49 = v2;
  v4 = v3;
  v39 = v6;
  v40 = v5;
  v47 = v7;
  v8 = sub_10008A088();
  v9 = sub_10005E3B0(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_1000123E8();
  v46 = v13 - v12;
  sub_10005FA24();
  v14 = sub_10008A128();
  v15 = sub_10005E3B0(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000123E8();
  v45 = v19 - v18;
  sub_10005FA24();
  v44 = sub_10008A508();
  v20 = sub_100012368(v44);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_1000123E8();
  if (sub_10008391C(v4))
  {
    v38 = v4 & 0xFFFFFFFFFFFFFF8;
    v41 = v22 + 8;
    v42 = v4 & 0xC000000000000001;
    do
    {
      if (v42)
      {
        sub_10005FBB8();
        v25 = sub_10008A928();
      }

      else
      {
        if (!*(v38 + 16))
        {
          __break(1u);
          return;
        }

        v25 = *(v4 + 32);
      }

      v26 = v25;
      v51 = 0;
      sub_1000601D8();
      sub_10008A118();
      v27 = v26;
      sub_10008A4D8();
      sub_10008A4C8();
      v28 = sub_100088AB8();
      v29 = v28;
      if (*(v28 + 16))
      {
        v50 = v40;
        __chkstk_darwin(v28);
        v30 = v39;
        *(&v38 - 4) = v29;
        *(&v38 - 3) = v30;
        *(&v38 - 2) = v27;
        sub_100089378();
        sub_1000893A8();
        if (v52)
        {
          v36 = sub_10005EE14();
          v37(v36);

          goto LABEL_14;
        }

        v52 = 0;
        v31 = sub_10005EE14();
        v32(v31);
      }

      else
      {
        v33 = sub_10005EE14();
        v34(v33);
      }

      sub_10005E488();
    }

    while (v35 != 1);
  }

  sub_10004D2D0(v47, v40, v4, v48, v49);
LABEL_14:
  sub_1000601E4();
}

void sub_10002A290(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_10008A918(30);

    sub_100060D74();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_10008A918(27);

    sub_100060D74();
LABEL_5:
    v3._countAndFlagsBits = sub_1000124C8();
    sub_10008A2C8(v3);
    return;
  }

  switch(a1)
  {
    case 1:
    case 2:
      return;
    default:
      sub_10005E980();
      break;
  }
}

uint64_t sub_10002A3F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (a3 != 1)
  {
    switch(a1)
    {
      case 1:
        if (a6 != 2 || a4 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (a6 != 2 || a4 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (a6 != 2 || a4 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (a6 != 2 || a4 != 4)
        {
          return 0;
        }

        break;
      default:
        return a6 == 2 && !(a5 | a4);
    }

    return !a5;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_11:
  if (a1 != a4 || a2 != a5)
  {
    return sub_10008AA68();
  }

  return 1;
}

void sub_10002A4D0()
{
  sub_10005F538();
  if (!v1)
  {
    v2 = 2;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 3;
LABEL_5:
    sub_10008AB18(v2);
    sub_100012498();

    sub_10008A2B8();
    return;
  }

  switch(v0)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 4;
      break;
    case 3:
      v3 = 5;
      break;
    case 4:
      v3 = 6;
      break;
    default:
      v3 = 0;
      break;
  }

  sub_10008AB18(v3);
}

Swift::Int sub_10002A590()
{
  sub_10008AB08();
  sub_10002A4D0();
  return sub_10008AB28();
}

Swift::Int sub_10002A5F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_10002A590();
}

void sub_10002A5FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_10002A4D0();
}

Swift::Int sub_10002A608()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_10008AB08();
  sub_10005ECB4();
  sub_10002A4D0();
  return sub_10008AB28();
}

uint64_t sub_10002A684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_10004F650(*(a1 + 16), 0, &qword_1000A66D0, &qword_10008E3B0, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
  v4 = *(type metadata accessor for ToolKitIndexer.LocaleWithUsage(0) - 8);
  v5 = sub_10005B984(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  sub_100011E9C();
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v7 = v3;
  sub_100057F68(&v7);
  return v7;
}

uint64_t sub_10002A7C4()
{
  sub_100012404();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v1[20] = v5;
  v1[21] = v6;
  v7 = sub_100088F78();
  v1[26] = v7;
  sub_100017A0C(v7);
  v1[27] = v8;
  v10 = *(v9 + 64);
  v1[28] = sub_10005F3EC();
  v1[29] = swift_task_alloc();
  v11 = sub_100088F98();
  v1[30] = v11;
  sub_100017A0C(v11);
  v1[31] = v12;
  v14 = *(v13 + 64);
  v1[32] = sub_10005F3EC();
  v1[33] = swift_task_alloc();
  v15 = sub_100088D98();
  v1[34] = v15;
  sub_100017A0C(v15);
  v1[35] = v16;
  v18 = *(v17 + 64);
  v1[36] = sub_10005F4D4();
  v19 = sub_10005CFA0();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_10002A920()
{
  v90 = v0;
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);
  v4 = *(v0 + 160);
  sub_10005E1F0();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_10005D9D0();
  v6 = swift_allocObject();
  sub_10005EDE0(v6);
  sub_10005D9D0();
  v7 = swift_allocObject();
  sub_10005FDAC(v7);
  sub_10005D504();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10005B5B0;
  *(v8 + 24) = v5;
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008D620;
  *(inited + 32) = sub_10005B5CC;
  *(inited + 40) = v6;
  *(inited + 48) = sub_10005C5C8;
  *(inited + 56) = v1;
  *(inited + 64) = sub_10005B5E0;
  *(inited + 72) = v8;
  v10 = v4;
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v11 = sub_100088F88();
  v12 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    sub_10005E048();
    v13 = swift_slowAlloc();
    sub_10005DC40();
    v14 = swift_slowAlloc();
    v15 = 0;
    v88 = 0;
    v89 = v14;
    *v13 = 258;
    v87 = v13 + 2;
    while (v15 != 48)
    {
      v17 = *(inited + v15 + 32);
      v16 = *(inited + v15 + 40);

      v17(&v87, &v88, &v89);

      v15 += 16;
    }

    v18 = *(v0 + 232);

    v19 = sub_100088F68();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v19, "IndexTool", "action=%{signpost.description:attribute}s", v13, 0xCu);
    sub_10005B1BC(v14);
    sub_10005D4F8();

    sub_10005D0A0();
  }

  else
  {
  }

  v20 = *(v0 + 288);
  v22 = *(v0 + 256);
  v21 = *(v0 + 264);
  v23 = *(v0 + 240);
  v24 = *(v0 + 248);
  v25 = *(v0 + 224);
  v26 = *(v0 + 232);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v85 = *(v0 + 160);
  v29 = *(v27 + 16);
  v30 = sub_10005E12C();
  v31(v30);
  v32 = sub_100088FD8();
  sub_10005E928(v32);
  swift_allocObject();
  v33 = sub_1000124D4();
  v34 = *(v24 + 16);
  sub_10005E770();
  v35();
  sub_10005E4AC();
  v37 = *(v27 + 8);
  v36 = v27 + 8;
  v38 = sub_10005F5BC();
  v39(v38);
  v40 = *(v24 + 8);
  v41 = sub_10005DB50();
  v42(v41);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v43 = 1;
    sub_10005D3D8();
    sub_10008084C();
    sub_10005FF4C(v44);
LABEL_20:
    if (v23 >= v45 >> 1)
    {
      sub_10005CA84(v45);
      sub_10008084C();
      v36 = v84;
    }

    *(v36 + 16) = v33;
    v52 = v36 + 24 * v23;
    *(v52 + 32) = v43;
    *(v52 + 40) = 0;
    *(v52 + 48) = 2;
    goto LABEL_23;
  }

  v33 = *(v0 + 160);
  objc_opt_self();
  sub_10005E028();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  v33 = 0xEE006E6F69746341;
  v36 = 0x206E776F6E6B6E55;
  v46 = [*(v0 + 160) localizedName];
  v23 = sub_10008A268();
  v48 = v47;

  if (v23 == 0x206E776F6E6B6E55 && v48 == 0xEE006E6F69746341)
  {

    goto LABEL_19;
  }

  sub_10005FA3C();
  v33 = sub_10008AA68();

  if (v33)
  {
LABEL_19:
    sub_10005D3D8();
    sub_10008084C();
    sub_10005FF4C(v51);
    v43 = 2;
    goto LABEL_20;
  }

  v33 = *(v0 + 160);
  objc_opt_self();
  sub_10005E028();
  if (swift_dynamicCastObjCClass() || (v33 = *(v0 + 160), objc_opt_self(), sub_10005E028(), swift_dynamicCastObjCClass()))
  {
    sub_10005D3D8();
    sub_10008084C();
    sub_10005FF4C(v50);
    v43 = 4;
    goto LABEL_20;
  }

  v36 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2])
  {
LABEL_23:
    v54 = *(v0 + 280);
    v53 = *(v0 + 288);
    v56 = *(v0 + 264);
    v55 = *(v0 + 272);
    v57 = *(v0 + 256);
    v59 = *(v0 + 224);
    v58 = *(v0 + 232);
    sub_10002B2D8();
    v60 = *(v54 + 8);
    v61 = sub_10005E694();
    v62(v61);

    v63 = *(v0 + 8);

    return v63(v36);
  }

  v65 = *(v0 + 192);
  v66 = *(v0 + 200);
  v67 = *(v0 + 168);
  sub_100003BC8(*(v0 + 160), (v0 + 96));
  if (!*(v0 + 104))
  {

    v36 = &off_10009E7B8;
    goto LABEL_23;
  }

  v68 = *(v0 + 184);
  v69 = *(v0 + 152);
  v70 = *(v0 + 144);
  v71 = *(v0 + 136);
  v86 = *(v0 + 128);
  v73 = *(v0 + 112);
  v72 = *(v0 + 120);
  v74 = *(v0 + 96);
  v75 = *(v68 + *(_s23IndexingPreflightResultVMa(0) + 28));

  v76 = sub_10005F288();
  v78 = sub_100009C10(v76, v77, v75);
  *(v0 + 296) = v78;

  if (v78)
  {
    v36 = v78;
  }

  v79 = swift_task_alloc();
  *(v0 + 304) = v79;
  *v79 = v0;
  v79[1] = sub_10002AFEC;
  v80 = *(v0 + 168);
  v81 = *(v0 + 176);
  v82 = *(v0 + 160);
  v94 = v69;
  v95 = v36;
  v93 = v70 & 1;
  v92 = v71;
  sub_10005E7C4(v82);
  sub_10005F6C8();

  return sub_10002B5D8();
}

uint64_t sub_10002AFEC()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  *(v3 + 312) = v0;

  if (!v0)
  {
    if (*(v3 + 296))
    {
      v9 = *(v3 + 296);
    }

    sub_100017954(v3 + 96, &unk_1000A5A40, &qword_10008D8E0);
  }

  sub_100012554();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10002B118()
{
  sub_100060400();
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v7 = v0[28];
  v6 = v0[29];
  sub_10002B2D8();
  v8 = *(v2 + 8);
  v9 = sub_100012498();
  v10(v9);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10002B1E0()
{
  sub_100060400();
  if (v0[37])
  {
    v1 = v0[37];
  }

  sub_100017954((v0 + 12), &unk_1000A5A40, &qword_10008D8E0);
  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v9 = v0[28];
  v8 = v0[29];
  sub_10002B2D8();
  v10 = *(v4 + 8);
  v11 = sub_1000124C8();
  v12(v11);

  sub_10001248C();

  return v13();
}

void sub_10002B2D8()
{
  sub_1000611A4();
  sub_100012578();
  v41 = sub_100088FA8();
  v0 = sub_100012368(v41);
  v43 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v0);
  sub_1000123E8();
  sub_10005FA24();
  v4 = sub_100088F78();
  v5 = sub_100012368(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1000123E8();
  v12 = v11 - v10;
  v13 = sub_100088F98();
  v14 = sub_100012368(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_1000123E8();
  sub_100088D58();
  v42 = sub_100088D78();
  v20 = v19;
  sub_100088D88();
  v21 = sub_100088F88();
  sub_100088FB8();
  v40 = sub_10008A698();
  if ((sub_10008A7B8() & 1) == 0)
  {
LABEL_13:

    (*(v7 + 8))(v12, v4);
    v35 = *(v16 + 8);
    v36 = sub_10005E464();
    v37(v36);
    sub_10006110C();
    return;
  }

  v38 = v7;
  v39 = v4;
  if ((v20 & 1) == 0)
  {
    v22 = v43;
    v23 = v42;
    if (v42)
    {
      v24 = v41;
LABEL_9:

      sub_100088FE8();

      v26 = *(v22 + 88);
      v27 = sub_10005E0B8();
      if (v28(v27) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v29 = "[Error] Interval already ended";
      }

      else
      {
        v30 = *(v22 + 8);
        v31 = sub_10005E0B8();
        v32(v31);
        v29 = "";
      }

      sub_10005E3C8();
      v33 = swift_slowAlloc();
      sub_100060448(v33);
      v34 = sub_100088F68();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v40, v34, v23, v29, v24, 2u);
      sub_10005CF50();

      v7 = v38;
      v4 = v39;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  v22 = v43;
  if (HIDWORD(v42))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10005EBF0();
  if (!v25)
  {
    v24 = v41;
    if (v42 >> 16 <= 0x10)
    {
      v23 = &v44;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}