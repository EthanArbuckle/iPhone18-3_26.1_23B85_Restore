int main(int argc, const char **argv, const char **envp)
{
  v3 = (*(*(sub_100001940(&qword_100018090, &qword_10000FFB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v17 - v4;
  v18 = sub_10000EEA0();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_10000EEB0() - 8) + 64);
  __chkstk_darwin();
  v11 = *(*(sub_10000E9A0() - 8) + 64);
  __chkstk_darwin();
  __bd_register_for_dlsym_callbacks();
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  sub_10000EA10();
  qword_1000181F0 = sub_10000E9E0();
  qword_1000181F8 = &off_100014950;
  sub_10000E9B0();
  qword_100018200 = &off_100014D40;
  sub_10000E9C0();
  sub_10000EA70();
  sub_100001988();
  sub_10000E9F0();
  v17[1] = qword_1000181F0;
  sub_1000019DC();
  sub_10000E990();
  v19 = &_swiftEmptyArrayStorage;
  sub_100001A28();
  sub_100001940(&qword_1000180B0, &qword_10000FFB8);
  sub_100001A80();
  sub_10000EF40();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v18);
  v12 = sub_10000EEC0();
  v19 = v12;
  sub_10000EB90();
  sub_100001B2C();
  sub_10000EA00();

  v13 = enum case for SandboxID.blastdoor(_:);
  v14 = sub_10000ED30();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_10000E9D0();
  sub_100001B80(v5);
  return 0;
}

uint64_t sub_100001940(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001988()
{
  result = qword_100018098;
  if (!qword_100018098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018098);
  }

  return result;
}

unint64_t sub_1000019DC()
{
  result = qword_1000180A0;
  if (!qword_1000180A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000180A0);
  }

  return result;
}

unint64_t sub_100001A28()
{
  result = qword_1000180A8;
  if (!qword_1000180A8)
  {
    sub_10000EEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180A8);
  }

  return result;
}

unint64_t sub_100001A80()
{
  result = qword_1000180B8;
  if (!qword_1000180B8)
  {
    sub_100001AE4(&qword_1000180B0, &qword_10000FFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180B8);
  }

  return result;
}

uint64_t sub_100001AE4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001B2C()
{
  result = qword_1000180C0;
  if (!qword_1000180C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180C0);
  }

  return result;
}

uint64_t sub_100001B80(uint64_t a1)
{
  v2 = sub_100001940(&qword_100018090, &qword_10000FFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100001BEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100001C00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001C20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 sub_100001C6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001C78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001C98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_100001CD4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100001CE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001D08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void sub_100001D70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100001DBC(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000012 && 0x800000010000F480 == a2;
  if (v2 || (sub_10000EFE0() & 1) != 0 || a1 == 0x702E63696C627570 && a2 == 0xEA0000000000676ELL)
  {
    return 1;
  }

  if ((sub_10000EFE0() & 1) != 0 || a1 == 0xD000000000000014 && 0x800000010000F9A0 == a2)
  {
    return 1;
  }

  if ((sub_10000EFE0() & 1) != 0 || a1 == 0x682E63696C627570 && a2 == 0xEB00000000666965)
  {
    return 1;
  }

  v6 = sub_10000EFE0();
  v7 = a1 == 0x682E63696C627570 && a2 == 0xEB00000000636965;
  v8 = v7;
  if ((v6 & 1) != 0 || v8)
  {
    return 1;
  }

  v9 = sub_10000EFE0();
  v10 = a1 == 0x682E63696C627570 && a2 == 0xEC00000073636965;
  v11 = v10;
  if ((v9 & 1) != 0 || v11 || (sub_10000EFE0() & 1) != 0 || a1 == 0xD000000000000014 && 0x800000010000FA20 == a2)
  {
    return 1;
  }

  return sub_10000EFE0();
}

uint64_t sub_100002004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v102 = a3;
  v97 = sub_10000EBC0();
  v96 = *(v97 - 8);
  v4 = *(v96 + 64);
  (__chkstk_darwin)();
  v105 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_100001940(&qword_1000180F8, &qword_100010110) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v108 = &v90 - v7;
  v112 = sub_10000EC20();
  v106 = *(v112 - 8);
  v8 = *(v106 + 64);
  (__chkstk_darwin)();
  v104 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_100001940(&qword_100018100, &qword_100010118) - 8) + 64);
  v11 = (__chkstk_darwin)();
  v101 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v94 = &v90 - v14;
  v15 = __chkstk_darwin(v13);
  v100 = &v90 - v16;
  __chkstk_darwin(v15);
  v113 = &v90 - v17;
  v18 = sub_100001940(&qword_100018108, &qword_100010120);
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18 - 8);
  v107 = &v90 - v20;
  v21 = sub_10000ED00();
  v22 = *(v21 - 8);
  v110 = v21;
  v111 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v95 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v99 = &v90 - v27;
  v28 = __chkstk_darwin(v26);
  v98 = &v90 - v29;
  __chkstk_darwin(v28);
  v31 = &v90 - v30;
  v32 = sub_10000ECA0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100003244();
  v37 = sub_10000EF30();
  sub_100001940(&qword_100018118, &unk_100010128);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100010090;
  sub_10000EC60();
  v39 = sub_10000EC80();
  v41 = v40;
  (*(v33 + 8))(v36, v32);
  v114 = v39;
  v115 = v41;
  v42 = sub_10000EC40();
  v44 = v43;

  *(v38 + 56) = &type metadata for String;
  *(v38 + 64) = sub_100003290();
  *(v38 + 32) = v42;
  *(v38 + 40) = v44;
  v45 = v113;
  sub_10000EE60();
  sub_10000E970();

  v46 = sub_10000EC70();
  v116 = v46;
  v117 = &protocol witness table for File;
  v47 = sub_1000032E4(&v114);
  (*(*(v46 - 8) + 16))(v47, a1, v46);
  sub_10000EA30();
  v48 = sub_10000ECD0();
  (*(*(v48 - 8) + 56))(v107, 1, 1, v48);
  sub_10000ECE0();
  v49 = sub_10000EA70();
  v50 = *(v49 - 8);
  v51 = *(v50 + 7);
  v51(v45, 1, 1, v49);
  sub_10000ECF0();
  sub_100003348(&v114, v116);
  v52 = v109;
  v53 = v108;
  v54 = v112;
  sub_10000EBA0();
  if (v52)
  {
    sub_1000033D8(v45, &qword_100018100, &qword_100010118);
    (*(v111 + 8))(v31, v110);
    return sub_10000338C(&v114);
  }

  v93 = 0;
  v92 = v50 + 56;
  v109 = v49;
  v91 = v51;
  v107 = v50;
  v57 = v105;
  v56 = v106;
  v58 = v53;
  if ((*(v106 + 48))(v53, 1, v54) == 1)
  {
    sub_1000033D8(v53, &qword_1000180F8, &qword_100010110);
    sub_10000338C(&v114);
    v59 = v102;
    v60 = v107;
    v61 = v45;
  }

  else
  {
    v90 = v31;
    v62 = v104;
    (*(v56 + 32))(v104, v58, v54);
    sub_10000338C(&v114);
    v63 = sub_10000EBF0();
    if (!v64)
    {
      sub_10000ED20();
      sub_1000034A8(&qword_100018128, &type metadata accessor for Explosion);
      swift_allocError();
      sub_10000ED10();
      swift_willThrow();
      (*(v56 + 8))(v62, v54);
      sub_1000033D8(v45, &qword_100018100, &qword_100010118);
      return (*(v111 + 8))(v90, v110);
    }

    v65 = v63;
    v66 = v64;
    if (sub_10000EA20())
    {
      v67 = v65 == 0x682E63696C627570;
      v68 = v111;
      v69 = v57;
      if ((!v67 || v66 != 0xEB00000000636965) && (sub_10000EFE0() & 1) == 0)
      {

        sub_10000ED20();
        sub_1000034A8(&qword_100018128, &type metadata accessor for Explosion);
        swift_allocError();
        sub_10000ED10();
        swift_willThrow();
        (*(v106 + 8))(v104, v112);
        sub_1000033D8(v113, &qword_100018100, &qword_100010118);
        return (*(v68 + 8))(v90, v110);
      }

      sub_10000EA40();
      sub_10000EA30();
      v114 = 0;
      v115 = 0;
      v70 = v98;
      v71 = v90;
      v72 = v93;
      sub_10000ECB0();
      if (v72)
      {

        (*(v106 + 8))(v104, v112);
        sub_1000033D8(v113, &qword_100018100, &qword_100010118);
        return (*(v68 + 8))(v71, v110);
      }

      v84 = v110;
      (*(v68 + 16))(v99, v70, v110);
      (*(v96 + 104))(v69, enum case for StickerEffect.none(_:), v97);
      v85 = v100;
      sub_10000EA60();
      (*(v68 + 8))(v70, v84);
      (*(v106 + 8))(v104, v112);
      v61 = v113;
      sub_1000033D8(v113, &qword_100018100, &qword_100010118);
      v91(v85, 0, 1, v109);
      sub_1000034F0(v85, v61);
      v31 = v71;
      v59 = v102;
      v93 = 0;
    }

    else
    {
      v108 = v65;
      v73 = sub_100001DBC(v65, v66);
      v74 = v111;
      if ((v73 & 1) != 0 && sub_10000EBD0() > 1)
      {
        v75 = sub_10000EF30();
        sub_10000EE60();
        sub_10000E970();

        v76 = sub_10000EA40();
        v77 = v104;
        v78 = sub_10000EBD0();
        v79 = sub_10000EA50();
        v80 = v93;
        sub_100003560(v76, v78, v79);
        v60 = v107;
        if (v80)
        {

          (*(v106 + 8))(v77, v112);
          sub_1000033D8(v113, &qword_100018100, &qword_100010118);
          return (*(v111 + 8))(v90, v110);
        }

        sub_10000EA30();
        sub_10000ECC0();
        v61 = v113;
        v93 = 0;
        sub_10000EBD0();
        sub_10000EC10();
        (*(v96 + 104))(v105, enum case for StickerEffect.none(_:), v97);
        v89 = v94;
        sub_10000EA60();
        (*(v106 + 8))(v77, v112);
        sub_1000033D8(v61, &qword_100018100, &qword_100010118);
        v91(v89, 0, 1, v109);
        sub_1000034F0(v89, v61);
        v31 = v90;
        v59 = v102;
        goto LABEL_21;
      }

      v81 = sub_10000EF30();
      sub_10000EE60();
      sub_10000E970();

      v31 = v90;
      (*(v74 + 16))(v99, v90, v110);
      v82 = v104;
      sub_10000EBD0();
      sub_10000EBE0();
      sub_10000EC00();
      sub_10000EBB0();
      sub_10000EC10();
      v83 = v100;
      sub_10000EA60();
      (*(v106 + 8))(v82, v112);
      v61 = v113;
      sub_1000033D8(v113, &qword_100018100, &qword_100010118);
      v91(v83, 0, 1, v109);
      sub_1000034F0(v83, v61);
      v59 = v102;
    }

    v60 = v107;
  }

LABEL_21:
  v86 = v101;
  sub_100003438(v61, v101);
  v87 = v109;
  if ((*(v60 + 6))(v86, 1, v109) == 1)
  {
    sub_1000033D8(v86, &qword_100018100, &qword_100010118);
    v88 = sub_10000EF30();
    sub_10000EE60();
    sub_10000E970();

    sub_10000ED20();
    sub_1000034A8(&qword_100018128, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10000ED10();
    swift_willThrow();
    sub_1000033D8(v61, &qword_100018100, &qword_100010118);
    return (*(v111 + 8))(v31, v110);
  }

  else
  {
    sub_1000033D8(v61, &qword_100018100, &qword_100010118);
    (*(v111 + 8))(v31, v110);
    return (*(v60 + 4))(v59, v86, v87);
  }
}

