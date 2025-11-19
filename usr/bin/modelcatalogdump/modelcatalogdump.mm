uint64_t sub_1000011F8()
{
  v0 = sub_100001F58(&qword_100020078, &qword_1000189D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_100017AF8();
  sub_100001FA0(v4, qword_100020388);
  sub_100001F20(v4, qword_100020388);
  v5 = sub_100017A88();
  sub_100002004(v3, 1, 1, v5);
  return sub_100017AE8();
}

uint64_t sub_100001314()
{
  sub_1000020E4();
  v1 = type metadata accessor for Status();
  *(v0 + 16) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000013A0, 0, 0);
}

uint64_t sub_1000013A0()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_100001E6C();
  sub_100017AB8();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1000014A0;
  v4 = v0[3];

  return sub_1000020FC();
}

uint64_t sub_1000014A0()
{
  sub_1000020E4();
  sub_1000020F0();
  v3 = *(v2 + 32);
  v4 = *v1;
  sub_1000020C8();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_10000160C;
  }

  else
  {
    v7 = sub_1000015A4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000015A4()
{
  sub_1000020E4();
  sub_100001EC4(*(v0 + 24));

  sub_1000020D8();

  return v1();
}

uint64_t sub_10000160C()
{
  sub_1000020E4();
  sub_100001EC4(*(v0 + 24));
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  sub_1000020D8();

  return v3();
}

uint64_t sub_100001698()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001724;

  return sub_100001314();
}

uint64_t sub_100001724()
{
  sub_1000020E4();
  sub_1000020F0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000020C8();
  *v4 = v3;

  sub_1000020D8();

  return v5();
}

uint64_t sub_100001804@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020048 != -1)
  {
    swift_once();
  }

  v2 = sub_100017AF8();
  v3 = sub_100001F20(v2, qword_100020388);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001900()
{
  v0[2] = sub_100017CB8();
  v0[3] = sub_100017CA8();
  v1 = async function pointer to static AsyncParsableCommand.main()[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  sub_100001D00();
  *v2 = v0;
  v2[1] = sub_1000019C0;

  return static AsyncParsableCommand.main()();
}

uint64_t sub_1000019C0()
{
  sub_1000020E4();
  sub_1000020F0();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_1000020C8();
  *v6 = v5;

  v8 = sub_100017C98();

  return _swift_task_switch(sub_100001AEC, v8, v7);
}

void sub_100001AEC()
{
  sub_1000020E4();
  v1 = *(v0 + 24);

  exit(0);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100001B90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001C1C;

  return sub_100001900();
}

uint64_t sub_100001C1C()
{
  sub_1000020E4();
  sub_1000020F0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000020C8();
  *v4 = v3;

  sub_1000020D8();

  return v5();
}

unint64_t sub_100001D00()
{
  result = qword_100020050;
  if (!qword_100020050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020050);
  }

  return result;
}

unint64_t sub_100001D68()
{
  result = qword_100020058;
  if (!qword_100020058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020058);
  }

  return result;
}

unint64_t sub_100001DC0()
{
  result = qword_100020060;
  if (!qword_100020060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020060);
  }

  return result;
}

unint64_t sub_100001E18()
{
  result = qword_100020068;
  if (!qword_100020068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020068);
  }

  return result;
}

unint64_t sub_100001E6C()
{
  result = qword_100020070;
  if (!qword_100020070)
  {
    type metadata accessor for Status();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020070);
  }

  return result;
}

uint64_t sub_100001EC4(uint64_t a1)
{
  v2 = type metadata accessor for Status();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001F20(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001F58(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_100001FA0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000202C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void type metadata accessor for SubscriptionDownloadStatus()
{
  if (!qword_100020080)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100020080);
    }
  }
}

uint64_t sub_1000020D8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1000020FC()
{
  sub_1000020E4();
  v1[33] = v0;
  v2 = sub_100001F58(&qword_100020088, &qword_100018A88);
  v1[34] = v2;
  sub_1000165D4(v2);
  v1[35] = v3;
  v5 = *(v4 + 64);
  v1[36] = sub_100016BC8();
  v6 = sub_100001F58(&qword_100020090, &qword_100018A90);
  v1[37] = v6;
  sub_1000165D4(v6);
  v1[38] = v7;
  v9 = *(v8 + 64);
  v1[39] = sub_100016BC8();
  v10 = sub_100017B58();
  v1[40] = v10;
  sub_1000165D4(v10);
  v1[41] = v11;
  v13 = *(v12 + 64);
  v1[42] = sub_100016BC8();
  v14 = sub_100017B88();
  v1[43] = v14;
  sub_1000165D4(v14);
  v1[44] = v15;
  v17 = *(v16 + 64);
  v1[45] = sub_100016BC8();
  v18 = type metadata accessor for Status();
  v1[46] = v18;
  sub_1000165D4(v18);
  v1[47] = v19;
  v1[48] = *(v20 + 64);
  v1[49] = sub_100016BC8();
  v21 = sub_100017B68();
  v1[50] = v21;
  sub_1000165D4(v21);
  v1[51] = v22;
  v24 = *(v23 + 64);
  v1[52] = sub_100016BC8();
  v25 = sub_100001F58(&qword_100020098, &qword_100018A98);
  sub_1000168F8(v25);
  v27 = *(v26 + 64);
  v1[53] = sub_100016BC8();
  v28 = sub_1000177A8();
  v1[54] = v28;
  sub_1000165D4(v28);
  v1[55] = v29;
  v31 = *(v30 + 64);
  v1[56] = sub_100016BC8();
  v32 = sub_1000176F8();
  v1[57] = v32;
  sub_1000165D4(v32);
  v1[58] = v33;
  v35 = *(v34 + 64);
  v1[59] = sub_100016DFC();
  v1[60] = swift_task_alloc();
  v36 = sub_1000179B8();
  v1[61] = v36;
  sub_1000165D4(v36);
  v1[62] = v37;
  v39 = *(v38 + 64);
  v1[63] = sub_100016DFC();
  v1[64] = swift_task_alloc();
  v40 = sub_100001F58(&qword_1000200A0, &qword_100018AA0);
  sub_1000168F8(v40);
  v42 = *(v41 + 64);
  v1[65] = sub_100016DFC();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v43 = sub_1000173E8();
  v1[68] = v43;
  sub_1000165D4(v43);
  v1[69] = v44;
  v46 = *(v45 + 64);
  v1[70] = sub_100016DFC();
  v1[71] = swift_task_alloc();
  v47 = sub_1000179D8();
  v1[72] = v47;
  sub_1000165D4(v47);
  v1[73] = v48;
  v50 = *(v49 + 64);
  v1[74] = sub_100016DFC();
  v1[75] = swift_task_alloc();
  v51 = sub_100016720();

  return _swift_task_switch(v51, v52, v53);
}

uint64_t sub_100002558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001724C();
  v21 = *(v20 + 600);
  v22 = *(v20 + 592);
  v23 = *(v20 + 584);
  v24 = *(v20 + 576);
  v25 = sub_1000175E8();
  sub_1000175B8();
  (*(v23 + 104))(v22, enum case for ResourceReadinessStatus.initializing(_:), v24);
  sub_100016CD4();
  v26 = sub_1000179C8();
  v27 = *(v23 + 8);
  v28 = sub_100016C0C();
  v27(v28);
  (v27)(v21, v24);
  if ((v26 & 1) != 0 && (v29 = *(v20 + 264), v30 = *(*(v20 + 368) + 24), sub_100001F58(&qword_1000200E8, &qword_100018AD8), sub_100017B08(), (*(v20 + 791) & 1) == 0))
  {
    sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    *(sub_100016B34() + 16) = xmmword_100018A20;
    sub_100016834();
    v53[7] = &type metadata for String;
    v53[4] = 0xD00000000000003CLL;
    v53[5] = v54;
    sub_100016614(v53);

    sub_10001653C();
    sub_100016A34();

    sub_1000167C8();
    sub_100016BAC();

    return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {
    v31 = *(v20 + 568);
    v32 = *(v20 + 512);
    v33 = *(v20 + 488);
    v34 = *(v20 + 496);
    sub_1000173D8();
    v35 = *(v25 + 48);
    v36 = *(v25 + 52);
    swift_allocObject();
    *(v20 + 608) = sub_1000175D8();
    *(v20 + 616) = sub_100001F58(&qword_1000200A8, &qword_100018AA8);
    *(v20 + 624) = *(v34 + 72);
    *(v20 + 776) = *(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100018A30;
    sub_100017998();
    sub_1000179A8();
    *(v20 + 240) = v37;
    *(v20 + 632) = sub_100016160(&qword_1000200B0, &type metadata accessor for DebugInformationOptions);
    *(v20 + 640) = sub_100001F58(&qword_1000200B8, &qword_100018AB0);
    sub_1000165BC();
    *(v20 + 648) = sub_1000161FC(v38, &qword_1000200B8, &qword_100018AB0);
    sub_100017DA8();
    sub_100016A98(&async function pointer to dispatch thunk of CatalogClient.debugInformation(options:));
    v63 = v39;
    swift_task_alloc();
    sub_100016904();
    *(v20 + 656) = v40;
    *v40 = v41;
    v40[1] = sub_100002918;
    v42 = *(v20 + 536);
    v43 = *(v20 + 512);
    sub_100016BAC();

    return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, v63, a18, a19, a20);
  }
}

uint64_t sub_100002918()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v4 = *v1;
  sub_1000020C8();
  *v5 = v4;

  v6 = v2[64];
  v7 = v2[62];
  v8 = v2[61];
  if (v0)
  {

    v9 = *(v7 + 8);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  v10 = sub_100016A00();
  v11(v10);
  sub_100016878();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100002D0C()
{
  sub_100016CE0();
  v2 = *v1;
  sub_100016884();
  *v4 = v3;
  v5 = *(v2 + 672);
  *v4 = *v1;
  *(v3 + 680) = v0;

  v6 = *(v2 + 664);
  if (v0)
  {
  }

  sub_100016878();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100002E48()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v112 = *(v0 + 368);
  v120 = *(v0 + 536);
  v134 = *(v0 + 264);
  sub_1000169E8();
  sub_100002004(v5, v6, v7, v4);
  (*(v2 + 32))(v1, v3, v4);
  sub_100001F58(&qword_1000200E0, &qword_100018AD0);
  v8 = sub_100016B34();
  *(v8 + 16) = xmmword_100018A20;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  sub_100016614(v8);

  v9 = sub_100016750();
  *(v9 + 16) = xmmword_100018A20;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = 0xD00000000000004FLL;
  *(v9 + 40) = 0x8000000100018430;
  sub_100016614(v9);

  v10 = sub_100016750();
  sub_1000167A8(v10, v11, v12, v13, v14, v15, v16, v17, v112, v120, v128, v134, v18);
  sub_100016834();
  v19[7] = &type metadata for String;
  v19[4] = 0xD00000000000001DLL;
  v19[5] = v20;
  sub_100016614(v19);

  v21 = sub_100016750();
  sub_1000167A8(v21, v22, v23, v24, v25, v26, v27, v28, v113, v121, v129, v135, v29);
  v30[7] = &type metadata for String;
  v30[4] = 0xD00000000000004FLL;
  v30[5] = 0x8000000100018430;
  sub_100016614(v30);

  sub_100006CE0();
  v31 = sub_100016750();
  *(v31 + 16) = xmmword_100018A20;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0xE000000000000000;
  sub_100016614(v31);

  v32 = *(v114 + 20);
  sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  sub_100017B08();
  sub_100006E94(v1, *(v0 + 789), v122, v33, v34, v35, v36, v37, v114, v122, 0x8000000100018430, v0 + 784, 1, 2, v142, v143, v144, v145, v146, v147);
  v38 = *(v2 + 8);
  v39 = sub_100016CD4();
  v40(v39);
  *(v0 + 688) = *(v0 + 680);
  v41 = *(v0 + 608);
  v42 = sub_10000D684();
  *(v0 + 696) = v42;
  v43 = v42[2];
  v123 = v42;
  if (v43)
  {
    v44 = (v42 + 4);
    v45 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100015D08(v44, v0 + 64);
      sub_10000D70C((v0 + 64), v0 + 184);
      v46 = sub_10001708C();
      sub_100001F58(v46, v47);
      v48 = sub_100016E14();
      sub_100001F58(v48, v49);
      if (swift_dynamicCast())
      {
        if (*(v0 + 168))
        {
          sub_10000D70C((v0 + 144), v0 + 104);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = v45[2];
            v53 = sub_1000166DC();
            v45 = sub_10000F274(v53, v54, v55, v45);
          }

          v51 = v45[2];
          v50 = v45[3];
          if (v51 >= v50 >> 1)
          {
            v56 = sub_1000168EC(v50);
            v45 = sub_10000F274(v56, v51 + 1, 1, v45);
          }

          v45[2] = v51 + 1;
          sub_10000D70C((v0 + 104), &v45[5 * v51 + 4]);
          goto LABEL_12;
        }
      }

      else
      {
        *(v0 + 176) = 0;
        *(v0 + 144) = 0u;
        *(v0 + 160) = 0u;
      }

      sub_100015DFC(v0 + 144, &qword_1000200D8, &qword_100018AC8);
LABEL_12:
      v44 += 40;
      if (!--v43)
      {
        goto LABEL_15;
      }
    }
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_15:
  *(v0 + 704) = v45;
  v57 = *(v0 + 368);
  v58 = *(v0 + 264);
  *(v0 + 712) = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
  v59 = sub_100016B34();
  sub_1000167A8(v59, v60, v61, v62, v63, v64, v65, v66, v115, v123, v130, v136, v67);
  v68[7] = &type metadata for String;
  v68[4] = 0;
  v68[5] = 0xE000000000000000;
  sub_100016614(v68);

  v69 = sub_100016750();
  sub_1000167A8(v69, v70, v71, v72, v73, v74, v75, v76, v116, v124, v131, v137, v77);
  v78[7] = &type metadata for String;
  v79 = v132;
  v78[4] = 0xD00000000000004FLL;
  v78[5] = v132;
  sub_100016614(v78);

  v80 = sub_100016750();
  sub_1000167A8(v80, v81, v82, v83, v84, v85, v86, v87, v117, v125, v132, v138, v88);
  sub_100016834();
  v89[7] = &type metadata for String;
  v89[4] = 0xD000000000000013;
  v89[5] = v90;
  sub_100016614(v89);

  v91 = sub_100016750();
  sub_1000167A8(v91, v92, v93, v94, v95, v96, v97, v98, v118, v126, v133, v139, v99);
  v100[7] = &type metadata for String;
  v100[4] = 0xD00000000000004FLL;
  v100[5] = v79;
  sub_100016614(v100);

  sub_1000056A4();
  v101 = sub_100016750();
  *(v101 + 16) = v141;
  *(v101 + 56) = &type metadata for String;
  *(v101 + 32) = 0;
  *(v101 + 40) = 0xE000000000000000;
  sub_100016614(v101);

  *(v0 + 780) = *(v57 + 20);
  *(v0 + 720) = sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  sub_100017B08();
  v102 = *v140;
  v103 = swift_task_alloc();
  *(v0 + 728) = v103;
  *v103 = v0;
  sub_1000168BC(v103, v104, v105, v106, v107, v108, v109, v110, v119, v127);

  return sub_10000B264();
}

