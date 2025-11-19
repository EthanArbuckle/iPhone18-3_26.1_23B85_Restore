uint64_t sub_17E8()
{
  v0 = sub_6850();
  sub_185C(v0, qword_10548);
  sub_18C0(v0, qword_10548);
  return sub_6840();
}

uint64_t *sub_185C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_18C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_190C()
{
  sub_548C();
  v2 = sub_6790();

  return sub_194C(v1, v0, v2);
}

uint64_t sub_1988()
{
  sub_548C();
  sub_6790();
  v0 = sub_54C0();

  return sub_19C0(v0, v1, v2, v3);
}

uint64_t sub_1A08()
{
  result = sub_6790();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionButtonView(0);
  v4 = sub_5414(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_5424();
  v107 = v8 - v7;
  v9 = sub_212C(&qword_10160, &qword_6FE8);
  v10 = sub_5480(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_5464();
  v110 = v13 - v14;
  __chkstk_darwin(v15);
  v17 = &v101 - v16;
  v18 = type metadata accessor for MessageAccumulationView();
  v19 = sub_5480(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_5424();
  v106 = v23 - v22;
  v108 = sub_212C(&qword_10168, &qword_6FF0);
  v24 = sub_5414(v108);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_5464();
  v105 = v27 - v28;
  __chkstk_darwin(v29);
  v104 = &v101 - v30;
  v31 = sub_212C(&qword_10170, &qword_6FF8);
  sub_5480(v31);
  v33 = *(v32 + 64);
  sub_5474();
  __chkstk_darwin(v34);
  v36 = &v101 - v35;
  v37 = sub_67E0();
  v38 = sub_5400(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  sub_5424();
  v45 = v44 - v43;
  v46 = sub_212C(&qword_10178, &qword_7000);
  v47 = sub_5480(v46);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  sub_5464();
  v52 = v50 - v51;
  __chkstk_darwin(v53);
  v55 = &v101 - v54;
  v109 = v1;
  sub_6780();
  if (sub_194C(v36, 1, v37) == 1)
  {
    sub_52E0(v36, &qword_10170, &qword_6FF8);
LABEL_10:
    v80 = 1;
    v70 = v108;
    goto LABEL_11;
  }

  (*(v40 + 32))(v45, v36, v37);
  v56 = *(sub_67D0() + 16);

  if (!v56)
  {
    (*(v40 + 8))(v45, v37);
    goto LABEL_10;
  }

  v102 = v3;
  v103 = a1;
  (*(v40 + 16))(v106, v45, v37);
  sub_212C(&qword_10188, &unk_7010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_6F40;
  v58 = sub_6960();
  *(inited + 32) = v58;
  v59 = sub_6970();
  *(inited + 33) = v59;
  v60 = sub_6980();
  sub_6980();
  if (sub_6980() != v58)
  {
    v60 = sub_6980();
  }

  sub_6980();
  if (sub_6980() != v59)
  {
    v60 = sub_6980();
  }

  v3 = v102;
  a1 = v103;
  sub_6860();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  (*(v40 + 8))(v45, v37);
  v69 = v105;
  sub_2174(v106, v105, type metadata accessor for MessageAccumulationView);
  v70 = v108;
  v71 = v69 + *(v108 + 36);
  *v71 = v60;
  *(v71 + 8) = v62;
  *(v71 + 16) = v64;
  *(v71 + 24) = v66;
  *(v71 + 32) = v68;
  *(v71 + 40) = 0;
  sub_54B4();
  sub_5238(v72, v73, v74, v75);
  sub_54B4();
  sub_5238(v76, v77, v78, v79);
  v80 = 0;
LABEL_11:
  v81 = 1;
  sub_19C0(v55, v80, 1, v70);
  v82 = *(sub_6770() + 16);

  if (v82)
  {
    v83 = sub_6770();
    v84 = v107;
    sub_6B10();
    v85 = v84 + *(v3 + 20);
    v111 = 0;
    sub_6A60();
    v86 = v113;
    *v85 = v112;
    *(v85 + 8) = v86;
    *(v84 + *(v3 + 24)) = v83;
    sub_544C();
    v87 = sub_54A8();
    sub_2174(v87, v88, v89);
    v81 = 0;
  }

  sub_19C0(v17, v81, 1, v3);
  sub_54B4();
  sub_5284(v90, v91, v92, v93);
  v94 = v110;
  sub_5284(v17, v110, &qword_10160, &qword_6FE8);
  sub_54B4();
  sub_5284(v95, v96, v97, v98);
  v99 = sub_212C(&qword_10180, &qword_7008);
  sub_5284(v94, a1 + *(v99 + 48), &qword_10160, &qword_6FE8);
  sub_52E0(v17, &qword_10160, &qword_6FE8);
  sub_52E0(v55, &qword_10178, &qword_7000);
  sub_52E0(v94, &qword_10160, &qword_6FE8);
  return sub_52E0(v52, &qword_10178, &qword_7000);
}

uint64_t sub_20F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_212C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_5414(v4);
  v6 = *(v5 + 32);
  v7 = sub_549C();
  v8(v7);
  return a2;
}

uint64_t sub_21E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6B20();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_194C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_548C();
  result = sub_6B20();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_54C0();

    return sub_19C0(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 24)) = (v4 - 1);
  }

  return result;
}

void sub_2338()
{
  sub_6B20();
  if (v0 <= 0x3F)
  {
    sub_241C(319, &qword_101F8, &type metadata for Bool, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_241C(319, &unk_10200, &type metadata for String, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_241C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24B0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2514@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v69 = sub_6880();
  v2 = sub_5400(v69);
  v70 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_5424();
  v8 = v7 - v6;
  v9 = type metadata accessor for AttributionButtonView(0);
  v10 = *(v9 - 8);
  v65 = v9 - 8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v61 = v12;
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_212C(&qword_10248, &qword_7090);
  sub_5400(v62);
  v64 = v14;
  v16 = *(v15 + 64);
  sub_5474();
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v67 = sub_212C(&qword_10250, &qword_7098);
  sub_5400(v67);
  v66 = v20;
  v22 = *(v21 + 64);
  sub_5474();
  __chkstk_darwin(v23);
  v58 = &v56 - v24;
  v63 = sub_212C(&qword_10258, &qword_70A0);
  sub_5414(v63);
  v26 = *(v25 + 64);
  sub_5474();
  __chkstk_darwin(v27);
  v29 = &v56 - v28;
  v71 = sub_212C(&qword_10260, &qword_70A8);
  sub_5400(v71);
  v72 = v30;
  v32 = *(v31 + 64);
  sub_5474();
  __chkstk_darwin(v33);
  v68 = &v56 - v34;
  v57 = v1;
  v59 = v13;
  sub_3CB8(v1, v13);
  v35 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  swift_allocObject();
  sub_544C();
  v60 = v36;
  sub_2174(v13, v37 + v35, v38);
  v74 = v1;
  sub_212C(&qword_10268, &qword_70B0);
  v39 = sub_24B0(&qword_10270, &qword_70B8);
  v40 = sub_3D84();
  __src[0] = v39;
  __src[1] = v40;
  swift_getOpaqueTypeConformance2();
  sub_6A90();
  v41 = v8;
  sub_6870();
  sub_3FD8(&qword_102E0, &qword_10248, &qword_7090);
  sub_518C(&qword_102E8, &type metadata accessor for PlainButtonStyle);
  v42 = v58;
  v43 = v62;
  v44 = v69;
  sub_6A10();
  (*(v70 + 8))(v41, v44);
  (*(v64 + 8))(v19, v43);
  sub_6AB0();
  sub_6890();
  (*(v66 + 32))(v29, v42, v67);
  v45 = v63;
  memcpy(&v29[*(v63 + 36)], __src, 0x70uLL);
  v46 = v57;
  v47 = v57 + *(v65 + 28);
  v48 = *v47;
  v49 = *(v47 + 8);
  LOBYTE(v75) = v48;
  v76 = v49;
  sub_212C(&qword_102F0, &qword_70F0);
  sub_6A70();
  LOBYTE(v75) = v79;
  v50 = v59;
  sub_3CB8(v46, v59);
  v51 = swift_allocObject();
  sub_2174(v50, v51 + v35, v60);
  v52 = sub_418C();
  v53 = v68;
  sub_6A30();

  sub_42D8(v29);
  v75 = v45;
  v76 = &type metadata for Bool;
  v77 = v52;
  v78 = &protocol witness table for Bool;
  sub_5434();
  swift_getOpaqueTypeConformance2();
  v54 = v71;
  sub_69D0();
  return (*(v72 + 8))(v53, v54);
}

uint64_t sub_2BE8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AttributionButtonView(0) + 20));
  v2 = *v1;
  v3 = *(v1 + 1);

  sub_212C(&qword_102F0, &qword_70F0);
  sub_6A70();
  sub_6A80();
}

uint64_t sub_2C94(uint64_t a1)
{
  v2 = sub_212C(&qword_10270, &qword_70B8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  *v5 = sub_6930();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v6 = sub_212C(&qword_10318, &qword_70F8);
  sub_2E0C(a1, &v5[*(v6 + 44)]);
  KeyPath = swift_getKeyPath();
  v8 = &v5[*(sub_212C(&qword_10298, &qword_70C8) + 36)];
  *v8 = KeyPath;
  v8[8] = 0;
  LODWORD(KeyPath) = sub_6950();
  *&v5[*(sub_212C(&qword_10288, &qword_70C0) + 36)] = KeyPath;
  v9 = sub_69A0();
  v10 = swift_getKeyPath();
  v11 = &v5[*(v2 + 36)];
  *v11 = v10;
  v11[1] = v9;
  sub_6990();
  sub_3D84();
  sub_6A00();
  return sub_52E0(v5, &qword_10270, &qword_70B8);
}

uint64_t sub_2E0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_6AF0();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  __chkstk_darwin(v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6AD0();
  v8 = *(v7 - 8);
  v58 = v7;
  v59 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_212C(&qword_10320, &qword_7160);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = (&v52 - v15);
  v17 = sub_212C(&qword_10328, &qword_7168);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v57 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v52 - v23;
  __chkstk_darwin(v22);
  v26 = &v52 - v25;
  v27 = sub_331C();
  if (v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  v30 = 0xE000000000000000;
  if (v28)
  {
    v30 = v28;
  }

  v63 = v29;
  v64 = v30;
  sub_50D4();
  v31 = sub_69B0();
  v53 = v32;
  v54 = v31;
  v55 = v33;
  v56 = v34;
  v35 = (a1 + *(type metadata accessor for AttributionButtonView(0) + 20));
  v36 = *v35;
  v37 = *(v35 + 1);
  LOBYTE(v63) = v36;
  v64 = v37;
  sub_212C(&qword_102F0, &qword_70F0);
  sub_6A70();
  v38 = sub_6A40();
  v39 = (v16 + *(v13 + 44));
  v40 = *(sub_212C(&qword_10338, &qword_7170) + 28);
  v41 = enum case for Image.Scale.small(_:);
  v42 = sub_6A50();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  *v16 = v38;
  sub_6AC0();
  sub_6AE0();
  v43 = &v24[*(v18 + 44)];
  LODWORD(v38) = *(sub_212C(&qword_10340, &qword_71A8) + 28);
  sub_518C(&qword_10348, &type metadata accessor for ReplaceSymbolEffect);
  v44 = v58;
  sub_68A0();
  (*(v60 + 8))(v6, v61);
  (*(v59 + 8))(v11, v44);
  *v43 = swift_getKeyPath();
  sub_5238(v16, v24, &qword_10320, &qword_7160);
  sub_5238(v24, v26, &qword_10328, &qword_7168);
  v45 = v57;
  sub_5284(v26, v57, &qword_10328, &qword_7168);
  v46 = v62;
  v48 = v53;
  v47 = v54;
  *v62 = v54;
  v46[1] = v48;
  LOBYTE(v44) = v55 & 1;
  *(v46 + 16) = v55 & 1;
  v46[3] = v56;
  v49 = v46;
  v50 = sub_212C(&qword_10350, &qword_71E0);
  sub_5284(v45, v49 + *(v50 + 48), &qword_10328, &qword_7168);
  sub_52D0(v47, v48, v44);

  sub_52E0(v26, &qword_10328, &qword_7168);
  sub_52E0(v45, &qword_10328, &qword_7168);
  sub_5338(v47, v48, v44);
}

uint64_t sub_331C()
{
  v34 = &_swiftEmptySetSingleton;
  result = type metadata accessor for AttributionButtonView(0);
  v2 = *(v0 + *(result + 24));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v32 = &_swiftEmptyArrayStorage;
    while (v4 < *(v2 + 16))
    {
      v5 = (v2 + 32 + 16 * v4);
      v7 = *v5;
      v6 = v5[1];
      v8 = v34;
      if (v34[2])
      {
        v9 = v34[5];
        sub_6C30();

        sub_6B70();
        v10 = sub_6C50();
        v11 = ~(-1 << *(v8 + 32));
        while (1)
        {
          v12 = v10 & v11;
          if (((*(v8 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v10 & v11)) & 1) == 0)
          {
            break;
          }

          v13 = (v8[6] + 16 * v12);
          if (*v13 != v7 || v13[1] != v6)
          {
            v15 = sub_6BD0();
            v10 = v12 + 1;
            if ((v15 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_20;
        }
      }

      else
      {
      }

      v16 = objc_allocWithZone(LSApplicationRecord);

      v17 = sub_54A8();
      v19 = sub_4338(v17, v18, 1);
      v20 = v19;
      if (v19)
      {
        v21 = [v19 localizedName];
        v22 = sub_6B60();
        v31 = v23;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_4414(0, *(v32 + 2) + 1, 1, v32);
        }

        v25 = *(v32 + 2);
        v24 = *(v32 + 3);
        if (v25 >= v24 >> 1)
        {
          v32 = sub_4414((v24 > 1), v25 + 1, 1, v32);
        }

        *(v32 + 2) = v25 + 1;
        v26 = &v32[16 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = v31;
        sub_4634(&v33, v7, v6);
      }

LABEL_20:

      if (++v4 == v3)
      {
        v27 = v32;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = &_swiftEmptyArrayStorage;
LABEL_23:

    if (*(v27 + 2))
    {
      v28 = objc_opt_self();
      isa = sub_6B80().super.isa;

      v30 = [v28 localizedStringByJoiningStrings:isa];

      sub_6B60();
    }

    else
    {
    }

    return sub_549C();
  }

  return result;
}

void sub_361C(uint64_t a1, char *a2)
{
  v3 = sub_6B40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = sub_38D4(*a2);
  if (v9)
  {
    v10 = v9;
    if (qword_100C8 != -1)
    {
      swift_once();
    }

    v11 = sub_6850();
    sub_18C0(v11, qword_10548);
    v12 = sub_6830();
    v13 = sub_6B90();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v8;
      _os_log_impl(&dword_0, v12, v13, "Sending command to update expansion to: %{BOOL}d", v14, 8u);
    }

    sub_6B00();
    v15 = v10;
    sub_6B30();

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    if (qword_100C8 != -1)
    {
      swift_once();
    }

    v16 = sub_6850();
    sub_18C0(v16, qword_10548);
    v21 = sub_6830();
    v17 = sub_6BA0();
    if (os_log_type_enabled(v21, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v21, v17, "Unable to build snippet update command", v18, 2u);
    }

    v19 = v21;
  }
}

id sub_38D4(char a1)
{
  v2 = sub_6810();
  v42 = sub_5400(v2);
  v43 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v42);
  sub_5424();
  v41 = v7 - v6;
  v8 = sub_6750();
  v9 = sub_5400(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_5424();
  v16 = v15 - v14;
  v17 = sub_67F0();
  v18 = sub_5400(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_5464();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = &v41 - v27;
  v29 = &enum case for UpdatePresentation.PresentationStyle.expanded(_:);
  if ((a1 & 1) == 0)
  {
    v29 = &enum case for UpdatePresentation.PresentationStyle.collapsed(_:);
  }

  (*(v20 + 104))(&v41 - v27, *v29, v17);
  v30 = [objc_allocWithZone(SAUIUpdateVisualResponseSnippet) init];
  sub_6740();
  v31 = sub_6730();
  v33 = v32;
  (*(v11 + 8))(v16, v8);
  sub_4F8C(v31, v33, v30, &selRef_setAceId_);

  (*(v20 + 16))(v25, v28, v17);
  sub_6800();
  sub_518C(&qword_10300, &type metadata accessor for UpdatePresentation);
  sub_518C(&qword_10308, &type metadata accessor for UpdatePresentation);
  sub_518C(&qword_10310, &type metadata accessor for UpdatePresentation);
  v34 = sub_6820();
  v36 = v35;
  v37 = *(v43 + 8);
  v38 = sub_54A8();
  v39(v38);
  sub_4F34(v34, v36, v30);
  sub_4F8C(0xD000000000000033, 0x80000000000074B0, v30, &selRef_setViewId_);
  sub_4FF8(v34, v36);
  (*(v20 + 8))(v28, v17);
  return v30;
}

uint64_t sub_3CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3D20()
{
  v1 = type metadata accessor for AttributionButtonView(0);
  sub_5480(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_2BE8(v3);
}

unint64_t sub_3D84()
{
  result = qword_10278;
  if (!qword_10278)
  {
    sub_24B0(&qword_10270, &qword_70B8);
    sub_3E3C();
    sub_3FD8(&qword_102D0, &qword_102D8, &qword_72F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10278);
  }

  return result;
}

unint64_t sub_3E3C()
{
  result = qword_10280;
  if (!qword_10280)
  {
    sub_24B0(&qword_10288, &qword_70C0);
    sub_3EF4();
    sub_3FD8(&qword_102C0, &qword_102C8, &unk_70E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10280);
  }

  return result;
}

unint64_t sub_3EF4()
{
  result = qword_10290;
  if (!qword_10290)
  {
    sub_24B0(&qword_10298, &qword_70C8);
    sub_3FD8(&qword_102A0, &qword_102A8, &qword_70D0);
    sub_3FD8(&qword_102B0, &qword_102B8, &qword_70D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10290);
  }

  return result;
}

uint64_t sub_3FD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4020()
{
  v1 = (type metadata accessor for AttributionButtonView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_6B20();
  sub_5414(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = *(v0 + v3 + v1[7] + 8);

  v8 = *(v0 + v3 + v1[8]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_4110(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for AttributionButtonView(0);
  sub_5480(v4);
  v6 = *(v5 + 80);

  sub_361C(a1, a2);
}

unint64_t sub_418C()
{
  result = qword_102F8;
  if (!qword_102F8)
  {
    sub_24B0(&qword_10258, &qword_70A0);
    sub_24B0(&qword_10248, &qword_7090);
    sub_6880();
    sub_3FD8(&qword_102E0, &qword_10248, &qword_7090);
    sub_518C(&qword_102E8, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102F8);
  }

  return result;
}

uint64_t sub_42D8(uint64_t a1)
{
  v2 = sub_212C(&qword_10258, &qword_70A0);
  sub_5414(v2);
  (*(v3 + 8))(a1);
  return a1;
}

id sub_4338(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_6B50();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_6710();

    swift_willThrow();
  }

  return v6;
}

char *sub_4414(char *result, int64_t a2, char a3, char *a4)
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
    sub_212C(&qword_10360, &unk_71F0);
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

uint64_t sub_451C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_68F0();
  *a1 = result;
  return result;
}

uint64_t sub_4548(uint64_t *a1)
{
  v1 = *a1;

  return sub_6900();
}

uint64_t sub_4574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  sub_5400(v8);
  v10 = *(v9 + 64);
  sub_5474();
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  return a6(v13);
}

BOOL sub_4634(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_6C30();
  sub_6B70();
  v9 = sub_6C50();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_6BD0() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_49DC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_4780(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_212C(&qword_10358, &qword_71E8);
  result = sub_6BC0();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_4B44(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_6C30();
    sub_6B70();
    result = sub_6C50();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_49DC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_4780(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_4D00(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_6C30();
      sub_6B70();
      result = sub_6C50();
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
        if (v19 || (sub_6BD0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_4BA8();
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
    result = sub_6BE0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_4B44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_6F50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_4BA8()
{
  v1 = v0;
  sub_212C(&qword_10358, &qword_71E8);
  v2 = *v0;
  v3 = sub_6BB0();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_4D00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_212C(&qword_10358, &qword_71E8);
  result = sub_6BC0();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_6C30();

        sub_6B70();
        result = sub_6C50();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_4F34(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_6720().super.isa;
  [a3 setStateData:isa];
}

void sub_4F8C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_6B50();

  [a3 *a4];
}

uint64_t sub_4FF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_5050@<X0>(_BYTE *a1@<X8>)
{
  result = sub_68D0();
  *a1 = result;
  return result;
}

uint64_t sub_50A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_68F0();
  *a1 = result;
  return result;
}

unint64_t sub_50D4()
{
  result = qword_10330;
  if (!qword_10330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10330);
  }

  return result;
}

uint64_t sub_518C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5238(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_54D4(a1, a2, a3, a4);
  sub_5414(v5);
  v7 = *(v6 + 32);
  v8 = sub_549C();
  v9(v8);
  return v4;
}

uint64_t sub_5284(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_54D4(a1, a2, a3, a4);
  sub_5414(v5);
  v7 = *(v6 + 16);
  v8 = sub_549C();
  v9(v8);
  return v4;
}

uint64_t sub_52D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_52E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_212C(a2, a3);
  sub_5414(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_5338(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_534C()
{
  sub_24B0(&qword_10260, &qword_70A8);
  sub_24B0(&qword_10258, &qword_70A0);
  sub_418C();
  sub_5434();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_54D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_212C(a3, a4);
}

uint64_t sub_5508(uint64_t a1, uint64_t a2)
{
  v4 = sub_67E0();

  return sub_194C(a1, a2, v4);
}

uint64_t sub_5564(uint64_t a1, uint64_t a2)
{
  v4 = sub_67E0();

  return sub_19C0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MessageAccumulationView()
{
  result = qword_103C0;
  if (!qword_103C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_55FC()
{
  result = sub_67E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_5684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v9 = sub_212C(&qword_10440, &qword_7298);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  __chkstk_darwin(v9);
  v28 = &v25 - v11;
  v12 = sub_212C(&qword_10448, &qword_72A0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = sub_6950();
  v18 = sub_69A0();
  KeyPath = swift_getKeyPath();
  v26 = a1;
  v27 = a4;
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3 & 1;
  __src[3] = a4;
  LODWORD(__src[4]) = v17;
  __src[5] = KeyPath;
  __src[6] = v18;
  sub_52D0(a1, a2, a3 & 1);

  sub_6990();
  sub_212C(&qword_10450, &qword_72D8);
  sub_5D64();
  v20 = v28;
  sub_6A00();
  sub_5338(v26, a2, a3 & 1);

  sub_6AB0();
  sub_6890();
  (*(v29 + 32))(v16, v20, v30);
  memcpy(&v16[*(v13 + 44)], __src, 0x70uLL);
  v21 = swift_getKeyPath();
  v22 = v31;
  sub_5F3C(v16, v31);
  result = sub_212C(&qword_10430, &qword_7288);
  v24 = v22 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = 1;
  *(v24 + 16) = 0;
  return result;
}

uint64_t sub_592C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_6940();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = *(sub_212C(&qword_103F8, &qword_7268) + 44);
  sub_67D0();
  sub_212C(&qword_10400, &qword_7270);
  sub_212C(&qword_10408, &qword_7278);
  sub_3FD8(&qword_10410, &qword_10400, &qword_7270);
  sub_3FD8(&qword_10418, &qword_10408, &qword_7278);
  sub_5C3C();
  return sub_6AA0();
}

uint64_t sub_5A78@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_6930();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_212C(&qword_10428, &qword_7280);
  return sub_5AD0((a1 + *(v2 + 44)));
}

uint64_t sub_5AD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_212C(&qword_10430, &qword_7288);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v19 - v7;
  sub_67B0();
  v9 = sub_6A40();
  v19[2] = sub_67A0();
  v19[3] = v10;
  sub_50D4();
  v11 = sub_69B0();
  v13 = v12;
  v15 = v14;
  sub_5684(v11, v12, v14 & 1, v16, v8);
  sub_5338(v11, v13, v15 & 1);

  sub_5C94(v8, v6);
  *a1 = v9;
  v17 = sub_212C(&qword_10438, &qword_7290);
  sub_5C94(v6, a1 + *(v17 + 48));

  sub_5CFC(v8);
  sub_5CFC(v6);
}

unint64_t sub_5C3C()
{
  result = qword_10420;
  if (!qword_10420)
  {
    sub_67C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10420);
  }

  return result;
}

uint64_t sub_5C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_212C(&qword_10430, &qword_7288);
  sub_5414(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_5CFC(uint64_t a1)
{
  v2 = sub_212C(&qword_10430, &qword_7288);
  sub_5414(v2);
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_5D64()
{
  result = qword_10458;
  if (!qword_10458)
  {
    sub_24B0(&qword_10450, &qword_72D8);
    sub_5E1C();
    sub_3FD8(&qword_102D0, &qword_102D8, &qword_72F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10458);
  }

  return result;
}

unint64_t sub_5E1C()
{
  result = qword_10460;
  if (!qword_10460)
  {
    sub_24B0(&qword_10468, &unk_72E0);
    sub_3FD8(&qword_102C0, &qword_102C8, &unk_70E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10460);
  }

  return result;
}

uint64_t sub_5ED4@<X0>(uint64_t a1@<X8>)
{
  result = sub_6910();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_5F08(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_6920();
}

uint64_t sub_5F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_212C(&qword_10448, &qword_72A0);
  sub_5414(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_5FF8(uint64_t a1)
{
  sub_6070(a1, v4);
  if (!v2)
  {
    sub_6490(v4, v4[3]);
    v1 = sub_69C0();
    sub_64D4(v4);
  }

  return v1;
}

uint64_t sub_6070@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_6760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v5 + 88))(v8, v4) == enum case for SearchToolSnippetPluginModel.attribution(_:))
  {
    (*(v5 + 96))(v8, v4);
    a2[3] = type metadata accessor for AttributionView(0);
    a2[4] = sub_63E8(&qword_10538, type metadata accessor for AttributionView);
    v9 = sub_6430(a2);
    v10 = sub_6790();
    return (*(*(v10 - 8) + 32))(v9, v8, v10);
  }

  else
  {
    sub_6394();
    swift_allocError();
    swift_willThrow();
    return (*(v5 + 8))(v8, v4);
  }
}

Swift::Int sub_6304()
{
  sub_6C30();
  sub_6C40(0);
  return sub_6C50();
}

uint64_t sub_6348@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5FE8();
  *a1 = result;
  return result;
}

unint64_t sub_6394()
{
  result = qword_10530;
  if (!qword_10530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10530);
  }

  return result;
}

uint64_t sub_63E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_6430(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void *sub_6490(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_64D4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getEnumTagSinglePayload for SearchToolUIPluginError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SearchToolUIPluginError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x6614);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_665C()
{
  result = qword_10540;
  if (!qword_10540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10540);
  }

  return result;
}

Swift::Int sub_66C0()
{
  sub_6C30();
  sub_6C40(0);
  return sub_6C50();
}