uint64_t sub_1000031B4@<X0>(uint64_t a1@<X8>)
{
  sub_10000EE70();
  v2 = sub_10000EC20();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

unint64_t sub_100003244()
{
  result = qword_100018110;
  if (!qword_100018110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100018110);
  }

  return result;
}

unint64_t sub_100003290()
{
  result = qword_100018120;
  if (!qword_100018120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018120);
  }

  return result;
}

uint64_t *sub_1000032E4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_100003348(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000338C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000033D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001940(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003438(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001940(&qword_100018100, &qword_100010118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000034A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000034F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001940(&qword_100018100, &qword_100010118);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003560(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a3)
  {
    sub_10000ED20();
    sub_1000034A8(&qword_100018128, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10000ED10();
    return swift_willThrow();
  }

  if (a3 < a2)
  {
    v3 = a2 / a3 * result;
    if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -9.22337204e18)
    {
      if (v3 < 9.22337204e18)
      {
        return v3;
      }

LABEL_11:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10000370C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v44 = a3;
  v45 = a2;
  v46 = a4;
  v5 = sub_100001940(&qword_100018138, &qword_100010210);
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v42 = &v34 - v7;
  v40 = sub_10000ECA0();
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10000E910();
  v39 = *(v36 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v36);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000EC70();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000EE40();
  sub_10000E838(0, &qword_100018110, OS_os_log_ptr);
  v20 = sub_10000EF20();
  v21 = *(v15 + 16);
  v41 = a1;
  v21(v18, a1, v14);
  v37 = v19;
  if (os_log_type_enabled(v20, v19))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v5;
    v24 = v23;
    v47 = v23;
    *v22 = 136446210;
    sub_10000EC60();
    sub_10000EC90();
    (*(v38 + 8))(v10, v40);
    sub_10000D468(&qword_100018148, &type metadata accessor for URL);
    v25 = v36;
    v26 = sub_10000EFC0();
    v28 = v27;
    (*(v39 + 8))(v13, v25);
    (*(v15 + 8))(v18, v14);
    v29 = sub_10000CEC0(v26, v28, &v47);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v37, "BlastDoor processing thumbnail for video: %{public}s", v22, 0xCu);
    sub_10000338C(v24);
    v5 = v35;
  }

  else
  {

    v30 = (*(v15 + 8))(v18, v14);
  }

  __chkstk_darwin(v30);
  v32 = v44;
  v31 = v45;
  *(&v34 - 4) = v41;
  *(&v34 - 3) = v32;
  *(&v34 - 2) = v31;
  sub_100001940(&qword_100018140, &qword_100010218);
  (*(v43 + 104))(v42, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v5);
  return sub_10000EE00();
}

uint64_t sub_100003BD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a2;
  v36 = a4;
  v38 = a3;
  v34 = a1;
  v39 = sub_100001940(&qword_100018158, &qword_100010228);
  v4 = *(v39 - 8);
  v37 = *(v4 + 64);
  __chkstk_darwin(v39);
  v6 = &v28 - v5;
  v31 = &v28 - v5;
  v32 = sub_10000EAD0();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v32);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000EC70();
  v29 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001940(&qword_100018160, &qword_100010230);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v28 - v15;
  v33 = &v28 - v15;
  v17 = sub_10000EDD0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, v35, v9);
  v18 = v32;
  (*(v7 + 16))(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v32);
  v19 = v4;
  (*(v4 + 16))(v6, v34, v39);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v7 + 80) + v21 + 8) & ~*(v7 + 80);
  v23 = (v8 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v10 + 32))(v24 + v20, v12, v29);
  v25 = v38;
  *(v24 + v21) = v38;
  (*(v7 + 32))(v24 + v22, v30, v18);
  (*(v19 + 32))(v24 + v23, v31, v39);
  v26 = v25;
  sub_10000C9BC(0, 0, v33, &unk_100010240, v24);
}

uint64_t sub_100003F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_100001940(&qword_100018158, &qword_100010228);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v7[9] = *(v9 + 64);
  v7[10] = swift_task_alloc();
  v10 = sub_10000EAD0();
  v7[11] = v10;
  v11 = *(v10 - 8);
  v7[12] = v11;
  v7[13] = *(v11 + 64);
  v7[14] = swift_task_alloc();
  v12 = sub_10000ECA0();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();
  v15 = sub_10000E910();
  v7[18] = v15;
  v16 = *(v15 - 8);
  v7[19] = v16;
  v17 = *(v16 + 64) + 15;
  v7[20] = swift_task_alloc();
  v18 = sub_10000EC70();
  v7[21] = v18;
  v19 = *(v18 - 8);
  v7[22] = v19;
  v7[23] = *(v19 + 64);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000041EC, 0, 0);
}

uint64_t sub_1000041EC()
{
  v54 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[3];
  v5 = sub_10000EE40();
  v0[26] = sub_10000E838(0, &qword_100018110, OS_os_log_ptr);
  v6 = sub_10000EF20();
  v50 = *(v3 + 16);
  (v50)(v1, v4, v2);
  v7 = os_log_type_enabled(v6, v5);
  v8 = v0[25];
  v9 = v0[21];
  v10 = v0[22];
  if (v7)
  {
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[17];
    v44 = v0[18];
    v51 = v5;
    v14 = v0[16];
    v41 = v0[15];
    buf = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v48;
    *buf = 136446210;
    v42 = v9;
    sub_10000EC60();
    sub_10000EC90();
    (*(v14 + 8))(v13, v41);
    sub_10000D468(&qword_100018148, &type metadata accessor for URL);
    v15 = sub_10000EFC0();
    v17 = v16;
    (*(v12 + 8))(v11, v44);
    (*(v10 + 8))(v8, v42);
    v18 = sub_10000CEC0(v15, v17, &v53);

    *(buf + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v51, "Task running for video: %{public}s)", buf, 0xCu);
    sub_10000338C(v48);
  }

  else
  {

    (*(v10 + 8))(v8, v9);
  }

  v19 = v0[21];
  v20 = v0[22];
  v43 = v19;
  v45 = v0[24];
  v21 = v0[14];
  v39 = v0[23];
  v40 = v0[13];
  v23 = v0[11];
  v22 = v0[12];
  v24 = v0[10];
  bufa = v21;
  v49 = v24;
  v25 = v0[7];
  v26 = v0[8];
  v28 = v0[5];
  v27 = v0[6];
  v29 = v0[3];
  v52 = v0[4];
  v50();
  (*(v22 + 16))(v21, v28, v23);
  (*(v26 + 16))(v24, v27, v25);
  v30 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v31 = (v39 + *(v22 + 80) + v30) & ~*(v22 + 80);
  v32 = (v40 + *(v26 + 80) + v31) & ~*(v26 + 80);
  v33 = swift_allocObject();
  v0[27] = v33;
  *(v33 + 16) = v52;
  (*(v20 + 32))(v33 + v30, v45, v43);
  (*(v22 + 32))(v33 + v31, bufa, v23);
  (*(v26 + 32))(v33 + v32, v49, v25);
  v34 = async function pointer to File.withResource<A>(_:)[1];
  v35 = v52;
  v36 = swift_task_alloc();
  v0[28] = v36;
  *v36 = v0;
  v36[1] = sub_100004614;
  v37 = v0[3];

  return File.withResource<A>(_:)();
}

uint64_t sub_100004614()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_1000047D8;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_100004730;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100004730()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000047D8()
{
  v2 = v0[26];
  v1 = v0[27];

  v3 = sub_10000EE50();
  v4 = sub_10000EF20();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v3, "Caught error: %@", v6, 0xCu);
    sub_1000033D8(v7, &qword_100018168, &qword_100010270);
  }

  v9 = v0[29];
  v11 = v0[6];
  v10 = v0[7];

  v0[2] = v9;
  sub_10000EDF0();
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[10];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100004964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10000498C, 0, 0);
}

uint64_t sub_10000498C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = sub_10000DE68();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTu[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  sub_100001940(&qword_100018178, &qword_100010288);
  *v6 = v0;
  v6[1] = sub_100004AC8;
  v7 = *(v0 + 24);

  return _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v7, v2, v3, 0, 0, &unk_100010280, v4, &type metadata for () + 8);
}