uint64_t sub_1000032F8()
{
  sub_1000020E4();
  sub_1000020F0();
  v2 = *(v1 + 728);
  v3 = *v0;
  sub_1000020C8();
  *v4 = v3;

  v5 = sub_100016720();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100003B10()
{
  v2 = *v1;
  sub_100016884();
  *v4 = v3;
  v5 = v2[92];
  *v4 = *v1;
  *(v3 + 744) = v0;

  v6 = v2[63];
  v7 = v2[62];
  v8 = v2[61];
  if (v0)
  {

    v9 = *(v7 + 8);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  v10 = sub_100016A00();
  v11(v10);
  sub_100016878();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100004430()
{
  sub_1000020E4();
  sub_1000020F0();
  v2 = *(v1 + 760);
  v3 = *v0;
  sub_1000020C8();
  *v4 = v3;

  v5 = sub_100016720();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100004514()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 720);
    v2 = *(v0 + 780);
    v3 = *(v0 + 712);
    v4 = *(v0 + 264);

    v5 = sub_100016750();
    *(v5 + 16) = xmmword_100018A20;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    sub_100016614(v5);

    v6 = sub_100016750();
    v7 = sub_100016ACC(v6, xmmword_100018A20);
    v7[2].n128_u64[0] = 0xD00000000000004FLL;
    v7[2].n128_u64[1] = 0x8000000100018430;
    sub_100016614(v7);

    v8 = sub_100016750();
    v9 = sub_100016ACC(v8, xmmword_100018A20);
    v9[2].n128_u64[0] = 0xD000000000000026;
    v9[2].n128_u64[1] = 0x80000001000184D0;
    sub_100016614(v9);

    v10 = sub_100016750();
    v11 = sub_100016ACC(v10, xmmword_100018A20);
    v11[2].n128_u64[0] = 0xD00000000000004FLL;
    v11[2].n128_u64[1] = 0x8000000100018430;
    sub_100016614(v11);

    sub_100017B08();
    v12 = *(v0 + 788);
    v13 = swift_task_alloc();
    *(v0 + 768) = v13;
    *v13 = v0;
    v13[1] = sub_100004828;
    sub_10001702C(*(v0 + 696));

    return sub_10000B264();
  }

  else
  {
    v15 = *(v0 + 752);
    v16 = *(v0 + 696);
    v17 = *(v0 + 608);
    v18 = *(v0 + 552);
    v30 = *(v0 + 544);
    v31 = *(v0 + 568);
    v29 = *(v0 + 536);
    v19 = *(v0 + 304);
    v20 = *(v0 + 312);
    v22 = *(v0 + 288);
    v21 = *(v0 + 296);
    v24 = *(v0 + 272);
    v23 = *(v0 + 280);

    swift_unknownObjectRelease();

    (*(v23 + 8))(v22, v24);
    v25 = *(v19 + 8);
    v26 = sub_1000169F4();
    v27(v26);
    sub_100015DFC(v29, &qword_1000200A0, &qword_100018AA0);
    (*(v18 + 8))(v31, v30);
    sub_10001653C();
    sub_100016A34();

    sub_1000167C8();

    return v28();
  }
}

uint64_t sub_100004828()
{
  sub_100016CE0();
  v1 = *v0;
  v2 = *v0;
  sub_1000020C8();
  *v3 = v2;
  v4 = v1[96];
  v5 = *v0;
  *v3 = *v0;

  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v2[95] = v7;
  *v7 = v5;
  sub_10001659C();
  v8 = v1[36];
  v9 = v1[34];
  sub_100016878();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t type metadata accessor for Status()
{
  result = qword_1000202F8;
  if (!qword_1000202F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005634(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000056A4()
{
  v0 = sub_100017928();
  v23 = sub_10000FD00(v0);
  sub_10000FB74(&v23, sub_100015284, &qword_100020290, &qword_100018C70);

  v22 = v23;
  v1 = v23[2];
  if (v1)
  {
    v2 = v23 + 7;
    do
    {
      v3 = *(v2 - 3);
      v4 = *(v2 - 2);
      v5 = *(v2 - 1);
      v6 = *v2;
      v7 = sub_100017130();
      sub_100001F58(v7, v8);
      v9 = sub_100016B34();
      sub_100016CAC(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22, v17);
      v23 = v3;
      v24 = v4;

      v26._countAndFlagsBits = 9;
      v26._object = 0xE100000000000000;
      sub_100017C58(v26);
      v27._countAndFlagsBits = sub_100016C0C();
      sub_100017C58(v27);

      v18 = v23;
      v19 = v24;
      v9[3].n128_u64[1] = &type metadata for String;
      v9[2].n128_u64[0] = v18;
      v9[2].n128_u64[1] = v19;
      sub_100016614(v9);

      v2 += 4;
      --v1;
    }

    while (v1);
  }
}

void sub_100005814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100017394();
  a17 = v18;
  a18 = v19;
  v20 = sub_100001F58(&qword_100020110, &qword_100018AF0);
  sub_1000168F8(v20);
  v22 = *(v21 + 64);
  sub_100016B58();
  (__chkstk_darwin)();
  v24 = &a9 - v23;
  v25 = sub_100017438();
  v26 = sub_100016528(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_100016634();
  v33 = v32 - v31;
  v34 = sub_100017458();
  v35 = sub_100016528(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_100016634();
  sub_100017040();
  v40 = objc_opt_self();
  sub_100015104(v40);
  if (v41)
  {
    sub_1000173F8();
    sub_100017448();
    v42 = *(v37 + 8);
    v43 = sub_100016E50();
    v44(v43);
    sub_100017428();
    (*(v28 + 8))(v33, v25);
    v45 = sub_100017418();
    if (sub_10000567C(v24, 1, v45) != 1)
    {
      sub_100017408();
      v46 = *(*(v45 - 8) + 8);
      v47 = sub_100016A00();
      v48(v47);
      sub_1000170AC();
      sub_100017380();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100005A14()
{
  sub_100017394();
  v1 = v0;
  v2 = sub_100017C18();
  v3 = sub_1000168F8(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100016634();
  sub_100017040();
  if (v1 != v1)
  {
    sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v6 = sub_100016B34();
    sub_1000170DC(v6, xmmword_100018A20);
    v20 = 0;
    v21 = v7;
    sub_100017DD8(51);
    v23._object = 0x8000000100018760;
    v23._countAndFlagsBits = 0xD000000000000011;
    sub_100017C58(v23);
    v24._countAndFlagsBits = sub_100017E48();
    sub_100017C58(v24);

    v25._countAndFlagsBits = 0xD000000000000020;
    v25._object = 0x8000000100018780;
    sub_100017C58(v25);
    v8 = v21;
    v6[3].n128_u64[1] = &type metadata for String;
    v6[2].n128_u64[0] = 0;
    v6[2].n128_u64[1] = v8;
    sub_100016614(v6);
    goto LABEL_13;
  }

  bzero(&v20, 0x288uLL);
  sub_100001F58(&qword_1000201E8, &qword_100018BB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100018A40;
  *(v9 + 32) = 0xE00000001;
  *(v9 + 40) = 1;
  *(v9 + 44) = v1;
  v19 = 648;
  if (!sysctl((v9 + 32), 4u, &v20, &v19, 0, 0))
  {
    if ((v22 & 0x20) == 0)
    {
      sub_100017C08();
      sub_100017BF8();

      goto LABEL_14;
    }

LABEL_13:

LABEL_14:
    sub_100016C88();
    sub_100017380();
    return;
  }

  v10 = sub_100017B38();
  if (strerror(v10))
  {
    sub_100017C08();
    v11 = sub_100017BF8();
    v13 = v12;
    sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v14 = sub_100016B34();
    sub_1000170DC(v14, xmmword_100018A20);
    sub_100017DD8(41);

    sub_100016834();
    v18 = v15;
    v26._countAndFlagsBits = sub_100017E48();
    sub_100017C58(v26);

    v27._countAndFlagsBits = 8250;
    v27._object = 0xE200000000000000;
    sub_100017C58(v27);

    if (v13)
    {
      v16._countAndFlagsBits = v11;
    }

    else
    {
      v16._countAndFlagsBits = 0x3E6C696E3CLL;
    }

    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v16._object = v17;
    sub_100017C58(v16);

    v14[3].n128_u64[1] = &type metadata for String;
    v14[2].n128_u64[0] = 0xD000000000000023;
    v14[2].n128_u64[1] = v18;
    sub_100016614(v14);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_100005D7C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

void sub_100005DA0()
{
  sub_100016D0C();
  v0 = sub_100001F58(&qword_100020108, &qword_100018AE8);
  sub_1000168F8(v0);
  v2 = *(v1 + 64);
  sub_100016B58();
  __chkstk_darwin(v3);
  v5 = &v55 - v4;
  v6 = sub_1000176A8();
  v7 = sub_100016528(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100016634();
  v14 = v13 - v12;
  sub_1000176B8();
  sub_100016CEC(v5);
  if (v15)
  {
    sub_100015DFC(v5, &qword_100020108, &qword_100018AE8);
LABEL_21:
    sub_100016C58();
  }

  else
  {
    v57 = v9;
    v58 = v6;
    (*(v9 + 32))(v14, v5, v6);
    v16 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v17 = sub_100016B34();
    v61 = xmmword_100018A20;
    *(v17 + 16) = xmmword_100018A20;
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_100017DD8(22);

    sub_100016834();
    sub_100005814(v18, v19, v20, v21, v22, v23, v24, v25, v55, v56, v57, v58, v59, v60, v61.n128_i64[0], v61.n128_i64[1], 0xD000000000000014, v26);
    sub_100017C58(v64);

    v27 = v62;
    v28 = v63;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 32) = v27;
    *(v17 + 40) = v28;
    sub_100016614(v17);

    v60 = v16;
    v29 = sub_100016800();
    v29[1] = v61;
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_100017DD8(28);

    sub_100016834();
    v62 = 0xD00000000000001ALL;
    v63 = v30;
    sub_100017698();
    sub_100017C78();
    sub_100016E5C();

    v65._countAndFlagsBits = sub_1000169F4();
    sub_100017C58(v65);

    v31 = v62;
    v32 = v63;
    v29[3].n128_u64[1] = &type metadata for String;
    v29[2].n128_u64[0] = v31;
    v29[2].n128_u64[1] = v32;
    sub_100016614(v29);

    v56 = v14;
    v33 = sub_100017688();
    v34 = v33;
    v35 = 0;
    v36 = v33 + 64;
    v37 = 1 << *(v33 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v33 + 64);
    v40 = (v37 + 63) >> 6;
    sub_100016834();
    v59 = v41;
    while (v39)
    {
      v42 = v35;
LABEL_12:
      v43 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v44 = v43 | (v42 << 6);
      v45 = (*(v34 + 48) + 16 * v44);
      v46 = *v45;
      v47 = v45[1];
      v48 = *(*(v34 + 56) + v44);
      v49 = sub_100016B34();
      sub_1000170DC(v49, v61);
      v62 = 0;
      v63 = v50;

      sub_100017DD8(23);

      v62 = 0xD000000000000011;
      v63 = v59;
      v66._countAndFlagsBits = sub_100016E14();
      sub_100017C58(v66);

      v67._countAndFlagsBits = 8250;
      v67._object = 0xE200000000000000;
      sub_100017C58(v67);
      if (v48)
      {
        v51._countAndFlagsBits = 1702195828;
      }

      else
      {
        v51._countAndFlagsBits = 0x65736C6166;
      }

      if (v48)
      {
        v52 = 0xE400000000000000;
      }

      else
      {
        v52 = 0xE500000000000000;
      }

      v51._object = v52;
      sub_100017C58(v51);

      v53 = v62;
      v54 = v63;
      v49[3].n128_u64[1] = &type metadata for String;
      v49[2].n128_u64[0] = v53;
      v49[2].n128_u64[1] = v54;
      sub_100016614(v49);
    }

    while (1)
    {
      v42 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v42 >= v40)
      {

        (*(v57 + 8))(v56, v58);
        goto LABEL_21;
      }

      v39 = *(v36 + 8 * v42);
      ++v35;
      if (v39)
      {
        v35 = v42;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100006190()
{
  sub_100016D0C();
  v0 = sub_100017678();
  v1 = sub_100016528(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100016634();
  v6 = *(sub_1000176E8() + 16);
  if (v6)
  {
    v7 = *(v3 + 16);
    v8 = *(v3 + 80);
    sub_100016828();
    v11 = v9 + v10;
    v27 = v12;
    v26 = *(v13 + 56);
    v14 = (v13 - 8);
    do
    {
      v15 = sub_100016CD4();
      v27(v15);
      sub_100006448();
      sub_100001F58(&qword_1000200E0, &qword_100018AD0);
      v16 = sub_100016B34();
      sub_1000170DC(v16, xmmword_100018A20);
      v28 = v17;
      sub_100017DD8(54);
      v29._countAndFlagsBits = 0x6573207465737361;
      v29._object = 0xEB00000000203A74;
      sub_100017C58(v29);
      v30._countAndFlagsBits = sub_100017648();
      sub_100017C58(v30);

      v31._object = 0x80000001000186F0;
      v31._countAndFlagsBits = 0xD000000000000011;
      sub_100017C58(v31);
      v18 = sub_100017658();
      v20 = v19;
      v21 = *v14;
      v22 = sub_100016E68();
      v23(v22);
      if (v20)
      {
        v24._countAndFlagsBits = v18;
      }

      else
      {
        v24._countAndFlagsBits = 0x3E6C696E3CLL;
      }

      if (!v20)
      {
        v20 = 0xE500000000000000;
      }

      v24._object = v20;
      sub_100017C58(v24);

      v32._countAndFlagsBits = 0xD000000000000014;
      v32._object = 0x8000000100018710;
      sub_100017C58(v32);
      sub_100001F58(&qword_1000201D8, &qword_100018BA0);
      sub_100017C78();

      v33._countAndFlagsBits = sub_100016E14();
      sub_100017C58(v33);

      v16[3].n128_u64[1] = &type metadata for String;
      v16[2].n128_u64[0] = 0;
      v16[2].n128_u64[1] = v28;
      sub_100016614(v16);

      v11 += v26;
      --v6;
    }

    while (v6);

    sub_100016C58();
  }

  else
  {
    sub_100016C58();
  }
}

void *sub_100006448()
{
  v0 = sub_100017668();
  if (!v0)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v2++;
      v4 = v5;
      sub_100005A14();
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_10000F400(0, v3[2] + 1, 1, v3);
        }

        v11 = v3[2];
        v10 = v3[3];
        v12 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          v3 = sub_10000F400((v10 > 1), v11 + 1, 1, v3);
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_10000F400(0, v3[2] + 1, 1, v3);
        }

        v11 = v3[2];
        v13 = v3[3];
        v12 = v11 + 1;
        if (v11 >= v13 >> 1)
        {
          v3 = sub_10000F400((v13 > 1), v11 + 1, 1, v3);
        }

        v9 = 0xE400000000000000;
        v8 = 1818848828;
      }

      v3[2] = v12;
      v14 = &v3[3 * v11];
      v14[4] = v8;
      v14[5] = v9;
      v14[6] = v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_1000065C4()
{
  sub_100016D0C();
  v42 = sub_100017858();
  v0 = sub_100016528(v42);
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v0);
  sub_100016634();
  v7 = v6 - v5;
  v8 = sub_1000176D8();
  v9 = sub_100016528(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100016634();
  v16 = v15 - v14;
  v17 = *(sub_100017638() + 16);
  if (v17)
  {
    v19 = *(v11 + 16);
    v18 = v11 + 16;
    v20 = *(v18 + 64);
    sub_100016828();
    v23 = v21 + v22;
    v38 = *(v18 + 56);
    v39 = v24;
    v41 = (v2 + 8);
    v40 = v8;
    do
    {
      v39(v16, v23, v8);
      v45 = sub_1000176C8();
      v46 = v25;
      sub_100017808();
      v26 = sub_100017818();
      v28 = v27;
      v29 = *v41;
      (*v41)(v7, v42);
      v43 = v26;
      v44 = v28;
      sub_10000F3AC();
      LOBYTE(v26) = sub_1000172C0(&v43);

      if (v26)
      {
        goto LABEL_5;
      }

      v45 = sub_1000176C8();
      v46 = v30;
      sub_100017828();
      v31 = sub_100017818();
      v33 = v32;
      v29(v7, v42);
      v43 = v31;
      v44 = v33;
      LOBYTE(v31) = sub_1000172C0(&v43);

      if (v31)
      {
LABEL_5:
        sub_100001F58(&qword_1000200E0, &qword_100018AD0);
        v34 = sub_100016B34();
        *(v34 + 16) = xmmword_100018A20;
        v35 = sub_1000176C8();
        *(v34 + 56) = &type metadata for String;
        *(v34 + 32) = v35;
        *(v34 + 40) = v36;
        sub_100016614(v34);
      }

      v8 = v40;
      (*(v18 - 8))(v16, v40);
      v23 += v38;
      --v17;
    }

    while (v17);

    sub_100016C58();
  }

  else
  {
    sub_100016C58();
  }
}

uint64_t sub_1000068AC()
{
  v0 = sub_100017418();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001F58(&qword_100020118, &qword_100018AF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_100017788();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for SupportedArgument.specified<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    (*(v1 + 32))(v4, v9, v0);
    v11 = sub_100017408();
    (*(v1 + 8))(v4, v0);
    return v11;
  }

  if (v10 == enum case for SupportedArgument.all<A>(_:))
  {
    return 7105633;
  }

  result = sub_100017E58();
  __break(1u);
  return result;
}

void sub_100006AB4()
{
  sub_100017394();
  v1 = v0;
  v2 = sub_100017418();
  v3 = sub_100016528(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100016634();
  v10 = v9 - v8;
  v11 = sub_100001F58(&qword_100020118, &qword_100018AF8);
  sub_100016528(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_100016B58();
  __chkstk_darwin(v16);
  v18 = &v24[-v17];
  sub_100017788();
  v19 = (*(v13 + 88))(v18, v11);
  if (v19 == enum case for SupportedArgument.specified<A>(_:))
  {
    (*(v13 + 96))(v18, v11);
    (*(v5 + 32))(v10, v18, v2);
    v25[0] = sub_100017408();
    v25[1] = v20;
    __chkstk_darwin(v25[0]);
    *&v24[-16] = v25;
    sub_100013344(sub_100015898, &v24[-32], v1);
    v21 = *(v5 + 8);
    v22 = sub_1000171F4();
    v23(v22);

LABEL_4:
    sub_100017380();
    return;
  }

  if (v19 == enum case for SupportedArgument.all<A>(_:))
  {
    goto LABEL_4;
  }

  sub_100017E58();
  __break(1u);
}

uint64_t sub_100006CE0()
{
  v24 = &off_10001CB98;
  sub_10000FB74(&v24, sub_100015200, &qword_1000201C8, &qword_100018B90);
  v23 = v24;
  v0 = v24[2];
  if (v0)
  {
    v1 = (v24 + 7);
    do
    {
      v2 = *(v1 - 3);
      v3 = *(v1 - 2);
      v4 = *(v1 - 1);
      v5 = *v1;
      v6 = sub_100017130();
      sub_100001F58(v6, v7);
      v8 = sub_100016B34();
      sub_100016CAC(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v16);
      v24 = v2;
      v25 = v3;

      v27._countAndFlagsBits = 9;
      v27._object = 0xE100000000000000;
      sub_100017C58(v27);
      v28._countAndFlagsBits = sub_100016C0C();
      sub_100017C58(v28);

      v17 = v24;
      v18 = v25;
      v8[3].n128_u64[1] = &type metadata for String;
      v8[2].n128_u64[0] = v17;
      v8[2].n128_u64[1] = v18;
      sub_100016614(v8);

      v1 += 4;
      --v0;
    }

    while (v0);
  }

  sub_100001F58(&qword_1000200E0, &qword_100018AD0);
  *(sub_100016B34() + 16) = xmmword_100018A20;
  sub_100016834();
  v19[7] = &type metadata for String;
  v19[4] = 0xD000000000000061;
  v19[5] = v20;
  sub_100016614(v19);
}

void sub_100006E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100016D0C();
  a19 = v20;
  a20 = v21;
  v407 = v22;
  v401 = v23;
  v25 = v24;
  v400 = sub_100017548();
  v26 = sub_100016528(v400);
  v425 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_100016634();
  sub_100016AD8(v31 - v30);
  v411 = sub_1000174C8();
  v32 = sub_100016528(v411);
  v423 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_100016634();
  sub_100016AD8(v37 - v36);
  v420 = sub_100017418();
  v38 = sub_100016528(v420);
  v424 = v39;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_100016634();
  v419 = v43 - v42;
  v430 = sub_100001F58(&qword_100020118, &qword_100018AF8);
  sub_100016528(v430);
  v422 = v44;
  v46 = *(v45 + 64);
  sub_100016B58();
  __chkstk_darwin(v47);
  v432 = &v390 - v48;
  v434 = sub_100001F58(&qword_100020120, &qword_100018B00);
  sub_100016528(v434);
  v409 = v49;
  v51 = *(v50 + 64);
  sub_100016B58();
  __chkstk_darwin(v52);
  sub_100016AD8(&v390 - v53);
  v436 = sub_100017588();
  v54 = sub_100016528(v436);
  v410 = v55;
  v57 = *(v56 + 64);
  __chkstk_darwin(v54);
  sub_1000166FC();
  sub_1000167B8();
  __chkstk_darwin(v58);
  v412 = &v390 - v59;
  v60 = sub_100001F58(&qword_100020128, &qword_100018B08);
  v61 = sub_1000168F8(v60);
  v63 = *(v62 + 64);
  __chkstk_darwin(v61);
  sub_1000166FC();
  sub_1000167B8();
  __chkstk_darwin(v64);
  v66 = (&v390 - v65);
  v67 = sub_100017858();
  v68 = sub_100016528(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  __chkstk_darwin(v68);
  sub_1000166FC();
  sub_1000167B8();
  v74 = __chkstk_darwin(v73);
  v76 = &v390 - v75;
  __chkstk_darwin(v74);
  sub_100016AD8(&v390 - v77);
  v444 = sub_100017798();
  v78 = sub_100016528(v444);
  v80 = v79;
  v82 = *(v81 + 64);
  __chkstk_darwin(v78);
  sub_1000166FC();
  sub_1000167B8();
  __chkstk_darwin(v83);
  sub_10001704C();
  sub_1000167B8();
  __chkstk_darwin(v84);
  sub_10001704C();
  sub_1000167B8();
  __chkstk_darwin(v85);
  sub_10001704C();
  v449 = v86;
  __chkstk_darwin(v87);
  v89 = &v390 - v88;
  sub_100001F58(&qword_100020130, &qword_100018B10);
  sub_100016160(&qword_100020138, &type metadata accessor for UseCaseIdentifier);
  v421 = v67;
  v404 = sub_100017BA8();
  v90 = *(sub_100017738() + 16);
  v440 = v80;
  *&v426 = v70;
  v402 = v66;
  if (v90)
  {
    v92 = *(v80 + 16);
    v91 = v80 + 16;
    v448 = v92;
    v93 = *(v91 + 64);
    sub_100016828();
    v429 = v94;
    v442 = v95;
    v96 = v94 + v95;
    v447 = *(v91 + 56);
    v446 = (v70 + 8);
    v438 = (v91 + 16);
    v431 = v70 + 16;
    v435 = (v91 - 8);
    sub_10001718C();
    v97 = v404;
    v98 = v443;
    v437 = v91;
    do
    {
      (v448)(v89, v96, v25);
      sub_100017748();
      if (*(v97 + 2) && (v99 = sub_10001346C(v98), (v100 & 1) != 0))
      {
        v101 = *(*(v97 + 7) + 8 * v99);
        v433 = v90;
        v102 = v89;
        v103 = *v446;

        v104 = sub_100016E68();
        v445 = v103;
        (v103)(v104);
        v89 = v102;
        v90 = v433;
      }

      else
      {
        v105 = *v446;
        v106 = sub_100016E68();
        v445 = v107;
        (v107)(v106);
        v101 = &_swiftEmptyArrayStorage;
      }

      (v448)(v449, v89, v444);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = v101[2];
        v130 = sub_1000166DC();
        sub_10000F178(v130, v131, v132, v101, &qword_1000201B0, &qword_100018B80, v133, v134);
        v101 = v135;
      }

      v109 = v101[2];
      v108 = v101[3];
      if (v109 >= v108 >> 1)
      {
        sub_1000168EC(v108);
        sub_100016A0C();
        sub_10000F178(v136, v137, v138, v139, &qword_1000201B0, &qword_100018B80, v140, v141);
        v101 = v142;
      }

      v101[2] = v109 + 1;
      sub_10001681C(&a9);
      v110();
      sub_100017748();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v450 = v97;
      v112 = v76;
      v113 = sub_10001346C(v76);
      sub_1000167EC(v113, v114);
      if (v117)
      {
        goto LABEL_187;
      }

      v118 = v115;
      v119 = v116;
      sub_100001F58(&qword_100020140, &qword_100018B18);
      v25 = &v450;
      if (sub_100017DF8(isUniquelyReferenced_nonNull_native, v97))
      {
        v25 = v450;
        v120 = sub_10001346C(v112);
        v122 = v421;
        if ((v119 & 1) != (v121 & 1))
        {
          goto LABEL_193;
        }

        v118 = v120;
      }

      else
      {
        v122 = v421;
      }

      sub_10001718C();
      v97 = v450;
      if (v119)
      {
        v123 = *(v450 + 56);
        v124 = *(v123 + 8 * v118);
        *(v123 + 8 * v118) = v101;

        v76 = v112;
      }

      else
      {
        *(v450 + 8 * (v118 >> 6) + 64) |= 1 << v118;
        v76 = v112;
        (*(v426 + 16))(*(v97 + 6) + *(v426 + 72) * v118, v112, v122);
        *(*(v97 + 7) + 8 * v118) = v101;
        v125 = *(v97 + 2);
        v117 = __OFADD__(v125, 1);
        v126 = v125 + 1;
        if (v117)
        {
          goto LABEL_188;
        }

        *(v97 + 2) = v126;
      }

      (v445)(v76, v122);
      sub_10001681C(v454);
      v127(v89, v25);
      sub_1000171E8();
      v96 += v128;
      v90 = (v90 - 1);
      v98 = v443;
    }

    while (v90);
    v404 = v97;

    v66 = v402;
  }

  else
  {
  }

  v450 = sub_10000FC00(v404);
  sub_10000FA54(&v450);
  v413 = 0;
  object = 0;
  v144 = v450;
  v145 = *(v450 + 16);
  v406 = v426 + 32;
  v405 = v401 & 1;
  v443 = v440 + 16;
  v442 = v440 + 8;
  v429 = v422 + 88;
  v428 = enum case for SupportedArgument.specified<A>(_:);
  v418 = enum case for SupportedArgument.all<A>(_:);
  v417 = v422 + 96;
  v416 = v424 + 32;
  v415 = v424 + 8;
  sub_100016834();
  v424 = v146;
  v433 = (v409 + 8);
  v403 = v410 + 16;
  v431 = v410 + 32;
  v397 = v425 + 8;
  v396 = v423 + 8;
  v395 = v410 + 8;
  v394 = v147 + 8;
  sub_100016834();
  v392 = v148;
  sub_100016834();
  v391 = v149;
  v390 = 0x8000000100018640;
  v426 = xmmword_100018A20;
  v150 = v408;
  v399 = v144;
  for (i = v145; ; v145 = i)
  {
    if (object == v145)
    {
      v151 = sub_1000171F4();
      sub_100001F58(v151, v152);
      sub_100016EBC();
      sub_100002004(v153, v154, v155, v156);
      v157 = v145;
    }

    else
    {
      if (object < 0)
      {
        goto LABEL_189;
      }

      if (object >= *(v144 + 16))
      {
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
        goto LABEL_193;
      }

      v158 = sub_1000171F4();
      v160 = sub_100001F58(v158, v159);
      sub_100015B54(v144 + ((*(*(v160 - 8) + 80) + 32) & ~*(*(v160 - 8) + 80)) + *(*(v160 - 8) + 72) * object, v150, &qword_100020148, &qword_100018B20);
      v157 = (object + 1);
      sub_1000169E8();
      sub_100002004(v161, v162, v163, v160);
    }

    sub_1000158C0(v150, v66, &qword_100020128, &qword_100018B08);
    v164 = sub_1000171F4();
    v166 = sub_100001F58(v164, v165);
    sub_100016CEC(v66);
    if (v319)
    {
      goto LABEL_172;
    }

    v409 = v157;
    v167 = *(v66->n128_i64 + *(v166 + 48));
    sub_10001681C(&v435);
    v169 = v168(v414, v66, v421);
    __chkstk_darwin(v169);
    *(&v390 - 2) = v407;
    *(&v390 - 8) = v405;

    sub_100016C7C();
    v170 = v413;
    v447 = sub_1000097A8(v171, v172, v173);
    v174 = 0;
    v175 = *(v167 + 16);
    v176 = &_swiftEmptyArrayStorage;
    v177 = v441;
    while (v175 != v174)
    {
      if (v174 >= *(v167 + 16))
      {
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v178 = *(v440 + 80);
      sub_100016828();
      (*(v180 + 16))(v177, v167 + v179 + *(v180 + 72) * v174);
      v181 = sub_100017768();
      if (!v181)
      {
        goto LABEL_192;
      }

      v182 = v181;
      v183 = sub_100017778();
      if (!v183)
      {
        goto LABEL_191;
      }

      v184 = v183;
      v185 = *(v183 + 16);
      v186 = *(v182 + 2);
      v187 = v186 + v185;
      if (__OFADD__(v186, v185))
      {
        goto LABEL_174;
      }

      v188 = swift_isUniquelyReferenced_nonNull_native();
      if (!v188 || v187 > *(v182 + 3) >> 1)
      {
        if (v186 <= v187)
        {
          v189 = v186 + v185;
        }

        else
        {
          v189 = v186;
        }

        v182 = sub_10000F070(v188, v189, 1, v182);
      }

      if (*(v184 + 16))
      {
        if ((*(v182 + 3) >> 1) - *(v182 + 2) < v185)
        {
          goto LABEL_181;
        }

        swift_arrayInitWithCopy();

        if (v185)
        {
          v190 = *(v182 + 2);
          v117 = __OFADD__(v190, v185);
          v191 = v190 + v185;
          if (v117)
          {
            goto LABEL_185;
          }

          *(v182 + 2) = v191;
        }
      }

      else
      {

        if (v185)
        {
          goto LABEL_175;
        }
      }

      sub_10001681C(&a13);
      v192();
      v193 = *(v182 + 2);
      v194 = *(v176 + 2);
      if (__OFADD__(v194, v193))
      {
        goto LABEL_176;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v194 + v193 > *(v176 + 3) >> 1)
      {
        sub_100016A0C();
        v176 = sub_10000F070(v195, v196, v197, v198);
      }

      v177 = v441;
      if (*(v182 + 2))
      {
        if ((*(v176 + 3) >> 1) - *(v176 + 2) < v193)
        {
          goto LABEL_182;
        }

        swift_arrayInitWithCopy();

        if (v193)
        {
          v199 = *(v176 + 2);
          v117 = __OFADD__(v199, v193);
          v200 = v199 + v193;
          if (v117)
          {
            goto LABEL_186;
          }

          *(v176 + 2) = v200;
        }
      }

      else
      {

        if (v193)
        {
          goto LABEL_177;
        }
      }

      ++v174;
    }

    v201 = sub_100009334(v176);
    v450 = sub_100009A6C(v201);

    sub_10000F9E8(&v450);
    if (v170)
    {

      __break(1u);
      return;
    }

    v413 = 0;

    v202 = v450;
    v203 = v447;
    v204 = *(v447 + 16);
    v205 = v432;
    v425 = v450;
    if (v204)
    {
      v454[0] = &_swiftEmptyArrayStorage;
      v206 = v454;
      sub_1000140CC(0, v204, 0);
      sub_10001718C();
      v207 = 0;
      v208 = v454[0];
      v209 = *(v440 + 80);
      sub_100016828();
      v211 = v203 + v210;
      do
      {
        sub_1000171E8();
        if (v207 >= *(v213 + 16))
        {
          goto LABEL_180;
        }

        (*(v212 + 16))(v439, v211 + *(v212 + 72) * v207, v206);
        sub_100017788();
        sub_10001681C(&v452);
        v214 = v430;
        v216 = v215(v205, v430);
        if (v216 == v428)
        {
          sub_10001681C(&v447);
          v217(v205, v214);
          sub_10001681C(&v446);
          v218 = v419;
          v219 = sub_1000170AC();
          v220 = v420;
          v221(v219);
          v222 = sub_100017408();
          v224 = v223;
          sub_10001681C(&v445);
          v225(v218, v220);
        }

        else
        {
          if (v216 != v418)
          {
            goto LABEL_194;
          }

          v224 = 0xE300000000000000;
          v222 = 7105633;
        }

        v450 = 40;
        v451 = 0xE100000000000000;
        v456._countAndFlagsBits = v222;
        v456._object = v224;
        sub_100017C58(v456);

        sub_100017000();
        v226 = v450;
        v227 = v451;
        sub_10001681C(&a13);
        v206 = v444;
        v228(v439, v444);
        v454[0] = v208;
        v230 = v208[2];
        v229 = v208[3];
        if (v230 >= v229 >> 1)
        {
          v232 = sub_1000168EC(v229);
          v206 = v454;
          sub_1000140CC(v232, v230 + 1, 1);
          sub_10001718C();
          v208 = v454[0];
        }

        ++v207;
        v208[2] = v230 + 1;
        v231 = &v208[2 * v230];
        *(v231 + 4) = v226;
        *(v231 + 5) = v227;
        v205 = v432;
      }

      while (v204 != v207);
      v202 = v425;
    }

    else
    {
      v208 = &_swiftEmptyArrayStorage;
    }

    v233 = sub_100009334(v208);
    v234 = sub_100009CC8(v233);

    v449 = *(v202 + 16);
    sub_100017568();
    v235 = v412;
    sub_1000172A0();
    v236 = *v433;
    v237 = sub_100016C88();
    v236(v237);
    sub_100001F58(&qword_100020150, &qword_100018B28);
    v238 = v410;
    v239 = *(v410 + 72);
    v240 = (*(v410 + 80) + 32) & ~*(v410 + 80);
    v241 = swift_allocObject();
    v242 = sub_100016798(v241);
    (*(v238 + 16))(v243 + v240, v235, v436, v242);
    v244 = *(v234 + 2);
    v446 = v234;
    if (v244)
    {
      v448 = v241;
      v450 = &_swiftEmptyArrayStorage;
      sub_100014074();
      v245 = v450;
      v246 = (v234 + 40);
      do
      {
        v247 = *(v246 - 1);
        v248 = *v246;
        swift_bridgeObjectRetain_n();
        sub_100016CD4();
        sub_100017568();
        sub_1000172A0();

        v249 = sub_100016C88();
        v236(v249);
        v450 = v245;
        v251 = *(v245 + 2);
        v250 = *(v245 + 3);
        if (v251 >= v250 >> 1)
        {
          sub_1000168EC(v250);
          sub_100014074();
          v245 = v450;
        }

        *(v245 + 2) = v251 + 1;
        sub_10001681C(&v453);
        v252();
        v246 += 2;
        --v244;
      }

      while (v244);
      v241 = v448;
    }

    else
    {
      v245 = &_swiftEmptyArrayStorage;
    }

    v450 = v241;
    sub_10000A570(v245);
    sub_100001F58(&qword_100020158, &qword_100018B30);
    sub_1000165BC();
    sub_1000161FC(&qword_100020160, &qword_100020158, &qword_100018B30);
    sub_1000174B8();
    sub_100001F58(&qword_100020168, &qword_100018B38);
    sub_100016C7C();
    v449 = sub_100017BA8();
    sub_100016C7C();
    v448 = sub_100017BA8();
    v253 = *(v447 + 16);
    if (v253)
    {
      v254 = *(v440 + 80);
      sub_100016828();
      v257 = v255 + v256;
      v445 = *(v258 + 72);
      v438 = *(v258 + 16);
      sub_1000170FC();
      v259 = v444;
      v260 = v393;
      while (1)
      {
        v438(v260, v257, v259);
        v457._countAndFlagsBits = sub_1000068AC();
        v450 = 40;
        v451 = 0xE100000000000000;
        sub_100017C58(v457);

        sub_100017000();
        v261 = sub_100017778();
        if (!v261)
        {
          v261 = &_swiftEmptyArrayStorage;
        }

        sub_100009334(v261);
        v262 = swift_isUniquelyReferenced_nonNull_native();
        sub_100016DAC(v262);

        v449 = v450;
        v458._countAndFlagsBits = sub_1000068AC();
        v450 = 40;
        v451 = 0xE100000000000000;
        sub_100017C58(v458);

        sub_100017000();
        v263 = sub_100017768();
        if (!v263)
        {
          v263 = &_swiftEmptyArrayStorage;
        }

        sub_100009334(v263);
        v264 = swift_isUniquelyReferenced_nonNull_native();
        sub_100016DAC(v264);

        v448 = v450;
        v265 = sub_100017758();
        v266._countAndFlagsBits = sub_1000068AC();
        if (v265)
        {
          sub_100017320(v266);

          sub_100017000();
          v267 = v450;
          v268 = v451;
          v269 = v435;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v277 = *(v269 + 2);
            v278 = sub_1000166DC();
            v269 = sub_10000F070(v278, v279, v280, v269);
          }

          v271 = *(v269 + 2);
          v270 = *(v269 + 3);
          v272 = v271 + 1;
          if (v271 >= v270 >> 1)
          {
            sub_1000168EC(v270);
            sub_100016A0C();
            v285 = sub_10000F070(v281, v282, v283, v284);
            v269 = v285;
            v286 = v454;
LABEL_99:
            *(v286 - 32) = v285;
            goto LABEL_95;
          }

          v273 = v454;
        }

        else
        {
          sub_100017320(v266);

          sub_100017000();
          v267 = v450;
          v268 = v451;
          v269 = v437;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v287 = *(v269 + 2);
            v288 = sub_1000166DC();
            v269 = sub_10000F070(v288, v289, v290, v269);
          }

          v271 = *(v269 + 2);
          v274 = *(v269 + 3);
          v272 = v271 + 1;
          if (v271 >= v274 >> 1)
          {
            sub_1000168EC(v274);
            sub_100016A0C();
            v285 = sub_10000F070(v291, v292, v293, v294);
            v269 = v285;
            v286 = &v455;
            goto LABEL_99;
          }

          v273 = &v455;
        }

        *(v273 - 32) = v269;
LABEL_95:
        sub_10001681C(&a13);
        v259 = v444;
        v275(v260, v444);
        *(v269 + 2) = v272;
        v276 = &v269[16 * v271];
        *(v276 + 4) = v267;
        *(v276 + 5) = v268;
        v257 += v445;
        if (!--v253)
        {

          goto LABEL_101;
        }
      }
    }

    sub_1000170FC();
LABEL_101:
    v295 = v425;
    object = v446;
    v423 = *(v425 + 16);
    if (v423)
    {
      break;
    }

LABEL_159:

    sub_100017538();
    sub_1000174F8();
    sub_1000174E8();
    sub_1000174D8();
    sub_100017518();
    sub_100017508();
    sub_100017528();
    v66 = v435;
    v144 = v435[1].n128_u64[0];
    v150 = *(v437 + 16);
    v363 = sub_100017498();
    v365 = v364;
    if (v144 || v150 || (v401 & 1) != 0)
    {
      sub_100001F58(&qword_1000200E0, &qword_100018AD0);
      v66 = sub_100016B34();
      sub_100016798(v66);
      v450 = 0xD000000000000011;
      v451 = v392;
      v459._countAndFlagsBits = sub_100017818();
      object = v459._object;
      sub_100017C58(v459);

      v460._countAndFlagsBits = 58;
      v460._object = 0xE100000000000000;
      sub_100017C58(v460);
      v374 = v450;
      v375 = v451;
      v66[3].n128_u64[1] = &type metadata for String;
      v66[2].n128_u64[0] = v374;
      v66[2].n128_u64[1] = v375;
      sub_100016614(v66);

      if (v144)
      {
        v66 = sub_100016B34();
        sub_100016798(v66);
        v450 = 0x1000000000000012;
        v451 = v391;
        sub_100017C78();
        sub_100016E5C();

        v461._countAndFlagsBits = sub_1000169F4();
        sub_100017C58(v461);

        v376 = v450;
        v377 = v451;
        v66[3].n128_u64[1] = &type metadata for String;
        v66[2].n128_u64[0] = v376;
        v66[2].n128_u64[1] = v377;
        sub_100016614(v66);
      }

      if (v150)
      {
        v66 = sub_100016B34();
        sub_100016798(v66);
        v450 = 0x1000000000000016;
        v451 = v390;
        sub_100017C78();
        sub_100016E5C();

        v462._countAndFlagsBits = sub_1000169F4();
        sub_100017C58(v462);

        v378 = v450;
        v379 = v451;
        v66[3].n128_u64[1] = &type metadata for String;
        v66[2].n128_u64[0] = v378;
        v66[2].n128_u64[1] = v379;
        sub_100016614(v66);
      }

      sub_100016B64();
      v380 = sub_100016B34();
      sub_100016798(v380);
      v381[7] = &type metadata for String;
      v381[4] = v363;
      v381[5] = v365;
      sub_100016614(v381);

      sub_10001681C(v427);
      v382 = sub_100017178();
      v383(v382);
      sub_10001681C(&v426 + 8);
      v384 = sub_100017164();
      v385(v384);
      sub_10001681C(&v426);
      v386 = sub_10001713C();
      v387(v386);
      sub_10001681C(&v425);
      v388 = sub_1000171AC();
      v389(v388);
    }

    else
    {

      sub_10001681C(v427);
      v366 = sub_100017178();
      v367(v366);
      sub_10001681C(&v426 + 8);
      v368 = sub_100017164();
      v369(v368);
      sub_10001681C(&v426);
      v370 = sub_10001713C();
      v371(v370);
      sub_10001681C(&v425);
      v372 = sub_1000171AC();
      v373(v372);

      sub_100016B64();
    }
  }

  v296 = 0;
  v447 = v446[2];
  v422 = v425 + 32;
  v445 = v446 + 4;
  v297 = v449;
LABEL_103:
  sub_10000FDBC(v296, 1, v295);
  v438 = v296;
  v298 = (v422 + 16 * v296);
  v300 = *v298;
  v299 = v298[1];
  sub_100001F58(&qword_100020170, &qword_100018B40);
  inited = swift_initStackObject();
  sub_100016798(inited);
  v302[4] = 0xD000000000000016;
  v302[5] = v424;
  v302[6] = v300;
  v302[7] = v299;
  swift_bridgeObjectRetain_n();
  v303 = sub_100017BA8();
  sub_1000171E8();
  if (!v304)
  {
    goto LABEL_158;
  }

  v305 = 0;
  while (1)
  {
    if (v305 >= *(object + 16))
    {
      __break(1u);
      goto LABEL_170;
    }

    v306 = &v445[2 * v305];
    v308 = *v306;
    v307 = v306[1];
    v309 = *(v297 + 16);

    if (v309)
    {
      v310 = sub_100016B4C();
      v312 = sub_1000133F4(v310, v311);
      if (v313)
      {
        v314 = *(*(v297 + 56) + 8 * v312);
        if (*(v314 + 16))
        {
          v315 = *(v314 + 40);
          sub_100017EA8();

          sub_100017C38();
          sub_100017EC8();
          sub_100016EF8();
          while (1)
          {
            sub_100016EC8(v316);
            if ((v317 & 1) == 0)
            {
              break;
            }

            sub_1000171D4();
            v319 = v319 && v318 == v299;
            if (!v319)
            {
              v320 = sub_100017E68();
              v316 = object + 1;
              if ((v320 & 1) == 0)
              {
                continue;
              }
            }

            swift_isUniquelyReferenced_nonNull_native();
            v321 = sub_100016B10();
            sub_1000167EC(v321, v322);
            if (!v117)
            {
              v324 = v323;
              sub_100001F58(&qword_100020178, &qword_100018B48);
              if (sub_100016C38())
              {
                v325 = sub_100016B4C();
                sub_1000133F4(v325, v326);
                sub_100016D24();
                if (!v319)
                {
                  goto LABEL_193;
                }
              }

              if (v324)
              {

                sub_100016A70();
                v328 = 8756450;
                goto LABEL_139;
              }

              sub_100016644();
              *v348 = 8756450;
              sub_100016D44(v348);
              if (!v117)
              {
                goto LABEL_152;
              }

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
LABEL_189:
              __break(1u);
              goto LABEL_190;
            }

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
            goto LABEL_183;
          }
        }
      }
    }

    v329 = v448;
    if (!*(v448 + 16))
    {
      break;
    }

    v330 = sub_100016B4C();
    v332 = sub_1000133F4(v330, v331);
    if ((v333 & 1) == 0)
    {
      break;
    }

    v334 = *(*(v329 + 56) + 8 * v332);
    if (!*(v334 + 16))
    {
      break;
    }

    v335 = *(v334 + 40);
    sub_100017EA8();

    sub_100017C38();
    sub_100017EC8();
    sub_100016EF8();
    do
    {
      sub_100016EC8(v336);
      if ((v337 & 1) == 0)
      {

        goto LABEL_144;
      }

      sub_1000171D4();
      if (v319 && v338 == v299)
      {
        break;
      }

      v340 = sub_100017E68();
      v336 = object + 1;
    }

    while ((v340 & 1) == 0);

    swift_isUniquelyReferenced_nonNull_native();
    v341 = sub_100016B10();
    sub_1000167EC(v341, v342);
    if (v117)
    {
      goto LABEL_179;
    }

    v344 = v343;
    sub_100001F58(&qword_100020178, &qword_100018B48);
    if (sub_100016C38())
    {
      v345 = sub_100016B4C();
      sub_1000133F4(v345, v346);
      sub_100016D24();
      if (!v319)
      {
        goto LABEL_193;
      }
    }

    if ((v344 & 1) == 0)
    {
      sub_100016644();
      *v360 = 9215458;
      sub_100016D44(v360);
      if (!v117)
      {
LABEL_152:
        *(v303 + 16) = v349;
        goto LABEL_153;
      }

      goto LABEL_184;
    }

    sub_100016A70();
    v328 = 9215458;
LABEL_139:
    *v327 = v328;
    v347 = 0xA300000000000000;
LABEL_150:
    v327[1] = v347;

LABEL_153:
    v297 = v449;
    object = v446;
    ++v305;
    sub_1000171E8();
    if (v305 == v359)
    {
LABEL_158:
      v296 = v438 + 1;

      v361 = sub_100009DAC(v303);

      v362._rawValue = v361;
      sub_1000174A8(v362);

      v295 = v425;
      if (v296 == v423)
      {
        goto LABEL_159;
      }

      goto LABEL_103;
    }
  }

LABEL_144:
  swift_isUniquelyReferenced_nonNull_native();
  v350 = sub_100016B10();
  sub_1000167EC(v350, v351);
  if (v117)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v353 = v352;
  sub_100001F58(&qword_100020178, &qword_100018B48);
  if (sub_100016C38())
  {
    v354 = sub_100016B4C();
    sub_1000133F4(v354, v355);
    sub_100016D24();
    if (!v319)
    {
      while (1)
      {
LABEL_193:
        sub_100017E88();
        __break(1u);
LABEL_194:
        sub_100017E58();
        __break(1u);
      }
    }
  }

  if (v353)
  {

    sub_100016A70();
    sub_100016EA4(v356);
    goto LABEL_150;
  }

  sub_100016644();
  sub_100016EA4(v357);
  sub_100016D44(v358);
  if (!v117)
  {
    goto LABEL_152;
  }

LABEL_171:
  __break(1u);
LABEL_172:

  sub_100016C58();
}

uint64_t sub_100008E50(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  v62 = sub_100001F58(&qword_100020148, &qword_100018B20);
  v2 = *(*(v62 - 8) + 64);
  v3 = __chkstk_darwin(v62);
  v61 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v60 = &v59 - v6;
  __chkstk_darwin(v5);
  v8 = &v59 - v7;
  v9 = sub_100017858();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  sub_100001F58(&qword_1000201A0, &qword_100018B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100018A30;
  sub_100017808();
  v18 = sub_100017818();
  v20 = v19;
  v21 = *(v10 + 8);
  v21(v16, v9);
  *(inited + 32) = v18;
  *(inited + 40) = v20;
  v22 = v9;
  v23 = v62;
  sub_100017828();
  v24 = sub_100017818();
  v26 = v25;
  v21(v14, v22);
  *(inited + 48) = v24;
  *(inited + 56) = v26;
  v27 = sub_100009334(inited);
  v28 = v63;
  sub_100015B54(v63, v8, &qword_100020148, &qword_100018B20);
  v29 = *&v8[*(v23 + 48)];

  v30 = sub_100017818();
  v32 = v31;
  v21(v8, v22);
  LOBYTE(v30) = sub_1000093F4(v30, v32, v27);

  if (v30)
  {
    sub_100015B54(v64, v8, &qword_100020148, &qword_100018B20);
    v33 = *&v8[*(v23 + 48)];

    v34 = sub_100017818();
    v36 = v35;
    v21(v8, v22);
    LOBYTE(v34) = sub_1000093F4(v34, v36, v27);

    if ((v34 & 1) == 0)
    {
      v46 = 1;
LABEL_15:

      return v46 & 1;
    }
  }

  sub_100015B54(v64, v8, &qword_100020148, &qword_100018B20);
  v37 = *&v8[*(v23 + 48)];

  v38 = sub_100017818();
  v40 = v39;
  v21(v8, v22);
  LOBYTE(v38) = sub_1000093F4(v38, v40, v27);

  if ((v38 & 1) == 0)
  {

    v45 = v28;
    goto LABEL_7;
  }

  sub_100015B54(v28, v8, &qword_100020148, &qword_100018B20);
  v41 = *&v8[*(v23 + 48)];

  v42 = sub_100017818();
  v44 = v43;
  v21(v8, v22);
  LOBYTE(v42) = sub_1000093F4(v42, v44, v27);
  v45 = v28;

  if (v42)
  {
LABEL_7:
    v47 = v60;
    sub_100015B54(v45, v60, &qword_100020148, &qword_100018B20);
    v48 = *(v47 + *(v23 + 48));

    v49 = sub_100017818();
    v51 = v50;
    v21(v47, v22);
    v52 = v61;
    sub_100015B54(v64, v61, &qword_100020148, &qword_100018B20);
    v53 = *(v52 + *(v23 + 48));

    v54 = sub_100017818();
    v56 = v55;
    v21(v52, v22);
    if (v49 == v54 && v51 == v56)
    {
      v46 = 0;
    }

    else
    {
      v46 = sub_100017E68();
    }

    goto LABEL_15;
  }

  v46 = 0;
  return v46 & 1;
}

uint64_t sub_100009334(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100017D18();
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

    sub_100013504(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

BOOL sub_1000093F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_100017EA8();
  sub_100017C38();
  v7 = sub_100017EC8();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_100017E68();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_1000094E0(uint64_t a1, uint64_t a2, int a3)
{
  v22 = a3;
  v21[1] = a1;
  v4 = sub_100001F58(&qword_1000200A0, &qword_100018AA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v21 - v6;
  v8 = sub_100001F58(&qword_100020108, &qword_100018AE8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v21 - v10;
  v12 = sub_1000176A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015B54(a2, v7, &qword_1000200A0, &qword_100018AA0);
  v17 = sub_1000176F8();
  if (sub_10000567C(v7, 1, v17) == 1)
  {
    sub_100015DFC(v7, &qword_1000200A0, &qword_100018AA0);
    sub_100002004(v11, 1, 1, v12);
LABEL_4:
    sub_100015DFC(v11, &qword_100020108, &qword_100018AE8);
    goto LABEL_5;
  }

  sub_1000176B8();
  (*(*(v17 - 8) + 8))(v7, v17);
  if (sub_10000567C(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  (*(v13 + 32))(v16, v11, v12);
  if ((v22 & 1) == 0)
  {
    sub_100017698();
    sub_100006AB4();
    v18 = v20;

    (*(v13 + 8))(v16, v12);
    return v18 & 1;
  }

  (*(v13 + 8))(v16, v12);
LABEL_5:
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1000097A8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v34 = sub_100017798();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v34);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = 0;
  v33 = *(a3 + 16);
  v30 = v5 + 16;
  v13 = (v5 + 8);
  v27 = (v5 + 32);
  v29 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v33 == v12)
    {

      return v29;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    v16 = a3;
    (*(v5 + 16))(v11, a3 + v14 + v15 * v12, v34);
    v17 = v31(v11);
    if (v3)
    {
      (*v13)(v11, v34);
      v24 = v29;

      return v24;
    }

    if (v17)
    {
      v26 = *v27;
      v26(v28, v11, v34);
      v18 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v18;
      }

      else
      {
        v21 = v18[2];
        sub_1000140EC();
        v20 = v35;
      }

      a3 = v16;
      v22 = v20[2];
      v23 = (v22 + 1);
      if (v22 >= v20[3] >> 1)
      {
        v29 = (v22 + 1);
        v25 = v22;
        sub_1000140EC();
        v23 = v29;
        v22 = v25;
        a3 = v16;
        v20 = v35;
      }

      ++v12;
      v20[2] = v23;
      v29 = v20;
      result = (v26)(v20 + v14 + v22 * v15, v28, v34);
    }

    else
    {
      result = (*v13)(v11, v34);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

void *sub_100009A6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10000F538(*(a1 + 16), 0);
  v4 = sub_1000152CC(&v6, v3 + 4, v2, a1);
  sub_1000158B8();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_100009AFC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_1000178A8();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = &_swiftEmptyArrayStorage;
  sub_100014144();
  v11 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v20[0] = *(i - 1);
    v20[1] = v13;

    v18(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v11;
    v14 = v11[2];
    if (v14 >= v11[3] >> 1)
    {
      sub_100014144();
      v11 = v21;
    }

    v11[2] = v14 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v17);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

char *sub_100009CC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_10000F538(*(a1 + 16), 0);
  v4 = sub_1000152CC(&v6, v3 + 4, v1, a1);

  sub_1000158B8();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = &_swiftEmptyArrayStorage;
  }

  v6 = v3;
  sub_10000F9E8(&v6);
  return v6;
}

unint64_t sub_100009DAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001F58(&qword_100020180, &qword_100018B50);
    v2 = sub_100017E18();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v26 = *v15;
    v27 = v15[1];

    sub_100001F58(&qword_100020188, &qword_100018B58);
    swift_dynamicCast();
    v31 = v29;
    v32 = v30;
    v28 = v29;
    v29 = v30;
    result = sub_1000133F4(v14, v13);
    v16 = result;
    if (v17)
    {
      v18 = (v2[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      result = sub_10001518C(&v28, v2[7] + 32 * v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      v21 = (v2[7] + 32 * result);
      v22 = v29;
      *v21 = v28;
      v21[1] = v22;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100009FEC()
{
  sub_100001F58(&qword_100020170, &qword_100018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100018A50;
  sub_100016834();
  *(v1 + 32) = 0xD000000000000021;
  *(v1 + 40) = v2;
  *(inited + 48) = sub_1000178C8();
  *(inited + 56) = v3;
  *(inited + 64) = 0x746E6169726156;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = sub_100017938();
  *(inited + 88) = v4;
  *(inited + 96) = 1701869908;
  *(inited + 104) = 0xE400000000000000;
  sub_1000178E8();
  sub_100016C94();
  if (v7)
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = v5;
  }

  *(inited + 112) = v6;
  *(inited + 120) = v8;
  *(inited + 128) = 0x4E20656372756F53;
  *(inited + 136) = 0xEB00000000656D61;
  sub_1000178D8();
  sub_100016C94();
  if (v7)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = v9;
  }

  *(inited + 144) = v10;
  *(inited + 152) = v11;
  *(inited + 160) = 0x737574617453;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 176) = sub_100017918();
  *(inited + 184) = v12;
  *(inited + 192) = 0x636E657265686F43;
  *(inited + 200) = 0xE900000000000065;
  sub_1000178F8();
  sub_100016C94();
  if (v7)
  {
    v15 = 0xE000000000000000;
  }

  else
  {
    v15 = v13;
  }

  *(inited + 208) = v14;
  *(inited + 216) = v15;
  *(inited + 224) = 0x6E6F6973726556;
  *(inited + 232) = 0xE700000000000000;
  sub_100017948();
  sub_100016C94();
  if (v7)
  {
    v18 = 0xE000000000000000;
  }

  else
  {
    v18 = v16;
  }

  *(inited + 240) = v17;
  *(inited + 248) = v18;
  *(inited + 256) = 0x2079616C70736944;
  *(inited + 264) = 0xEF6E6F6973726556;
  sub_100017908();
  sub_100016C94();
  if (v7)
  {
    v21 = 0xE000000000000000;
  }

  else
  {
    v21 = v19;
  }

  *(inited + 272) = v20;
  *(inited + 280) = v21;
  *(inited + 288) = 0x6553207465737341;
  *(inited + 296) = 0xE900000000000074;
  sub_100017958();
  sub_100016C94();
  if (v7)
  {
    v24 = 0xE000000000000000;
  }

  else
  {
    v24 = v22;
  }

  *(inited + 304) = v23;
  *(inited + 312) = v24;
  return sub_100017BA8();
}

void sub_10000A1C4()
{
  sub_100016D0C();
  v1 = v0;
  v2 = sub_100017858();
  v3 = sub_100016528(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100016634();
  v10 = v9 - v8;
  v11 = 0;
  v12 = *(v1 + 16);
  v42 = v1;
  v43 = v12;
  v40 = (v5 + 8);
  v41 = v5 + 16;
  v13 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v43 == v11)
    {
      goto LABEL_21;
    }

    v14 = *(v5 + 80);
    sub_100016828();
    v16 = v2;
    (*(v5 + 16))(v10, v42 + v15 + *(v5 + 72) * v11, v2);
    v17 = sub_1000175A8();
    v18 = sub_100017818();
    if (!*(v17 + 16))
    {

LABEL_20:

      (*v40)(v10, v16);
LABEL_21:
      sub_100016C58();
      return;
    }

    v20 = sub_1000133F4(v18, v19);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_20;
    }

    v23 = *(*(v17 + 56) + 8 * v20);

    __chkstk_darwin(v24);
    *(&v39 - 2) = v10;
    v25 = sub_100009AFC(sub_100015E54, (&v39 - 4), v23);

    v26 = *(v25 + 16);
    v27 = v13[2];
    v28 = v27 + v26;
    if (__OFADD__(v27, v26))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v28 > v13[3] >> 1)
    {
      if (v27 <= v28)
      {
        v30 = v27 + v26;
      }

      else
      {
        v30 = v27;
      }

      sub_10000F178(isUniquelyReferenced_nonNull_native, v30, 1, v13, &qword_100020278, &qword_100018C60, &type metadata accessor for AssetManagerShared.UsageAliasSubscription, &type metadata accessor for AssetManagerShared.UsageAliasSubscription);
      v13 = v31;
    }

    if (*(v25 + 16))
    {
      v32 = (v13[3] >> 1) - v13[2];
      v33 = *(sub_1000178A8() - 8);
      if (v32 < v26)
      {
        goto LABEL_24;
      }

      v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v35 = *(v33 + 72);
      swift_arrayInitWithCopy();

      if (v26)
      {
        v36 = v13[2];
        v37 = __OFADD__(v36, v26);
        v38 = v36 + v26;
        if (v37)
        {
          goto LABEL_25;
        }

        v13[2] = v38;
      }
    }

    else
    {

      if (v26)
      {
        goto LABEL_23;
      }
    }

    v2 = v16;
    (*v40)(v10, v16);
    ++v11;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_10000A504(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100017818();

  return sub_100017888();
}

uint64_t sub_10000A570(uint64_t a1)
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

  sub_100013260(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_100017588();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10000A670()
{
  sub_1000020E4();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = sub_100017728();
  v1[18] = v7;
  sub_1000165D4(v7);
  v1[19] = v8;
  v10 = *(v9 + 64);
  v1[20] = sub_100016BC8();
  v11 = sub_1000178A8();
  v1[21] = v11;
  sub_1000165D4(v11);
  v1[22] = v12;
  v14 = *(v13 + 64);
  v1[23] = sub_100016BC8();
  v15 = sub_100001F58(&qword_100020260, &qword_100018C48);
  sub_1000168F8(v15);
  v17 = *(v16 + 64);
  v1[24] = sub_100016BC8();
  v18 = sub_100001F58(&qword_100020268, &qword_100018C50);
  sub_1000168F8(v18);
  v20 = *(v19 + 64);
  v1[25] = sub_100016BC8();
  v21 = sub_100017858();
  v1[26] = v21;
  sub_1000165D4(v21);
  v1[27] = v22;
  v24 = *(v23 + 64);
  v1[28] = sub_100016DFC();
  v1[29] = swift_task_alloc();
  v25 = sub_1000179F8();
  v1[30] = v25;
  sub_1000165D4(v25);
  v1[31] = v26;
  v28 = *(v27 + 64);
  v1[32] = sub_100016BC8();
  sub_100016D74();
  v1[33] = v29;
  v31 = *(v30 + 64);
  v1[34] = sub_100016BC8();
  v32 = sub_100016720();

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_10000A8A8()
{
  (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 136), *(v0 + 120));
  sub_100001F58(&qword_1000200D0, &qword_100018AC0);
  sub_100016C7C();
  if (swift_dynamicCast())
  {
    sub_10000D70C((v0 + 56), v0 + 16);
    v1 = *(v0 + 48);
    sub_100015E74((v0 + 16), *(v0 + 40));
    v2 = *(v1 + 8);
    v3 = *(sub_100017608() + 16);
    if (v3)
    {
      v4 = *(v0 + 248);
      v5 = *(v0 + 216);
      v116 = *(v4 + 16);
      v6 = *(v4 + 80);
      sub_100016828();
      v9 = v7 + v8;
      v11 = (v10 - 8);
      v13 = (v12 + 32);
      v14 = &_swiftEmptyArrayStorage;
      v111 = (v12 + 8);
      v113 = v12;
      v114 = *(v10 + 56);
      do
      {
        v15 = *(v0 + 256);
        v16 = *(v0 + 240);
        v17 = *(v0 + 224);
        v18 = *(v0 + 192);
        v19 = sub_100016E50();
        v116(v19);
        sub_1000179E8();
        sub_100017838();
        (*v11)(v15, v16);
        v20 = sub_1000177F8();
        v21 = sub_10000567C(v18, 1, v20);
        v22 = *(v0 + 208);
        if (v21 == 1)
        {
          v23 = *(v0 + 192);
          (*v111)(*(v0 + 224), *(v0 + 208));
          sub_100015DFC(v23, &qword_100020260, &qword_100018C48);
          v24 = 1;
        }

        else
        {
          v25 = *(v0 + 200);
          sub_100015DFC(*(v0 + 192), &qword_100020260, &qword_100018C48);
          v26 = *v13;
          v27 = sub_100017110();
          v28(v27);
          v24 = 0;
        }

        v29 = *(v0 + 200);
        v30 = *(v0 + 208);
        sub_100002004(v29, v24, 1, v30);
        if (sub_10000567C(v29, 1, v30) == 1)
        {
          sub_100015DFC(*(v0 + 200), &qword_100020268, &qword_100018C50);
        }

        else
        {
          v31 = *v13;
          (*v13)(*(v0 + 232), *(v0 + 200), *(v0 + 208));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = *(v14 + 2);
            v40 = sub_1000166DC();
            sub_10000F178(v40, v41, v42, v14, &qword_100020270, &qword_100018C58, v43, v44);
            v14 = v45;
          }

          v33 = *(v14 + 2);
          v32 = *(v14 + 3);
          if (v33 >= v32 >> 1)
          {
            v46 = sub_1000168EC(v32);
            sub_10000F178(v46, v33 + 1, 1, v14, &qword_100020270, &qword_100018C58, &type metadata accessor for UseCaseIdentifier, &type metadata accessor for UseCaseIdentifier);
            v14 = v47;
          }

          v34 = *(v0 + 232);
          v35 = *(v0 + 208);
          *(v14 + 2) = v33 + 1;
          v36 = *(v113 + 80);
          sub_100016828();
          v31(&v14[v37 + *(v38 + 72) * v33]);
        }

        v9 += v114;
        --v3;
      }

      while (v3);
    }

    else
    {

      v14 = &_swiftEmptyArrayStorage;
    }

    if (*(v14 + 2))
    {
      sub_10000A1C4();
      v55 = v54;

      v56 = *(v55 + 16);
      if (v56)
      {
        v57 = 0;
        v58 = *(*(v0 + 176) + 80);
        sub_100016828();
        v115 = v55 + v60;
        v117 = v61;
        v62 = *(v0 + 104);
        v118 = (v61 + 8);
        while (v57 < *(v55 + 16))
        {
          (*(v117 + 16))(*(v0 + 184), v115 + *(v117 + 72) * v57, *(v0 + 168));
          v63 = sub_100017878();
          v65 = v64;
          if (*(v62 + 16))
          {
            v66 = v63;
            v67 = *(v62 + 40);
            sub_100017EA8();
            sub_100017C38();
            v68 = sub_100017EC8();
            v69 = ~(-1 << *(v62 + 32));
            while (1)
            {
              v70 = v68 & v69;
              if (((*(v62 + 56 + (((v68 & v69) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v68 & v69)) & 1) == 0)
              {
                break;
              }

              v71 = (*(v62 + 48) + 16 * v70);
              if (*v71 != v66 || v71[1] != v65)
              {
                v73 = sub_100017E68();
                v68 = v70 + 1;
                if ((v73 & 1) == 0)
                {
                  continue;
                }
              }

              v74 = *(v0 + 184);
              v75 = *(v0 + 128);
              v112 = *(v0 + 136);
              v76 = *(v0 + 120);

              v77._rawValue = sub_100017898();
              LOBYTE(v76) = sub_100017628(v77);

              v78 = *(v0 + 184);
              v79 = *(v0 + 168);
              if ((v76 & 1) == 0)
              {
                v80 = *v118;
                v81 = sub_100016C88();
                v59 = v82(v81);
                goto LABEL_33;
              }

              v106 = *(v0 + 112);
              v107 = *(v0 + 96);

              sub_100017D88();
              v108 = *v118;
              v109 = sub_100016C88();
              v110(v109);
              goto LABEL_41;
            }
          }

          (*v118)(*(v0 + 184), *(v0 + 168));

LABEL_33:
          if (++v57 == v56)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
        return AssetSubscription.status()(v59);
      }

LABEL_34:

      v83 = *(v0 + 96);
      v84 = &enum case for AssetSubscriptionStatus.unknown(_:);
    }

    else
    {
      v86 = *(v0 + 152);
      v85 = *(v0 + 160);
      v87 = *(v0 + 144);

      v88 = *(v0 + 48);
      sub_100015E74((v0 + 16), *(v0 + 40));
      sub_1000178B8();
      sub_100017708();
      v89 = *(v86 + 8);
      *(v0 + 280) = v89;
      *(v0 + 288) = (v86 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v89(v85, v87);
      sub_100016C88();
      v90 = sub_100017C48();

      if (v90 >= 1)
      {
        v91 = *(v0 + 160);
        v92 = *(v0 + 48);
        sub_100015E74((v0 + 16), *(v0 + 40));
        sub_100016A00();
        sub_1000178B8();
        v93 = async function pointer to AssetSubscription.status()[1];
        swift_task_alloc();
        sub_100016904();
        *(v0 + 296) = v94;
        *v94 = v95;
        v94[1] = sub_10000B070;
        v96 = *(v0 + 160);
        v59 = *(v0 + 96);

        return AssetSubscription.status()(v59);
      }

      v97 = *(v0 + 96);
      v84 = &enum case for AssetSubscriptionStatus.unmanaged(_:);
    }

    v98 = *v84;
    v99 = sub_100017978();
    sub_100016710(v99);
    v101 = *(v100 + 104);
    v102 = sub_100016C00();
    v103(v102);
LABEL_41:
    sub_10000202C((v0 + 16));
  }

  else
  {
    v48 = *(v0 + 96);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_100015DFC(v0 + 56, &qword_1000200D8, &qword_100018AC8);
    v49 = sub_100017978();
    sub_100016710(v49);
    v51 = *(v50 + 104);
    v52 = sub_100016C00();
    v53(v52);
  }

  sub_100016DD4();

  sub_1000020D8();

  return v104();
}

uint64_t sub_10000B070()
{
  sub_100016CE0();
  sub_1000020F0();
  v2 = v1[37];
  v3 = v1[36];
  v4 = v1[35];
  v5 = v1[20];
  v6 = v1[18];
  v7 = *v0;
  sub_1000020C8();
  *v8 = v7;

  v9 = sub_100016C00();
  v4(v9);
  v10 = sub_100016720();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10000B1B4()
{
  sub_10000202C((v0 + 16));
  sub_100016DD4();

  sub_1000020D8();

  return v1();
}

uint64_t sub_10000B264()
{
  sub_1000020E4();
  *(v0 + 825) = v1;
  *(v0 + 824) = v2;
  *(v0 + 416) = v3;
  v4 = sub_100017548();
  *(v0 + 424) = v4;
  sub_1000165D4(v4);
  *(v0 + 432) = v5;
  v7 = *(v6 + 64);
  *(v0 + 440) = sub_100016BC8();
  v8 = sub_1000174C8();
  *(v0 + 448) = v8;
  sub_1000165D4(v8);
  *(v0 + 456) = v9;
  v11 = *(v10 + 64);
  *(v0 + 464) = sub_100016BC8();
  v12 = sub_100001F58(&qword_100020120, &qword_100018B00);
  *(v0 + 472) = v12;
  sub_1000165D4(v12);
  *(v0 + 480) = v13;
  v15 = *(v14 + 64);
  *(v0 + 488) = sub_100016BC8();
  v16 = sub_100017588();
  *(v0 + 496) = v16;
  sub_1000165D4(v16);
  *(v0 + 504) = v17;
  v19 = *(v18 + 64);
  *(v0 + 512) = sub_100016DFC();
  *(v0 + 520) = swift_task_alloc();
  v20 = sub_100001F58(&qword_100020210, &qword_100018BF0);
  sub_1000168F8(v20);
  v22 = *(v21 + 64);
  *(v0 + 528) = sub_100016BC8();
  v23 = sub_100001F58(&qword_100020218, &qword_100018BF8);
  sub_1000168F8(v23);
  v25 = *(v24 + 64);
  *(v0 + 536) = sub_100016BC8();
  v26 = sub_100001F58(&qword_100020220, &qword_100018C00);
  sub_1000168F8(v26);
  v28 = *(v27 + 64);
  *(v0 + 544) = sub_100016BC8();
  v29 = sub_100017968();
  *(v0 + 552) = v29;
  sub_1000165D4(v29);
  *(v0 + 560) = v30;
  v32 = *(v31 + 64);
  *(v0 + 568) = sub_100016DFC();
  *(v0 + 576) = swift_task_alloc();
  *(v0 + 584) = swift_task_alloc();
  v33 = sub_100017978();
  *(v0 + 592) = v33;
  sub_1000165D4(v33);
  *(v0 + 600) = v34;
  v36 = *(v35 + 64);
  *(v0 + 608) = sub_100016BC8();
  v37 = sub_100017A18();
  *(v0 + 616) = v37;
  sub_1000165D4(v37);
  *(v0 + 624) = v38;
  v40 = *(v39 + 64);
  *(v0 + 632) = sub_100016BC8();
  v41 = sub_1000173E8();
  *(v0 + 640) = v41;
  sub_1000165D4(v41);
  *(v0 + 648) = v42;
  v44 = *(v43 + 64);
  *(v0 + 656) = sub_100016BC8();
  v45 = sub_100017488();
  *(v0 + 664) = v45;
  sub_1000165D4(v45);
  *(v0 + 672) = v46;
  v48 = *(v47 + 64);
  *(v0 + 680) = sub_100016BC8();
  v49 = sub_100016720();

  return _swift_task_switch(v49, v50, v51);
}

uint64_t sub_10000B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100017284();
  a20 = v22;
  a21 = v23;
  a19 = v21;
  if (*(v21 + 824) == 1)
  {
    v24 = *(v21 + 680);
    v25 = *(v21 + 672);
    v26 = *(v21 + 664);
    v27 = *(v21 + 656);
    v28 = *(v21 + 648);
    v29 = *(v21 + 640);
    v30 = [objc_allocWithZone(NSDateFormatter) init];
    [v30 setDateStyle:1];
    [v30 setTimeStyle:3];
    sub_100017478();
    isa = sub_100017468().super.isa;
    v32 = *(v25 + 8);
    v33 = sub_100016E44();
    v34(v33);
    [v30 setTimeZone:isa];

    sub_1000173C8();
    v35 = sub_1000173B8().super.isa;
    v36 = *(v28 + 8);
    v37 = sub_100016CD4();
    v38(v37);
    v39 = [v30 stringFromDate:v35];

    sub_100017BE8();
    sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v40 = sub_100016B34();
    *(v40 + 16) = xmmword_100018A20;
    strcpy(&a10, "Updated on: ");
    BYTE13(a10) = 0;
    HIWORD(a10) = -5120;
    v70._countAndFlagsBits = sub_100016C0C();
    sub_100017C58(v70);

    v41 = a10;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 32) = v41;
    sub_100016614(v40);
  }

  v42 = *(v21 + 416);
  v43 = *(v42 + 16);
  *(v21 + 688) = v43;
  if (v43)
  {
    v44 = v42 + 32;
    v45 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100015D08(v44, v21 + 200);
      sub_10000D70C((v21 + 200), v21 + 320);
      v46 = sub_100016C0C();
      sub_100001F58(v46, v47);
      v48 = sub_1000169F4();
      sub_100001F58(v48, v49);
      if (swift_dynamicCast())
      {
        if (*(v21 + 304))
        {
          sub_10000D70C((v21 + 280), v21 + 240);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = v45[2];
            v53 = sub_1000166DC();
            v45 = sub_10000F274(v53, v54, v55, v45);
          }

          v51 = v45[2];
          v50 = v45[3];
          if (v51 >= v50 >> 1)
          {
            v56 = sub_1000168EC(v50);
            v45 = sub_10000F274(v56, v51 + 1, 1, v45);
          }

          v45[2] = v51 + 1;
          sub_10000D70C((v21 + 240), &v45[5 * v51 + 4]);
          goto LABEL_14;
        }
      }

      else
      {
        *(v21 + 312) = 0;
        *(v21 + 280) = 0u;
        *(v21 + 296) = 0u;
      }

      sub_100015DFC(v21 + 280, &qword_1000200D8, &qword_100018AC8);
LABEL_14:
      v44 += 40;
      if (!--v43)
      {
        goto LABEL_17;
      }
    }
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_17:
  *(v21 + 696) = v45;
  v57 = async function pointer to static AssetLock.lockResources(_:)[1];
  swift_task_alloc();
  sub_100016904();
  *(v21 + 704) = v58;
  *v58 = v59;
  v58[1] = sub_10000B998;
  v60 = *(v21 + 632);
  sub_100017230();

  return static AssetLock.lockResources(_:)(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, *(&a10 + 1), a11, a12, a13);
}

uint64_t sub_10000B998()
{
  sub_1000020E4();
  sub_1000020F0();
  v3 = v2;
  sub_100016884();
  *v4 = v3;
  v6 = *(v5 + 704);
  v7 = *v1;
  sub_1000020C8();
  *v8 = v7;
  *(v3 + 712) = v0;

  if (v0)
  {
    v9 = *(v3 + 696);
  }

  sub_100016878();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10000BA9C()
{
  v1 = v0[87];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1000140CC(0, v2, 0);
    v3 = v1 + 32;
    do
    {
      sub_100015D08(v3, (v0 + 45));
      v4 = v0[49];
      sub_100015E74(v0 + 45, v0[48]);
      v5 = *(v4 + 8);
      v6 = sub_1000175F8();
      v8 = v7;
      sub_10000202C(v0 + 45);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1000168EC(v9);
        sub_100016E38();
        sub_1000140CC(v12, v13, v14);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v15 = v0[87];

  v0[90] = _swiftEmptyArrayStorage;
  sub_1000177E8();
  v16 = async function pointer to static CoherentAssetLock.createUnlockedAssetLock(resources:)[1];
  v17 = swift_task_alloc();
  v0[91] = v17;
  *v17 = v0;
  v17[1] = sub_10000BC34;

  return static CoherentAssetLock.createUnlockedAssetLock(resources:)(_swiftEmptyArrayStorage);
}

uint64_t sub_10000BC34()
{
  sub_100016CE0();
  v2 = *v1;
  sub_100016884();
  *v4 = v3;
  v5 = *(v2 + 728);
  v6 = *v1;
  sub_100016884();
  *v7 = v6;
  *(v9 + 736) = v8;
  *(v9 + 744) = v0;

  v10 = *(v2 + 720);

  sub_100016878();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10000BD64()
{
  v1 = v0[93];
  v2 = v0[92];
  sub_1000177C8();
  if (v1)
  {
  }

  v0[94] = 0;
  v3 = [objc_allocWithZone(UAFAssetSetManager) init];
  v0[95] = v3;
  v0[96] = sub_10000D430(v3);
  sub_100001F58(&qword_100020228, &qword_100018C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100018A20;
  *(inited + 32) = sub_100017868();
  *(inited + 40) = v5;

  *(inited + 48) = sub_100009A6C(v6);
  sub_100001F58(&qword_100020230, &qword_100018C10);
  sub_10001708C();
  sub_100017BA8();
  isa = sub_100017B98().super.isa;
  v0[97] = isa;

  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_10000BF80;
  v8 = swift_continuation_init();
  v0[17] = sub_100001F58(&qword_100020238, &qword_100018C18);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000D620;
  v0[13] = &unk_10001CE48;
  v0[14] = v8;
  [v3 downloadStatusForSubscribers:isa queue:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000BF80()
{
  sub_1000020E4();
  v7 = *v0;
  v1 = *v0;
  sub_1000020C8();
  *v2 = v1;
  sub_100016878();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10000C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001724C();
  v22 = *(v20 + 776);
  v23 = *(v20 + 688);
  *(v20 + 784) = *(v20 + 400);

  if (v23)
  {
    v24 = *(v20 + 416);
    v25 = *(v20 + 752);
    *(v20 + 808) = &_swiftEmptyArrayStorage;
    *(v20 + 800) = 0;
    *(v20 + 792) = v25;
    v26 = v24[8];
    sub_100015E74(v24 + 4, v24[7]);
    swift_task_alloc();
    sub_100016904();
    *(v20 + 816) = v27;
    *v27 = v28;
    sub_100016938(v27);
    v29 = *(v20 + 784);
    v30 = *(v20 + 768);
    v31 = *(v20 + 608);
    sub_100017058();
    sub_100016BAC();

    return sub_10000A670();
  }

  else
  {
    v129 = *(v20 + 752);
    v34 = *(v20 + 768);

    v35 = 0;
    v36 = *(&_swiftEmptyArrayStorage + 2);
LABEL_6:
    v37 = (&off_10001CC18 + 3 * v35 + 6);
    while (v35 != 9)
    {
      if (v35 > 8)
      {
        __break(1u);
        return result;
      }

      v38 = v37 + 24;
      ++v35;
      v39 = *v37;
      if ((*(v20 + 825) & 1) == 0)
      {
        v37 += 24;
        if (v39)
        {
          continue;
        }
      }

      v40 = *(v38 - 5);
      v21 = *(v38 - 4);

      result = swift_isUniquelyReferenced_nonNull_native();
      a16 = &_swiftEmptyArrayStorage;
      if ((result & 1) == 0)
      {
        v41 = *(&_swiftEmptyArrayStorage + 2);
        v42 = sub_100016CA0();
        result = sub_10001419C(v42, v43, 1);
      }

      v45 = *(&_swiftEmptyArrayStorage + 2);
      v44 = *(&_swiftEmptyArrayStorage + 3);
      v36 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v47 = sub_100016788(v44);
        result = sub_10001419C(v47, v45 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v36;
      v46 = &_swiftEmptyArrayStorage + 24 * v45;
      *(v46 + 4) = v40;
      *(v46 + 5) = v21;
      v46[48] = v39;
      goto LABEL_6;
    }

    if (v36)
    {
      v48 = *(v20 + 504);
      v49 = *(v20 + 480);
      sub_100016CA0();
      sub_100014074();
      v136 = (v49 + 8);
      v21 = (&_swiftEmptyArrayStorage + 40);
      do
      {
        v50 = *(v20 + 520);
        v51 = *(v20 + 488);
        v52 = *(v20 + 472);
        v54 = *(v21 - 1);
        v53 = *v21;
        swift_bridgeObjectRetain_n();
        sub_100017568();
        sub_100017558();

        v55 = *v136;
        v56 = sub_100016E14();
        v57(v56);
        a16 = &_swiftEmptyArrayStorage;
        v59 = *(&_swiftEmptyArrayStorage + 2);
        v58 = *(&_swiftEmptyArrayStorage + 3);
        if (v59 >= v58 >> 1)
        {
          sub_100016788(v58);
          sub_100016E38();
          sub_100014074();
        }

        v60 = *(v20 + 520);
        v61 = *(v20 + 496);
        *(&_swiftEmptyArrayStorage + 2) = v59 + 1;
        v62 = *(v48 + 80);
        sub_100016828();
        (*(v48 + 32))(&_swiftEmptyArrayStorage + v63 + *(v48 + 72) * v59);
        v21 += 3;
        --v36;
      }

      while (v36);
    }

    v64 = *(&_swiftEmptyArrayStorage + 2);
    if (v64)
    {
      v65 = *(v20 + 504);
      v66 = sub_100016CA0();
      sub_1000140CC(v66, v64, 0);
      v67 = *(v65 + 16);
      v65 += 16;
      v68 = *(v65 + 64);
      sub_100016828();
      v70 = &_swiftEmptyArrayStorage + v69;
      v132 = *(v65 + 56);
      v137 = v71;
      v72 = (v65 - 8);
      do
      {
        v73 = *(v20 + 512);
        v74 = *(v20 + 496);
        v75 = sub_100016E44();
        v137(v75);
        sub_100017578();
        sub_100016E5C();
        (*v72)(v73, v74);
        a16 = &_swiftEmptyArrayStorage;
        v77 = *(&_swiftEmptyArrayStorage + 2);
        v76 = *(&_swiftEmptyArrayStorage + 3);
        if (v77 >= v76 >> 1)
        {
          v79 = sub_100016788(v76);
          sub_1000140CC(v79, v77 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v77 + 1;
        v78 = &_swiftEmptyArrayStorage + 16 * v77;
        *(v78 + 4) = v21;
        *(v78 + 5) = &_swiftEmptyArrayStorage;
        v70 += v132;
        --v64;
      }

      while (v64);
    }

    v80 = *(v20 + 464);
    v141 = sub_100009334(&_swiftEmptyArrayStorage);
    *(v20 + 408) = &_swiftEmptyArrayStorage;
    v81 = sub_100016C0C();
    sub_100001F58(v81, v82);
    sub_1000165BC();
    sub_1000161FC(v83, &qword_100020158, &qword_100018B30);
    sub_1000174B8();
    v84 = *(&_swiftEmptyArrayStorage + 2);
    if (v84)
    {
      v85 = *(v20 + 560);
      v87 = *(v85 + 16);
      v86 = v85 + 16;
      v88 = *(v86 + 64);
      sub_100016828();
      v90 = &_swiftEmptyArrayStorage + v89;
      v133 = *(v86 + 56);
      v138 = v91;
      do
      {
        v92 = *(v20 + 568);
        v93 = *(v20 + 552);
        v94 = *(v20 + 464);
        v95 = sub_100016E50();
        v138(v95);
        sub_100009FEC();
        v96 = *(v86 - 8);
        v97 = sub_100016E44();
        v98(v97);
        v99 = swift_task_alloc();
        v100 = sub_100016958(v99, v141);

        v101 = sub_100009DAC(v100);

        v102._rawValue = v101;
        sub_1000174A8(v102);

        v90 += v133;
        --v84;
      }

      while (v84);
    }

    v127 = *(v20 + 760);
    v130 = *(v20 + 736);
    v103 = *(v20 + 624);
    v134 = *(v20 + 616);
    v139 = *(v20 + 632);
    v105 = *(v20 + 456);
    v104 = *(v20 + 464);
    v107 = *(v20 + 440);
    v106 = *(v20 + 448);
    v108 = *(v20 + 432);
    v126 = *(v20 + 424);

    sub_100017538();
    sub_1000174F8();
    sub_1000174E8();
    sub_1000174D8();
    sub_100017518();
    sub_100017508();
    sub_100017528();
    v109 = sub_100017498();
    v111 = v110;
    sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v112 = sub_100016B34();
    *(v112 + 16) = xmmword_100018A20;
    *(v112 + 56) = &type metadata for String;
    *(v112 + 32) = v109;
    *(v112 + 40) = v111;
    sub_100016614(v112);

    (*(v108 + 8))(v107, v126);
    v113 = *(v105 + 8);
    v114 = sub_1000169F4();
    v115(v114);
    sub_1000177D8();

    (*(v103 + 8))(v139, v134);
    sub_100016568();
    v128 = v117;
    v131 = v116;
    v135 = *(v20 + 488);
    v140 = *(v20 + 464);
    v142 = *(v20 + 440);

    sub_1000020D8();
    sub_100016BAC();

    return v119(v118, v119, v120, v121, v122, v123, v124, v125, v126, v128, v131, v135, v140, v142, v20, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_10000C74C()
{
  sub_1000020E4();
  sub_1000020F0();
  v2 = *(v1 + 816);
  v3 = *v0;
  sub_1000020C8();
  *v4 = v3;

  v5 = sub_100016720();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001724C();
  v21 = v20[92];
  v201 = v20[79];
  v22 = v20[78];
  v23 = v20[77];
  v24 = v20[76];
  v25 = v20[75];
  v26 = v20[74];
  v213 = v20[68];
  v218 = v20[99];
  v27 = v20[67];
  v28 = v20[66];
  v29 = v20[52] + 40 * v20[100];
  v30 = *(v29 + 56);
  sub_100015E74((v29 + 32), v30);
  (*(v25 + 16))(v27, v24, v26);
  v31 = sub_1000167D8();
  sub_100002004(v31, v32, v33, v34);
  (*(v22 + 16))(v28, v201, v23);
  sub_1000169E8();
  sub_100002004(v35, v36, v37, v23);

  v38 = v218;
  sub_100017618();
  v219 = v20;
  if (v38)
  {
    v39 = v20[92];
    v40 = v20[76];
    v41 = v20[75];
    v42 = v20[74];
    sub_1000172E0();

    sub_100015DFC(v30, &qword_100020210, &qword_100018BF0);
    sub_100015DFC(v26, &qword_100020218, &qword_100018BF8);
    v43 = *(v41 + 8);
    v44 = sub_100016C00();
    v45(v44);
    sub_100016EBC();
    sub_100002004(v46, v47, v48, v23);
    sub_100015DFC(v24, &qword_100020220, &qword_100018C00);
    v49 = v20[101];
    v50 = v20;
  }

  else
  {
    v51 = v20[101];
    v52 = v20[92];
    v53 = v20[73];
    v54 = v20[72];
    v55 = v20[70];
    sub_1000172E0();
    sub_100015DFC(v30, &qword_100020210, &qword_100018BF0);
    sub_100015DFC(v26, &qword_100020218, &qword_100018BF8);
    sub_1000169E8();
    sub_100002004(v56, v57, v58, v23);
    v214 = *(v55 + 32);
    v214(v53, v24, v23);
    v59 = *(v55 + 16);
    v60 = sub_100016E68();
    v61(v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v20[101];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_40:
      v186 = v49[2];
      sub_1000169D0();
      v187 = sub_1000166DC();
      sub_10000F178(v187, v188, v189, v49, v190, v191, v192, v193);
      v49 = v194;
    }

    v63 = v49[2];
    if (v63 >= v49[3] >> 1)
    {
      sub_1000169D0();
      sub_10000F178(v195, v196, 1, v49, v197, v198, v199, &type metadata accessor for ResourceStatusOutput);
      v49 = v200;
    }

    v64 = v20[76];
    v65 = v20[75];
    v66 = v20[74];
    v67 = v20[72];
    v68 = v219[70];
    v26 = v219[69];
    v69 = *(v68 + 8);
    v68 += 8;
    v69(v20[73], v26);
    v70 = *(v65 + 8);
    v71 = sub_100016CD4();
    v72(v71);
    v49[2] = v63 + 1;
    v73 = *(v68 + 72);
    sub_100016828();
    v75 = v49 + v74 + *(v68 + 64) * v63;
    v50 = v219;
    v214(v75, v67, v26);
  }

  v76 = v50[100] + 1;
  if (v76 == v50[86])
  {
    v77 = v50[96];

    v78 = 0;
    v202 = v49;
    v214 = v49[2];
    v20 = &_swiftEmptyArrayStorage;
    v79 = &off_10001CC18;
    v49 = &_swiftEmptyArrayStorage;
LABEL_9:
    v80 = (&off_10001CC18 + 3 * v78 + 6);
    while (v78 != 9)
    {
      if (v78 > 8)
      {
        __break(1u);
        goto LABEL_40;
      }

      v81 = v80 + 24;
      ++v78;
      v82 = *v80;
      if ((*(v50 + 825) & 1) == 0)
      {
        v80 += 24;
        if (v82)
        {
          continue;
        }
      }

      v84 = *(v81 - 5);
      v83 = *(v81 - 4);

      a16 = &_swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = *(&_swiftEmptyArrayStorage + 2);
        v86 = sub_100016CA0();
        sub_10001419C(v86, v87, 1);
      }

      v89 = *(&_swiftEmptyArrayStorage + 2);
      v88 = *(&_swiftEmptyArrayStorage + 3);
      v26 = (v89 + 1);
      if (v89 >= v88 >> 1)
      {
        v91 = sub_100016788(v88);
        sub_10001419C(v91, v89 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v26;
      v90 = &_swiftEmptyArrayStorage + 24 * v89;
      *(v90 + 4) = v84;
      *(v90 + 5) = v83;
      v90[48] = v82;
      v50 = v219;
      goto LABEL_9;
    }

    v100 = *(&_swiftEmptyArrayStorage + 2);
    if (v100)
    {
      v101 = v50[63];
      v102 = v50[60];
      sub_100016CA0();
      sub_100014074();
      v208 = (v102 + 8);
      a10 = &_swiftEmptyArrayStorage;
      v26 = (&_swiftEmptyArrayStorage + 40);
      do
      {
        v103 = v50[65];
        v104 = v50[61];
        v105 = v50[59];
        v106 = v50;
        v108 = *(v26 - 1);
        v107 = *v26;
        swift_bridgeObjectRetain_n();
        sub_100017568();
        sub_100017558();

        v109 = *v208;
        v110 = sub_100016E14();
        v111(v110);
        a16 = &_swiftEmptyArrayStorage;
        v113 = *(&_swiftEmptyArrayStorage + 2);
        v112 = *(&_swiftEmptyArrayStorage + 3);
        v79 = (v113 + 1);
        if (v113 >= v112 >> 1)
        {
          sub_100016788(v112);
          sub_100016E38();
          sub_100014074();
        }

        v114 = v106[65];
        v115 = v106[62];
        *(&_swiftEmptyArrayStorage + 2) = v79;
        v116 = *(v101 + 80);
        sub_100016828();
        (*(v101 + 32))(&_swiftEmptyArrayStorage + v117 + *(v101 + 72) * v113);
        v26 += 3;
        --v100;
        v50 = v106;
      }

      while (v100);
    }

    v118 = *(&_swiftEmptyArrayStorage + 2);
    if (v118)
    {
      v119 = v50[63];
      v120 = sub_100016CA0();
      sub_1000140CC(v120, v118, 0);
      v121 = *(v119 + 16);
      v119 += 16;
      v122 = *(v119 + 64);
      sub_100016828();
      v124 = &_swiftEmptyArrayStorage + v123;
      v205 = *(v119 + 56);
      v209 = v125;
      v126 = (v119 - 8);
      do
      {
        v127 = v219[64];
        v128 = v219[62];
        v129 = sub_100016E44();
        v209(v129);
        sub_100017578();
        sub_100016E5C();
        v130 = *v126;
        v131 = sub_100016C00();
        v132(v131);
        a16 = &_swiftEmptyArrayStorage;
        v134 = *(&_swiftEmptyArrayStorage + 2);
        v133 = *(&_swiftEmptyArrayStorage + 3);
        if (v134 >= v133 >> 1)
        {
          v136 = sub_100016788(v133);
          sub_1000140CC(v136, v134 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v134 + 1;
        v135 = &_swiftEmptyArrayStorage + 16 * v134;
        *(v135 + 4) = v26;
        *(v135 + 5) = v79;
        v124 += v205;
        --v118;
      }

      while (v118);
      v50 = v219;
    }

    v137 = v50[58];
    v138 = sub_100009334(&_swiftEmptyArrayStorage);
    v50[51] = &_swiftEmptyArrayStorage;
    v139 = sub_100016A00();
    sub_100001F58(v139, v140);
    sub_1000165BC();
    sub_1000161FC(v141, &qword_100020158, &qword_100018B30);
    sub_1000174B8();
    v142 = v202[2];
    if (v142)
    {
      v143 = v50[70];
      v145 = *(v143 + 16);
      v144 = v143 + 16;
      v146 = *(v144 + 64);
      sub_100016828();
      v149 = v147 + v148;
      v210 = *(v144 + 56);
      v215 = v150;
      do
      {
        v151 = v50[71];
        v152 = v50[69];
        v153 = v50[58];
        v154 = sub_100016E44();
        v215(v154);
        sub_100009FEC();
        v155 = *(v144 - 8);
        v156 = sub_100016C00();
        v157(v156);
        v158 = swift_task_alloc();
        v159 = sub_100016958(v158, v138);

        v160 = sub_100009DAC(v159);

        v161._rawValue = v160;
        sub_1000174A8(v161);

        v149 += v210;
        --v142;
      }

      while (v142);
    }

    v206 = v50[95];
    v211 = v50[92];
    v162 = v50[78];
    v216 = v50[77];
    v220 = v50[79];
    v163 = v50[57];
    v164 = v50[58];
    v166 = v50[55];
    v165 = v50[56];
    v167 = v50;
    v168 = v50[54];
    v203 = v167[53];

    sub_100017538();
    sub_1000174F8();
    sub_1000174E8();
    sub_1000174D8();
    sub_100017518();
    sub_100017508();
    sub_100017528();
    v169 = sub_100017498();
    v171 = v170;
    sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v172 = sub_100016B34();
    *(v172 + 16) = xmmword_100018A20;
    *(v172 + 56) = &type metadata for String;
    *(v172 + 32) = v169;
    *(v172 + 40) = v171;
    sub_100016614(v172);

    (*(v168 + 8))(v166, v203);
    v173 = *(v163 + 8);
    v174 = sub_1000169F4();
    v175(v174);
    sub_1000177D8();

    (*(v162 + 8))(v220, v216);
    sub_100016568();
    v204 = v177;
    v207 = v176;
    v212 = v167[61];
    v217 = v167[58];
    v221 = v167[55];

    sub_1000020D8();
    sub_100016BAC();

    return v179(v178, v179, v180, v181, v182, v183, v184, v185, a9, a10, v204, v207, v212, v217, v221, a16, a17, a18, a19, a20);
  }

  else
  {
    v50[101] = v49;
    v50[100] = v76;
    v50[99] = 0;
    v92 = (v50[52] + 40 * v76);
    v93 = v92[8];
    sub_100015E74(v92 + 4, v92[7]);
    v94 = swift_task_alloc();
    v50[102] = v94;
    *v94 = v50;
    sub_100016938();
    v95 = v50[98];
    v96 = v50[96];
    v97 = v50[76];
    sub_100017058();
    sub_100016BAC();

    return sub_10000A670();
  }
}

uint64_t sub_10000D258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100017268();
  v17 = *(v16 + 712);

  sub_100016568();
  sub_100016D84();

  sub_1000020D8();
  sub_100017214();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10000D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100017268();
  v17 = v16[93];
  (*(v16[78] + 8))(v16[79], v16[77]);

  sub_100016568();
  sub_100016D84();

  sub_1000020D8();
  sub_100017214();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

char *sub_10000D430(void *a1)
{
  sub_100017868();
  v2 = sub_100017BD8();

  v3 = [a1 subscriptionsForSubscriber:v2];

  if (!v3)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_100015EB8(0, &qword_100020280, UAFAssetSetSubscription_ptr);
  v4 = sub_100017C68();

  v5 = sub_100005D7C(v4);
  if (v5)
  {
    v6 = v5;
    result = sub_1000140CC(0, v5 & ~(v5 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = sub_100017DE8();
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 name];
      v12 = sub_100017BE8();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000140CC((v15 > 1), v16 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
    }

    while (v6 != v8);
  }

  return sub_100009334(_swiftEmptyArrayStorage);
}

uint64_t sub_10000D620(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100015E74((a1 + 32), *(a1 + 56));

  return sub_10000D664(v3, a2);
}

void *sub_10000D684()
{
  v1 = sub_1000175C8();

  sub_10000FB08(&v1);

  return v1;
}

uint64_t sub_10000D70C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000D724(void *a1, void *a2)
{
  v3 = a1[4];
  sub_100015E74(a1, a1[3]);
  v4 = sub_1000175F8();
  v6 = v5;
  v7 = a2[4];
  sub_100015E74(a2, a2[3]);
  if (v4 == sub_1000175F8() && v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_100017E68();
  }

  return v10 & 1;
}

void sub_10000D7F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Status();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100001F58(&qword_100020208, &qword_100018BC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = dispatch_semaphore_create(0);
  v12 = sub_100017CD8();
  sub_100002004(v10, 1, 1, v12);
  sub_10000D9E0(a2, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  sub_10000DB4C(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;

  v15 = v11;
  sub_10000DF24(0, 0, v10, &unk_100018BD0, v14);

  sub_100017D68();
  sub_100016160(&qword_100020070, type metadata accessor for Status);
  sub_100017AA8();
  __break(1u);
}

uint64_t sub_10000D9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Status();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100016D0C();
  v13 = type metadata accessor for Status();
  sub_100016D74();
  v15 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v17 = *(v16 + 64);
  v18 = *(v12 + 16);

  v19 = sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  sub_100016710(v19);
  v21 = *(v20 + 8);
  v22 = sub_100017130();
  v21(v22);
  v23 = sub_1000170B8(*(v13 + 28));
  v21(v23);
  v24 = sub_1000170B8(*(v13 + 32));
  v21(v24);
  sub_100016C58();

  return _swift_deallocObject(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_10000DB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Status();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10000DBB0()
{
  v1 = type metadata accessor for Status();
  sub_1000168F8(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_10000D7F0(v3, v4);
}

uint64_t sub_10000DC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10000DC34, 0, 0);
}

uint64_t sub_10000DC34()
{
  v1 = *(v0 + 24);
  sub_100001F58(&qword_1000200E0, &qword_100018AD0);
  v2 = sub_100016B34();
  *(v2 + 16) = xmmword_100018A20;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_100016614(v2);

  v3 = sub_100016750();
  sub_100016890(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12[7] = &type metadata for String;
  v12[4] = 0xD00000000000004FLL;
  v12[5] = 0x8000000100018430;
  sub_100016614(v12);

  v13 = sub_100016750();
  sub_100016890(v13, v14, v15, v16, v17, v18, v19, v20, v21);
  sub_100016834();
  v22[7] = &type metadata for String;
  v22[4] = 0xD000000000000036;
  v22[5] = v23;
  sub_100016614(v22);

  v24 = sub_100016750();
  sub_100016890(v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v33[7] = &type metadata for String;
  v33[4] = 0xD00000000000004FLL;
  v33[5] = 0x8000000100018430;
  sub_100016614(v33);

  v34 = *(type metadata accessor for Status() + 20);
  sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  sub_100017B08();
  v35 = *(v0 + 48);
  v36 = swift_task_alloc();
  *(v0 + 40) = v36;
  *v36 = v0;
  v36[1] = sub_10000DDE8;
  sub_10001702C(*(v0 + 16));

  return sub_10000B264();
}

uint64_t sub_10000DDE8()
{
  sub_1000020E4();
  sub_1000020F0();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_1000020C8();
  *v4 = v3;

  v5 = sub_100016720();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000DECC()
{
  sub_1000020E4();
  v1 = *(v0 + 32);
  sub_100017D78();
  sub_1000020D8();

  return v2();
}

uint64_t sub_10000DF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001F58(&qword_100020208, &qword_100018BC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100015B54(a3, v26 - v11, &qword_100020208, &qword_100018BC0);
  v13 = sub_100017CD8();
  v14 = sub_10000567C(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100015DFC(v12, &qword_100020208, &qword_100018BC0);
  }

  else
  {
    sub_100017CC8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100017C98();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100017C28() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100015DFC(a3, &qword_100020208, &qword_100018BC0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100015DFC(a3, &qword_100020208, &qword_100018BC0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000E208(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000E24C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E264()
{
  sub_100017B58();
  sub_100016160(&qword_1000201F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001F58(&qword_1000201F8, &qword_100018BB8);
  sub_1000161FC(&qword_100020200, &qword_1000201F8, &qword_100018BB8);
  return sub_100017DA8();
}

uint64_t sub_10000E350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F74696E6F6DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_100017E68() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65736F62726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_100017E68() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1953063287 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_100017E68();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int sub_10000E4A8(unsigned __int8 a1)
{
  sub_100017EA8();
  sub_100017EB8(a1);
  return sub_100017EC8();
}

uint64_t sub_10000E4FC(char a1)
{
  if (!a1)
  {
    return 0x726F74696E6F6DLL;
  }

  if (a1 == 1)
  {
    return 0x65736F62726576;
  }

  return 1953063287;
}

Swift::Int sub_10000E568()
{
  v1 = *v0;
  sub_100017EA8();
  sub_100017EB8(v1);
  return sub_100017EC8();
}

void sub_10000E5AC()
{
  sub_100017394();
  v0 = sub_100017A88();
  v1 = sub_1000168F8(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100016634();
  sub_100017040();
  v4 = sub_100001F58(&qword_100020350, &qword_100018D68);
  sub_1000168F8(v4);
  v6 = *(v5 + 64);
  sub_100016B58();
  __chkstk_darwin(v7);
  sub_100017A28();
  v8 = sub_100017A38();
  sub_1000169E8();
  sub_100002004(v9, v10, v11, v8);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  v12 = type metadata accessor for Status();
  v13 = *(v12 + 20);
  sub_100017A28();
  sub_1000169E8();
  sub_100002004(v14, v15, v16, v8);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  v17 = *(v12 + 24);
  sub_100017A28();
  sub_1000169E8();
  sub_100002004(v18, v19, v20, v8);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  sub_100017380();
}

uint64_t sub_10000E750@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v62 = sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  v3 = sub_100016528(v62);
  v59 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_1000166FC();
  v57 = v7;
  __chkstk_darwin(v8);
  sub_10001704C();
  v58 = v9;
  __chkstk_darwin(v10);
  v61 = &v55 - v11;
  v63 = sub_100001F58(&qword_100020358, &qword_100018D70);
  sub_100016528(v63);
  v60 = v12;
  v14 = *(v13 + 64);
  sub_100016B58();
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  v18 = sub_100017A88();
  v19 = sub_1000168F8(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_100016634();
  sub_100017040();
  v22 = sub_100001F58(&qword_100020350, &qword_100018D68);
  sub_1000168F8(v22);
  v24 = *(v23 + 64);
  sub_100016B58();
  __chkstk_darwin(v25);
  v26 = type metadata accessor for Status();
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  sub_100016634();
  v31 = v30 - v29;
  sub_100017A28();
  sub_100017A38();
  v32 = sub_1000167D8();
  sub_100002004(v32, v33, v34, v35);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  v36 = *(v27 + 28);
  sub_100017A28();
  v37 = sub_1000167D8();
  sub_100002004(v37, v38, v39, v40);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  v41 = *(v27 + 32);
  sub_100017A28();
  v42 = sub_1000167D8();
  sub_100002004(v42, v43, v44, v45);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  v46 = a1[4];
  sub_100015E74(a1, a1[3]);
  sub_1000161A8();
  v47 = v64;
  sub_100017ED8();
  if (!v47)
  {
    v64 = v41;
    v49 = v58;
    v48 = v59;
    v67 = 0;
    sub_1000161FC(&qword_100020368, &qword_1000200E8, &qword_100018AD8);
    sub_100016FE4(v62, &v67, v63, v62);
    v50 = v61;
    v51 = v62;
    v61 = *(v48 + 40);
    (v61)(v31, v50, v62);
    v66 = 1;
    sub_100016FE4(v51, &v66, v63, v51);
    v53 = v62;
    (v61)(v31 + v36, v49, v62);
    v65 = 2;
    v54 = v63;
    sub_100016FE4(v53, &v65, v63, v53);
    (*(v60 + 8))(v17, v54);
    (v61)(v31 + v64, v57, v62);
    sub_10000D9E0(v31, v56);
  }

  sub_10000202C(a1);
  return sub_100001EC4(v31);
}

uint64_t sub_10000EC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000E350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000EC4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000E468();
  *a1 = result;
  return result;
}

uint64_t sub_10000EC74(uint64_t a1)
{
  v2 = sub_1000161A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000ECB0(uint64_t a1)
{
  v2 = sub_1000161A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000ECEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001724;

  return sub_1000020FC();
}

uint64_t sub_10000ED98(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EE90;

  return v7(a1);
}

uint64_t sub_10000EE90()
{
  sub_1000020E4();
  sub_1000020F0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000020C8();
  *v4 = v3;

  sub_1000167C8();

  return v5();
}

char *sub_10000EF70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F58(&qword_100020198, &qword_100018B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_10000F070(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F58(&qword_1000201A0, &qword_100018B70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10000F178(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    sub_100016D64();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100016D54();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_10000F738(v15, v12, a5, a6, a7);
  v17 = *(*(a8(0) - 8) + 80);
  sub_100016828();
  if (a1)
  {
    sub_10000F918(a4 + v18, v15, &v16[v18], a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_10000F274(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100001F58(&qword_1000201D0, &qword_100018B98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001F58(&qword_1000200D0, &qword_100018AC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10000F3AC()
{
  result = qword_100020100;
  if (!qword_100020100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020100);
  }

  return result;
}

void *sub_10000F400(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100001F58(&qword_1000201E0, &qword_100018BA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001F58(&qword_1000201D8, &qword_100018BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F538(uint64_t a1, uint64_t a2)
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

  sub_100001F58(&qword_1000201A0, &qword_100018B70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

char *sub_10000F5B4(uint64_t a1, uint64_t a2)
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

  sub_100001F58(&qword_1000201B8, &qword_100018B88);
  v4 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10000F6BC(uint64_t a1, uint64_t a2)
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

  sub_100001F58(&qword_100020288, &qword_100018C68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

char *sub_10000F738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100001F58(a3, a4);
  v8 = a5(0);
  sub_1000165D4(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if (&result[-v12] != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * (&result[-v12] / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F82C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_100001F58(&qword_100020148, &qword_100018B20), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_100001F58(&qword_100020148, &qword_100018B20);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10000F918(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = sub_100016710(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    sub_100016C7C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100016C7C();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

Swift::Int sub_10000F9E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100015248(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_10000FDDC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10000FA54(size_t *a1)
{
  v2 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10001525C(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10000FE8C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10000FB08(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100015270(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10000FFD4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10000FB74(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;
  result = sub_1000100D8(v11, a3, a4);
  *a1 = v8;
  return result;
}

char *sub_10000FC00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = sub_10000F5B4(*(a1 + 16), 0);
  v4 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
  v5 = sub_100015428(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v1, a1);

  sub_1000158B8();
  if (v5 != v1)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10000FD00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = sub_10000F6BC(*(a1 + 16), 0);
  v4 = sub_1000156E4(&v6, v3 + 4, v1, a1);

  sub_1000158B8();
  if (v4 != v1)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

unint64_t sub_10000FDBC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_10000FDDC(uint64_t a1)
{
  result = sub_100017340(a1);
  if (result < v1)
  {
    if (v1 >= -1)
    {
      sub_100017018();
      if (v5 ^ v6 | v4)
      {
        v7 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v7 = sub_100017C88();
        v7[2] = v2;
      }

      sub_100016C18();
      sub_100010730(v12, v13, v14);
      v7[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    v8 = sub_100016EE0();
    return sub_1000101A0(v8, v9, v10, v11);
  }

  return result;
}

Swift::Int sub_10000FE8C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100017E38(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100001F58(&qword_100020148, &qword_100018B20);
        v6 = sub_100017C88();
        v6[2] = v5;
      }

      v7 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100010BC4(v8, v9, a1, v4);
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
    return sub_100010268(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_10000FFD4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100017E38(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100001F58(&qword_1000200C8, &qword_100018AB8);
        v6 = sub_100017C88();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_100011668(v7, v8, a1, v4);
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
    return sub_1000104C8(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1000100D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = sub_100017340(a1);
  if (result < v3)
  {
    if (v3 >= -1)
    {
      sub_100017018();
      if (v9 ^ v10 | v8)
      {
        v11 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100001F58(a2, a3);
        v11 = sub_100017C88();
        v11[2] = v4;
      }

      sub_100016C18();
      sub_100011E24(v16, v17, v18);
      v11[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v12 = sub_100016EE0();
    return sub_100010668(v12, v13, v14, v15);
  }

  return result;
}

uint64_t sub_1000101A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_100017E68();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100010268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_100001F58(&qword_100020148, &qword_100018B20);
  v9 = *(*(v38 - 8) + 64);
  v10 = __chkstk_darwin(v38);
  v37 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v35 = -v20;
    v36 = v19;
    v22 = a1 - a3;
    v29 = v20;
    v23 = v19 + v20 * a3;
LABEL_4:
    v33 = v21;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v21;
    while (1)
    {
      sub_100015B54(v23, v18, &qword_100020148, &qword_100018B20);
      sub_100015B54(v24, v14, &qword_100020148, &qword_100018B20);
      v25 = sub_100008E50(v18, v14);
      sub_100015DFC(v14, &qword_100020148, &qword_100018B20);
      result = sub_100015DFC(v18, &qword_100020148, &qword_100018B20);
      if (v4)
      {
        break;
      }

      if (v25)
      {
        if (!v36)
        {
          __break(1u);
          return result;
        }

        v26 = v37;
        sub_1000158C0(v23, v37, &qword_100020148, &qword_100018B20);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1000158C0(v26, v24, &qword_100020148, &qword_100018B20);
        v24 += v35;
        v23 += v35;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v34 + 1;
      v21 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1000104C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v21 = a3;
      v16 = v6;
      v17 = v5;
      while (1)
      {
        sub_100015D08(v5, &v19);
        sub_100015D08(v5 - 40, v18);
        sub_100015E74(&v19, v20);
        v7 = sub_1000175F8();
        v9 = v8;
        sub_100015E74(v18, v18[3]);
        if (v7 == sub_1000175F8() && v9 == v10)
        {
          break;
        }

        v12 = sub_100017E68();

        sub_10000202C(v18);
        result = sub_10000202C(&v19);
        if (v12)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          sub_10000D70C(v5, &v19);
          v13 = *(v5 - 24);
          *v5 = *(v5 - 40);
          *(v5 + 16) = v13;
          *(v5 + 32) = *(v5 - 8);
          result = sub_10000D70C(&v19, v5 - 40);
          v5 -= 40;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_10000202C(v18);
      result = sub_10000202C(&v19);
LABEL_14:
      a3 = v21 + 1;
      v5 = v17 + 40;
      v6 = v16 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100010668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 32 * v4;
      result = *(v9 + 16);
      v10 = *(v9 + 24);
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 + 16) && v10 == *(v12 + 24))
        {
          break;
        }

        result = sub_100017E68();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 40);
        result = *(v12 + 48);
        v10 = *(v12 + 56);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = v14;
        *(v12 + 8) = v15;
        *(v12 + 16) = result;
        *(v12 + 24) = v10;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100010730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v111 = a1;
  sub_100017198(a1, a2, a3);
  if (v16 == v77)
  {
    v109 = v11;
    v17 = 0;
    v18 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v19 = v17;
      v20 = v17 + 1;
      if (v17 + 1 < v4)
      {
        sub_100017080(v8, v9, v10, v11, v12, v13, v14, v15, v107, v109, v111, v113, v117, v118);
        v22 = (v21 + 16 * v20);
        v23 = (v21 + 16 * v19);
        if (*v22 == *v23 && v22[1] == v23[1])
        {
          v6 = 0;
        }

        else
        {
          v6 = sub_100017E68();
        }

        v20 = v19 + 2;
        v5 = 16 * v19;
        v25 = v23 + 5;
        while (v20 < v4)
        {
          if (*(v25 - 1) == *(v25 - 3) && *v25 == *(v25 - 2))
          {
            if (v6)
            {
              goto LABEL_21;
            }
          }

          else if ((v6 ^ sub_100017E68()))
          {
            break;
          }

          ++v20;
          v25 += 2;
        }

        if ((v6 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v20 < v19)
        {
          goto LABEL_121;
        }

        if (v19 < v20)
        {
          v27 = 16 * v20;
          v28 = v20;
          v29 = v19;
          do
          {
            if (v29 != --v28)
            {
              v30 = *v118;
              if (!*v118)
              {
                goto LABEL_126;
              }

              v31 = (v30 + v5);
              v32 = v30 + v27;
              v33 = *v31;
              v34 = v31[1];
              *v31 = *(v32 - 16);
              *(v32 - 16) = v33;
              *(v32 - 8) = v34;
            }

            ++v29;
            v27 -= 16;
            v5 += 16;
          }

          while (v29 < v28);
        }
      }

LABEL_28:
      v35 = v118[1];
      if (v20 < v35)
      {
        if (__OFSUB__(v20, v19))
        {
          goto LABEL_120;
        }

        if (v20 - v19 < v109)
        {
          if (__OFADD__(v19, v109))
          {
            goto LABEL_122;
          }

          if (v19 + v109 >= v35)
          {
            v36 = v118[1];
          }

          else
          {
            v36 = v19 + v109;
          }

          if (v36 < v19)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v20 != v36)
          {
            v114 = v7;
            v117 = v19;
            v5 = *v118;
            v4 = *v118 + 16 * v20;
            v37 = v19 - v20;
            do
            {
              v38 = v20;
              v39 = (v5 + 16 * v20);
              v40 = *v39;
              v41 = v39[1];
              v42 = v37;
              v43 = v4;
              do
              {
                v6 = (v43 - 2);
                v44 = v40 == *(v43 - 2) && v41 == *(v43 - 1);
                if (v44 || (sub_100017E68() & 1) == 0)
                {
                  break;
                }

                if (!v5)
                {
                  goto LABEL_124;
                }

                v40 = *v43;
                v41 = v43[1];
                *v43 = *v6;
                *(v43 - 1) = v41;
                *(v43 - 2) = v40;
                v43 -= 2;
                v45 = __CFADD__(v42++, 1);
              }

              while (!v45);
              v20 = v38 + 1;
              v4 += 16;
              --v37;
            }

            while (v38 + 1 != v36);
            v20 = v36;
            v7 = v114;
            v19 = v117;
          }
        }
      }

      if (v20 < v19)
      {
        goto LABEL_119;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v100 = *(v18 + 2);
        v101 = sub_1000166DC();
        isUniquelyReferenced_nonNull_native = sub_10000EF70(v101, v102, v103, v18);
        v18 = isUniquelyReferenced_nonNull_native;
      }

      v54 = *(v18 + 2);
      v55 = v54 + 1;
      if (v54 >= *(v18 + 3) >> 1)
      {
        sub_100016E38();
        isUniquelyReferenced_nonNull_native = sub_10000EF70(v104, v105, v106, v18);
        v18 = isUniquelyReferenced_nonNull_native;
      }

      sub_100016B88(isUniquelyReferenced_nonNull_native, v47, v48, v49, v50, v51, v52, v53, v107, v109, v111, v115);
      if (!v64)
      {
        goto LABEL_127;
      }

      if (v54)
      {
        while (1)
        {
          sub_100017200();
          if (v45)
          {
            break;
          }

          if (v54 == 2)
          {
            v67 = *(v18 + 4);
            v68 = *(v18 + 5);
            v77 = __OFSUB__(v68, v67);
            v69 = v68 - v67;
            v70 = v77;
LABEL_69:
            if (v70)
            {
              goto LABEL_109;
            }

            v82 = *v66;
            v81 = v66[1];
            v83 = __OFSUB__(v81, v82);
            v84 = v81 - v82;
            v85 = v83;
            if (v83)
            {
              goto LABEL_112;
            }

            v86 = v65[1];
            v87 = v86 - *v65;
            if (__OFSUB__(v86, *v65))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v84, v87))
            {
              goto LABEL_117;
            }

            if (v84 + v87 >= v69)
            {
              if (v69 < v87)
              {
                v4 = v54 - 1;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v55 < 2)
          {
            goto LABEL_111;
          }

          v89 = *v66;
          v88 = v66[1];
          v77 = __OFSUB__(v88, v89);
          v84 = v88 - v89;
          v85 = v77;
LABEL_84:
          if (v85)
          {
            goto LABEL_114;
          }

          v91 = *v65;
          v90 = v65[1];
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_116;
          }

          if (v92 < v84)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v4 - 1 >= v55)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          sub_100017080(v56, v57, v58, v59, v60, v61, v62, v63, v108, v110, v112, v116, v117, v118);
          if (!v96)
          {
            goto LABEL_125;
          }

          sub_1000171C0();
          sub_1000124A0();
          if (v7)
          {
            goto LABEL_102;
          }

          if (v6 < v55)
          {
            goto LABEL_104;
          }

          v97 = v18;
          v98 = *(v18 + 2);
          if (v4 > v98)
          {
            goto LABEL_105;
          }

          *v54 = v55;
          v54[1] = v6;
          if (v4 >= v98)
          {
            goto LABEL_106;
          }

          v56 = sub_100016FC0();
          *(v97 + 2) = v55;
          v99 = v98 > 2;
          v18 = v97;
          if (!v99)
          {
            goto LABEL_98;
          }
        }

        v71 = v5 + 16 * v55;
        v72 = *(v71 - 64);
        v73 = *(v71 - 56);
        v77 = __OFSUB__(v73, v72);
        v74 = v73 - v72;
        if (v77)
        {
          goto LABEL_107;
        }

        v76 = *(v71 - 48);
        v75 = *(v71 - 40);
        v77 = __OFSUB__(v75, v76);
        v69 = v75 - v76;
        v70 = v77;
        if (v77)
        {
          goto LABEL_108;
        }

        v78 = v66[1];
        v79 = v78 - *v66;
        if (__OFSUB__(v78, *v66))
        {
          goto LABEL_110;
        }

        v77 = __OFADD__(v69, v79);
        v80 = v69 + v79;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v80 >= v74)
        {
          v94 = *v65;
          v93 = v65[1];
          v77 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v77)
          {
            goto LABEL_118;
          }

          if (v69 < v95)
          {
            v4 = v54 - 1;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      sub_10001706C(v56, v57, v58, v59, v60, v61, v62, v63, v108, v110, v112, v116, v117, v118);
      if (v16 == v77)
      {
        v119 = v18;
        break;
      }
    }
  }

  if (!*v111)
  {
    goto LABEL_128;
  }

  sub_1000122D8(&v119, *v111, v118);
LABEL_102:
}

uint64_t sub_100010BC4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v139 = sub_100001F58(&qword_100020148, &qword_100018B20);
  v146 = *(v139 - 8);
  v8 = *(v146 + 64);
  v9 = __chkstk_darwin(v139);
  v136 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v138 = &v125 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v125 - v14;
  v16 = __chkstk_darwin(v13);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v21 = &v125 - v20;
  result = __chkstk_darwin(v19);
  v27 = &v125 - v23;
  v147 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = &_swiftEmptyArrayStorage;
LABEL_108:
    v148 = *v135;
    if (v148)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_110;
    }

    goto LABEL_153;
  }

  v130 = a4;
  v29 = 0;
  v30 = &_swiftEmptyArrayStorage;
  v144 = v15;
  v137 = v24;
  v140 = v26;
  v141 = v25;
  v133 = v21;
  v134 = &v125 - v23;
  v31 = v15;
  while (1)
  {
    v32 = v29++;
    if (v29 < v28)
    {
      v143 = v28;
      v33 = v27;
      v34 = *v147;
      v35 = *(v146 + 72);
      v148 = *v147 + v35 * v29;
      sub_100015B54(v148, v33, &qword_100020148, &qword_100018B20);
      v36 = v34;
      sub_100015B54(v34 + v35 * v32, v21, &qword_100020148, &qword_100018B20);
      v37 = v134;
      LODWORD(v142) = sub_100008E50(v134, v21);
      if (v5)
      {
        sub_100015DFC(v21, &qword_100020148, &qword_100018B20);
        sub_100015DFC(v37, &qword_100020148, &qword_100018B20);
      }

      v131 = v30;
      sub_100015DFC(v21, &qword_100020148, &qword_100018B20);
      result = sub_100015DFC(v37, &qword_100020148, &qword_100018B20);
      v132 = v32;
      v38 = v32 + 2;
      v39 = v36 + v35 * (v32 + 2);
      v40 = v35;
      v41 = v143;
      v42 = v148;
      while (1)
      {
        v43 = v38;
        if (v29 + 1 >= v41)
        {
          break;
        }

        v145 = v38;
        v44 = v29;
        v45 = v140;
        sub_100015B54(v39, v140, &qword_100020148, &qword_100018B20);
        v46 = v141;
        sub_100015B54(v42, v141, &qword_100020148, &qword_100018B20);
        v47 = sub_100008E50(v45, v46);
        v148 = v5;
        if (v5)
        {
          sub_100015DFC(v46, &qword_100020148, &qword_100018B20);
          sub_100015DFC(v45, &qword_100020148, &qword_100018B20);
        }

        v48 = v47;
        sub_100015DFC(v46, &qword_100020148, &qword_100018B20);
        result = sub_100015DFC(v45, &qword_100020148, &qword_100018B20);
        v39 += v40;
        v42 += v40;
        v29 = v44 + 1;
        v43 = v145;
        v38 = v145 + 1;
        v5 = v148;
        v41 = v143;
        if ((v142 ^ v48))
        {
          goto LABEL_11;
        }
      }

      v29 = v41;
LABEL_11:
      if (v142)
      {
        v32 = v132;
        v31 = v144;
        if (v29 < v132)
        {
          goto LABEL_147;
        }

        if (v132 >= v29)
        {
          v30 = v131;
          goto LABEL_34;
        }

        if (v41 >= v43)
        {
          v49 = v43;
        }

        else
        {
          v49 = v41;
        }

        v50 = v29;
        v51 = v40 * (v49 - 1);
        v52 = v132;
        v53 = v40 * v49;
        v54 = v132 * v40;
        v145 = v50;
        do
        {
          if (v52 != --v50)
          {
            v55 = *v147;
            if (!*v147)
            {
              goto LABEL_151;
            }

            sub_1000158C0(v55 + v54, v136, &qword_100020148, &qword_100018B20);
            v56 = v54 < v51 || v55 + v54 >= (v55 + v53);
            if (v56)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != v51)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1000158C0(v136, v55 + v51, &qword_100020148, &qword_100018B20);
            v31 = v144;
          }

          ++v52;
          v51 -= v40;
          v53 -= v40;
          v54 += v40;
        }

        while (v52 < v50);
        v30 = v131;
        v29 = v145;
      }

      else
      {
        v30 = v131;
        v31 = v144;
      }

      v32 = v132;
    }

LABEL_34:
    v57 = v147[1];
    if (v29 >= v57)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v29, v32))
    {
      goto LABEL_143;
    }

    if (v29 - v32 >= v130)
    {
      goto LABEL_42;
    }

    v58 = v32 + v130;
    if (__OFADD__(v32, v130))
    {
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      return result;
    }

    if (v58 >= v57)
    {
      v58 = v147[1];
    }

    if (v58 < v32)
    {
      goto LABEL_146;
    }

    if (v29 != v58)
    {
      v148 = v5;
      v105 = *v147;
      v106 = *(v146 + 72);
      v107 = *v147 + v106 * (v29 - 1);
      v142 = -v106;
      v143 = v105;
      v132 = v32;
      v108 = v32 - v29;
      v145 = v29;
      v126 = v106;
      v109 = v105 + v29 * v106;
      v127 = v58;
      do
      {
        v128 = v109;
        v129 = v108;
        v131 = v107;
        while (1)
        {
          v110 = v137;
          sub_100015B54(v109, v137, &qword_100020148, &qword_100018B20);
          sub_100015B54(v107, v31, &qword_100020148, &qword_100018B20);
          v111 = v148;
          v112 = sub_100008E50(v110, v31);
          v113 = v31;
          v148 = v111;
          if (v111)
          {
            sub_100015DFC(v31, &qword_100020148, &qword_100018B20);
            sub_100015DFC(v110, &qword_100020148, &qword_100018B20);
          }

          v114 = v112;
          v115 = v113;
          sub_100015DFC(v113, &qword_100020148, &qword_100018B20);
          result = sub_100015DFC(v110, &qword_100020148, &qword_100018B20);
          if ((v114 & 1) == 0)
          {
            break;
          }

          if (!v143)
          {
            goto LABEL_150;
          }

          v116 = v138;
          sub_1000158C0(v109, v138, &qword_100020148, &qword_100018B20);
          swift_arrayInitWithTakeFrontToBack();
          sub_1000158C0(v116, v107, &qword_100020148, &qword_100018B20);
          v107 += v142;
          v109 += v142;
          v56 = __CFADD__(v108++, 1);
          v31 = v115;
          if (v56)
          {
            goto LABEL_105;
          }
        }

        v31 = v115;
LABEL_105:
        v107 = &v131[v126];
        v108 = v129 - 1;
        v109 = v128 + v126;
        ++v145;
      }

      while (v145 != v127);
      v29 = v127;
      v5 = v148;
      v32 = v132;
    }

LABEL_42:
    if (v29 < v32)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v59 = v32;
    v60 = v31;
    if ((result & 1) == 0)
    {
      result = sub_10000EF70(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v62 = *(v30 + 2);
    v61 = *(v30 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      result = sub_10000EF70((v61 > 1), v62 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v63;
    v64 = v30 + 32;
    v65 = &v30[16 * v62 + 32];
    *v65 = v59;
    *(v65 + 1) = v29;
    v148 = *v135;
    if (!v148)
    {
      goto LABEL_152;
    }

    if (v62)
    {
      break;
    }

    v31 = v60;
LABEL_94:
    v28 = v147[1];
    v21 = v133;
    v27 = v134;
    if (v29 >= v28)
    {
      goto LABEL_108;
    }
  }

  v31 = v60;
  v145 = v29;
  while (1)
  {
    v66 = v63 - 1;
    v67 = &v64[16 * v63 - 16];
    v68 = &v30[16 * v63];
    if (v63 >= 4)
    {
      v73 = &v64[16 * v63];
      v74 = *(v73 - 8);
      v75 = *(v73 - 7);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_130;
      }

      v78 = *(v73 - 6);
      v77 = *(v73 - 5);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_131;
      }

      v80 = *(v68 + 1);
      v81 = v80 - *v68;
      if (__OFSUB__(v80, *v68))
      {
        goto LABEL_133;
      }

      v79 = __OFADD__(v71, v81);
      v82 = v71 + v81;
      if (v79)
      {
        goto LABEL_136;
      }

      if (v82 >= v76)
      {
        v96 = *v67;
        v95 = *(v67 + 1);
        v79 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v79)
        {
          goto LABEL_141;
        }

        if (v71 < v97)
        {
          v66 = v63 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

    if (v63 == 3)
    {
      v69 = *(v30 + 4);
      v70 = *(v30 + 5);
      v79 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      v72 = v79;
LABEL_63:
      if (v72)
      {
        goto LABEL_132;
      }

      v84 = *v68;
      v83 = *(v68 + 1);
      v85 = __OFSUB__(v83, v84);
      v86 = v83 - v84;
      v87 = v85;
      if (v85)
      {
        goto LABEL_135;
      }

      v88 = *(v67 + 1);
      v89 = v88 - *v67;
      if (__OFSUB__(v88, *v67))
      {
        goto LABEL_138;
      }

      if (__OFADD__(v86, v89))
      {
        goto LABEL_140;
      }

      if (v86 + v89 >= v71)
      {
        if (v71 < v89)
        {
          v66 = v63 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_78;
    }

    if (v63 < 2)
    {
      goto LABEL_134;
    }

    v91 = *v68;
    v90 = *(v68 + 1);
    v79 = __OFSUB__(v90, v91);
    v86 = v90 - v91;
    v87 = v79;
LABEL_78:
    if (v87)
    {
      goto LABEL_137;
    }

    v93 = *v67;
    v92 = *(v67 + 1);
    v79 = __OFSUB__(v92, v93);
    v94 = v92 - v93;
    if (v79)
    {
      goto LABEL_139;
    }

    if (v94 < v86)
    {
      goto LABEL_94;
    }

LABEL_85:
    if (v66 - 1 >= v63)
    {
      break;
    }

    if (!*v147)
    {
      goto LABEL_148;
    }

    v98 = v30;
    v99 = &v64[16 * v66 - 16];
    v30 = *v99;
    v100 = v64;
    v101 = v66;
    v102 = &v64[16 * v66];
    v103 = *(v102 + 1);
    sub_100012638(*v147 + *(v146 + 72) * *v99, *v147 + *(v146 + 72) * *v102, *v147 + *(v146 + 72) * v103, v148);
    if (v5)
    {
    }

    if (v103 < v30)
    {
      goto LABEL_124;
    }

    v104 = v98[2];
    if (v101 > v104)
    {
      goto LABEL_125;
    }

    *v99 = v30;
    *(v99 + 1) = v103;
    if (v101 >= v104)
    {
      goto LABEL_126;
    }

    v63 = v104 - 1;
    result = memmove(v102, v102 + 16, 16 * (v104 - 1 - v101));
    v30 = v98;
    v98[2] = v104 - 1;
    v31 = v144;
    v29 = v145;
    v64 = v100;
    if (v104 <= 2)
    {
      goto LABEL_94;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
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
  result = sub_100013160(v30);
  v30 = result;
LABEL_110:
  v117 = v30;
  v119 = *(v30 + 2);
  v30 += 16;
  for (i = v119; i >= 2; *v30 = i)
  {
    if (!*v147)
    {
      goto LABEL_149;
    }

    v120 = &v117[16 * i];
    v121 = *v120;
    v122 = &v30[16 * i];
    v123 = *(v122 + 1);
    sub_100012638(*v147 + *(v146 + 72) * *v120, *v147 + *(v146 + 72) * *v122, *v147 + *(v146 + 72) * v123, v148);
    if (v5)
    {
      break;
    }

    if (v123 < v121)
    {
      goto LABEL_127;
    }

    if (i - 2 >= *v30)
    {
      goto LABEL_128;
    }

    *v120 = v121;
    v120[1] = v123;
    v124 = *v30 - i;
    if (*v30 < i)
    {
      goto LABEL_129;
    }

    i = *v30 - 1;
    result = memmove(v122, v122 + 16, 16 * v124);
  }
}

uint64_t sub_100011668(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_104:
    v106 = *v99;
    if (!*v99)
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_106;
    }

    goto LABEL_140;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = v5;
    v8 = (v5 + 1);
    v100 = v5;
    if ((v5 + 1) < v4)
    {
      v9 = *a3;
      sub_100015D08(*a3 + 40 * v8, &v110);
      sub_100015D08(v9 + 40 * v7, v108);
      v10 = v112;
      LODWORD(v106) = sub_10000D724(&v110, v108);
      v112 = v10;
      if (v10)
      {
        sub_10000202C(v108);
        sub_10000202C(&v110);
      }

      v97 = v6;
      sub_10000202C(v108);
      result = sub_10000202C(&v110);
      v103 = 40 * v7;
      v11 = v9 + 40 * v7 + 80;
      v12 = (v7 + 2);
      while (1)
      {
        v13 = v12;
        if (v8 + 1 >= v4)
        {
          break;
        }

        sub_100015D08(v11, &v110);
        sub_100015D08(v11 - 40, v108);
        sub_100015E74(&v110, v111);
        v14 = sub_1000175F8();
        v16 = v15;
        sub_100015E74(v108, v109);
        if (v14 == sub_1000175F8() && v16 == v17)
        {
          v19 = 0;
        }

        else
        {
          v19 = sub_100017E68();
        }

        sub_10000202C(v108);
        result = sub_10000202C(&v110);
        v11 += 40;
        ++v8;
        v12 = v13 + 1;
        if ((v106 ^ v19))
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
LABEL_16:
      if (v106)
      {
        v20 = v100;
        v6 = v97;
        if (v8 < v100)
        {
          goto LABEL_139;
        }

        if (v100 >= v8)
        {
          v7 = v100;
        }

        else
        {
          if (v4 >= v13)
          {
            v21 = v13;
          }

          else
          {
            v21 = v4;
          }

          v22 = 40 * v21 - 40;
          v23 = v8;
          v24 = v103;
          do
          {
            if (v20 != --v23)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_144;
              }

              v26 = v8;
              v27 = v25 + v24;
              v28 = v25 + v22;
              sub_10000D70C((v25 + v24), &v110);
              v29 = *(v28 + 32);
              v30 = *(v28 + 16);
              *v27 = *v28;
              *(v27 + 16) = v30;
              *(v27 + 32) = v29;
              result = sub_10000D70C(&v110, v28);
              v8 = v26;
            }

            ++v20;
            v22 -= 40;
            v24 += 40;
          }

          while (v20 < v23);
          v7 = v100;
        }
      }

      else
      {
        v7 = v100;
        v6 = v97;
      }
    }

    v31 = a3[1];
    if (v8 < v31)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_136;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v8 < v7)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000EF70(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v45 = *(v6 + 16);
    v44 = *(v6 + 24);
    v46 = v45 + 1;
    v106 = v8;
    if (v45 >= v44 >> 1)
    {
      result = sub_10000EF70((v44 > 1), v45 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v46;
    v47 = v6 + 32;
    v48 = (v6 + 32 + 16 * v45);
    *v48 = v100;
    v48[1] = v106;
    v105 = *v99;
    if (!*v99)
    {
      goto LABEL_145;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        v50 = (v47 + 16 * (v46 - 1));
        v51 = (v6 + 16 * v46);
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v52 = *(v6 + 32);
          v53 = *(v6 + 40);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_72:
          if (v55)
          {
            goto LABEL_122;
          }

          v67 = *v51;
          v66 = v51[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_125;
          }

          v71 = v50[1];
          v72 = v71 - *v50;
          if (__OFSUB__(v71, *v50))
          {
            goto LABEL_128;
          }

          if (__OFADD__(v69, v72))
          {
            goto LABEL_130;
          }

          if (v69 + v72 >= v54)
          {
            if (v54 < v72)
            {
              v49 = v46 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v46 < 2)
        {
          goto LABEL_124;
        }

        v74 = *v51;
        v73 = v51[1];
        v62 = __OFSUB__(v73, v74);
        v69 = v73 - v74;
        v70 = v62;
LABEL_87:
        if (v70)
        {
          goto LABEL_127;
        }

        v76 = *v50;
        v75 = v50[1];
        v62 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v62)
        {
          goto LABEL_129;
        }

        if (v77 < v69)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v81 = v6;
        v82 = (v47 + 16 * (v49 - 1));
        v83 = *v82;
        v84 = (v47 + 16 * v49);
        v6 = v84[1];
        v85 = v112;
        sub_100012C38((*a3 + 40 * *v82), (*a3 + 40 * *v84), *a3 + 40 * v6, v105);
        v112 = v85;
        if (v85)
        {
        }

        if (v6 < v83)
        {
          goto LABEL_117;
        }

        v86 = *(v81 + 16);
        if (v49 > v86)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v6;
        if (v49 >= v86)
        {
          goto LABEL_119;
        }

        v46 = v86 - 1;
        result = memmove((v47 + 16 * v49), v84 + 2, 16 * (v86 - 1 - v49));
        v6 = v81;
        *(v81 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_101;
        }
      }

      v56 = v47 + 16 * v46;
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_120;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_121;
      }

      v63 = v51[1];
      v64 = v63 - *v51;
      if (__OFSUB__(v63, *v51))
      {
        goto LABEL_123;
      }

      v62 = __OFADD__(v54, v64);
      v65 = v54 + v64;
      if (v62)
      {
        goto LABEL_126;
      }

      if (v65 >= v59)
      {
        v79 = *v50;
        v78 = v50[1];
        v62 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v62)
        {
          goto LABEL_134;
        }

        if (v54 < v80)
        {
          v49 = v46 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v5 = v106;
    v4 = a3[1];
    if (v106 >= v4)
    {
      goto LABEL_104;
    }
  }

  v32 = &v7[a4];
  if (__OFADD__(v7, a4))
  {
    goto LABEL_137;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v7)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    result = sub_100013160(v6);
    v6 = result;
LABEL_106:
    v87 = v6;
    v88 = (v6 + 16);
    for (i = *(v6 + 16); ; *v88 = i)
    {
      v6 = i - 2;
      if (i < 2)
      {
        break;
      }

      if (!*a3)
      {
        goto LABEL_143;
      }

      v90 = (v87 + 16 * i);
      v91 = *v90;
      v92 = &v88[2 * i];
      v93 = v92[1];
      v94 = v112;
      sub_100012C38((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v93, v106);
      v112 = v94;
      if (v94)
      {
        break;
      }

      if (v93 < v91)
      {
        goto LABEL_131;
      }

      if (v6 >= *v88)
      {
        goto LABEL_132;
      }

      *v90 = v91;
      v90[1] = v93;
      v95 = *v88 - i;
      if (*v88 < i)
      {
        goto LABEL_133;
      }

      i = *v88 - 1;
      result = memmove(v92, v92 + 2, 16 * v95);
    }
  }

  if (v8 == v32)
  {
    goto LABEL_52;
  }

  v98 = v6;
  v33 = *a3;
  v34 = *a3 + 40 * v8;
  v35 = &v7[-v8];
  v101 = v32;
LABEL_39:
  v104 = v34;
  v106 = v8;
  v102 = v35;
  while (1)
  {
    sub_100015D08(v34, &v110);
    sub_100015D08(v34 - 40, v108);
    sub_100015E74(&v110, v111);
    v36 = sub_1000175F8();
    v38 = v37;
    sub_100015E74(v108, v109);
    if (v36 == sub_1000175F8() && v38 == v39)
    {

      sub_10000202C(v108);
      sub_10000202C(&v110);
LABEL_50:
      v8 = (v106 + 1);
      v34 = v104 + 40;
      v35 = v102 - 1;
      if (v106 + 1 == v101)
      {
        v8 = v101;
        v6 = v98;
        v7 = v100;
        goto LABEL_52;
      }

      goto LABEL_39;
    }

    v41 = sub_100017E68();

    sub_10000202C(v108);
    result = sub_10000202C(&v110);
    if ((v41 & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!v33)
    {
      break;
    }

    sub_10000D70C(v34, &v110);
    v42 = *(v34 - 24);
    *v34 = *(v34 - 40);
    *(v34 + 16) = v42;
    *(v34 + 32) = *(v34 - 8);
    sub_10000D70C(&v110, v34 - 40);
    v34 -= 40;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_50;
    }
  }

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
  return result;
}

void sub_100011E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v116 = a1;
  sub_100017198(a1, a2, a3);
  if (v16 == v82)
  {
    v114 = v11;
    v17 = 0;
    v18 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v19 = v17;
      i = v17 + 1;
      if (v17 + 1 < v4)
      {
        sub_100017080(v8, v9, v10, v11, v12, v13, v14, v15, v112, v114, v116, v118, v121, v122);
        v22 = v21 + 32 * i;
        v23 = (v21 + 32 * v19);
        if (*(v22 + 16) == v23[2] && *(v22 + 24) == v23[3])
        {
          v6 = 0;
        }

        else
        {
          v6 = sub_100017E68();
        }

        v5 = 32 * v19;
        v25 = v23 + 11;
        for (i = v19 + 2; i < v4; ++i)
        {
          if (*(v25 - 1) == *(v25 - 5) && *v25 == *(v25 - 4))
          {
            if (v6)
            {
              goto LABEL_21;
            }
          }

          else if ((v6 ^ sub_100017E68()))
          {
            break;
          }

          v25 += 4;
        }

        if ((v6 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v19)
        {
          goto LABEL_121;
        }

        if (v19 < i)
        {
          v27 = 32 * i - 16;
          v28 = v5 + 24;
          v29 = i;
          v30 = v19;
          do
          {
            if (v30 != --v29)
            {
              v31 = *v122;
              if (!*v122)
              {
                goto LABEL_126;
              }

              v32 = (v31 + v28);
              v33 = v31 + v27;
              v34 = *(v32 - 3);
              v35 = *(v32 - 1);
              v36 = *v32;
              v37 = *v33;
              *(v32 - 3) = *(v33 - 16);
              *(v32 - 1) = v37;
              *(v33 - 16) = v34;
              *v33 = v35;
              *(v33 + 8) = v36;
            }

            ++v30;
            v27 -= 32;
            v28 += 32;
          }

          while (v30 < v29);
        }
      }

LABEL_28:
      v38 = v122[1];
      if (i < v38)
      {
        if (__OFSUB__(i, v19))
        {
          goto LABEL_120;
        }

        if (i - v19 < v114)
        {
          if (__OFADD__(v19, v114))
          {
            goto LABEL_122;
          }

          if (v19 + v114 >= v38)
          {
            v4 = v122[1];
          }

          else
          {
            v4 = (v19 + v114);
          }

          if (v4 < v19)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (i != v4)
          {
            v5 = *v122;
            v39 = *v122 + 32 * i - 32;
            v121 = v19;
            v40 = v19 - i;
            do
            {
              v41 = i;
              v42 = v5 + 32 * i;
              v43 = *(v42 + 16);
              v44 = *(v42 + 24);
              v45 = v40;
              v6 = v39;
              do
              {
                v46 = v43 == *(v6 + 16) && v44 == *(v6 + 24);
                if (v46 || (sub_100017E68() & 1) == 0)
                {
                  break;
                }

                if (!v5)
                {
                  goto LABEL_124;
                }

                v47 = *(v6 + 32);
                v48 = *(v6 + 40);
                v43 = *(v6 + 48);
                v44 = *(v6 + 56);
                v49 = *(v6 + 16);
                *(v6 + 32) = *v6;
                *(v6 + 48) = v49;
                *v6 = v47;
                *(v6 + 8) = v48;
                *(v6 + 16) = v43;
                *(v6 + 24) = v44;
                v6 -= 32;
                v50 = __CFADD__(v45++, 1);
              }

              while (!v50);
              i = v41 + 1;
              v39 += 32;
              --v40;
            }

            while ((v41 + 1) != v4);
            i = v4;
            v19 = v121;
          }
        }
      }

      if (i < v19)
      {
        goto LABEL_119;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v105 = *(v18 + 2);
        v106 = sub_1000166DC();
        isUniquelyReferenced_nonNull_native = sub_10000EF70(v106, v107, v108, v18);
        v18 = isUniquelyReferenced_nonNull_native;
      }

      v59 = *(v18 + 2);
      v60 = v59 + 1;
      if (v59 >= *(v18 + 3) >> 1)
      {
        sub_100016E38();
        isUniquelyReferenced_nonNull_native = sub_10000EF70(v109, v110, v111, v18);
        v18 = isUniquelyReferenced_nonNull_native;
      }

      sub_100016B88(isUniquelyReferenced_nonNull_native, v52, v53, v54, v55, v56, v57, v58, v112, v114, v116, v119);
      if (!v69)
      {
        goto LABEL_127;
      }

      if (v59)
      {
        while (1)
        {
          sub_100017200();
          if (v50)
          {
            break;
          }

          if (v59 == 2)
          {
            v72 = *(v18 + 4);
            v73 = *(v18 + 5);
            v82 = __OFSUB__(v73, v72);
            v74 = v73 - v72;
            v75 = v82;
LABEL_69:
            if (v75)
            {
              goto LABEL_109;
            }

            v87 = *v71;
            v86 = v71[1];
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_112;
            }

            v91 = v70[1];
            v92 = v91 - *v70;
            if (__OFSUB__(v91, *v70))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v89, v92))
            {
              goto LABEL_117;
            }

            if (v89 + v92 >= v74)
            {
              if (v74 < v92)
              {
                v4 = v59 - 1;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v60 < 2)
          {
            goto LABEL_111;
          }

          v94 = *v71;
          v93 = v71[1];
          v82 = __OFSUB__(v93, v94);
          v89 = v93 - v94;
          v90 = v82;
LABEL_84:
          if (v90)
          {
            goto LABEL_114;
          }

          v96 = *v70;
          v95 = v70[1];
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_116;
          }

          if (v97 < v89)
          {
            goto LABEL_98;
          }

LABEL_91:
          if ((v4 - 1) >= v60)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          sub_100017080(v61, v62, v63, v64, v65, v66, v67, v68, v113, v115, v117, v120, v121, v122);
          if (!v101)
          {
            goto LABEL_125;
          }

          sub_1000171C0();
          sub_100012FC8();
          if (v7)
          {
            goto LABEL_102;
          }

          if (v6 < v60)
          {
            goto LABEL_104;
          }

          v102 = v18;
          v103 = *(v18 + 2);
          if (v4 > v103)
          {
            goto LABEL_105;
          }

          *v59 = v60;
          v59[1] = v6;
          if (v4 >= v103)
          {
            goto LABEL_106;
          }

          v61 = sub_100016FC0();
          *(v102 + 2) = v60;
          v104 = v103 > 2;
          v18 = v102;
          v7 = 0;
          if (!v104)
          {
            goto LABEL_98;
          }
        }

        v76 = v5 + 16 * v60;
        v77 = *(v76 - 64);
        v78 = *(v76 - 56);
        v82 = __OFSUB__(v78, v77);
        v79 = v78 - v77;
        if (v82)
        {
          goto LABEL_107;
        }

        v81 = *(v76 - 48);
        v80 = *(v76 - 40);
        v82 = __OFSUB__(v80, v81);
        v74 = v80 - v81;
        v75 = v82;
        if (v82)
        {
          goto LABEL_108;
        }

        v83 = v71[1];
        v84 = v83 - *v71;
        if (__OFSUB__(v83, *v71))
        {
          goto LABEL_110;
        }

        v82 = __OFADD__(v74, v84);
        v85 = v74 + v84;
        if (v82)
        {
          goto LABEL_113;
        }

        if (v85 >= v79)
        {
          v99 = *v70;
          v98 = v70[1];
          v82 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v82)
          {
            goto LABEL_118;
          }

          if (v74 < v100)
          {
            v4 = v59 - 1;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      sub_10001706C(v61, v62, v63, v64, v65, v66, v67, v68, v113, v115, v117, v120, v121, v122);
      if (v16 == v82)
      {
        v123 = v18;
        break;
      }
    }
  }

  if (!*v116)
  {
    goto LABEL_128;
  }

  sub_1000123BC(&v123, *v116, v122);
LABEL_102:
}

void sub_1000122D8(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((sub_100016F9C(a1) & 1) == 0)
  {
LABEL_14:
    v4 = sub_100013160(v4);
  }

  sub_10001711C();
  while (1)
  {
    if (v8 < 2)
    {
LABEL_10:
      sub_1000170C4(v10, v11, v12, v13, v14, v15, v16, v17, v18);
      sub_1000170D0();
      return;
    }

    if (!*a3)
    {
      break;
    }

    sub_1000170E8();
    v10 = sub_1000124A0();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v6 < v5)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v8 - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v5;
    v9[1] = v6;
    if (*v7 < v8)
    {
      goto LABEL_13;
    }

    v10 = sub_100017300(*v7 - v8);
    *v7 = v8;
  }

  sub_1000170C4(v10, v11, v12, v13, v14, v15, v16, v17, v18);
  __break(1u);
}

void sub_1000123BC(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((sub_100016F9C(a1) & 1) == 0)
  {
LABEL_14:
    v4 = sub_100013160(v4);
  }

  sub_10001711C();
  while (1)
  {
    if (v8 < 2)
    {
LABEL_10:
      sub_1000170C4(v10, v11, v12, v13, v14, v15, v16, v17, v18);
      sub_1000170D0();
      return;
    }

    if (!*a3)
    {
      break;
    }

    sub_1000170E8();
    v10 = sub_100012FC8();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v6 < v5)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v8 - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v5;
    v9[1] = v6;
    if (*v7 < v8)
    {
      goto LABEL_13;
    }

    v10 = sub_100017300(*v7 - v8);
    *v7 = v8;
  }

  sub_1000170C4(v10, v11, v12, v13, v14, v15, v16, v17, v18);
  __break(1u);
}

uint64_t sub_1000124A0()
{
  sub_100016CB8();
  sub_100017098();
  if (v6 != v7)
  {
    if (v0 != v2 || &v2[v4] <= v0)
    {
      v9 = sub_100016E50();
      memmove(v9, v10, v11);
    }

    v12 = &v0[2 * v4];
    while (1)
    {
      if (v0 >= v12 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_47;
      }

      v14 = *v1 == *v0 && v1[1] == v0[1];
      if (v14 || (sub_100017E68() & 1) == 0)
      {
        break;
      }

      v15 = v1;
      v14 = v2 == v1;
      v1 += 2;
      if (!v14)
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v2;
    }

    v15 = v0;
    v14 = v2 == v0;
    v0 += 2;
    if (v14)
    {
      goto LABEL_23;
    }

LABEL_22:
    *v2 = *v15;
    goto LABEL_23;
  }

  if (v0 != v1 || &v1[2 * v5] <= v0)
  {
    v17 = sub_1000170AC();
    memmove(v17, v18, v19);
  }

  v12 = &v0[2 * v5];
LABEL_30:
  v20 = v1 - 2;
  for (--v3; v12 > v0 && v1 > v2; --v3)
  {
    v22 = *(v12 - 2) == *(v1 - 2) && *(v12 - 1) == *(v1 - 1);
    if (!v22 && (sub_100017E68() & 1) != 0)
    {
      v14 = v3 + 1 == v1;
      v1 -= 2;
      if (!v14)
      {
        *v3 = *v20;
        v1 = v20;
      }

      goto LABEL_30;
    }

    if (v12 != (v3 + 1))
    {
      *v3 = *(v12 - 1);
    }

    v12 -= 2;
  }

LABEL_47:
  v23 = (v12 - v0) / 16;
  if (v1 != v0 || v1 >= &v0[2 * v23])
  {
    memmove(v1, v0, 16 * v23);
  }

  return sub_1000170D0();
}

uint64_t sub_100012638(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v71 = a3;
  v72 = sub_100001F58(&qword_100020148, &qword_100018B20);
  v7 = *(*(v72 - 8) + 64);
  v8 = __chkstk_darwin(v72);
  v9 = __chkstk_darwin(v8);
  v64 = &v62 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v62 - v12;
  result = __chkstk_darwin(v11);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_66;
  }

  v21 = v71 - a2;
  if (v71 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_67;
  }

  v23 = v19 / v18;
  v76 = a1;
  v75 = a4;
  v24 = v21 / v18;
  if (v19 / v18 >= v21 / v18)
  {
    i = v16;
    v41 = a2;
    sub_10000F82C(a2, v21 / v18, a4);
    v70 = a4;
    v42 = a4 + v24 * v18;
    v43 = -v18;
    v44 = v42;
    v45 = v71;
    v69 = v43;
    v66 = a1;
LABEL_38:
    v71 = v41;
    v46 = v41 + v43;
    v47 = v45;
    v63 = v44;
    v48 = v64;
    v67 = v46;
    while (1)
    {
      if (v42 <= v70)
      {
        v76 = v71;
        v74 = v44;
        goto LABEL_64;
      }

      if (v71 <= a1)
      {
        v76 = v71;
        v61 = v63;
        goto LABEL_63;
      }

      v65 = v44;
      v49 = v69;
      v50 = v42;
      v51 = v42 + v69;
      sub_100015B54(v42 + v69, v48, &qword_100020148, &qword_100018B20);
      v52 = v48;
      v53 = i;
      sub_100015B54(v46, i, &qword_100020148, &qword_100018B20);
      v54 = v73;
      v55 = sub_100008E50(v52, v53);
      v73 = v54;
      if (v54)
      {
        break;
      }

      v56 = v55;
      v45 = v47 + v49;
      sub_100015DFC(v53, &qword_100020148, &qword_100018B20);
      sub_100015DFC(v52, &qword_100020148, &qword_100018B20);
      if (v56)
      {
        v58 = v47 < v71 || v45 >= v71;
        v42 = v50;
        if (v58)
        {
          v41 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v44 = v65;
          a1 = v66;
          v43 = v69;
        }

        else
        {
          a1 = v66;
          v44 = v65;
          v59 = v67;
          v41 = v67;
          v43 = v69;
          if (v47 != v71)
          {
            v60 = v65;
            swift_arrayInitWithTakeBackToFront();
            v41 = v59;
            v44 = v60;
          }
        }

        goto LABEL_38;
      }

      v48 = v52;
      if (v47 < v50 || v45 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v45;
        v42 = v51;
        v44 = v51;
        a1 = v66;
        v46 = v67;
      }

      else
      {
        v44 = v51;
        v20 = v50 == v47;
        v47 = v45;
        v42 = v51;
        a1 = v66;
        v46 = v67;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v47 = v45;
          v42 = v51;
          v44 = v51;
        }
      }
    }

    sub_100015DFC(v53, &qword_100020148, &qword_100018B20);
    sub_100015DFC(v52, &qword_100020148, &qword_100018B20);
    v76 = v71;
    v61 = v65;
LABEL_63:
    v74 = v61;
  }

  else
  {
    v69 = &v62 - v15;
    sub_10000F82C(a1, v19 / v18, a4);
    v70 = a4 + v23 * v18;
    v74 = v70;
    v25 = a2;
    v26 = v18;
    v27 = v71;
    for (i = v13; a4 < v70 && v25 < v27; v13 = i)
    {
      v29 = a1;
      v30 = v26;
      v31 = v25;
      v32 = v69;
      sub_100015B54(v25, v69, &qword_100020148, &qword_100018B20);
      v33 = a4;
      sub_100015B54(a4, v13, &qword_100020148, &qword_100018B20);
      v34 = v73;
      v35 = sub_100008E50(v32, v13);
      v73 = v34;
      if (v34)
      {
        sub_100015DFC(v13, &qword_100020148, &qword_100018B20);
        sub_100015DFC(v32, &qword_100020148, &qword_100018B20);
        break;
      }

      v36 = v35;
      sub_100015DFC(v13, &qword_100020148, &qword_100018B20);
      sub_100015DFC(v32, &qword_100020148, &qword_100018B20);
      if (v36)
      {
        v26 = v30;
        v37 = v31 + v30;
        v38 = v29;
        if (v29 < v31 || v29 >= v37)
        {
          swift_arrayInitWithTakeFrontToBack();
          v25 = v31 + v30;
          a4 = v33;
          v27 = v71;
        }

        else
        {
          v27 = v71;
          if (v29 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v25 = v37;
          a4 = v33;
        }
      }

      else
      {
        v26 = v30;
        a4 += v30;
        v38 = v29;
        if (v29 < v33 || v29 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v27 = v71;
        }

        else
        {
          v27 = v71;
          if (v29 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v75 = a4;
        v25 = v31;
      }

      a1 = v38 + v26;
      v76 = a1;
    }
  }

LABEL_64:
  sub_100013174(&v76, &v75, &v74);
  return 1;
}

uint64_t sub_100012C38(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 40;
  v9 = (a3 - __dst) / 40;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[40 * v8] <= a4)
    {
      memmove(a4, __src, 40 * v8);
    }

    v11 = &v4[40 * v8];
    v47 = v5;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      sub_100015D08(v6, v45);
      sub_100015D08(v4, v43);
      sub_100015E74(v45, v46);
      v13 = sub_1000175F8();
      v15 = v14;
      sub_100015E74(v43, v44);
      v17 = v13 == sub_1000175F8() && v15 == v16;
      if (v17)
      {

        sub_10000202C(v43);
        sub_10000202C(v45);
      }

      else
      {
        v18 = sub_100017E68();

        sub_10000202C(v43);
        sub_10000202C(v45);
        if (v18)
        {
          v19 = v6;
          v20 = v7 == v6;
          v6 += 40;
          goto LABEL_20;
        }
      }

      v19 = v4;
      v20 = v7 == v4;
      v4 += 40;
LABEL_20:
      v5 = v47;
      if (!v20)
      {
        v21 = *v19;
        v22 = *(v19 + 1);
        *(v7 + 4) = *(v19 + 4);
        *v7 = v21;
        *(v7 + 1) = v22;
      }

      v7 += 40;
    }
  }

  if (a4 != __dst || &__dst[40 * v9] <= a4)
  {
    memmove(a4, __dst, 40 * v9);
  }

  v24 = &v4[40 * v9];
  v41 = v7;
LABEL_29:
  v25 = (v6 - 40);
  v5 -= 40;
  v26 = (v24 - 40);
  v42 = v6 - 40;
  while (1)
  {
    v11 = (v26 + 40);
    if (v26 + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    v47 = v26 + 40;
    sub_100015D08(v26, v45);
    sub_100015D08(v25, v43);
    sub_100015E74(v45, v46);
    v28 = sub_1000175F8();
    v30 = v29;
    sub_100015E74(v43, v44);
    if (v28 == sub_1000175F8() && v30 == v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = sub_100017E68();
    }

    sub_10000202C(v43);
    sub_10000202C(v45);
    if (v33)
    {
      v24 = (v26 + 40);
      v17 = v5 + 40 == v6;
      v6 -= 40;
      v7 = v41;
      if (!v17)
      {
        v36 = *v42;
        v37 = *(v42 + 1);
        *(v5 + 32) = *(v42 + 4);
        *v5 = v36;
        *(v5 + 16) = v37;
        v6 = v42;
      }

      goto LABEL_29;
    }

    if (v47 != v5 + 40)
    {
      v34 = *v26;
      v35 = *(v26 + 16);
      *(v5 + 32) = *(v26 + 32);
      *v5 = v34;
      *(v5 + 16) = v35;
    }

    v5 -= 40;
    v26 -= 40;
    v7 = v41;
    v25 = (v6 - 40);
  }

LABEL_48:
  v38 = (v11 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v38])
  {
    memmove(v6, v4, 40 * v38);
  }

  return 1;
}

uint64_t sub_100012FC8()
{
  sub_100016CB8();
  sub_100017098();
  if (v6 != v7)
  {
    if (v0 != v2 || &v2[2 * v4] <= v0)
    {
      v9 = sub_100016E50();
      memmove(v9, v10, v11);
    }

    v12 = &v0[4 * v4];
    while (1)
    {
      if (v0 >= v12 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_47;
      }

      v14 = v1[2] == v0[2] && v1[3] == v0[3];
      if (v14 || (sub_100017E68() & 1) == 0)
      {
        break;
      }

      v15 = v1;
      v14 = v2 == v1;
      v1 += 4;
      if (!v14)
      {
        goto LABEL_22;
      }

LABEL_23:
      v2 += 2;
    }

    v15 = v0;
    v14 = v2 == v0;
    v0 += 4;
    if (v14)
    {
      goto LABEL_23;
    }

LABEL_22:
    v16 = v15[1];
    *v2 = *v15;
    v2[1] = v16;
    goto LABEL_23;
  }

  if (v0 != v1 || &v1[4 * v5] <= v0)
  {
    v18 = sub_1000170AC();
    memmove(v18, v19, v20);
  }

  v12 = &v0[4 * v5];
LABEL_30:
  for (v3 -= 2; v12 > v0 && v1 > v2; v3 -= 2)
  {
    v22 = *(v12 - 2) == *(v1 - 2) && *(v12 - 1) == *(v1 - 1);
    if (!v22 && (sub_100017E68() & 1) != 0)
    {
      v24 = v1 - 4;
      v14 = v3 + 2 == v1;
      v1 -= 4;
      if (!v14)
      {
        v25 = v24[1];
        *v3 = *v24;
        v3[1] = v25;
        v1 = v24;
      }

      goto LABEL_30;
    }

    if (v12 != (v3 + 2))
    {
      v23 = *(v12 - 1);
      *v3 = *(v12 - 2);
      v3[1] = v23;
    }

    v12 -= 4;
  }

LABEL_47:
  v26 = (v12 - v0) / 32;
  if (v1 != v0 || v1 >= &v0[4 * v26])
  {
    memmove(v1, v0, 32 * v26);
  }

  return sub_1000170D0();
}