uint64_t sub_100004AC8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100004C00, 0, 0);
  }

  else
  {
    v5 = *(v2 + 64);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_100004C00()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100004C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[57] = a5;
  v6[58] = a6;
  v6[55] = a2;
  v6[56] = a3;
  v7 = *(*(sub_100001940(&qword_100018140, &qword_100010218) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v8 = sub_100001940(&qword_100018180, &unk_100010290);
  v6[60] = v8;
  v9 = *(v8 - 8);
  v6[61] = v9;
  v10 = *(v9 + 64) + 15;
  v6[62] = swift_task_alloc();
  v11 = sub_10000EB90();
  v6[63] = v11;
  v12 = *(v11 - 8);
  v6[64] = v12;
  v13 = *(v12 + 64) + 15;
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v14 = sub_10000EAB0();
  v6[67] = v14;
  v15 = *(v14 - 8);
  v6[68] = v15;
  v16 = *(v15 + 64) + 15;
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v17 = sub_10000EA90();
  v6[71] = v17;
  v18 = *(v17 - 8);
  v6[72] = v18;
  v19 = *(v18 + 64) + 15;
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v20 = *(*(sub_100001940(&qword_100018108, &qword_100010120) - 8) + 64) + 15;
  v6[75] = swift_task_alloc();
  v21 = sub_10000ED00();
  v6[76] = v21;
  v22 = *(v21 - 8);
  v6[77] = v22;
  v23 = *(v22 + 64) + 15;
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v24 = sub_10000EE20();
  v6[80] = v24;
  v25 = *(v24 - 8);
  v6[81] = v25;
  v26 = *(v25 + 64) + 15;
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v27 = sub_10000EB50();
  v6[84] = v27;
  v28 = *(v27 - 8);
  v6[85] = v28;
  v29 = *(v28 + 64) + 15;
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v30 = sub_10000EB70();
  v6[89] = v30;
  v31 = *(v30 - 8);
  v6[90] = v31;
  v32 = *(v31 + 64) + 15;
  v6[91] = swift_task_alloc();
  v33 = sub_10000EAE0();
  v6[92] = v33;
  v34 = *(v33 - 8);
  v6[93] = v34;
  v35 = *(v34 + 64) + 15;
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v36 = sub_10000E910();
  v6[99] = v36;
  v37 = *(v36 - 8);
  v6[100] = v37;
  v38 = *(v37 + 64) + 15;
  v6[101] = swift_task_alloc();
  v39 = sub_10000ECA0();
  v6[102] = v39;
  v40 = *(v39 - 8);
  v6[103] = v40;
  v41 = *(v40 + 64) + 15;
  v6[104] = swift_task_alloc();

  return _swift_task_switch(sub_1000051EC, 0, 0);
}

uint64_t sub_1000051EC()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[99];
  v7 = v0[55];
  sub_10000EC60();
  sub_10000EC90();
  (*(v2 + 8))(v1, v3);
  v0[105] = sub_100001940(&qword_100018188, &qword_1000102A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100010090;
  *(v8 + 32) = sub_10000ED50();
  *(v8 + 40) = v9;
  *(v8 + 72) = &type metadata for Bool;
  *(v8 + 48) = 1;
  sub_10000E6E0(v8);
  swift_setDeallocating();
  sub_1000033D8(v8 + 32, &qword_100018190, &qword_1000102A8);
  swift_deallocClassInstance();
  v10 = objc_allocWithZone(AVURLAsset);
  sub_10000E900(v11);
  v13 = v12;
  isa = sub_10000ED40().super.isa;

  v15 = [v10 initWithURL:v13 options:isa];
  v0[106] = v15;

  (*(v5 + 8))(v4, v6);
  v16 = sub_10000EE40();
  v0[107] = sub_10000E838(0, &qword_100018110, OS_os_log_ptr);
  v17 = sub_10000EF20();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v17, v16, "Created asset: %{public}@", v18, 0xCu);
    sub_1000033D8(v19, &qword_100018168, &qword_100010270);
  }

  sub_10000EE40();
  v21 = sub_10000EF20();
  sub_10000E980();

  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_1000055D8;
  v22 = swift_continuation_init();
  v0[17] = sub_100001940(&qword_100018198, &qword_1000102B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000C8CC;
  v0[13] = &unk_100015130;
  v0[14] = v22;
  [v15 loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000055D8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 864) = v3;
  if (v3)
  {
    v4 = *(v1 + 848);

    v5 = sub_10000AB38;
  }

  else
  {
    v5 = sub_100005720;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100005720()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 400);
  sub_10000EE40();
  v3 = sub_10000EF20();
  sub_10000E980();

  if (v2 >> 62)
  {
    v5 = sub_10000EF80();
    v4 = sub_10000EF80();
    *(v0 + 872) = v5;
    if (v4)
    {
LABEL_3:
      v6 = __OFSUB__(v4, 1);
      v7 = v4 - 1;
      if (v6)
      {
        __break(1u);
      }

      else if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v2 + 8 * v7 + 32);
LABEL_8:
          v9 = v8;

          goto LABEL_11;
        }

        __break(1u);
      }

      v8 = sub_10000EF60();
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v4;
    *(v0 + 872) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_11:
  *(v0 + 880) = v9;
  v10 = *(v0 + 856);
  v11 = sub_10000EE40();
  v12 = sub_10000EF20();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v12, v11, "Tracks found: %{public}ld)", v13, 0xCu);
  }

  v14 = *(v0 + 848);
  if (v9)
  {
    v15 = *(v0 + 784);
    v16 = *(v0 + 744);
    v17 = *(v0 + 736);
    v18 = *(v0 + 448);
    v19 = objc_opt_self();
    v20 = v9;
    *(v0 + 1484) = [v19 videoAssetIsSpatial:v14];
    sub_10000EAC0();
    v21 = *(v16 + 88);
    *(v0 + 888) = v21;
    *(v0 + 896) = (v16 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v22 = v21(v15, v17);
    *(v0 + 1460) = v22;
    v23 = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    *(v0 + 1464) = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    if (v22 == v23)
    {
      v24 = *(v0 + 784);
      v25 = *(v0 + 736);
      v26 = *(v0 + 728);
      v27 = *(v0 + 720);
      v28 = *(v0 + 712);
      v29 = *(*(v0 + 744) + 96);
      *(v0 + 904) = v29;
      v29(v24, v25);
      (*(v27 + 32))(v26, v24, v28);
      sub_100001940(&qword_1000181D0, &qword_1000102D8);
      v30 = sub_10000E920();
      *(v0 + 912) = v30;
      v31 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
      v32 = swift_task_alloc();
      *(v0 + 920) = v32;
      *v32 = v0;
      v32[1] = sub_10000602C;

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 368, v30, 0, 0);
    }

    if (v22 == enum case for VideoPreview.FrameConstraints.multiFrame(_:))
    {
      v34 = *(v0 + 784);
      v35 = *(v0 + 704);
      v36 = *(v0 + 680);
      v37 = *(v0 + 672);
      v38 = *(*(v0 + 744) + 96);
      v38(v34, *(v0 + 736));
      (*(v36 + 32))(v35, v34, v37);
      if (sub_10000EB20() >= 1)
      {
        v39 = *(v0 + 704);
        if (sub_10000EB30() >= 1)
        {
          v40 = *(v0 + 704);
          v41 = *(v0 + 680);
          v42 = *(v0 + 672);
          v43 = sub_10000EB20();
          v44 = sub_10000EB30();
          v45 = sub_10000EAF0();
          (*(v41 + 8))(v40, v42);
          *(v0 + 1000) = v44;
          *(v0 + 992) = v43;
          *(v0 + 984) = v45;
          *(v0 + 976) = v38;
          v46 = *(v0 + 880);
          v47 = async function pointer to AVAssetTrack.info.getter[1];
          v48 = swift_task_alloc();
          *(v0 + 1008) = v48;
          *v48 = v0;
          v48[1] = sub_1000066F4;
          v49 = *(v0 + 664);

          return AVAssetTrack.info.getter(v49);
        }
      }

      v50 = *(v0 + 848);
      v51 = *(v0 + 704);
      v52 = *(v0 + 680);
      v53 = *(v0 + 672);

      sub_10000ED20();
      sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
      v55 = swift_allocError();
      sub_10000ED10();
      v82 = v55;
      swift_willThrow();
    }

    else
    {
      v50 = *(v0 + 848);
      v51 = *(v0 + 784);
      v52 = *(v0 + 744);
      v53 = *(v0 + 736);

      sub_10000ED20();
      sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
      v54 = swift_allocError();
      sub_10000ED10();
      v82 = v54;
      swift_willThrow();
    }

    (*(v52 + 8))(v51, v53);
  }

  else
  {

    sub_10000ED20();
    sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
    v33 = swift_allocError();
    sub_10000ED10();
    v82 = v33;
    swift_willThrow();
  }

  v56 = *(v0 + 832);
  v57 = *(v0 + 808);
  v58 = *(v0 + 784);
  v59 = *(v0 + 776);
  v60 = *(v0 + 768);
  v61 = *(v0 + 760);
  v62 = *(v0 + 752);
  v63 = *(v0 + 728);
  v64 = *(v0 + 704);
  v65 = *(v0 + 696);
  v68 = *(v0 + 688);
  v69 = *(v0 + 664);
  v70 = *(v0 + 656);
  v71 = *(v0 + 632);
  v72 = *(v0 + 624);
  v73 = *(v0 + 600);
  v74 = *(v0 + 592);
  v75 = *(v0 + 584);
  v76 = *(v0 + 560);
  v77 = *(v0 + 552);
  v78 = *(v0 + 528);
  v79 = *(v0 + 520);
  v80 = *(v0 + 496);
  v81 = *(v0 + 472);
  **(v0 + 464) = v82;

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_10000602C()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v4 = *v1;
  v2[116] = v0;

  v5 = v2[114];
  if (v0)
  {
    v6 = v2[106];

    v7 = sub_10000AD34;
  }

  else
  {

    v7 = sub_1000061AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000061AC()
{
  v1 = *(v0 + 880);
  *(v0 + 936) = *(v0 + 368);
  sub_100001940(&qword_1000181D8, &qword_1000102E0);
  v2 = sub_10000E940();
  *(v0 + 952) = v2;
  v3 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v4 = swift_task_alloc();
  *(v0 + 960) = v4;
  *v4 = v0;
  v4[1] = sub_1000062BC;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 144, v2, 0, 0);
}

uint64_t sub_1000062BC()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v4 = *v1;
  v2[121] = v0;

  v5 = v2[119];
  if (v0)
  {
    v6 = v2[106];

    v7 = sub_10000AF58;
  }

  else
  {

    v7 = sub_10000643C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000066F4()
{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v8 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v4 = *(v2 + 880);
    v5 = *(v2 + 848);

    v6 = sub_10000B17C;
  }

  else
  {
    v6 = sub_100006850;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100006850()
{
  v1 = v0[107];
  v2 = sub_10000EE40();
  v3 = sub_10000EF20();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[125];
    v5 = v0[124];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v3, v2, "thumbnailFitPxSize: %f x %f", v6, 0x16u);
  }

  v7 = async function pointer to AVAsset.isAutoLoop.getter[1];
  v8 = swift_task_alloc();
  v0[128] = v8;
  *v8 = v0;
  v8[1] = sub_1000069AC;
  v9 = v0[106];

  return AVAsset.isAutoLoop.getter();
}

uint64_t sub_1000069AC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1024);
  v8 = *v2;
  *(v3 + 1485) = a1;
  *(v3 + 1032) = v1;

  if (v1)
  {
    v5 = *(v3 + 848);

    v6 = sub_10000B378;
  }

  else
  {
    v6 = sub_100006B04;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100006B04()
{
  v1 = *(v0 + 848);

  v2 = objc_allocWithZone(AVAssetReader);
  *(v0 + 408) = 0;
  v3 = [v2 initWithAsset:v1 error:v0 + 408];
  *(v0 + 1040) = v3;
  v4 = *(v0 + 408);
  v5 = *(v0 + 848);
  if (!v3)
  {
    v46 = *(v0 + 880);
    v47 = *(v0 + 664);
    v48 = *(v0 + 648);
    v49 = *(v0 + 640);
    v50 = v4;
    v51 = sub_10000E8F0();

    v254 = v51;
    swift_willThrow();

    (*(v48 + 8))(v47, v49);
    goto LABEL_32;
  }

  v6 = *(v0 + 992);
  v7 = *(v0 + 840);
  v8 = v4;

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100010190;
  *(v9 + 32) = sub_10000ED50();
  *(v9 + 40) = v10;
  *(v9 + 72) = sub_100001940(&qword_1000181A0, &qword_1000102B8);
  *(v9 + 48) = &off_100014E28;
  *(v9 + 80) = sub_10000ED50();
  *(v9 + 88) = v11;
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_63;
  }

  v12 = *(v0 + 992);
  if (v12 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v13 = *(v0 + 1000);
  *(v9 + 120) = &type metadata for Int;
  *(v9 + 96) = v12;
  *(v9 + 128) = sub_10000ED50();
  *(v9 + 136) = v14;
  if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v15 = *(v0 + 1000);
  if (v15 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  if (v15 >= 9.22337204e18)
  {
    goto LABEL_68;
  }

  v16 = *(v0 + 896);
  v17 = *(v0 + 888);
  v18 = *(v0 + 776);
  v19 = *(v0 + 736);
  v20 = *(v0 + 448);
  *(v9 + 168) = &type metadata for Int;
  *(v9 + 144) = v15;
  v21 = sub_10000E6E0(v9);
  swift_setDeallocating();
  sub_100001940(&qword_100018190, &qword_1000102A8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10000EAC0();
  v22 = v17(v18, v19);
  v23 = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  *(v0 + 1468) = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  if (v22 == v23)
  {
    v24 = *(v0 + 776);
    v25 = *(v0 + 696);
    v26 = v0 + 680;
    v27 = *(v0 + 680);
    v28 = (v0 + 672);
    v29 = *(v0 + 672);
    v30 = *(v0 + 744) + 96;
    (*(v0 + 976))(v24, *(v0 + 736));
    (*(v27 + 32))(v25, v24, v29);
    if (sub_10000EB00() >= 1)
    {
      v31 = *(v0 + 696);
      v32 = sub_10000ED50();
      v34 = v33;
      v35 = sub_10000EB00();
      *(v0 + 328) = &type metadata for Int;
      *(v0 + 304) = v35;
      sub_10000E828((v0 + 304), (v0 + 336));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10000E2C8((v0 + 336), v32, v34, isUniquelyReferenced_nonNull_native);
    }

    v37 = (v0 + 696);
    *(v0 + 1048) = v21;
    v38 = *(v0 + 696);
    if (sub_10000EAF0() >= 1)
    {
      v39 = *v37;
      if (sub_10000EB10())
      {
        sub_100001940(&qword_1000181C0, &qword_1000102D0);
        v40 = sub_10000E960();
        *(v0 + 1056) = v40;
        v41 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
        v42 = swift_task_alloc();
        *(v0 + 1064) = v42;
        *v42 = v0;
        v42[1] = sub_100008044;
        v43 = *(v0 + 848);
        v44 = v0 + 1384;
        v45 = v40;
LABEL_23:

        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v44, v45, 0, 0);
      }
    }
  }

  else
  {
    v37 = (v0 + 776);
    v28 = (v0 + 736);
    v26 = v0 + 744;
  }

  (*(*v26 + 8))(*v37, *v28);
  v255 = *(v0 + 1468);
  v52 = *(v0 + 896);
  v53 = *(v0 + 888);
  v54 = *(v0 + 880);
  v55 = *(v0 + 768);
  v56 = *(v0 + 736);
  v57 = *(v0 + 448);
  v58 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v59 = v54;
  isa = sub_10000ED40().super.isa;

  v61 = [v58 initWithTrack:v59 outputSettings:isa];
  *(v0 + 1080) = v61;

  sub_10000EAC0();
  if (v53(v55, v56) == v255)
  {
    v62 = *(v0 + 768);
    v63 = *(v0 + 688);
    v64 = *(v0 + 680);
    v65 = *(v0 + 672);
    v66 = *(v0 + 744) + 96;
    (*(v0 + 976))(v62, *(v0 + 736));
    (*(v64 + 32))(v63, v62, v65);
    [v61 setAppliesPreferredTrackTransform:sub_10000EB40() & 1];
    if (sub_10000EB00() == 1)
    {
      [v61 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v61 setAppliesPreferredTrackTransform:1];
  }

  v67 = *(v0 + 1040);
  v68 = *(v0 + 1464);
  v69 = *(v0 + 896);
  v70 = *(v0 + 888);
  v71 = *(v0 + 760);
  v72 = *(v0 + 744);
  v73 = *(v0 + 736);
  v74 = *(v0 + 448);
  [v61 setAlwaysCopiesSampleData:0];
  [v67 addOutput:v61];
  sub_10000EAC0();
  LODWORD(v74) = v70(v71, v73);
  (*(v72 + 8))(v71, v73);
  if (v74 == v68)
  {
    v75 = *(v0 + 880);
    sub_100001940(&qword_1000181B0, &qword_1000102C0);
    v76 = sub_10000E930();
    *(v0 + 1088) = v76;
    v77 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
    v78 = swift_task_alloc();
    *(v0 + 1096) = v78;
    *v78 = v0;
    v78[1] = sub_100009568;
    v44 = v0 + 1456;
    v45 = v76;
    goto LABEL_23;
  }

  v79 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v80 = [v79 copyNextSampleBuffer];
  if (v80)
  {
    v81 = *(v0 + 984);
    v82 = *(v0 + 1464);
    v83 = *(v0 + 1460);
    v84 = v80;
    v85 = v84;
    if (v83 != v82 && !v81)
    {
LABEL_29:
      v86 = *(v0 + 1080);
      v87 = *(v0 + 880);
      v88 = *(v0 + 848);
      v89 = *(v0 + 664);
      v90 = *(v0 + 648);
      v91 = *(v0 + 640);

      (*(v90 + 8))(v89, v91);
      goto LABEL_30;
    }

    v120 = 0;
    v121 = *(v0 + 616);
    v186 = (v121 + 16);
    v187 = (*(v0 + 648) + 16);
    v122 = *(v0 + 576);
    v123 = *(v0 + 544);
    v124 = *(v0 + 512);
    v184 = (v123 + 16);
    v185 = (v122 + 16);
    v188 = (*(v0 + 744) + 8);
    v178 = (v124 + 16);
    v179 = (*(v0 + 488) + 8);
    v180 = (v124 + 8);
    v181 = (v123 + 8);
    v182 = (v122 + 8);
    v183 = (v121 + 8);
    if (CMSampleBufferGetNumSamples(v84))
    {
      goto LABEL_38;
    }

    do
    {
LABEL_37:
    }

    while (!CMSampleBufferGetNumSamples(v85));
    while (1)
    {
LABEL_38:

      v125 = sub_10000EE80();
      if (!v125)
      {
        v160 = *(v0 + 1080);
        v161 = *(v0 + 1040);
        v162 = *(v0 + 880);
        v252 = *(v0 + 848);
        v244 = *(v0 + 664);
        v163 = *(v0 + 648);
        v164 = *(v0 + 640);
        sub_10000ED20();
        sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
        v165 = swift_allocError();
        sub_10000ED10();
        v254 = v165;
        swift_willThrow();

        (*(v163 + 8))(v244, v164);
        goto LABEL_32;
      }

      v126 = v125;
      v127 = *(v0 + 856);
      v128 = sub_10000EE40();
      v129 = sub_10000EF20();
      if (os_log_type_enabled(v129, v128))
      {
        v130 = swift_slowAlloc();
        *v130 = 134217984;
        *(v130 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v129, v128, "BlastDoor processing thumbnail %ld", v130, 0xCu);
      }

      v221 = *(v0 + 1485);
      v249 = *(v0 + 1464);
      v237 = *(v0 + 888);
      v242 = *(v0 + 896);
      v225 = *(v0 + 1484);
      v217 = *(v0 + 872);
      v229 = *(v0 + 752);
      v233 = *(v0 + 736);
      v131 = *(v0 + 664);
      v132 = *(v0 + 656);
      v133 = *(v0 + 640);
      v134 = *(v0 + 632);
      v191 = *(v0 + 624);
      v192 = *(v0 + 608);
      v257 = v120;
      v135 = *(v0 + 600);
      v136 = *(v0 + 592);
      v194 = *(v0 + 584);
      v197 = *(v0 + 568);
      v190 = *(v0 + 560);
      v201 = *(v0 + 552);
      v205 = *(v0 + 536);
      v209 = *(v0 + 528);
      v213 = *(v0 + 448);

      sub_10000EE90();
      sub_10000EF00();
      type metadata accessor for CVBuffer(0);
      v137 = sub_10000ECD0();
      (*(*(v137 - 8) + 56))(v135, 1, 1, v137);
      v189 = v126;
      sub_10000ECE0();
      v138 = *v187;
      (*v187)(v132, v131, v133);
      sub_10000EA80();
      v138(v132, v131, v133);
      sub_10000EAA0();
      (*v186)(v191, v134, v192);
      (*v185)(v194, v136, v197);
      (*v184)(v201, v190, v205);
      sub_10000EB80();
      sub_10000EAC0();
      v139 = v237(v229, v233);
      v140 = *(v0 + 1080);
      if (v139 == v249)
      {
        v206 = *(v0 + 1040);
        v210 = *(v0 + 880);
        v166 = *(v0 + 856);
        v222 = *(v0 + 848);
        v253 = *(v0 + 640);
        v259 = *(v0 + 664);
        v239 = *(v0 + 632);
        v245 = *(v0 + 648);
        v230 = *(v0 + 592);
        v234 = *(v0 + 608);
        v226 = *(v0 + 568);
        v214 = *(v0 + 536);
        v218 = *(v0 + 560);
        v167 = *(v0 + 528);
        v168 = *(v0 + 520);
        v170 = *(v0 + 496);
        v169 = *(v0 + 504);
        v171 = *(v0 + 472);
        v198 = *(v0 + 456);
        v202 = *(v0 + 480);
        (*v188)(*(v0 + 752), *(v0 + 736));
        sub_10000EE40();
        v172 = sub_10000EF20();
        sub_10000E980();

        (*v178)(v168, v167, v169);
        sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview);
        sub_10000EC30();
        sub_100001940(&qword_100018158, &qword_100010228);
        sub_10000EDE0();
        (*v179)(v170, v202);
        *(v0 + 424) = 0;
        sub_10000EDF0();

        (*v180)(v167, v169);
        (*v181)(v218, v214);
        (*v182)(v230, v226);
        (*v183)(v239, v234);
        (*(v245 + 8))(v259, v253);
        goto LABEL_30;
      }

      (*v188)(*(v0 + 752), *(v0 + 736));
      v141 = [v140 copyNextSampleBuffer];
      v142 = v257 + 1;
      if (__OFADD__(v257, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v143 = v141;
      v258 = v257 + 1;
      if (v141)
      {
        v144 = *(v0 + 1460) != *(v0 + 1464) && v142 == *(v0 + 984);
        v145 = v144;
      }

      else
      {
        v145 = 1;
      }

      v146 = *(v0 + 496);
      v147 = *(v0 + 472);
      v250 = *(v0 + 480);
      v148 = *(v0 + 456);
      (*v178)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
      sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview);
      sub_10000EC30();
      sub_100001940(&qword_100018158, &qword_100010228);
      sub_10000EDE0();
      (*v179)(v146, v250);
      v149 = *(v0 + 632);
      v243 = *(v0 + 592);
      v251 = *(v0 + 608);
      v238 = *(v0 + 568);
      v150 = *(v0 + 560);
      v151 = *(v0 + 536);
      v152 = *(v0 + 528);
      v153 = *(v0 + 504);
      if (v145)
      {
        v154 = *(v0 + 632);
        v155 = *(v0 + 456);
        *(v0 + 416) = 0;
        sub_10000EDF0();

        (*v180)(v152, v153);
        (*v181)(v150, v151);
        (*v182)(v243, v238);
        (*v183)(v154, v251);
      }

      else
      {

        (*v180)(v152, v153);
        (*v181)(v150, v151);
        (*v182)(v243, v238);
        (*v183)(v149, v251);
      }

      if (!v143)
      {
        break;
      }

      v156 = *(v0 + 984);
      v157 = *(v0 + 1464);
      v158 = *(v0 + 1460);
      v159 = v143;
      v85 = v159;
      v144 = v158 == v157;
      v120 = v258;
      if (!v144 && v258 == v156)
      {
        goto LABEL_29;
      }

      if (!CMSampleBufferGetNumSamples(v159))
      {
        goto LABEL_37;
      }
    }

    v173 = *(v0 + 1080);
    v174 = *(v0 + 1040);
    v175 = *(v0 + 880);
    v176 = *(v0 + 848);
    (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));

LABEL_30:
    v92 = *(v0 + 832);
    v93 = *(v0 + 808);
    v94 = *(v0 + 784);
    v95 = *(v0 + 776);
    v96 = *(v0 + 768);
    v97 = *(v0 + 760);
    v98 = *(v0 + 752);
    v99 = *(v0 + 728);
    v100 = *(v0 + 704);
    v101 = *(v0 + 696);
    v195 = *(v0 + 688);
    v199 = *(v0 + 664);
    v203 = *(v0 + 656);
    v207 = *(v0 + 632);
    v211 = *(v0 + 624);
    v215 = *(v0 + 600);
    v219 = *(v0 + 592);
    v223 = *(v0 + 584);
    v227 = *(v0 + 560);
    v231 = *(v0 + 552);
    v235 = *(v0 + 528);
    v240 = *(v0 + 520);
    v246 = *(v0 + 496);
    v256 = *(v0 + 472);

    v102 = *(v0 + 8);
    goto LABEL_33;
  }

  v103 = *(v0 + 1080);
  v104 = *(v0 + 1040);
  v105 = *(v0 + 880);
  v247 = *(v0 + 848);
  v106 = *(v0 + 664);
  v107 = *(v0 + 648);
  v108 = *(v0 + 640);
  sub_10000ED20();
  sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
  v109 = swift_allocError();
  sub_10000ED10();
  v254 = v109;
  swift_willThrow();

  (*(v107 + 8))(v106, v108);
LABEL_32:
  v110 = *(v0 + 832);
  v111 = *(v0 + 808);
  v112 = *(v0 + 784);
  v113 = *(v0 + 776);
  v114 = *(v0 + 768);
  v115 = *(v0 + 760);
  v116 = *(v0 + 752);
  v117 = *(v0 + 728);
  v118 = *(v0 + 704);
  v119 = *(v0 + 696);
  v193 = *(v0 + 688);
  v196 = *(v0 + 664);
  v200 = *(v0 + 656);
  v204 = *(v0 + 632);
  v208 = *(v0 + 624);
  v212 = *(v0 + 600);
  v216 = *(v0 + 592);
  v220 = *(v0 + 584);
  v224 = *(v0 + 560);
  v228 = *(v0 + 552);
  v232 = *(v0 + 528);
  v236 = *(v0 + 520);
  v241 = *(v0 + 496);
  v248 = *(v0 + 472);
  **(v0 + 464) = v254;

  v102 = *(v0 + 8);
LABEL_33:

  return v102();
}

uint64_t sub_100008044()
{
  v2 = *v1;
  v3 = *(*v1 + 1064);
  v4 = *v1;
  v2[134] = v0;

  v5 = v2[132];
  if (v0)
  {
    v6 = v2[131];

    v7 = sub_10000B59C;
  }

  else
  {

    v7 = sub_1000081C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000081C0()
{
  v243 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1392);
  *(v0 + 1408) = *(v0 + 1384);
  *(v0 + 1416) = v3;
  *(v0 + 1424) = v2;
  Seconds = CMTimeGetSeconds((v0 + 1408));
  v5 = sub_10000EAF0();
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
LABEL_53:
    __break(1u);
  }

  v6 = Seconds / ((v5 - 1) + 0.1);
  if (v6 <= 0.0)
  {
    (*(*(v0 + 680) + 8))(*(v0 + 696), *(v0 + 672));
    v21 = *(v0 + 1048);
  }

  else
  {
    v7 = *(v0 + 680);
    CMTimeMakeWithSeconds(&v240, v6, 1000);
    epoch = v240.epoch;
    v9 = *&v240.timescale;
    *(v0 + 1432) = v240.value;
    *(v0 + 1440) = v9;
    *(v0 + 1448) = epoch;
    v10 = CMTimeCopyAsDictionary((v0 + 1432), kCFAllocatorDefault);
    v11 = (v7 + 8);
    v12 = *(v0 + 1048);
    if (!v10)
    {
      v73 = *(v0 + 1040);
      v74 = *(v0 + 880);
      v75 = *(v0 + 848);
      v208 = *(v0 + 672);
      v213 = *(v0 + 696);
      v76 = *(v0 + 648);
      v219 = *(v0 + 640);
      v226 = *(v0 + 664);

      sub_10000ED20();
      sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
      v77 = swift_allocError();
      sub_10000ED10();
      v236 = v77;
      swift_willThrow();

      (*v11)(v213, v208);
      (*(v76 + 8))(v226, v219);
      goto LABEL_22;
    }

    v13 = v10;
    v14 = *(v0 + 696);
    v15 = *(v0 + 672);
    v16 = sub_10000ED50();
    v18 = v17;
    *(v0 + 264) = sub_10000E838(0, &qword_1000181C8, NSDictionary_ptr);
    *(v0 + 240) = v13;
    sub_10000E828((v0 + 240), (v0 + 272));
    v19 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v240.value = v12;
    sub_10000E2C8((v0 + 272), v16, v18, isUniquelyReferenced_nonNull_native);

    (*v11)(v14, v15);
  }

  v234 = *(v0 + 1468);
  v22 = *(v0 + 896);
  v23 = *(v0 + 888);
  v24 = *(v0 + 880);
  v25 = *(v0 + 768);
  v26 = *(v0 + 736);
  v27 = *(v0 + 448);
  v28 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v29 = v24;
  isa = sub_10000ED40().super.isa;

  v31 = [v28 initWithTrack:v29 outputSettings:isa];
  *(v0 + 1080) = v31;

  sub_10000EAC0();
  if (v23(v25, v26) == v234)
  {
    v32 = *(v0 + 768);
    v33 = *(v0 + 688);
    v34 = *(v0 + 680);
    v35 = *(v0 + 672);
    v36 = *(v0 + 744) + 96;
    (*(v0 + 976))(v32, *(v0 + 736));
    (*(v34 + 32))(v33, v32, v35);
    [v31 setAppliesPreferredTrackTransform:sub_10000EB40() & 1];
    if (sub_10000EB00() == 1)
    {
      [v31 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v31 setAppliesPreferredTrackTransform:1];
  }

  v37 = *(v0 + 1040);
  v38 = *(v0 + 1464);
  v39 = *(v0 + 896);
  v40 = *(v0 + 888);
  v41 = *(v0 + 760);
  v42 = *(v0 + 744);
  v43 = *(v0 + 736);
  v44 = *(v0 + 448);
  [v31 setAlwaysCopiesSampleData:0];
  [v37 addOutput:v31];
  sub_10000EAC0();
  LODWORD(v44) = v40(v41, v43);
  (*(v42 + 8))(v41, v43);
  if (v44 == v38)
  {
    v45 = *(v0 + 880);
    sub_100001940(&qword_1000181B0, &qword_1000102C0);
    v46 = sub_10000E930();
    *(v0 + 1088) = v46;
    v47 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
    v48 = swift_task_alloc();
    *(v0 + 1096) = v48;
    *v48 = v0;
    v48[1] = sub_100009568;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 1456, v46, 0, 0);
  }

  v49 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v50 = [v49 copyNextSampleBuffer];
  if (v50)
  {
    v51 = *(v0 + 984);
    v52 = *(v0 + 1464);
    v53 = *(v0 + 1460);
    v54 = v50;
    v55 = v54;
    if (v53 == v52 || v51)
    {
      v95 = 0;
      v96 = *(v0 + 616);
      v162 = (v96 + 16);
      v163 = (*(v0 + 648) + 16);
      v97 = *(v0 + 576);
      v98 = *(v0 + 544);
      v99 = *(v0 + 512);
      v160 = (v98 + 16);
      v161 = (v97 + 16);
      v164 = (*(v0 + 744) + 8);
      v154 = (v99 + 16);
      v155 = (*(v0 + 488) + 8);
      v156 = (v99 + 8);
      v157 = (v98 + 8);
      v158 = (v97 + 8);
      v159 = (v96 + 8);
      if (CMSampleBufferGetNumSamples(v54))
      {
        goto LABEL_28;
      }

      do
      {
LABEL_27:
      }

      while (!CMSampleBufferGetNumSamples(v55));
      while (1)
      {
LABEL_28:

        v100 = sub_10000EE80();
        if (!v100)
        {
          v136 = *(v0 + 1080);
          v137 = *(v0 + 1040);
          v138 = *(v0 + 880);
          v232 = *(v0 + 848);
          v223 = *(v0 + 664);
          v139 = *(v0 + 648);
          v140 = *(v0 + 640);
          sub_10000ED20();
          sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
          v141 = swift_allocError();
          sub_10000ED10();
          v236 = v141;
          swift_willThrow();

          (*(v139 + 8))(v223, v140);
          goto LABEL_22;
        }

        v101 = v100;
        v102 = *(v0 + 856);
        v103 = sub_10000EE40();
        v104 = sub_10000EF20();
        if (os_log_type_enabled(v104, v103))
        {
          v105 = swift_slowAlloc();
          *v105 = 134217984;
          *(v105 + 4) = v95;
          _os_log_impl(&_mh_execute_header, v104, v103, "BlastDoor processing thumbnail %ld", v105, 0xCu);
        }

        v197 = *(v0 + 1485);
        v229 = *(v0 + 1464);
        v215 = *(v0 + 888);
        v221 = *(v0 + 896);
        v201 = *(v0 + 1484);
        v193 = *(v0 + 872);
        v205 = *(v0 + 752);
        v210 = *(v0 + 736);
        v106 = *(v0 + 664);
        v107 = *(v0 + 656);
        v108 = *(v0 + 640);
        v109 = *(v0 + 632);
        v167 = *(v0 + 624);
        v168 = *(v0 + 608);
        v237 = v95;
        v110 = *(v0 + 600);
        v111 = *(v0 + 592);
        v170 = *(v0 + 584);
        v173 = *(v0 + 568);
        v166 = *(v0 + 560);
        v177 = *(v0 + 552);
        v181 = *(v0 + 536);
        v185 = *(v0 + 528);
        v189 = *(v0 + 448);

        sub_10000EE90();
        sub_10000EF00();
        type metadata accessor for CVBuffer(0);
        v241 = v112;
        v242 = &protocol witness table for CVBufferRef;
        v240.value = v101;
        v113 = sub_10000ECD0();
        (*(*(v113 - 8) + 56))(v110, 1, 1, v113);
        v165 = v101;
        sub_10000ECE0();
        v114 = *v163;
        (*v163)(v107, v106, v108);
        sub_10000EA80();
        v114(v107, v106, v108);
        sub_10000EAA0();
        (*v162)(v167, v109, v168);
        (*v161)(v170, v111, v173);
        (*v160)(v177, v166, v181);
        sub_10000EB80();
        sub_10000EAC0();
        v115 = v215(v205, v210);
        v116 = *(v0 + 1080);
        if (v115 == v229)
        {
          v182 = *(v0 + 1040);
          v186 = *(v0 + 880);
          v142 = *(v0 + 856);
          v198 = *(v0 + 848);
          v233 = *(v0 + 640);
          v239 = *(v0 + 664);
          v217 = *(v0 + 632);
          v224 = *(v0 + 648);
          v206 = *(v0 + 592);
          v211 = *(v0 + 608);
          v202 = *(v0 + 568);
          v190 = *(v0 + 536);
          v194 = *(v0 + 560);
          v143 = *(v0 + 528);
          v144 = *(v0 + 520);
          v146 = *(v0 + 496);
          v145 = *(v0 + 504);
          v147 = *(v0 + 472);
          v174 = *(v0 + 456);
          v178 = *(v0 + 480);
          (*v164)(*(v0 + 752), *(v0 + 736));
          sub_10000EE40();
          v148 = sub_10000EF20();
          sub_10000E980();

          (*v154)(v144, v143, v145);
          sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview);
          sub_10000EC30();
          sub_100001940(&qword_100018158, &qword_100010228);
          sub_10000EDE0();
          (*v155)(v146, v178);
          *(v0 + 424) = 0;
          sub_10000EDF0();

          (*v156)(v143, v145);
          (*v157)(v194, v190);
          (*v158)(v206, v202);
          (*v159)(v217, v211);
          (*(v224 + 8))(v239, v233);
          goto LABEL_19;
        }

        (*v164)(*(v0 + 752), *(v0 + 736));
        v117 = [v116 copyNextSampleBuffer];
        v118 = v237 + 1;
        if (__OFADD__(v237, 1))
        {
          goto LABEL_53;
        }

        v119 = v117;
        v238 = v237 + 1;
        if (v117)
        {
          v120 = *(v0 + 1460) != *(v0 + 1464) && v118 == *(v0 + 984);
          v121 = v120;
        }

        else
        {
          v121 = 1;
        }

        v122 = *(v0 + 496);
        v123 = *(v0 + 472);
        v230 = *(v0 + 480);
        v124 = *(v0 + 456);
        (*v154)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview);
        sub_10000EC30();
        sub_100001940(&qword_100018158, &qword_100010228);
        sub_10000EDE0();
        (*v155)(v122, v230);
        v125 = *(v0 + 632);
        v222 = *(v0 + 592);
        v231 = *(v0 + 608);
        v216 = *(v0 + 568);
        v126 = *(v0 + 560);
        v127 = *(v0 + 536);
        v128 = *(v0 + 528);
        v129 = *(v0 + 504);
        if (v121)
        {
          v130 = *(v0 + 632);
          v131 = *(v0 + 456);
          *(v0 + 416) = 0;
          sub_10000EDF0();

          (*v156)(v128, v129);
          (*v157)(v126, v127);
          (*v158)(v222, v216);
          (*v159)(v130, v231);
        }

        else
        {

          (*v156)(v128, v129);
          (*v157)(v126, v127);
          (*v158)(v222, v216);
          (*v159)(v125, v231);
        }

        if (!v119)
        {
          break;
        }

        v132 = *(v0 + 984);
        v133 = *(v0 + 1464);
        v134 = *(v0 + 1460);
        v135 = v119;
        v55 = v135;
        v120 = v134 == v133;
        v95 = v238;
        if (!v120 && v238 == v132)
        {
          goto LABEL_18;
        }

        if (!CMSampleBufferGetNumSamples(v135))
        {
          goto LABEL_27;
        }
      }

      v149 = *(v0 + 1080);
      v150 = *(v0 + 1040);
      v151 = *(v0 + 880);
      v152 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_18:
      v56 = *(v0 + 1080);
      v57 = *(v0 + 880);
      v58 = *(v0 + 848);
      v59 = *(v0 + 664);
      v60 = *(v0 + 648);
      v61 = *(v0 + 640);

      (*(v60 + 8))(v59, v61);
    }

LABEL_19:
    v62 = *(v0 + 832);
    v63 = *(v0 + 808);
    v64 = *(v0 + 784);
    v65 = *(v0 + 776);
    v66 = *(v0 + 768);
    v67 = *(v0 + 760);
    v68 = *(v0 + 752);
    v69 = *(v0 + 728);
    v70 = *(v0 + 704);
    v71 = *(v0 + 696);
    v171 = *(v0 + 688);
    v175 = *(v0 + 664);
    v179 = *(v0 + 656);
    v183 = *(v0 + 632);
    v187 = *(v0 + 624);
    v191 = *(v0 + 600);
    v195 = *(v0 + 592);
    v199 = *(v0 + 584);
    v203 = *(v0 + 560);
    v207 = *(v0 + 552);
    v212 = *(v0 + 528);
    v218 = *(v0 + 520);
    v225 = *(v0 + 496);
    v235 = *(v0 + 472);

    v72 = *(v0 + 8);
    goto LABEL_23;
  }

  v78 = *(v0 + 1080);
  v79 = *(v0 + 1040);
  v80 = *(v0 + 880);
  v227 = *(v0 + 848);
  v81 = *(v0 + 664);
  v82 = *(v0 + 648);
  v83 = *(v0 + 640);
  sub_10000ED20();
  sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
  v84 = swift_allocError();
  sub_10000ED10();
  v236 = v84;
  swift_willThrow();

  (*(v82 + 8))(v81, v83);
LABEL_22:
  v85 = *(v0 + 832);
  v86 = *(v0 + 808);
  v87 = *(v0 + 784);
  v88 = *(v0 + 776);
  v89 = *(v0 + 768);
  v90 = *(v0 + 760);
  v91 = *(v0 + 752);
  v92 = *(v0 + 728);
  v93 = *(v0 + 704);
  v94 = *(v0 + 696);
  v169 = *(v0 + 688);
  v172 = *(v0 + 664);
  v176 = *(v0 + 656);
  v180 = *(v0 + 632);
  v184 = *(v0 + 624);
  v188 = *(v0 + 600);
  v192 = *(v0 + 592);
  v196 = *(v0 + 584);
  v200 = *(v0 + 560);
  v204 = *(v0 + 552);
  v209 = *(v0 + 528);
  v214 = *(v0 + 520);
  v220 = *(v0 + 496);
  v228 = *(v0 + 472);
  **(v0 + 464) = v236;

  v72 = *(v0 + 8);
LABEL_23:

  return v72();
}

uint64_t sub_100009568()
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v4 = *v1;
  *(*v1 + 1104) = v0;

  v5 = *(v2 + 1088);

  if (v0)
  {
    v6 = sub_10000B7EC;
  }

  else
  {
    v6 = sub_1000096C8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000096C8()
{
  v1 = ceilf(*(v0 + 1456));
  *(v0 + 1472) = v1;
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -2147500000.0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v1 >= 2147500000.0)
  {
    goto LABEL_9;
  }

  v2 = *(v0 + 880);
  *(v0 + 1112) = kCMTimeZero.value;
  *(v0 + 1476) = *&kCMTimeZero.timescale;
  *(v0 + 1120) = kCMTimeZero.epoch;
  sub_100001940(&qword_1000181B8, &qword_1000102C8);
  v3 = sub_10000E950();
  *(v0 + 1128) = v3;
  v4 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v5 = swift_task_alloc();
  *(v0 + 1136) = v5;
  *v5 = v0;
  v5[1] = sub_10000983C;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 432, v3, 0, 0);
}

uint64_t sub_10000983C()
{
  v2 = *v1;
  v3 = *(*v1 + 1136);
  v4 = *v1;

  v5 = *(v2 + 1128);
  if (v0)
  {

    v6 = sub_10000BA20;
  }

  else
  {

    v6 = sub_1000099B0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000099B0()
{
  v229 = v0;
  v1 = *(v0 + 432);
  if (v1 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10000EF80())
  {
    v3 = v0 + 1304;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = &selRef_initWithURL_options_;
    v201 = i;
    while (1)
    {
      if (v5)
      {
        v7 = sub_10000EF60();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v7 = *(v1 + 32 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      if (([v7 v6[11]] & 1) == 0)
      {
        v10 = *(v0 + 880);
        [v8 timeMapping];
        v11 = v222;
        v12 = *(&v221 + 1);
        *(v0 + 1336) = v221;
        *(v0 + 1344) = v12;
        *(v0 + 1352) = v11;
        v13 = [v10 makeSampleCursorWithPresentationTimeStamp:v0 + 1336];
        if (v13)
        {
          v14 = v13;
          do
          {
            if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
            {
              break;
            }

            if ([v14 stepInPresentationOrderByCount:1] != 1)
            {
              break;
            }

            [v14 presentationTimeStamp];
            [v8 timeMapping];
            v15 = v222;
            *(v0 + 1144) = v221;
            *(v0 + 1160) = v15;
            *(v0 + 1176) = v223;
            sub_10000EE10();
          }

          while ((sub_10000EEE0() & 1) == 0);
          if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
          {

            [v14 presentationTimeStamp];
            v108 = v221;
            v109 = v222;
            v110 = *(&v221 + 1);
            [v8 timeMapping];
            v111 = v221;
            v113 = *(&v222 + 1);
            v112 = v222;
            v114 = *(&v223 + 1);
            v115 = v223;
            v116 = *(&v221 + 1);
            [v8 timeMapping];
            v117 = v224;
            v118 = v228;
            v119 = v227;
            v120 = v226;
            v121 = v225;
            *(v0 + 1360) = v108;
            *(v0 + 1368) = v110;
            *(v0 + 1376) = v109;
            *(v0 + 1240) = v111;
            *(v0 + 1248) = v116;
            *(v0 + 1256) = __PAIR128__(v113, v112);
            *(v0 + 1272) = v115;
            *(v0 + 1280) = v114;
            *(v0 + 1288) = v117;
            *(v0 + 1296) = v121;
            v3 = v0 + 1304;
            *(v0 + 1304) = v120;
            *(v0 + 1320) = v119;
            *(v0 + 1328) = v118;
            CMTimeMapTimeFromRangeToRange(&v221, (v0 + 1360), (v0 + 1240), (v0 + 1288));
            v17 = *(&v221 + 1);
            v18 = v221;
            v16 = v222;

            goto LABEL_22;
          }

          i = v201;
          v5 = v1 & 0xC000000000000001;
          v6 = &selRef_initWithURL_options_;
        }
      }

      if (v4 == i)
      {

        v16 = *(v0 + 1120);
        v3 = v0 + 1304;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v16 = *(v0 + 1120);
LABEL_21:
  v17 = *(v3 + 172);
  v18 = *(v0 + 1112);
LABEL_22:
  v19 = *(v0 + 1040);
  v20 = sub_10000EEF0(1, *(v0 + 1472));
  *(v0 + 1192) = v18;
  *(v0 + 1200) = v17;
  *(v0 + 1208) = v16;
  *(v0 + 1216) = v20;
  *(v0 + 1224) = v21;
  *(v0 + 1228) = v22;
  *(v0 + 1232) = v23;
  [v19 setTimeRange:v0 + 1192];
  v24 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v25 = [v24 copyNextSampleBuffer];
  if (v25)
  {
    v26 = *(v0 + 984);
    v27 = *(v0 + 1464);
    v28 = *(v0 + 1460);
    v29 = v25;
    v30 = v29;
    if (v28 == v27 || v26)
    {
      v66 = 0;
      v67 = *(v0 + 616);
      v147 = (v67 + 16);
      v148 = (*(v0 + 648) + 16);
      v68 = *(v0 + 576);
      v69 = *(v0 + 544);
      v70 = *(v0 + 512);
      v145 = (v69 + 16);
      v146 = (v68 + 16);
      v149 = (*(v0 + 744) + 8);
      v139 = (v70 + 16);
      v140 = (*(v0 + 488) + 8);
      v141 = (v70 + 8);
      v142 = (v69 + 8);
      v143 = (v68 + 8);
      v144 = (v67 + 8);
      if (CMSampleBufferGetNumSamples(v29))
      {
        goto LABEL_34;
      }

      do
      {
LABEL_33:
      }

      while (!CMSampleBufferGetNumSamples(v30));
      while (1)
      {
LABEL_34:

        v71 = sub_10000EE80();
        if (!v71)
        {
          v122 = *(v0 + 1080);
          v123 = *(v0 + 1040);
          v124 = *(v0 + 880);
          v214 = *(v0 + 848);
          v206 = *(v0 + 664);
          v125 = *(v0 + 648);
          v126 = *(v0 + 640);
          sub_10000ED20();
          sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
          v127 = swift_allocError();
          sub_10000ED10();
          v217 = v127;
          swift_willThrow();

          (*(v125 + 8))(v206, v126);
          goto LABEL_28;
        }

        v72 = v71;
        v73 = *(v0 + 856);
        v74 = sub_10000EE40();
        v75 = sub_10000EF20();
        if (os_log_type_enabled(v75, v74))
        {
          v76 = swift_slowAlloc();
          *v76 = 134217984;
          *(v76 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v75, v74, "BlastDoor processing thumbnail %ld", v76, 0xCu);
        }

        v182 = *(v3 + 181);
        v211 = *(v0 + 1464);
        v204 = *(v0 + 896);
        v186 = *(v3 + 180);
        v178 = *(v0 + 872);
        v190 = *(v0 + 752);
        v194 = *(v0 + 736);
        v198 = *(v0 + 888);
        v77 = *(v0 + 664);
        v218 = v66;
        v78 = *(v0 + 656);
        v79 = *(v0 + 640);
        v80 = *(v0 + 632);
        v152 = *(v0 + 624);
        v153 = *(v0 + 608);
        v81 = *(v0 + 600);
        v82 = *(v0 + 592);
        v155 = *(v0 + 584);
        v158 = *(v0 + 568);
        v151 = *(v0 + 560);
        v162 = *(v0 + 552);
        v166 = *(v0 + 536);
        v170 = *(v0 + 528);
        v174 = *(v0 + 448);

        sub_10000EE90();
        sub_10000EF00();
        type metadata accessor for CVBuffer(0);
        *(&v222 + 1) = v83;
        *&v223 = &protocol witness table for CVBufferRef;
        *&v221 = v72;
        v84 = sub_10000ECD0();
        (*(*(v84 - 8) + 56))(v81, 1, 1, v84);
        v85 = v72;
        sub_10000ECE0();
        v86 = *v148;
        (*v148)(v78, v77, v79);
        sub_10000EA80();
        v86(v78, v77, v79);
        v1 = v151;
        sub_10000EAA0();
        (*v147)(v152, v80, v153);
        (*v146)(v155, v82, v158);
        (*v145)(v162, v151, v166);
        sub_10000EB80();
        sub_10000EAC0();
        v87 = v198(v190, v194);
        v88 = *(v0 + 1080);
        v150 = v85;
        if (v87 == v211)
        {
          v167 = *(v0 + 1040);
          v171 = *(v0 + 880);
          v128 = *(v0 + 856);
          v183 = *(v0 + 848);
          v207 = *(v0 + 648);
          v215 = *(v0 + 640);
          v220 = *(v0 + 664);
          v195 = *(v0 + 608);
          v200 = *(v0 + 632);
          v187 = *(v0 + 568);
          v191 = *(v0 + 592);
          v175 = *(v0 + 536);
          v179 = *(v0 + 560);
          v129 = *(v0 + 528);
          v130 = *(v0 + 520);
          v132 = *(v0 + 496);
          v131 = *(v0 + 504);
          v133 = *(v0 + 472);
          v159 = *(v0 + 456);
          v163 = *(v0 + 480);
          (*v149)(*(v0 + 752), *(v0 + 736));
          sub_10000EE40();
          v134 = sub_10000EF20();
          sub_10000E980();

          (*v139)(v130, v129, v131);
          sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview);
          sub_10000EC30();
          sub_100001940(&qword_100018158, &qword_100010228);
          sub_10000EDE0();
          (*v140)(v132, v163);
          *(v0 + 424) = 0;
          sub_10000EDF0();

          (*v141)(v129, v131);
          (*v142)(v179, v175);
          (*v143)(v191, v187);
          (*v144)(v200, v195);
          (*(v207 + 8))(v220, v215);
          goto LABEL_26;
        }

        (*v149)(*(v0 + 752), *(v0 + 736));
        v89 = [v88 copyNextSampleBuffer];
        v90 = v218 + 1;
        if (__OFADD__(v218, 1))
        {
          goto LABEL_61;
        }

        v91 = v89;
        v219 = v218 + 1;
        if (v89)
        {
          v92 = *(v0 + 1460) != *(v0 + 1464) && v90 == *(v0 + 984);
          v93 = v92;
        }

        else
        {
          v93 = 1;
        }

        v94 = *(v0 + 496);
        v95 = *(v0 + 472);
        v212 = *(v0 + 480);
        v96 = *(v0 + 456);
        (*v139)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview);
        sub_10000EC30();
        sub_100001940(&qword_100018158, &qword_100010228);
        sub_10000EDE0();
        (*v140)(v94, v212);
        v97 = *(v0 + 632);
        v205 = *(v0 + 592);
        v213 = *(v0 + 608);
        v199 = *(v0 + 568);
        v98 = *(v0 + 560);
        v99 = *(v0 + 536);
        v100 = *(v0 + 528);
        v101 = *(v0 + 504);
        if (v93)
        {
          v102 = *(v0 + 632);
          v103 = *(v0 + 456);
          *(v0 + 416) = 0;
          sub_10000EDF0();

          (*v141)(v100, v101);
          (*v142)(v98, v99);
          (*v143)(v205, v199);
          (*v144)(v102, v213);
        }

        else
        {

          (*v141)(v100, v101);
          (*v142)(v98, v99);
          (*v143)(v205, v199);
          (*v144)(v97, v213);
        }

        v66 = v90;
        if (!v91)
        {
          break;
        }

        v104 = *(v0 + 984);
        v105 = *(v0 + 1464);
        v106 = *(v0 + 1460);
        v107 = v91;
        v30 = v107;
        v92 = v106 == v105;
        v3 = v0 + 1304;
        if (!v92 && v219 == v104)
        {
          goto LABEL_25;
        }

        if (!CMSampleBufferGetNumSamples(v107))
        {
          goto LABEL_33;
        }
      }

      v135 = *(v0 + 1080);
      v136 = *(v0 + 1040);
      v137 = *(v0 + 880);
      v138 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_25:
      v31 = *(v0 + 1080);
      v32 = *(v0 + 880);
      v33 = *(v0 + 848);
      v34 = *(v0 + 664);
      v35 = *(v0 + 648);
      v36 = *(v0 + 640);

      (*(v35 + 8))(v34, v36);
    }

LABEL_26:
    v37 = *(v0 + 832);
    v38 = *(v0 + 808);
    v39 = *(v0 + 784);
    v40 = *(v0 + 776);
    v41 = *(v0 + 768);
    v42 = *(v0 + 760);
    v43 = *(v0 + 752);
    v44 = *(v0 + 728);
    v45 = *(v0 + 704);
    v46 = *(v0 + 696);
    v156 = *(v0 + 688);
    v160 = *(v0 + 664);
    v164 = *(v0 + 656);
    v168 = *(v0 + 632);
    v172 = *(v0 + 624);
    v176 = *(v0 + 600);
    v180 = *(v0 + 592);
    v184 = *(v0 + 584);
    v188 = *(v0 + 560);
    v192 = *(v0 + 552);
    v196 = *(v0 + 528);
    v202 = *(v0 + 520);
    v208 = *(v0 + 496);
    v216 = *(v0 + 472);

    v47 = *(v0 + 8);
  }

  else
  {
    v48 = *(v0 + 1080);
    v49 = *(v0 + 1040);
    v50 = *(v0 + 880);
    v209 = *(v0 + 848);
    v51 = *(v0 + 664);
    v52 = *(v0 + 648);
    v53 = *(v0 + 640);
    sub_10000ED20();
    sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
    v54 = swift_allocError();
    sub_10000ED10();
    v217 = v54;
    swift_willThrow();

    (*(v52 + 8))(v51, v53);
LABEL_28:
    v55 = *(v0 + 832);
    v56 = *(v0 + 808);
    v57 = *(v0 + 784);
    v58 = *(v0 + 776);
    v59 = *(v0 + 768);
    v60 = *(v0 + 760);
    v61 = *(v0 + 752);
    v62 = *(v0 + 728);
    v63 = *(v0 + 704);
    v64 = *(v0 + 696);
    v154 = *(v0 + 688);
    v157 = *(v0 + 664);
    v161 = *(v0 + 656);
    v165 = *(v0 + 632);
    v169 = *(v0 + 624);
    v173 = *(v0 + 600);
    v177 = *(v0 + 592);
    v181 = *(v0 + 584);
    v185 = *(v0 + 560);
    v189 = *(v0 + 552);
    v193 = *(v0 + 528);
    v197 = *(v0 + 520);
    v203 = *(v0 + 496);
    v210 = *(v0 + 472);
    **(v0 + 464) = v217;

    v47 = *(v0 + 8);
  }

  return v47();
}

uint64_t sub_10000AB38()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 848);
  swift_willThrow();

  v3 = *(v0 + 832);
  v4 = *(v0 + 808);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 768);
  v8 = *(v0 + 760);
  v9 = *(v0 + 752);
  v10 = *(v0 + 728);
  v11 = *(v0 + 704);
  v12 = *(v0 + 696);
  v15 = *(v0 + 688);
  v16 = *(v0 + 664);
  v17 = *(v0 + 656);
  v18 = *(v0 + 632);
  v19 = *(v0 + 624);
  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  v22 = *(v0 + 584);
  v23 = *(v0 + 560);
  v24 = *(v0 + 552);
  v25 = *(v0 + 528);
  v26 = *(v0 + 520);
  v27 = *(v0 + 496);
  v28 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 864);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10000AD34()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 832);
  v6 = *(v0 + 808);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);
  v12 = *(v0 + 728);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v17 = *(v0 + 688);
  v18 = *(v0 + 664);
  v19 = *(v0 + 656);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  v29 = *(v0 + 496);
  v30 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 928);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10000AF58()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 832);
  v6 = *(v0 + 808);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);
  v12 = *(v0 + 728);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v17 = *(v0 + 688);
  v18 = *(v0 + 664);
  v19 = *(v0 + 656);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  v29 = *(v0 + 496);
  v30 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 968);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10000B17C()
{
  v1 = *(v0 + 880);

  v2 = *(v0 + 832);
  v3 = *(v0 + 808);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = *(v0 + 728);
  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  v14 = *(v0 + 688);
  v15 = *(v0 + 664);
  v16 = *(v0 + 656);
  v17 = *(v0 + 632);
  v18 = *(v0 + 624);
  v19 = *(v0 + 600);
  v20 = *(v0 + 592);
  v21 = *(v0 + 584);
  v22 = *(v0 + 560);
  v23 = *(v0 + 552);
  v24 = *(v0 + 528);
  v25 = *(v0 + 520);
  v26 = *(v0 + 496);
  v27 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1016);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10000B378()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 664);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 832);
  v6 = *(v0 + 808);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);
  v12 = *(v0 + 728);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v17 = *(v0 + 688);
  v18 = *(v0 + 664);
  v19 = *(v0 + 656);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  v29 = *(v0 + 496);
  v30 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1032);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10000B59C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 848);
  v3 = *(v0 + 696);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 832);
  v10 = *(v0 + 808);
  v11 = *(v0 + 784);
  v12 = *(v0 + 776);
  v13 = *(v0 + 768);
  v14 = *(v0 + 760);
  v15 = *(v0 + 752);
  v16 = *(v0 + 728);
  v17 = *(v0 + 704);
  v18 = *(v0 + 696);
  v21 = *(v0 + 688);
  v22 = *(v0 + 664);
  v23 = *(v0 + 656);
  v24 = *(v0 + 632);
  v25 = *(v0 + 624);
  v26 = *(v0 + 600);
  v27 = *(v0 + 592);
  v28 = *(v0 + 584);
  v29 = *(v0 + 560);
  v30 = *(v0 + 552);
  v31 = *(v0 + 528);
  v32 = *(v0 + 520);
  v33 = *(v0 + 496);
  v34 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1072);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10000B7EC()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 880);
  v3 = *(v0 + 848);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 832);
  v8 = *(v0 + 808);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  v12 = *(v0 + 760);
  v13 = *(v0 + 752);
  v14 = *(v0 + 728);
  v15 = *(v0 + 704);
  v16 = *(v0 + 696);
  v19 = *(v0 + 688);
  v20 = *(v0 + 664);
  v21 = *(v0 + 656);
  v22 = *(v0 + 632);
  v23 = *(v0 + 624);
  v24 = *(v0 + 600);
  v25 = *(v0 + 592);
  v26 = *(v0 + 584);
  v27 = *(v0 + 560);
  v28 = *(v0 + 552);
  v29 = *(v0 + 528);
  v30 = *(v0 + 520);
  v31 = *(v0 + 496);
  v32 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1104);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10000BA20()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1476);
  v5 = sub_10000EEF0(1, *(v0 + 1472));
  *(v0 + 1192) = v2;
  *(v0 + 1200) = v4;
  *(v0 + 1208) = v1;
  *(v0 + 1216) = v5;
  *(v0 + 1224) = v6;
  *(v0 + 1228) = v7;
  *(v0 + 1232) = v8;
  [v3 setTimeRange:v0 + 1192];
  v9 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v10 = [v9 copyNextSampleBuffer];
  if (v10)
  {
    v11 = *(v0 + 984);
    v12 = *(v0 + 1464);
    v13 = *(v0 + 1460);
    v14 = v10;
    v15 = v14;
    if (v13 == v12 || v11)
    {
      v51 = 0;
      v52 = *(v0 + 616);
      v116 = (v52 + 16);
      v117 = (*(v0 + 648) + 16);
      v53 = *(v0 + 576);
      v54 = *(v0 + 544);
      v55 = *(v0 + 512);
      v114 = (v54 + 16);
      v115 = (v53 + 16);
      v118 = (*(v0 + 744) + 8);
      v108 = (v55 + 16);
      v109 = (*(v0 + 488) + 8);
      v110 = (v55 + 8);
      v111 = (v54 + 8);
      v112 = (v53 + 8);
      v113 = (v52 + 8);
      if (CMSampleBufferGetNumSamples(v14))
      {
        goto LABEL_13;
      }

      do
      {
LABEL_12:
      }

      while (!CMSampleBufferGetNumSamples(v15));
      while (1)
      {
LABEL_13:

        v56 = sub_10000EE80();
        if (!v56)
        {
          v91 = *(v0 + 1080);
          v92 = *(v0 + 1040);
          v93 = *(v0 + 880);
          v182 = *(v0 + 848);
          v174 = *(v0 + 664);
          v94 = *(v0 + 648);
          v95 = *(v0 + 640);
          sub_10000ED20();
          sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
          v96 = swift_allocError();
          sub_10000ED10();
          v185 = v96;
          swift_willThrow();

          (*(v94 + 8))(v174, v95);
          goto LABEL_7;
        }

        v57 = v56;
        v58 = *(v0 + 856);
        v59 = sub_10000EE40();
        v60 = sub_10000EF20();
        if (os_log_type_enabled(v60, v59))
        {
          v61 = swift_slowAlloc();
          *v61 = 134217984;
          *(v61 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v60, v59, "BlastDoor processing thumbnail %ld", v61, 0xCu);
        }

        v151 = *(v0 + 1485);
        v179 = *(v0 + 1464);
        v167 = *(v0 + 888);
        v172 = *(v0 + 896);
        v155 = *(v0 + 1484);
        v147 = *(v0 + 872);
        v159 = *(v0 + 752);
        v163 = *(v0 + 736);
        v62 = *(v0 + 664);
        v63 = *(v0 + 656);
        v64 = *(v0 + 640);
        v65 = *(v0 + 632);
        v121 = *(v0 + 624);
        v122 = *(v0 + 608);
        v186 = v51;
        v66 = *(v0 + 600);
        v67 = *(v0 + 592);
        v124 = *(v0 + 584);
        v127 = *(v0 + 568);
        v120 = *(v0 + 560);
        v131 = *(v0 + 552);
        v135 = *(v0 + 536);
        v139 = *(v0 + 528);
        v143 = *(v0 + 448);

        sub_10000EE90();
        sub_10000EF00();
        type metadata accessor for CVBuffer(0);
        v68 = sub_10000ECD0();
        (*(*(v68 - 8) + 56))(v66, 1, 1, v68);
        v119 = v57;
        sub_10000ECE0();
        v69 = *v117;
        (*v117)(v63, v62, v64);
        sub_10000EA80();
        v69(v63, v62, v64);
        sub_10000EAA0();
        (*v116)(v121, v65, v122);
        (*v115)(v124, v67, v127);
        (*v114)(v131, v120, v135);
        sub_10000EB80();
        sub_10000EAC0();
        v70 = v167(v159, v163);
        v71 = *(v0 + 1080);
        if (v70 == v179)
        {
          v136 = *(v0 + 1040);
          v140 = *(v0 + 880);
          v97 = *(v0 + 856);
          v183 = *(v0 + 640);
          v188 = *(v0 + 664);
          v169 = *(v0 + 632);
          v175 = *(v0 + 648);
          v160 = *(v0 + 592);
          v164 = *(v0 + 608);
          v152 = *(v0 + 848);
          v156 = *(v0 + 568);
          v144 = *(v0 + 536);
          v148 = *(v0 + 560);
          v98 = *(v0 + 528);
          v99 = *(v0 + 520);
          v101 = *(v0 + 496);
          v100 = *(v0 + 504);
          v102 = *(v0 + 472);
          v128 = *(v0 + 456);
          v132 = *(v0 + 480);
          (*v118)(*(v0 + 752), *(v0 + 736));
          sub_10000EE40();
          v103 = sub_10000EF20();
          sub_10000E980();

          (*v108)(v99, v98, v100);
          sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview);
          sub_10000EC30();
          sub_100001940(&qword_100018158, &qword_100010228);
          sub_10000EDE0();
          (*v109)(v101, v132);
          *(v0 + 424) = 0;
          sub_10000EDF0();

          (*v110)(v98, v100);
          (*v111)(v148, v144);
          (*v112)(v160, v156);
          (*v113)(v169, v164);
          (*(v175 + 8))(v188, v183);
          goto LABEL_5;
        }

        (*v118)(*(v0 + 752), *(v0 + 736));
        v72 = [v71 copyNextSampleBuffer];
        v73 = v186 + 1;
        if (__OFADD__(v186, 1))
        {
          __break(1u);
        }

        v74 = v72;
        v187 = v186 + 1;
        if (v72)
        {
          v75 = *(v0 + 1460) != *(v0 + 1464) && v73 == *(v0 + 984);
          v76 = v75;
        }

        else
        {
          v76 = 1;
        }

        v77 = *(v0 + 496);
        v78 = *(v0 + 472);
        v180 = *(v0 + 480);
        v79 = *(v0 + 456);
        (*v108)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10000D468(&qword_1000181A8, &type metadata accessor for VideoPreview);
        sub_10000EC30();
        sub_100001940(&qword_100018158, &qword_100010228);
        sub_10000EDE0();
        (*v109)(v77, v180);
        v80 = *(v0 + 632);
        v173 = *(v0 + 592);
        v181 = *(v0 + 608);
        v168 = *(v0 + 568);
        v81 = *(v0 + 560);
        v82 = *(v0 + 536);
        v83 = *(v0 + 528);
        v84 = *(v0 + 504);
        if (v76)
        {
          v85 = *(v0 + 632);
          v86 = *(v0 + 456);
          *(v0 + 416) = 0;
          sub_10000EDF0();

          (*v110)(v83, v84);
          (*v111)(v81, v82);
          (*v112)(v173, v168);
          (*v113)(v85, v181);
        }

        else
        {

          (*v110)(v83, v84);
          (*v111)(v81, v82);
          (*v112)(v173, v168);
          (*v113)(v80, v181);
        }

        if (!v74)
        {
          break;
        }

        v87 = *(v0 + 984);
        v88 = *(v0 + 1464);
        v89 = *(v0 + 1460);
        v90 = v74;
        v15 = v90;
        v75 = v89 == v88;
        v51 = v187;
        if (!v75 && v187 == v87)
        {
          goto LABEL_4;
        }

        if (!CMSampleBufferGetNumSamples(v90))
        {
          goto LABEL_12;
        }
      }

      v104 = *(v0 + 1080);
      v105 = *(v0 + 1040);
      v106 = *(v0 + 880);
      v107 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_4:
      v16 = *(v0 + 1080);
      v17 = *(v0 + 880);
      v18 = *(v0 + 848);
      v19 = *(v0 + 664);
      v20 = *(v0 + 648);
      v21 = *(v0 + 640);

      (*(v20 + 8))(v19, v21);
    }

LABEL_5:
    v22 = *(v0 + 832);
    v23 = *(v0 + 808);
    v24 = *(v0 + 784);
    v25 = *(v0 + 776);
    v26 = *(v0 + 768);
    v27 = *(v0 + 760);
    v28 = *(v0 + 752);
    v29 = *(v0 + 728);
    v30 = *(v0 + 704);
    v31 = *(v0 + 696);
    v125 = *(v0 + 688);
    v129 = *(v0 + 664);
    v133 = *(v0 + 656);
    v137 = *(v0 + 632);
    v141 = *(v0 + 624);
    v145 = *(v0 + 600);
    v149 = *(v0 + 592);
    v153 = *(v0 + 584);
    v157 = *(v0 + 560);
    v161 = *(v0 + 552);
    v165 = *(v0 + 528);
    v170 = *(v0 + 520);
    v176 = *(v0 + 496);
    v184 = *(v0 + 472);

    v32 = *(v0 + 8);
  }

  else
  {
    v33 = *(v0 + 1080);
    v34 = *(v0 + 1040);
    v35 = *(v0 + 880);
    v177 = *(v0 + 848);
    v36 = *(v0 + 664);
    v37 = *(v0 + 648);
    v38 = *(v0 + 640);
    sub_10000ED20();
    sub_10000D468(&qword_100018128, &type metadata accessor for Explosion);
    v39 = swift_allocError();
    sub_10000ED10();
    v185 = v39;
    swift_willThrow();

    (*(v37 + 8))(v36, v38);
LABEL_7:
    v40 = *(v0 + 832);
    v41 = *(v0 + 808);
    v42 = *(v0 + 784);
    v43 = *(v0 + 776);
    v44 = *(v0 + 768);
    v45 = *(v0 + 760);
    v46 = *(v0 + 752);
    v47 = *(v0 + 728);
    v48 = *(v0 + 704);
    v49 = *(v0 + 696);
    v123 = *(v0 + 688);
    v126 = *(v0 + 664);
    v130 = *(v0 + 656);
    v134 = *(v0 + 632);
    v138 = *(v0 + 624);
    v142 = *(v0 + 600);
    v146 = *(v0 + 592);
    v150 = *(v0 + 584);
    v154 = *(v0 + 560);
    v158 = *(v0 + 552);
    v162 = *(v0 + 528);
    v166 = *(v0 + 520);
    v171 = *(v0 + 496);
    v178 = *(v0 + 472);
    **(v0 + 464) = v185;

    v32 = *(v0 + 8);
  }

  return v32();
}

uint64_t sub_10000C8CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100003348((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001940(&qword_100018178, &qword_100010288);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10000E838(0, &qword_1000181E8, AVAssetTrack_ptr);
    **(*(v4 + 64) + 40) = sub_10000EDA0();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10000C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001940(&qword_100018160, &qword_100010230);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000E880(a3, v27 - v11, &qword_100018160, &qword_100010230);
  v13 = sub_10000EDD0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000033D8(v12, &qword_100018160, &qword_100010230);
  }

  else
  {
    sub_10000EDC0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10000EDB0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10000ED70() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000033D8(a3, &qword_100018160, &qword_100010230);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000033D8(a3, &qword_100018160, &qword_100010230);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000CCC4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CDBC;

  return v7(a1);
}

uint64_t sub_10000CDBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000CEC0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000CF8C(v11, 0, 0, 1, a1, a2);
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
    sub_10000D4B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000338C(v11);
  return v7;
}

unint64_t sub_10000CF8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000D098(a5, a6);
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
    result = sub_10000EF70();
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

char *sub_10000D098(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000D0E4(a1, a2);
  sub_10000D214(&off_100014E00);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000D0E4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000D300(v5, 0);
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

  result = sub_10000EF70();
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
        v10 = sub_10000ED90();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000D300(v10, 0);
        result = sub_10000EF50();
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

uint64_t sub_10000D214(uint64_t result)
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

  result = sub_10000D374(result, v12, 1, v3);
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

void *sub_10000D300(uint64_t a1, uint64_t a2)
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

  sub_100001940(&qword_100018150, &qword_100010220);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000D374(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001940(&qword_100018150, &qword_100010220);
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

uint64_t sub_10000D468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D4B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000D510()
{
  v18 = sub_10000EC70();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v16 = (v2 + 32) & ~v2;
  v3 = (*(v1 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = sub_10000EAD0();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_100001940(&qword_100018158, &qword_100010228);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v15 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v16, v18);

  (*(v4 + 8))(v0 + v6, v17);
  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v11 + v15, v12 | 7);
}

uint64_t sub_10000D714(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000EC70() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10000EAD0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_100001940(&qword_100018158, &qword_100010228) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10000D8E8;

  return sub_100003F88(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

uint64_t sub_10000D8E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000D9DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DA14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000E8EC;

  return sub_10000CCC4(a1, v5);
}

uint64_t sub_10000DACC()
{
  v17 = sub_10000EC70();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_10000EAD0();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_100001940(&qword_100018158, &qword_100010228);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_10000DCB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000EC70() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10000EAD0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_100001940(&qword_100018158, &qword_100010228) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000D8E8;

  return sub_100004964(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_10000DE68()
{
  result = qword_100018170;
  if (!qword_100018170)
  {
    sub_10000E838(255, &qword_1000180A0, OS_dispatch_queue_serial_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018170);
  }

  return result;
}

uint64_t sub_10000DED0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000E8EC;

  return sub_100004C64(a1, v6, v7, v9, v8, a2);
}

unint64_t sub_10000DF98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000F000();
  sub_10000ED80();
  v6 = sub_10000F010();

  return sub_10000E484(a1, a2, v6);
}

uint64_t sub_10000E010(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001940(&qword_1000181E0, &qword_1000102E8);
  v36 = a2;
  result = sub_10000EFA0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10000E828(v25, v37);
      }

      else
      {
        sub_10000D4B0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_10000F000();
      sub_10000ED80();
      result = sub_10000F010();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10000E828(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_10000E2C8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000DF98(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000E53C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000E010(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000DF98(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_10000EFF0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000338C(v23);

    return sub_10000E828(a1, v23);
  }

  else
  {
    sub_10000E418(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_10000E418(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000E828(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10000E484(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000EFE0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10000E53C()
{
  v1 = v0;
  sub_100001940(&qword_1000181E0, &qword_1000102E8);
  v2 = *v0;
  v3 = sub_10000EF90();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000D4B0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000E828(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_10000E6E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001940(&qword_1000181E0, &qword_1000102E8);
    v3 = sub_10000EFB0();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E880(v4, &v13, &qword_100018190, &qword_1000102A8);
      v5 = v13;
      v6 = v14;
      result = sub_10000DF98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000E828(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_10000E828(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000E838(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000E880(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001940(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}